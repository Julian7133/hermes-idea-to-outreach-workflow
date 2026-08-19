# 01 — Devalidation Report

> Filled by `clearframe-devalidation` + `boring-and-trends-check`, unter der
> Kalibrierung K1–K6 (siehe `ORCHESTRATOR-PROMPT.md`). Diese Version greift
> **den Realisten-Plan `00c-realist.md` an**, nicht die rohe Idee aus `00`.
> Scores hier sind die **Kritiker-Erstbewertung**; die endgültigen Scores
> stehen erst in `01b-synthese.md` (siehe dort).

## Verdict — FINAL (nach Synthese, siehe `01b-synthese.md`)
- **outreach_score:** 4/10 — **NO-GO** für Stage 2/3 (unter Stage-2-Schwelle 7,
  aber ≥4 → **kein Auto-Kill**, Idee bleibt `status: active`)
- **product_score:** 5/10 — **buildable: yes**
- **One-line reason:** Nach einer Synthese-Überarbeitung (Trägerprodukt auf
  Nischentools ohne native Personalisierung verengt, Käufer auf Kleinstteams
  mit Geschäftsadresse erweitert) bleibt ein kleiner, aber realer Produktkern
  übrig — für die Hermes-Cold-Outreach-Pipeline strukturell zu schwach
  (kleines Ticket, warmer statt kalter Kanal), für einen Solo-MVP-Bau
  tragfähig.

### Kritiker-Erstbewertung (vor Synthese, zur Nachvollziehbarkeit)
- **Score outreach_score:** 3/10
- **Score product_score:** 4/10
- **Go/No-Go (outreach):** NO-GO
- **One-line reason:** Der von 00c gewählte Schnitt (neues Trägerprodukt +
  Chat-Personalisierung) kollidiert mit einem bereits verifizierten, kostenlos
  im Team-Plan enthaltenen Airtable-Feature ("Personal Views") und mit dem
  wachsenden Do-it-yourself-Vibe-Coding-Trend — der Wedge existiert, ist aber
  in dieser Ausprägung schmaler als im Plan angenommen; die Zielgruppe (Solo-
  Freelancer, Wunsch-basierter Kanal statt Cold Outreach) macht den Score fürs
  Outreach-Gate zusätzlich schwach.

## Store-Policy-Frage aus BACKLOG.md — geprüft, kein Killgrund
Verifiziert (siehe Quellen unten): Apple erlaubt Remote-/Feature-Flag-
Steuerung, solange der Code bereits im geprüften Binary enthalten ist und
Änderungen **Daten**, nicht ausführbaren Code betreffen; jede beworbene
Funktion muss zum Review-Zeitpunkt vollständig funktionsfähig sein, nicht
versteckt. Das im Realisten-Plan beschriebene Verhalten (Sortierung, Layout,
Feldnamen, Sichtbarkeit einzelner Felder — reine Präsentations-/Config-Ebene)
fällt in die erlaubte Kategorie. Zusätzlich umgeht der von 00c gewählte
"kleinste Beweis" (Web-Dashboard, kein App-Store-Vertrieb) das Thema ohnehin
vollständig. **Kein harter Einwand.**

## CLEARFRAME breakdown (gegen den Plan aus 00c)

| Lens | Assessment |
|---|---|
| **C**ustomer | Freelancer/Kleinstunternehmer (1–3 Personen) mit öffentlich geäußertem Frust über ein generisches Tool — konkret genug, keine erfundene Lücke (K1 beachtet: 00c behauptet nicht "niemand bedient das", sondern nennt eine Reibung). |
| **L**onging/Job | Ansicht/Workflow an die eigene Arbeitsweise anpassen, ohne Custom-Dev-Auftrag zu beauftragen. |
| **E**xisting solution | Airtable **Personal Views** (im $20/Nutzer/Monat Team-Plan enthalten, verifiziert), Notion (jetzt mit "Custom Agents", $10/1.000 Credits, kann Integrationen/Workflows selbst bauen), generische No-Code-Configurator (Retool für Entwickler, Noloco/Softr für Portale), plus zunehmend: der Nutzer bittet einfach ein KI-Coding-Tool (Lovable, Replit Agent, Claude Code) direkt, ihm sein eigenes kleines Tool zu bauen. |
| **A**lternative cost | ASSUMPTION: 1–3 h/Monat Workaround-Reibung + Frustkosten (Abbruchrisiko: 68 % der Remote-Teams berichten laut Buffer 2025, dass Tools nicht zu ihrem Workflow passen — Signal existiert, ist aber nicht auf Solopreneure verengt). |
| **R**eachability | Persona ist **nicht** kalt anschreibbar im klassischen Sinn — 00c wählt selbst einen warmen Kanal (Kommentare/Foren) statt Cold Outreach. Für die Hermes-Pipeline (1:1-Mailgun-Kaltakquise) ist das ein struktureller Mismatch, kein Wettbewerbsproblem (K4: das ist ein Vertriebsurteil, kein Produkturteil). |
| **F**requency | Strukturschwach: der Wunsch-Loop hat eine natürliche Sättigung — sobald die 3–5 größten Reibungen behoben sind, sinkt die Nutzungsfrequenz der Kernfunktion (Chatfeld) auf nahe null; Retention hängt dann am Trägerprodukt selbst, nicht an der Personalisierung. |
| **R**evenue | 29–39 €/Monat (00c) ist plausibel kalkuliert, aber ASSUMPTION ohne Marktvergleich — Airtable Team-Plan liegt bei 20 $/Nutzer/Monat und liefert einen Teil derselben Funktion (Personal Views) bereits mit. |
| **A**dvantage | Nach K6 gilt: tiefe Agent-Orchestrierungs-Erfahrung (bb, Claude Code, Multi-Agent) ist ein echter Vorteil beim *Bauen* der Prüf-Pipeline — senkt die Effort-Schätzung aus 00c glaubwürdig. Kein Vorteil bei Distribution/Audience in der Freelancer-Nische. |
| **M**oat-later | Schwach: die Kernfähigkeit (Ansicht personalisieren) wird von Airtable/Notion graduell nativ nachgezogen; ein eigenständiges Trägerprodukt müsste dauerhaft gegen Incumbent-Feature-Parität ankämpfen. |
| **E**ffort | 6/10 solo für den kleinsten Beweis (00c-Schätzung 8–12 Tage ist realistisch für die Config-Ebene), aber laufender Prüf-Aufwand pro Wunsch bleibt eine Variable, die mit Nutzerzahl skaliert — nicht einmalig gelöst. |

## CLEARFRAME + Market Reality
- **TAM (sanity):** ASSUMPTION: DACH-Solopreneure/Kleinstunternehmer mit
  aktiver Nutzung eines generischen CRM/Dashboard-Tools grob im niedrigen
  sechsstelligen Bereich; zahlungsbereit für einen 29–39 €/Monat-Aufpreis
  realistisch ein sehr kleiner Bruchteil davon (niedrige vierstellige
  Größenordnung) — kein Massenmarkt, aber auch keine Fantasy-TAM-Behauptung.
- **Saturation / competition:** **Verifiziert, nicht besetzungsfrei.** Airtable
  Personal/Locked Views sind bereits Teil des 20 $/Nutzer/Monat Team-Plans
  ([SmartSuite Airtable-Pricing-Review 2026](https://www.smartsuite.com/blog/airtable-pricing),
  [Noloco Airtable-Pricing 2026](https://noloco.io/blog/airtable-pricing)).
  Notion führte im Februar 2026 "Custom Agents" ein (10 $/1.000 Credits,
  Integrationen für Linear, Figma, HubSpot, Stripe, GitHub, Intercom) —
  Incumbents bauen genau in diese Richtung
  ([Userpilot, AI in SaaS 2026](https://userpilot.com/blog/ai-in-saas/)).
  Feature-Flag-Infrastruktur selbst ist ebenfalls besetzt (LaunchDarkly ab
  ~12 $/Sitz, GrowthBook 199 $/Monat für 20 Sitze, Flagsmith/Unleash
  Open-Source) — für den Personalisierungs-*Endnutzer* irrelevant, aber
  relevant, falls Ausprägung A (Plattform/SDK) später verfolgt wird
  ([CloudBees LaunchDarkly-Alternativen 2026](https://www.cloudbees.com/blog/launchdarkly-alternatives),
  [GrowthBook LaunchDarkly-Alternativen](https://www.growthbook.io/blog/launchdarkly-alternatives)).
- **Category maturity & growth:** Emerging/Growth — "KI-gestützte
  Per-Nutzer-Personalisierung" ist kein etabliertes Kaufkriterium, aber die
  Bausteine (Agenten, die Code/Config on-demand ändern) wachsen schnell mit
  dem Vibe-Coding-Trend (siehe unten). Risiko: die Kategorie könnte von
  Incumbents "mitgegessen" werden, bevor ein Solo-Player Marke aufbaut.
- **CAC vs CLV sanity:** ASSUMPTION: 29 €/Monat, 8–12 Monate Retention (durch
  Wunsch-Sättigung eher kürzer als bei klassischem SaaS) → CLV ~230–350 €.
  Cold-Outreach-CAC für Einzelpersonen mit kleinem Ticket ist strukturell
  eng; 00c umgeht das bewusst über einen warmen Community-Kanal — das ist
  vertrieblich vernünftig, bedeutet aber, dass diese Idee **nicht** primär
  über die Hermes-Mailgun-Pipeline skaliert (K4: eigenständiges
  Vertriebsurteil, trennt sich vom Produkturteil).
- **Difficulty score:** 6/10
- **Key risks:**
  1. **Feature-Parität durch Incumbents** — Airtable/Notion bewegen sich aktiv
     in Richtung Per-Nutzer-Personalisierung; ein neues Trägerprodukt
     konkurriert direkt statt eine Lücke zu füllen.
  2. **DIY-Substitution durch Vibe-Coding** — dieselbe Technologie, die den
     Bau für Julian billig macht, macht Self-Service für technisch affine
     Nutzer ebenso billig (siehe Trends-Sektion); die Zielgruppe muss
     nachweisbar *nicht-technisch* genug sein, dass sie das nicht selbst tut.
  3. **Wunsch-Sättigung** — die Kernfunktion (Chat→Änderung) hat pro Nutzer
     eine natürliche Obergrenze; ohne Anschlussnutzen sinkt die Retention.

## Cited market signals (researched 2026-08-19)
- App-Store-Policy zu Feature-Flags/Remote-Config: erlaubt für Daten, nicht
  für ausführbaren Code; jede beworbene Funktion muss beim Review vollständig
  funktionieren ([RevenueCat, iOS Remote-Testing-Regeln](https://www.revenuecat.com/blog/engineering/ios-remote-testing-ban),
  [Apple Developer Forums, Feature Flags & 2.3.1](https://developer.apple.com/forums/thread/72176),
  [Apple App Store Review Guidelines](https://developer.apple.com/app-store/review/guidelines/)).
- Airtable Personal/Locked Views bereits im 20 $/Nutzer/Monat Team-Plan
  enthalten ([SmartSuite Airtable-Pricing 2026](https://www.smartsuite.com/blog/airtable-pricing),
  [Noloco Airtable-Pricing 2026](https://noloco.io/blog/airtable-pricing)).
- Notion Custom Agents seit Februar 2026, 10 $/1.000 Credits, mit
  Drittanbieter-Integrationen ([Userpilot, AI in SaaS 2026](https://userpilot.com/blog/ai-in-saas/)).
- Vibe-Coding-Markt 2026: ~4,7 Mrd. $ Marktgröße, 38 % CAGR; Kosten für ein
  funktionsfähiges SaaS-Produkt von ~200.000 $ auf ~5.000 $ gefallen, Bauzeit
  von sechs Monaten auf sechs Wochen; 63 % der Vibe-Coding-Nutzer sind
  Nicht-Entwickler ([Axis Intelligence, Vibe-Coding-Statistiken 2026](https://axis-intelligence.com/vibe-coding-statistics/)).
- Retool-Report 2026: 35 % der Enterprise-Teams haben bereits mindestens ein
  SaaS-Produkt durch eine selbstgebaute Alternative ersetzt, 78 % erwarten
  mehr davon im laufenden Jahr ([Axis Intelligence, Vibe-Coding-Statistiken 2026](https://axis-intelligence.com/vibe-coding-statistics/)).
- 68 % der Remote-Teams sagen laut Buffer "State of Remote Work" 2025, dass
  ihre aktuellen Tools nicht zu ihrem Workflow passen ([SpeakWise, Workplace
  Technology Overload Statistics 2026](https://speakwiseapp.com/blog/workplace-technology-overload-statistics)).
- LaunchDarkly/Feature-Flag-Infrastrukturpreise als Kontext für Ausprägung A
  ([CloudBees LaunchDarkly-Alternativen 2026](https://www.cloudbees.com/blog/launchdarkly-alternatives),
  [GrowthBook LaunchDarkly-Alternativen](https://www.growthbook.io/blog/launchdarkly-alternatives)).

## Boring & Trends check
> Wird unten nach der Synthese ausgeführt, da der Auftrag den finalen Score
> aus `01b-synthese.md` maßgeblich setzt (siehe dort für die endgültige
> Verdict-Zusammenfassung). Diese Sektion bezieht sich auf den nach der
> Synthese gültigen Stand.

- **Boring/niche defensibility:** Ja, unsexy genug — "Sortierung und
  Feldnamen für eine einzelne Person anpassen" ist kein Produkt-Hunt-Launch-
  Thema und kein VC-Pitch; nach der Synthese-Verengung auf Nischentools ohne
  native Personalisierung schützt das zusätzlich vor den Incumbents
  (Airtable, Notion), die im großen, sichtbaren Trägerprodukt-Markt bleiben.
- **Sociological trend:** "Tool-Workflow-Mismatch-Frust" — 68 % der Remote-
  Teams sagen laut Buffers "State of Remote Work" 2025, ihre Tools passten
  nicht zu ihrem tatsächlichen Workflow; das ist kein auf Kleinstteams
  verengtes Signal, stützt aber die Grundannahme, dass generische
  Software-Rigidität ein aktives, benanntes Problem ist, nicht nur eine
  00c-Behauptung ([SpeakWise, Workplace Technology Overload Statistics 2026](https://speakwiseapp.com/blog/workplace-technology-overload-statistics)).
  Macht diese Idee jetzt viabler als vor 12–24 Monaten, weil Remote-/Solo-
  Arbeit die Zahl der Kleinstteams ohne IT-Abteilung erhöht hat, die mit
  generischer Nischensoftware auskommen müssen.
- **Technological trend:** "Vibe Coding / KI-Coding-Agenten senken die Kosten
  für Bespoke-Software drastisch" — Marktgröße 4,7 Mrd. $ 2026 bei 38 % CAGR,
  Baukosten eines SaaS-Produkts von ~200.000 $ auf ~5.000 $ gefallen
  ([Axis Intelligence, Vibe-Coding-Statistiken 2026](https://axis-intelligence.com/vibe-coding-statistics/)).
  Macht den Prüf-und-Build-Schritt aus 00c (Agent prüft Wunsch, generiert
  Feature-Flag-Änderung) heute günstig genug für eine Solo-Umsetzung — war
  vor 12–24 Monaten so nicht machbar. **Gleichzeitig ist das derselbe Trend,
  der den größten Konkurrenten dieser Idee erzeugt: den Nutzer selbst, der
  direkt ein KI-Coding-Tool fragt.** Das ist im Kritiker-Abschnitt oben als
  Kernrisiko vermerkt, nicht hier weggelassen.

## Produktkern für den MVP
(Pflicht, da `product_score` ≥ 4 — siehe `01b-synthese.md` für die
Herleitung.)

- **Eine Funktion, die den Schmerz löst:** Ein Chatfeld auf einem
  bestehenden Nischen-Branchentool (Auftrags-/Fallverwaltung), über das ein
  Nutzer eine Config-Ebenen-Änderung (Sortierung, Spaltenreihenfolge,
  Feldbezeichnung, Sichtbarkeit) vorschlägt; ein Agent prüft die Anfrage
  gegen eine feste Liste erlaubter Änderungsarten, lässt sie bestätigen und
  liefert die Änderung ausschließlich für diesen einen Nutzer per
  Feature-Flag aus.
- **Für wen genau:** Ein Kleinstteam (2–5 Personen) in einer
  Dienstleistungsbranche (Handwerk, Kanzlei, Beratung), das ein
  branchenspezifisches Nischentool ohne native Personalisierungsfunktion
  nutzt und öffentlich (Foren, Reviews, Community) Frust über die starre
  Standardansicht geäußert hat.
- **Kleinster lauffähiger Beweis:** Für genau einen realen Nutzer manuell
  (ohne volle Automatisierung) dessen größten geäußerten Änderungswunsch in
  einem Mini-Dashboard umsetzen und kostenlos zeigen — vor jedem Bau der
  Agent-Pipeline erst 5–10 gesammelte, öffentlich geäußerte Wünsche
  klassifizieren (Config-Ebene vs. echte Logikänderung; siehe RAT unten).

## Riskiest assumption test (RAT)
- **What to test next:** Vor jedem Code-Investment die riskanteste Annahme
  aus 00c prüfen: 5–10 echte, öffentlich geäußerte Änderungswünsche aus
  Freelancer-Foren sammeln und klassifizieren (Konfig-Ebene vs. echte
  Logikänderung). Erst danach: Stage-3-Validation-Send o.ä. — aber siehe
  Reachability-Befund oben, klassischer Cold-Outreach ist hier vermutlich
  nicht der richtige Kanal.
- **Kill signal:** Wenn die Mehrheit der gesammelten Wünsche echte
  Logikänderungen sind (nicht Config-Ebene), ist der "kleinste Beweis" aus
  00c nicht haltbar.

## Notes / assumptions
- ASSUMPTION: 29–39 €/Monat Preispunkt ohne direkten Marktvergleich kalkuliert.
- ASSUMPTION: TAM-Schätzung DACH-Solopreneure grob, keine Primärquelle
  gefunden, die genau diese Untermenge beziffert.
- K1 beachtet: keine erfundene Lückenbehauptung übernommen — 00c behauptet
  keine Marktlücke, sondern eine konkrete Reibung; diese wurde geprüft, nicht
  unterstellt.
