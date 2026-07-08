# Hermes — Idea-to-Outreach Workflow (Agent / Codex Router)

This file is the intent-router for Codex and other AGENTS.md-aware agents. It is
the same contract as [`CLAUDE.md`](CLAUDE.md); read that for the full stage map.

## Intent routing

Match the user's intent to a skill in `skills/` and run it against the current
idea folder (`ideas/<idea-slug>/`). Skills are self-contained `SKILL.md` files.

| If the user wants to… | Run skill | Reads → Writes |
|---|---|---|
| Devalidate / kill-or-keep an idea | **Run the Stage 1 chain** via `workflows/1-devalidation.md`: `trend-analysis`, `competitor-mapper`, `desire-evaluator`, `pricing-and-wtp`, `distribution-analysis`, `retention-predictor`, `cac-modeler`, `boring-and-trends-check`, `idea-scoring`, `gtm-mode-selector`, `decision-memo` (+ `weakness-detection`, `pivot-engine` on a `pivot` verdict) | `00` → per-skill JSON in `ideas/<slug>/` + `memory/market_insights/…` → `01-devalidation-report.md` |
| Design the smoke-test landing page | `landing-page-brief` | `01` → `02-landing-page-test.md` |
| Define the ideal customer | `icp-profiler` | `01`,`02` → `03-icp-and-positioning.md` |
| Write value propositions | `value-props` | `01`,`03` → `03-icp-and-positioning.md` |
| Find the competitive wedge | `competitive-wedge` | `01`,`03` → `03-icp-and-positioning.md` |
| Pick the go-to-market motion | `gtm-mode-selector` | `01`,`03` → `03-icp-and-positioning.md` |
| Produce the outreach plan (1PMP, drip angles, offer block) | `outreach-assets` | `03` → `04-outreach-plan.md` |
| Build the lead list | `lead-list-builder` | `03` → `04-outreach-plan.md` + `leads.csv` |
| Diagnose a running campaign | `campaign-diagnostics` | Postgres → `05-campaign-diagnostics.md` |

## Non-negotiable rules

1. **Human gates.** Advance a stage only after the reviewer types
   `GREENLIGHT NEXT STAGE`. Reviews are `PASS` / `PASS WITH CHANGES` / `FAIL`.
2. **Stage 1 abort rule.** `idea-scoring` verdict `drop` (score `< 40/100`) →
   stop, mark `dropped`. Scoring refuses with < 3 of 7 dimensions (Demand +
   Distribution mandatory).
3. **Skills do not call skills.** The `workflows/*.md` orchestrator passes
   artifacts. Each skill reads one artifact and writes one artifact.
4. **No invented facts.** Label assumptions `ASSUMPTION:`.
5. **Legal before send.** UWG §7(2) / GDPR — see `IMPLEMENTATION-PLAN.md` §7.

## Stage 4 (execution) is not an agent job

Stage 4 runs in n8n (`n8n/`), not in this agent. The agent's job at Stage 4 is
limited to (a) producing `04-outreach-plan.md` + `leads.csv` for import, and
(b) running the `campaign-diagnostics` skill to read Postgres and write
`05-campaign-diagnostics.md`.
