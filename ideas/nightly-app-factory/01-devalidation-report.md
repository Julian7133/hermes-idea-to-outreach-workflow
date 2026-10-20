# 01 — Devalidation Report

> Hermes Stage 1 — Kritiker (greift 00c-Realistenplan an, nicht Rohidee). **Live recherchiert 2026-09-07.**
> Auto-Kill greift erst nach Synthese (01b). `boring-and-trends-check` wurde nicht ausgeführt (outreach <4 → token-saving kill nach Synthese).

## Verdict
- **outreach_score:** 3/10
- **product_score:** 5/10
- **Go/No-Go (bezieht sich auf outreach):** NO-GO
- **One-line reason:** Cold Outreach ist strukturell der falsche Kanal für den benannten Käufer (Indie-Hacker kaufen über Community/Content, nicht über B2B-Kaltmail) — Produkt selbst solo baubar mit plausiblem, aber schmalem Wedge, aber diese Pipeline trägt es nicht.

## CLEARFRAME breakdown (gegen Realistenplan 00c, Ausprägung B)

| Lens | Assessment |
|---|---|
| **C**ustomer | Indie-Hacker / Solo-Micro-SaaS-Betreiber (28–42, 1–2 Produkte €300–2k MRR) — eng genug. Nicht "jeder Gründer", nicht B2B-Mittelstand. |
| **L**onging/Job | Statt 3–4 Wochen pro Idee zu verbrennen: täglich einen testbaren Produktkeim (Repo + Live-URL + Distribution-Angle) erhalten, 1 von 10 behält man. |
| **E**xisting solution | Manuell mit ShipFast ($199 one-time) + Lovable/Bolt/Replit ($25/Mo) + eigener Vibe-Coding-Schleife selbst bauen; oder TinyLaunch/Boilerplates/Second-Hand-Ideen-Newsletter. Spread: "selbst bauen in 1–2 Tagen" ist reale Alternative. |
| **A**lternative cost | ASSUMPTION: 40–80h pro manueller Mikro-App (Scaffold, Landingpage, Deploy, Copy) × Opportunitätskosten €50–80/h = €2–6k pro Wette. Die Factory senkt das auf €3–8 LLM-Kosten pro Keim — aber nur wenn Qualitätsgate hält. |
| **R**eachability | **Kernproblem für Hermes:** Persona ist über X/Indie Hackers/TinyLaunch/Reddit auffindbar, nicht über B2B-Leads und nicht sinnvoll kalt per Mail anschreibbar (UWG-Risiko, falscher Kontext). 20–50 validierende Gespräche sind machbar, aber über Community-DMs/Posts, nicht über diese Pipeline's 1:1 Cold Email. |
| **F**requency | Factory liefert täglich, aber **Kauf-Frequency** ist niedrig: Abo oder Einzelkauf, aber churn-Risiko hoch — sobald ein Treffer da ist, braucht der Käufer Monate keinen neuen Keim. Kein täglicher Burning Pain beim Käufer, sondern episodischer "Suche nach nächstem Produkt". |
| **R**evenue | Realisten-Anker €290/Mo × 20 Käufer = €5.8k MRR; Einzelkauf €19/Keim. ASSUMPTION: Retention 3–4 Monate → CLV €870–1.160. Bei Community-Akquise plausibel, bei Cold-Outreach-CAC (€150–300 pro Termin) strukturell knapp. |
| **A**dvantage | **Ja (K6):** Tiefe Agent-Orchestrierung (bb, openclaw, Claude Code, Multi-Agent-Workflows), ~20 Repos, DACH-Marke — genau die Factory-Kompetenz. Kein externer Vorteil für Content-Gap-SEO selbst, aber für den Bau der Factory. |
| **M**oat-later | Kuratierte Gap-Datenbank + DACH-Longtail-Korpus + Eval-Harness + Deployment-Korpus über Zeit. Verwundbar: Lovable/Bolt senken Erzeugungskosten für jedermann weiter; Moat liegt in Selektion/Distribution, nicht im Generieren. |
| **E**ffort | 4–6 Tage für kleinsten Beweis (Realist) realistisch: bb-Workflow + Template + Deploy-Pipeline + 3 Beispiel-Apps. Solo gut machbar — aber Skalierung zu 30 Apps/Monat braucht Evals und Review-Pipeline, sonst Qualitätsverfall. |

## CLEARFRAME + Market Reality
- **TAM (sanity):** ASSUMPTION: ~2–5k zahlungsbereite Indie-Hacker/Micro-SaaS-Betreiber EU+US, die €19–290 für Dealflow zahlen würden; DACH-Teil davon ~300–600. Weltweit größer, aber nur Community erreichbar, nicht B2B-TAM. Kein breiter Mittelstandsmarkt — Nische.
- **Saturation / competition:** **VERIFIED (2026-09-07): AI-App-Erzeugung ist commodity.** Lovable Pro $25/Mo (100 Credits, unlimited collaborators), Bolt.new Pro $25/Mo (10M Tokens), Replit Core $20–25/Mo (effort-priced checkpoints $0.06–$1+), Base44 freemium — alle liefern scaffold-to-deploy in 30–120 Min (Lovable/Bolt ~8–10 Min erster Preview, Replit ~15–20 Min) ([Newly 2026 Guide](https://newly.app/guides/ai-app-generators), [AutomationAtlas Jul 2026](https://automationatlas.io/answers/replit-agent-vs-lovable-vs-bolt-new-2026/), [NoCode.mba](https://www.nocode.mba/articles/bolt-vs-lovable-pricing)). Auf Tool-Ebene kein Preis-Wedge: Factory verkauft nicht billigeres Bauen, sondern kuratierten Strom. Direkten "10 Apps/Monat für €290"-Abo-Konkurrenten nicht gefunden — aber das spricht für fehlende Nachfrage, nicht für Lücke. ShipFast $199 one-time als Preisanker für "selbst bauen" ([shipfa.st](https://shipfa.st/), [Toolradar Aug 2026](https://toolradar.com/tools/shipfast/pricing)) bleibt relevante Alternative.
- **Category maturity & growth:** **Growth, aber Distribution-hart.** Markt für AI-App-Generatoren boomt (Grand View: $26.4B bis 2030, 38.7% CAGR; Gartner: 75% Apps low-code by 2026) — doch exakt deshalb fließt die Baukapazität massiv, während Distribution/Trust kollabiert. Apple reviewed 9.1M Submissions 2025, rejected >2M (davon 371k als spam/copycat) ([Apple fraud analysis 2026](https://www.apple.com/newsroom/2026/05/the-app-store-stopped-over-2-point-2-billion-usd-in-fraudulent-transactions-in-2025/)); Q1 2026 +84% Submissions YoY durch vibe-coding ([The Information via 9to5Mac Apr 2026](https://9to5mac.com/2026/04/06/app-store-sees-84-surge-in-new-apps-as-ai-coding-tools-take-off/)); Google bannte 80k Dev-Accounts 2025. Guideline 4.2/4.3/5.1.2(i) trifft AI-Generator-Outputs überproportional ([Superapp 2026 Guide](https://www.superappp.com/blog/why-apps-get-rejected-from-the-app-store-2026-guide), [Creole Studios Apr 2026](https://creolestudiosnewsletter.substack.com/p/why-ai-apps-getting-rejected)). Kategorie-Reife = Bauen wird billiger, Veröffentlichen/Vertrauen wird teurer — Emerging-Risiko verschoben auf Awareness, nicht auf Konkurrenz.
- **CAC vs CLV sanity:** CLV €870–1.160 (3–4 Monate × €290) optimistisch. **Cold-Outreach-CAC** für Indie-Hacker per B2B-Mail: ASSUMPTION €200–400/Close (schlechte Response, falscher Kanal, Listenqualität niedrig) → marginal bis underwater. **Community-CAC** (Content/Posts/DMs) dagegen €20–60 → trägt. Da Hermes nur Cold Outreach misst, ist das Urteil negativ, obwohl ein anderer Kanal trägt — genau der K4-Fall "gutes Produkt, falscher Vertriebskanal".
- **Difficulty score:** 6/10 (Bau 3–4/10, Go-to-market über Hermes-Kanal 9/10, über Community 5/10 — gemittelt 6).
- **Key risks:**
  1. **Kanal-Mismatch (hart für Hermes, weich für Produkt):** Diese Pipeline verkauft B2B-Cold-Outreach, die Idee verkauft an Community-Indies — Skaleneffekt "30 Apps" verpufft, wenn jede Distribution trotzdem 1:1 Outreach bräuchte.
  2. **Qualität/Store-Fit:** AI-generierte PRs haben 1.7× mehr Issues (10.83 vs 6.45), 4× Duplikation, 45% enthalten bekannte Vulns ([GitClear](https://www.gitclear.com/ai_assistant_code_quality_2025_research) / [Veracode via The Register 2025](https://www.theregister.com/2025/12/17/ai_code_bugs/)); massa generierte Apps riskieren 4.2/4.3-Rejections — Factory braucht Eval-Harness + Web-only-Fokus, sonst Haftungsrisiko.
  3. **Kein bewiesener Zahlungs-Wedge:** Wettbewerber-Suche nach K2 (DACH-Longtail-Gap, fehlende deutsche Oberfläche, openclaw-Skill-Nische, Preis-/UX-Lücke für Dealflow) blieb ohne zahlenden Beleg — Factory verkauft "mehr Wetten", löst aber nicht "bessere Trefferquote".

## Cited market signals (researched 2026-09-07)
- AI-App-Generatoren commodity + Preise $25/Mo: Lovable/Bolt/Replit Vergleich Jan–Jul 2026 — [Newly: Top Generators Jan 2026](https://newly.app/guides/ai-app-generators), [AutomationAtlas Jul 2026: drei Metering-Modelle](https://automationatlas.io/answers/replit-agent-vs-lovable-vs-bolt-new-2026/), [NoCode.mba Mar 2026](https://www.nocode.mba/articles/bolt-vs-lovable-pricing), [VibeCoding Aug 2026: 8–10 Min first preview](https://vibecoding.app/blog/ai-app-generator-tools)
- Marktgröße: $26.4B bis 2030, 38.7% CAGR (Grand View), 75% Apps low-code by 2026 (Gartner) — zitiert in [Newly Market Section](https://newly.app/guides/ai-app-generators)
- App-Store-Flood + Rejections: Apple 7.77M reviewed / 1.93M rejected 2024, 9.1M / >2M 2025, 371k spam/copycat ([Superapp Aug 2026](https://www.superappp.com/blog/why-apps-get-rejected-from-the-app-store-2026-guide), [ObserverVoice Aug 2026](https://observervoice.com/why-apps-built-with-ai-get-rejected-from-the-app-store/)), Q1 2026 +84% Submissions ([9to5Mac Apr 2026](https://9to5mac.com/2026/04/06/app-store-sees-84-surge-in-new-apps-as-ai-coding-tools-take-off/)), Google 1.75M blocked / 80k bans 2025 ([Help Net Security Feb 2026](https://www.helpnetsecurity.com/2026/02/20/google-strengthens-android-safe-app-ecosystem/))
- AI-Code-Qualität: 1.7× Issues, 4× Duplikation ([GitClear 2025](https://www.gitclear.com/ai_assistant_code_quality_2025_research)), 45% Vulns ([Veracode via Register 2025](https://www.theregister.com/2025/12/17/ai_code_bugs/)), Guideline 5.1.2(i) Nov 2025 AI-Disclosure Pflicht ([Apple Developer Nov 2025](https://developer.apple.com/news/?id=ey6d8onl))
- Alternative "selbst bauen": ShipFast $199 one-time (Starter) / $249 All-in ([shipfa.st](https://shipfa.st/), [Toolradar verifiziert Aug 2026](https://toolradar.com/tools/shipfast/pricing)), TinyLaunch Premium $39/launch + Submission $279 ([tinylaunch.com/pricing](https://www.tinylaunch.com/pricing))
- Content-Gap Tooling Kostenanker: Ahrefs Lite $129/Mo, Semrush Pro $139.95/Mo, LowFruits $25/Mo — Gap-Finding selbst ist bezahlte Commodity ([Ahrefs Pricing 2026](https://ahrefs.com/pricing), [Semrush Pricing](https://www.semrush.com/pricing/), [Ahrefs vs Semrush OperatorIQ May 2026](https://operatoriq.io/blog/semrush-vs-ahrefs-2026/))

## Boring & Trends check
- Nicht ausgeführt — outreach_score <4, token-saving kill. Wird erst nach Synthese bei GO nachgeholt. (Per Workflow Schritt 3.)

## Riskiest assumption test (RAT)
- **What to test next (wenn trotzdem gebaut):** Nicht via Hermes-Cold-Mail. Stattdessen: 10 App-Keime manuell/teilautomatisch bauen (Web-only, Vercel + Supabase), 20 Indie-Hacker in IH/X/TinyLaunch-DMs mit echtem Demo-Link konfrontieren: "10 Keime/Monat für €149 Early-Bird — zahlst du?" → misst echte Zahlungsbereitschaft für Dealflow, nicht Neugier.
- **Kill signal:** <2 von 20 sagen "ja, würde zahlen" nach Demo-Ansicht → kein Dealflow-Markt zu diesem Preis.

## Notes / assumptions
- ASSUMPTION: CLV 3–4 Monate Retention, kein Churn-Beleg für Factory-Abos gefunden — analog zu Micro-SaaS-Tool-Abos extrapoliert.
- ASSUMPTION: LLM-Kosten €3–8/App (Generation + Landingpage), Hosting via Vercel Free reicht für Prototypen — nicht verifiziert für 30 Apps/Monat inkl. DB/Storage.
- Wedge-Suche nach K2 durchgeführt: gesucht nach DACH-Longtail-Gaps, fehlender deutschsprachiger Factory, fehlender Compliance-Bündelung, openclaw-Skill-Nische, Preis-/UX-Lücke — kein verifizierter zahlender Beleg für "wahllos pro Nacht" gefunden; kuratierte, enge Nische (z. B. openclaw-anfällig in einer Branche) wäre nächster Suchraum, liegt aber außerhalb des "wahllos"-Kerns.

## Produktkern für den MVP (Pflicht, da product_score ≥4 — K4)
**Für wen:** Indie-Hacker mit 1–2 Micro-SaaS (DACH/EU), der alle 4–6 Wochen eine neue Wette sucht und dafür bisher 3–4 Wochen manuell baut.
**Welche eine Funktion löst den Schmerz:** Ein bb-Workflow nimmt ein Content-Gap-Keyword (oder eine openclaw-Wedge-Hypothese), generiert daraus in einem Run ein lauffähiges Web-Mini-Produkt (eine Funktion, die einen Job erledigt) + Landingpage + Live-URL (Vercel) + Repo + 1-Satz Distribution-Angle — über Nacht, ohne manuelle Zwischenschritte, mit Eval-Gate (läuft? Lighthouse? kein Secret-Leak?).
**Kleinster lauffähiger Beweis:** 1 Gap-Keyword als Eingabe, 1 generierte Web-App (z. B. "Kleinunternehmer Rechnungsvorlage 2026" — Eingabe USt-Satz + Position, Verarbeitung Template-Rendering, Ausgabe PDF) mit Live-URL + privatem GitHub-Repo + Loom-Skript, nachweislich in <60 Min Agent-Laufzeit erzeugt. Bewusst nicht drin: Mobile App Store Build, Auth/Multi-Tenancy, Billing, Analytics-Dashboard. **Erfolgsmaß:** Ein Fremder klickt Demo und sagt "dafür würde ich €19/Keim zahlen" — nicht "coole Demo".
