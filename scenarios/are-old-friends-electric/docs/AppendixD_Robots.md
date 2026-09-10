# TRAVELLER: ARE OLD FRIENDS ELECTRIC
## Appendix D — Robots

*Referee Reference Document*

---

## D.1 — WHY THIS EXISTS

Built from the actual Robot Handbook design system — Chassis Size, Locomotion, Armour-by-Slot, Robot Brains — the same way *Operation Ashfall*'s Appendix N rebuilt its Sentry Walker once that book became available. All math shown, not just results, so it can be audited or rescaled at the table.

**Design constants used throughout, per the Robot Handbook's own tables:**
- Chassis Size table (Base Slots, Base Hits, Attack Roll DM by Size): p. 13
- Walker locomotion: TL8, Agility +0, ATV trait, Base Endurance 72 hours, **Cost Multiplier ×10**: p. 16
- TL12–14 armour bracket: Base Protection 4, Max 40% of Base Slots, Max 3 protection per Slot, Cost Cr1,500 per Slot: p. 19
- TL12 "Improved Technology" endurance modifier: +50%: p. 19–20
- Robot Brains table (Programming/Control tier, TL, Computer/X, Base INT, Skill DM, built-in capabilities): p. 65–66
- Hacking Robots — access, firewall difficulty by Security tier, and the Parasite Link automatic-access rule: p. 106–107
- Cutting Torch (improved) — TL9, 2 Slots, Cr5,000, improvised melee weapon 3D damage, AP4 trait: p. 58

---

## D.2 — LINE SERVITOR (SIZE 6)

*The Parkside Annex's ordinary maintenance and construction robot — the same unremarkable machine that's been quietly running this facility's upkeep for decades. Most of the ones the crew encounters on Level 2 are exactly what they look like. Some of them, tonight, are not.*

**Chassis:** Size 6 (32 Base Slots, 32 Base Hits — the book's own comparison point is Aslan/Cow/Lion scale, a genuinely large industrial machine)
**Locomotion:** Walker (ATV trait, Agility +0, base movement 5m per Minor Action)
**TL:** 12

| Build step | Math | Result |
|---|---|---|
| Base Chassis Cost | Size 6 base (Cr2,000) × Walker multiplier (×10) | **Cr20,000** |
| Armour | Base Protection 4 — no additional Slots spent. This is a factory tool, not a war machine, and it shows | **Protection +4** |
| Slots remaining | 32 − 0 (armour) | **32 Slots** for brain, tools, and sensors |
| Endurance | Base 72 hours (Walker) × 1.5 (TL12 Improved Technology) | **108 hours** |

**Full stat line:**

| Robot | Hits | Locomotion | Speed | TL | Cost (chassis + armour only) |
|---|---|---|---|---|---|
| Line Servitor | 32 | Walker | 5m | 12 | Cr20,000 (before brain and tools) |

**Traits:** Armour (+4) · ATV · Large (+1) *(the Attack Roll DM that comes with a Size 6 chassis — an easier target than a human-scale opponent, the real tradeoff for that extra Hit capacity)*

**Manipulators:** 2× (STR 9, DEX 8) — proportional to the chassis, no additional cost.

**Tool / improvised weapon:** Cutting Torch (improved), TL9, 2 Slots, Cr5,000 — improvised as a melee weapon, **3D damage, AP4 trait**.

---

### D.2a — Uncorrupted (as-built)

**Brain:** Basic (X), TL10, Computer/1, Base INT 4, Skill DM –1, built-in capabilities *Limited language, Security/0* (Robot Handbook, p. 66). Fits at no Slot cost in a Size 6 chassis. Cost: Cr4,000.
**Skills:** Profession (robotics) 0 · Mechanic 0
**Programming:** Basic — focused entirely on its assembly and maintenance function. Avoids obvious hazards, does not initiate violence, and will not deviate from its task even if intruders walk directly past it. This is what almost every robot on Level 2 is doing when the crew arrives.

### D.2b — Corrupted (post-installation)

**Brain:** Hunter/Killer, TL10, Computer/1, Base INT 4, Skill DM –1, built-in capabilities *Limited Friend or Foe, Security/1* (Robot Handbook, p. 66). Same Slot cost (zero), same chassis, same everything — **the only thing that changes is the chip.** Cost: Cr6,000.
**Skills:** Melee (unarmed) 1 *(now using its cutting torch to kill instead of build)* · Recon 0 *(the Hunter/Killer brain's built-in default skill)*
**Programming:** Hunter/Killer — configured with "Confederation intruder" as a foe parameter and an escalating engage-and-kill action against anything that matches it. Everything else about the robot is completely unchanged.

**Referee note — the actual point of this build:** the swap from D.2a to D.2b costs **Cr2,000** and no Slots at all. That number should land hard at the table if anyone asks. This is not an arms race requiring new hardware — it's a chip. TMI is not building an army from scratch; it's quietly repurposing a maintenance fleet that was already there, using tech nobody was supposed to still have. That's the whole horror of "they thought they were all burned to silicon" in one line item.

**Hacking option (Robot Handbook, p. 106–107):** a corrupted Line Servitor's firewall is Security/1 — Very Difficult (12+) to intrude on remotely via Electronics (computers), one full step harder than an unmodified unit's Security/0. **Direct physical contact bypasses this entirely** — a Parasite Link or an equivalent hard connection to the chassis grants automatic access, at which point a second successful intrusion attempt (same difficulty, Electronics (computers), Science (robotics), or Profession (robotics)) seizes control outright rather than requiring the unit be destroyed. This is Kwame Okonkwo's moment: Electronics (computers) 2 makes him the only one on the crew who can walk up to an active Hunter/Killer unit mid-fight and simply take it away from whoever's running it, if he's willing to get close enough to touch it.

---

## D.3 — SHADOW SECURITY ROBOT (PRE-BUILT, PARKSIDE'S LEVEL 3 GUARDIAN)

*Guards the sub-level vault (Chapter 4, §4.4) — the one thing on this facility actually built to hurt people. Reused as-is from the Robot Handbook's own pre-generated design; nothing homebrewed here.*

| Robot | Hits | Locomotion | Speed | TL | Cost |
|---|---|---|---|---|---|
| Shadow Security Robot | 21 | Walker | 9m | 12 | Cr300,000 |

**Skills:** Athletics (dexterity) 2 · Athletics (strength) 1 · Gun Combat (energy) 3 · Melee (unarmed) 3 · Navigation 2 · Recon 3 · Stealth 4 · Tactics (military) 3
**Attacks:** Laser Rifle (5D+3, Zero-G) · Claws (1D+2)
**Manipulators:** 2× (STR 9, DEX 12)
**Endurance:** 173 hours
**Traits:** Armour (+13) · ATV · Heightened Senses · IR/UV Vision · Stealth (+3)
**Programming:** Advanced (INT 9)

Designed to blend into any environment and open with a first shot from ambush before closing to melee with sharpened manipulators — highly intelligent enough to retreat and strike again later if the odds turn against it, and to alert the rest of the facility if it does. Camouflage and stealth grant DM–4 versus visual detection and DM–3 versus electronic, auditory, and olfactory detection (Robot Handbook, p. 139).

**Referee note:** this is a genuinely dangerous single opponent, not a mook. Play it per its own programming — first shot from concealment, then melee, then a real tactical retreat rather than a fight to the death if it's losing. It should feel like a completely different category of threat from the Line Servitors upstairs, because on paper it is.

---

*Last updated: 2026-09-09*
