# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert
| Einwand | Klasse | Antwort |
|---|---|---|
| 1. Alle Bausteine gratis: 3 große PM-Skills (`product-manager`, `pm-agent`, `afrexai-product-manager`) + 5.700 Skills auf ClawHub kostenlos, MIT-0 | Weich | Gratis ist Preisanker, kein K.o. (K3). Kuratierung + Kohärenz + Gedächtnis-Schicht ist das Produkt, nicht der Einzel-Skill. AI PM OS beweist Zahlungsbereitschaft: $99 für Kuratierung trotz Gratis-Bausteinen. |
| 2. Direkter Paid-Konkurrent AI PM OS: 243 Skills, 11 Workflows, $99 einmalig für Claude Code/Codex/Cursor — deckt denselben End-to-End-Job ab | Weich | AI PM OS bedient Claude/Codex/Cursor-Harness, nicht openclaw-nativ. PmTowerX ist der einzige openclaw-native Tower mit Gateway/Cron/Memory-Integration + ClawHub-Discovery. Wedge ist Harness-Nische, nicht Funktions-Vorsprung. |
| 3. Enterprise-Incumbent Productboard: Essentials $19/maker, Pro $59/maker, Spark $15/maker + 250 Credits (1 PRD 85–95 Credits) — owns Kategorie | Weich | Productboard zielt auf 5+-Maker Mid-Market/Enterprise (Vendr Median $24k/Jahr), nicht Solo-PM. Spark-Kreditisierung erzeugt Gegen-Wedge: Flat-Fee Besitz vs. Miet-Credits. Für Solo-PM ist Productboard 3–6× zu teuer → Preis-Wedge, kein Feature-Wettbewerb. |
| 4. Cold Outreach trägt nicht: PMs sind nicht kalt anschreibbar (kein 20–50er Lead-Pool via Email, UWG §7(2), kein Intent-Signal wie „OSS-Schwelle") | Weich | Korrekt — deshalb **Kanalwechsel**: ClawHub-Suche, openclaw Discord, PM-Communities, SEO („openclaw pm setup") statt Cold Mail. outreach_score bleibt niedrig, product_score trägt über alternativen Kanal (K4). |
| 5. Upstream-Risiko: openclaw releast fast täglich, 2.0 mit 16k PRs, API/Skill-Bruch alle 2–3 Wochen | Weich | Mitigierbar: Skill-Version pinning, `openclaw doctor --fix`, 3 Monate Updates im Kaufpreis, Fallback manuelle Links statt Scraping. Kein harter Blocker, aber Support-Last. |
| 6. Behauptung „kein PM-Tower existiert" wäre widerlegt | Unbelegt | Wird nicht behauptet (K1). Bericht behauptet Wertversprechen, nicht Lücke. Einwand zählt nicht. |

## Harte Einwände
keine — kein rechtliches Verbot, kein technischer K.o., kein nachweislich fehlender Käufer (Solo-PM Mira existiert, 41 % Burnout, <4 h/Woche Discovery).

## Überarbeiteter Plan
**Gegenüber 00c nur Zuspitzen + Kanalwechsel, kein Rollenwechsel:**

- **Zuspitzung (gegen 1+2):** Positionierung schärfen von „PM-Skills für openclaw" zu **„Der einzige openclaw-native PM-Tower — kuratiert, versioniert, mit deinem Produktgedächtnis (SOUL.md) statt Mixtape"**. Lite-Version (5 Quellen/1 PRD) gratis auf ClawHub zum Beweis der Kohärenz-Lücke; Paywall erst bei voller 12-Quellen + 11-Workflow-Kohärenz. AI PM OS als Referenz: Kuratierung verkauft sich ($99), auch wenn Bausteine gratis sind.
- **Preis-Anker (gegen 3):** Messaging explizit gegen Productboard-Spark-Kredits: „Dein PRD kostet 90 Credits, dein Monat 250 — danach zahlst du pro PRD. Tower: einmal €149, gehört dir, keine Credits." Für Solo-PM (1–2 Maker) ist das 2–3× günstiger als Productboard Essentials/Pro im ersten Jahr.
- **Kanalwechsel (gegen 4):** Cold Outreach als Gate streichen. Primärkanal = **ClawHub Discovery** (5.700 Skills, Suche „product-manager" rankt) + **Community-Seeding** (openclaw Discord #showcase, Product Collective) + **Content-Gap SEO** („openclaw pm agent setup" heute quasi leer). 20–50 kalt gemailte PM-Leads sind kein valider Test — 40 Lite-Installs + 3 „wo kaufe ich voll?"-DMs sind es.
- **Schnittwechsel (gegen 5):** Kleinster Beweis schrumpft weiter: Kein Auto-Scraping im MVP (nur kuratierte Linkliste, PM pflegt Quellen selbst), kein Jira-Auto-Write — nur Markdown-Report + PRD-Draft. So bricht kein Scraper und kein API-Key.

Nicht erlaubt und nicht getan: Einwand ignoriert oder Plan verwässert — Tower behauptet weiterhin genau einen Wochen-Report + 1 PRD-Draft.

## Neue Bewertung
- outreach_score: 3/10 (vorher 3) — Cold-Outreach-Case bleibt NO-GO; Reachability für 20–50 kalt gemailte PMs strukturell schlecht (kein Trigger wie Frist/Compliance, kein Listen-Signal), CAC für Kaltmail > CLV.
- product_score: 6/10 (vorher 6) — Klarer Wedge (openclaw-nativer kuratierter Tower + Besitz-vs-Credits + ClawHub-Channel), benennbarer Käufer (Mira, Solo-PM 12–25 MA SaaS, DACH), solo baubar in 8–12 Tagen, Julian-Vorteil (K6) greift voll. Kein 7, weil Zahlungsbereitschaft für Kuratierung vs. Gratis-Mixtape erst bewiesen werden muss und Upstream-Pflege real ist.
- buildable: yes

## Ehrliches Fazit
Die Überarbeitung löst das Cold-Outreach-Problem nicht — und soll es auch nicht. Sie verschiebt den Vertrieb dorthin, wo der Käufer wirklich sucht (ClawHub/Community), und schärft den Wedge auf „Kuratierung + Besitz" statt „Feature-Vorsprung". Ob 5 Solo-PMs €149 für Kohärenz zahlen, obwohl sie sich das Mixtape gratis klicken könnten, ist die eine Frage, die nur der Lite-Test beantwortet — aber sie ist jetzt testbar, statt im Kritiker-Kill unterzugehen.
