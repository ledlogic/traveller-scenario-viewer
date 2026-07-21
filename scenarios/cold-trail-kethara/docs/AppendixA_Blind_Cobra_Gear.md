# APPENDIX A — BLIND COBRA GEAR
## Equipment, Computers, Sensors, and the TSU-9 Thermal Management System

*Cold Trail in Kethara Reach — Referee Reference Document*

---

> *"The original design was elegant. Liquid-cooled, closed-loop, silent, nearly undetectable from orbit. Then it rained. Then it stopped raining. Then we found out why."*
> — Internal SolSec Technical Division report, recovered from Haramoto's data notes, Day 19

---

## A.1 — GENERAL FIELD EQUIPMENT

This section covers the cell's shared, station-level equipment — the gear that belongs to BLIND COBRA as a unit rather than to any one operator. Personal loadouts (weapons, armour, individual toolkits) are detailed on each character's own sheet in Chapter 2; this is what's sitting in the cave when nobody's carrying it.

**Emergency Vacc Suits (×6)** — TL10, 2-hour air supply each. Racked in Crew Quarters/Medical alongside the filter mask shelf. Standard SolSec field-issue, not mission-specific.

**Filter Masks (×6, station stores)** — Standard atmosphere filtration for Lakamsal's Thin (Code 4) atmosphere. Kowalski carries her own separately and doesn't draw from this stock (see Chapter 1, §1.3, The Thin Atmosphere).

**Parts Locker (depleted)** — What's left of BLIND COBRA's spare-parts allowance after 23 days of running repairs on everything from drone rotors to the TSU-9. By Day 23 it holds fasteners, cable, and odds and ends — nothing that solves the TSU-9 problem. That's the entire reason the crash site 4km northeast matters as much as it does (see A.10, Engineer Effect Table, and A.9, Port Maintenance Procedures).

**Rental Trucks (×2, fuel cells dry)** — TL9 civilian ground vehicles, rented from a Lakamsal Town colonist under the "geological survey work, three weeks" cover story. Not returned. Full vehicle profile in Appendix H, Vehicles and Drones.

**The Boring Machine (destroyed)** — A single-purpose pneumatic boring machine, TL9, industrial grade, brought in as part of the insertion equipment specifically to bore the TSU-9's 49 heat-exchanger ports into the east cliff face. It completed all 49 and destroyed itself attempting a 50th — the basalt was harder than the IISS survey data indicated, and the machine's drive assembly failed catastrophically about 8 minutes into the attempt. There is no replacement. There are no spare ports. Full technical detail, including why the port grid isn't quite the clean honeycomb the installation manual promised, is in A.8, The 49 Ports: Origin and Significance.

---

## A.2 — COMPUTERS AND SIGNALS EQUIPMENT

**Signals Intercept Array** — TL11, 400km effective range. BLIND COBRA's primary reason for existing: this is what's been absorbing IRON GATE's transmissions for 23 days. Housed in the Operations Center, rear wall, adjacent to the TSU-9 controls (the two systems share cooling and power infrastructure, which is part of why a TSU-9 failure is also a signals-collection failure). Pelczar operates this personally and has for six days straight.

**Encrypted Comms Uplink (orbital)** — TL11 tight-beam system, BLIND COBRA's only channel to the SolSec courier vessel making scheduled passes through the system. This is the uplink Pelczar needs clean signal conditions to use for the data package transmission (see Chapter 1, §1.4, Kethara Basin, for how weather affects this).

**Drone Control Rigs (×4, 3 operational)** — TL10 haptic control stations, one damaged (Rig 3 has a shorting relay, DM-1 on precision ops). Okonkwo works from these; his personal Drone Control Gauntlet (Chapter 2) is a portable extension of the same system, not a separate piece of equipment.

**Pelczar's spare display** — Not station-critical equipment, but worth noting here: a personal display she'd rigged to project art onto the ops centre wall, now overheated and dark along with everything else (see Chapter 2, §2.7).

*Full drone hardware specifications (Priya, Garner, the Surveillance and Ground Scout units): see Appendix H, Vehicles and Drones.*

---

## A.3 — SENSORS AND SURVEILLANCE ASSETS

**Motion Sensor Grid** — 800m radius around Field Station Kethara. This is what gives the team roughly 40 minutes of warning before anything — Meridian Recovery, a curious megafauna, an Imperial patrol — reaches the wire perimeter on foot or by vehicle.

**Auto-Sentry Units (×3)** — 120° arc coverage each, gauss rifles, Skill 2, 3D damage. Cannot distinguish megafauna from personnel without an Average (8+) Electronics (sensors) check from the ops centre — a real problem given how often something large is moving around the perimeter at night. A destroyed sentry generates an acoustic and thermal spike that the team cannot hide.

**Binoculars** — TL8–10 depending on owner, ×20 to ×50 magnification with thermal overlay on the higher-TL units. Personal issue; see individual character sheets in Chapter 2.

---

## A.4 — WHAT THE TSU-9 IS

The **TSU-9 Thermal Spoofing Unit** is a SolSec field-deployable thermal masking system, TL11. Its function is to intercept, redistribute, and falsify the heat signature of an active operations base so that orbital or aerial thermal sensors read nothing unusual. A properly functioning TSU-9 makes a cave full of humans, electronics, and power generation look, thermally, like a patch of unremarkable basalt.

The TSU-9 was chosen for BLIND COBRA because:

- It has no active electromagnetic emissions of its own (passive system — no radar, no active sensor signature)
- At full operation it reduces the station's thermal profile to background-level ambient variance of ±0.3°C — undetectable by Imperial TL10 orbital survey sensors
- It can be installed in a natural rock formation with minimal modification
- SolSec Technical Branch has used it successfully on eleven previous field operations across nine worlds

None of those eleven previous operations involved Lakamsal's specific geological and meteorological profile. This turned out to matter considerably.

---

## A.5 — THE ORIGINAL DESIGN: LIQUID-COOLED CLOSED LOOP

### How It Was Supposed to Work

The TSU-9 on BLIND COBRA was installed using the **liquid-cooled closed-loop configuration** — the highest-efficiency mode, rated for continuous operation at 100% load for up to 90 days.

**The system architecture:**

```
[BASE INTERIOR]                    [CLIFF FACE — EAST]
                                   
Power Plant → Heat Exchanger Core  →  Conduit (buried, 12m)
     ↑               ↓                        ↓
     |         Coolant fluid         49 Port-Exchanger Units
     |         (recycled)            (embedded in cliff face,
     |              ↑                 heights 8m–24m AGL)
     └──────── Cooled return ←──────  ↑
                                   Heat dissipated to ambient
                                   air across rock surface
                                   (distributed, low per-unit
                                    signature)
```

**The principle:** Rather than venting heat at a single point (creating a detectable thermal spike), the system distributes it across 49 exchange ports embedded in the cliff face over a 200-metre section. Each port dissipates a fraction of the total heat load — individually below any sensor threshold, collectively sufficient to cool the entire station.

At full liquid-cooled operation:
- Total heat dissipation capacity: rated for 160% of base load
- Per-port thermal signature: +0.8°C above ambient (undetectable)
- Coolant fluid consumption: 2.3 litres per 24-hour cycle (recyclable — closed loop)
- System efficiency: **baseline 100%**
- TSU-9 thermal spoofing effectiveness: full (orbital thermal sensors show ambient basalt)

This was the plan. It functioned correctly for the first **16 days**.

---

## A.6 — THE THUNDERSTORM PROBLEM

### What Happened on Day 17

On Day 17, the Kethara basin entered its variable monsoon onset — a seasonal shift that occurs every 4–7 local years when the inland sea thermal gradient reaches a tipping point. (See: World Profile, Chapter 1 §1.4 Kethara Basin — Electromagnetic Storm Cycle; Mission Brief Weather Assessment vs. Actual.)

The TSU-9's engineers had not designed for what followed.

### Stage 1: The System Creates Its Own Thunderstorms

The TSU-9's heat dissipation, distributed across 49 cliff-face ports in a river valley at the onset of monsoon season, was sufficient to trigger localised atmospheric instability.

**The mechanism:** The Kethara River basin is a natural thermal chimney. Cool air descends from the plateau to the west, humid air rises from the river delta to the east, and the basalt ridgeline channels both flows. The TSU-9's distributed heat output — invisible to any individual sensor — was collectively enough to seed convective uplift events in an atmosphere already at the tipping point of monsoon onset.

*The system was generating its own thunderstorms.*

The first electrical storm on Day 17 was unusual. The second, on Day 18, was significant. By Day 20, the 48-hour storm cycle was established. Haramoto recognised what was happening on Day 21. She did not share this with the team until Day 23, because she was still hoping she was wrong.

She was not wrong.

### Stage 2: The Storms Reduce Precipitation — Making the Problem Worse

Here the physics became actively perverse.

The thunderstorms generated by the TSU-9's heat output were **electrically intense but precipitation-poor**. The mechanism: the heat uplift seeded the convective cells too early and too aggressively, driving moisture high into the thin upper atmosphere before it could condense into rainfall at useful altitudes. The storms produced lightning, electromagnetic interference, and dramatic atmospheric theatre — but comparatively little actual rain reached the valley floor.

**Net effect on the monsoon:** The TSU-9 was, in effect, stealing precipitation from itself. The monsoon onset that should have brought regular rainfall to the basin was instead producing intense dry-lightning storm cycles. Lakamsal's rain gauge at the geological station read **40% of expected monsoon precipitation** from Day 17 onward.

This matters because the system was **liquid-cooled**. It needed water.

### Stage 3: The Coolant Fluid Degrades

The closed-loop coolant fluid in the TSU-9 is a synthetic thermal transfer compound — TL11, stable under normal conditions for 90+ days of operation. However, the compound degrades when exposed to:

- Extended operating temperatures above 115% of rated load (the electrical interference from the storms was causing node desynchronisation, driving load up)
- Repeated thermal cycling beyond design parameters (the storm-induced atmospheric pressure fluctuations were creating rapid thermal swings in the cliff-face ports)
- Contamination from atmospheric particulates entering through imperfect port seals (Lakamsal's basalt dust is mildly abrasive and chemically reactive with the coolant compound)

By Day 23, the coolant fluid has degraded to **approximately 60% of its rated thermal transfer efficiency**. The fluid is still circulating, but it is no longer adequately transferring heat from the Heat Exchanger Core to the port units. The core is running hot. The ports that still have functional coolant flow are each dissipating more heat than they were designed for — their individual thermal signatures are now above sensor threshold. The system that was invisible is becoming visible.

**This is why the TSU-9 reads 140% load.** It is not simply that demand has exceeded design capacity. The demand is the same. The system's ability to meet that demand has degraded.

---

## A.7 — THE SWITCH TO AIR-COOLED: 90% EFFICIENCY LOSS

When Haramoto diagnosed the coolant degradation on Day 21, she faced a decision.

**Option 1 — Continue liquid-cooled:** The degraded fluid would continue to lose efficiency. Projected timeline to failure: 18–24 hours (Hour 0 of the scenario). Risk: system failure during the Imperial sensor sweep.

**Option 2 — Switch to air-cooled mode:** The TSU-9 has a backup air-cooled configuration. It does not use coolant fluid. It uses the cliff-face ports as direct convection vents — ambient air drawn through the ports by the system's internal fans, passing over the heat exchanger fins, and expelled back through the same ports.

Haramoto switched to air-cooled mode on Day 21.

**The efficiency penalty:**

| Mode | Efficiency | Max Sustained Load | Coolant Required |
|---|---|---|---|
| Liquid-cooled (full fluid) | 100% | 160% base load | Yes — 2.3L/cycle |
| Liquid-cooled (60% fluid) | ~60% | ~95% base load | Yes — degraded |
| **Air-cooled** | **~10%** | **~25% base load** | **No** |

Air cooling is **90% less efficient** than the liquid-cooled design. The physics are straightforward: liquid thermal transfer compounds conduct heat approximately 20–25× more effectively than air at equivalent flow rates. The port units, designed as liquid heat exchangers with large internal surface areas, perform poorly as air convection vents — the geometry is wrong, the airflow is turbulent, and the thin atmosphere of Lakamsal (Code 4) means there is less air mass available per unit volume than on a standard-atmosphere world.

**The result:** The TSU-9 in air-cooled mode can manage approximately **25% of the base's heat load**. The station generates heat at 100% of design load. The system is covering 25% of that, maximum — and degrading further as the node desynchronisation compounds the problem. This is why the thermal spoofing is failing. The system is not broken. It is operating correctly in a mode that is categorically insufficient for its task.

**What Haramoto thinks about this:** She has strong opinions. They are not suitable for a family convention scenario.

---

## A.8 — THE 49 PORTS: ORIGIN AND SIGNIFICANCE

### The Boring Machine

The 49 port-exchanger holes in the east cliff face were not cut by drill, chisel, or laser. They were bored by a **single-purpose pneumatic boring machine** — TL9, industrial grade, brought to the site as part of the BLIND COBRA insertion equipment.

The machine was designed to bore one precise circular channel (22cm diameter, 180cm depth) through basalt at a rate of approximately one port per 90 minutes. It was rated for 60 ports before requiring major service — a number that seemed comfortable for the 49-port design specification.

**What actually happened:**

The Kethara basin basalt is harder than standard survey data indicated. The IISS geological survey rated the formation as "dense basalt, moderate hardness" — the boring machine's feed rate was calculated on this assessment. The actual basalt in the east cliff face contains significantly higher iron-magnetite content (the same content responsible for the EM interference) and is substantially harder than the survey average.

The boring machine completed 49 ports. On the attempt to begin port 50 — which would have been a spare, providing installation margin — the machine's drill assembly seized, the planetary gear system failed catastrophically, and the machine destroyed itself from the inside out over approximately 8 minutes of declining performance and increasing noise.

The team recovered usable parts. The machine itself was ground to scrap.

**49 is not a round number.** The design called for 52 ports (49 primary + 3 spares for contingency replacement). The team got 49. There is no margin. Every port is load-bearing.

### Port Distribution

The 49 ports are distributed across a 200-metre section of the east cliff face:

| Height Zone | Ports | Notes |
|---|---|---|
| 8–12m AGL (Zone A) | 17 ports | Lowest tier — accessible by ladder from ground. Most were serviced in the initial installation without climbing gear. |
| 13–18m AGL (Zone B) | 19 ports | Mid tier — requires rope system or Haramoto's grav belt. These are the ports showing the most coolant degradation (middle of the thermal cycling zone). |
| 19–24m AGL (Zone C) | 13 ports | Upper tier — grav belt required. Exposed position, visible from the delta floor if anyone is looking east. These ports see the highest wind loading during storms. |

**Access during the scenario:** Checking a port requires physical access to the port face. The ports are sealed caps flush with the basalt, 22cm diameter, with a tool-operated quarter-turn release. From the outside, they are nearly invisible unless you know where to look (Recon 10+ to spot without guidance, or Haramoto can lead anyone directly to them).

---

## A.8a — THE HONEYCOMB GRID: WHY THE PORTS DON'T LINE UP

### The Plan vs. The Rock

The boring machine's installation program called for a regular hexagonal-close-packed grid — the most efficient distribution for spreading 52 ports across a fixed surface area, each port equidistant from its six neighbours, rows offset by half a port-width so that every port sits in the gap between the two above it. On paper, on a flat panel, this is a clean honeycomb. SolSec's installation manual shows it that way: a perfect lattice, port spacing 4.2m centre-to-centre, row offset 2.1m.

**The east cliff face is not a flat panel.** It is a weathered basalt escarpment with a gentle outward bow at the centre of the 200m working section — the rock face bulges toward the river by roughly 1.5m at the midpoint compared to its north and south edges, the result of differential erosion over geological time. It also has a slight twist: the face is not plumb-vertical, it leans outward by approximately 4 degrees from true vertical, more pronounced in Zone C (top) than Zone A (bottom), because the lava flow that formed it cooled unevenly.

The boring machine's targeting program corrected for this in real time, using its onboard laser rangefinder to maintain consistent port depth (180cm) and consistent thermal coupling to the interior manifold — but it could not correct the *visible surface pattern*. Each port had to be bored perpendicular to the local rock face at that exact point, not perpendicular to a theoretical flat plane. The result: a grid that is recognisably honeycomb in *intent* — you can see the hexagonal logic if you stand back and squint — but drifts steadily out of true as you move along any row, with row spacing varying between 3.6m and 4.8m depending on local rock curvature, and individual ports nudged up to 40cm off their theoretical grid position to avoid visible fracture lines, embedded boulders, or unstable sections the rangefinder flagged as unsafe to bore.

**What this means in practice:** there is no clean mathematical formula a climber can use to predict where the next port is. Haramoto has a printed reference sheet (recovered from the original installation log) showing actual measured positions for all 49 ports, zone by zone, with height and lateral offset from a fixed reference line at the cave entrance. Anyone without that sheet is working from memory and eyeline.

### Zone Layout — As Actually Built

| Zone | Ports | Row offset (theoretical) | Row offset (actual, measured) | Notes |
|---|---|---|---|---|
| Zone A (8–12m) | 17 | 2.1m, regular | 1.8–2.6m, irregular | Lowest curvature deviation — installed first, rock most stable |
| Zone B (13–18m) | 19 | 2.1m, regular | 1.9–2.9m, irregular | Widest spread — this is the bulge of the cliff face, port density highest |
| Zone C (19–24m) | 13 | 2.1m, regular | 2.3–3.4m, irregular | Most irregular — rock face leaning outward 4°, boring machine working near its mechanical limit before failure |

**The honeycomb pattern is most visible in Zone B**, where the bulge of the cliff face happens to roughly match the curvature the boring program was already compensating for — by coincidence rather than design, the ports here are the closest to the theoretical hex grid. Zone C, bored last, on the section of rock where the machine was beginning to show the wear that would later destroy it (see A.8), is the most irregular — and is also where the boring machine ran out of usable life, which is why Zone C has only 13 ports instead of the planned 17.

---

## A.8b — THE TEMPORARY CLIMBING RIG

### Why It Exists

Servicing 49 ports across three zones, 8 to 24 metres up a sheer basalt face, cannot be done on Haramoto's grav belt alone. The belt has a 4-hour operational window before its power cell needs a recharge cycle (2 hours, station power only), and during the early days of the installation — before BLIND COBRA had confirmed the grav belt's reliability against Lakamsal's intermittent EM interference — Haramoto and the original installation crew rigged a conventional fixed climbing line as backup. It has remained in place for the full 23 days, partly out of habit and partly because it is the only way to service a port if the grav belt's power cell is dead, damaged, or behaving erratically in a storm.

**The rig is TL9 — not exotic technology.** Standard mountaineering hardware, the kind any Scout or Army support unit carries: nothing about it would look out of place to Osei-Bonsu if he saw it from his air/raft. This is deliberate. SolSec's field doctrine prefers equipment that has an innocent explanation if discovered.

### Components

**Anchors and anchor bolts:** 14 expansion bolts (TL8, stainless steel, 12mm shaft, rated to 25kN) are drilled into solid rock at fixed points — one at the base of each belay station (4 stations, see below) and additional single-bolt anchors at 10 points along the traverse line where the route changes direction or crosses between zones. Installing an expansion bolt from scratch requires Mechanic 8+ and 20 minutes per bolt with a hand drill; all 14 were installed during the original setup and do not need to be redone unless damaged.

**Pitons:** 6 piton placements supplement the bolted anchors at points where the rock quality didn't support a drilled bolt — thin cracks, slightly friable sections. Pitons are faster to place (Athletics (strength) 8+, 5 minutes) but rated lower (12kN) and considered semi-permanent — repeated freeze-thaw or vibration can work them loose. Two of the six pitons are flagged on Haramoto's reference sheet as *"check before loading"* — Day 19 note, never followed up on.

**Belay stations:** Four fixed stations running the full height of the face, roughly at the base (0m), the Zone A/B boundary (~12m), the Zone B/C boundary (~18m), and the cliff top (~26m, anchored into solid rock above the formation). Each station is a two-bolt anchor with a steel rappel ring, rated for a two-person working load. A climber or technician can rest, transfer rope systems, or wait out a problem at any of these four points without relying on the grav belt or their own strength.

**The fixed line:** A single 60m static climbing rope (TL8, 11mm kernmantle, rated 22kN) runs the full height of the working section, anchored at the top station and the base station, threaded through intermediate anchor points to keep it close to the rock face rather than swinging free. This is the primary ascent/descent line — a climber clips into it with a mechanical ascender (going up) or a descender device (coming down) rather than free-climbing the face.

**The traverse line:** A separate, shorter line (25m, same spec) runs horizontally at three points — roughly at the mid-height of each zone — clipped to the row of traverse bolts, allowing lateral movement along a zone without disconnecting from the fixed system. This is what lets a technician move from port to port within a zone without re-anchoring each time.

**Carabiners and hardware:** Standard TL8 locking carabiners (12 in the station's kit), a mechanical ascender, a figure-eight descender, a chest harness and seat harness combination (rated TL9, more comfortable than the older TL8 webbing harness it replaced on Day 6 after Mouton's complaints).

### What Has Been Tampered With

Twenty-three days of exposure, weather, and — as established below — megafauna interest in the warm ports has not left the rig untouched.

| Component | Condition | Cause |
|---|---|---|
| Pitons #4 and #5 (Zone B, north section) | Loosened — 60% of rated holding strength remaining | Freeze-thaw cycling during the storm's temperature swings; flagged Day 19, not repaired |
| Traverse bolt, Zone C (port C-6 area) | Bent shaft, 12° off true | A Shield Beetle pressed against the rock near this anchor point approximately Day 15–18 (inferred from scrape marks); the bolt itself was not the target, but the beetle's bulk against the rock face stressed the mounting |
| Belay Station 3 (Zone B/C boundary) rappel ring | Scored and partially worn | Repeated friction from improvised use as a tie-off point during emergency descents; not designed for this load pattern |
| Fixed line, 8m section between Zone A and Zone B | Surface fraying, core intact | Abrasion against a sharp basalt edge that was not present at installation — a small rockfall event (Day 11, unlogged) exposed a new sharp edge the line now runs across |
| Traverse line, Zone A | Clean, full strength | Lowest zone, least exposure, least animal interest |

**The referee's tool here:** any climbing check made using a tampered component should carry a penalty, and any character who inspects the rig before using it (Recon 8+ or Mechanic 6+, 5 minutes) can identify which specific points are compromised before relying on them. A character who does not inspect first is climbing on Haramoto's 23-day-old memory of what was safe on Day 6.

---

## A.8c — CLIMBING MECHANICS

### Base Task

Moving along the fixed line or traverse line to reach a specific port is an **Athletics (dexterity)** check, modified by conditions. This assumes the climber is using the rig as intended — ascender/descender on the fixed line, clipped into the traverse line for lateral movement — not free-climbing.

**Base difficulty: Average (8+)** for straightforward ascent/descent or traverse along intact line.

| Modifier | DM | Notes |
|---|---|---|
| Using intact, inspected hardware | +0 | Baseline |
| Using a tampered/compromised anchor point (unknowingly) | -2 | The system doesn't tell you it's weak until it's tested |
| Using a tampered anchor point (knowingly, taking precautions) | -1 | Reduced by deliberate care — extra checking, slower movement |
| Storm — peak (Hours 4–10, see Appendix G) | -2 | Wind, wet rock, reduced grip |
| Storm — building or clearing | -1 | Partial conditions |
| Carrying the coolant canister or tools (one hand occupied) | -1 | Standard for any port-servicing trip |
| Grav belt assisting (used in parallel with the rig, not instead of) | +2 | The belt takes weight off the rope system, freeing the climber to focus on the work rather than the climb |
| Daylight, clear conditions | +1 | Full visibility of hand and foot positions, anchor points |
| Night, no light source | -2 | Cannot see anchor points or port locations without active light, which itself is a visibility risk |
| Second person belaying/spotting | +1 | Standard climbing-team practice |

**Time:** Moving between adjacent belay stations (roughly one zone's height, ~6m) takes 5–10 minutes under good conditions. Traversing along a zone to reach a specific port from the nearest belay station adds 2–5 minutes depending on how far along the row the target port sits — Zone B's irregular spacing means some ports are a short reach from the traverse line and others require working along nearly the full 19-port row.

**Taking more time:** A climber under no particular time pressure can take the Difficult task and make it Average, or the Average task and make it Easy, by spending double the listed time and working deliberately — checking each placement, resting at each station, moving in smaller increments. This converts a -2 modifier to 0, or a -1 modifier to +1, at the cost of doubled time. This is the standard trade the scenario expects players to make when nothing else is happening — and the standard trade they cannot afford when an Imperial sweep window or a beetle encounter is running concurrently.

**Failure consequences:** A failed Athletics (dexterity) check on the fixed line, while clipped in correctly, does not mean a fall to the ground — the rope system catches it. It means: lost time (the climber must recover position, reset their grip, possibly retreat to the nearest belay station — add 5–10 minutes), and on a bad failure (Effect -3 or worse) a minor injury (1D-3 damage, scrapes and a wrenched shoulder from the arrest) or equipment drop (anything not tethered, including a poorly secured tool, falls — possible port damage if it lands on a cap, see A.11).

**A failed check on a *tampered* anchor point** carries a different risk entirely — see A.8d.

---

## A.8d — WHAT HAPPENS WHEN COMPROMISED HARDWARE FAILS

If a climber's full weight comes onto a tampered component (loosened piton, scored rappel ring, bent traverse bolt) during a fall-arrest or hard load event — typically triggered by a failed climbing check at Effect -3 or worse while using that specific point — roll to determine whether the hardware holds:

| Component | Holds On | Fails On |
|---|---|---|
| Loosened piton (60% strength) | 5–6 (1D) | 1–4 |
| Bent traverse bolt | 4–6 (1D) | 1–3 |
| Scored rappel ring | 5–6 (1D) | 1–4 |
| Frayed line section (core intact) | 4–6 (1D) | 1–3, and even on a hold the line is now visibly more damaged |

**If hardware fails:** the climber drops to the next functional anchor point below them — typically the previous belay station, a fall of anywhere from 2m to 10m depending on position, arrested by the *next* piece of hardware down the line (assuming it's intact). Falling damage is reduced accordingly: roughly 1D per 3m of actual fall before arrest, capped by whatever catches them. A full fixed-line failure (catastrophic, requires multiple compromised points failing in sequence — vanishingly rare, referee discretion only) is the only scenario that produces a fall to the ground from height.

**This is not meant to be a death trap.** The rig is redundant by design — multiple anchor points, a continuous line, belay stations at regular intervals — specifically so that one piece of compromised hardware does not turn into a fatality. It is meant to be a *cost*: lost time, an injury that affects subsequent rolls, a tool dropped near a port. Haramoto's Day 19 note — *"check before loading,"* never followed up on — is exactly the kind of detail that should cost the team something proportionate, not catastrophic, if a player doesn't catch it.

---

## A.8e — THE PORT-CLEANING TOOL

### "The Snake" — Field Designation: Flexible Bore Reamer, TL10

Clearing a blocked or occluded port — whether from mineral buildup, basalt dust, organic residue, or (see A.8f below) the specific aftermath of a Shield Beetle's interest — requires reaching 180cm down a 22cm-diameter channel that the technician's arm cannot follow. The tool for this is a **flexible bore reamer**, field nickname "the Snake": a 2-metre articulated composite shaft, roughly the diameter of a broom handle, with a rotating wire-brush head at the working end and a pistol-grip control handle at the operator's end.

**Operation:** The handle has a trigger-actuated rotation control (variable speed, low torque — designed not to damage the port's internal coil) and a depth gauge along the shaft showing how far the head has travelled into the port. The operator feeds the flexible shaft into the port opening by hand, guiding it around the slight bends where the channel meets the internal coil geometry, while the trigger spins the brush head to clear debris. A small LED at the tip (powered through the shaft) lets the operator see a basic depth/obstruction readout on a thumbnail-sized screen built into the handle — not a camera feed, just a resistance-and-depth indicator that tells you when you've hit something solid versus something that clears.

**Operating it one-handed, while climbing:** This is the genuinely awkward part, and the scenario should treat it as such. The reamer is designed to be operated with both hands — one feeding the flexible shaft, one on the control grip — by a technician standing on solid ground in front of an accessible port. On the cliff face, the technician is clipped into the traverse line, often with one hand needed for balance or position-holding, and the port is at arm's length or slightly above/below comfortable working height depending on exactly where it falls in the irregular grid.

**Mechanics:** Using the reamer while climbing requires **Mechanic 8+** (Average), with the following modifiers:

| Condition | DM |
|---|---|
| Both hands free (braced at a belay station, not actively climbing) | +1 |
| One hand occupied with rope/position management (standard mid-traverse) | -2 |
| Grav belt providing stable hover (hands-free positioning) | +1 |
| Port at awkward height/reach due to grid irregularity (referee call, roughly 1 in 4 ports) | -1 |
| Storm conditions | -1 (additional to climbing penalties) |
| Using the depth gauge readout to guide (vs working blind) | +1 |

**Time:** 5 minutes for a routine clean (matches the port check time in A.9). A failed check means the obstruction isn't cleared — try again, another 5 minutes, or move on and flag the port as still blocked. A bad failure (Effect -3 or worse) means the brush head has jammed in the channel — freeing it takes 10 additional minutes and a successful Mechanic 6+ check, or the technician can disengage the shaft and leave the head in place (the port is now permanently restricted, treat as a damaged port for load purposes, though not destroyed the way a laser hit destroys one).

**Why this matters as a single-operator bottleneck:** the reamer cannot be safely operated by someone who is also actively managing their own climbing safety system without the DM-2 penalty above. This is why port-cleaning runs go faster with a second person — someone braced at the nearest belay station, or Haramoto using the grav belt specifically because it frees both hands. A team trying to clean multiple ports quickly during a narrow weather or safety window will find the one-handed penalty is the single biggest drag on their pace, more than the climbing itself.

---

## A.8f — WHAT IS ATTRACTING THE MEGAFAUNA TO THE CLEANED PORTS

This is the detail that connects the climbing rig, the port-cleaning tool, and the Shield Beetle encounter (Appendix I Addendum) into one causal chain, and it is worth stating plainly for the referee.

**A blocked port is, thermally and chemically, less interesting than a freshly cleaned one.** The mineral deposits, dust, and organic buildup that accumulate in a port over weeks of operation act as insulation — they dampen the heat signature reaching the outer cap and they trap whatever organic-smelling residue has built up inside the channel rather than letting it vent. A port that has not been serviced in three weeks smells, to a Shield Beetle's chemosensory system, like very little. It is just warm rock.

**The moment the reamer clears a port, two things change simultaneously:**

1. **Thermal signature increases.** With the obstruction gone, the port is venting at closer to its designed rate — which, in a system already running in degraded air-cooled mode, means *more* heat reaching the surface, not less. A freshly cleaned port reads measurably warmer than its neighbours for the next several hours, until the surrounding rock and airflow normalise.

2. **Organic volatiles are released.** Three weeks of trapped residue — condensation, mineral off-gassing, and in a few documented cases (Haramoto's maintenance log, Day 14 and Day 19) trace organic compounds from the station's own waste-heat exchange system bleeding into the airflow — gets pushed out through the channel by the reamer's rotation and the resumed airflow. This is a brief, concentrated release: a smell signature that a Shield Beetle's chemosensory range (500m, per Appendix I.1) can pick up far faster and more strongly than the ambient warmth of an unserviced port.

**The practical consequence:** servicing a port — exactly the maintenance work the team needs to do to keep the TSU-9 alive — actively increases the chance of attracting a Shield Beetle to that specific location within the next 1–2 hours. This is not a coincidence the scenario hides from the players if they think to ask Kowalski or Haramoto; it is established field knowledge from the team's 23 days on site. Haramoto's log, Day 14: *"Cleaned three ports in Zone B. Within the hour, motion sensors picked up something investigating the cliff face. Correlation, not yet proven, but I don't love it."*

**Mechanically:** any port-cleaning action (using the reamer per A.8e) should trigger a check on the Shield Beetle attraction table below, rather than relying solely on the general hourly encounter roll:

| Time since port cleaned | Roll (1D) | Beetle investigation triggered on |
|---|---|---|
| Within 30 minutes | 1D | 1–2 |
| 30–90 minutes | 1D | 1 |
| 90+ minutes | — | No additional check — back to ambient hourly rate |

**This stacks with, rather than replaces, the standard encounter table** (Chapter 4, Section 4.5) — it is an additional, localised, time-limited risk specifically tied to the act of cleaning a port, on top of whatever the broader hourly roll produces. A team that cleans four ports in quick succession during one climbing session is meaningfully more likely to draw a beetle than a team that cleans one port and moves on to other work for a while before returning.

---

## A.9 — PORT MAINTENANCE PROCEDURES

### What Needs to Be Done (and Why)

At scenario start (Hour 0), the TSU-9 is running in air-cooled mode at 140% of sustainable air-cooled capacity. Without intervention, it fails completely in approximately **18 hours** — by Hour 18 of an extended scenario or well before extraction in a standard scenario.

The crash site (4km NE) contains the coolant canister from the survey drone — a compatible TL10 thermal fluid, not ideal but functional. Retrieving and refilling the TSU-9 ports with compatible fluid will partially restore liquid-cooled function and buy the team the time they need.

**Why it is not a simple task:**

The ports cannot be refilled from inside the station. The closed-loop conduit fills from the port end, not the core end — the system was designed this way to allow field servicing without breaching the interior installation. Someone must go outside and access each port individually.

### Port Check Procedure (per port)

**Time:** 5 minutes  
**Skill:** Mechanic 6+  
**Tools:** Standard toolkit (no bonus) or Advanced Toolkit (DM+2)  
**Purpose:** Determine whether the port's internal exchanger coil is functional, whether the coolant channel is clear, and whether the port seal is intact

**Results:**

| Effect | Result |
|---|---|
| Failure (Effect -1 or worse) | No useful assessment. The port is either misread or the check takes 10 minutes and yields nothing actionable. |
| Success (Effect 0–1) | Port status known. If it needs fluid, this is confirmed. If the exchanger coil is damaged, this is flagged. |
| Good (Effect 2–3) | Port status known + minor seal issue identified and corrected in the same check (no additional time). |
| Excellent (Effect 4+) | Port status known, seal corrected if needed, and Haramoto gets a DM+1 on the subsequent fluid refill for this port (the check optimised the fill angle). |

**Minimum ports to check:** 6–8 to understand the full system state. Less than 6 and the assessment is incomplete — Haramoto cannot predict which ports most need refilling.

### Port Fluid Refill Procedure (per port)

**Time:** 10 minutes  
**Skill:** Mechanic 8+  
**Tools:** Advanced Toolkit required (DM+2, standard toolkit gives DM-2 — the fill coupling is precision-fit)  
**Consumable:** Coolant fluid from the crash site canister. The canister contains sufficient fluid for **12–15 port refills** at standard dosage.  
**Prerequisite:** The port must have been checked first (or Haramoto must accept DM-1 for blind refilling)

**Results:**

| Effect | Result |
|---|---|
| Failure (Effect -1 or worse) | Overfill — fluid is wasted. This port's fill is lost. Reduce available fills by 2 (one wasted, one consumed). |
| Success (Effect 0–1) | Port refilled. Contributes to TSU-9 load reduction per the table in A.10. |
| Good (Effect 2–3) | Port refilled efficiently. Counts as 1.5 ports for load reduction purposes (the fill optimised this port's exchange rate). |
| Excellent (Effect 4+) | Port refilled with precision. Counts as 2 ports for load reduction. This port is now running at full rated efficiency. |

**Minimum ports to refill:** 3–4 to achieve any meaningful load reduction. Less than 3 refills and the system improvement is below threshold — the TSU-9 load barely moves.

---

## A.10 — ENGINEER EFFECT TABLE: TSU-9 LOAD REDUCTION BY PERCENTAGE

The TSU-9's load is expressed as a percentage of sustainable capacity. At scenario start it reads **140%** — 40% above the point where the system degrades rapidly toward failure.

Each successful intervention (port refill, node resynchronisation, jury-rig) reduces this percentage. The table below tracks cumulative reduction.

**Haramoto's Engineer (electronics) skill modifies the base reduction per action by her Effect:**

> **Base reduction per successful refilled port: 3%**  
> **Modifier: × (1 + [Effect ÷ 5])**, rounded to nearest 0.5%

*Example: Haramoto refills a port, rolls Effect 4. Base 3% × (1 + 4/5) = 3% × 1.8 = 5.4% → 5.5% reduction.*

*Example: Another team member assists (no Engineer skill, Mechanic 2): Effect 0. Base 3% × (1 + 0) = 3% flat.*

### Cumulative Load Table

| Ports Refilled | Approx. Load Reduction | TSU-9 Reading | Status |
|---|---|---|---|
| 0 (base) | — | 140% | CRITICAL — failure in ~18hrs |
| 1 | -3% to -6% (by Effect) | 134–137% | No meaningful change |
| 2 | -6% to -12% | 128–134% | Marginal |
| 3 | -9% to -18% | 122–131% | Minor improvement — failure delayed to ~24hrs |
| 4 | -12% to -22% | 118–128% | Approaching threshold |
| **5** | **-15% to -28%** | **112–125%** | **Beginning to stabilise — failure delayed to ~36hrs** |
| 6 | -18% to -34% | 106–122% | Meaningful stabilisation |
| **7** | **-21% to -40%** | **100–119%** | **Approaching sustainable — extraction window viable** |
| 8 | -24% to -44% | 96–116% | Sustainable if no additional load events |
| 9 | -27% to -48% | 92–113% | Stable under current conditions |
| **10+** | **-30%+ to -55%+** | **85–110%** | **Stable — TSU-9 functioning near design spec for air-cooled mode** |

**Node Resynchronisation Bonus (clearing phase only, Engineer (electronics) 10+):**

During the electromagnetic clearing phase (Hours 10–14), Haramoto can attempt to resynchronise the six desynchronised nodes. This is a separate action — not a port service, but a software/signal operation from the interior console.

| Result | Load Reduction |
|---|---|
| Failure | No change. Nodes remain in open-loop. |
| Success (Effect 0–2) | 2–3 nodes resynchronised. Additional -8% to -12% load reduction. |
| Good (Effect 3–4) | 4–5 nodes resynchronised. Additional -15% to -18% load reduction. |
| Excellent (Effect 5+) | All 6 nodes resynchronised. Additional -22% load reduction. TSU-9 approaches designed air-cooled spec (~25% sustainable capacity). |

**Combined scenario:** If the team retrieves the crash site canister, refills 8+ ports (Haramoto Effect averaging 3), and Haramoto resynchronises the nodes during clearing, the TSU-9 can be brought to approximately **88–95% load** — stable, below failure threshold, and sufficient to maintain thermal spoofing through the extraction window. This is the "good outcome" path for the TSU-9 subplot.

---

## A.11 — PERMANENT PORT DAMAGE: LASER WEAPONS IN THE COOLING HOLES

### The Warning Haramoto Has Not Given Loudly Enough

The 49 ports are the only ports. There are no spares. There is no boring machine. There is no replacement hardware in the station's parts locker. If a port is destroyed, **that port is gone for the remainder of the scenario and cannot be recovered.**

Each destroyed port reduces the TSU-9's maximum sustainable capacity by approximately **2%** (in addition to however much load reduction that port was providing). More significantly: if enough ports are destroyed, the system cannot be brought below the failure threshold regardless of how many refills are completed on the surviving ports.

**The critical threshold:** If 12 or more ports are destroyed, the TSU-9 cannot be stabilised even with full crash-site fluid and perfect node resynchronisation. The system will fail. The station's thermal signature will become detectable. The mission is compromised.

### Why This Might Happen

The scenario creates two situations where team members might fire energy weapons near or through the cooling ports:

**Situation 1 — Shield Beetles on the cliff face**

When Shield Beetles investigate the port area while team members are performing maintenance (see Appendix I and the Herbivore-at-the-Vents encounter), the natural instinct is to fire at the beetles. The beetles are Armour 10 — laser weapons are effective against them (reduces effective armour to 7). A team member on a grav belt or ladder, suddenly confronted by a 400kg beetle at close range on a cliff face, may fire their laser pistol in self-defence.

At close range on a cliff face, missed shots hit the basalt. At close range in a port cluster, a missed shot enters a port opening.

**Situation 2 — Harried perimeter defence, wrong firing angle**

If the team is engaged in perimeter defence on the east side (auto-sentry failure, Tyrant approach, Imperial scout probe), firing lanes from defensive positions may cross the port section of the cliff. At night, during a storm, in poor visibility — the ports are not visible. A plasma burst or laser rifle shot aimed at a threat on the delta floor may clip the cliff face at the wrong angle.

### What Happens When a Laser Shot Enters a Port

The port is a 22cm-diameter, 180cm-deep channel lined with heat exchanger coil — thin-walled copper-composite tubing carrying either coolant fluid (if refilled) or drawing air flow. A laser rifle (5D) or laser pistol (3D) firing down that channel:

1. **Instantly vaporises any coolant fluid in that port's coil** — the superheated coolant becomes steam, which ruptures the coil from the inside. A small, contained internal explosion. Audible as a sharp crack from inside the base.
2. **Fuses the exchanger coil** into a solid mass of melted composite. The port is permanently sealed from the inside — it cannot be cleared, drilled out, or replaced in the field.
3. **The port cap may be blown outward** by the steam pressure — a 22cm metal disc, launched from a cliff face at speeds up to 30m/s. Anyone in the immediate area must roll DEX 8+ or take 1D damage from the ejected cap.
4. **TSU-9 registers the loss immediately** — Haramoto's console shows the affected port going from ONLINE to DEAD in a single cycle.

**Haramoto's reaction:** The first time this happens, she will say something in Japanese that nobody else understands. The second time, she will say it in Standard. The third time, she will stop speaking entirely and fix people with a look that communicates everything necessary.

### Rules for Port Laser Damage

**Accidental port hit check:** Any time a laser weapon is fired in the following circumstances, the referee should roll 1D:

| Circumstance | Port Hit on Roll of: |
|---|---|
| Firing from ground level toward east cliff face, poor visibility (night/storm) | 1 |
| Firing from ladder/grav belt at beetle near port cluster | 1–2 |
| Firing from ladder/grav belt AT a port cluster (beetle inside or adjacent) | 1–3 |
| Player explicitly attempts to fire through a port at something inside | Automatic hit — and roll for steam cap ejection |

**Intentional port fire:** If a player character deliberately fires a laser weapon through a port — perhaps to flush out a beetle that has pushed into the port opening — this automatically destroys the port. There are no exceptions. The physics are not negotiable. Haramoto knows this and will say so, loudly, if she is present. If she is not present, she will find out.

**Plasma weapons and explosive charges:** A plasma rifle or demolition charge detonated near the port section does not merely destroy individual ports. A plasma burst within 5m of the cliff face destroys all ports in a 3m radius (approximately 3–5 ports depending on the cluster density). A demolition charge detonated on the cliff face destroys all 49 ports, the conduit, the Heat Exchanger Core, and portions of the base interior. The TSU-9 — and the mission — is over.

**Gauss rifles and slug weapons:** Do not damage ports. A gauss needle punching through a port cap enters the channel and passes through the coil without enough thermal energy to vaporise the fluid or fuse the metal. The port is mechanically damaged and will leak, but the coil survives. Mechanic 8+ and 20 minutes can seal a gauss-damaged port with improvised materials from the toolkit.

---

## A.12 — SCENARIO INTEGRATION: TSU-9 AS PRESSURE SYSTEM

The TSU-9 situation is designed to create **time pressure, resource pressure, and exposure pressure simultaneously.**

### The Three Pressures

**Time pressure:** At 140% load and failing, the TSU-9 will give out before extraction if ignored. The team cannot simply hunker down and wait — they must act on the TSU-9 problem within the first several hours of the scenario.

**Resource pressure:** The coolant canister is at the crash site, 4km away, in terrain where Stalker packs hunt. The team must send people outside the base — splitting the group, reducing interior defence, and exposing personnel to both megafauna and aerial observation. They cannot have everything at once.

**Exposure pressure:** The people doing the port servicing are on the east cliff face — visible from the air, visible from the delta floor, exposed for 5–10 minutes per port. This is the worst possible place to be when Marchetti-Solis's sweep drones go active, when the Tyrant comes down from the north, or when the Shield Beetles investigate the vent holes.

### The Decision Tree

The TSU-9 subplot drives most of the scenario's key decisions:

```
TSU-9 at 140% → Needs crash site coolant
     ↓
Send team to crash site → Exposes team to Stalker packs
     ↓                 → Splits defensive posture
     ↓                 → Triggers beetle encounter (herbivore/reducer — see Appendix I)?
     ↓
Retrieve canister → Begin port servicing
     ↓
Port servicing on cliff face → Exposure to aerial observation
     ↓                      → Beetle-at-the-vents encounter
     ↓                      → Laser weapon risk to ports
     ↓
Haramoto Effect determines stabilisation level
     ↓
Clearing phase → Node resync opportunity
     ↓
TSU-9 stable enough for extraction window? → Resolution
```

### The Irreversibility Ratchet

Every destroyed port makes the problem harder. Every wasted coolant fill reduces the available fluid. Every hour of delay at 140% load accelerates the degradation curve. The TSU-9 subplot is designed to be a **ratchet** — decisions have permanent consequences, and the team cannot un-ring a bell.

This is intentional. The scenario is about professionals in a failing situation making the best decisions available with imperfect information and limited resources. The TSU-9 is the clearest expression of that theme in mechanical form.

---

## A.13 — REFEREE QUICK-REFERENCE

### TSU-9 Status Track

```
STABLE ←————————————————————————————→ FAILURE
  |     |     |     |     |     |     |     |
 80%   90%  100%  110%  120%  130%  140%  150%+
  ↑                              ↑     ↑
IDEAL                      SCENARIO  FAILURE
TARGET                       START   IMMINENT
```

**Failure triggers at 150%+** — the Heat Exchanger Core overheats and trips its thermal protection shutoff. The TSU-9 goes offline. The base's heat signature immediately becomes detectable by TL10 orbital sensors within one sensor cycle (approximately 4 hours).

### Key Numbers

| Value | Significance |
|---|---|
| 49 | Total ports — no spares, no replacement |
| 140% | TSU-9 load at Hour 0 |
| 150% | Failure threshold |
| 100% | Sustainable air-cooled maximum (theoretical) |
| ~25% | Actual heat load coverage at current air-cooled efficiency |
| 18 hrs | Time to failure without intervention (Hour 18) |
| 12 | Maximum ports destroyed before stabilisation becomes impossible |
| 3% | Base load reduction per successful port refill |
| Effect ÷ 5 | Haramoto's efficiency multiplier on each refill |
| 4km | Distance to crash site coolant canister |
| 12–15 | Port fills available from the crash site canister |

### NPC Knowledge State

| Character | What They Know About the TSU-9 |
|---|---|
| Haramoto | Everything. She has been running this system for 23 days and has been watching it fail for six. She understands the liquid/air cooling history, the storm causation loop, the port limit, and the laser risk. She will share any of this if asked — but she has been managing it quietly because there was nothing the others could do until the crash site canister was an option. |
| Vasiliou | Knows the system is failing and why it matters for mission security. Does not know the engineering specifics. Trusts Haramoto's assessment. |
| Pelczar | Knows the TSU-9 is failing. Doesn't care in the way the others do — her concern is the three decryption passes. Considers the TSU-9 Haramoto's problem. |
| Mouton | Knows it's failing. Understands "thermal signature = detectable = bad." Does not understand anything else about it and doesn't want to. Ready to do whatever physical task Haramoto asks of him. |
| Okonkwo | Has read the technical specifications. Understands the theory. Cannot do the physical repairs (his skills are signals-focused) but can assist Haramoto with the console-side node resynchronisation during clearing. |
