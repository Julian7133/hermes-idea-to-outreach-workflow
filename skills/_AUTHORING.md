# Skill authoring spec (read before writing any SKILL.md)

Every skill in this repo is exactly **one job**. Follow this format so the
orchestrator (`workflows/*.md`) can chain them. The canonical example is
[`clearframe-devalidation/SKILL.md`](clearframe-devalidation/SKILL.md) — match
its shape.

## Required structure of `<skill>/SKILL.md`

1. **YAML frontmatter** with exactly these keys:
   ```yaml
   ---
   name: <folder-name, kebab-case>
   description: >-
     2–4 sentences. Start with the stage. Say what artifact it reads and what it
     produces, and include natural trigger phrases a user would type.
   stage: <0|1|2|3|4>
   reads: ideas/<slug>/<NN-artifact>.md   (and/or memory/…)
   writes: ideas/<slug>/<NN-artifact>.md  (say which section if shared)
   ---
   ```
2. **`# Skill: <Title>`** heading.
3. **A one-paragraph role/mandate** — the mindset and the hard constraints.
4. **`## Input`** — exactly which artifact(s) to read and the precondition
   (what to do if the input is missing/incomplete: stop and ask).
5. **`## Process`** — numbered, deterministic steps. This is the real content.
6. **`## Output`** — the exact Markdown (or JSON) block to write, matching the
   corresponding `ideas/_TEMPLATE/` artifact section.

## Non-negotiable rules (put teeth on these in every skill)

- **Skills never call other skills.** They read an artifact and write an
  artifact. The workflow Markdown passes results between them.
- **No invented facts.** Estimates are labelled `ASSUMPTION:`.
- **Structured output only**, matching the template in `ideas/_TEMPLATE/`.
- **Never advance a human gate.** Gates need `GREENLIGHT NEXT STAGE` from a human.
- **Match the exemplar's tone:** operator-grade, skeptical, concise, no fluff.

## Which template section each skill fills

| Skill | Writes → artifact (section) |
|---|---|
| clearframe-devalidation | `01` — Verdict + CLEARFRAME/Market Reality |
| boring-and-trends-check | `01` — Boring & Trends |
| landing-page-brief | `02` — full brief (results filled by human) |
| icp-profiler | `03` — ICP |
| value-props | `03` — Value propositions |
| competitive-wedge | `03` — Competitive wedge |
| gtm-mode-selector | `03` — GTM mode |
| outreach-assets | `04` — 1PMP, drip angles, Offer/CTA/Voice config block |
| lead-list-builder | `04` — Lead sourcing + `leads.csv` (schema = `n8n/sql/outbound.sql` `leads`) |
| campaign-diagnostics | `05` — full diagnostics report (from Postgres) |
