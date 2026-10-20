---
slug: agent-fleet-cost-governance
title: Agent Fleet Cost Governance — Slack-Bot/Alerting + Budget-Cap-Enforcement
status: dropped
created: 2026-09-07
stage: 1
---

# 00 — Idea Capture

## Raw idea

Slack-Bot/Alerting-Layer mit **Budget-Cap-Enforcement** für Teams, die mehrere openclaw-/Claude-Code-Agenten in CI oder autonom laufen lassen. Statt reiner Anzeige (Dashboard/Menüleisten-Widget) greift das Tool **operativ** ein: Team-Budgets, pro-Agent-Limits und Forecast-Alerts in Slack, bei Schwellen automatischer Stop/Kill-Switch und täglich/wöchentlich Forecast-Bericht. Pivot aus `agent-usage-dashboard` (NO-GO outreach 2/10, product 3/10, PR #18/#2): dort war der Markt für Solo-Dev-Widgets von Gratis-Tools besetzt — hier verschiebt sich das Zielsegment auf **Eng-Lead/Platform-Lead mit Budgetrisiko** und der Kanal von Cold Email auf **Ops-/Slack-nahe Erreichbarkeit**. Für openclaw speziell existiert kaum dediziertes Dritt-Tooling.

Wertversprechen (K1-konform, keine erfundene Lücke): **Teams geben Agenten Geld aus, wissen aber nicht wann, wo und von wem das Budget verbrannt wird — dieses Tool macht Kosten sichtbar *und* stoppbar, bevor die Rechnung überrascht.** Fokus: Governance, nicht Beobachtung.

## Monetization assumption

B2B-SaaS, Team-Lizenz. **€99–199/Monat pro Team** (bis 10 Agents) + €19/Agent/Monat darüber; alternativ **€199–390/Monat Fixpreis** für 10–20 Agents inkl. Forecast + Kill-Switch. Einmaliges Setup €490 (Slack-Connect + Budget-Policies). ASSUMPTION: Ziel 30 Teams × €149/Mo = ~€53k ARR Year-1 bei Nische, 80 Teams × €149 = ~€143k ARR bei Traktion. Budget-Träger ist Eng-Lead/FinOps, nicht Einzel-Dev — höhere Zahlungsbereitschaft als Solo-Widget (€19–39/Mo).

Kein reines Monitoring: **Enforcement** (Cap, Auto-Stop, Approval-Gate) ist der bezahlte Mehrwert gegenüber Gratis-Dashboards.

## Solo fit

**Pro:** Narrow Schnitt (Ingest: openclaw + Claude Code Usage-APIs/Logs → Slack-Bot + Budget-Engine), 100% Software, kein Vor-Ort, Julians unfairer Vorteil überdurchschnittlich: tiefe Erfahrung mit bb/openclaw/Claude Code/Multi-Agent-Workflows, eigener Usage-Code (`osx-menulet-subscription-usage`), 20 Projekte, DACH-Freelancer-Marke (berlow.de/pragmatic-ai-systems). Solo baubar: Slack-Bot + Telemetry-Ingest + einfache Cap-Logik, keine Enterprise-Compliance-Module in v1.

**Contra:** Enforcement in CI/autonomer Umgebung ist vertrauenssensibel (falscher Kill = Workflow-Bruch); Teams mit mehreren Agenten sind 2026 noch selten (early market); Budget-Hoheit liegt beim Lead — Solo muss Lead-Persona überzeugen, nicht Dev.

Gesamt: **Guter Solo-Fit für Ops-Nische**, wenn der Markt groß genug ist — bau- und deliverbar solo.

## Trigger / why now

- `agent-usage-dashboard` (A2) starb daran, dass Solo-Dev-Anzeige von Gratis-Widgets (inkl. openclaw-eigenem) und menubar-Tools bereits bedient war; **Torii** (einziger zahlender Mitbewerber dort) positionierte sich bereits auf Team-Ops-Governance/Budget-Forecast — Hinweis, dass die **Governance-Nische** die wertigere ist. Pivot-Bewertung lag nahe: `agent-usage-dashboard` NO-GO outreach 2/10, product 3/10 wegen fehlendem Wedge im Solo-Segment.
- Agent-Adoption in Teams steigt (bb, Claude Code, openclaw autonom in CI), Kosten sind **unvorhersehbar** (Token-Bursts, Loops, parallele Runs), erste Paid-Tools (AgentWatch $39/Mo für Solo, Torii Team-Pricing) signalisieren Budget-Schmerz.
- Für openclaw-Agenten existiert kaum dediziertes Drittanbieter-Tooling (ASSUMPTION) — Chance auf schmalen, aber eigenständigen Wedge.

## Open questions

- Gibt es genug Teams, die **mehrere** Agenten parallel **bezahlt** betreiben und dafür kalt anschreibbar sind — oder ist das 2026 noch ein Power-User-Club von <500 Teams DACH/EU?
- Ist **Cold Outreach** dafür der richtige Kanal, oder braucht es Community/Slack/Marketplace/SEO (K4-Split: outreach vs. product)?
- Zahlt ein Eng-Lead für Enforcement (Cap/Stop), oder reicht ihm Gratis-Monitoring + manueller Blick auf die Rechnung?
- Wie zuverlässig sind die Usage-Signale (OpenAI/Anthropic APIs, openclaw Logs) für tagesgenaue Caps — und wie vermeidet ein Kill-Switch False Positives in CI?
