---
slug: adoptabot
title: adoptabot — AI-Readiness-Assessment mit abteilungsweisen Use-Case-Empfehlungen
status: dropped
created: 2026-08-18
revised: 2026-08-18
stage: 0
---

# 00 — Idea Capture

> **Revision 2026-08-18.** Erster Kill (PR #6, Score 2/10) hat ein kostenloses
> Hyperscaler-Assessment als K.-o.-Kriterium gewertet, ohne zu prüfen, ob ein
> DACH-Segment für mehr als das Gratis-Angebot zahlt (Support, Sprache,
> Onboarding, Datenschutz, laufende Aktualisierung). Diese Revision korrigiert
> das nach K1–K6 aus `ORCHESTRATOR-PROMPT.md` — siehe `01-devalidation-report.md`
> für das neu recherchierte Ergebnis. Status bleibt `dropped` (`outreach_score`
> weiterhin `< 4`), aber der `product_score` und der Produktkern für den MVP
> sind diesmal nicht weggeworfen.

## Raw idea

Ein Tool, das die **AI-Readiness eines Unternehmens** einschätzt: Branche des
Kunden sowie das AI-Knowhow der Mitarbeitenden/Kollegen werden erfasst und
eingestuft. Daraus generiert das Tool **3 empfohlene AI-Use-Cases pro
Abteilung** (z. B. Marketing, Vertrieb, Support). Im Hintergrund läuft
**wöchentlich eine automatisierte State-of-the-Art-Recherche** (Agent-gestützt),
die die Empfehlungen aktuell hält, ohne dass der Anbieter manuell nachpflegen
muss. Monetarisierung zusätzlich über **Affiliate-Provisionen auf empfohlene
Kurse/Schulungen** (z. B. wenn ein Use Case ein Skill-Gap aufdeckt, wird ein
passender Kurs empfohlen). Zielgruppe: KMU-Geschäftsführung oder
Abteilungsleiter, die wissen wollen, wo im Unternehmen AI sinnvoll einsetzbar
ist, ohne selbst Marktüberblick zu haben.

## Monetization assumption

Zwei Erlösquellen: (1) Subscription **ASSUMPTION: €49–99/Monat** pro
Unternehmen für laufend aktualisierte Use-Case-Empfehlungen (Zugriff auf
Dashboard, State-of-the-Art-Updates); (2) Affiliate-Provisionen auf
empfohlene Kurse (ASSUMPTION: 20–30 % Standardsatz bei Kursplattformen wie
Udemy/Coursera-Partnerprogrammen — nicht firmenspezifisch verifiziert). Modell:
monatliches Abo mit wiederkehrender Zahlung, kein Einmalprojekt.

## Solo fit

**Pro:** Software-artiger Kern (Assessment-Formular → Regel-/LLM-basierte
Empfehlung → Dashboard) ist solo baubar als MVP; die "State-of-the-Art
recherchiert sich selbst" (Agent-Pipeline) senkt den manuellen Pflegeaufwand
gegenüber einem klassischen Beratungsprodukt. Nach K6: Julian hat tiefe,
praktische Erfahrung mit Agent-Orchestrierung (bb, openclaw, Claude Code,
Multi-Agent-Workflows) — genau die Kompetenz, die die alte Bewertung als
größtes Solo-Risiko benannte ("verlässliche, branchenübergreifende
Agent-Recherche-Pipeline"), ist real vorhanden, nicht "kein Vorteil benannt".

**Contra:** Zwei sehr unterschiedliche Kompetenzfelder nötig (Assessment-Logik
+ zuverlässige, aktuelle Recherche-Pipeline über viele Branchen hinweg) —
Qualität der Empfehlungen hängt an einer nicht-trivialen Agent-Infrastruktur,
die als Solo-Gründer laufend überwacht werden muss (Recherche-Drift, falsche
Empfehlungen = Vertrauensverlust). Community-Effekt ("geteilte Use Cases")
braucht kritische Masse an Nutzern, die ein Solo-Start nicht sofort hat.

## Trigger / why now

Generative-AI-Adoption in KMU wird 2025/2026 vielfach als "Wissenslücke, nicht
Tool-Lücke" beschrieben — viele Firmen wissen laut Marktbeobachtung nicht,
*wo* im eigenen Betrieb AI ansetzen soll, obwohl Tools verfügbar sind.
ASSUMPTION: Der eigentliche Engpass ist unternehmensspezifische Orientierung,
nicht das Fehlen von AI-Tools selbst. **Neu verifiziert in der Revision:** die
~30 deutschen Mittelstand-Digital-Zentren (kostenlose staatliche KI-Beratung)
laufen zum 31.12.2026 aus; ab 2027 entsteht eine reale Lücke bei kostenloser
Orientierungshilfe für deutsche KMU (siehe `01`, Cited market signals).

## Open questions

- Gibt es bereits etablierte AI-Readiness-Assessment-Anbieter (Berater,
  SaaS, kostenlose Self-Assessments großer Anbieter wie Microsoft/Google) und
  zu welchem Preis? → **Beantwortet in `01`:** ja, mehrschichtig kostenlos/
  subventioniert besetzt (Hyperscaler-Quiz, Mittelstand-Digital, BAFA-Zuschuss).
- Ist "AI-Readiness einschätzen" ein Pain, für den KMUs zahlen, oder wird das
  bereits kostenlos von Cloud-Anbietern/Beratungen als Lead-Magnet angeboten?
- Reicht ein wöchentlicher Agent-Recherche-Zyklus, um Empfehlungen wirklich
  aktuell und vertrauenswürdig zu halten, oder ist das Halluzinationsrisiko bei
  branchenspezifischen Use-Case-Empfehlungen zu hoch für ein Solo-Produkt?
- Trägt das Affiliate-Modell auf Kurse überhaupt nennenswert zum Umsatz bei,
  oder ist es nur ein Nice-to-have ohne Materialität?
- **Neu:** Trägt eine Neuausrichtung auf EU-AI-Act-Pflichtendokumentation (statt
  generischer Use-Case-Empfehlung) das Preismodell besser? Siehe Pivot-Signal
  in `01`.
