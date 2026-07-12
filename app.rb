# Traveller Scenario Viewer — Sinatra version
# Run: bundle exec ruby app.rb
# Gemfile: sinatra ~> 3.0, kramdown ~> 2.4, kramdown-parser-gfm ~> 1.1

require 'sinatra'
require 'kramdown'
require 'json'

SCENARIOS_DIR = File.join(__dir__, 'scenarios')

set :public_folder, File.join(__dir__, 'public')
set :port, 4567

# ── Scenario discovery ──────────────────────────────────────────
def load_scenarios
  scenarios = {}
  return scenarios unless Dir.exist?(SCENARIOS_DIR)

  Dir.entries(SCENARIOS_DIR).sort.each do |slug|
    dir       = File.join(SCENARIOS_DIR, slug)
    meta_file = File.join(dir, 'meta.json')
    docs_dir  = File.join(dir, 'docs')
    next unless File.directory?(dir) && slug !~ /^\./
    next unless File.exist?(meta_file) && File.directory?(docs_dir)

    begin
      meta = JSON.parse(File.read(meta_file, encoding: 'utf-8'))
      meta['slug']    = slug
      meta['dir']     = dir
      meta['docs_dir'] = docs_dir
      scenarios[slug] = meta
    rescue => e
      warn "Could not parse meta.json for #{slug}: #{e.message}"
    end
  end
  scenarios
end

# ── Render shell ────────────────────────────────────────────────
def render_shell(opts = {})
  accent   = opts[:accent_color] || '#c8a96e'
  nav_html = opts[:nav_html] || ''
  prev_href = opts[:prev_href]
  next_href = opts[:next_href]

  <<~HTML
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>#{opts[:title]}</title>
    <link rel="stylesheet" href="/style.css">
    <style>:root { --accent: #{accent}; }</style>
    </head>
    <body>
    <div class="app">
      <header class="topbar no-print">
        <div class="topbar-left">
          <button id="sidebar-toggle" title="Toggle sidebar">☰</button>
          <a class="topbar-home" href="/" title="All scenarios">⌂</a>
          <span class="topbar-sep">·</span>
          <span class="topbar-title">#{opts[:scenario_title]}</span>
          #{opts[:scenario_subtitle] ? "<span class=\"topbar-sub\">#{opts[:scenario_subtitle]}</span>" : ''}
        </div>
        <div class="topbar-right">
          <button id="print-btn">⎙ Print</button>
          <button id="theme-toggle">☾</button>
        </div>
      </header>
      <div class="layout">
        <nav class="sidebar no-print" id="sidebar">
          <div class="sidebar-inner">#{nav_html}</div>
        </nav>
        <main class="content" id="content">
          <div class="print-header print-only">
            <div class="print-scenario">#{opts[:scenario_title]}</div>
            <div class="print-doc">#{opts[:print_title] || opts[:title]}</div>
          </div>
          <article class="document">
            #{opts[:content_html]}
          </article>
          <div class="doc-nav no-print">
            #{prev_href ? "<a class=\"doc-nav-btn\" href=\"#{prev_href}\">← Previous</a>" : '<span></span>'}
            #{next_href ? "<a class=\"doc-nav-btn\" href=\"#{next_href}\">Next →</a>" : '<span></span>'}
          </div>
        </main>
      </div>
    </div>
    <script src="/app.js"></script>
    </body>
    </html>
  HTML
end

# ── Routes ──────────────────────────────────────────────────────
get '/' do
  scenarios = load_scenarios
  if scenarios.size == 1
    s = scenarios.values.first
    first = (s['docs'] || []).first
    return redirect(first ? "/s/#{s['slug']}/#{first['file']}" : '/')
  end

  cards = scenarios.values.map do |s|
    first = (s['docs'] || []).first
    href  = first ? "/s/#{s['slug']}/#{first['file']}" : "/s/#{s['slug']}"
    acc   = s['color'] || '#c8a96e'
    <<~CARD
      <a class="scenario-card" href="#{href}" style="--card-accent:#{acc}">
        <div class="card-system">#{s['system'] || 'RPG Scenario'}</div>
        <div class="card-title">#{s['title']}</div>
        #{s['subtitle'] ? "<div class=\"card-sub\">#{s['subtitle']}</div>" : ''}
        #{s['setting']  ? "<div class=\"card-setting\">#{s['setting']}</div>"  : ''}
        <div class="card-count">#{(s['docs'] || []).size} documents</div>
      </a>
    CARD
  end.join

  <<~HTML
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Scenario Library</title>
    <link rel="stylesheet" href="/style.css">
    </head>
    <body class="index-page">
    <div class="index-shell">
      <header class="index-header">
        <div class="index-logo">TRAVELLER</div>
        <h1 class="index-title">Scenario Library</h1>
        <p class="index-hint">Select a scenario to begin reading</p>
      </header>
      <div class="scenario-grid">#{cards}</div>
      <footer class="index-footer">
        To add a scenario: create a folder under <code>scenarios/</code>
        with a <code>meta.json</code> and a <code>docs/</code> subfolder.
      </footer>
    </div>
    <script src="/app.js"></script>
    </body>
    </html>
  HTML
end

get '/s/:slug' do
  scenarios = load_scenarios
  s = scenarios[params[:slug]]
  halt 404, 'Scenario not found' unless s
  first = (s['docs'] || []).first
  redirect first ? "/s/#{s['slug']}/#{first['file']}" : '/'
end

get '/s/:slug/:filename' do
  scenarios = load_scenarios
  s = scenarios[params[:slug]]
  halt 404, 'Scenario not found' unless s

  filename = params[:filename]
  halt 400, 'Not a markdown file' unless filename.end_with?('.md')

  filepath = File.join(s['docs_dir'], filename)
  halt 404, 'Document not found' unless File.exist?(filepath)

  raw  = File.read(filepath, encoding: 'utf-8')
  html = Kramdown::Document.new(raw, input: 'GFM').to_html

  docs = s['docs'] || []
  nav_html = docs.map do |d|
    active = d['file'] == filename ? ' active' : ''
    "<a href=\"/s/#{s['slug']}/#{d['file']}\" class=\"nav-item#{active}\">#{d['label']}</a>"
  end.join("\n")

  idx      = docs.index { |d| d['file'] == filename }
  prev_href = idx && idx > 0              ? "/s/#{s['slug']}/#{docs[idx-1]['file']}" : nil
  next_href = idx && idx < docs.size - 1  ? "/s/#{s['slug']}/#{docs[idx+1]['file']}" : nil

  meta  = idx ? docs[idx] : nil
  label = meta ? meta['label'] : filename.sub('.md','').gsub('_',' ')

  render_shell(
    title:             "#{label} — #{s['title']}",
    scenario_title:    s['title'],
    scenario_subtitle: s['subtitle'],
    accent_color:      s['color'] || '#c8a96e',
    nav_html:          nav_html,
    content_html:      html,
    prev_href:         prev_href,
    next_href:         next_href,
    print_title:       label,
  )
end
