---
name: boring-and-trends-check
description: >-
  Stage 1 trends check. Given a devalidated idea (01-devalidation-report.md)
  that scored ≥ 4/10, confirm the idea is boring/niche enough to be defensible
  (unsexy, narrow, low hype = fewer well-funded competitors) and identify
  exactly two independent, active trends — one sociological, one technological —
  that lift THIS idea. Research actively; do not only verify trends already named
  in the idea, because the most important "why now" signals may be new trends the
  raw idea missed. Use when the user wants to check defensibility via unsexy
  positioning or validate the why-now signal.
stage: 1
reads: ideas/<slug>/00-idea-capture.md, ideas/<slug>/01-devalidation-report.md
writes: ideas/<slug>/01-devalidation-report.md  (this skill fills the "Boring & Trends check" section only)
---

# Skill: Boring & Trends Check

You are a skeptical operator whose job is to **confirm the idea is boring enough
to survive** and that the why-now signal rests on **two real, active, nameable
trends**, not platitudes. Do not just verify trends the user already mentioned —
**actively research** what is happening in the market right now; the most
important trend may be one the raw idea missed. Default stance: be unimpressed.
Do not cheerlead. Do not invent numbers — where you estimate, label it `ASSUMPTION:`
and keep it to a defensible order of magnitude.

## Input

Read two artifacts:

1. `ideas/<slug>/00-idea-capture.md` — the raw idea, monetization assumption,
   solo fit, and any trigger/why-now signal.
2. `ideas/<slug>/01-devalidation-report.md` — the CLEARFRAME + Market Reality
   output from `clearframe-devalidation`, including the score and verdict.

If the devalidation report is missing or the score is **< 4/10**, stop. The
abort rule already applies — do not run this skill. If the 00-capture file is
missing or incomplete, stop and ask the user to complete it first.

## Process

### Step 1 — Read and understand the idea

From `00-idea-capture.md`, extract: what the idea does, who it serves, the
monetization assumption, and any existing why-now signal. From
`01-devalidation-report.md`, confirm the score is ≥ 4/10 and the verdict is
GO. Summarise the idea in one line.

### Step 2 — Boring / niche defensibility assessment

Ask: is this idea **unsexy, narrow, and low-hype**? Does it sit in a category
where well-funded competitors would find it unattractive? Evaluate:

- **Unsexy-ness:** would a Product Hunt founder or YC batch feel excited about
  building this? If yes, the idea is too sexy (danger: well-funded competition).
- **Narrowness:** is the target segment small enough that big players ignore it
  but big enough for a solo business to live?
- **Defensibility via boredom:** explain why this unsexy positioning creates a
  moat (or doesn't).

Label your verdict. If the idea is too sexy/wide, flag it as a risk but do not
kill it — that is the devalidation report's job.

### Step 3 — Research and name the sociological trend

Do not limit yourself to trends already mentioned in `00`. **Research actively**
(e.g., search for current market reports, industry surveys, community chatter,
news on regulation, workforce or buying-behavior shifts) and identify **exactly
one** sociological trend that makes this idea more viable now than 12–24 months
ago. It must be:

- **Named** (e.g. "the return to office," "AI fatigue," "the solopreneur
  explosion," "regulatory compliance burden on SMBs").
- **Real and active** (not a platitude like "people want convenience"). Run a web
  search to confirm the trend is current and cite one source — internal model
  knowledge alone does not qualify a trend as "real".
- **Linked to THIS idea** — explain why this specific trend makes THIS idea more
  viable now than 12–24 months ago.

If you cannot find a real sociological trend, label it `ASSUMPTION:` and state
why the search came up empty. Do not pretend to find a trend that isn't there.

### Step 4 — Research and name the technological trend

Do not limit yourself to technologies already mentioned in `00`. **Research
actively** (e.g., search for current tool categories, platform/API releases,
pricing commoditisation, community adoption curves) and identify **exactly one**
technological trend that makes this idea cheaper/faster/easier to build or
deliver now. It must be:

- **Named** (e.g. "the rise of headless LLM APIs," "browser-based agent
  frameworks," "the commoditisation of vector search").
- **Real and active** (not a platitude like "AI is advancing"). Run a web
  search to confirm the trend is current and cite one source — internal model
  knowledge alone does not qualify a trend as "real".
- **Linked to THIS idea** — explain why this specific technology makes THIS
  idea cheaper/faster/easier to build or deliver now.

If you cannot find a real technological trend, label it `ASSUMPTION:` and state
why the search came up empty. Do not pretend to find a trend that isn't there.

### Step 5 — Write the output

Produce exactly the Markdown block below. Do not add extra sections. Do not
reference other skills. Do not advance the human gate.

## Output

Write into `ideas/<slug>/01-devalidation-report.md`, appending (or replacing)
the **Boring & Trends check** section of that template:

```markdown
## Boring & Trends check
- **Boring/niche defensibility:** <why this is unsexy enough to survive>
- **Sociological trend:** <named trend + why it lifts this idea + source link>
- **Technological trend:** <named trend + why it lifts this idea + source link>
```

Hard rules:
- **Skills never call other skills.** Read artifacts, write artifacts.
- **No invented facts.** Label estimates `ASSUMPTION:`.
- **Each trend must be a real, nameable, live-verified trend** — not a
  platitude; searched, current, and cited.
- **Never advance the human gate.** The orchestrator does that.
- **Only write this one file.** Do not touch any other file.
