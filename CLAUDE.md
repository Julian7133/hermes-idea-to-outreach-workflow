# Hermes — Idea-to-Outreach Workflow (Claude Code Router)

This repository turns a raw product idea into a **behaviourally validated**
cold-outreach test through four stages. Stages 0–2 run as **Markdown skills**
(in `skills/`) driven by an agent (Claude Code / Cursor / Codex). Stage 3
runs as **n8n workflows** against **Postgres** and sends through **Mailgun**
(see `n8n/`).

> Pipeline v2 (current): [`IMPLEMENTATION-PLAN-v2.md`](IMPLEMENTATION-PLAN-v2.md).
> Infra / legal from v1: [`IMPLEMENTATION-PLAN.md`](IMPLEMENTATION-PLAN.md).

## How to work in this repo

1. **One idea = one folder** under `ideas/<idea-slug>/`. Copy `ideas/_TEMPLATE/`
   to start. Artifacts are numbered `00`, `01`, `03`–`05` (no `02` in v2).
2. **Skills are the unit of work.** Each folder in `skills/` has a `SKILL.md`
   describing exactly one job: its inputs (which artifact it reads), its process,
   and its output (which artifact it writes). **Skills never call each other** —
   the workflow Markdown in `workflows/` is the orchestrator that passes
   artifacts from one skill to the next.
3. **Gates are human before behavioural work.** A stage that leads to outreach
   prep or send only advances when the reviewer types **`GREENLIGHT NEXT STAGE`**.
   Reviews use **`PASS` / `PASS WITH CHANGES` / `FAIL`**. Never advance a gate on
   your own; ask for the phrase.
4. **Stage 1 auto-kill.** Score `< 4/10` → mark `status: dropped` and stop
   **without** asking for `GREENLIGHT`.
5. **Ideas are never deleted.** A killed idea gets `status: dropped` (desk kill) or
   `status: validation-failed` (behavioural kill) in `00-idea-capture.md`
   frontmatter.

## Stage map (v2)

| Stage | Skill(s) | Reads | Writes | Gate |
|---|---|---|---|---|
| 0 | (manual capture) | — | `00-idea-capture.md` | — |
| 1 | `clearframe-devalidation`, `boring-and-trends-check` | `00` | `01-devalidation-report.md` | `< 4/10` auto-drop; else `PASS` + `GREENLIGHT` |
| 2 | `icp-profiler`, `value-props`, `competitive-wedge`, `gtm-mode-selector` | `01` | `03-icp-and-positioning.md` | — |
| 2 | `outreach-assets`, `lead-list-builder` | `03` | `04-outreach-plan.md` + `leads.csv` | `GREENLIGHT` → validation send |
| 3 | n8n + `campaign-diagnostics` | Postgres | `05-campaign-diagnostics.md` | ≥1 reply OR ≥3 human clicks |

Workflow files: `1-devalidation.md` → `2-outreach-prep.md` →
`3-validation-send.md`.

## Hard rules

- **Stage 1 abort rule:** if the devalidation score is `< 4/10`, stop immediately,
  mark `dropped`, do not ask for `GREENLIGHT`. Do not spend tokens on later stages.
- **No invented facts.** Skills reason from the captured idea and cited market
  signals only. If a number is an assumption, label it `ASSUMPTION:`.
- **Structured output only.** Every skill writes Markdown (or JSON where noted),
  matching the template in its `SKILL.md`.
- **Legal gate before any real send.** Read [`IMPLEMENTATION-PLAN.md` §7](IMPLEMENTATION-PLAN.md)
  (UWG §7(2) / GDPR). The default is compliant, cautious, 1:1 outreach — not
  bulk mail.
- **No `02-landing-page-test.md`.** Landing-page smoke test is out of scope for v2.

## Where things live

- `skills/` — canonical skill definitions (`SKILL.md` per folder).
- `workflows/` — stage orchestration (which skill runs, in what order, gate logic).
- `ideas/<slug>/` — per-idea artifacts.
- `memory/` — `user_profile.md` + `market_insights/` reused across ideas.
- `n8n/` — Docker Compose, SQL schema, workflow JSON, setup README.
- `AGENTS.md` — the same router for Codex; `.cursor/rules/` — the same for Cursor.
