# 01 — Devalidation Report

> Kritiker-Rolle im Walt-Disney-Ablauf. Greift den **Realisten-Plan**
> (`00c-realist.md`, Ausprägung C — Nische: Freelance-Berater mit mehreren
> Kundenprojekten) an, nicht die rohe Idee. Kalibriert nach K1–K6
> (`ORCHESTRATOR-PROMPT.md`). Scores hier sind **vorläufig** — endgültig sind
> die Scores aus `01b-synthese.md`.

## Verdict
- **outreach_score:** 4/10
- **product_score:** 5/10
- **Go/No-Go (outreach):** GO (knapp — Trends-Check läuft, Auto-Kill greift erst nach Synthese)
- **One-line reason:** Der Markt ist besetzt (Reclaim, Motion, Trevor, Sunsama,
  Akiflow, Zelvor), aber es gibt einen benennbaren, engen Wedge (DSGVO +
  deutschsprachig + Zero-Setup-Onboarding für Solo-Berater mit 3–5
  Kundenprojekten) — offener Ausgang, kein struktureller Kill, aber auch kein
  klarer Vorteil.

## CLEARFRAME breakdown (gegen den Realisten-Plan 00c)

| Lens | Assessment |
|---|---|
| **C**ustomer | Solo-Freelance-Berater (IT/Marketing), 3–5 gleichzeitige Kundenprojekte — enger als "jeder Freelancer", plausibel abgrenzbar. |
| **L**onging/Job | Wöchentliche Kalenderwoche automatisch nach Kundenpriorität blocken lassen, ohne selbst ein Prioritäten-Board zu pflegen. |
| **E**xisting solution | Reclaim.ai (kostenlos/ab $8/Mo), Motion ($29–34/Mo, **explizit mit Client-Tags für Freelancer mit mehreren Projekten**), Trevor AI (~$5–6/Mo), Sunsama ($17/Mo), Cal.com, manuelles Notion/Kalender-Jonglieren. |
| **A**lternative cost | Verifiziert: 59 % der Freelancer berichten Burnout-Symptome, verpasste Deadlines häufen sich bei 4–5 parallelen Kunden (Quelle unten) — realer, nicht erfundener Schmerz. |
| **R**eachability | Solo-Berater sind über LinkedIn (Berufsbild filterbar) kalt anschreibbar — guter Reachability-Wert für diese Pipeline. |
| **F**requency | Wöchentlich wiederkehrend (Neuplanung jede Woche) — mittlere Frequenz, kein täglicher Trigger. |
| **R**evenue | €19/Mo aus 00c liegt **zwischen** Reclaim/Trevor (Low-End, $5–10) und Motion/Sunsama ($17–34) — kein Preisvorteil, sitzt mitten im besetzten Preisband. |
| **A**dvantage | Nach K6: Julians Agenten-Orchestrierungs-Erfahrung (bb, Multi-Agent-Workflows) ist direkt einsetzbar für die Prioritäts-Inferenz-Logik; DACH-Marke/Sendeinfrastruktur senkt CAC für Cold Outreach in dieser Region. Kein Vorteil bei Kalender-Tech selbst — dort sind Reclaim/Motion technisch voraus. |
| **M**oat-later | Eng, wenn überhaupt: Kombination aus Sprache (DE) + DSGVO-Datenhaltung + Zero-Setup-Onboarding ist heute nicht vollständig besetzt (siehe Wedge-Suche unten), aber jede einzelne Komponente für sich ist bereits von mindestens einem Wettbewerber abgedeckt. |
| **E**ffort | 8–12 Tage laut 00c für den kleinsten Beweis ist plausibel für eine einfache Version; laufende Pflege (Kalender-API-Änderungen, LLM-Kosten) nicht eingerechnet. |

## CLEARFRAME + Market Reality
- **TAM (sanity):** ASSUMPTION: DACH-Solo-Berater mit 3+ parallelen
  Kundenprojekten grob im niedrigen sechsstelligen Bereich (Ableitung aus
  US-Solopreneur-Zahlen unten, nicht direkt für DACH verifiziert) — Nische ist
  klein, aber nicht zu klein für ein Solo-Geschäft mit wenigen hundert
  zahlenden Nutzern.
- **Saturation / competition:** **Besetzt, aber nicht am Preis-Boden.**
  Verifiziert (Aug. 2026): Reclaim.ai Free-Tier + Starter $8/Mo; Trevor AI
  $5–6/Mo; Motion $29–34/Mo (**mit dediziertem Freelancer-Multi-Client-Feature
  über Projekt-Tags** — deckt exakt die von 00c gewählte Nische bereits ab);
  Sunsama $17/Mo; Cal.com ab $12/Mo; Akiflow $34/Mo. Zusätzlich verifiziert:
  **Zelvor**, ein europäisches/DSGVO-konformes KI-Scheduling-Tool, besetzt den
  DACH-Datenschutz-Winkel bereits auf allgemeiner Ebene (nicht
  freelancer-spezifisch).
- **Category maturity & growth:** **Growth**, nicht Emerging — die
  AI-Scheduling-Kategorie hat mehrere finanzierte, seit Jahren am Markt
  befindliche Player mit aktiver Feature-Iteration (Motion, Reclaim). Kein
  Kategorie-Bildungs-Vorteil für einen Neueinsteiger.
- **CAC vs CLV sanity:** ASSUMPTION: €19/Mo × ~8–10 Monate Retention ≈
  €150–190 CLV. Cold-Outreach-CAC für ein Self-Serve-Produkt in diesem
  Preisband ist bei 1:1-Ansprache strukturell dünn — für die
  Validierungs-Charge (20–50 Sends, kein Skalierungsanspruch) tragbar, für ein
  skaliertes Outreach-Programm eher grenzwertig.
- **Difficulty score:** 6/10 (Kalender-API-Integration + Prioritäts-Logik ist
  Standard-Terrain, kein Forschungsrisiko; laufende Pflege gegen zwei
  Kalender-Anbieter plus LLM-Kosten ist der eigentliche Aufwand).
- **Key risks:**
  1. **Motion bedient die gewählte Nische bereits explizit** (Freelancer,
     mehrere Kundenprojekte, Deadline-Priorisierung über Tags) — der
     Realisten-Plan differenziert sich nicht über die Kernfunktion, sondern
     nur über Onboarding-Methode und Sprache/Datenschutz.
  2. **Der behauptete Kern-Vorteil ("kein manuelles Prioritäten-Pflegen") ist
     schwächer als angenommen:** Reclaim-Onboarding dauert laut Reviews ~15
     Minuten und gilt als reibungsarm; benachbarte Tools (Lindy) bewegen sich
     bereits Richtung automatischer Prioritäts-Erkennung aus E-Mail-Kontext.
     Der USP "LinkedIn-Profil statt Prioritäten-Pflege" ist nicht erprobt und
     könnte sich als Nice-to-have statt Kaufgrund erweisen.
  3. **Preis sitzt ohne Differenzierung mitten im Wettbewerbsfeld** — €19/Mo
     ist weder das günstigste (Reclaim/Trevor) noch das funktionsreichste
     (Motion) Angebot.

## Wedge-Suche (K2 — Nachweis der Suche, nicht nur Behauptung)
Gesucht nach: (a) deutschsprachige/DSGVO-konforme KI-Scheduling-Tools für
Freelancer, (b) Tools mit automatischer Prioritäts-Erkennung ohne manuelle
Task-Pflege, (c) Freelancer-Multi-Client-spezifische Positionierung bei
Platzhirschen. Ergebnis: (c) ist bei Motion bereits besetzt; (a) ist auf
allgemeiner Ebene durch Zelvor besetzt, aber **nicht** in der Kombination
"DSGVO + deutschsprachig + speziell für Solo-Berater mit mehreren
Kundenprojekten + Zero-Setup-Onboarding"; (b) ist im Trend (Lindy bewegt sich
dorthin), aber noch kein ausgereiftes Konkurrenzprodukt mit LinkedIn-basiertem
Cold-Start. Der verbleibende Wedge ist damit eine **Kombination aus drei
schmalen Lücken**, keine einzelne klare Lücke — schwächer als ein "kein
Wettbewerber" Befund, aber nicht nichts.

## Cited market signals (researched 2026-08-19)
- Wettbewerbspreise verifiziert: [Reclaim.ai](https://reclaim.ai/) Free-Tier +
  Starter $8/Mo, [Trevor AI](https://www.trevorai.com/) $5–6/Mo, Motion
  $29–34/Mo, Sunsama $17/Mo, Cal.com ab $12/Mo, Akiflow $34/Mo (Quellen:
  [Dupple AI-Scheduling-Vergleich 2026](https://dupple.com/learn/best-ai-scheduling-assistant),
  [Morgen Reclaim-Alternativen 2026](https://www.morgen.so/blog-posts/reclaim-ai-alternatives)).
- Motion bedient explizit Freelancer mit mehreren Kundenprojekten über
  Projekt-Tags und Deadline-Priorisierung ([Genesys Growth: Motion vs Reclaim vs
  Clockwise 2026](https://genesysgrowth.com/blog/motion-vs-reclaim-ai-vs-clockwise)).
- DSGVO-Lücke bei US-Tools verifiziert (Reclaim-Daten liegen bei AWS US, keine
  DSGVO-Zusicherung) und bereits durch ein europäisches Tool (Zelvor)
  adressiert ([kalender-sync.de DSGVO-Test 2026](https://kalender-sync.de/en/blog/beste-kalender-sync-tools-2026/)).
- Schmerz real und verifiziert: 59 % der Freelancer berichten
  Burnout-Symptome; bei 4–5 parallelen Kunden häufen sich verpasste Deadlines
  und Qualitätsverlust ([Damongo Freelancer-Burnout-Report
  2026](https://damongo.com/how-to-prevent-freelancer-burnout-2026-complete-guide-sustainable-energy-management/)).
- Solopreneur-/Freelance-Wachstum: 29,8 Mio. Solopreneure in den USA (82 % aller
  Kleinunternehmen), Freelancer sollen bis 2027 >50 % der US-Erwerbstätigen
  stellen ([AutoFaceless Solopreneur-Statistiken
  2026](https://autofaceless.ai/blog/solopreneur-statistics-2026)) — ASSUMPTION:
  Übertragbarkeit auf DACH nicht separat verifiziert.

## Boring & Trends check
- **Boring/niche defensibility:** Grenzfall. Die Grundkategorie
  ("AI-Kalender/Scheduling") ist selbst nicht unsexy — sie hat mehrfinanzierte
  Player (Motion, Reclaim) und aktives VC-Interesse. Die von 00c gewählte
  Zuspitzung (DACH, Solo-Berater, Zero-Setup) ist unsexy genug, dass ein
  YC-Batch-Team sie ignorieren würde — der Gesamtmarkt ist aber zu belebt, um
  die Defensibilität allein aus "langweilig" zu ziehen; die Verengung schützt
  eher vor direkter Konkurrenz als die Kategorie selbst.
- **Sociological trend:** Der **Solopreneur-/Ein-Personen-Firmen-Boom**: 29,8
  Mio. US-Solopreneure, 36 % der 2025 auf Carta getrackten Startups
  solo-gegründet (Anstieg von 31 % 2024), Prognose >50 % Freelancer-Anteil an
  der US-Erwerbstätigkeit bis 2027. Das vergrößert direkt die Zielgruppe von
  00c (Solo-Berater mit mehreren Kundenprojekten), weil mehr Menschen in genau
  diese Rolle wechseln als vor 2 Jahren ([AutoFaceless Solopreneur-Statistiken
  2026](https://autofaceless.ai/blog/solopreneur-statistics-2026)).
- **Technological trend:** Die **Standardisierung von Kalender-Zugriff für
  KI-Agenten über MCP** (Model Context Protocol) — Google liefert seit März
  2026 native MCP-Unterstützung für Workspace/Calendar, mehrere Anbieter
  bieten fertige Calendar-MCP-Server. Das senkt den Bauaufwand für genau die
  Kernfunktion aus 00c (Kalender lesen/schreiben durch einen Agenten) von
  individueller API-Integration auf Standard-Tooling ([Scalekit: Google
  Calendar MCP vs. API für KI-Agenten
  2026](https://www.scalekit.com/blog/google-calendar-mcp-vs-api), [CalendarMCP
  Blog](https://calendarmcp.ai/blog)).

## Riskiest assumption test (RAT)
- **What to test next:** Wizard-of-Oz-Test aus 00c (5 Onboarding-Gespräche mit
  Solo-Beratern) **vor** jedem Bau — prüft die riskanteste Annahme
  (Bereitschaft, Kalender-Schreibzugriff + Prioritäts-Entscheidung an einen
  Agenten abzugeben) günstig, ohne Code.
- **Kill signal:** Wenn 4 von 5 Gesprächspartnern den vorgeschlagenen
  Kalender-Plan nicht ungeprüft übernehmen würden, ist der Kern-Nutzenversprechen
  ("kein manuelles Prioritäten-Pflegen mehr") widerlegt.

## Notes / assumptions
- ASSUMPTION: DACH-Marktgröße für die Nische nicht separat verifiziert (nur
  US-Solopreneur-Zahlen als Proxy).
- ASSUMPTION: CLV-Rechnung (8–10 Monate Retention) ohne öffentliche
  Churn-Benchmark für dieses Produktsegment.
- Diese Datei enthält die **vorläufigen** Kritiker-Scores. Endgültig sind die
  Scores in `01b-synthese.md`.
