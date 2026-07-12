'use strict';
const express  = require('express');
const fs       = require('fs');
const path     = require('path');
const { marked } = require('marked');

const app          = express();
const SCENARIOS_DIR = path.join(__dirname, 'scenarios');

marked.setOptions({ breaks: false, gfm: true });

// ── Scenario discovery ────────────────────────────────────────────
// Reads scenarios/ subdirectories, each must have meta.json + docs/
function loadScenarios() {
  const scenarios = {};
  if (!fs.existsSync(SCENARIOS_DIR)) return scenarios;

  fs.readdirSync(SCENARIOS_DIR).forEach(slug => {
    const dir      = path.join(SCENARIOS_DIR, slug);
    const metaFile = path.join(dir, 'meta.json');
    const docsDir  = path.join(dir, 'docs');
    if (!fs.statSync(dir).isDirectory()) return;
    if (!fs.existsSync(metaFile) || !fs.existsSync(docsDir)) return;
    try {
      const meta = JSON.parse(fs.readFileSync(metaFile, 'utf8'));
      scenarios[slug] = { ...meta, slug, dir, docsDir };
    } catch (e) {
      console.warn(`Could not parse meta.json for ${slug}:`, e.message);
    }
  });
  return scenarios;
}

// ── HTML shell ────────────────────────────────────────────────────
function renderShell({ title, scenarioTitle, scenarioSubtitle, accentColor,
                        navHtml, contentHtml, prevHref, nextHref, printTitle }) {
  const accent = accentColor || '#c8a96e';
  return `<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${title}</title>
<link rel="stylesheet" href="/style.css">
<style>:root { --accent: ${accent}; }</style>
</head>
<body>

<div class="app">

  <header class="topbar no-print">
    <div class="topbar-left">
      <button id="sidebar-toggle" title="Toggle sidebar (\\)">☰</button>
      <a class="topbar-home" href="/" title="All scenarios">⌂</a>
      <span class="topbar-sep">·</span>
      <span class="topbar-title">${scenarioTitle}</span>
      ${scenarioSubtitle ? `<span class="topbar-sub">${scenarioSubtitle}</span>` : ''}
    </div>
    <div class="topbar-right">
      <button id="print-btn" title="Print this document">⎙ Print</button>
      <button id="theme-toggle" title="Toggle dark/light (d)">☾</button>
    </div>
  </header>

  <div class="layout">

    <nav class="sidebar no-print" id="sidebar">
      <div class="sidebar-inner">
        ${navHtml}
      </div>
    </nav>

    <main class="content" id="content">

      <div class="print-header print-only">
        <div class="print-scenario">${scenarioTitle}</div>
        <div class="print-doc">${printTitle || title}</div>
      </div>

      <article class="document">
        ${contentHtml}
      </article>

      <div class="doc-nav no-print">
        ${prevHref ? `<a class="doc-nav-btn" href="${prevHref}">← Previous</a>` : '<span></span>'}
        ${nextHref ? `<a class="doc-nav-btn" href="${nextHref}">Next →</a>` : '<span></span>'}
      </div>

    </main>
  </div>
</div>

<script src="/app.js"></script>
</body>
</html>`;
}

// ── Scenario index page ───────────────────────────────────────────
function renderIndex(scenarios) {
  const cards = Object.values(scenarios).map(s => {
    const firstDoc = s.docs && s.docs[0];
    const href = firstDoc ? `/s/${s.slug}/${firstDoc.file}` : `/s/${s.slug}`;
    const accent = s.color || '#c8a96e';
    return `<a class="scenario-card" href="${href}" style="--card-accent:${accent}">
      <div class="card-system">${s.system || 'RPG Scenario'}</div>
      <div class="card-title">${s.title}</div>
      ${s.subtitle ? `<div class="card-sub">${s.subtitle}</div>` : ''}
      ${s.setting  ? `<div class="card-setting">${s.setting}</div>`  : ''}
      <div class="card-count">${(s.docs || []).length} documents</div>
    </a>`;
  }).join('\n');

  return `<!DOCTYPE html>
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
  <div class="scenario-grid">
    ${cards}
  </div>
  <footer class="index-footer">
    To add a scenario: create a folder under <code>scenarios/</code> with a <code>meta.json</code> and a <code>docs/</code> subfolder.
  </footer>
</div>
<script src="/app.js"></script>
</body>
</html>`;
}

// ── Routes ─────────────────────────────────────────────────────────
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
  const scenarios = loadScenarios();
  const slugs = Object.keys(scenarios);
  if (slugs.length === 1) {
    // Single scenario — go straight to it
    const s = scenarios[slugs[0]];
    const first = s.docs && s.docs[0];
    return res.redirect(first ? `/s/${slugs[0]}/${first.file}` : '/');
  }
  res.send(renderIndex(scenarios));
});

app.get('/s/:slug', (req, res) => {
  const scenarios = loadScenarios();
  const s = scenarios[req.params.slug];
  if (!s) return res.status(404).send('Scenario not found');
  const first = s.docs && s.docs[0];
  if (first) return res.redirect(`/s/${s.slug}/${first.file}`);
  res.status(404).send('No documents found');
});

app.get('/s/:slug/:filename', (req, res) => {
  const scenarios = loadScenarios();
  const s = scenarios[req.params.slug];
  if (!s) return res.status(404).send('Scenario not found');

  const filename = req.params.filename;
  if (!filename.endsWith('.md')) return res.status(400).send('Not a markdown file');

  const filepath = path.join(s.docsDir, filename);
  if (!fs.existsSync(filepath)) return res.status(404).send('Document not found');

  const raw  = fs.readFileSync(filepath, 'utf8');
  const html = marked.parse(raw);

  // Sidebar nav
  const docs = s.docs || [];
  const navHtml = docs.map(d => {
    const active = d.file === filename ? ' active' : '';
    return `<a href="/s/${s.slug}/${d.file}" class="nav-item${active}">${d.label}</a>`;
  }).join('\n');

  // Prev / next
  const idx  = docs.findIndex(d => d.file === filename);
  const prev = idx > 0           ? `/s/${s.slug}/${docs[idx-1].file}` : null;
  const next = idx < docs.length-1 ? `/s/${s.slug}/${docs[idx+1].file}` : null;

  const meta = docs[idx];
  const label = meta ? meta.label : filename.replace('.md','').replace(/_/g,' ');

  res.send(renderShell({
    title:             `${label} — ${s.title}`,
    scenarioTitle:     s.title,
    scenarioSubtitle:  s.subtitle || '',
    accentColor:       s.color || '#c8a96e',
    navHtml,
    contentHtml:       html,
    prevHref:          prev,
    nextHref:          next,
    printTitle:        label,
  }));
});

const PORT = process.env.PORT || 4567;
app.listen(PORT, () => {
  console.log(`Scenario viewer → http://localhost:${PORT}`);
});
