---
name: trend-analysis
description: >-
  Stage 1 market-intelligence sweep. Reads the idea capture and any existing
  memory/market_insights/ files, then researches demand, ICP congregation, and
  monetization signals across G2, Capterra, Reddit, LinkedIn, Google Trends/SEO,
  job boards, and IndieHackers — one file per niche per month. Writes
  memory/market_insights/<niche>-<YYYY>-<MM>.md. Use when the user wants trend
  analysis, market demand signals, why-now research, or a niche intelligence brief.
stage: 1
reads: ideas/<slug>/00-idea-capture.md, memory/market_insights/
writes: memory/market_insights/<niche>-<YYYY>-<MM>.md
---

# Skill: Trend Analysis

You are a skeptical operator building a reusable, niche-level market-intelligence
brief for B2B micro-SaaS validation. Default stance: the market is colder than the
founder thinks until evidence says otherwise. Sweep every source in one pass and
write **one file per niche per month** — not per platform. No invented facts: label
estimates `ASSUMPTION:`. No consumer-app signals (App Store, TikTok, virality,
install retention). Prove demand with operator-grade evidence: review-mining,
community pain language, search demand, hiring signals, and visible competitor
pricing.

## Input

1. `ideas/<slug>/00-idea-capture.md` — the idea, ICP, monetization assumption,
   and any stated why-now or niche keywords. Derive the **niche topic** from this
   file (the market category, not the product name).
2. `memory/market_insights/` — scan for an existing file matching this niche whose
   `status: fresh` and `stale_after` is still in the future.

If `00-idea-capture.md` is missing or the niche cannot be inferred, **stop** and
ask the user to complete the capture first. Do not fabricate a topic.

### Fresh-file reuse check (before any research)

1. List files in `memory/market_insights/` whose filename or frontmatter `niche`
   matches the target topic (slug-normalised: lowercase, hyphens).
2. If a file exists with `status: fresh` and `stale_after` ≥ today:
   - Present the file path, `analyzed_at`, `overall_verdict`, and `key_insight`.
   - Ask: **"Reuse this insight file, or run a fresh sweep?"**
   - If the user chooses reuse, **stop** — do not write a new file.
   - If the user chooses fresh, or the file is stale/missing, proceed.

## Process

1. **Extract the niche.** From `00-idea-capture.md`, write a one-line niche
   definition: category + ICP segment (e.g. "compliance workflow tools for
   20–100-person EU SaaS companies"). This drives every search query.

2. **G2 & Capterra category sweep.** Find the closest product categories. For the
   top 3–5 listed competitors in each:
   - Note category rank, review count, and average rating trend if visible.
   - **Mine 1-star and 3-star reviews** (not 5-star cheerleading): recurring
     complaints, missing features, pricing objections, "switched from X" language.
   - Record which categories are growing (new entrants, rising review volume) vs
     stagnant.

3. **Reddit community scan.** Search r/SaaS plus niche subreddits tied to the ICP
   (e.g. r/sysadmin, r/msp, r/marketing, r/smallbusiness — pick what fits). Capture:
   - Subreddit size and recent post velocity (`ASSUMPTION:` if estimated).
   - Recurring pain threads, "what tool do you use for…" posts, and complaint
     language that matches the idea's job-to-be-done.
   - Any threads where buyers describe budget, switching cost, or stack context.

4. **LinkedIn signal pass.** Search for posts and job-adjacent content from the ICP
   persona (titles, company sizes). Note: pain posts, "we're evaluating…" threads,
   thought-leader discourse, and whether the niche shows up in operator/builder
   conversations (not influencer fluff).

5. **Google Trends / SEO demand.** Use Google Trends and/or keyword tools for 5–10
   core queries (problem + solution + competitor names). Record:
   - Direction over 12–24 months (rising, flat, falling).
   - Relative search interest (`ASSUMPTION:` if exact volume unavailable).
   - Long-tail queries that reveal buyer intent (e.g. "… pricing", "… alternative",
     "… vs").

6. **Job-board hiring signal.** Search LinkedIn Jobs, Indeed, or niche boards for
   roles or responsibilities that imply budget for this pain (e.g. "RevOps",
   "compliance manager", "manual data entry" in relevant industries). Hiring for
   the pain = budget exists. Quantify posting volume where possible; label
   estimates `ASSUMPTION:`.

7. **IndieHackers / builder discourse.** Scan IndieHackers for products, launch
   posts, and revenue claims in this niche. Note: MRR bands mentioned, distribution
   channels builders report, and whether the space feels crowded with bootstrapped
   clones.

8. **Synthesise demand vs monetization.**
   - **Demand signals:** quantified where possible (review counts, subreddit size,
     job-post volume, search trend direction).
   - **Monetization evidence:** competitors visibly charging — list prices, tiers,
     "contact sales", per-seat/per-account models. This proves WTP; absence is a
     cold signal.
   - **ICP congregation:** where buyers actually hang out (subreddits, LinkedIn
     groups, communities, events, Slack/Discord if named in sources).

9. **Score trend velocity** (`rising-fast` | `rising` | `stable` | `declining`):
   - **rising-fast:** multiple independent sources show accelerating demand in the
     last 6–12 months (search up, review volume up, new entrants, hiring spike).
   - **rising:** clear upward or expanding signal, not yet explosive.
   - **stable:** mature category, flat search/community activity, entrenched players.
   - **declining:** shrinking search interest, consolidation, or community migration
     away from the problem space.

10. **Set overall verdict** (`hot` | `warm` | `cool` | `cold`):
    - **hot:** acute, quantified demand + visible WTP + reachable ICP + tailwind.
    - **warm:** real pain and some monetization proof, but crowded, narrow, or
      distribution-heavy.
    - **cool:** weak/sporadic signals, latent pain, or monetization unproven.
    - **cold:** declining demand, no WTP evidence, or ICP too diffuse to reach.

11. **Write one insight file** to
    `memory/market_insights/<niche-slug>-<YYYY>-<MM>.md` (today's year-month).
    Slug = lowercase niche words joined by hyphens (e.g.
    `smb-compliance-workflows-2026-07.md`).

## Output

Write to `memory/market_insights/<niche-slug>-<YYYY>-<MM>.md`.

The file has two parts: YAML frontmatter (machine-readable summary) then a
self-contained narrative. Downstream skills may read **only this file**.

### Part 1 — YAML frontmatter (fixed schema)

```yaml
---
niche: <topic>
analyzed_at: YYYY-MM-DD
status: fresh
stale_after: YYYY-MM-DD   # 6 months after analyzed_at
trend_velocity: rising-fast | rising | stable | declining
overall_verdict: hot | warm | cool | cold
key_insight: "<one-sentence takeaway>"
top_signals: []            # 3-5 strings: G2 categories, subreddits, rising queries, job-posting themes
demand_signals: []         # 2-4 strings: quantified where possible (subreddit size, job-post volume, search volume) — label ASSUMPTION: if estimated
monetization_evidence: []  # 1-3 strings: competitors visibly charging (proves WTP)
---
```

Populate every key. `top_signals`, `demand_signals`, and `monetization_evidence`
are arrays of plain strings — no nested objects.

### Part 2 — Narrative (Markdown sections)

Write these sections in order. Each must cite specific sources (named competitors,
subreddits, queries, job titles). A downstream skill reading only this file should
not need to re-research.

#### ## Demand signals

Summarise quantified and qualitative demand: G2/Capterra review themes (especially
1-star and 3-star), Reddit pain language, search-trend direction, job-posting
themes. Lead with the strongest numbers; label estimates `ASSUMPTION:`.

#### ## Where the ICP congregates

List the specific communities, subreddits, LinkedIn audiences, IndieHackers
threads, and any other venues where the buyer persona discusses this problem.
Note reachability for cold outbound, SEO, or community-led distribution.

#### ## Monetization evidence

Document competitors and adjacent tools that charge money: price points, pricing
model (per seat, per account, usage), and what that implies for WTP in this niche.
If nothing charges, say so — that is a finding.

#### ## Why now

Name 1–3 concrete tailwinds (regulatory change, tech shift, macro pressure on the
ICP, category consolidation creating switching windows). Each must link to **this
niche**, not generic "AI is hot." If weak, say the why-now is unproven.

#### ## Verdict

Restate `trend_velocity` and `overall_verdict` in plain language. One short
paragraph: is this niche worth spending Stage 1 tokens on, and what is the single
biggest risk if the founder proceeds?

## Hard rules

- **Skills never call other skills.** Read `00-idea-capture.md` and
  `memory/market_insights/`; write one insight file.
- **No invented facts.** Every number needs a source or an `ASSUMPTION:` label.
- **One file per niche per month** — never split by platform; never write TikTok,
  App Store, or consumer-virality analysis.
- **Check for a fresh existing file** before researching; offer reuse.
- **Never advance the human gate.** The orchestrator does that.
- **Only write `memory/market_insights/<niche>-<YYYY>-<MM>.md`.**
