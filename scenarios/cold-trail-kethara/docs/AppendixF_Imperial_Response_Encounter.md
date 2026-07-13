# APPENDIX E — IMPERIAL RESPONSE ENCOUNTER
## Air Forces and Scout Assets Engaging BLIND SERPENT: Play-by-Play

*Cold Trail in Kethara Reach — Referee Reference Document*

---

> *"The Imperium does not send one thing when it can send three."*
> — Vasiliou, Day 23, 0610, personal log

---

## E.1 — OVERVIEW: THREE THREATS, ONE TEAM, NO GOOD OPTIONS

The Imperial response to BLIND SERPENT is not a single event — it is a **cascading escalation** across three distinct threat actors who do not coordinate well and do not share intelligence cleanly. This is the team's primary structural advantage: the Imperial response is bureaucratically fragmented between Scout Service (Osei-Bonsu), Naval Intelligence (Marchetti-Solis), and the Fleet (Ibáñez-Ochoa). None of the three has a complete picture. None reports to the others in real time. Each operates on different timelines, different rules of engagement, and different assumptions about what they are dealing with.

The team that understands this can exploit the seams between the three layers. The team that treats the Imperial response as a monolithic threat will be overwhelmed.

**What BLIND SERPENT has that the Imperials do not:**
- Knowledge of the full situation (the Imperials each know one piece)
- Breckenridge's understanding of Imperial system behaviour
- Pelczar's ability to monitor and interpret Imperial signals traffic
- Okonkwo's drones, which can shadow Imperial assets without engagement
- The storm cycle, which degrades Imperial sensors during peak hours
- The terrain — the megafauna do not distinguish between Solomani agents and Imperial Marines

**What the Imperials have that BLIND SERPENT does not:**
- Numbers (30 Marines vs 5–6 agents)
- Equipment superiority (TL13 vs TL11)
- Orbital assets (*Resolute Purpose*, sensor buoy)
- Legal authority (they are on Imperial soil)
- Time — if the team stalls long enough, Imperial reinforcements compound

---

## E.2 — THE MASTER TIMELINE

The following is the complete escalation sequence from Hour 0 through the 90-minute military response window. The referee should track this in parallel with the main scenario's hour clock.

```
HOUR 0 ────────────────────────────────────────────────────────────────────
│ TSU-9 at 140%. Scenario begins. Storm rising.
│ Marchetti-Solis sweep drones already on pre-programmed sweep.
│ Osei-Bonsu: routine survey operations at downport, 170km NW.
│ Resolute Purpose: standby orbit.

HOUR 4 ──────────────────────────────────────────────────────────────────
│ STORM PEAK. EM interference DM-1 on all sensors both sides.
│ Marchetti-Solis pushes sweep drones to ACTIVE mode.
│ First ECM contest begins. (See E.3)

HOUR 6 ──────────────────────────────────────────────────────────────────
│ If TSU-9 enters Failing status (161%+):
│   → Osei-Bonsu's orbital relay drone auto-alert fires.
│   → He receives alert within 10 minutes.
│   → Begins air/raft preflight. (See E.4)

HOUR 8 ──────────────────────────────────────────────────────────────────
│ If 2 ECM failures logged:
│   → Marchetti-Solis contacts Ibáñez-Ochoa.
│   → She requests Marine standby on 30-minute notice.
│   → She begins descent to Lakamsal aboard her courier vessel.
│
│ Osei-Bonsu (if alerted Hour 6) arrives at base vicinity. (See E.5)

HOUR 10-12 ─────────────────────────────────────────────────────────────
│ Storm clearing. Imperial sensors return to full effectiveness.
│ Marchetti-Solis in-atmosphere. She wants visual confirmation.
│ Osei-Bonsu on site — either deceived or has filed contact report.

HOUR 12-14 ─────────────────────────────────────────────────────────────
│ If Marchetti-Solis has confirmed contact:
│   → Ibáñez-Ochoa activated. (See E.6)
│   → Ship's Boat descends from orbit: 35-minute transit.
│   → G-Carrier deploys: arrives 20 minutes after Ship's Boat.
│   → Marines at KR-7 plateau: Hour 12:35 to Hour 13:00.
│
│ If Marines use infantry approach: 3-hour march to base.
│ If Marines use G-Carrier direct strike: 20 minutes from KR-7.
│ HARD DEADLINE: Hour 15-16 at the latest before Marines at the wire.

HOUR 15-16 ─────────────────────────────────────────────────────────────
│ Marines at base perimeter. (See E.7)
│ SHEPHERD extraction window opens or closes here.
│ Everything after this point is a desperate rearguard.
```

---

## E.3 — PHASE ONE: THE SWEEP DRONES (MARCHETTI-SOLIS)
*Hours 4–10 — The Technical Battle*

### What Is Happening

Marchetti-Solis has deployed **four TL12 survey drones** from her courier vessel in a pattern designed to sweep the Kethara basin quadrant. These are not armed — they are signal analysis platforms, high-sensitivity passive-active hybrid sensor arrays. Each drone covers a 40km search corridor. The basin is 280km from the relay; the four drones working in overlapping pattern cover the basin thoroughly over 8 passes.

**Drone specifications:**

| Stat | Value |
|---|---|
| Type | TL12 signals analysis drone, fixed-wing |
| Speed | 200kph at altitude |
| Range | Unlimited (relay-uplinked to Marchetti-Solis's vessel) |
| Altitude | 2,000–4,000m — above canopy, below storm interference layer |
| Sensors | Active radar + passive signal intercept, Electronics (sensors) 3 equivalent |
| ECM | None — these are not combat drones |
| Armour | 0 |
| Hits | 4 |
| Weapons | None |

**The sweep pattern:** Each drone makes a 60km-radius arc pass through the basin roughly once per hour. At storm peak (Hours 4–10), the EM interference degrades their active sensors by DM-1 but ironically makes their passive intercept more sensitive — they are listening for signal anomalies against the storm noise floor, and a poorly masked emission stands out more in interference, not less.

### The ECM Contest

Each time a sweep drone passes within 80km of BLIND SERPENT, a contested Electronics roll occurs.

**BLIND SERPENT:** Breckenridge (Electronics (comms) 3) + SIGINT suite (DM+2) + storm cover (DM+1 during peak, Hours 4–10) = effective skill 3, DM+3
**Marchetti-Solis drone:** Electronics (sensors) 3 equivalent, storm degradation (DM-1 during peak) = effective skill 3, DM-1

**The contest:** Both sides roll 2D + skill + modifiers. Higher result wins that pass. A tie goes to Breckenridge (ambiguous signal — not a clear enough contact to log).

**Results:**

| Outcome | Effect |
|---|---|
| Breckenridge wins | Pass logged as CLEAR. No accumulated suspicion. |
| Marchetti-Solis wins by 1–3 | Pass logged as ANOMALY — possible natural EM source. 1 suspicion point accumulated. |
| Marchetti-Solis wins by 4+ | Pass logged as PROBABLE SIGNAL SOURCE — active investigation flag. 2 suspicion points. |
| Marchetti-Solis wins two consecutive passes | CONTACT LOGGED. She contacts Ibáñez-Ochoa immediately. |

**Suspicion threshold:** At 3 accumulated suspicion points, Marchetti-Solis requests a closer drone pass — one drone descends to 500m altitude for a detailed sweep. This triggers a Difficult (10+) contest. At 5 suspicion points, she contacts Ibáñez-Ochoa regardless of whether two consecutive passes were won.

**Breckenridge's countermeasures (one-time options):**

| Countermeasure | Skill | Effect | Cost |
|---|---|---|---|
| Array reconfiguration | Engineer (electronics) 10+, 2 hours | DM+2 on all subsequent contests for 6 hours | 2 hours inside, Haramoto needed |
| Frequency spoof | Electronics (comms) 12+, one attempt | On success, negates one pass entirely — drone registers natural EM | One-use, requires the SIGINT suite at full capacity |
| Storm channel exploit | Electronics (comms) 8+, must be done during storm peak | Rides the storm interference as a signal mask — DM+2 on all contests during peak only | Requires Pelczar's cooperation (takes her off decryption for 1 hour) |
| Drone shadow | Okonkwo, Electronics (remote ops) 10+ | Okonkwo's surveillance drone follows a sweep drone, feeding ECM noise into its return signal | Okonkwo cannot do anything else while shadowing; drone at risk if Marchetti-Solis notices the tail |

**What Marchetti-Solis does when she gets a contact:** She does not immediately signal Ibáñez-Ochoa. She goes through procedure. She reviews the data, runs a second analysis, checks Osei-Bonsu's atmospheric sensor records for corroborating data, and files a preliminary contact report. This procedural hesitation takes **1D6 × 10 minutes** — the window Vasiliou identified as Marchetti-Solis's only exploitable flaw.

**During that window:** The team can attempt one additional countermeasure, request Mrazová move SHEPHERD closer to atmosphere for faster extraction, or trigger the emergency uplink early.

---

## E.4 — PHASE TWO: THE SCOUT ARRIVES (OSEI-BONSU)
*Hours 6–10 — The Social Problem*

### The Alert

If the TSU-9 enters Failing status (161%+ load, or if the TSU-9 shuts down entirely), Osei-Bonsu's orbital relay drone automatically logs an anomalous geothermal signature at the cliff-face grid reference and sends an alert to his survey console at the downport. The alert reads:

> *"THERMAL ANOMALY — Grid KR-4418. Duration: ongoing. Signature inconsistent with known volcanic or geothermal profiles. Cross-reference: KR-ALPHA-7 telemetry confirms prolonged site fidelity at same reference for 22+ days. Recommend investigation."*

He reads this, cross-references his megafauna telemetry, notes that his apex predator has been visiting the same cliff face for three weeks, and decides this warrants a look. He files a departure notice with the downport, fuels his air/raft, and launches. Travel time from the downport: **2 hours** at cruising speed.

### The Air/Raft

| Stat | Value |
|---|---|
| Type | TL9 open air/raft, survey configuration |
| Speed | 100kph cruise / 120kph maximum |
| Range | 500km |
| Altitude ceiling | 3,000m |
| Armour | 0 |
| Hits | 8 |
| Weapons | None |
| Sensors | Survey scanner (Electronics (sensors) 3) — thermal, optical, atmospheric analysis |
| Passengers | Osei-Bonsu alone — no escort, no military support |

The air/raft is **not armed**. Osei-Bonsu is a survey scientist, not a soldier. Destroying or disabling his air/raft is not a combat encounter — it is an irreversible escalation that transforms a social problem into a contact report. His vehicle has a transponder broadcasting to the downport survey office. Knocking him out of the sky does not make the problem go away. It makes it dramatically worse within 2 hours when the transponder goes silent.

### The Approach — What He Sees

Osei-Bonsu approaches from the northwest at 800m altitude, following the river valley. At this altitude and speed, the view below him through his survey scanner:

**At 10km out:** He can see the ridge line of the basalt formation rising above the canopy. Normal. He has flown this route twice in the past year on survey passes.

**At 5km out:** His thermal scanner picks up a residual heat signature above ambient at the east cliff face. Faint — the TSU-9 jury-rig is still partially functioning, or the system has just failed and the residual heat is dissipating. He logs it. He keeps flying.

**At 2km out:** His optical sensor resolves the antenna array and the camo netting on the cliff face. He reduces speed. He has been doing this long enough to know that antenna arrays are not geological formations. He circles at 500m altitude.

**At 1km (if not contacted):** He begins a slow circle, methodically scanning. His survey scanner at this altitude and range: Electronics (sensors) 3, Average (8+) check to identify the camo netting as military-grade (not commercial). On success, he will specifically note that in his log — "equipment inconsistent with civilian geological survey." He will not immediately know what it means. He will know it matters.

### First Contact: How He Announces Himself

Osei-Bonsu transmits on the standard IISS survey channel — the channel listed in Lakamsal's public comms directory as the Survey Branch emergency/contact frequency:

> *"Attention at grid KR-4418. This is IISS Survey Coordinator Osei-Bonsu, Lakamsal Station. I am conducting an anomaly investigation in your vicinity. I am requesting visual contact. Please respond on survey channel or on the emergency frequency. This is a routine investigation. Over."*

He transmits three times, two minutes apart. If no response, he descends to 200m for a visual pass. He is not threatening. He is methodical. He will be here until he gets answers or until he files a contact report.

### The Encounter Tracks

**Track A — Deception (The Cover Story):**

Someone responds to his transmission — preferably Vasiliou, Okonkwo (who sounds least military), or whoever has the highest Deception + Persuade available. They explain that they are the Kethara Geological Survey Partners team (the cover company), that the thermal anomaly is a malfunctioning heating element in their survey shelter, and that the antenna array is their communication equipment for the relay station reporting protocol.

*Skill check:* Deception 8+ to establish the cover. Osei-Bonsu contests with Investigate 3 — he is not an easy mark. Apply DM modifiers:

| Factor | DM |
|---|---|
| Team has a visible, coherent geological survey setup (sample boxes, rock cores, field instruments in view) | +1 |
| Camo netting is clearly military-grade (he has already noticed — Hard to unsee) | -1 |
| Auto-sentries visible or active | -2 (immediate failure — sentries are not survey equipment) |
| Someone in combat armour visible | -2 (immediate failure) |
| Breckenridge handles comms (Imperial accent, bureaucratically fluent) | +1 |
| Vasiliou handles comms (convincing authority, Deception 2) | +0 (she's good, but he's experienced) |
| Team can produce cover company registration documents | +1 |

**On deception success:** Osei-Bonsu accepts the story — for now. He logs the contact as "Geological survey team, Kethara Geological Survey Partners, credentials verified verbally. Thermal anomaly explained by equipment malfunction." He delays his contact report by **6–12 hours** while he "confirms through administrative channels." He returns to the downport. The team has bought that window. He will verify the company registration. The company exists — SolSec set it up properly. It will pass basic scrutiny. It will not pass the specific cross-check of "why does a geological survey company have military-grade camo netting and no visible geological survey equipment after 23 days on site" — but that check takes time. Time is what the team needs.

**On deception failure (or Effect -2 or worse):** Osei-Bonsu logs a qualified contact report: "Personnel at KR-4418 unable to provide satisfactory explanation for anomaly. Equipment inconsistent with stated activity. Recommend investigation." He transmits this immediately to the 291st Fleet survey liaison at Banasdan — not to Marchetti-Solis, not to Ibáñez-Ochoa, but to the bureaucratic layer that will eventually route it to both. This adds **4–6 hours** before military response is triggered, but it is triggered. He then does not leave — he circles at a safe distance and watches. He is documenting everything.

**Track B — Disclosure (Partial Truth):**

Vasiliou makes a calculated decision to give Osei-Bonsu a partial truth: government operation, cannot discuss details, please return to the downport and file no report for 48 hours. No explanation, no cover story, but enough implied authority to leverage.

*Skill check:* Persuade 10+ (it is a lot to ask of a civilian). DM+1 if Vasiliou delivers it personally in person (she meets his air/raft); DM+1 if the team's composure under pressure reads as genuine military authority; DM-1 if weapons are visible.

**On persuasion success:** Osei-Bonsu complies — but he is not comfortable. He will return to the downport and file nothing for 48 hours. He will, however, make a personal encrypted note in his private research log: "KR-4418 — government activity, unspecified, requested blackout. Noted for personal record only. Review after 48 hours." If the scenario extends beyond 48 hours, he revisits. If the team is already off-world, this log never becomes relevant. If they are not — it does.

**On persuasion failure:** He nods, agrees, and files the contact report from his air/raft before he is 5km away. He is not a confrontational man — he will not argue with armed people. He will also not break his professional duty. The report goes through the bureaucratic channel: 4–6 hours to military response.

**Track C — His Secret Sympathy (Roleplay Opportunity):**

If the team is in genuine visible distress — TSU-9 has failed, the Tyrant has been at the perimeter, the team looks like survivors rather than a crisp intelligence cell — Osei-Bonsu's complicated feelings about the border become relevant. His mother was Solomani-born. He has complicated feelings about what the Rim War took from people like her.

He will not help SolSec. He will help people who remind him of his mother's stories about civilians caught between governments.

*Triggered by:* Kowalski showing injuries, someone asking about his megafauna tags with genuine knowledge (she is the scientist most likely to engage him on his own territory), visible exhaustion on the team (Vasiliou's face alone may trigger it), or any reference to how long they have been surviving out here without resupply.

*Roleplay check:* No specific skill target — referee discretion. If the team engages him authentically as human beings rather than as an obstacle, he delays his report for 12–24 hours with no skill check required. He says: *"I need to do a full atmospheric survey of the basin before I file anything. That takes time. I do things carefully."* He looks at Vasiliou's eyes — the discolouration, the exhaustion — and does not ask what he already knows.

He says nothing else about it. He turns his air/raft north and flies home slowly.

### What He Does If He Sees the Tyrant

If the Kethara Tyrant (KR-ALPHA-7) is visible from his air/raft during his approach — near the perimeter, near the team, or visibly responding to something at the cliff face — Osei-Bonsu's priorities shift. He will forget about the survey anomaly for approximately 15 minutes while he obsessively records the apex predator's behaviour from altitude. He has been studying this animal for three years. He is professionally incapable of ignoring it.

This is a window. The referee should use it. If the team is in the middle of the Tyrant encounter when Osei-Bonsu arrives, his distraction is the gift that lets them survive the intersection of two simultaneous crises.

After his 15-minute observation window, he will return to the anomaly with a new datapoint: *"KR-ALPHA-7 is behaving as if there is a persistent heat source at the cliff face. This is consistent with the thermal anomaly I was sent to investigate. This is also consistent with 22 days of the animal returning to this specific location."* He now has more questions, not fewer.

---

## E.5 — PHASE TWO EXTENDED: MARCHETTI-SOLIS DESCENDS
*Hours 8–12 — The Intelligence Threat Arrives in-Atmosphere*

### Her Approach

After logging a qualified contact, Marchetti-Solis does not immediately call in the Marines. She descends to Lakamsal's atmosphere in her personal courier vessel — a compact TL12 courier, not a warship — and takes a position 50km north of the Kethara basin at altitude. From here, she coordinates her sweep drones in a tighter pattern and begins active signals analysis of the basin below.

She is looking for patterns, not just signals. She wants to understand what is down there before she sends in thirty Marines. She is thorough. She is slow. She is the most dangerous person in this scenario because she is the one most likely to correctly identify what BLIND SERPENT actually is.

**What her closer position gives her:**
- All four sweep drones can now be coordinated from 50km instead of 280km — effective pass frequency doubles (one pass every 30 minutes instead of every hour)
- She can attempt direct signal analysis of the basin without relay lag — Electronics (comms) 3, INT +2, DM+2 from personal signal tablet = effective 8 on any given check
- She receives Osei-Bonsu's contact report in real time if he files it

**What her closer position costs her:**
- She is now visible on *Resolute Purpose*'s sensors as an in-atmosphere contact — Ibáñez-Ochoa notes her position and becomes more alert
- She is in the EM interference layer during storm peak — her signal analysis is degraded DM-1
- She is one person in a courier vessel with two security escorts. She is not a military response; she is a intelligence gathering platform.

### Marchetti-Solis's Signal Fingerprint Search

This is the most dangerous thing she does and the one the team can least counter: she begins analysing the ECM anomalies from the basin for **signals signatures** — the individual fingerprints of how specific transmitters and operators structure their bursts.

She has twelve years of signal intelligence files. She is looking for a match.

**The Breckenridge risk:** After 30 minutes of analysis (Electronics (comms) 10+, she is making this at skill 3 + INT DM +2 + tablet DM+2 = 7, rolling against 10+ = needs a 3+ on 2D, likely success with time), she finds a partial match. The burst structure from the basin has a timing signature consistent with a burned Imperial asset she processed twelve years ago. She pulls the file. She reads: *"Patrent, Solomani ancestry, signals specialist. Managed asset, burned after 3 months, assessed low-value, closed."*

She does not immediately know what to do with this. She sits with it for 1D6 × 5 minutes — her processing hesitation. Then she signals Ibáñez-Ochoa: *"I may have an identification on at least one asset. Former Imperial-handled contact. Proceeding to confirm. Stand by."*

**What this means for the team:** If Breckenridge becomes aware that Marchetti-Solis may have his signals fingerprint (Electronics (comms) 10+ to detect her analysis sweep — she is not hiding it, she did not expect anyone down there to be watching for it), he faces a choice: go dark entirely (stop all transmissions, which makes coordinating with Okonkwo and Vasiliou harder) or attempt to spoof his own signature (Deception 10+ on Electronics (comms), represents him actively structuring his bursts to not sound like himself — an extraordinary act of technical self-concealment). He has twelve years of practice hiding from Imperial systems. He knows exactly what she is looking for. He is the only person on the team who does.

If Breckenridge tells Vasiliou why he knows what she is looking for — this is the moment.

### Marchetti-Solis's Courier Vessel — *NIS Haverford*

| Stat | Value |
|---|---|
| Type | TL12 Naval Intelligence courier, modified Type S |
| Hull | 100 tons, streamlined |
| Speed | Thrust 3 |
| Armour | Crystaliron 4 |
| Weapons | Double turret (pulse lasers) |
| Sensors | TL12 Military Grade + signal analysis suite |
| Crew | Marchetti-Solis + 2 NI security escorts + autopilot |
| Special | Active signal intercept array — DM+2 Electronics (comms), covers 200km radius |

**This vessel is not a threat to SHEPHERD** unless Marchetti-Solis detects SHEPHERD's descent corridor. If she does, she can query SHEPHERD's transponder — *Persistent Venture* will respond correctly to a TL10 query. A TL12 dedicated sensor analysis could crack the spoof in 4 hours. She does not have 4 hours to dedicate to it mid-operation — but this becomes critical if the extraction is delayed beyond the 48-hour window.

---

## E.6 — PHASE THREE: IBÁÑEZ-OCHOA IS ACTIVATED
*The Military Deadline*

### The Activation Signal

Marchetti-Solis sends the activation signal when she has **confirmed contact** — defined as two ECM log entries of PROBABLE SIGNAL SOURCE or one CONTACT LOGGED result combined with Osei-Bonsu's contact report.

The signal is a 12-character burst on the Imperial Navy encrypted command channel. Ibáñez-Ochoa receives it on the bridge of *Resolute Purpose* within 3 seconds of transmission.

He opens his sealed orders. He reads them twice. He calls Lieutenant Voss.

**From this moment: 90 minutes to Marines at the KR-7 plateau. 55 minutes if he uses the G-carrier direct.**

### Ibáñez-Ochoa's Decision: Infantry or G-Carrier?

This is the referee's most consequential single decision in the Imperial response section. It is determined by what intelligence Marchetti-Solis has provided.

| Intelligence Quality | Ibáñez-Ochoa's Choice | Time to Base |
|---|---|---|
| Grid reference only — no asset count, no layout | Infantry approach from KR-7 | 3 hours on foot from KR-7 (Hour 15+) |
| Partial — knows there are personnel, no layout | Mixed: Ship's Boat to KR-7, G-carrier follows | Infantry 3 hours; G-carrier 20 min from KR-7 after boat arrives (Hour 13:20) |
| Full — confirmed military installation, known layout | G-carrier direct strike to river bank approach | 55 minutes from activation (Hour 13:00 approx) |
| Full + knows team has drones | G-carrier high approach, Marines rappel | 65 minutes (avoids drone engagement range) |

**How to determine intelligence quality:**
- Osei-Bonsu filed a contact report: +1 to intelligence quality (confirms personnel)
- Marchetti-Solis has Breckenridge's fingerprint: +1 (confirms professional intelligence operators)
- Okonkwo's drones have been observed shadowing sweep drones: +1 (confirms operational drone assets)
- Osei-Bonsu's three-week telemetry data cross-referenced: +1 (confirms prolonged installation, suggests fixed base)

*If total +modifiers reach 3 or higher: Ibáñez-Ochoa has full intelligence — he uses the G-carrier. The team has 55 minutes.*

### The Descent Sequence

**Ship's Boat:**
- Departs *Resolute Purpose*: Hour X (activation)
- Atmospheric entry: Hour X + 15 minutes
- KR-7 landing: Hour X + 35 minutes
- Marines (15 troopers, Fire Team Leader Kovač) deploy from KR-7
- If infantry approach: arrive at base perimeter Hour X + 3:35
- If waiting for G-carrier: board G-carrier at KR-7

**G-Carrier (if deployed):**
- Departs *Resolute Purpose*: Hour X + 15 minutes (after Ship's Boat is clear)
- Follows valley floor at 50m altitude, 300kph
- KR-7 arrival: Hour X + 45 minutes (if going to KR-7) OR
- Direct to river bank: Hour X + 55 minutes
- Carries Lt. Voss + 8 Marines

**What BLIND SERPENT sees and hears:**

At Hour X + 10 minutes: Okonkwo's fixed-wing surveillance drone, if operational above the canopy, detects the Ship's Boat's atmospheric entry heat signature at extreme range. It looks like a meteor trail briefly, then doesn't. He will know. *"Vasiliou. We have an entry burn. North, coming down fast."*

At Hour X + 30 minutes: The G-carrier's passage through the valley at low altitude is **loud** — grav drive at high output, 300kph, 50m above the river. The megaflora canopy at 60m means it is invisible from ground level until it is directly overhead, but it sounds like a sustained thunder that moves. Every animal in a 5km radius reacts. The Tyrant, if present, will redirect toward the noise.

At Hour X + 55 minutes (G-carrier direct): The G-carrier sweeps up the river, clears the last bend, and the team sees it: a matte-grey armoured vehicle the size of a bus, running lights off, turret tracking. It settles onto the river bank 200m from the cave entrance. Eight Marines in TL13 armour step off the ramp. Lt. Voss is first out.

---

## E.7 — PHASE FOUR: MARINES AT THE WIRE
*The Hard Deadline Encounter*

### What the Marines Know When They Arrive

| Fact | Known? | Source |
|---|---|---|
| There is a fixed installation at the cliff face | Yes | Osei-Bonsu + sweep drone data |
| The installation has drone assets | Probably (if Okonkwo shadowed their drones) | Marchetti-Solis analysis |
| Number of personnel | Unknown | No ground confirmation |
| Layout of the base | Unknown | No ground-level reconnaissance |
| Whether personnel are still present | Unknown | No visual confirmation since Osei-Bonsu's pass |
| Whether the Tyrant is present | Unknown | Nobody told them about the three-week telemetry |

**The megafauna gap is critical.** Voss has read Osei-Bonsu's survey notes. She has briefed her Marines: *"Large fauna, apex predators, do not engage unless directly threatened."* She has not briefed them on the specific size, armour value, or territorial behaviour of the Kethara Tyrant because Osei-Bonsu's briefing note did not include those details — it mentioned large fauna in the basin without specifics.

If the Tyrant is present when the Marines arrive, their first interaction with the Kethara Reach is a 15-tonne predator that their TL13 gauss rifles can damage but cannot guarantee to stop before it kills someone. Voss's briefing breaks down within 30 seconds of first contact.

### The Approach to the Base

Voss does not rush her Marines into an unknown installation. She is professional and she has read her casualty reports. Her approach:

**Step 1 — Perimeter observation (10 minutes):** Three Marines with sensor equipment establish a 300m observation arc. They are looking for: motion, heat signatures, drone activity, weapons emplacements, the base entrance. The camouflage netting is Military DM to spot (Recon 10+ to identify the entrance in the overhang at 300m). Two of her sensor Marines roll Electronics (sensors) 2 — one succeeds (the netting is identified as deliberate concealment); one fails (records it as natural rock shadow).

**Step 2 — Drone deployment (5 minutes):** Voss has one TL13 military scout drone — compact, near-silent, thermal-capable. She deploys it for a close pass of the cliff face at 50m altitude. The drone will see: the antenna array, the perimeter wire, the auto-sentries (if armed and active). This is an automatic contact confirmation.

*Counter-option for the team:* Okonkwo can attempt to jam the Marine scout drone with his own equipment — Electronics (remote ops) 10+ contest. On success, the drone returns corrupted data and Voss loses 10 minutes resetting it. On failure, Okonkwo's interference attempt is itself logged as active electronic countermeasures — confirming trained operator presence.

**Step 3 — Loudspeaker challenge (mandatory):** Before any approach, Voss issues a verbal challenge over an open audio channel and via loudspeaker from the G-carrier. Imperial military law requires this for minimum force compliance. She will do it regardless of whether she thinks anyone is listening.

> *"Attention installation at grid KR-4418. This is Lieutenant Anya Voss, 291st Fleet Marine Detachment, IMS* Resolute Purpose*. You are located in a restricted military investigation zone by order of Commander Ibáñez-Ochoa, 291st Fleet. Surrender your weapons, exit the installation with your hands visible, and identify yourselves. You have five minutes to comply before we enter. This is your only warning."*

She means it. She will enter after five minutes whether or not anyone comes out. But she will wait the five minutes.

**What the team can do in those five minutes:**
- Complete the data uplink (if Pelczar is 30 seconds from finishing — a desperate race)
- Trigger the emergency extraction request to SHEPHERD
- Destroy all classified material (Vasiliou's standing order)
- Attempt to negotiate (see E.8)
- Run — west side of the formation, through the tunnel if discovered, into the jungle

### If the Marines Enter

Voss's entry procedure is fire-team coordinated:
- Fire Team Alpha (4 Marines): cave entrance approach, low left
- Fire Team Bravo (4 Marines): cover the east cliff face, catch anyone climbing down
- Fire Team Charlie (4 Marines): hold the river bank approach, no escape by water
- Voss + 2 bodyguards: follow Alpha in, command element
- Remaining Marines: G-carrier perimeter, hold the outer arc

**Interior engagement:** The cave entrance throat is 3m × 2.5m — two Marines abreast, maximum. This is the team's one defensive advantage. Voss knows this — she will not rush it. She will:
1. Throw a flashbang (stun grenade — 3D stun, Electronics (sensors) check 8+ to protect equipment, deaf for 2 rounds without ear protection)
2. Wait 10 seconds
3. Enter with Alpha in a stacked formation

Against TL13 armour (+13 Protection), the team's gauss rifles are borderline effective (AP5 vs Protection 13 = net protection 8 — gauss does 3D vs effective 8, manageable but not decisive). A direct firefight inside the cave is a losing proposition for BLIND SERPENT. Mouton knows this. Vasiliou knows this. The question is whether there is anything left worth fighting for by this point — or whether the data is already gone and the team's only objective is to not die on Imperial soil.

---

## E.8 — NEGOTIATION AND SURRENDER OPTIONS

The team is not obligated to fight. Imperial military law provides specific procedures for this situation, and Ibáñez-Ochoa's orders explicitly specify **minimum force** and **take prisoners**.

### The Surrender Window

If BLIND SERPENT transmits a surrender on open channels before Marines breach the entrance, Voss is legally required to halt her advance and acknowledge. Her loudspeaker challenge is the opening of this window. The team has until the Marines breach to use it.

**What surrender means:**
- All personnel detained under Imperial military custody
- All equipment confiscated and sealed pending NI debriefing team (72 hours)
- Cover identities (geological survey) will be tested — they will hold for 48–72 hours under standard processing before the inconsistencies begin to surface
- Pelczar's data cores: DC-1 and DC-2 will be found in initial search (vest pocket check). DC-3 — the hidden core — depends on whether Pelczar declares it. She will not. It is on her person, not declared on a manifest. The NI debriefing team will eventually find it (Investigate 12+ systematic body search during processing — standard procedure for captured intelligence assets).

**The deception window in custody:**

The geological survey cover holds for a finite time. 48 hours before inconsistencies appear at standard processing. 72 hours before an experienced NI officer with access to Confederation databases finds the anomalies. 96 hours before the Confederation cover company's registration trails lead back to Alpha Crucis registry patterns consistent with SolSec shell companies.

If extraction comes within 48 hours of capture — a SHEPHERD manoeuvre, a diplomatic intervention, a "the Confederation does not acknowledge these individuals but here is their actual legal status" back-channel — the team potentially survives with cover intact. This is a scenario extension, not a guaranteed outcome. The referee should determine whether SHEPHERD can execute a rescue approach given *Resolute Purpose*'s orbital position.

**What Ibáñez-Ochoa does with prisoners:** Correctly, professionally, by the book. He will not mistreat them. He will not make informal deals. He will deliver them to the NI debriefing team in 72 hours and file his after-action report. The diplomatic fallout from five SolSec agents captured on Imperial soil — with partial decryption of Imperial court traffic on one of them — is a problem for governments, not for him. He is aware of this. He finds it, privately, unsettling in ways he does not fully articulate.

### The Negotiation Gambit

If Vasiliou attempts to negotiate terms rather than surrender outright, Voss will hear her out — she has five minutes. Voss is not empowered to make deals. But Ibáñez-Ochoa, relaying through Voss's comms, technically is — within the limits of minimum force compliance.

*Vasiliou's strongest argument:*

> *"Commander, your sealed orders say minimum force and take prisoners. We are five people, two of them non-combat. We are not fighting you. We are asking for 90 minutes to complete a technical procedure that has nothing to do with your installation or your personnel. After 90 minutes we will surrender voluntarily and you can file your report. The diplomatic consequences of what is on our equipment are above your pay grade and mine both. Give us 90 minutes and we all go home cleaner."*

*Ibáñez-Ochoa's calculation:* He has his orders. He also has 23 years of naval experience telling him that an intelligence operation that has been running for 23 days on his doorstep, producing data that his NI officer is clearly very interested in, is not something he wants compromised by a rushed entry under fire. The "90 minutes for voluntary surrender" offer is not something he is authorised to grant — but it is the kind of request a thoughtful senior officer might decide to "acknowledge receipt of" while Voss continues her approach at a slower pace.

*Skill check:* Persuade 12+ (Vasiliou, full name, directly to Ibáñez-Ochoa's channel — she must have cracked the ship's encrypted channel for this, Breckenridge Electronics (comms) 10+ to access it). On success: Ibáñez-Ochoa slows the approach by 45 minutes. He does not stop it. He buys her half of what she asked for. On failure: Voss's Marines enter on the five-minute schedule.

**The one thing Vasiliou cannot say:** She cannot identify herself or BLIND SERPENT as SolSec. The moment she does, the geological survey cover collapses for everyone — including Breckenridge, whose plan to stay behind as a crash-ship survivor requires the cover to be intact. She knows this. She is asking for time without explaining why. Ibáñez-Ochoa, who has been in the Navy for 23 years, understands exactly what she is doing and why. He respects it in the abstract. He still has his orders.

---

## E.9 — THE MEGAFAUNA WILDCARD

The Kethara Reach megafauna do not know or care about the difference between SolSec agents and Imperial Marines. They respond to noise, heat, movement, and threat displays — and a G-carrier at 300kph through the valley is the single largest noise event the Kethara basin has experienced in years.

### The Tyrant's Response to the G-Carrier

The Kethara Tyrant's territorial range encompasses the river bend at BLIND SERPENT's position. A large, loud object moving through that territory at high speed is a territorial challenge — or it is prey. The Tyrant does not distinguish between the two until it is close enough to smell.

**If the Tyrant is active near the base when the G-carrier arrives:**

Roll 1D:
- 1–2: The noise drives the Tyrant away — it retreats north, into the jungle. The Marines get a clear approach.
- 3–4: The Tyrant ignores the G-carrier (the noise is large and fast — it departs before the Tyrant can react) but redirects toward the Marines' infantry approach from KR-7, which is slower, quieter, and more persistent. Voss's infanty column encounters the Tyrant in the jungle.
- 5–6: The Tyrant treats the G-carrier as a territorial competitor and moves toward it. It arrives at the river bank as the Marines are deploying. First contact: 8 TL13 Marines with gauss rifles vs a 15-tonne predator with Armour 5 and 60 hits.

**The Marines vs the Tyrant:**

This is not a contest BLIND SERPENT is directly involved in — but it is 15–20 minutes during which the Marines are not advancing on the base. Every round the Tyrant holds the Marines' attention is a round the team has to finish the uplink, destroy classified material, reach the tunnel, or trigger SHEPHERD's emergency descent.

Voss's instructions were "do not engage fauna unless directly threatened." The Tyrant removes that choice within approximately 8 seconds of arrival. She will order fire. Her Marines will engage. Gauss rifles at AP5 vs Armour 5 = effective AP, doing 3D damage against 60 hits. Multiple Marines firing simultaneously will bring it down — eventually. Before it does, one or more Marines may take 5D bite damage against TL13 armour (net protection 8, still an average of 9.5 damage per bite — not lethal through TL13, but not comfortable).

**What Kowalski knows about this situation:** If she is monitoring the Marines' approach on the perimeter sensors, she will see the G-carrier's arrival and the Tyrant's response from the thermal overlay. She can predict whether the Tyrant will engage (Science (biology) 8+ — she has 23 days of its behaviour data). If she succeeds, she can tell the team whether to expect a 15-minute delay or a 2-minute delay before the Marines are free to advance.

She can also — theoretically — use a dose of chemical deterrent to redirect the Tyrant toward the Marines' approach vector rather than away from it. This is not a thing she will suggest. It is a thing the referee should note that the rules permit, and that Vasiliou, if she thought of it, would not order.

---

## E.10 — REFEREE MASTER TABLE: IMPERIAL RESPONSE STATES

| Phase | Active Assets | BLIND SERPENT Response | Key Skill |
|---|---|---|---|
| Pre-activation (Hours 0–6) | Marchetti-Solis sweep drones | ECM management | Electronics (comms) contest |
| Osei-Bonsu in-atmosphere (Hours 6–10) | Air/raft + survey scanner | Social management | Deception or Persuade |
| Marchetti-Solis in-atmosphere (Hours 8–12) | Courier vessel + 4 drones + active analysis | Signals masking + Breckenridge decision | Electronics (comms) 10+ to detect fingerprint scan |
| Ibáñez-Ochoa activated | Ship's Boat + G-carrier + 30 Marines | Extract or negotiate or fight | Pilot (spacecraft) if SHEPHERD involved; Persuade 12+ for negotiation |
| Marines at perimeter | Full Marine detachment, Voss commanding | Last options: surrender, run, or data destruction | All skills; Vasiliou's judgment |
| Tyrant vs Marines | Megafauna wildcard | Monitor and exploit delay | Science (biology) to predict; Kowalski's call |

### The Seam the Team Must Exploit

The Imperial response has one systematic weakness: **it moves in sequence, not in parallel**, because each layer reports up to the next rather than laterally to peers. Marchetti-Solis does not share her signals analysis with Osei-Bonsu. Osei-Bonsu does not report directly to Ibáñez-Ochoa. Ibáñez-Ochoa does not know what is on DC-3.

The team that forces each layer to move to the *next* layer's problem — while solving the *current* layer's problem just enough to prevent escalation — wins. The team that treats this as a siege to be defended will lose. This is an intelligence operation. The exit is through the seams.

---

*Appendix E — Imperial Response Encounter*
*Cold Trail in Kethara Reach — Referee Document*
*Mongoose Traveller 2nd Edition — Imperial Year 1117*
