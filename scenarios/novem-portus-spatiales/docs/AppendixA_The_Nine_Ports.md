# TRAVELLER: NOVEM PORTUS SPATIALES
## Appendix A — The Nine Ports (Puzzle & Handout)

---

## A.1 — WHAT THE PORTS ARE

**A note on the word.** Torvald called the nine pieces *portus*: openings through which a signal passes. In this document a capital-P **Port** always means one of the nine pieces of the build. A starport is always "starport", "the station" or "the field" where confusion is possible.

**Forks and the Big Splash.** Since 1094 the Torvald Builds have been copied, adapted and experimented on across hundreds of systems, and thousands of forks now circulate. Almost nobody could work out what the code was for, so most forks were cut down into rudimentary programs that do what their splash screens suggest and nothing more. A handful of senior developers know that one fork is different: the original nine Ports that Torvald seeded herself. They call it **the Big Splash**. Most developers who hear the name take it for a joke about the splash-screen revival. It is a warning about what happens when all nine are run together.

The three copies in the Pankow system are the Big Splash. Each is nine Ports, I to IX, and each Port is one of two kinds:

- **T (Torvald):** her own careful imitation. Works as ordinary code. Does nothing.
- **N (native):** a transcription of the Lattice's own signal. Structured like nothing a person would write.

**Ref hash IDs.** Every Port header carries a ref hash ID identifying its author. The developer registry attributes all of them to Torvald, under three identities: one recorded as male, one as female, and one with no gender recorded at all, flagged as unspecified. Developers assume one woman used three accounts.

- The **male and female identities** are Torvald's own. She used both on her imitation (T) Ports, so the scattered copies would look like the work of unconnected authors.
- The **neuter identity** is on every native (N) Port. It is not Torvald. It is the Lattice, which signed in her name because hers was the only name it had been given.
- The **forged Port IX** in the Baltic build carries the neuter ref hash, copied by Torvald onto her own code.

**Splash screens.** The 1090s brought a fashion in application design for splash screens: almost every program, even a command-line one, opens with a drawing. Nobody in 1116 finds it odd that each Port draws one when it runs. Torvald drew them all as mnemonics. The images differ slightly between the T and N versions of the same Port: a door open in one and bricked up in the other, a key held in the left hand or the right.

---

## A.2 — REFEREE MASTER GRID

| Port | Torvald's name | Image | Baltic build | Kell build | Tessel build |
|---|---|---|---|---|---|
| I | Listen | A figure with a finger to its lips | **N** | T | T |
| II | Carrier | A walker on a road with no end | T | **N** | T |
| III | Key | A hand holding a key | T | T | **N** |
| IV | Door | A seated figure before a door | **N** | T | T |
| V | Turn | A wheel with nine spokes | T | **N** | T |
| VI | Weigh | A balance with one empty pan | T | T | **N** |
| VII | Yield | Two figures at a table | T | **N** | T |
| VIII | Witness | An open eye over a plain | T | T | **N** |
| IX | Name | A tower under two moons | **F** | T | T |

**F** is the forgery: Torvald's imitation, dressed to pass as native. The true IX is the crystal in the sealed room on Schaut (Chapter 6, §6.6).

---

## A.3 — CHECKS

| Task | Check |
|---|---|
| Read a build's nine ref hash IDs, and see that three carry the neuter identity | Average (8+) Electronics (computers) (1D hours, EDU) |
| Recognise a copy as the Big Splash, not one of the thousands of junk forks | Average (8+) Electronics (computers) (1D hours, EDU); DM+2 for Corr, who has appraised a dozen junk forks |
| Show that the neuter Ports are not written the way a person writes code | Difficult (10+) Electronics (computers) (1D hours, INT) |
| Compare two builds once the method is known | Average (8+) Electronics (computers) (1D hours, INT) |
| Recognise N Ports as a recorded signal | Average (8+) Science (cybernetics) or Science (xenology) (EDU) |
| Spot that Baltic IX is forged, from the code alone | Formidable (14+) Electronics (computers) (1D hours, INT) |
| Spot it with all three grids completed | Difficult (10+): IX is the only N Port whose image is *identical* to the T versions |
| Spot it after reading Kesh's page | Automatic: "I have kept the ninth to myself" |

**Helping:** one assistant with the relevant skill at 1 or better gives DM+1 (task chains, CR22:63).

---

## A.4 — PLAYER HANDOUT

Print one copy. Players mark each cell **T**, **N** or **?** as they examine each build.

| Port | Image seen | Baltic | Kell | Tessel |
|---|---|---|---|---|
| I | | | | |
| II | | | | |
| III | | | | |
| IV | | | | |
| V | | | | |
| VI | | | | |
| VII | | | | |
| VIII | | | | |
| IX | | | | |

---

## A.5 — WHAT EACH PORT SAYS

For when the players ask, or when the Lattice speaks.

| Port | Meaning in the handshake |
|---|---|
| I | *I am quiet. I am listening.* |
| II | *This is the wave I will speak on.* |
| III | *This is how to read me.* |
| IV | *I am open to you.* |
| V | *It is your turn.* |
| VI | *This is how much of me there is.* |
| VII | *I give way. You give way.* |
| VIII | *I see you. Say that you see me.* |
| IX | *This is who is speaking.* |

---

## A.6 — WHY THE PORTS CANNOT SIMPLY BE DEBUGGED

The obvious question at the table is why nobody has just stepped through the code to see what the other Ports do. The answer is that the Big Splash was never meant to run one Port at a time.

- **Parallel by design.** The nine Ports are built to run in parallel, at near simultaneity, on a special substrate: the Schaut-grade cores each build lives on. Run alone, or in sequence, a Port degrades into the rudimentary program its splash screen suggests. That is how the thousands of junk forks were born.
- **No ordinary data structures.** The native Ports do not keep data in linear arrays, vectors or trees. Their data is organised like a fibrous, neural, almost fungal community: strands that branch, share load and reroute around anything removed.
- **The cascade.** When two or more native Ports run together, each changes how the others behave, and those changes feed back again. Developers who have seen it call it a multi-experience cascade. No two simulated runs give the same result, so the only way to know what nine Ports do together is to run all nine at once.

**At the table:** if a player tries to debug a Port in isolation, let them make the attempt (**Average (8+) Electronics (computers) check, 1D hours, INT**). Success shows the Port quietly rebuilding itself into something simpler as it runs. Failure gives them a working, boring program and the belief that they have understood it. Either way, the Port gives up nothing useful alone.

---

## A.7 — QUANTUM STATES, OR ALIVE?

Once the players understand that the Ports only work together, someone will ask what kind of system behaves like that. There are two serious answers in the 1116 literature, and the players can test both:

- **Quantum computing states.** The cascade is entanglement between Ports, and the substrate is an exotic quantum device.
- **A life form.** The cascade is communication between living parts, and the substrate is alive.

The truth is the second. Let the players work toward it with Science checks on the builds, the cores or the *Cutwater*'s crystal. Each check takes 1D hours and can be attempted once per traveller per speciality.

| Check | What a success shows |
|---|---|
| **Average (8+) Science (physics) check (INT)** | The cascade has none of the decoherence signatures a quantum system should show. It grows *more* coherent the longer it runs, not less. |
| **Average (8+) Science (cybernetics) check (EDU)** | The structure is closer to neural tissue than to any computing architecture. It reorganises itself between runs, the way a nervous system rewires. |
| **Difficult (10+) Science (biology) check (INT)** | The branching follows the pattern of a fungal mycelium: growth toward resources, load sharing, and repair around damage. |
| **Difficult (10+) Science (xenology) check (INT)** | It behaves like a community of organisms exchanging signals, consistent with the silicon life reported on Cymbeline (SGK:42–44). |
| **Average (8+) Science (planetology) check (EDU)** | The substrate's circuits follow natural faults in the crystal, etched rather than manufactured, as on Cymbeline (SGK:35–36). |

**Reading the results.** Keep a quiet count of successes for the group.

- **A failed check** leaves that traveller believing in the quantum explanation, and they should be told their reading supports it.
- **Two or more successes:** the group can say with confidence that the Ports are alive, or are the voice of something that is.
- **The payoff:** if the group goes into Act Three having concluded it is alive, they gain DM+1 on the Science (xenology) or Diplomat check to frame an offer in its own terms (Appendix D, §D.5).

**Who is good at this:** Petrosyan-Wu (Science (planetology) 2 and (xenology) 1) and Corr (Science (cybernetics) 2). Baltic, if the players can bear to ask him, has Science (cybernetics) 3, and already knows the answer. Baltic, if the players can bear to ask him, has Science (cybernetics) 3, and already knows the answer.

---

*Last updated: 2026-11-21*
