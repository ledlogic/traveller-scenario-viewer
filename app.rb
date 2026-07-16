# Traveller Scenario Viewer — Sinatra version
# Run: bundle exec ruby app.rb
# Gemfile: sinatra ~> 3.0, kramdown ~> 2.4, kramdown-parser-gfm ~> 1.1

require 'sinatra'
require 'kramdown'
require 'json'
require 'fileutils'
require 'tmpdir'
require 'time'

begin
  require 'zip'
  HAVE_RUBYZIP = true
rescue LoadError
  HAVE_RUBYZIP = false
end

SCENARIOS_DIR = File.join(__dir__, 'scenarios')

set :public_folder, File.join(__dir__, 'public')
set :port, 8090

# ── Upload watcher ──────────────────────────────────────────────
# Drop a "traveller-viewer (N).zip" export into ./uploads and this
# class + background thread picks it up within a few seconds, unzips
# the docs/ folder for each scenario it finds inside, and syncs those
# files into scenarios/<slug>/docs. Once extraction and sync succeed,
# the zip is deleted automatically -- nothing accumulates in uploads/.
#
# This used to live in a separate bin/watch_uploads.rb file, required
# in from here. It's now inlined directly below so app.rb is a single
# self-contained file with no other Ruby files to keep track of.
class UploadWatcher
  DEFAULT_PATTERN = /\Atraveller[- ](?:scenario[- ])?viewer.*\.zip\z/i.freeze

  attr_reader :uploads_dir, :scenarios_dir, :pattern, :mirror, :keep, :dry_run, :log

  def initialize(project_dir: Dir.pwd, uploads_dir: nil, scenarios_dir: nil,
                 pattern: DEFAULT_PATTERN, mirror: false, keep: false, dry_run: false,
                 log: $stdout)
    @project_dir   = File.expand_path(project_dir)
    @uploads_dir   = File.expand_path(uploads_dir || File.join(@project_dir, 'uploads'))
    @scenarios_dir = File.expand_path(scenarios_dir || File.join(@project_dir, 'scenarios'))
    @pattern       = pattern
    @mirror        = mirror
    @keep          = keep
    @dry_run       = dry_run
    @log           = log

    FileUtils.mkdir_p(@uploads_dir)
  end

  # Runs one polling pass: finds matching zips, processes each, returns
  # the number processed. Safe to call repeatedly in a loop.
  def run_once!
    candidates = Dir.children(uploads_dir)
                     .select { |f| f.match?(pattern) }
                     .map { |f| File.join(uploads_dir, f) }
                     .select { |f| File.file?(f) }
                     .sort_by { |f| File.mtime(f) }

    processed = 0
    candidates.each do |zip_path|
      next unless stable?(zip_path) # skip files still being written/downloaded

      say "found #{File.basename(zip_path)}"
      process_zip(zip_path)
      processed += 1
    end
    processed
  end

  # Blocking loop -- polls forever until interrupted (Ctrl-C). Only
  # useful if you run this class standalone instead of via the Thread
  # started automatically below.
  def run_forever!(interval: 5)
    say "watching #{uploads_dir} every #{interval}s (pattern: #{pattern.inspect})"
    say "scenarios root: #{scenarios_dir}"
    say "mode: #{dry_run ? 'DRY RUN' : 'live'}"
    loop do
      run_once!
      sleep interval
    end
  rescue Interrupt
    say 'stopped'
  end

  private

  # A file is "stable" if its size hasn't changed across a short window --
  # this avoids grabbing a zip mid-download/mid-copy.
  def stable?(path, wait: 0.4)
    size1 = File.size(path)
    sleep wait
    size2 = File.size(path)
    size1 == size2 && size1 > 0
  rescue Errno::ENOENT
    false # file vanished between listing and checking -- skip it this pass
  end

  def process_zip(zip_path)
    Dir.mktmpdir('travviewer-') do |tmp|
      extract(zip_path, tmp)

      docs_dirs = Dir.glob(File.join(tmp, '**', 'scenarios', '*', 'docs'))
      if docs_dirs.empty?
        say '  no scenarios/*/docs found inside this zip -- skipping, leaving file in place for inspection'
        return
      end

      docs_dirs.each do |src_docs|
        slug        = File.basename(File.dirname(src_docs))
        src_root    = File.dirname(src_docs)
        dest_root   = File.join(scenarios_dir, slug)
        dest_docs   = File.join(dest_root, 'docs')

        # Copy meta.json if present in the zip's scenario root
        src_meta  = File.join(src_root, 'meta.json')
        dest_meta = File.join(dest_root, 'meta.json')
        if File.exist?(src_meta)
          FileUtils.mkdir_p(dest_root) unless dry_run
          FileUtils.cp(src_meta, dest_meta) unless dry_run
          say "  [#{slug}] meta.json copied"
        end

        sync_docs(src_docs, dest_docs, slug)
      end

      archive_or_delete(zip_path)
    end
  end

  def extract(zip_path, dest_dir)
    if HAVE_RUBYZIP
      Zip::File.open(zip_path) do |zip|
        zip.each do |entry|
          out = File.join(dest_dir, entry.name)
          FileUtils.mkdir_p(File.dirname(out))
          entry.extract(out) unless File.exist?(out)
        end
      end
    else
      system('unzip', '-oq', zip_path, '-d', dest_dir, exception: true)
    end
  end

  def sync_docs(src_docs, dest_docs, slug)
    FileUtils.mkdir_p(dest_docs) unless dry_run

    src_files  = Dir.glob(File.join(src_docs, '*')).map { |f| File.basename(f) }
    dest_files = Dir.exist?(dest_docs) ? Dir.glob(File.join(dest_docs, '*')).map { |f| File.basename(f) } : []

    added, updated, unchanged = [], [], []

    src_files.each do |name|
      src_file  = File.join(src_docs, name)
      dest_file = File.join(dest_docs, name)

      if !File.exist?(dest_file)
        added << name
        FileUtils.cp(src_file, dest_file) unless dry_run
      elsif !FileUtils.identical?(src_file, dest_file)
        updated << name
        FileUtils.cp(src_file, dest_file) unless dry_run
      else
        unchanged << name
      end
    end

    removed = mirror ? (dest_files - src_files) : []
    removed.each { |name| FileUtils.rm(File.join(dest_docs, name)) unless dry_run } if mirror

    say "  [#{slug}] #{added.size} added, #{updated.size} updated, #{unchanged.size} unchanged" \
        "#{mirror ? ", #{removed.size} removed (mirror mode)" : ''}"
    (added + updated).each { |name| say "    - #{name}" }
    removed.each { |name| say "    - removed: #{name}" }
  end

  def archive_or_delete(zip_path)
    return if dry_run

    if keep
      say "  leaving #{File.basename(zip_path)} in place (--keep)"
      return
    end

    FileUtils.rm(zip_path)
    say "  deleted #{File.basename(zip_path)} after successful sync"
  end

  def say(msg)
    log.puts("[#{Time.now.strftime('%H:%M:%S')}] #{msg}")
  end
end

# Starts once when the app boots, polls in the background for the life
# of the process. A failed pass (bad zip, permissions, whatever) is
# logged and skipped rather than crashing the whole server.
Thread.new do
  watcher = UploadWatcher.new(project_dir: __dir__)
  loop do
    begin
      watcher.run_once!
    rescue => e
      warn "upload watcher error: #{e.message}"
    end
    sleep 5
  end
end

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
  scenario_slug = opts[:scenario_slug]
  search_query  = opts[:search_query] || ''

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
          <form class="sidebar-search no-print" action="/s/#{scenario_slug}/search" method="get">
            <input type="search" name="q" placeholder="Search this scenario…" value="#{Rack::Utils.escape_html(search_query)}" aria-label="Search this scenario">
          </form>
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

# ── Search ──────────────────────────────────────────────────────
# Simple line-level, case-insensitive substring search across every
# document in a scenario. Matches are grouped by document, with the
# matching line shown as a snippet and the search term highlighted.
# Must be registered before the generic '/s/:slug/:filename' route
# below, or Sinatra will match "search" itself as a :filename value.
get '/s/:slug/search' do
  scenarios = load_scenarios
  s = scenarios[params[:slug]]
  halt 404, 'Scenario not found' unless s

  query = (params[:q] || '').strip
  docs  = s['docs'] || []

  nav_html = docs.map do |d|
    "<a href=\"/s/#{s['slug']}/#{d['file']}\" class=\"nav-item\">#{d['label']}</a>"
  end.join("\n")

  results_html =
    if query.empty?
      '<p class="search-hint">Type a search term and press Enter.</p>'
    else
      matches = []
      docs.each do |d|
        filepath = File.join(s['docs_dir'], d['file'])
        next unless File.exist?(filepath)

        raw = File.read(filepath, encoding: 'utf-8')
        raw.each_line do |line|
          next unless line.downcase.include?(query.downcase)

          snippet = line.strip
          snippet = "#{snippet[0, 220]}…" if snippet.length > 220
          matches << { doc: d, snippet: snippet }
        end
      end

      if matches.empty?
        "<p class=\"search-empty\">No results for \u201c#{Rack::Utils.escape_html(query)}\u201d.</p>"
      else
        escaped_query = Regexp.escape(Rack::Utils.escape_html(query))
        grouped = matches.group_by { |m| m[:doc]['file'] }

        sections = docs.filter_map do |d|
          hits = grouped[d['file']]
          next unless hits

          items = hits.map do |m|
            escaped = Rack::Utils.escape_html(m[:snippet])
            highlighted = escaped.gsub(/#{escaped_query}/i) { |match| "<mark>#{match}</mark>" }
            "<li><a href=\"/s/#{s['slug']}/#{d['file']}\">#{highlighted}</a></li>"
          end.join("\n")

          <<~SECTION
            <h3><a href="/s/#{s['slug']}/#{d['file']}">#{d['label']}</a> <span class="search-count">(#{hits.size})</span></h3>
            <ul class="search-results-list">
              #{items}
            </ul>
          SECTION
        end.join("\n")

        count_label = matches.size == 1 ? 'result' : 'results'
        "<p class=\"search-summary\">#{matches.size} #{count_label} for \u201c#{Rack::Utils.escape_html(query)}\u201d</p>\n#{sections}"
      end
    end

  render_shell(
    title:             query.empty? ? "Search — #{s['title']}" : "\u201c#{query}\u201d — #{s['title']}",
    scenario_title:    s['title'],
    scenario_subtitle: s['subtitle'],
    scenario_slug:     s['slug'],
    accent_color:      s['color'] || '#c8a96e',
    nav_html:          nav_html,
    content_html:      results_html,
    search_query:      query,
    print_title:       'Search Results',
  )
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
    scenario_slug:     s['slug'],
    accent_color:      s['color'] || '#c8a96e',
    nav_html:          nav_html,
    content_html:      html,
    prev_href:         prev_href,
    next_href:         next_href,
    print_title:       label,
  )
end
