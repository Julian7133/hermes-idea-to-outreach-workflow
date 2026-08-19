# 01 — Devalidation Report

> **Revision 2026-08-19.** Requeue nach Kill vom 2026-08-18 (Score 2/10,
> "Commodity"). Diese Fassung greift **den Realisten-Plan** aus
> `00c-realist.md` an (Ausprägung C — bb-natives Eltern-Kind-Fleet-Board),
> nicht die rohe Idee — das ist der Unterschied zur alten Bewertung.
> Live-Recherche fokussiert explizit auf die Requeue-Prämisse: ist eine
> agentengesteuerte, laufend aktualisierte Status-Mindmap speziell für
> Multi-Agent-/Multi-Thread-Setups (bb-artig) unbesetzt (K2/K6)?
> **Finale Scores stehen in `01b-synthese.md`** — dieser Bericht ist die
> Kritiker-Stufe vor der Synthese.
> `boring-and-trends-check` wurde **nicht** ausgeführt: der finale
> `outreach_score` bleibt unter 4/10 (siehe Synthese).

## Verdict
- **Score (final, nach Synthese — siehe `01b-synthese.md`):** outreach_score
  **2/10**, product_score **6/10** (Kritiker-Ausgangswerte: 2/10 / 5/10,
  unverändert bzw. leicht angehoben nach einer Überarbeitungsrunde)
- **Go/No-Go:** **NO-GO** (outreach — Auto-Kill, `outreach_score < 4/10`)
- **One-line reason:** Die Requeue-Prämisse ("bb-Fleet-Status-Anbindung ist
  unbesetzt") ist **widerlegt** — mehrere kostenlose, aktiv gepflegte
  Open-Source-Dashboards liefern bereits Echtzeit-Status, Kanban- und
  Eltern-Kind-Hierarchie-Visualisierung für parallele Claude-Code-/Codex-
  Agenten-Threads (u. a. 900★ auf GitHub), und selbst die Team-Lead-Ebene
  wird bereits nativ von Cursor Teams/Devin Teams besetzt — kein
  eigenständiger Cold-Outreach-Case, aber ein benennbarer bb-spezifischer
  Produktkern bleibt übrig (siehe Produktkern-Abschnitt und `01b-synthese.md`).

## CLEARFRAME breakdown (gegen den Realisten-Plan, Ausprägung C)

| Lens | Assessment |
|---|---|
| **C**ustomer | Realist: Solo-Freelancer/kleines Team mit 5+ parallelen bb-Kind-Threads. VERIFIZIERT: Marktdaten zeigen aktuell **3–5 parallele Agenten pro Entwickler** als typisches Muster (2026) — die vom Realisten angesetzte Schwelle "5+" trifft nur den oberen Rand dieser Verteilung, nicht die Mehrheit. |
| **L**onging/Job | Auf einen Blick sehen, welcher Thread eine Entscheidung braucht, ohne jeden einzeln zu lesen — Job ist real (siehe Cited market signals: "context fragmentation" als Bottleneck ab 5+ Agenten). |
| **E**xisting solution | **Widerlegt gegenüber Realist-Annahme "unbesetzt":** `Claude-Code-Agent-Monitor` (kostenlos, OSS, 900★, Echtzeit-Kanban + D3-Orchestrierungs-DAG + Subagent-Kollaborationsnetz + Fehler-Propagations-Karte), `atc-claude-kanban` und `claude-code-kanban` (Kanban für Claude-Code-Subagents), `AgentPulse` (Echtzeit-Monitoring paralleler Claude-Code-/Codex-Sessions inkl. "woran arbeitet jeder Thread gerade"), `AgentGrid` und `claude-fleet` (Fleet-Dashboards für parallele Claude-Code-/Codex-Fenster mit Triage). Alle kostenlos/OSS, alle decken exakt das vom Realisten skizzierte Eltern-Kind-Status-Board ab — nur eben für Claude-Code-/Codex-Sessions direkt statt bb-spezifisch. |
| **A**lternative cost | ASSUMPTION: bei 5+ Threads ~15–30 Min/Tag manuelles Nachschauen — moderat, aber laut Recherche ("context fragmentation is a primary bottleneck at 5+ agents") ein anerkanntes Problem, kein erfundener Schmerz. |
| **R**eachability | Realist schlägt Community/Content statt Cold Outreach vor — korrekt erkannt, aber das bedeutet: **kein Cold-Outreach-Case im Sinne dieser Pipeline**, unabhängig vom Produktwert. |
| **F**requency | Mehrfach täglich bei aktiver Multi-Agent-Nutzung — hohe Frequenz, aber bei einer Zielgruppe, die bereits kostenlose Alternativen kennt (GitHub-Traktion der o. g. Tools als Indiz). |
| **R**evenue | Realist: €19/Mo Self-Serve. ASSUMPTION bleibt unverifiziert (keine Vergleichszahl für zahlende Nutzer eines bb-spezifischen Nischentools gefunden) — und strukturell fraglich, wenn die nächstliegende Alternative kostenlos ist und mehr Features (DAG, Kollaborationsnetz) bietet als das MVP. |
| **A**dvantage | K6: Julian hat tiefe bb-/Agent-Orchestrierungs-Erfahrung und laufenden Code in ~20 Projekten (u. a. Mindmapping) — echter Vorteil beim **Bauen**, aber kein Vertriebs- oder Reichweiten-Vorteil gegenüber den bereits 900★ starken OSS-Alternativen. |
| **M**oat-later | Realist verspricht "lernt laufend Best Practice" — im Plan nicht operationalisiert (welche Datenquelle, welches Trainingssignal); ohne Konkretisierung kein verifizierbarer Moat. Die bb-spezifische Eltern-Kind-Datenstruktur (`bb thread show --json`) ist der einzige nicht bereits besetzte Differenzierungspunkt. |
| **E**ffort | Realist: 3–5 Tage für den kleinsten Beweis — plausibel, deckt sich mit der Beobachtung, dass vergleichbare OSS-Tools von Einzelpersonen gebaut wurden (Solo-Repos auf GitHub). |

## CLEARFRAME + Market Reality
- **TAM (sanity):** ASSUMPTION: bb-Nutzerbasis mit 5+ parallelen Kind-Threads ist eine kleine Teilmenge einer noch jungen Nutzerbasis (bb selbst ist ein 2026 gestartetes Nischenprodukt) — realistisch eher niedrige drei- bis vierstellige Zahl potenzieller Nutzer weltweit, nicht verifizierbar mit einer öffentlichen Zahl.
- **Saturation / competition:** **VERIFIZIERT (Aug 2026): das exakte Zielsegment (Echtzeit-Fleet-Status für parallele Coding-Agenten) ist bereits mehrfach kostenlos besetzt.** `Claude-Code-Agent-Monitor` (900★, Kanban + DAG + Kollaborationsnetz), `atc-claude-kanban`, `claude-code-kanban`, `AgentPulse`, `AgentGrid`, `claude-fleet` — alle kostenlos/OSS für Claude-Code-/Codex-Sessions. Auf der B2B-Team-Lead-Ebene bauen zusätzlich Cursor (Teams, $40/Nutzer/Mo, Admin-Kontrollen) und Devin (Teams, $80/Mo + $40/Sitz) Fleet-Oversight direkt in ihre Plattformen ein. Es existiert sogar ein offener Feature-Request im `anthropic/claude-code`-Repo selbst ("Agent Hierarchy Dashboard — unified real-time visualization for multi-agent workflows", Issue #24537) — ein Indiz, dass die Kategorie sowohl von der Community als auch potenziell vom Plattformbetreiber selbst bedient werden könnte.
- **Category maturity & growth:** **Emerging, aber bereits schnell kommoditisiert.** Multi-Agent-Orchestrierung selbst wächst 2026 sichtbar (Anthropic-Prognose: "multi-agent systems replace single-agent workflows"), aber die Status-/Fleet-Dashboard-Schicht darüber wird parallel dazu sofort von der OSS-Community besetzt — die Lücke zwischen "neue Kategorie entsteht" und "kostenlose Tools decken sie ab" ist in diesem Fall extrem kurz.
- **CAC vs CLV sanity:** Bei einer Nische, die bereits kostenlose, funktionsreichere Alternativen kennt (DAG- und Kollaborationsnetz-Visualisierung übertrifft das geplante MVP), ist eine bezahlte Cold-Outreach-Akquise strukturell unterwasser — der Realist selbst schlägt richtigerweise Community/Content statt Outreach vor, was aber außerhalb dieser Pipeline liegt.
- **Difficulty score:** 6/10 (Bauen ist einfach — solo in Tagen machbar, siehe Vergleichs-Repos; Differenzierung/Vertrieb ist das eigentliche Problem).
- **Key risks:**
  1. **Requeue-Prämisse widerlegt** — die "unbesetzte bb-Anbindung" existiert als eigenständiges Kaufmotiv nicht: das nächstliegende, kostenlose Vergleichsprodukt (Claude-Code-Agent-Monitor) leistet mehr als das geplante MVP.
  2. **Kein Cold-Outreach-Kanal** — Realist bestätigt selbst Community/Content statt Outreach; das ist ein Vertriebsurteil (K4), keine Widerlegung des Produktwerts.
  3. **Plattform-Risiko doppelt** — sowohl bb selbst als auch Anthropic könnten die Funktion nativ nachziehen (siehe offener Feature-Request bei Anthropic).

## Cited market signals (researched 2026-08-19)
- Kostenlose OSS-Fleet-Dashboards für Claude Code/Codex mit Echtzeit-Status, Kanban und Subagent-Hierarchie: [Claude-Code-Agent-Monitor (900★, Kanban + D3-DAG + Kollaborationsnetz + Fehler-Propagation)](https://github.com/hoangsonww/Claude-Code-Agent-Monitor), [atc-claude-kanban](https://github.com/atc-net/atc-claude-kanban), [claude-code-kanban](https://github.com/NikiforovAll/claude-code-kanban), [AgentPulse](https://github.com/jstuart0/agentpulse), [AgentGrid](https://github.com/Latencius/agentgrid), [claude-fleet](https://github.com/tianyilt/claude-fleet).
- Offener Feature-Request im Anthropic-eigenen Repo für exakt diese Kategorie: ["Agent Hierarchy Dashboard — unified real-time visualization for multi-agent workflows", Issue #24537](https://github.com/anthropics/claude-code/issues/24537).
- Team-Lead-/Enterprise-Ebene bereits nativ besetzt: [Cursor Teams $40/Nutzer/Mo](https://getdx.com/blog/ai-coding-assistant-pricing/), [Devin Teams $80/Mo + $40/Sitz](https://getdx.com/blog/ai-coding-assistant-pricing/); Engineering-Manager shortlisten laut derselben Quelle bereits "control planes and fleet dashboards" für Org-weites Rollout mit SSO/Audit-Log.
- Demand-/Frequenz-Signal: "context fragmentation becoming a primary bottleneck when five or more agents operate simultaneously" ([browseract.com, Multi-Agent Management Dashboard Guide](https://www.browseract.com/blog/multi-agent-management-dashboard-guide)); typisches Muster 2026 sind **3–5 parallele Agenten pro Entwickler** ([scopir.com, Multi-Agent Orchestration for Developers in 2026](https://scopir.com/posts/multi-agent-orchestration-parallel-coding-2026/)).
- bb selbst ist ein 2026 aktives, aber junges Multi-Agent-IDE-Produkt mit eigenem Eltern-Kind-Thread-Datenmodell (Threads spawnen Kind-Threads mit eigenem Worktree) — verifiziert über Produktbeschreibungen ([Starlog, "bb: The Agent IDE That Treats Workflows as First-Class Resumable Primitives"](https://starlog.is/articles/ai-dev-tools/get-bb-bb), [getbb.app Blog](https://getbb.app/blog/an-agentic-ide-that-builds-itself)); keine öffentliche Quelle bestätigt oder verneint ein natives bb-Fleet-Dashboard — bleibt `ASSUMPTION:` offen (siehe Notes).

## Produktkern für den MVP

*(Pflicht ab `product_score >= 4`; final `product_score = 6/10` nach
Synthese.)* Die eine Funktion, die den Schmerz löst: eine **bb-native,
laufend aktualisierte Eltern-Kind-Statusansicht** — ein Knoten pro Thread,
gruppiert nach Eltern-Thread, Status farbcodiert (läuft / wartet auf Review
/ blockiert / fertig), generiert aus dem bereits vorhandenen
Weekly-Overview-Text jedes Threads plus der von bb selbst gehaltenen
Eltern-Kind-Beziehung (`bb thread show --json`). Für wen genau: bb-Nutzer,
die über `bb thread spawn` mehrere Kind-Threads gleichzeitig führen und den
Überblick sonst nur durch manuelles Durchklicken jedes Threads bekommen —
namentlich zunächst Julian selbst.

Kleinster lauffähiger Beweis: ein Skript, das alle aktiven Threads eines
bb-Projekts per API ausliest, ihre Weekly-Overview-Texte durch ein LLM in
Status + offene Punkte extrahiert, und daraus eine statische, neu
generierbare Ansicht (z. B. Markmap/D3) rendert — bewusst ohne
Live-Websocket-Updates, ohne Multi-Tool-Support über bb hinaus, ohne
Team-Logins. Distribution nicht über Cold Outreach, sondern als
kostenloses bb-Plugin über den bb-Plugin-Marktplatz (Skills
`bb-plugin-authoring`/`submit-a-plugin` bereits im eigenen Toolset
vorhanden) — Zweck ist in erster Linie Eigennutzen plus Lead-Gen für
pragmatic-ai-systems, nicht ein eigenständiges SaaS-Geschäft.

## Riskiest assumption test (RAT)
- **What to test next:** *Nicht empfohlen über diese Pipeline* (Cold Outreach). Falls trotzdem Produktbau (siehe `product_score`): den bb-Plugin-Prototyp in der bb-Community/relevanten Multi-Agent-Foren zeigen und 10–15 qualitative Rückmeldungen einholen, ob die bb-spezifische Eltern-Kind-Sicht gegenüber den generischen Claude-Code-Tools einen wahrgenommenen Mehrwert hat.
- **Kill signal:** N/A für Outreach — bereits an der Schreibtisch-Stufe gekillt (siehe Synthese).

## Notes / assumptions
- ASSUMPTION: Ob bb selbst mittelfristig ein natives Fleet-/Status-Dashboard plant, ist nicht öffentlich verifizierbar — als Plattform-Risiko in "Key risks" aufgenommen, nicht als harte Tatsache gewertet.
- ASSUMPTION: TAM/Nutzerzahl für "bb-Nutzer mit 5+ parallelen Threads" nicht quantifizierbar — kein öffentliches Zahlenmaterial zu bb-Nutzerzahlen gefunden.
- ASSUMPTION: €19/Mo-Preispunkt aus `00c-realist.md` nicht extern verifiziert (keine Vergleichszahl für ein bezahltes bb-spezifisches Nischentool gefunden).
