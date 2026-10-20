# 01 — Devalidation Report

> Filled by `clearframe-devalidation` (Kritiker) auf Basis von `00c-realist.md` (Werkzeug-Ausprägung A). **Live-Recherche Pflicht erfüllt (2026-09-07): 5 Suchen, Wettbewerb mit Preisen verifiziert.**
> Walt-Disney: Träumer (00b) → Realist (00c) → Kritiker (dieses Dokument) → Synthese (01b).

## Verdict
- **Score (outreach):** 3/10
- **Score (product):** 4/10
- **Go/No-Go (bezieht sich auf outreach):** NO-GO
- **Buildable (product >=6):** no
- **One-line reason:** Slack Culture/Recognition/Pulse ist extrem gesättigt mit etablierten, teils dauerhaft gratis nutzbaren Bots (CultureBot, Matter, HeyTaco, Bonusly, Polly, Geekbot, Donut) — der Realist-Plan "leichtgewichtiges Werkzeug €49/Mo" hat keinen klaren Wedge und ist für Cold Outreach strukturell zu teuer (CAC > CLV bei free-tier Ankern); nach aktiver Wedge-Suche (DACH-Compliance, Flat-Preis, Betriebsrat) nur sehr schmaler Rest-Wedge erkennbar — kein Cold-Outreach-Case, product nur 4/10.

## CLEARFRAME breakdown (Realist-Plan A wird angegriffen)

| Lens | Assessment |
|---|---|
| **C**ustomer | People & Culture Lead / Office Manager in 20–150-MA-Agenturen/Tech-KMU, Slack-first, hybrid, ohne große HR-Suite — konkret "Mira, 45 MA Leipzig". Nicht "jedes Slack-Team". |
| **L**onging/Job | Rituale ohne neues Tool am Laufen halten: wöchentlicher Pulse + tägliche Shoutouts + Manager-Nudge + Freitags-Report, direkt in Slack, mit Beleg für GF. |
| **E**xisting solution | Status quo: nichts tun / Google Forms + manuelle Reminder / Gratis-Bots (Polly, Propsly free unlimited, Matter free unlimited, Donut free, Geekbot free ≤10) / Paid-Bots ab $1–5/User/Mo / Suites (Lattice, Culture Amp, Officevibe). |
| **A**lternative cost | ASSUMPTION: 2–3 h/Monat Bastelaufwand + unquantifizierter Fluktuations-/Onboarding-Schaden; bei vielen Teams aber akzeptiertes "versandet halt" — kein Budget-Posten bis akute Kündigungen auftreten. |
| **R**eachability | Slack-first-Signal auf Website/Karriereseite schwer skaliert findbar; People-Lead auf LinkedIn erreichbar, aber Cold Outreach für "Kultur-Bot" hat erwartbar niedrige Reply-Rate (Nice-to-have, kein Pain-Anlass, Betriebsrat bremst). |
| **F**requency | Täglich/wöchentlich (theoretisch hohe Retention), praktisch Risiko Bot-Müdigkeit / Mute — viele Teams muteen Culture-Bots nach 2–3 Wochen (ASSUMPTION, aber durch hohe Gratis-Abwanderung gestützt). |
| **R**evenue | €49/Mo ≤50 MA, €99 ≤150, €199 ≤300 — bei 150 zahlenden Teams ~€90k ARR (ASSUMPTION). Gegen Anker $0 (free) und $1–3/User/Mo schwer zu halten; Churn erwartbar hoch. |
| **A**dvantage | K6-Vorteil greift nur teilweise: Agent-Orchestrierung/bb hilft beim Bot-Bau, DACH-Marke hilft beim Wording — aber kein HR-Domain-Vorteil, keine bestehende Culture-Audience. |
| **M**oat-later | Daten über Stimmung/Beteiligung über Zeit; verwundbar durch Slack-Plattform-Änderungen und durch Gratis-Kopie der Rituale durch Incumbents. |
| **E**ffort | 4–5/10 solo für kleinsten Beweis (Bolt SDK, Scheduler, Report, Stripe, EU-Hosting); GTM 8/10 — Wettbewerb und Free-Anker dominieren. |

## CLEARFRAME + Market Reality
- **TAM (sanity, nicht spurious precision):** Global Employee Engagement Software 2026 je nach Abgrenzung $1.1–1.38 Mrd. (FMI, Grand View) bis $7.5 Mrd. (Verified Market Reports, breitere Platform-Definition) mit 10–16% CAGR — großer Markt, aber **reichweitener TAM für DACH-Slack-nativ + zahlungsbereit €49/Mo** ist eng: ASSUMPTION ~8–15k Slack-first DACH-SMBs 20–150 MA, davon heute für Culture-Bot zahlungsbereit eher 1–3k; Rest nutzt Gratis oder ignoriert. Kein breites Mainstream-Problem.
- **Saturation / competition:** **Sehr hoch — Kategorie extrem besetzt, Gratis dominiert.** Slack "HR & Team Culture" Marketplace listet 20+ Apps direkt vergleichbar. Verifiziert (2026-09-07):
  - **CultureBot** — All-in-one: Celebrations, Shoutouts, Surveys, Rewards, AI Assistant; Basic free ≤24 users, dann ~$70/25 users Basic, $140 Standard, $210 Pro (linear ~$2.80/User/Mo) [OrgaNice vs CultureBot](https://www.organice.app/comparisons/organice-vs-culturebot)
  - **Matter** — Feedback Friday, Kudos, Rewards, Surveys; Free unlimited users, paid $1–5/User/Mo (Pro + Surveys $5) [Matter vs Bonusly/HeyTaco Vergleiche Aug 2026](https://matterapp.com/blog/bonusly-vs-matter)
  - **HeyTaco** — 5 Tacos/Tag, Leaderboards, Rewards; $3 Classic / $5 Deluxe per User/Mo, kein free tier (30-Tage Trial) [heytaco.com/pricing + Matter vs HeyTaco](https://matterapp.com/blog/heytaco-vs-matter)
  - **Bonusly** — Recognition + Rewards + Pulse; Free ≤8 users, Team $3/User/Mo, Team+Bizy $5, Organization custom [bonusly.com/pricing](https://bonusly.com/pricing) + [Bonusly Pricing 2026](https://costbench.com/software/employee-engagement/bonusly/)
  - **Propsly** (im Vergleich genannt) — /props in Slack, **Free unlimited users**, Pro **$50 flat/Workspace** (egal 20 oder 2.000 MA) — direkter Preisanker gegen per-seat [Propsly Blog 2026](https://www.propsly.io/blog/best-employee-recognition-tools-for-slack)
  - **Polly** — Polls/Surveys/Standups in Slack; Free (25 responses/Monat, 45 Tage History), paid $12–24/Mo bzw. ~$2–4/User/Mo (je nach Quelle) [Polly Slack Pricing](https://www.polly.ai/slack-pricing) + [Geekbot vs Polly](https://geekbot.com/blog/geekbot-vs-polly-ai-which-slack-poll-and-survey-tool-is-best-for-your-team/)
  - **Geekbot** — Standups/Polls/Surveys; **Free ≤10 Teilnehmer**, Basic $3/Participant/Mo ($2.50 annual), Polls $1/Respondent ($0.75 annual) [geekbot.com/pricing](https://geekbot.com/pricing/) + [help.geekbot.com](https://help.geekbot.com/en/articles/4280827-how-much-does-geekbot-cost)
  - **Donut** — Intros/Watercooler/Shoutouts/Onboarding Journeys; Free (1 Channel je Intros/Watercooler/Celebrations, max 24 Intros/Runde, 12 Watercooler Topics), Standard ab $74/Mo annual ($89 monthly), Premium ab $119 annual ($149 monthly) [donut.com/pricing](https://www.donut.com/pricing/) + [kaizynn.com Donut Pricing Explained](https://kaizynn.com/blog/donut-pricing-explained)
  - **Slack-Incumbents (Suite-Ebene):** Lattice, Culture Amp, Officevibe/BambooHR/15Five, Workday, Bob — bündeln Recognition/Pulse als Feature, teils "Paid with free trial".
  - **Fazit:** Der Wedge "günstiger & leichter als Suite" ist **bereits durch free-tier Bots besetzt**; ein Neueinsteiger konkurriert nicht gegen teure Suites, sondern gegen Gratis.
- **Category maturity & growth:** **Growth, aber Plateau im Slack-Bot-Segment** — global Engagement-Markt wächst (16.2% CAGR FMI, $1.1 Mrd. → $4.9 Mrd. 2036; Verified: $7.5 Mrd. 2024 → $18 Mrd. 2033, 10.2% CAGR; Grand View: $928 Mio. 2023 → $1.38 Mrd. 2026, 16.4% CAGR), aber Wettbewerb konzentriert sich bei Microsoft Viva/Workday/Salesforce und Nischen-Spielern (Culture Amp, Lattice) — Preisdruck und Commoditisierung im Slack-nativen Recognition/Pulse nehmen zu [FMI](https://www.futuremarketinsights.com/reports/employee-engagement-market) · [Grand View](https://www.grandviewresearch.com/industry-analysis/employee-engagement-software-market-report) · plus Sättigungs-Warnung "Market Saturation and Intense Competition" [Verified Market Reports](https://www.verifiedmarketreports.com/product/global-employee-engagement-platform-market-growth-status-and-outlook-2019-2024/).
- **CAC vs CLV sanity:** CLV: €49/Mo × ASSUMPTION 8–12 Monate Retention = €390–590 (bei hoher Mute/Churn-Gefahr eher 6–8 Monate → €300–400). CAC: Cold Outreach an People-Leads für Nice-to-have Culture-Bot braucht erklärenden Pitch + Differenzierung gegen $0-Anker → erwartbar €200–500+ (Liste klein, Reply-Rate niedrig, 2–3 Touches). **Strukturell marginal bis underwater**, vor allem weil Free-Alternativen CAC auf "überzeuge gratis Nutzer zu zahlen" erhöhen.
- **Difficulty score:** 7/10 (Build 4/10 + GTM 8/10 gemittelt — Bauen ist machbar, Verkaufen ist schwer).
- **Key risks:**
  1. **Free-Anker tötet Preisbereitschaft** — Propsly $0 unlimited, Matter $0 unlimited, Donut/Geekbot/Polly free tiers decken 80% des versprochenen Nutzens (Shoutout, Poll, Intro) gratis ab.
  2. **Incumbent-Bündelung** — CultureBot/Matter/Bonusly decken bereits das Dreier-Bündel (Recognition + Pulse + Celebrations) inkl. Rewards-Katalog und HRIS-Sync ab; Slack Marketplace sortiert nach Popularität verstärkt Winner-takes-all.
  3. **Retention/Bot-Müdigkeit** — tägliche Nudges werden gemuted; der eigentliche Job (Kultur) ist kein wiederkehrender Burning Pain mit Budget-Trigger wie Compliance-Frist, sondern weich und verschiebbar.

## Cited market signals (researched 2026-09-07)
- Kultur-/Recognition-Preisanker verifiziert: CultureBot ~$2.80/User/Mo, Basic free ≤24 [organice.app Vergleich](https://www.organice.app/comparisons/organice-vs-culturebot); Matter Free unlimited + $1–5/User/Mo [matterapp.com](https://matterapp.com/blog/bonusly-vs-matter); HeyTaco $3/$5/User/Mo [matterapp.com](https://matterapp.com/blog/heytaco-vs-matter); Bonusly Free ≤8, $3–$5/User/Mo [bonusly.com/pricing](https://bonusly.com/pricing) + [costbench.com](https://costbench.com/software/employee-engagement/bonusly/); Propsly Free unlimited, Pro $50 flat [propsly.io](https://www.propsly.io/blog/best-employee-recognition-tools-for-slack); Polly Free 25 responses, paid $12–24/Mo [polly.ai](https://www.polly.ai/slack-pricing) + [geekbot vs polly](https://geekbot.com/blog/geekbot-vs-polly-ai-which-slack-poll-and-survey-tool-is-best-for-your-team/); Geekbot Free ≤10, $3/$2.50 Participant [geekbot.com/pricing](https://geekbot.com/pricing/); Donut Free (1 Channel, 24 Intros, 12 Topics), Standard $74–$89, Premium $119–$149 [donut.com/pricing](https://www.donut.com/pricing/) + [kaizynn.com](https://kaizynn.com/blog/donut-pricing-explained)
- Slack Marketplace HR & Team Culture zeigt 20+ direkte Alternativen (CultureBot, Matter, HeyTaco, Bonusly, Polly, Geekbot, Donut, BirthdayBot, Officevibe etc.) — Kategorie ist kuratiert als "HR & Team Culture" [slack.com/marketplace/category/At0EFT6893-hr-team-culture](https://slack.com/marketplace/category/At0EFT6893-hr-team-culture)
- Engagement-Markt wächst, aber Sättigungswarnung: FMI $1.1 Mrd. 2026 → $4.9 Mrd. 2036, 16.2% CAGR [fmi](https://www.futuremarketinsights.com/reports/employee-engagement-market); Grand View $928 Mio. 2023 → $1.38 Mrd. 2026 [grandviewresearch](https://www.grandviewresearch.com/industry-analysis/employee-engagement-software-market-report); Verified $7.5 Mrd. 2024 → $18 Mrd. 2033 [verifiedmarketreports](https://www.verifiedmarketreports.com/product/global-employee-engagement-platform-market-growth-status-and-outlook-2019-2024/) — gleichzeitig "Market Saturation and Intense Competition" und Commoditisierung [verifiedmarketreports ebd.]
- Wedge-Suche aktiv durchgeführt (K2-Pflicht): gesucht nach "Slack culture bot recognition pricing 2026", "Slack recognition bonusly matter disco karma pricing free tier", "Slack pulse survey Polly Geekbot pricing", "Slack marketplace culture bot app pricing free tier" — Ergebnis: **kein offensichtlicher DACH-Slättigkeits-Wedge** in den Top-Ergebnissen; alle US-Bots bedienen Slack-nativ + gratis; DACH-/DSGVO-Spezifik (Betriebsrat, EU-Hosting) in keinem Pricing/Feature-Page als Differenzierung prominent — nur als möglicher Rest-Wedge, nicht verifiziert zahlungsbereit.

## Boring & Trends check
- **Nicht durchgeführt — Auto-Kill greift (outreach 3/10 < 4).** Token-Sparregel nach `workflows/1-devalidation.md`. Siehe Synthese (01b) für Trend-Einordnung nach Überarbeitung.

## Riskiest assumption test (RAT)
- **What to test next:** *Nicht via Cold Outreach.* Wenn trotzdem: 10–15 qualitative Interviews mit People-/Office-Managern in DACH-Slack-Teams (20–80 MA) — "Wie löst ihr heute Shoutouts/Pulse? Was nutzt ihr gratis, was würdet ihr €49/Mo für zahlen?" — **vor** jedem Bau. Plus Fake-Door-Test: Loom des wöchentlichen Reports mit DSGVO-Badge vs. ohne — misst, ob DACH-Wedge zieht.
- **Kill signal:** 10 Gespräche, ≥7 sagen "Polly/Matter/Propsly free reicht uns" oder "Kultur-Bot wird bei uns gemuted" → Idee in dieser Form tot.

## Notes / assumptions
- ASSUMPTION: Fluktuationskosten und 2–3 h Zeitersparnis sind für People-Leads kein harter Budget-Trigger wie Regulatorik; Kultur bleibt verschiebbar.
- ASSUMPTION: Retention 8–12 Monate, Churn hoch wegen Bot-Müdigkeit — keine öffentliche Slack-Bot-Churn-Benchmark gefunden, aus Free-Tier-Abwanderung abgeleitet.
- "Kein unfair advantage" aus user_profile.md entfällt — K6-Fakten (Agent-Orchestrierung, ~20 Projekte, DACH-Marke) wurden in Advantage berücksichtigt, ändern am Wedge aber nichts.
- Statistik "zufriedene Mitarbeiter kündigen halb so oft" (Gallup/Workhuman) wird von Propsly zitiert, aber nicht als DACH-Zahlungsbeleg verwendet — bleibt ASSUMPTION.

## Produktkern für den MVP (Pflicht, da product 4/10 ≥4)
Für Mira (People & Culture Lead, 45 MA, Leipzig) löst **ein einzelner wöchentlicher Ritual-Report in Slack** den Schmerz "ich habe keinen Beleg, dass Kultur passiert": Eingabe — Bot postet 1 Pulse-Frage (Mo 10 Uhr) + sammelt Shoutouts (/kudos) anonymisiert ab 5 Antworten, Ausgabe — Fr 9 Uhr Ein-Pager im Channel (Beteiligung, Stimmung 1–5, Top-3-Themen, 1 Vorschlag). Kein Rewards-Katalog, kein Performance-Review, kein Dashboard. Kleinster Beweis: Bolt-Slack-App + Scheduler + Postgres/JSON, Leipzig-Pilot mit 1 Workspace, 14 Tage Test, Stripe €49/Mo. Getestet via 10 Interviews + Fake-Door vor Code.

## Pivot-Signal (Pflicht auch bei NO-GO)
Recherche zeigt: Was nicht bedient wird, ist **nicht** "Recognition/Polls in Slack" (überbedient, gratis) sondern die **DACH-Betriebsrat-/DSGVO-Sicherheit für Stimmungsdaten in Slack** — alle verifizierten Bots sind US-zentrisch, keiner wirbt prominent mit EU-Hosting, Löschkonzept, Anonymitätsschwelle und Betriebsratsvorlage als Kaufgrund. Tragfähiger Pivot-Vorschlag: `dach-pulse-compliance-bot` — nur Pulse (1 Frage/Woche, anonym ab 5, EU-Hosting Hetzner, Löschfrist, Betriebsrats-PDF) für DACH-KMU 20–80 MA mit Betriebsrat, flat €49/Mo, vertrieben über Betriebsrat-/DSB-Kanäle und LinkedIn an People-Leads mit "DSGVO-sicher" als Anlass, nicht über generischen Culture-Pitch. Falls auch dort kein Kaufanlass (Betriebsrat blockiert trotzdem): kein weiterer Pivot — dann ist die Kategorie als Werkzeug tot.
