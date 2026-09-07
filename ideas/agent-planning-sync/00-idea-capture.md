---
slug: agent-planning-sync
title: Bidirektionale Sync zwischen .planning/-Markdown und Linear/Jira ohne Canvas
status: active
created: 2026-09-07
stage: 0
---

# 00 — Idea Capture

## Raw idea
Ein schlankes Sync-Tool, das **agentenlesbare Planungsartefakte** (`.planning/*.md`, `STATE.md`, `ROADMAP.md` etc.) **bidirektional mit Linear/Jira** synchronisiert — als CLI/Git-Hook, ohne Canvas-Editor. Zielkunde ist der **Engineering-Manager / Tech-Lead (5–30 Devs)**, dessen Team einerseits im Board arbeitet (Stakeholder-Transparenz, Reporting) und andererseits Agents (bb, Claude Code, Codex) direkt auf Markdown-Plänen arbeiten lässt. Heute laufen Board und Agent-Artefakte auseinander — doppeltes Pflegen, Drift, verlorene Entscheidungen. Das Tool hält beide Welten konsistent: Markdown → Issues (inkl. Status, Owner, Dependencies) und Issues → Markdown (Kommentare, Status-Changes zurück in die Agent-Pläne).

Pivot-Herkunft: `auramindmapper-release` (Outreach 3/10, Product 8/10, PR #22). Mindmapping als Kategorie ist voll besetzt (teilweise gratis). Das echte verwertbare Segment ist nicht die Visualisierung, sondern das **Ops-Problem „Board und Agent laufen auseinander"** — es ist konkret, wiederkehrend und kaltakquise-fähig.

Wertversprechen (K1-konform, keine Lückenbehauptung): Engineering-Teams sparen die manuelle Doppelpflege zwischen Agent-Plänen und Board, behalten eine einzige Quelle der Wahrheit für Planung und bleiben auditierbar — ohne zusätzlichen Canvas, ohne Workflow-Umstellung.

## Monetization assumption
**B2B SaaS / Self-hosted CLI + GitHub App**, 2 Tiers: **€49/Mo** (Solo/Team bis 10 Seats, Linear-only, CLI-only) und **€199/Mo** (Team 11–50 Seats, Linear+Jira, GitHub App + Webhook-Sync, SLA-light). Alternativ **€990 Einmal-Setup** als "Board→Markdown Migration + Sync-Setup" für Teams, die nicht monatlich zahlen wollen. ASSUMPTION: 40 % der Kunden wählen Jahreszahlung mit 2 Monaten Rabatt → effektiver ARPU ~€95/Mo bei Mix. Ziel: 30 zahlende Teams in 12 Monaten → ~€30–45k ARR, erweiterbar über Agent-Plattform-Integrationen (bb, openclaw-Skill) als Distributionshebel. Kein per-Seat-Preiswucher — Wettbewerb liegt bei €8–15/Seat bei Board-Tools selbst, deshalb Fixpreis pro Workspace.

## Solo fit
**Pro:** Sehr kleiner Scope (Markdown-Parser + Linear/Jira-API + Konfliktstrategie), klarer B2B-Zahler mit Budget, Julians unfairer Vorteil direkt nutzbar (bb-Orchestrierung, agentenlesbare Artefakte, ~20 Repos mit `.planning/`-Praxis, DACH-Netzwerk). Kein Sales-Team nötig — ICP erforschbar über Linear/Jira-Nutzer + Agent-Nutzer-Schnittmenge. Buildbar solo in 2–4 Wochen für CLI-MVP, erweiterbar ohne Team.

**Contra:** Abhängigkeit von Linear/Jira-APIs (Breaking Changes, Rate-Limits), Glaubwürdigkeit bei Enterprise-Jira (On-Prem, Compliance). Risiko: Teams lösen das mit "Disziplin statt Tool" oder bauen intern ein Skript. Kein täglicher Burning Pain — eher wöchentlicher Drift-Schmerz vor Planning/Review.

## Trigger / why now
- `auramindmapper-release` zeigte: Mindmapping ist besetzt, aber die Nachfrage nach **agentenlesbaren Planungsartefakten** ist real — genau Julians eigener Workflow (`.planning/`, `STATE.md`) ist dafür der Prototyp.
- Agent-Adoption in Dev-Teams 2025/2026 sprunghaft gestiegen (Claude Code, Codex, Cursor, bb); gleichzeitig bleiben Jira/Linear die Reporting-Quelle für Stakeholder — **Split entsteht jetzt**, nicht vor 2 Jahren.
- Linear und Jira haben stabile, gut dokumentierte APIs; Markdown als Planungsquelle ist durch Agent-Workflows (bb `IMPLEMENTATION-PLAN.md`, Claude Code `PLAN.md`) de facto Standard geworden.

## Open questions
- Zahlen Engineering-Manager für Sync, oder sehen sie das als "einmaliges Skript, das ein Dev in einem Nachmittag baut"?
- Wie groß ist die Schnittmenge "nutzt Linear/Jira UND lässt Agents auf Markdown planen" heute wirklich — Nische oder wachsend?
- Konfliktauflösung: Welche Quelle gewinnt bei gleichzeitigem Edit (Board vs. Markdown), ohne Nutzer zu frustrieren?
- Reicht CLI/Git-Hook, oder braucht es zwingend eine gehostete Webhook-Komponente für Jira-Cloud?
- DACH-Compliance-Hebel: Reicht "keine Daten verlassen EU" als Wedge gegen US-Tools?
