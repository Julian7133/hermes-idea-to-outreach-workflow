# Hermes — Idea-to-Outreach Workflow (Claude Code Router)

This repository turns a raw product idea into a validated cold-outreach campaign
through four gated stages. Stages 0–3 run as **Markdown skills** (in `skills/`)
driven by an agent (Claude Code / Cursor / Codex). Stage 4 runs as **n8n
workflows** against **Postgres** and sends through **Mailgun** (see `n8n/`).

> Full rationale and decisions: [`IMPLEMENTATION-PLAN.md`](IMPLEMENTATION-PLAN.md).

## How to work in this repo

1. **One idea = one folder** under `ideas/<idea-slug>/`. Copy `ideas/_TEMPLATE/`
   to start. Artifacts are numbered `00`–`05` and each stage consumes the hard
   artifact of the previous stage.
2. **Skills are the unit of work.** Each folder in `skills/` has a `SKILL.md`
   describing exactly one job: its inputs (which artifact it reads), its process,
   and its output (which artifact it writes). **Skills never call each other** —
   the workflow Markdown in `workflows/` is the orchestrator that passes
   artifacts from one skill to the next.
3. **Gates are human.** A stage only advances when the reviewer types the
   override phrase **`GREENLIGHT NEXT STAGE`**. Reviews use the
   **`PASS` / `PASS WITH CHANGES` / `FAIL`** model. Never advance a gate on your
   own; ask for the phrase.
4. **Ideas are never deleted.** A killed idea gets `status: dropped` in its
   `00-idea-capture.md` frontmatter. This keeps the token-saving devalidation
   history intact.

## Stage map

| Stage | Skill(s) | Reads | Writes | Gate |
|---|---|---|---|---|
| 0 | (manual capture) | — | `00-idea-capture.md` | — |
| 1 | `clearframe-devalidation`, `boring-and-trends-check` | `00` | `01-devalidation-report.md` | Score ≥ 4/10 **and** `GREENLIGHT NEXT STAGE` |
| 2 | `landing-page-brief` | `01` | `02-landing-page-test.md` | Cost per e-mail < 8 USD |
| 3 | `icp-profiler`, `value-props`, `competitive-wedge`, `gtm-mode-selector` | `01`, `02` | `03-icp-and-positioning.md` | — |
| 3 | `outreach-assets`, `lead-list-builder` | `03` | `04-outreach-plan.md` + `leads.csv` | `GREENLIGHT NEXT STAGE` → campaign |
| 4 | n8n (`n8n/workflows/`) + `campaign-diagnostics` | Postgres | `05-campaign-diagnostics.md` | KPI: 30 discovery calls / ≥1 preorder |

## Hard rules

- **Stage 1 abort rule:** if the devalidation score is `< 4/10`, stop immediately
  and mark the idea `dropped`. Do not spend tokens on later stages.
- **No invented facts.** Skills reason from the captured idea and cited market
  signals only. If a number is an assumption, label it `ASSUMPTION:`.
- **Structured output only.** Every skill writes Markdown (or JSON where noted),
  matching the template in its `SKILL.md`.
- **Legal gate before any real send.** Read [`IMPLEMENTATION-PLAN.md` §7](IMPLEMENTATION-PLAN.md)
  (UWG §7(2) / GDPR). The default is compliant, cautious, 1:1 outreach — not
  bulk mail.

## Where things live

- `skills/` — canonical skill definitions (`SKILL.md` per folder).
- `workflows/` — stage orchestration (which skill runs, in what order, gate logic).
- `ideas/<slug>/` — per-idea artifacts.
- `memory/` — `user_profile.md` + `market_insights/` reused across ideas.
- `n8n/` — Docker Compose, SQL schema, workflow JSON, setup README.
- `AGENTS.md` — the same router for Codex; `.cursor/rules/` — the same for Cursor.
