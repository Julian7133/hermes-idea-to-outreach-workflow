# 01 — Devalidation Report

> Filled von `clearframe-devalidation` + `boring-and-trends-check`. Kritiker-Rolle
> greift den Realisten-Plan aus `00c-realist.md` an (B2B-Vorscreening-Tool für
> Tierarztpraxen), nicht die rohe Idee. Kalibrierung nach K1–K6
> (`ORCHESTRATOR-PROMPT.md`) bindend. Auto-Kill `outreach_score < 4` greift erst
> nach `01b-synthese.md`, nicht nach diesem Bericht.
>
> **Diese Scores sind vorläufig (Kritiker-Erstbewertung).** Nach einer
> Überarbeitungsrunde gegen die weichen Einwände sind die **finalen** Scores in
> [`01b-synthese.md`](01b-synthese.md): outreach_score **5/10**, product_score
> **6/10**, Verdikt **GO**. Kein harter Einwand gefunden, Auto-Kill greift nicht.

## Verdict
- **outreach_score:** 4/10
- **product_score:** 5/10
- **Go/No-Go (outreach):** GO (knapp — Cold Outreach an Tierarztpraxen ist
  strukturell möglich, aber der Markt für Foto-BCS ist bereits besetzt und der
  Adoptionswiderstand bei Tierärzt:innen real).
- **One-line reason:** Foto-basierte Katzen-BCS-Einschätzung per KI existiert
  bereits (Yipara, MeowScan, Auburn-Forschung); der B2B-Vorscreening-Wedge für
  Praxen ist nicht leer (PetChart bündelt Gewichtsverlauf+BCS bereits in
  Praxis-EHR, APOP liefert Vets kostenlose BCS-Tools), aber ein schmaler,
  unbedienter Zwischenraum — DACH-sprachiges, Halter-zu-Praxis-Zwischenbesuchs-
  Tool ohne EHR-Wechselzwang — ist nach Suche benennbar.

## CLEARFRAME breakdown (gegen den Realisten-Plan `00c`)

| Lens | Assessment |
|---|---|
| **C**ustomer | Kleintier-/Katzen-Schwerpunktpraxen (1–3 Tierärzt:innen, DACH), die Gewichtsverlauf bei Diät-/Übergewichts-Patienten zwischen Terminen aktuell nicht systematisch tracken — nicht "alle Tierärzte". |
| **L**onging/Job | Zwischen-Termin-Dokumentation von Gewichts-/BCS-Verlauf ohne zusätzlichen Praxisbesuch, als Gesprächsgrundlage für die nächste Konsultation. |
| **E**xisting solution | Manuelle Palpation bei jedem Praxisbesuch (Goldstandard); Praxis-EHR mit Gewichtshistorie (z. B. PetChart); kostenlose APOP-BCS-Charts/Rechner; Konsumenten-Apps (Yipara, MeowScan) direkt beim Halter, an der Praxis vorbei. |
| **A**lternative cost | ASSUMPTION: verpasste Gewichtstrends führen zu späterer Diagnose von Diabetes/Gelenkproblemen — real, aber schwer bezifferbar; Praxen empfinden aktuell primär Beratungsaufwand, nicht Systemlücke, als Schmerz. |
| **R**eachability | Praxen sind öffentlich gelistet (Tierärztekammer, Google Maps, Praxis-Websites) und kalt anschreibbar — Hermes-kompatibel. Aber: kleine Praxen sind bekanntermaßen software-trag und wechseln Tools selten ohne klaren ROI-Nachweis. |
| **F**requency | Wiederkehrend, wenn als Praxis-Standard genutzt (jede Diät-/Übergewichts-Patientin, laufend) — gute Retention-Grundlage, wenn Adoption gelingt. |
| **R**evenue | €39–59/Mo pro Praxis (Realist-Annahme) — ASSUMPTION: plausibel für ein Zusatz-Tool, aber Praxen budgetieren Software meist als EHR-Gesamtpaket, nicht pro Einzeltool; Zusatzkosten-Akzeptanz unklar. |
| **A**dvantage (K6) | Julian: tiefe Agent-/ML-Orchestrierungserfahrung (bb, Multi-Agent-Workflows), laufender Code in ~20 Projekten inkl. Klassifikations-/Finetuning-Pipelines, DACH-Marke mit Sendeinfrastruktur (berlow.de) — realer, wenn auch nicht domänenspezifischer (kein Vet-Hintergrund) Vorteil beim Bau und beim Cold-Outreach-Betrieb selbst. |
| **M**oat-later | Trainings-/Verlaufsdaten über Zeit je Praxis; verwundbar, falls ein EHR-Anbieter (PetChart o. ä.) Foto-BCS als natives Feature nachzieht. |
| **E**ffort | 6/10 solo für den kleinsten Beweis (Upload-Flow + Vision-Klassifikation + einfaches Dashboard); größte Abhängigkeit ist annotiertes Trainings-/Referenzmaterial für Katzen-BCS. |

## CLEARFRAME + Market Reality
- **TAM (sanity):** ASSUMMPTION: DACH hat ~3.000–5.000 reine Kleintier-/Katzenpraxen (grobe Ordnung, nicht verifiziert); realistische Erstzielgruppe (Katzen-Schwerpunkt, digitalaffin) eher 300–800.
- **Saturation / competition:** **Nicht leer.** Konsumenten-Seite: [Yipara](https://www.yipara.com/cat-bcs) (KI-Foto-BCS für Katzen, Freemium/educational), [MeowScan](https://meowscan.app/) (KI-Foto-Scan, App-Store-Abos ab ca. $2,49/Woche – $12,99/Jahr laut vergleichbarer App-Store-Preisstruktur), [PupPilot](https://www.puppilot.co/resources/tools/pet-body-condition-score) (BCS-Tool für Hunde & Katzen). Praxis-Seite: [PetChart](https://www.pet-chart.com/vet-software-for-cat-clinics) bündelt longitudinales Gewichtstracking + BCS bereits als Feature seiner feline-fokussierten Praxis-EHR (30 Tage Testphase, monatliche Abrechnung, Preis nicht öffentlich einsehbar); [APOP](https://www.petobesityprevention.org/veterinary-resources) liefert Tierärzt:innen kostenlose BCS-Charts/Rechner. Kein DACH-sprachiges, eigenständiges Foto-BCS-Vorscreening-Tool für Praxen gefunden (Suche auf Deutsch nach "Tierarztpraxis Software Gewichtsverlauf Katze BCS Deutschland" ergab nur redaktionelle BCS-Ratgeber, keine Software) — das ist der verbleibende, aber schmale Wedge nach K2.
- **Category maturity & growth:** **Growth.** Foto-basierte Tier-Gesundheitsschätzung ist ein aktives, wachsendes Segment (mehrere neue Konsumenten-Apps 2025/2026), aber noch nicht auf der B2B-Praxisseite als eigenständige Kategorie etabliert — dort ist es bislang ein Feature innerhalb größerer EHR-Suiten.
- **CAC vs CLV sanity:** ASSUMPTION: €49/Mo × angenommene 12 Monate Retention ≈ €588 CLV. CAC über Cold Outreach an Praxen (Recherche + 1:1-Ansprache + Demo) realistisch €150–300 solo — rechnerisch tragfähig, aber abhängig von einer Adoptionshürde, die K3 nicht abdeckt: Software-Trägheit kleiner Praxen ist kein Preis-, sondern ein Wechsel-/Gewöhnungsproblem.
- **Difficulty score:** 6/10.
- **Key risks:**
  1. **Adoptionswiderstand statt Preiswiderstand:** Der stärkste Einwand ist nicht Wettbewerb, sondern dass Tierärzt:innen professionell auf Handpalpation als Goldstandard trainiert sind und ein separates Foto-Tool als zusätzlichen Workflow-Schritt empfinden könnten, statt als Zeitersparnis — unabhängig vom Preis.
  2. **Feature-Nachzieh-Risiko:** Ein EHR-Anbieter wie PetChart kann Foto-BCS jederzeit als natives Add-on nachziehen und damit den eigenständigen Tool-Wedge schließen.
  3. **Trainingsdaten-Engpass:** Ohne tierärztlich annotierte Katzen-BCS-Fotodaten bleibt die Modellgenauigkeit unbewiesen — Auburn-Forschung bestätigt nur die grundsätzliche Machbarkeit, nicht Praxisreife eines konkreten Modells.

## Cited market signals (researched 2026-08-19)
- Direkte Konsumenten-Konkurrenz für Foto-BCS bei Katzen existiert bereits: [Yipara Cat BCS](https://www.yipara.com/cat-bcs) (KI-Foto-Analyse, BCS 1–9, "educational only, not a veterinary diagnosis"); [MeowScan](https://meowscan.app/) (KI-Foto-Scan mit App-Abo).
- Machbarkeit foto-basierter BCS wissenschaftlich untersucht: [Auburn University College of Veterinary Medicine](https://www.vetmed.auburn.edu/blog/cvm-news/picture-of-health-how-feline-obesity-diagnosis-may-change-in-the-era-of-ai/) — Forschungsteam testet, ob BCS allein aus Fotos statt Hands-on-Untersuchung verlässlich bestimmbar ist; als vielversprechend, aber nicht als abgeschlossen dargestellt.
- Praxis-seitige Konkurrenz: [PetChart – Veterinary Software for Cat Clinics](https://www.pet-chart.com/vet-software-for-cat-clinics) bietet longitudinales Gewichtstracking mit BCS als Teil einer feline-fokussierten Praxis-EHR; [APOP Clinical Obesity Tools](https://www.petobesityprevention.org/veterinary-resources) stellt Tierärzt:innen kostenlose BCS-Charts/Rechner bereit.
- Nachfragesignal real und wachsend: 43 % der Katzenhalter:innen berichteten 2025 Übergewicht bei ihrer Katze, gegenüber 33 % in 2024 ([APOP 2025 Pet Obesity and Nutrition Survey](https://pet-obesity-prevention.squarespace.com/2025)); publizierte Klinikdaten zu ~1,3 Mio. übergewichtigen/adipösen Katzen in US-Primärpraxen ([ScienceDirect-Studie](https://www.sciencedirect.com/science/article/pii/S0167587724002848) / [PubMed](https://pubmed.ncbi.nlm.nih.gov/39644829/)).
- Vision-/Multimodal-KI-API-Kosten sind 2026 stark kommoditisiert (Klassifikation ab ca. $0,0003–0,001 pro Bild je nach Anbieter) — technische Machbarkeit solo finanzierbar ([Cheapest Vision & Multimodal LLM API in 2026](https://www.clawrouters.com/blog/cheapest-vision-multimodal-llm-api-2026)).

## Boring & Trends check
- **Boring/niche defensibility:** Unsexy genug — "Foto-basierte BCS-Doku für Katzenpraxen" ist kein Kategorie, für die ein YC-Batch brennt; das Konsumenten-Segment (Yipara, MeowScan) ist bereits leicht hyped, das B2B-Praxis-Segment dagegen unauffällig und klein genug, dass große Player es aktuell nur als Nebenfeature mitführen statt als Kernprodukt zu bauen. Genau das ist die Verteidigungsnische — sie ist aber schmal: Sobald ein EHR-Anbieter das Feature priorisiert, ist der Vorsprung weg.
- **Sociological trend:** **"Pet humanization"/Premiumisierung der Tiergesundheit** — 69 % der Millennials/Gen Z betrachten ihr Haustier als Familienmitglied, 76 % der Halter:innen suchen aktiv Produkte, die Gesundheit/Wohlbefinden ihres Tiers verbessern; der globale Pet-Care-Markt wächst mit 7,1 % CAGR laut Marktbericht. Das erhöht die Bereitschaft von Haltern, Gesundheits-Tracking-Tools zu nutzen und aktiv an die Praxis heranzutragen — stärkt die Nachfrageseite, aber nicht direkt den Praxis-Kaufentscheid. Quelle: [Boston 25 News – Pet humanization trend](https://www.boston25news.com/news/experts-see-rising/3CCLJT3A5Q4SNBLGHHVGEIZWVY/), [Pet Food Processing – Humanization & preventative care](https://www.petfoodprocessing.net/articles/20109-humanization-preventative-care-among-trends-driving-pet-owner-purchasing).
- **Technological trend:** **Kommoditisierung von Vision-/Multimodal-LLM-APIs** — praktisch alle großen Modellanbieter bieten 2026 Bildverständnis über Standard-Chat-Completion-APIs an; Kosten für einfache Bildklassifikation liegen je nach Anbieter bei Bruchteilen eines Cents pro Bild. Das macht den technischen Kern (Foto → BCS-Klassifikation) für einen Solo-Gründer ohne eigenes ML-Team finanzierbar und schnell baubar, senkt aber gleichzeitig die Eintrittsbarriere für jeden anderen Anbieter — auch für PetChart, Yipara oder neue Wettbewerber. Quelle: [Cheapest Vision & Multimodal LLM API in 2026](https://www.clawrouters.com/blog/cheapest-vision-multimodal-llm-api-2026).

## Riskiest assumption test (RAT)
- **What to test next:** Vor jedem Produkt-Code: 5–10 direkte Gespräche mit Katzen-Schwerpunktpraxen (telefonisch/vor Ort), ob Foto-BCS zwischen Terminen als Zusatz-Workflow akzeptiert würde oder als lästige Zusatzsoftware abgelehnt wird — das ist der eigentliche Adoptions-Einwand, nicht der Preis.
- **Kill signal:** Falls ≥7 von 10 angesprochenen Praxen "nutzen wir nicht, wir verlassen uns auf Handuntersuchung" sagen → Adoptionswiderstand bestätigt, B2B-Wedge tot; dann Realist-Ausprägung A/C (Konsument/Nische) neu prüfen.

## Notes / assumptions
- ASSUMPTION: DACH-Praxisanzahl (3.000–5.000) grob geschätzt, nicht verifiziert.
- ASSUMPTION: €39–59/Mo Preispunkt aus `00c-realist.md`, nicht mit realen Praxis-Budgets abgeglichen.
- PetChart-Preis konkret nicht auffindbar (nur "30 Tage Testphase, monatliche Abrechnung") — als Konkurrenzpreis nicht zitierbar, nur als Feature-Beleg.
