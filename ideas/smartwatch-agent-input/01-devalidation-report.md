# 01 — Devalidation Report

> Filled by `clearframe-devalidation` (Kritiker-Rolle, Walt-Disney-Methode).
> Angriffsziel ist **nicht** die rohe Idee aus `00`, sondern der Realisten-Plan
> in `00c-realist.md` (Ausprägung **C — Nische**: Watch-Freigabe für
> risikobehaftete Agenten-Aktionen). Kalibrierung nach K1–K6
> (`ORCHESTRATOR-PROMPT.md`) ist bindend.

## Verdict (final — nach Synthese, siehe `01b-synthese.md`)
- **outreach_score:** 3/10 (Kritiker: 2/10 → Synthese nach einer Überarbeitungsrunde: 3/10)
- **product_score:** 3/10 (Kritiker: 3/10 → Synthese: unverändert 3/10)
- **Go/No-Go (outreach):** NO-GO (Auto-Kill: outreach_score < 4/10, greift nach der Synthese)
- **One-line reason:** Die exakte Funktion aus dem kleinsten Beweis — strukturierte Freigabeanfrage vom Agenten, Push an die Watch, Ja/Nein-Tap — existiert bereits dreifach: **nativ in openclaw selbst** (offizieller Wear-OS-Companion), als bezahlte App **Agent Approve** ($14,99/Mo, Launch Juli 2026) und als **AgentWatch** (Gratis-Basis + Plus-Abo); zusätzlich gibt es eine dokumentierte Gratis-DIY-Route (Pushcut/ntfy + Shortcuts). Die Synthese-Überarbeitung (Dienstleistungs-Framing) löst das nicht, sondern verschmilzt inhaltlich mit der bereits priorisierten Idee `A3 openclaw-managed-service` — kein eigenständiges Produkt.
- **product_score < 4 → kein Abschnitt „Produktkern für den MVP"** (Pflicht laut Auftrag nur ab product_score ≥ 4).

> `boring-and-trends-check` wurde **nicht** ausgeführt — Auto-Kill-Regel greift (outreach_score 3/10 < 4/10 nach Synthese).

## CLEARFRAME-Breakdown (gegen den Realisten-Plan C)

| Lens | Assessment |
|---|---|
| **C**ustomer | Solo/Kleinteam mit produktivem Agenten (openclaw-Klasse), mindestens eine risikobehaftete Freigabeaktion — sehr eng, wie im Plan beschrieben. |
| **L**onging/Job | Freigabe/Ablehnung risikobehafteter Agenten-Aktionen vom Handgelenk, ohne Kontextwechsel. |
| **E**xisting solution | **Nicht "nichts" oder "Spreadsheet"** wie sonst üblich, sondern: (a) openclaw selbst (Ziel-Plattform des Nutzers) hat einen offiziellen Wear-OS-Companion; (b) Agent Approve (App Store, iPhone+Watch, $14,99/Mo); (c) AgentWatch (App Store, Watch+Live-Activities, Gratis-Tier + Plus-Abo); (d) Pushcut/ntfy + Shortcuts/Hooks — kostenlos, community-dokumentiert, für Claude-Code-Nutzer bereits als Rezept veröffentlicht. |
| **A**lternative cost | Fast null — die Plattform-eigene Lösung (openclaw) kostet den Nutzer nichts Zusätzliches, die DIY-Route kostet nur Einrichtungszeit. |
| **R**eachability | Zielgruppe ist über Agent-Ops-Communities technisch auffindbar (wie im Plan angenommen) — das Reachability-Problem liegt nicht am Kanal, sondern daran, was man dort verkaufen will, wenn drei kostenlose/günstigere Alternativen bereits bekannt sind. |
| **F**requency | Wiederkehrend im Prinzip (mehrfach täglich Freigaben), aber die Zahlungsbereitschaft für ein viertes Tool in diesem engen Feld ist ungeprüft und unwahrscheinlich, solange (a) gratis ist. |
| **R**evenue | 15 €/Mo aus dem Plan liegt nah an Agent Approves $14,99/Mo — kein Preisvorteil, kein Preisanker-Argument (K3) trägt hier, weil der Wettbewerber selbst schon bezahlt wird und die günstigste Alternative gratis ist. |
| **A**dvantage | Julians Agent-Orchestrierungs-Erfahrung (K6) hilft beim Server-/Relay-Teil, deckt aber **keinen** demonstrierten watchOS-Track-Record — der Realist selbst markiert das als ASSUMPTION-Risiko. Kein Vorteil gegenüber Agent Approve (bereits live, PR-Newswire-Launch, spezialisiertes Team) erkennbar. |
| **M**oat-later | Keiner ersichtlich — Policy-Engines wie bei Agent Approve (250+ geblockte destruktive Muster) sind bereits Stand der Technik im Wettbewerb, nicht als künftiger Vorsprung erreichbar. |
| **E**ffort | 4–6 Tage laut Plan für den kleinsten Beweis (ASSUMPTION, kein watchOS-Track-Record) — plus Apple-Developer-Account, TestFlight-Review, APNs-Betrieb. Realistisch eher 8–12 Tage bis zu einem App-Store-fähigen Stand, wenn man den Aufwand der bereits gelaunchten Konkurrenten als Referenz nimmt. |

## CLEARFRAME + Market Reality
- **TAM (sanity):** ASSUMPTION: Nutzer mit produktivem, mehrfach-täglich freigabepflichtigem Agentenbetrieb sind eine sehr kleine, technische Untergruppe der Agent-Ops-Szene — vermutlich niedrige vierstellige bis niedrige fünfstellige Zahl weltweit, DACH-Anteil klein zweistellig bis niedrig dreistellig. Kein belastbares Marktvolumen gefunden (keine Quelle deckt diese enge Kategorie).
- **Saturation / competition:** **Hoch besetzt für eine derart junge Kategorie.** Drei direkte Treffer bei sechs Suchen: openclaw-eigener Wear-OS-Companion (kostenlos, Teil der Zielplattform selbst), Agent Approve ($14,99/Mo, App Store, Launch Juli 2026, PR-Newswire-Ankündigung — deutet auf professionelles/finanziertes Team hin), AgentWatch (App Store, Gratis-Basis + kostenpflichtiges Plus-Tier für Remote-Approvals). Zusätzlich eine dokumentierte Gratis-DIY-Route (Pushcut $/ntfy.sh kostenlos + iOS Shortcuts/Claude-Code-Hooks) mit veröffentlichtem Rezept.
- **Category maturity & growth:** Emerging, aber ungewöhnlich schnell besetzt — die Kategorie "Agent-Genehmigung von der Watch" existierte laut Recherche erst seit ca. Anfang/Mitte 2026 und hat bereits zwei dedizierte kommerzielle Apps plus eine native Plattformlösung. Kein Hinweis auf Wachstumskurve über diese frühe Phase hinaus gefunden.
- **CAC vs CLV sanity:** Strukturell unterwater. Ein Cold-Outreach-Kontakt, der bereits openclaw nutzt, hat die Lösung potenziell schon in seiner eigenen Plattform; wer sie nicht kennt, findet bei der ersten Recherche ("watch approval AI agent") sofort Agent Approve und die Gratis-DIY-Route vor dem eigenen unbekannten Angebot. CAC für ein Nischenprodukt gegen eine kostenlose Plattformfunktion ist praktisch nicht darstellbar.
- **Difficulty score:** 8/10 (technisch machbar, aber go-to-market gegen eine kostenlose Plattformfunktion plus zwei kommerzielle Wettbewerber ist der eigentliche Blocker, nicht der Code).
- **Key risks:**
  1. **Plattform-Kannibalisierung** — die exakte Zielplattform (openclaw) liefert die Kernfunktion bereits kostenlos mit; jeder Wachstumsschritt von openclaw entwertet das Produkt weiter.
  2. **Zwei lebende, kommerzielle Wettbewerber** mit identischem Kernversprechen und ähnlichem Preis (Agent Approve $14,99/Mo) — kein Differenzierungsmerkmal im Realisten-Plan benannt.
  3. **Kostenlose DIY-Route** ist bereits community-dokumentiert und für genau die technisch versierte Zielgruppe (die Shortcuts/Hooks selbst bauen kann) am naheliegendsten.

## Wedge-Suche (K2, Pflichtnachweis)
Gesucht nach: (1) DACH-/EU-/DSGVO-spezifischer Positionierung für Agent-Genehmigungstools ("DACH GDPR self-hosted agent approval… Freigabe"), (2) Team-/Multi-User-Funktionen bei Agent Approve, (3) Sicherheits-/Air-Gap-Differenzierung (separates Vertrauensgerät, kein Cloud-Relay). Ergebnis: **kein produktspezifischer Wedge gefunden.** Die DSGVO-Treffer sind generische Compliance-Ratgeber, keine auf Watch-Genehmigung zugeschnittenen Angebote oder Lücken. Agent Approves FAQ-Seite war nicht direkt indexiert; aus den Presseartikeln geht keine Team-Funktion hervor, aber auch keine belegte Lücke, die ein Solo-Produkt schließen könnte. Der im Plan skizzierte "getrenntes Trust-Gerät ohne Cloud-Relay"-Gedanke ist ein denkbares Differenzierungsmerkmal, aber unverifiziert und nicht mit einer konkreten Käufer-Bereitschaft belegt — bleibt `ASSUMPTION:`.

## Cited market signals (researched 2026-08-19)
- Agent Approve: iOS/Apple-Watch-App, Launch 7. Juli 2026, 7 Tage Testphase, danach $14,99/Mo; Policy-Engine blockt 250+ destruktive Muster; Push an iPhone/Watch, Ein-Tap-Freigabe. [PR Newswire](https://www.prnewswire.com/news-releases/agent-approve-brings-ai-agent-observability-and-control-to-your-wrist-302819165.html), [Agent Approve App Store](https://apps.apple.com/us/app/agent-approve/id6756645367), [Agent Approve FAQ](https://www.agentapprove.com/faq)
- AgentWatch: AI Agent Hub — iPhone/Watch/Live-Activities-Companion für Claude Code & Codex; Monitoring/Notifications gratis, "AgentWatch Plus" (Abo) schaltet Remote-Prompts/-Approvals/-Interrupts frei. [App Store](https://apps.apple.com/us/app/agentwatch-ai-agent-hub/id6761702872)
- openclaw selbst liefert einen offiziellen **Wear-OS-Companion** (Session-/Agent-Auswahl, Realtime-Talk-Controls, Instant-Talk-Tile) — die im `00`/`00c` genannte Zielplattform baut die Kernfunktion bereits nativ. [openclaw/openclaw GitHub](https://github.com/openclaw/openclaw), [openclaw.ai](https://openclaw.ai/)
- Gratis-DIY-Route dokumentiert: Pushcut (Shortcuts-Companion mit Watch-Support) und ntfy.sh (kostenloser Push-Dienst) werden in einem veröffentlichten Rezept für Claude-Code-Freigaben per Hook-Skript verwendet — Zero-Cost-Alternative für genau die technische Zielgruppe. [Pushcut](https://www.pushcut.io/support/notifications), [DEV Community: Mobile Approval System für Claude Code](https://dev.to/coa00/how-i-built-a-mobile-approval-system-for-claude-code-so-i-can-finally-leave-my-desk-1ida)
- Allgemeiner Trend "Human-in-the-loop"-Governance für Agenten wird für 2026 branchenweit als Standardpraxis beschrieben — Nachfrage nach dem *Prinzip* Genehmigungsgates ist real, aber bereits breit durch bestehende Tools (Slack-Buttons bei Viktor u. a., In-Chat-Freigaben) bedient, nicht spezifisch durch Watch-Geräte. [explainx.ai](https://explainx.ai/blog/human-in-the-loop-ai-when-to-let-agent-run-2026), [Viktor via crevio.co Vergleich](https://crevio.co/blog/best-ai-agents-for-slack)

## Notes / assumptions
- ASSUMPTION: TAM-Schätzung für die enge Untergruppe "Nutzer mit mehrfach-täglicher Freigabepflicht" — keine öffentliche Quelle deckt diese Kategorie direkt.
- ASSUMPTION: Aufwand für App-Store-reifen kleinsten Beweis eher 8–12 statt 4–6 Tage, abgeleitet aus dem sichtbaren Funktionsumfang der bereits gelaunchten Konkurrenten, nicht aus einer eigenen Schätzung Julians.
- ASSUMPTION: "Getrenntes Trust-Gerät ohne Cloud-Relay" als Differenzierung — plausibel, aber ohne Käufer-Nachweis.
