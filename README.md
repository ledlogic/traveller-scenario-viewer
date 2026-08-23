# Traveller Scenario Viewer

A clean multi-scenario Markdown reader for Traveller RPG referee documents.
Dark/light theme, sidebar navigation, print-optimised output, keyboard shortcuts.

## Requirements

Ruby 2.7+ and Bundler. If you don't have Ruby installed:

**Windows**
Download and run the installer from [rubyinstaller.org](https://rubyinstaller.org) (pick the "WITH DEVKIT" version). Accept the defaults, and let it run the `ridk install` step at the end.

**macOS**
```bash
brew install ruby
```
(macOS ships an old system Ruby — Homebrew's is more reliable. If `ruby -v` still shows the system version afterward, add Homebrew's Ruby to your PATH per the `brew info ruby` instructions.)

**Linux (Debian/Ubuntu)**
```bash
sudo apt update
sudo apt install ruby-full build-essential ruby-bundler
```
(`ruby-bundler` installs Bundler system-wide correctly on Debian/Ubuntu — avoids the `Gem::FilePermissionError` you'll hit running `gem install bundler` directly, since apt's Ruby gem directory isn't user-writable.)

**Any other platform, once Ruby is installed:**
```bash
gem install bundler
```

Verify with `ruby -v` (should print 2.7 or higher) and `bundler -v`.

Dependencies (in `Gemfile`): `sinatra ~> 3.0`, `kramdown ~> 2.4`, `kramdown-parser-gfm ~> 1.1`, `webrick`, `ostruct` (required on Ruby 4.0+, which dropped ostruct from the default bundled stdlib — Rack still needs it).

## Quick start

```bash
bundle config set --local path 'vendor/bundle'
bundle install
bundle exec ruby app.rb
# → http://localhost:4567
```

(The `bundle config` line installs gems into a `vendor/bundle` folder inside the project instead of the system gem directory — needed on Debian/Ubuntu, where `/var/lib/gems` isn't user-writable and a plain `bundle install` will fail with a `PermissionError`.)

---

## Folder structure

```
traveller-viewer/
├── app.rb                 ← Sinatra server
├── Gemfile
├── public/
│   ├── style.css          ← All styling (screen + print)
│   └── app.js             ← Theme, sidebar, keyboard shortcuts
└── scenarios/
    ├── cold-trail-kethara/
    │   ├── meta.json      ← Scenario metadata and doc order
    │   └── docs/
    │       ├── Chapter1_Setting_Mission_Referee.md
    │       ├── Chapter2_Characters.md
    │       └── ...
    └── your-next-scenario/
        ├── meta.json
        └── docs/
            └── ...
```

---

## Adding a new scenario

1. Create a folder under `scenarios/` — name it anything (it becomes the URL slug)
2. Add a `meta.json` file
3. Drop your `.md` files into a `docs/` subfolder

### meta.json format

```json
{
  "title":    "Operation Deep Current",
  "subtitle": "A Mongoose Traveller 2e Campaign",
  "system":   "Mongoose Traveller 2nd Edition",
  "setting":  "Gashidda, Imperial Year 1116",
  "color":    "#4a90d9",
  "docs": [
    { "file": "Chapter1_Overview.md",  "label": "Ch 1 — Overview" },
    { "file": "Chapter2_Gashidda.md",  "label": "Ch 2 — Gashidda" },
    { "file": "AppendixA_Bestiary.md", "label": "App A — Bestiary" }
  ]
}
```

| Field | Required | Description |
|-------|----------|-------------|
| `title` | Yes | Display name of the scenario |
| `subtitle` | No | Short description shown in topbar |
| `system` | No | RPG system (shown on index card) |
| `setting` | No | World/year (shown on index card) |
| `color` | No | Accent colour (hex). Default: `#c8a96e` |
| `docs` | Yes | Ordered array of documents |

---

## Keyboard shortcuts

| Key | Action |
|-----|--------|
| `[` | Previous document |
| `]` | Next document |
| `d` | Toggle dark/light theme |
| `\` | Toggle sidebar |
| `p` | Print current document |

---

## Printing

Click **⎙ Print** in the topbar, or press `p`, or use Ctrl/Cmd+P.

The print stylesheet:
- Hides all UI chrome (topbar, sidebar, nav buttons)
- Adds a print header: scenario name + document title
- Sets page margins to 18mm × 20mm, letter size
- Repeats table headers on each page
- Avoids breaking headings, paragraphs, table rows, and blockquotes across pages
- Renders page numbers in the footer (in browsers that support CSS Paged Media)

For best results use **Chrome** or **Edge** — they have the most complete CSS print support.
Firefox works well too. Safari has limited `@page` support.
