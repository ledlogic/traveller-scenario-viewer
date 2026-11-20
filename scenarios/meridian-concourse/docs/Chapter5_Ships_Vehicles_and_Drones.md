# CHAPTER 5, SHIPS, VEHICLES AND DRONES

The machines in the campaign: the chartered ship that carries the party, the flyers and haulers they may find or use on Palin, and the drones that serve the party and oppose it. Stat blocks use the Core Rulebook's robot format (Core Rulebook Update 2022). Everything here is **[HOMEBREW]** unless a line says otherwise.

## 5.1: THE SHIP, *SEDIMENTAL VALUE* (Modified Far Trader, TL12)

![The Sedimental Value](img/far-trader.jpg)

**Image prompt:** *A modified 200-ton far trader on a rough landing field, squat streamlined hull with extra cargo winching gear on the dorsal side, reinforced landing legs, a small open drone bay on the underside, scuffed hull plates, red desert dust around the landing legs, two red suns low in the sky, grounded hard-sci-fi ship portrait.*

A chartered 200-ton far trader, refitted for survey/salvage work: extra cargo winching gear, a small drone bay, and reinforced landing gear for rough-field work on worlds like Palin. Owned and operated by an independent charter contractor out of Halcourt, hired for this run by the expedition's patron. Full stats are left to the referee's preferred trader template (Core Rulebook Update 2022 has a suitable baseline); what matters for this campaign is the crew roster and the one system modification below.

**Standard crew (NPCs) at expedition start:** Captain and Senior Pilot Aveline Devereux-Sato, Senior Engineer Bram Voskuijlen and Medic and Steward Hana Oyelaran. All three are described in **Chapter 4**.

**The one relevant refit, Neural Shipboard Uplink:** *Sedimental Value*, like most modern charter vessels running hazardous or time-critical work, has its three senior officers fitted with subdermal shipboard uplink implants, a standard, unremarkable, entirely legal augmentation that lets a rated officer interface directly with ship's systems (helm, engineering diagnostics, astrogation plot) without a physical console, cutting critical response time in an emergency. It is considered good practice, not exotic technology, and none of the ten PCs have it: junior/backup specialists on a charter this size are never issued the implant, both because of cost and because backup crew are meant to be able to function *without* relying on ship-integrated augmentation, precisely in case something happens to the people who do.

Something happens to the people who do.

## 5.2: VEHICLES

![A wrecked atmospheric flyer in the graveyard](img/flyer-wreck.webp)

**Image prompt:** *A wrecked winged atmospheric flyer half-buried in red dust on a dark apron, torn hull plating, one wing snapped, a burrowing creature's shell visible in a ripped section, shafts of daylight through a collapsed ceiling above, deep shadow beyond, post-collapse hard-sci-fi atmosphere.*

Palin has little traffic of its own, so the vehicles that matter are the ones left in the Concourse and the ones the party brings.

- **The flyer graveyard (Chapter 7, Zone One).** Commercial short-haul flyers, a few private craft and one partly intact *Heliarch* security gunship sit half-buried in red dust on the old apron. Almost all are dead hulks that shell-squatters have claimed as shells (Appendix C). The gunship's weapons are long dead, and its flight recorder is a set piece in Chapter 7.
- **A working flyer.** If the party finds one that can be made to fly (Rook Alcala, PC 9, is the natural pilot, and Kwan the natural fixer), it can cover the plateau and the apron. Treat it as a salvaged atmospheric flyer under the referee's preferred Core Rulebook vehicle template, with the Mechanic and Engineer checks to restore it set by the referee.
- **The cargo ramp and the hauler.** A cargo ramp leads from Zone One down to Zone Two and is wide enough for heavy equipment. A party that splits into a ship team and a ground team can bring a hauler down it, driven or remote-operated by Bracket (Chapter 7, Zone One).
- **The ship's drone bay.** See 5.3.

The Core Rulebook has no ready-made stat blocks for these, so none are invented here. A referee who wants numbers should take the closest Core Rulebook vehicle and apply Hits and Armour that match the wreck's condition.

## 5.3: DRONES

Two kinds of drone matter: the ones the party owns and the ones the mainframes field.

**The ship's drone bay.** The *Sedimental Value* carries a small drone bay as part of her survey and salvage refit (5.1). It holds a few survey drones for scouting dust-choked spaces, which is where Bracket's drone interface and Solt's computers are most useful. The bay is the party's safe way to look at a room before entering it, and a reason for ARBITER and COUNTERSIGN to notice them.

**The mainframes' drones.** ARBITER fields refurbished sentries and COUNTERSIGN fields rebuilt combat remnants. Appendix B explains how each mainframe commits them, and Chapter 7 and Chapter 8 say where they appear.

### SALVAGED SENTRY DRONE (ARBITER/*Heliarch* pattern)

![Sentry drone](img/sentry-drone.webp)

**Image prompt:** *A refurbished security sentry drone hovering in a dusty corridor, smooth grey armoured chassis, a stun baton on one arm, a single blue sensor band, neat repairs, company markings faded, calm and methodical, cool blue lighting, hard-sci-fi robot portrait.*

Refurbished and incrementally upgraded over twenty-five years from *Heliarch*'s original 1094-vintage security stock. Cautious, methodical, prefers to disable and detain rather than destroy, consistent with ARBITER's overall approach (Appendix B).

```
Robot           Hits    Speed   TL      Cost (n/a, Concourse asset)
Sentry (Heliarch)  18   6m      12(*)
Locomotion      Grav
Skills          Recon 2, Gun Combat (energy) 2, Stealth 1
Attacks         Stun Baton (2D, non-lethal, Stun trait), Snub Pistol
                (tranquiliser, special)
Manipulators    1 x (STR 10 DEX 9)
Endurance       36 hours (recharges from Zone Two/Three grid when
                idle)
Traits          Armour (+6), Flyer (idle), Heightened Senses,
                IR/UV Vision
Programming     Advanced (INT 8), directed remotely by ARBITER
Options         Auditory Sensor (broad spectrum), Drone Interface,
                Transceiver (short range, ARBITER network only),
                Wireless Data Link
```
*(*) Nominal 1094 chassis, self-upgraded software/sensor package equivalent to TL12–13.*

---

### SALVAGED COMBAT REMNANT (COUNTERSIGN/K-S pattern)

![Combat remnant](img/combat-remnant.webp)

**Image prompt:** *A rebuilt tracked combat robot in a dusty corridor, heavy asymmetric chassis, patchwork armour from scavenged parts including mismatched grey plates from another maker, crude weapon mount, one oversized manipulator, amber warning light, battered and menacing, hard-sci-fi robot portrait.*

Rebuilt from K-S "hazard response" combat stock, more numerous, more aggressive, individually shabbier than ARBITER's sentries, reflecting both K-S's original design philosophy and COUNTERSIGN's more damaged fabrication capability.

```
Robot           Hits    Speed   TL      Cost (n/a, Concourse asset)
Combat Remnant (K-S)  24  5m    12(*)
Locomotion      Tracks
Skills          Gun Combat (slug) 2, Tactics (military) 1, Athletics
                (strength) 2
Attacks         Improvised Weapon Mount (Autorifle-equivalent, 3D
                damage) or Melee (crude manipulator strike, 2D+2)
Manipulators    1 x (STR 14 DEX 6)
Endurance       24 hours (patchwork power cells, noticeably less
                reliable than the Heliarch sentries; a 1 on the
                Endurance die each session it's active means it
                shuts down mid-encounter)
Traits          Armour (+8), ATV (idle), ablative patchwork repairs
                (visually distinct, often incorporates scavenged
                parts from Heliarch-pattern units, an unsettling
                detail worth describing)
Programming     Advanced (INT 7), directed remotely by COUNTERSIGN
Options         Transceiver (short range, COUNTERSIGN network only),
                Wireless Data Link, spare slot x2 (COUNTERSIGN has
                been known to bolt on whatever salvage is available,
                referee's discretion for a memorable one-off variant)
```
*(*) Nominal 1094 chassis, self-upgraded software/weapons control equivalent to TL12–13, offset by physical degradation.*

---

