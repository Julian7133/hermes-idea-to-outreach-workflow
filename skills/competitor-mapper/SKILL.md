---
name: competitor-mapper
description: >-
  Stage 1 competitive landscape map. Reads the idea capture and the niche
  market-insights brief, then researches direct, indirect, substitute, and
  emerging competitors via G2, Capterra, Product Hunt, AlternativeTo, Reddit,
  LinkedIn, and SEO listicles — mining 1-star and 3-star reviews for
  positioning gaps and scoring market saturation. Writes ideas/<slug>/competitors.json.
  Use when the user wants competitor mapping, competitive analysis, review mining,
  or saturation scoring for devalidation.
stage: 1
reads: ideas/<slug>/00-idea-capture.md, memory/market_insights/<niche>-<YYYY>-<MM>.md
writes: ideas/<slug>/competitors.json
---

# Skill: Competitor Mapper

You are a skeptical operator mapping what a B2B micro-SaaS idea actually competes
against — not just named vendors, but spreadsheets, manual ops, internal hires, and
doing nothing. The goal is a strategic map: who owns the space, where the gaps are,
and whether this idea can occupy a position incumbents cannot easily copy. Default
stance: the category is more crowded than the founder thinks until evidence says
otherwise. No invented facts — label estimates `ASSUMPTION:`. No consumer-app
signals (App Store, TikTok, virality, install counts).

## Input

1. `ideas/<slug>/00-idea-capture.md` — product concept, ICP, key features, stated
   differentiator, and monetization assumption.
2. `memory/market_insights/<niche>-<YYYY>-<MM>.md` — the trend-analysis brief for
   this niche (if it exists from the prior chain step).

If `00-idea-capture.md` is missing, **stop** and ask the user to complete the
capture first. Do not fabricate a niche or competitor set.

### Using market insights

If a market-insights file exists, extract before direct research:

| Section / signal | What to extract for competitor mapping |
|---|---|
| G2 / Capterra sweep | Category leaders, review counts, ratings, pricing models, complaint patterns already mined |
| Reddit / community scan | Tools buyers praise or hate by name, non-software workarounds, switching stories |
| SEO / Google Trends | Top-ranking vendors for category keywords, "best X software" list winners |
| `monetization_evidence` | Which competitors are actively monetizing (pricing benchmarks, WTP proof) |
| `trend_velocity` | Rising-fast niches attract new entrants — flag emerging-threat pressure |

If no market-insights file exists, note the gap in `market_insights_sources_used` and
rely on direct research only. Do not invent insights that should have come from
`trend-analysis`.

## Process

1. **Extract the competitive frame.** From `00-idea-capture.md`, write a one-line
   job-to-be-done statement and the ICP segment. This drives every search query and
   defines what counts as "direct" vs "indirect."

2. **Map direct competitors (find 3–8).** A direct competitor solves the same job for
   the same buyer with a comparable software product.

   Search these sources in order:
   1. **G2 & Capterra** — browse the closest product categories; search 2–3 keyword
      variations. Record the top 10 relevant vendors per search.
   2. **"Best X software" listicles** — Google `best [category] software 2026`. The
      top 3 listicle results typically capture market leaders.
   3. **Product Hunt** — search the category; sort by upvotes; focus on launches from
      the past 18 months.
   4. **AlternativeTo** — search the closest incumbent; capture adjacent vendors.
   5. **Market insights** — extract any vendors already named in the niche brief.
   6. **Reddit** — r/SaaS plus niche subreddits; extract tools buyers mention by name.
   7. **LinkedIn** — posts and comments where operators name tools they use or evaluate.

   For each direct competitor, record:
   - Name, pricing, pricing model (per-seat, per-account, usage-based, flat tier, etc.)
   - **Estimated customer base** — derive from G2/Capterra review count
     (`ASSUMPTION:` only ~2–5% of customers leave reviews; multiply review_count ×
     20–50 and state the range, e.g. "800–2,000 from 40 reviews")
   - `g2_capterra_rating` (average stars) and `review_count` (combined or primary source)
   - `last_updated` — product changelog, G2 "last updated," or recent review date
     (stale = displacement opportunity)
   - Top 3 features (`top_features`)
   - Top 3 complaints (`top_complaints`) from review mining (step 6)
   - `channels_observed` — how this competitor appears to acquire customers: SEO/content,
     cold outbound, communities, partnerships, paid search, PLG/free trial, events
     (only record what you can observe; do not guess)

3. **Map indirect competitors (find 2–5).** Different solution, same underlying
   business problem — a buyer might choose this instead even though the approach differs.

   Ask: "What else might this ICP buy or build to solve the same pain?"
   Sources: Reddit workflow threads, "how to [solve problem]" search results, LinkedIn
   posts describing alternative stacks, market-insights narratives on adjacent approaches.

   For each: name, approach (how it solves the problem differently), and
   `why_buyers_choose_it` (the trade-off that makes it attractive).

4. **Identify substitutes (find 2–4).** What the buyer does **right now** before
   adopting any new software.

   Common B2B substitute categories:
   - **Manual process** — spreadsheet, shared doc, email thread, calendar reminders
   - **Internal hire** — dedicated analyst, ops hire, fractional contractor
   - **Agency / human service** — consultant, MSP, outsourced team
   - **Inaction** — doing nothing (strongest competitor for low-urgency problems)

   For each: description, estimated cost (time + money), `friction_level`
   (low | medium | high), and `switching_cost_to_product` — what the buyer must
   change to adopt your product instead.

5. **Scan emerging threats (find 1–3).** Future competitive pressure 6–12 months out.

   Sources: Product Hunt launches (past 6 months), YC / accelerator demo-day lists,
   LinkedIn "we're building…" announcements, incumbent roadmap posts, niche brief
   `trend_velocity` = rising-fast (new entrants likely).

   For each: name, stage (beta | launched | announced), `funded` (true/false),
   `threat_level` (low | medium | high), and notes. Flag funded entrants — they have
   resources to move fast.

6. **Mine G2/Capterra reviews for positioning gaps.** Competitor reviews are the
   richest gap signal. Mine systematically on G2 and Capterra (not App Store).

   **1-star reviews (frustration signals)** — bugs/reliability, missing features,
   pricing objections, poor support, integration failures, UX complexity, data/privacy
   concerns.

   **3-star reviews (unmet-expectation signals)** — often more valuable than 1-star:
   - "Great product BUT…" — the "but" is the gap
   - "Would be perfect IF…" — the "if" is the feature opportunity
   - "Works for X but not for Y" — Y is the underserved segment

   **5-star reviews (what's defensible)** — read 10 recent 5-star reviews per top
   competitor to understand strengths you should not compete head-on. Find the
   **orthogonal angle** their strength does not cover.

   **Mining procedure** — for each direct competitor (top 3–5):
   1. Read the 20 most recent 1-star reviews
   2. Read the 20 most recent 3-star reviews
   3. Read 10 recent 5-star reviews
   4. Categorize complaints into themes (max 5 per competitor → `complaint_themes`)
   5. Identify the **most common complaint shared across ≥2 competitors** — this
      is the strongest gap signal for `review_mining_summary`

7. **Classify positioning gaps.** A positioning gap is a real buyer need no current
   competitor serves well. Classify each gap:

   | Gap type | Description | Defensibility |
   |---|---|---|
   | **audience** | No competitor targets this ICP segment | Medium — easy to copy if proven |
   | **feature** | Commonly requested feature no vendor has built | Low — incumbents can add it |
   | **experience** | Solutions work but UX/onboarding is painful | Medium — bloated incumbents struggle to simplify |
   | **price** | All competitors expensive; cheaper tier would win | Low — race to the bottom |
   | **philosophy** | Fundamentally different worldview (e.g. "all-in-one" vs "single-job") | High — incumbents can't pivot identity |
   | **platform** | No good solution on a specific stack (e.g. only Salesforce-native) | Medium — first-mover advantage is real |
   | **trust** | Buyers don't trust incumbents (data ownership, support, vendor lock-in) | High — trust is hard to retrofit |

   Prioritize **philosophy** and **trust** gaps — hardest for incumbents to copy.
   Record each gap with `gap_type`, `description`, `defensibility`, and `evidence`
   (cite review quotes, Reddit threads, or listicle omissions).

8. **Score market saturation.** Five factors, each 1–3 points:

   | Factor | Low (1 pt) | Medium (2 pts) | High (3 pts) |
   |---|---|---|---|
   | **direct_competitor_count** | 0–2 relevant vendors | 3–6 relevant vendors | 7+ relevant vendors |
   | **incumbent_dominance** | No vendor > 200 G2/Capterra reviews | 1–2 vendors with 200–2,000 reviews | A vendor has > 2,000 reviews or holds G2 Leader status |
   | **funding_in_space** | No funded competitors observed | 1–2 funded startups | Multiple funded companies or a platform incumbent (Salesforce, Microsoft, etc.) |
   | **keyword_saturation** | Primary SEO keywords show few relevant SaaS results | Moderate results, some quality variance | Top SERP slots are all established, well-maintained vendors |
   | **content_saturation** | Few "best X software" listicles exist | Some listicles, moderate SEO competition | Many SEO-optimized listicles; hard to rank for category terms |

   Sum → `saturation_score.total` (5–15):
   - **5–7** → `market_saturation`: **low** — few credible vendors, room to establish position
   - **8–11** → **medium** — competitive but gaps exist; differentiation required
   - **12–15** → **high** — crowded; indie success needs a genuinely novel angle or underserved niche

9. **Synthesize differentiation opportunities.** From positioning gaps, review-mining
   themes, and substitute friction analysis, list 3–7 concrete wedges the idea could
   own. Each should name the gap, the evidence, and why an incumbent would struggle to
   copy it quickly. These feed `differentiation_opportunities` and downstream skills
   (`pricing-and-wtp`, `distribution-analysis`, `idea-scoring`).

10. **Write `competitors.json`.** Populate every key in the schema below. Set
    `market_insights_sources_used` to the path(s) actually read (or `[]` if none).
    Set `review_mining_summary.competitors_mined` to the count of direct competitors
    you actually mined.

## Output

Write to `ideas/<slug>/competitors.json`:

```json
{
  "direct_competitors": [
    { "name": "", "pricing": "", "pricing_model": "", "estimated_customers": "",
      "g2_capterra_rating": 0, "review_count": 0, "last_updated": "",
      "top_features": [], "top_complaints": [], "complaint_themes": [],
      "channels_observed": [] }
  ],
  "indirect_competitors": [ { "name": "", "approach": "", "why_buyers_choose_it": "" } ],
  "substitutes": [ { "description": "", "cost": "", "friction_level": "low | medium | high", "switching_cost_to_product": "" } ],
  "emerging_threats": [ { "name": "", "stage": "beta | launched | announced", "funded": false, "threat_level": "low | medium | high", "notes": "" } ],
  "review_mining_summary": { "most_common_complaint_across_competitors": "", "strongest_gap_signal": "", "competitors_mined": 0 },
  "positioning_gaps": [ { "gap_type": "audience | feature | experience | price | philosophy | platform | trust", "description": "", "defensibility": "low | medium | high", "evidence": "" } ],
  "saturation_score": { "direct_competitor_count": 0, "incumbent_dominance": 0, "funding_in_space": 0, "keyword_saturation": 0, "content_saturation": 0, "total": 0 },
  "market_saturation": "low | medium | high",
  "differentiation_opportunities": [],
  "market_insights_sources_used": []
}
```

## Hard rules

- **Skills never call other skills.** Read the inputs, write `competitors.json`.
- **No invented facts.** Every competitor must be traceable to a cited source. Label
  estimates `ASSUMPTION:` (especially `estimated_customers` from review-count math).
- **G2/Capterra for reviews and scale** — not App Store, Play Store, or consumer
  install metrics.
- **B2B substitutes only** — spreadsheets, manual ops, internal hire, agency, doing
  nothing. No "download an app" framing.
- **Never advance the human gate.** The orchestrator does that.
- **Only write `competitors.json`.**
