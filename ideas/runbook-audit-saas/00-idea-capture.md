---
slug: runbook-audit-saas
title: Runbook-Reliability-Audit — kostenpflichtiges Self-Service-Audit für Teams mit mehreren Prompts/CI-Integration
status: active
created: 2026-09-07
stage: 0
---

# 00 — Idea Capture

## Raw idea

Ein kostenpflichtiges Self-Service-Tool, das Teams mit mehreren LLM-Prompts / Agent-Skills ein strukturiertes **Runbook-Reliability-Audit** liefert — statt einzelnem Prompt-Check: Batch-Upload mehrerer Prompts oder Repo-Integration, automatisierte Bewertung je Prompt (Klarheit der Schritte, fehlende Guardrails, Fehlerfälle, Reproduzierbarkeit, Drift-Risiken), plus aggregierter Report mit priorisierten Fix-Empfehlungen. Pivot aus `skill-tester-tool` (PR #21, outreach 3/10 NO-GO, product 6/10): Der Gratis-Einzel-Check als Lead-Magnet scheiterte als Cold-Outreach-Case an drei Konversionsschritten vor Umsatz (Tool → Lead-Capture → Discovery-Call → €3–5k Projekt). Der Wedge selbst — Runbook-Spezifität + Ops-Fokus statt generischem Prompt-Grading — blieb unbesetzt. Diese Idee dreht den Preis um: direkt verkauft, einmalig **99–199 €** pro Audit, sauber als 1:1-Cold-Outreach ansprechbar (käufliches Produkt, keine Funnel-Kette).

> **Kein Gratis-Anspruch im Wertversprechen.** Kein "es gibt noch kein Tool für X". Wertversprechen = konkreter Nutzen für einen benennbaren Käufer zu einem benannten Preis (K1). Wettbewerb existiert (siehe 01), Wedge-Suche (K2) ist explizit Teil der Devalidierung.

## Monetization assumption

**Modell:** Einmalzahlung pro Audit (Self-Service, kein Abo). **Preis: 99 € (Solo/Team klein, ≤10 Prompts) / 199 € (Team/Repo, ≤50 Prompts + CI-Hook)** — zahlbar per Stripe, sofortiger Report-Download. ASSUMPTION: Durchschnitt ~130 € netto je Audit nach Stripe-Gebühren.

**Folgeumsatz optional, nicht eingepreist:** Beratungs-Upsell (Runbook-Härtung €1.5–3k Sprint) nur als CTA im Report, kein Funnel-Zwang — der Audit trägt sich allein. Diese Trennung behebt den CAC/CLV-Mismatch von `skill-tester-tool`: 199 € CLV im ersten Send, nicht €0.

**ASSUMPTION Volumen:** 25–40 Audits/Monat über Cold Outreach + Content-Retargeting → ~3–5k €/Monat Umsatz als Solo-Nebenprodukt. Kein Abo-Churn-Risiko, aber Wiederkauf nur bei Re-Audit (Release-Zyklen).

## Solo fit

**Pro:** Scope eng und solo baubar — LLM-Batch-Scoring + regelbasierte Checks + PDF/Markdown-Report, kein Multiplayer, keine Datenhaltung außer Upload-Session. Dockt an bestehende Marke berlow.de/pragmatic-ai-systems an; Julians unfairer Vorteil (K6) greift direkt: Agent-Orchestrierung/bb-Erfahrung, 20+ eigene Agent-Projekte, DACH-Marke + bestehende Sendeinfrastruktur. Produktion = LLM-API-Kosten pro Audit (cents), nicht Stunden.

**Contra:** Support-Risiko bei Repo-Integration/CI (unterschiedliche Stacks). Einmalzahlung = kein Compounding; braucht kontinuierlichen Zufluss. QA: LLM-Scoring muss reproduzierbar genug sein, um 99 € wert zu sein — sonst Refund-Risiko.

**Fazit:** Solo-geeignet als "boring, nischig" Produkt (wenige Prompts sind Commodity, Runbook-Audit für Teams ist es nicht).

## Trigger / why now

- `skill-tester-tool` zeigte in PR #21: Der Wedge (Runbook-Spezifität + Beratungs-CTA) trug, aber das Gratis-Lead-Magnet-Modell trug keinen Cold-Outreach-Case. Julian suchte explizit einen Pivot, der denselben Wedge **direkt verkauft**.
- Teams multiplizieren seit 2025 LLM-Prompts/Skills (Agent-Welle), ohne Standard für Zuverlässigkeit; CI-fähige Audits werden als Category nachgefragt (Prompt-Evals, LLM-Eval-Frameworks im Wachstum — Verifikation in 01).
- Preispunkt 99–199 € liegt unterhalb der Enterprise-Eval-Suiten (€500+/Mo) und oberhalb der Gratis-Grader — erschließt zahlungswillige Teams, die keine €3k Beratung wollen, aber auch nicht nur einen kostenlosen Score.

## Open questions

- Wie stark konvertiert 1:1-Cold-Outreach für ein €99–199 Einmalprodukt an Ops-/Platform-Leads vs. Content/Community-Kanal?
- Reicht ein reiner LLM-Score + Regel-Checks als "Audit" (Glaubwürdigkeit), oder braucht es deterministische Evals gegen echte Traces?
- Gibt es bereits einen Wettbewerber, der Batch-Runbook-Audit für 99–199 € anbietet (K2-Suche offen — Annahme: keiner verifiziert, aber Prüfung in 01)?
