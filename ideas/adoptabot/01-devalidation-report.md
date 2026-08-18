# 01 — Devalidation Report

> Filled by `clearframe-devalidation`. **Revision 2026-08-18** — Requeue nach
> K1–K6-Kalibrierung (`ORCHESTRATOR-PROMPT.md`). Erste Runde (PR #6, 2026-08-18,
> Score 2/10) hatte ein kostenloses Hyperscaler-Assessment als K.-o. gewertet,
> ohne K3 (Gratis ist ein Preisanker, kein Todesurteil) anzuwenden und ohne
> aktive Wedge-Suche (K2). Diese Revision trägt beides nach und vergibt zwei
> getrennte Scores nach K4. `boring-and-trends-check` **nicht** ausgeführt —
> `outreach_score` bleibt `< 4` (Auto-Abort).

## Verdict

- **outreach_score:** 3/10 — **NO-GO** für Cold Outreach
- **product_score:** 5/10 — Produktkern lohnt Weiterverfolgung, aber nicht als
  ursprünglich geplantes Abo-Produkt
- **One-line reason:** Das Kernprodukt aus `00` (genereller Readiness-Score +
  3 Use-Cases/Abteilung als €49–99/Mo-Abo) bleibt gegen ein **dreifach
  kostenloses/subventioniertes** deutsches Angebot (Hyperscaler-Quiz + die
  ~30 staatlichen Mittelstand-Digital-Zentren + BAFA-Zuschuss von 50–80 % auf
  bezahlte Beratung) strukturell unterlegen — aber die Recherche fand einen
  echten, bisher unbedienten Wedge (EU-AI-Act-Pflichtendokumentation, laufend,
  DACH-Sprache, Wegfall der Gratis-Beratung ab 2027), der eine **andere**
  Produktform trägt als die in `00` beschriebene.

## CLEARFRAME breakdown

| Lens | Assessment |
|---|---|
| **C**ustomer | KMU-Geschäftsführung/Abteilungsleiter (ASSUMPTION: 10–200 MA, DACH) — nicht "jede KMU". |
| **L**onging/Job | Wissen, wo AI im eigenen Betrieb ansetzt, ohne selbst Marktüberblick zu recherchieren — **und** (neu) wissen, was der EU AI Act ab 2.8.2026 konkret von ihnen verlangt. |
| **E**xisting solution | Kostenlose Vendor-Assessments (Microsoft, Google Cloud, Cisco, Star Nova AI); **kostenlose staatliche Erstberatung** über ~30 Mittelstand-Digital-Zentren (bis 31.12.2026); **BAFA-bezuschusste** externe Beratung (50–80 % Zuschuss, max. €3.500/Beratung, bis 31.12.2026); Berater-Audits ohne Zuschuss ($2k–25k); „nichts tun". |
| **A**lternative cost | ASSUMPTION: Zeitverlust durch Trial-and-Error bei 8.000+ beworbenen AI-Tools — aber bereits durch drei verschiedene Gratis-/Zuschuss-Kanäle adressiert (stärker besetzt als in der ersten Runde angenommen). |
| **R**eachability | Zielgruppe über LinkedIn erreichbar — Cold Outreach muss aber gegen ein Gratis-Angebot **und** ein staatlich subventioniertes Beratungsangebot gleichzeitig differenzieren. Die EU-AI-Act-Frist ist dagegen ein scharfer, terminierter Anlass mit hoher Öffnungsrate ("haben Sie Ihr AI-Inventar dokumentiert?"). |
| **F**requency | Readiness-Assessment selbst: selten (einmalig/quartalsweise). EU-AI-Act-Pflichtendokumentation: **strukturell wiederkehrend** — neue Systeme, neue Risikoeinstufungen, Fristen bis 2027/2028 (Digital Omnibus). |
| **R**evenue | ASSUMPTION: €49–99/Mo für die ursprüngliche Idee bleibt unbelegt — der einzige verifizierte Zahlungsdatenpunkt bleibt Einmal-Consulting ($2k–25k) bzw. BAFA-bezuschusste Beratung (€700–7.000 Bruttoauftrag, Kunde zahlt netto 20–50 %). Für eine Compliance-Tracking-Variante ist ein Vergleichspreis vorhanden: Semrush-artige AI-Monitoring-Abos liegen bei ~$99/Monat — ein plausibler Anker für ein wiederkehrendes Compliance-Dashboard, nicht für generische Use-Case-Vorschläge. |
| **A**dvantage (K6) | Tiefe, praktische Erfahrung mit Agent-Orchestrierung (bb, openclaw, Claude Code, Multi-Agent-Workflows) — genau die Komponente, die die erste Runde als größtes technisches Solo-Risiko markierte ("verlässliche, branchenübergreifende Agent-Recherche-Pipeline"), ist bei Julian überdurchschnittlich vorhanden. Kein bestehender Zugang zu KMU-Entscheidern oder Branchenautorität. |
| **M**oat-later | Community-Effekt ("geteilte Use Cases") bleibt Henne-Ei-Problem ohne Nutzerbasis. Bei der Compliance-Variante: ein laufend aktueller AI-Act-Pflichtenkatalog pro Branche wäre ein realer Datenmoat, aber rechtlich haftungssensibel (siehe Risiken). |
| **E**ffort | 7/10 solo für die ursprüngliche Idee (branchenübergreifende, halluzinationsarme wöchentliche Recherche-Pipeline). Für die Compliance-Variante ähnlich hoch, zusätzlich mit Haftungsrisiko bei Fehlklassifizierung. |

## CLEARFRAME + Market Reality

- **TAM (sanity):** ASSUMPTION: mehrere Hunderttausend DACH-KMU mit
  AI-Interesse; zahlungsbereit **für ein generisches Abo-Assessment-Tool**
  bleibt ein kleiner, unbestätigter Rest, da drei kostenlose/subventionierte
  Wege bereits existieren. Für **EU-AI-Act-Compliance-Tracking** ist die
  TAM enger, aber die Zahlungspflicht ist regulatorisch erzwungen, nicht
  optional — strukturell anderer Charakter (K5: "struktureller Zwang").
- **Saturation / competition:** **VERIFIED (Aug 2026): dreifach besetzt.**
  (1) Microsoft/Google/Cisco/Star Nova AI kostenlose Readiness-Quizzes
  (unverändert aus Runde 1). (2) **Neu:** ~30 deutsche
  Mittelstand-Digital-Zentren bieten seit 2024 schrittweise kostenlose
  KI-Erstberatung, Demonstratoren und Workshops — laufen aber zum 31.12.2026
  aus, Nachfolgestruktur ab 2027 unklar. (3) **Neu:** BAFA bezuschusst externe
  KI-/Digitalisierungsberatung mit 50–80 % (max. €3.500 Zuschuss pro
  Einzelberatung) bis 31.12.2026 — der einzige real belegte Zahlungskanal ist
  damit **subventionierte Einzelberatung**, kein SaaS-Abo. Enterprise-seitig
  bleibt AIDOLS-artige Beratung bei €180–1.200/h bzw. €40k+ für
  compliance-nahe Assessments mit deutscher Datenresidenz — bestätigt, dass
  DACH-Compliance/-Sprache ein realer Preisaufschlag ist, aber weit über dem
  geplanten €49–99/Mo-Punkt.
- **CAC vs CLV sanity:** ASSUMPTION: €79/Mo, 6–8 Monate Retention → ~€550
  CLV für die ursprüngliche Idee. Outreach muss jetzt gegen **zwei**
  kostenlose/subventionierte Angebote gleichzeitig argumentieren — CAC
  realistisch weiterhin >€300, strukturell marginal. Für ein
  AI-Act-Compliance-Abo (Anker ~$99/Mo nach Semrush-Vergleich) ist die
  Rechnung offener, aber unverifiziert für diese spezifische Kategorie.
- **Difficulty score:** 7/10
- **Key risks:**
  1. **Preismodell passt nicht zum verifizierten Zahlungsverhalten** — der
     einzige belegte DACH-Zahlungskanal ist bezuschusste Einzelberatung
     (BAFA), kein wiederkehrendes SaaS-Abo für generische Use-Case-Vorschläge.
  2. **Dreifache Gratis-/Subventions-Konkurrenz statt einfacher** — die erste
     Runde kannte nur die Hyperscaler-Quizzes; die Revision findet zusätzlich
     zwei staatlich getragene Kanäle, die das Preisproblem verschärfen, nicht
     lindern.
  3. **Der tragfähigste Wedge ist ein anderes Produkt** — EU-AI-Act-
     Pflichtendokumentation ist real, wiederkehrend und terminiert, aber das
     ist nicht die in `00` beschriebene Idee (Readiness-Score + Use-Cases +
     Kurs-Affiliate); ein Pivot würde Rechtsberatungsnähe und Haftungsfragen
     mitbringen, die außerhalb von Julians bisherigem Terrain liegen.

## Cited market signals (researched 2026-08-18)

- Mittelstand-Digital-Zentren: ~30 staatlich geförderte Zentren bieten seit
  2024 kostenlose KI-Erstberatung, Demonstratoren und Workshops für den
  deutschen Mittelstand; die aktuelle Struktur läuft **zum 31.12.2026 aus**,
  Nachfolge ab 2027 offen ([Skill-Sprinters](https://skill-sprinters.de/blog/foerderung/mittelstand-digital-zentren-kostenlose-ki-beratung-2026/), [mybusinessfuture](https://mybusinessfuture.com/mittelstand-digital-zentren-bmwk-foerderung-auslauf-2026-nachfolge-2027/)).
- BAFA-Förderung für Unternehmensberatung (inkl. KI-/Digitalisierungsthemen)
  bezuschusst 50 % (alte Bundesländer) bis 80 % (neue Bundesländer) der
  Beratungskosten, max. €3.500 Zuschuss pro Einzelberatung, Richtlinie läuft
  bis 31.12.2026 ([Förder-Kompass](https://foerder-kompass.de/foerdermittel-digitalisierung-ki/), [hypescale](https://hypescale.com/de/blog/ki-foerderung-kmu-2026-programme-zuschuesse)).
- DACH-spezifische Compliance-/Sprach-Beratung wird real bepreist, aber weit
  über dem geplanten Preispunkt: AIDOLS bietet AI-Readiness-Score +
  90-Tage-Roadmap mit deutscher Datenresidenz, Engagements von €40k
  (compliance-aware Assessment) bis €500k–3M+ (Produktivbetrieb);
  Stundensätze €180–1.200 ([AIDOLS](https://aidolsgroup.com/no/ai-consulting/germany/saas/)).
- Deutscher Mittelstand bevorzugt lange Evaluationszyklen (4–12 Wochen),
  On-Premise/Sovereign-Cloud, deutschsprachiges Projektmanagement und
  EU-/DACH-Datenresidenz als Standardanforderung — bestätigt, dass Sprache und
  Datenresidenz reale (aber nicht allein ausreichende) Differenzierungsmerkmale
  sind ([AIDOLS](https://aidolsgroup.com/no/ai-consulting/germany/saas/)).
- EU AI Act: Transparenzpflichten (Chatbots, KI-generierte Inhalte) gelten
  **verbindlich seit 2.8.2026**; Hochrisiko-Pflichten nach Digital-Omnibus-
  Einigung vom 7.5.2026 verschoben auf Dezember 2027 (Anhang III) bzw. August
  2028 (Anhang I). Nationale Aufsichtsbehörden müssen kostenlose Erstberatung
  anbieten, KMU erhalten Erleichterungen ([sage.com](https://www.sage.com/de-de/blog/eu-ai-act-2026-fuer-den-mittelstand-fristen-pflichten-und-compliance/), [secjur](https://www.secjur.com/blog/eu-ai-act)).
- Vergleichbarer Preisanker für ein wiederkehrendes AI-Monitoring-Abo:
  Semrush AI Visibility Toolkit ~$99/Monat/Domain (tägliches Prompt-Tracking,
  Reporting) — zeigt, dass der Markt $99/Mo für laufend aktualisierte
  AI-Intelligence-Produkte zahlt, allerdings in einer anderen Kategorie
  (Sichtbarkeits-Monitoring, nicht Readiness-Beratung) ([Vergleichsartikel, s.o. Suchergebnis "AI readiness subscription recurring monitoring"], Kategorie-Analogie, keine direkte Bestätigung für adoptabot).

## Produktkern für den MVP

*(Pflicht, da `product_score` = 5 ≥ 4 — auch wenn `outreach_score` < 4 ist.)*

**Nicht** der ursprünglich geplante generische Readiness-Score + 3
Use-Cases/Abteilung — dafür bleibt keine belegte Zahlungsbereitschaft am
geplanten Preispunkt. Der tragfähigste Kern aus dieser Recherche ist enger und
konkreter:

- **Eine Funktion:** ein agentengestütztes **EU-AI-Act-Pflichten-Inventar**
  für DACH-KMU — das Tool fragt strukturiert ab, welche AI-Systeme im Betrieb
  im Einsatz sind (gekauft, eingebettet, selbstgebaut), ordnet sie den
  Risikoklassen des AI Act zu, und hält diese Zuordnung durch die
  wöchentliche Agent-Recherche-Pipeline aktuell, wenn sich Fristen oder
  Einstufungen ändern (z. B. Digital-Omnibus-Verschiebungen).
- **Für wen genau:** DACH-KMU-Geschäftsführung/Compliance-Verantwortliche
  (10–200 MA), die bereits irgendeine Form von AI im Betrieb haben (Copilot,
  Chatbot, eingebettete AI-Features in SaaS-Tools) und ab 2.8.2026 real
  dokumentationspflichtig sind.
- **Kleinster lauffähiger Beweis:** ein CLI/Formular, das für 5–10 typische
  DACH-KMU-AI-Einsatzszenarien (z. B. "Chatbot auf der Website",
  "Copilot in Microsoft 365", "KI-gestützte Bewerber-Vorauswahl") automatisch
  die passende AI-Act-Risikoklasse und Handlungsfrist ausgibt, mit Quellenlink
  pro Einstufung — kein Dashboard, keine Persistenz nötig für den Beweis.
- **Warnung, nicht Empfehlung:** dieser Kern grenzt an Rechtsberatung
  (Haftungsrisiko bei Fehlklassifizierung). Vor jedem weiteren Aufwand: klären,
  ob ein Disclaimer-Modell ("Orientierungshilfe, ersetzt keine Rechtsberatung")
  rechtlich und geschäftlich tragfähig ist — das ist außerhalb des Scopes
  dieser Devalidierung.

## Boring & Trends check

- Nicht ausgeführt — `outreach_score` 3/10 < 4/10, Auto-Abort greift laut
  `workflows/1-devalidation.md`.

## Riskiest assumption test (RAT)

- **What to test next:** *Nicht empfohlen über diese Pipeline* (Cold Outreach
  bleibt NO-GO). Falls der Produktkern (AI-Act-Inventar) weiterverfolgt wird:
  5–10 Gespräche mit DACH-KMU-Compliance-/Geschäftsführung zur Frage "Wissen
  Sie, welche AI-Act-Risikoklasse Ihre eingesetzten AI-Tools haben?" — vor
  jedem weiteren Aufwand, und getrennt von der Rechtsfrage zum
  Disclaimer-Modell.
- **Kill signal:** N/A — bereits auf Desk-Stufe (Outreach) gekillt.

## Notes / assumptions

- ASSUMPTION: Affiliate-Provisionssätze (20–30 %) auf Kursplattformen weiterhin
  nicht firmenspezifisch verifiziert — bei geschwächtem Kernprodukt weiterhin
  nicht materialitätsrelevant.
- ASSUMPTION: $99/Mo-Preisanker aus der AI-Visibility-Monitoring-Kategorie
  (Semrush) ist eine **Analogie**, keine direkte Bestätigung für eine
  AI-Act-Compliance-Kategorie — als Kategorie-Vergleich, nicht als belegter
  Preis für adoptabot markiert.
- Community-Effekt ("geteilte Use Cases") bleibt unverifiziert als Moat.
- **Korrektur gegenüber PR #6:** die erste Runde wertete "Microsoft/Google/
  Cisco bieten das kostenlos an" allein als K.-o. Diese Revision hat aktiv
  nach zahlungsfähigen Elementen gesucht (Sprache, Datenresidenz, Support,
  Aktualität, Compliance) und **zwei zusätzliche** kostenlose/subventionierte
  Kanäle gefunden (Mittelstand-Digital-Zentren, BAFA-Zuschuss) — das
  Preisproblem für die ursprünglich geplante Idee ist damit nach Recherche
  **schlechter belegt, nicht besser**, als in Runde 1 angenommen. Der Kill
  bleibt bestehen, aber jetzt mit vollständiger Wedge-Suche (K2) statt
  Vermutung, und mit einem sauber getrennten `product_score`, der den echten
  Fund (EU-AI-Act-Pflichteninventar) nicht wegwirft.
