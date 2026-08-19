# 01 — Devalidation Report

> **REVISION 2026-08-19** (K4-Requeue). Ersetzt den Bericht vom 18.08.2026
> (Einzelscore 2/10, NO-GO). Requeue-Grund: Der alte Kill lautete wörtlich
> „kein Cold-Outreach-Case, sondern Marketing-Asset" — das ist ein
> **Vertriebsurteil**, kein Produkturteil, und wurde fälschlich auf `00` selbst
> angewendet statt sauber in zwei Scores (`outreach_score` / `product_score`)
> getrennt. Diese Revision übernimmt die Marktrecherche vom 18.08. als
> Ausgangsmaterial, aktualisiert sie mit drei neuen Live-Suchen (19.08.2026,
> siehe „Cited market signals") und vergibt **zwei getrennte Scores** nach
> Regel K4. `boring-and-trends-check` läuft **nicht** — Grund unten unter
> „Auto-Abort", da `outreach_score < 4/10` bleibt.

## Verdict
- **Outreach-Score:** 3/10 — **NO-GO** (steuert das Hermes-Gate)
- **Produkt-Score:** 6/10 — **buildable: yes**
- **One-line reason:** Der Kaltakquise-Track scheitert nicht an fehlender Reichweite (Ops-/Platform-Verantwortliche mit Runbook-Verantwortung sind grundsätzlich kalt anschreibbar), sondern daran, dass ein Cold Send hier keine direkte Kauf-/Interessens-Entscheidung misst, sondern nur einen Klick auf ein kostenloses Tool drei Konversionsschritte vor dem eigentlichen Umsatz (Beratungsprojekt) — CAC/CLV lässt sich für den Send selbst nicht plausibilisieren. Als **Marketing-Asset für pragmatic-ai-systems** ist die Idee dagegen solide: klein baubar, an Julians bestehende Marke andockbar, mit einer im Wettbewerbsvergleich unbesetzten Kombination aus Runbook-Spezifität + Beratungs-CTA.

## Auto-Abort (K4-Regel angewendet)
`outreach_score` (3/10) liegt unter der Schwelle 4/10 → das **Hermes-Gate** für
Cold-Outreach-Validierung bleibt geschlossen, `boring-and-trends-check` läuft
nicht (Token-sparender Kill-Switch, wie im Skill definiert). **Aber:**
`product_score` (6/10) liegt bei ≥ 4/10 → der Abschnitt „Produktkern für den
MVP" ist laut Requeue-Auftrag trotzdem Pflicht und folgt unten.

## CLEARFRAME breakdown

| Lens | Assessment |
|---|---|
| **C**ustomer | Zwei Kunden, nicht einer — sauber trennen: (1) **Tool-Nutzer**: Ops-/Platform-/AI-Engineering-Verantwortliche in Teams, die LLM-Prompts/Agent-Skills produktionsreif machen wollen (kalt identifizierbar über LinkedIn-Rollentitel, GitHub-Aktivität zu Agent-Frameworks, Stellenausschreibungen "AI Engineer"/"Platform Engineer"). (2) **Zahlender Kunde**: dieselbe Person, aber erst nach Discovery-Call, als Käufer eines €3–5k pragmatic-ai-systems-Projekts. |
| **L**onging/Job | Tool-Nutzer: schnell prüfen, ob der eigene Ops-/Runbook-Prompt produktionsreif ist. Beratungskunde: das dahinterliegende, größere Problem lösen — Team-weite Skill-/Prompt-Qualität systematisch statt ad hoc. |
| **E**xisting solution | Mind. 6 verifizierte kostenlose Prompt-Grader/-Analyzer (PromptGrade, PromptPrepare, SpacePrompts, Parix, PromptsEra, ChatPromptGenius) plus neu verifiziert: **T-Minus AI Prompt Scorecard** (browserbasiert, 7 Dimensionen, kostenlos, kein Signup) — die Kategorie "kostenloser generischer Prompt-Grader" ist weiterhin besetzt. Keiner davon ist spezifisch auf Runbook-/Ops-Struktur zugeschnitten oder mit einer Beratungs-CTA verknüpft. |
| **A**lternative cost | ASSUMPTION: gering für den Tool-Nutzer (Prompt selbst ausprobieren oder Kollegen fragen) — kein akuter Einzelschmerz, der das Tool selbst verkauft; der Wert liegt im Funnel, nicht im Tool. |
| **R**eachability | **Für den Tool-Nutzer technisch gegeben** (LinkedIn/GitHub/Jobbörsen-Signale), aber die Cold-Outreach-Validierung dieser Pipeline misst eigentlich Kaufinteresse an einem Produkt — hier gibt es nichts zu kaufen im Send selbst, nur einen Klick auf ein Gratis-Tool. Das verwässert die Aussagekraft der KPI (≥3 Klicks wären leicht erreichbar, sagen aber nichts über Beratungsnachfrage). |
| **F**requency | Einmalige Tool-Nutzung pro Kontakt; kein wiederkehrender Pain, den das Tool selbst löst. Für Julian selbst aber wiederverwendbar: derselbe Cold-Send-Baustein ("probier das kostenlose Tool") ist über mehrere Kampagnen recyclebar. |
| **R**evenue | Tool selbst: €0. Umsatz entsteht erst über die Kette Tool-Nutzung → Lead-Capture → Discovery-Call → Projekt (ASSUMPTION: €3–5k Einstieg, siehe `00`). Kein Konversionsdatenpunkt für diese Kette vorhanden — das drückt gezielt den Outreach-Score (CAC/CLV nicht plausibilisierbar), nicht den Produkt-Score. |
| **A**dvantage (K6) | Real, nicht "keiner benannt" wie in der Vorversion: bestehende Marke + Content-Kanal berlow.de, tiefe praktische Agent-Orchestrierungs-Erfahrung (bb, Claude Code, Multi-Agent-Workflows), laufender eigener Code in ~20 Projekten als Beweismaterial, DACH-Freelancer-Positionierung mit bestehender Sendeinfrastruktur. |
| **M**oat-later | Kein technischer Moat (Prompt-Grading-Logik ist leicht kopierbar) — der einzige mögliche Moat ist die Bündelung mit Julians Content/Marke und die Nischen-Spezifität (Runbook/Ops statt generischer Prompt-Check). |
| **E**ffort | 3–4/10 solo: einfacher LLM-Call + Scoring-Prompt + simples Frontend — bestätigt aus Vorversion, technisch das am wenigsten riskante Element. |

## CLEARFRAME + Market Reality

- **TAM (sanity):** Kein eigenes TAM als Standalone-Produkt (kostenlos). Als
  Marketing-Asset ist die relevante Größe die Zahl potenzieller
  pragmatic-ai-systems-Kunden, die über Content/Tool-Nutzung erreicht werden —
  ASSUMPTION: DACH-Teams, die aktiv LLM-Agent-Workflows/Runbooks bauen, ist eine
  wachsende, aber nicht seriös bezifferbare Nische (kein belastbarer Marktreport
  gefunden).
- **Saturation / competition:** **VERIFIED (Aug 2026, erneut bestätigt).**
  Mind. sieben kostenlose Prompt-Grader/-Analyzer am Markt: PromptGrade
  (0–100-Score, 8 Dimensionen), PromptPrepare (CRISP-Framework), SpacePrompts
  (Score 0–10), Parix AI Prompt Checker, PromptsEra AI Prompt Checker,
  ChatPromptGenius, neu dazu **T-Minus AI Prompt Scorecard** (7 Dimensionen,
  kein Signup). **K2-Wedge-Suche (dokumentiert):** gezielt gesucht nach einem
  Tool, das (a) speziell Runbook-/Ops-/Agent-Skill-Struktur statt generischer
  Prompts bewertet **und** (b) explizit als Cold-Outreach-Icebreaker/CTA für
  ein Beratungsangebot positioniert ist — keines der sieben verifizierten Tools
  kombiniert beides; sie sind alle generische Standalone-Grader ohne
  erkennbare Consulting-Anbindung. Das ist der Wedge: nicht "besseres Tool",
  sondern "spezifischere Nische + direkte CTA".
- **Category maturity & growth:** Plateau bei generischen Prompt-Gradern
  (austauschbare Gratis-Tools seit 2025/26), aber Growth bei
  "AI-Agent-Skill-Evals" für Entwicklerteams — bestätigt durch aktuelle
  Fachartikel (Minko Gechev, OpenAI Developers, Phil Schmid, siehe Quellen).
  Zusätzlich neu verifiziert: interaktive Lead-Magnete zeigen 2026 branchenweit
  einen klaren Aufwärtstrend gegenüber statischen Formaten (siehe unten) — das
  stützt die Tool-als-Marketing-Asset-Logik unabhängig von der
  Prompt-Grader-Sättigung.
- **CAC vs CLV sanity:** Für den **Outreach-Track** nicht plausibilisierbar:
  ein Cold Send verkauft hier nichts direkt, sondern verweist auf ein
  Gratis-Tool drei Konversionsschritte vor dem Umsatz — ohne
  Funnel-Konversionsdaten ist CAC strukturell unbestimmt, das drückt den
  `outreach_score` gezielt (K4-Gewichtung: Reachability/CAC-CLV/Frequency am
  höchsten). Für den **Produkt-Track** irrelevant, da kein direkter CAC
  anfällt (organischer Content-/Tool-Traffic statt bezahlter Akquise).
- **Difficulty score:** 5/10 — technisch leicht (3–4/10 Effort), aber
  Positionierung/Differenzierung in einer besetzten Tool-Kategorie und der
  unbewiesene Funnel bis zum zahlenden Kunden ziehen den Gesamtscore moderat
  hoch (niedriger als in der Vorversion, da K2-Wedge diesmal dokumentiert
  gefunden statt pauschal verneint wurde).
- **Key risks:**
  1. **Tool-Kategorie besetzt** — mind. sieben vergleichbare Gratis-Tools
     existieren; ohne echte Runbook-/Ops-Spezifität in Umsetzung und Copy ist
     das Tool austauschbar.
  2. **Unbewiesene Funnel-Konversion** — keinerlei Daten, ob Tool-Nutzer
     tatsächlich zu Beratungs-Leads werden; die Umsatzlogik ist eine
     mehrstufige, unverifizierte Kette.
  3. **Outreach-KPI-Mismatch** — selbst ein erfolgreicher Cold-Send-Test
     (≥3 Klicks) würde primär Neugier auf ein Gratis-Tool messen, nicht
     Zahlungsbereitschaft für Beratung; ein "Erfolg" nach Hermes-KPI wäre ein
     falsches Signal für die eigentliche Geschäftsfrage.

## Cited market signals (researched 2026-08-18 und 2026-08-19)

- Freie Prompt-Grader/-Analyzer am Markt (18.08. verifiziert):
  [PromptGrade™](https://promptgrade.efficientgptprompts.com/),
  [PromptPrepare](https://promptprepare.com/tools/prompt-analyzer),
  [SpacePrompts Prompt Evaluator](https://www.spaceprompts.com/ai-tools/prompt-evaluator),
  [Parix AI Prompt Checker](https://parix.ai/free-ai-tools/ai-prompt-checker/),
  [PromptsEra AI Prompt Checker](https://promptsera.com/ai-prompt-checker/),
  [ChatPromptGenius Prompt Analyzer](https://chatpromptgenius.com/prompt-analyzer/).
- Neu verifiziert (19.08.2026): **T-Minus AI Prompt Scorecard** — browserbasiert,
  7 Dimensionen, kostenlos, kein Signup nötig
  ([T-Minus AI Free Tools](https://www.tminusai.com/tools)); bestätigt, dass
  die generische Kategorie weiterhin aktiv neue kostenlose Einträge bekommt.
- **K2-Wedge-Suche (19.08.2026, negativ für "existiert bereits", positiv als
  Wedge-Bestätigung):** gezielt nach "AI agent skill readiness checker" /
  "runbook grader lead magnet consulting" gesucht — Treffer sind entweder
  generische AI-Readiness-Scorecards für Unternehmen (Augment Code, Phos AI
  Labs, Agent Checker, PiperRocket) oder Website-/SEO-Sichtbarkeits-Checker,
  keiner davon bewertet Runbook-/Ops-Prompt-Struktur oder ist an ein
  Beratungsangebot für Skill-/Prompt-Engineering gekoppelt
  ([Augment Code AI Readiness Tools](https://www.augmentcode.com/tools/ai-readiness-assessment-tools),
  [Agent Checker](https://agentchecker.ai/),
  [PiperRocket AI Agent Readiness Checker](https://piperocket.digital/tools/ai-agent-readiness-checker/)).
- Angrenzendes, wachsendes Segment "Agent-Skill-Evals" für Entwicklerteams:
  [Minko Gechev — Unit Tests for AI Agent Skills (Feb 2026)](https://blog.mgechev.com/2026/02/26/skill-eval/),
  [OpenAI Developers — Testing Agent Skills Systematically with Evals](https://developers.openai.com/blog/eval-skills),
  [Phil Schmid — Practical Guide to Evaluating and Testing Agent Skills](https://www.philschmid.de/testing-skills).
- Interaktive Lead-Magnete/Tools konvertieren 2026 branchenweit deutlich besser
  als statische Formate: Quiz-Start-zu-Lead-Raten oberhalb 40 % in mehreren
  Quellen, B2B-Professional-Services-Durchschnitt 38,5 % laut ScoreApp-Analyse
  über 22.000 Funnels, interaktive Rechner/Tools mit 35–55 % Conversion-Spanne
  ([Digital Applied — Lead Magnet Conversion Benchmarks 2026](https://www.digitalapplied.com/blog/lead-magnet-conversion-benchmarks-2026-b2b-data-reference),
  [Amra & Elma — Lead Magnet Conversion Statistics](https://www.amraandelma.com/lead-magnet-conversion-statistics/)).
  Diese Zahlen sind Branchenbenchmarks, keine spezifische Messung für ein
  Runbook-Grading-Tool — bleiben `ASSUMPTION:` für dieses konkrete Tool, stützen
  aber die generelle Wette "interaktives Tool > statischer Lead-Magnet".
- Keine belastbare Quelle gefunden für spezifische Nachfrage nach
  "Runbook-analogen" Prompt-Reliability-Checks bei SMB-/Ops-Teams als
  eigenständigem Suchbegriff — bleibt `ASSUMPTION:`.

## Boring & Trends check

Nicht ausgeführt — `outreach_score` (3/10) < 4/10, Auto-Abort-Regel greift für
den Cold-Outreach-Track. `boring-and-trends-check` ist an das Outreach-Gate
gekoppelt, nicht an den Produkt-Track.

## Produktkern für den MVP

*(Pflicht, da `product_score` 6/10 ≥ 4/10 — dieser Abschnitt steuert den
späteren Produktbau, nicht den Outreach-Track.)*

**Die eine Funktion:** Prompt-Eingabefeld → LLM-Call mit einem festen,
Runbook-analogen Bewertungsraster (Schritt-Klarheit, fehlende Guardrails,
Fehlerfall-Abdeckung, Reproduzierbarkeit) → strukturierte Ausgabe mit 0–10-Score
pro Dimension + 2–3 konkreten Verbesserungsvorschlägen. **Keine** Konten,
kein Verlauf, kein Multi-Turn — Eingabe rein, Analyse raus, das war's.

**Für wen genau:** Ops-/Platform-/AI-Engineering-Verantwortliche bei DACH-KMUs,
die bereits eigene LLM-Prompts oder Agent-Skills im produktiven Einsatz haben
(nicht "irgendwer, der ChatGPT nutzt") — identisch mit der Zielgruppe für
pragmatic-ai-systems. Die Landingpage-Copy muss diese Runbook-/Ops-Sprache
sprechen, nicht "generischer Prompt-Checker" sein, sonst geht der einzige
gefundene Wedge (Nischen-Spezifität) sofort verloren.

**Kleinster lauffähiger Beweis:** Ein einzelner, öffentlich erreichbarer
Endpunkt/Seite auf berlow.de, der einen eingefügten Prompt gegen das feste
Bewertungsraster laufen lässt und das Ergebnis anzeigt — plus ein sichtbarer
CTA-Button "Discovery Call buchen" direkt unter dem Ergebnis. Erfolgskriterium
für den MVP selbst: **nicht** Umsatz, sondern ob überhaupt jemand außerhalb
Julians eigenem Test den Flow einmal vollständig durchläuft und den CTA
anklickt — das ist die billigste, ehrlichste erste Messung der unbewiesenen
Funnel-Kette aus Risiko 2 oben.

## Riskiest assumption test (RAT)

- **What to test next:** *Nicht über den Cold-Outreach-Track dieser Pipeline —
  Auto-Abort greift.* Falls das Tool trotzdem gebaut wird: als
  Content-/Marketing-Experiment behandeln, KPIs sind Sitzungen, Tool-Starts,
  CTA-Klickrate zum Discovery-Call — nicht Cold-Send-Replies/-Klicks.
- **Kill signal:** N/A für diese Pipeline — der Gate-Kill ist bereits auf
  Outreach-Score-Ebene erfolgt, nicht auf Produkt-Ebene.

## Pivot-Signal

Die Recherche zeigt eine unbediente Kombination, keine unbediente Kategorie:
generische Prompt-Grader sind saturiert, aber **keiner der verifizierten
Wettbewerber koppelt einen Runbook-/Ops-spezifischen Grader an eine
Beratungs-CTA für Agent-Skill-/Prompt-Engineering**. Ein tragfähiger
Nachbar-Pivot wäre, das Tool nicht als generisches Lead-Magnet-Experiment zu
behandeln, sondern als **schmales, kostenpflichtiges Self-Service-Produkt**:
ein "Runbook-Reliability-Audit"-Report (PDF/Dashboard, einmalig €99–199) für
Teams, die mehr als einen einzelnen Prompt prüfen wollen (z. B. 10–20 Prompts
auf einmal, CI-Integration) — das wäre ein eigenständiges, kalt anschreibbares
Produkt mit echtem `outreach_score`, weil hier tatsächlich direkt etwas
verkauft wird statt nur verlinkt. Slug-Vorschlag: `runbook-audit-saas`.

## Notes / assumptions

- ASSUMPTION: Konkreter Preispunkt für pragmatic-ai-systems-Projekte (€3–5k)
  ist unverifiziert und stammt allein aus `00`.
- ASSUMPTION: Es existiert kein Nachweis, dass Besucher, die das Tool nutzen,
  überhaupt zu Beratungs-Leads werden — reine Funnel-Hypothese, unverändert
  gegenüber der Vorversion.
- ASSUMPTION: Lead-Magnet-Conversion-Benchmarks (35–55 % für Rechner/Tools,
  38,5 % B2B-Quiz-Durchschnitt) sind Branchenwerte, nicht spezifisch für dieses
  Tool gemessen.
- Gegenüber der Vorversion **korrigiert**: „kein Unfair Advantage" war laut K6
  sachlich falsch (bestehende Marke/Content-Kanal + Agent-Orchestrierungs-
  Erfahrung sind real) und wurde in dieser Revision entsprechend eingepreist.
