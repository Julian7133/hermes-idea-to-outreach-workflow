# Hermes — Idea-to-Outreach Workflow (Agent / Codex Router)

This file is the intent-router for Codex and other AGENTS.md-aware agents. It is
the same contract as [`CLAUDE.md`](CLAUDE.md); read that for the full stage map.

> Pipeline v2: [`IMPLEMENTATION-PLAN-v2.md`](IMPLEMENTATION-PLAN-v2.md)

## Intent routing

Match the user's intent to a skill in `skills/` and run it against the current
idea folder (`ideas/<idea-slug>/`). Skills are self-contained `SKILL.md` files.

| If the user wants to… | Run skill | Reads → Writes |
|---|---|---|
| Devalidate / kill-or-keep an idea | `clearframe-devalidation` + `boring-and-trends-check` | `00` → `01-devalidation-report.md` |
| Define the ideal customer | `icp-profiler` | `01` → `03-icp-and-positioning.md` |
| Write value propositions | `value-props` | `01`,`03` → `03-icp-and-positioning.md` |
| Find the competitive wedge | `competitive-wedge` | `01`,`03` → `03-icp-and-positioning.md` |
| Pick the go-to-market motion | `gtm-mode-selector` | `01`,`03` → `03-icp-and-positioning.md` |
| Produce the outreach plan (1PMP, drip angles, offer block) | `outreach-assets` | `03` → `04-outreach-plan.md` |
| Build the lead list | `lead-list-builder` | `03` → `04-outreach-plan.md` + `leads.csv` |
| Diagnose a running validation campaign | `campaign-diagnostics` | Postgres → `05-campaign-diagnostics.md` |

## Non-negotiable rules

1. **Human gates before behavioural work.** Advance to outreach prep or send only
   after the reviewer types `GREENLIGHT NEXT STAGE`. Reviews are
   `PASS` / `PASS WITH CHANGES` / `FAIL`.
2. **Stage 1 auto-kill.** Devalidation score `< 4/10` → stop, mark `dropped`, no
   `GREENLIGHT` needed.
3. **Skills do not call skills.** The `workflows/*.md` orchestrator passes
   artifacts. Each skill reads one artifact and writes one artifact.
4. **No invented facts.** Label assumptions `ASSUMPTION:`.
   **Live research before market verdicts:** skills that make market claims
   (`clearframe-devalidation`, `boring-and-trends-check`, `competitive-wedge`,
   `icp-profiler`) must run live web research and cite sources before scoring or
   positioning — internal model knowledge alone is never sufficient.
5. **Legal before send.** UWG §7(2) / GDPR — see `IMPLEMENTATION-PLAN.md` §7.
6. **No landing-page stage.** Do not read or write `02-landing-page-test.md`.

## Stage 3 (validation send) is not an agent job

Stage 3 runs in n8n (`n8n/`), not in this agent. The agent's job at Stage 3 is
limited to (a) producing `04-outreach-plan.md` + `leads.csv` for import, and
(b) running the `campaign-diagnostics` skill to read Postgres and write
`05-campaign-diagnostics.md` with a validation PASS/FAIL verdict.
