# TRAVELLER: OPERATION ASHFALL
## Appendix N — Robots: Full Design Builds

*Referee Reference Document*

---

## N.1 — WHY THIS EXISTS

Appendix G's original Sentry Walker was built in-house, before this project had access to the actual Robot Handbook — flagged as unverified at the time. It's now rebuilt from the real design system (chassis Size, Locomotion, Armour-by-Slot), and a second robot type — smaller sentries patrolling Floor 0 and Krein's own office — is built the same way. All math shown, not just results, so it can be audited or rescaled.

**Design constants used throughout, per the Robot Handbook's own tables:**
- Walker locomotion: TL8+, Agility +0, ATV trait, Base Endurance 72 hours, **Cost Multiplier ×10**
- TL15–17 armor bracket: Base Protection 4, Max 4 protection per Slot, Cost Cr2,500 per Slot
- TL15 "Advanced Technology" endurance modifier: +100% (before any power-pack additions)

---

## N.2 — COLOSSUS-PATTERN SENTRY WALKER (REBUILT, SIZE 8)

*Stationed in the plaza between the two towers (Chapter 2's Floor 0 plan). Supersedes the original Appendix G write-up — this is the same character in the story, corrected numbers.*

**Chassis:** Size 8 (128 Base Slots, 72 Base Hits — the book's own comparison point is Rhino/Orca scale, the largest pre-defined category)
**Locomotion:** Walker (ATV trait, Agility +0, Speed ~6m, matching other Walker-locomotion designs in the book)
**TL:** 15

| Build step | Math | Result |
|---|---|---|
| Base Chassis Cost | Size 8 base (Cr8,000) x Walker multiplier (x10) | **Cr80,000** |
| Armor | Base Protection 4; need +15 more to reach the Appendix G target of +19; TL15-17 allows 4 protection/Slot, so 4 Slots needed (4 x 4 = 16, more than covers the +15 needed) | **4 Slots, Cr10,000 -> Protection +20 total** (the extra Slot's capacity rounds up past the original +19 target -- a bigger chassis is simply a bit more armor-efficient) |
| Slots remaining | 128 - 4 (armor) | **124 Slots** available for weapons, sensors, and programming |
| Endurance | Base 72 hours (Walker) x 2 (TL15 Advanced Technology, +100%) | **144 hours** before recharge |

**Full stat line:**

| Robot | Hits | Locomotion | Speed | TL | Cost (chassis+armor only) |
|---|---|---|---|---|---|
| Colossus-Pattern Sentry Walker | 72 | Walker | 6m | 15 | Cr90,000 (before weapons/sensors/programming) |

**Traits:** Armour (+20) - ATV - Large (+3) -- the Attack Roll DM that comes with a Size 8 chassis; it's a genuinely easier target to hit than a human-scale opponent, which is the real-rules tradeoff for all that Protection and Hits.
**Skills:** Gunner (turret) 2 - Melee 1 - Tactics (military) 0 *(unchanged from the original write-up -- these live in the remaining 124 Slots' programming/skillware allocation, not itemized further here)*
**Weapon:** Integrated heavy autocannon, 6D, AP8, fixed forward arc *(kept from the original design -- the Robot Handbook's own heavy weapon options are covered separately in Appendix O if you want a fully itemized weapon-mount build)*

**Stability check for the Pinnace Gambit's surge (Appendix G, §G.4) is unchanged** -- still rolls against END 8 equivalent, still Average (8+) or Difficult (10+) depending on the surge's Effect. A bigger chassis doesn't make it meaningfully harder to knock over; more surface area to catch a wave cuts against the extra mass.

---

## N.3 — DOG SENTRIES (NEW, SIZE 4)

*Patrol Floor 0's plaza-level approaches and Krein's own office (Floor 5) -- smaller, faster, more numerous than the single Sentry Walker, and a genuinely different tactical problem.*

**Chassis:** Size 4 (8 Base Slots, 12 Base Hits -- the book's own comparison point is Bwap/Droyne/Goat scale, a real dog-sized robot, matching the concept directly)
**Locomotion:** Walker (quadrupedal is a fictional/cosmetic choice within Walker locomotion -- the rules don't distinguish leg count, so this is exactly the leg-count the fiction calls for at no mechanical cost)
**TL:** 15

**The honest problem this build runs into:** hitting Protection +19 on a Size 4 chassis (matching the same armor rating asked for) consumes **all four of the Slots needed for it -- out of only 8 total.** That leaves just **4 Slots** for weapons, sensors, and programming combined, on a chassis that's supposed to be a fast, alert patrol unit, not a walking tank. This is a real, honest constraint from the actual rules, not a design choice -- a dog-sized robot armored to the same standard as a Rhino-scale war machine is a legitimately awkward vehicle to build, and the Robot Handbook's own math says so.

| Build step | Math | Result |
|---|---|---|
| Base Chassis Cost | Size 4 base (Cr800) x Walker multiplier (x10) | **Cr8,000** |
| Armor | Base Protection 4; need +15 more for Protection +19; 4/Slot cap means 4 Slots needed | **4 Slots, Cr10,000 -> Protection +20** (same rounding-up effect as the Walker) |
| Slots remaining | 8 - 4 (armor) | **Only 4 Slots** for everything else |
| Endurance | Base 72 hours x 2 (TL15) | **144 hours** |

**What fits in 4 Slots:** one small weapon mount, one Auditory Sensor, and just enough for Basic-tier programming -- genuinely minimal. This is not a robot that out-guns anything; it's a robot that survives contact and keeps barking (functionally: keeps broadcasting an alarm) far longer than its size would suggest.

**Full stat line:**

| Robot | Hits | Locomotion | Speed | TL | Cost (chassis+armor only) |
|---|---|---|---|---|---|
| Dog Sentry | 12 | Walker | ~6m | 15 | Cr18,000 (before its one small weapon and sensor) |

**Traits:** Armour (+20) - ATV - Small (-1) *(Size 4's Attack Roll DM -- smaller than human-scale, genuinely harder to hit, the inverse of the big Walker's problem)*
**Skills:** Recon 1 - Gun Combat 0 *(minimal -- Basic-tier programming, per the Slot budget above)*
**Weapon:** One small mount -- a stunner or light integrated sidearm is the only realistic fit; there's no Slot budget left for anything heavier
**Programming:** Basic (security), INT 4 -- matches the real Shadow Security Robot's programming tier from the book, not an invented number

**Suggested numbers for the building:** 2 at Floor 0's plaza-level approaches (patrolling, not stationary like the big Walker), 1 stationed directly in Krein's office (Chapter 2's Floor 5 plan) as a last-line personal alarm/deterrent rather than a real combat threat -- matching the honest read on what a Size 4 chassis with this armor budget can actually do.

**Referee note on the tactical texture this creates:** the Dog Sentries are individually much less dangerous than the Sentry Walker (Small trait working against them, minimal weapon, Basic programming) but genuinely harder to hit and there are more of them -- a real, different kind of problem than the single heavy Walker. A team that handles the Walker with a heavy weapon and the Dog Sentries with area denial or simply outrunning them is reading the encounter correctly.

---

## N.4 — SOURCE CITATIONS

| Element | Source | Page/Note |
|---|---|---|
| Robot Size table (Base Slots, Base Hits, Attack Roll DM, equivalent creature comparisons) | Robot Handbook | Chassis section, p.13 |
| Locomotion table (Walker: TL8, Agility +0, ATV, 72hr endurance, x10 cost multiplier) | Robot Handbook | Locomotion section, p.16 |
| Armor-by-Slot table (Base Protection, Max per Slot, Cost per Slot, by TL bracket) | Robot Handbook | Chassis Options, p.19 |
| TL15 Advanced Technology endurance modifier (+100%) | Robot Handbook | Chassis Options, p.19-20 |
| Shadow Security Robot (real comparison point for the Dog Sentry's programming tier and general role) | Robot Handbook | Security Drone/Shadow Security Robot entries |
| Fighting Strongpoint (real comparison point the original Protection +19 target was drawn from) | Robot Handbook | Combat robot entries |

---

*Last updated: 2026-08-23*
