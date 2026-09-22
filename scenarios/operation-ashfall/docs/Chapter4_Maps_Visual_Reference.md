# TRAVELLER: OPERATION ASHFALL
## Chapter 4 — Maps & Visual Reference

*Referee Reference Document*

---

## 4.0 — WHAT THIS CHAPTER COVERS

One map: **the Glass Reach regional hazard map**, showing the approach from Meridian, the warning-obelisk ring, and — the point of this chapter — the radiation zone bands the team has to cross to reach the control bunker.

**A build note on the viewer:** this map is embedded directly as inline SVG in this markdown file rather than shipped as a separate `.svg` asset, because the current viewer only serves `.md` files (see `app.rb`'s `/s/:slug/:filename` route — anything not ending in `.md` gets rejected). Embedding it inline means it renders immediately with no server changes needed. If you'd rather have it as a standalone asset for printing at full battle-map size, say so and I'll add a static-file route to the Sinatra app and break this out into its own `.svg`.

---

## 4.1 — THE GLASS REACH: REGIONAL HAZARD MAP

<svg viewBox="0 0 900 700" xmlns="http://www.w3.org/2000/svg" style="background:#12100d; border-radius:6px;">
  <defs>
    <radialGradient id="coreGlow" cx="50%" cy="50%" r="50%">
      <stop offset="0%" stop-color="#ff5a3c" stop-opacity="0.55"/>
      <stop offset="100%" stop-color="#ff5a3c" stop-opacity="0"/>
    </radialGradient>
  </defs>

  <!-- Title -->
  <text x="450" y="38" text-anchor="middle" fill="#e8dcc8" font-size="22" font-family="Georgia, serif" font-weight="bold">THE GLASS REACH — REGIONAL HAZARD MAP</text>
  <text x="450" y="58" text-anchor="middle" fill="#a89878" font-size="12" font-family="Georgia, serif" font-style="italic">Equatorial Desert, Ys — 31 years post-incident</text>

  <!-- Zone rings, centered on the crater at (560, 400) -->
  <circle cx="560" cy="400" r="230" fill="#3a3a2e" stroke="#5c5c48" stroke-width="1.5"/>
  <circle cx="560" cy="400" r="170" fill="#6b5a2e" stroke="#8a7440" stroke-width="1.5"/>
  <circle cx="560" cy="400" r="110" fill="#8f4a1e" stroke="#b05f26" stroke-width="1.5"/>
  <circle cx="560" cy="400" r="55"  fill="#7a1f14" stroke="#a52d1c" stroke-width="1.5"/>
  <circle cx="560" cy="400" r="55"  fill="url(#coreGlow)"/>

  <!-- Obelisk warning ring, evenly spaced at r=190 -->
  <g fill="#e8dcc8">
    <!-- 9 obelisks -->
    <g id="obelisks">
      <polygon points="560,204 566,220 554,220" />
    </g>
  </g>
  <use href="#obelisks" transform="rotate(40 560 400)"/>
  <use href="#obelisks" transform="rotate(80 560 400)"/>
  <use href="#obelisks" transform="rotate(120 560 400)"/>
  <use href="#obelisks" transform="rotate(160 560 400)"/>
  <use href="#obelisks" transform="rotate(200 560 400)"/>
  <use href="#obelisks" transform="rotate(240 560 400)"/>
  <use href="#obelisks" transform="rotate(280 560 400)"/>
  <use href="#obelisks" transform="rotate(320 560 400)"/>

  <!-- Bunker marker at center -->
  <rect x="548" y="388" width="24" height="24" fill="#1a1a1a" stroke="#e8dcc8" stroke-width="2"/>
  <text x="560" y="440" text-anchor="middle" fill="#e8dcc8" font-size="12" font-family="Georgia, serif" font-weight="bold">CONTROL BUNKER</text>

  <!-- Route from Meridian -->
  <path d="M 100 560 C 220 540, 330 460, 420 430" fill="none" stroke="#e8dcc8" stroke-width="2" stroke-dasharray="6,5"/>

  <!-- Meridian marker -->
  <circle cx="100" cy="560" r="10" fill="#2e5a8f" stroke="#e8dcc8" stroke-width="2"/>
  <text x="100" y="590" text-anchor="middle" fill="#e8dcc8" font-size="13" font-family="Georgia, serif" font-weight="bold">MERIDIAN</text>
  <text x="100" y="606" text-anchor="middle" fill="#a89878" font-size="10" font-family="Georgia, serif">Naval Capital — 190km</text>

  <!-- Vehicle staging point at edge of outer zone -->
  <circle cx="420" cy="430" r="7" fill="#e8dcc8"/>
  <text x="420" y="418" text-anchor="middle" fill="#e8dcc8" font-size="10" font-family="Georgia, serif">Vehicle limit</text>

  <!-- Scale bar -->
  <g transform="translate(60,650)">
    <line x1="0" y1="0" x2="120" y2="0" stroke="#e8dcc8" stroke-width="2"/>
    <line x1="0" y1="-5" x2="0" y2="5" stroke="#e8dcc8" stroke-width="2"/>
    <line x1="60" y1="-5" x2="60" y2="5" stroke="#e8dcc8" stroke-width="2"/>
    <line x1="120" y1="-5" x2="120" y2="5" stroke="#e8dcc8" stroke-width="2"/>
    <text x="0" y="20" fill="#e8dcc8" font-size="10" font-family="Georgia, serif">0</text>
    <text x="52" y="20" fill="#e8dcc8" font-size="10" font-family="Georgia, serif">5km</text>
    <text x="104" y="20" fill="#e8dcc8" font-size="10" font-family="Georgia, serif">10km</text>
  </g>

  <!-- Legend -->
  <g transform="translate(650,120)">
    <rect x="-10" y="-25" width="250" height="200" fill="#1a1812" stroke="#5c5c48" rx="4"/>
    <text x="10" y="0" fill="#e8dcc8" font-size="13" font-family="Georgia, serif" font-weight="bold">RADIATION ZONES</text>

    <rect x="10" y="14" width="16" height="16" fill="#3a3a2e"/>
    <text x="34" y="27" fill="#e8dcc8" font-size="11" font-family="Georgia, serif">Background — ~30 rads/hr</text>

    <rect x="10" y="40" width="16" height="16" fill="#6b5a2e"/>
    <text x="34" y="53" fill="#e8dcc8" font-size="11" font-family="Georgia, serif">Elevated — ~150 rads/hr</text>

    <rect x="10" y="66" width="16" height="16" fill="#8f4a1e"/>
    <text x="34" y="79" fill="#e8dcc8" font-size="11" font-family="Georgia, serif">Hazard — ~350 rads/hr</text>

    <rect x="10" y="92" width="16" height="16" fill="#7a1f14"/>
    <text x="34" y="105" fill="#e8dcc8" font-size="11" font-family="Georgia, serif">Crater Core — ~600 rads/hr</text>

    <polygon points="18,130 24,144 12,144" fill="#e8dcc8"/>
    <text x="34" y="141" fill="#e8dcc8" font-size="11" font-family="Georgia, serif">Warning obelisk (×9)</text>

    <line x1="10" y1="158" x2="26" y2="158" stroke="#e8dcc8" stroke-width="2" stroke-dasharray="4,3"/>
    <text x="34" y="162" fill="#e8dcc8" font-size="11" font-family="Georgia, serif">Approach route</text>
  </g>
</svg>

---

## 4.2 — READING THE ZONES

The map is centred on the crater the Governor's engineers repurposed thirty-one years ago (Chapter 1, §1.4). Bands get worse toward the middle — this is not subtle, and it isn't meant to be. The team should feel the countdown clock (Chapter 1, §1.5) and the radiation gradient pulling in opposite directions: hurry, but every zone crossed without care costs rads that don't go away.

| Zone | Approx. Rate | What crossing it means |
|---|---|---|
| **Background** | ~30 rads/hr | Negligible on its own; adds up on a long, slow crossing |
| **Elevated** | ~150 rads/hr | Noticeable on unprotected personnel; a non-issue in Battle Dress for a short crossing |
| **Hazard** | ~350 rads/hr | Where the obelisk ring sits — this is the line every warning marker on Ys is telling people not to cross |
| **Crater Core (bunker approach)** | ~600 rads/hr | Lethal to an unprotected person within the hour; survivable in Battle Dress only because of the suit's Rad protection value (Appendix B) — and only for a limited window |

### The Math That Matters at the Table

Team UNDERTOW's Improved Battle Dress carries a **Rad 290** rating (Appendix B, §B.2) — per CRB22 (p.100), that value is deducted from the rads a wearer receives each exposure. In the Crater Core band, that's roughly 600 rads/hr incoming, reduced to **~310 rads/hr actually absorbed** even at full protection. That's not safe. It's *survivable for the length of Act Three*, which is the point: the suits are the only reason this mission is attemptable at all, and the referee should still make the team feel the cost of lingering.

**Cumulative Radiation Effects** (CRB22, p.101 — general Traveller convention; note the source PDF's table lost its numeric values to a text-extraction/formatting error, same issue as the Battle Dress erratum in Appendix B, so these are reconstructed from the standard Traveller radiation table rather than re-scanned from this specific file):

| Cumulative Rads | Effect |
|---|---|
| 50 or less | None |
| 51–200 | –1 to a physical characteristic, permanently |
| 201–400 | –2, permanently |
| 401–600 | –3, permanently |
| 601–800 | –4, permanently |
| 801+ | –5, permanently |

**Referee guidance:** track each PC's cumulative rads openly, the same way the Countdown clock is tracked openly (Chapter 1, §1.5). A team that rushes the crater core and lingers past their air/rad margin should feel it in accumulated characteristic damage, not just narrative peril — it's a second clock running alongside the first, and letting the players see both is what makes the crossing tense rather than arbitrary.

### Anti-Rad Drugs

Per CRB22, anti-rad drugs absorb up to 100 rads per dose if administered before or within ten minutes of exposure, usable once per day (further doses cause 1D permanent Endurance damage). If Voss or Achebe thought to requisition any before insertion, this is the moment that decision pays off — a good thing to ask the table about if nobody's mentioned it by the time Act Two starts.

---

## 4.3 — IMAGE PROMPT (for external art generation)

If you want a rendered illustration to go with this rather than (or alongside) the schematic SVG above:

> Wide desert landscape, top-down aerial/satellite perspective, a vast circular crater of black fused glass at the center reflecting a pale sun, faint heat-shimmer distortion radiating outward in visible concentric bands from dark glassy black through ash-brown to dusty tan at the far edges, a ring of tall weathered stone obelisks with worn pictogram warnings standing sentinel around the crater's outer edge, a thin dirt convoy road approaching from the lower-left horizon, muted desaturated color palette — rust, ash-grey, bone-white — no text, no readable language on the obelisks, science-fiction military cartography mood, Traveller RPG aesthetic

*(Written for general-purpose AI image tools — Midjourney, Stable Diffusion, or similar. Swap in your preferred generator's style syntax as needed.)*

---

## 4.4 — THE OBELISK RING: WHY IT'S DESIGNED THIS WAY

The nine obelisks ringing the Glass Reach (Chapter 1, §1.4) aren't random signage — they're built the way real nuclear-waste warning markers are designed to work across gulfs of time and language, a discipline actually called **nuclear semiotics**. The field started with the Human Interference Task Force in 1981 and was formalized in a 1993 Sandia National Laboratories report on marking real-world nuclear waste sites for readers up to 10,000 years in the future. The core insight: a single sign fails the moment its language does, so the real approach layers several *kinds* of warning that degrade independently — the physical shape of the place, then pictures, then plain text, then technical detail for anyone equipped to read it.

Ys's markers use the same four-level logic, built by Imperial engineers thirty-one years ago and never updated since. The spike field itself (Level I, below) is a direct design descendant of a real 1991 concept called **"Landscape of Thorns"** — one of several proposals commissioned by Sandia National Laboratories from architect Michael Brill's team for the real-world Waste Isolation Pilot Plant, calling for a field of irregular, non-repeating concrete spires shaped specifically to read as "wounding forms" regardless of who's looking at them. It's a genuinely unsettling piece of real design history, and it translates almost without modification into Traveller. Use whichever level fits the scene — Team UNDERTOW likely doesn't need all four read aloud, but Voss (Chapter 2, §2.4) is exactly the kind of character who'd stop and read Level IV anyway.

**Level I — The shape of the place itself.** No language required. This is the spike field: fifteen-metre spires of black glass, cast from the crater's own fused ground, no two shaped alike so nothing about them can be mistaken for architecture, ornament, or anything a culture might value. The irregularity is the point — a repeating pattern can be dismissed as decorative; chaos reads as danger in a way no single culture invented and none can fully unlearn. This is the level that still works if every other level has failed.

**Level II — Pictograms.** Set into plainer stone markers at the base of the spike field, each face carries the same repeating image set, worn but legible: a figure collapsing, an arrow pointing down and inward toward the crater's center, a radiating burst pattern, a crossed-out human silhouette. No text needed to get the gist.

**Level III — Plain-language text, in the nine languages/scripts noted in Chapter 1.** Short and blunt, not eloquent — Imperial engineers writing for readers who might not share their concept of a "hazard" at all: *this ground kills. Do not dig. Do not shelter here. Nothing valuable is buried below — only danger.*

**Level IV — Technical plaque, base of the central-most obelisk.** A sealed data-wafer plate, easy to miss unless someone's specifically looking (Investigate or Electronics 8+). This is the level built for engineers, not casual readers — and it's a genuine intel opportunity if the team's crossing takes them past it. It carries the original test-site's technical designation, approximate original blast/contamination radius, and — if the referee wants to reward a thorough team — a partial structural schematic of the old test bunker, which is the same bunker Krein's engineers repurposed for Ashfall. Basaran (Chapter 3, §3.3), if the team earned his trust, already knows roughly what's on this plaque; finding it independently is a way to get the same information without him.

**The irony worth playing up:** nuclear semiotics research has a well-documented paradox — an elaborate, monumental warning can read as a *forbidden treasure* marker instead of a deterrent, especially to a culture that doesn't share the original builders' fear. Team UNDERTOW is about to prove that paradox true in the most literal way possible: the one thing on Ys explicitly built to keep everyone out is exactly where they need to go.

---

*Last updated: 2026-08-23*
