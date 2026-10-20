---
slug: ai-slop-fact-check
title: AI-Slop Fact-Check — Gegenprüfung KI-generierter Validierungsreports
status: dropped
created: 2026-09-07
stage: 0
---

# 00 — Idea Capture

## Raw idea
Gegenprüfung KI-generierter Markt-/Validierungsreports gegen echte Quellen. Der Käufer lädt einen bestehenden KI-Report (z. B. von IdeaProof, WorthBuild, ProductGapHunt, IDEAA) hoch oder fügt den Text ein; das Tool prüft systematisch die behaupteten Fakten — Wettbewerberpreise aktuell? Nutzerzahlen belegt? Quellen zitiert oder erfunden? — und liefert einen annotierten Prüfbericht mit Ampel (belegt / nicht belegbar / widerlegt) plus korrigierten Werten und Links. Verkäufer ist ein günstiges KI-Validierungstool hat bereits genutzt (Sunk Cost niedrig, Vertrauen angeknackst) und steht vor einer Investitionsentscheidung (Zeit/Geld für MVP) und will vor dem Bau Sicherheit.

Kein Wertversprechen "es gibt noch kein Tool für X" — der Markt für billige KI-Validierung ist belegt (siehe rebundling-scanner PR #24). Das Wertversprechen ist: aus dem dokumentierten Vertrauensdefizit dieser Tools ein eigenständiges Produkt machen, statt gegen sie um denselben "validiere meine Idee"-Kunden zu konkurrieren.

## Monetization assumption
Einmalzahlung pro geprüftem Report, kein Abo. **€49–€79 pro Fact-Check** (Standard: €59) für einen annotierten Prüfbericht (10–20 behauptete Fakten geprüft, Ampel + korrigierte Preise/Links). Upsell: **€129 "Deep Check"** für Reports mit >20 Fakten oder inkl. 15-Min Loom-Video-Erklärung. Modell bewusst one-off: der Kunde hat genau einen Report vor der Entscheidung zu prüfen, nicht wöchentlich Bedarf. ASSUMPTION: bei 20 Checks/Monat → €1.180–€1.580 MRR-Äquivalent ohne Abo-Churn-Risiko; bei Agentur-Bundling (5-Pack €229) steigt Frequency leicht.

Alternative getestet in 00c falls Einmalpreis zu niedrig für Outreach: Agentur-Bundle.

## Solo fit
Sehr guter Solo-Fit: Recherche-Workflow ist exakt die Arbeit, die `clearframe-devalidation` + `boring-and-trends-check` bereits produktisiert haben (Live-Suche, Preisverifikation, Quellen-Citation). Julians unfairer Vorteil (K6: Agent-Orchestrierung, bb/openclaw, 20 Projekte, DACH-Marke berlow.de/pragmatic-ai-systems, bestehende Sendeinfra) passt 1:1. Kein Team, kein Kapital nötig; deterministischer Prüf-Workflow (Extraktion → Verifikation → Ampel → Report) statt generischer Kreativleistung. Scope klein: genau ein Report-Typ, eine Ausgabe. Schlechter Fit wenn: (a) Zielgruppe empfindet €59 als zu teuer relativ zum €4–20 Original-Report, (b) manuelle Verifikation pro Fakt zu aufwändig für €59-Marge ohne Automatisierung.

## Trigger / why now
Pivot aus `rebundling-scanner` (PR #24): GO outreach 4/10, product 5/10 — dort wurde als Wedge-Suche (K2) dokumentiert, dass IdeaProof/WorthBuild/ProductGapHunt alle um denselben "validiere meine Idee"-Job konkurrieren, aber Reviews IdeaProof als "feel-good machine mit fabrizierten Nutzerzahlen, einem KI-Aufruf pro Report, ohne Live-Daten" beschreiben (WorthBuild-Vergleich, Preuve AI Review). Das ist eine echte, belegte Vertrauenslücke. Gleichzeitig: 2026 ist die "AI Slop"-Debatte Mainstream (AI-generierte Inhalte mit halluzinierten Quellen), EU-AI-Act-Transparenzpflichten und die Verfügbarkeit günstiger Live-Suche-APIs (Tavily, Brave, Perplexity-API) machen einen Fact-Check-Baustein billig baubar — vor 12 Monaten wäre die Verifikation noch teurer gewesen als der Original-Report selbst.

## Open questions
- Ist der Käufer bereit, zusätzlich zum €4–20 Report noch €59 für dessen Prüfung zu zahlen, oder ist das "zweimal zahlen für denselben Job"?
- Welcher Sub-Segment zahlt: Solo-Indie-Hacker (preissensibel, schwacher Outreach-Case aus PR #24) vs. Agentur-/Gründer mit Budget vor MVP-Invest (stärkerer Zahler, bereits in PR #24 als Pivotsignal genannt)?
- Automatisierungsgrad: wie viele der 10–20 Fakten lassen sich deterministisch per Live-Suche verifizieren vs. manueller Recherche, die €59-Marge frisst?
- Recht/Disclaimer: "Gegenprüfung" darf keine Rechts- oder Investitionsberatung suggerieren — Ampel-Modell statt binärem Urteil nötig.
