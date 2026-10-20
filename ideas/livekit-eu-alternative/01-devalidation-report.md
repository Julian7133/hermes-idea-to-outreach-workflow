# 01 — Devalidation Report

> Filled by `clearframe-devalidation` + `boring-and-trends-check`.
> Research date: 2026-09-07 — live web research with ≥4 searches.
> Dual scoring nach K4/K5 (ORCHESTRATOR-PROMPT.md).

## Verdict
- **outreach_score:** 4/10
- **product_score:** 6/10
- **Go/No-Go (outreach):** GO (knapp — Gate ≥4 erreicht)
- **buildable:** yes (product_score ≥6)
- **One-line reason:** LiveKit Cloud ist US-gehostet und Self-Host auf Hetzner ist gratis (K3) — aber für DACH-Teams mit AVV-/US-Transfer-Blocker ist "LiveKit-SDK-kompatibel + EU-Jurisdiktion + deutscher AVV" ein benennbarer, untersuchter Wedge; Cold Outreach trägt nur sehr kleine, präzise Liste, Produkt aber solo baubar.

## CLEARFRAME breakdown

| Lens | Assessment |
|---|---|
| **C**ustomer | DACH Product-Team (15–60 MA, EdTech/Telehealth/HR-Tech/CivicTech) das bereits LiveKit produktiv nutzt (Cloud oder self-hosted) und für einen Deal/Audit **AVV + "kein US-Transfer"** nachweisen muss. Nicht "alle die Video wollen". |
| **L**onging/Job | LiveKit weiter nutzen, aber Media/TURN/Metadaten nachweislich in EU halten, AVV/TOM ziehen, deutschsprachigen Support haben — ohne eigenes SFU-On-Call zu betreiben. |
| **E**xisting solution | 1) LiveKit Cloud (US, ab **$50/Mo Ship / $500/Mo Scale**, 150k–1.5M WebRTC-Minuten, $0.0005/$0.0004 overage + $0.01 Agent-Min), 2) **Self-Host LiveKit OSS gratis** (Apache 2.0) auf Hetzner CX22 ~€10/Mo + coturn, 3) Daily.co/Whereby/100ms/Agora/Jitsi ($0.004/Min typisch). |
| **A**lternative cost | Ohne EU-Alternative: Deal/Audit blockiert ("HOLD" wegen US-Transfer), oder 3–8 h/Monat Self-Host-Pflege + Gutachter-Risiko. ASSUMPTION: Ein verhinderter 20k-Deal rechtfertigt 199 €/Mo sofort — aber nur bei regulierten Käufern. |
| **R**eachability | Eng, aber findbar: GitHub LiveKit-Stargazer/Forks, LinkedIn "WebRTC/LiveKit", DACH-Stellenanzeigen, WebRTC-Slack/Communities, Suche "LiveKit EU hosting DSGVO". 20–50 handverlesene Kontakte realistisch, 500er-Blast nicht. |
| **F**requency | Infrastruktur, **täglich/immer-an**: WebRTC-Minuten laufen kontinuierlich, Retention hoch solange Produkt produktiv bleibt. Starke Frequenz, schwacher "Burning Pain" wenn kein akuter Audit ansteht. |
| **R**evenue | Hybrid: **Growth 199 €/Mo inkl. 10k Min + AVV/Support** (Anker: LiveKit Ship $50 ohne EU-Garantie). Overage 0,003–0,004 €/Min. ASSUMPTION: 40 Growth-Kunden → ~95k ARR + Overage. Setup 500 € für Migration. Kein Gratis-Tier, 14-Tage-Trial. |
| **A**dvantage | K6: Tiefe Agent-Orchestrierung/bb/openclaw-Erfahrung (Betrieb automatisierbar), ~20 Projekte + Usage-Tracking-Code, DACH-Freelancer mit Marke berlow.de/pragmatic-ai-systems, bestehende Sende-/Analytics-Infra, Physik/Engineering-Hintergrund, deutschsprachige Zielgruppe erreichbar. Kein LiveKit-Core-Committer-Status — ehrlich kein unfairer Vorteil im Protokoll selbst. |
| **M**oat-later | Datenresidenz-Vertrauen + AVV-Bibliothek + Hetzner-EU-Netz + Switch-Kosten (TURN/Region-Pinning). Angreifbar: Jeder kann LiveKit auf EU-VPS hosten — Moat nur über Support/SLA/Compliance-Papierkram, nicht Technik. |
| **E**ffort | 6/10 solo: LiveKit-Helm + coturn + Tenant-Isolation + Metering + Dashboard/AVV-Download produktiv härten. Kein SFU-Fork. Betrieb ist das Risiko (99,9 % + TURN-Skalierung), nicht der Bau. |

## CLEARFRAME + Market Reality
- **TAM (sanity, not spurious precision):** ASSUMPTION: DACH-Teams die **heute LiveKit produktiv nutzen** ≈ 400–1.200 (Proxy: GitHubStars EU + Jobs + Community). Davon **zahlungsbereit für EU/AVV** eher 80–250 (nur regulierte/Enterprise-nahe). Kein breiter "alle Video-Apps"-Markt — Nische, aber mit 199 €/Mo rechenbar. Auf DACH-Vergaben mit "Hosting in EU/DE + AVV"-Pflicht fokussiert, nicht global.
- **Saturation / competition:** **VERIFIED 2026-09-07:** LiveKit Cloud **Build $0 (5k Min) / Ship $50 (150k Min, $0.0005 overage) / Scale $500 (1.5M Min, $0.0004 overage)** + Agent $0.01/Min [livekit.com/pricing; usagepricing.com/blueprint/livekit; trtc.io 2026-04-22]. **Self-host OSS gratis** (Apache 2.0) — direkter Gratis-Konkurrent auf Hetzner (CX22 ~€10/Mo, Docs bestätigen self-host volle Kontrolle, EU-Region selbst wählbar) [docs.livekit.io/transport/self-hosting; community.livekit.io/t/best-platform-to-self-host]. **CPaaS-Vergleich $0.004/Min typisch:** Daily.co $0.004, Whereby $0.004, 100ms $0.004, Agora $0.00399, Chime $0.0017, Jitsi self-host gratis [rtcinsights.com 2026-01-23]. EU-Jurisdiktion als Differenz: Hetzner DPA/ISO 27001/BSI C5, Daten in DE/EU, DPA nach Art. 28 — keine US-CLOUD-Act-Unterstellung vs. US-Provider [hetzner.com + docs.hetzner.com/data-privacy-faq; serverspace/sota Diskussion Hetzner +30% 2026-04-01].
- **Category maturity & growth:** **Growth** — LiveKit als De-facto-Standard für Realtime + AI-Voice-Agents stark wachsend (Series C $100M at $1B Jan 2026, Series B $45M Apr 2025, treibt ChatGPT voice mode; Downloads 100M+ Docker Hub) [usagepricing / apiscout]. WebRTC-Plattform-Markt 2026 konsolidiert, Preis-Konvergenz ~$0.004/Min, Compliance (HIPAA/SOC2/GDPR) Table Stakes [rtcinsights]. Risiko verlagert sich von "Kategorie existiert nicht" zu "Educate + US-Transfer-Sorge vs. Gratis-Self-Host".
- **CAC vs CLV sanity:** ASSUMPTION: Growth 199 €/Mo × 14–24 Monate Retention (Infra-Sticky) → **CLV 2.800–4.800 €**. Outreach manuell (Founder-led, 20–50 Ziele): Recherche + personalisierte Ansprache + Migrationshilfe → **CAC 120–350 €** → Verhältnis tragbar, aber nur bei präziser Liste. Bei breitem SaaS-Blast underwater. CLV bricht ein, wenn Kunde merkt "Hetzner selbst = €10 + 3h Pflege" reicht. Overage muss Marge schützen.
- **Difficulty score:** 6/10 — Bau moderat (OSS-Helm vorhanden), Betrieb 7/10 (On-Call, TURN, Multi-Region-Latenz <250ms, 99,99% Versprechen).
- **Key risks:**
  1. **Gratis-Anker (K3):** Self-host LiveKit auf Hetzner ist **gratis + dokumentiert** — jeder Dev kann es für €10 selbst tun. Zahlungsbereitschaft hängt allein an AVV/Haftung/Support, nicht an Technik.
  2. **Kleiner, schwer skalierbarer TAM:** Nur LiveKit-nutzende DACH-Teams mit US-Transfer-Blocker — kein "alle die Video brauchen". Wachstum an LiveKit-Adoption gekoppelt.
  3. **Betriebs- und Haftungsrisiko solo:** SFU/TURN-Ausfall = Kundenausfall; AVV-Zusage ohne Anwaltsrückhalt haftungsnah; Region-Pinning/Support-Flows bei LiveKit Cloud teils Scale-gated.

## Cited market signals (researched 2026-09-07)
- LiveKit Cloud Tiers verifiziert: **Build $0 / Ship $50 / Scale $500**, WebRTC-Minuten 5k/150k/1.5M, Overage $0.0005/$0.0004, Agent $0.01/Min, 99.99% Uptime — [livekit.com/pricing](https://livekit.com/pricing) + [usagepricing.com/blueprint/livekit](https://www.usagepricing.com/blueprint/livekit) (Stand Aug 2026) + [trtc.io LiveKit Pricing 2026](https://trtc.io/blog/details/livekit-pricing-2026) (Snapshot 2026-04-22).
- LiveKit OSS self-host gratis (Apache 2.0), kein LiveKit-Fee, vergleicht Cloud vs. self-host inkl. Regionen/Datenresidenz — [docs.livekit.io/transport/self-hosting](https://docs.livekit.io/transport/self-hosting/).
- Self-host auf Hetzner konkret: CX22 ~€10/Mo, "small Hetzner VPS (CX22 at ~4/month) running agent" als Low-Cost-Pfad — [community.livekit.io Best Platform To Self Host](https://community.livekit.io/t/best-platform-to-self-host/614).
- Hetzner DPA/DSGVO: Data Processing Agreement nach Art. 28, ISO/IEC 27001:2022, BSI C5 Type 2, Hosting in DE/EU, DPA-Pflicht für personenbezogene Daten — [hetzner.com/self-hosting](https://www.hetzner.com/self-hosting/) + [docs.hetzner.com/data-privacy-faq](https://docs.hetzner.com/general/general-terms-and-conditions/data-privacy-faq).
- Hetzner Preiserhöhung 2026-04-01 +30–35% (RAM-Shortage/AI-GPU-Nachfrage), 628 HN-Kommentare, Vergleich OVHcloud/Scaleway als EU-Jurisdiktion ohne US CLOUD Act — [sota.io 2026-04-27](https://sota.io/blog/hetzner-price-increase-managed-eu-paas-alternative-2026) + [serverspace.io 2026-06-24](https://serverspace.io/about/blog/best-hetzner-alternatives-in-europe-in-2026-top-hosting-providers-compared/).
- GDPR/Schrems II Transfer-Risiko: Privacy Shield 2020 invalidiert, DPF seit Juli 2023 aktiv aber mit CJEU-Challenge C-078/25 (AG Opinion Q3 2026, Urteil 2026/27) + TIA/SCC-Pflicht außerhalb DPF, EDPB Supplementary Measures — [aigovhub.io](https://www.aigovhub.io/guides/eu-us-data-transfers-post-schrems-ii-guide-2026) + [morvantine.com](https://morvantine.com/en/blog/gdpr-data-transfers-post-schrems-framework-2026) + [launchpadhost GDPR Checklist 2026](https://launchpadhost.com/blog/gdpr-compliant-hosting-checklist).
- CPaaS Pricing-Konvergenz $0.004/Min, LiveKit $0.0005 (günstiger), GDPR/HIPAA überall Table Stakes — [rtcinsights.com WebRTC Platforms Compared 2026-01-23](https://www.rtcinsights.com/blog/webrtc-platforms-compared/) + [apiscout.dev Ably vs LiveKit vs Daily 2026-04-14](https://apiscout.dev/guides/ably-vs-livekit-vs-daily-realtime-api-2026).
- GDPR Telemedizin-Matrix: "self-hosting in-region sidesteps most cross-border transfer complexity" vs. US managed cloud mit Transfer-Assessment — [trembit.com LiveKit vs mediasoup vs Janus 2026-07-23](https://trembit.com/blog/choosing-the-right-sfu-janus-vs-mediasoup-vs-livekit-for-telemedicine-platforms).
- LiveKit DPA vorhanden (Nov 18, 2025) — zeigt US-Provider versucht EU-Abdeckung, löst aber Jurisdiktionsfrage nicht — [livekit.com/legal/data-processing-addendum](https://livekit.com/legal/data-processing-addendum).

## Boring & Trends check
- **Boring/niche defensibility:** Sehr "boring": kein AI-Hype-Feature, sondern **Erzwingung von Papierkram** (AVV, TOM, Region-Pinning, TURN-EU-only). Genau deshalb für YC/Product-Hunt uninteressant und für Platzhirsche (LiveKit Inc) zu klein als dediziertes EU-Produkt — sie verkaufen global, nicht "Falkenstein + deutscher Support". Moat über Langeweile + Vertrauen, nicht über Features.
- **Sociological trend:** **"EU-Datenresidenz als Vergabe-K.-o.-Kriterium"** — immer mehr DACH-Ausschreibungen fordern explizit "Hosting in EU/DE + AVV nach Art. 28" als Pflicht, getrieben durch Schrems-II-Nachwehen und DPF-Unsicherheit (CJEU C-078/25, AG Opinion erwartet Q3 2026). Macht diese Idee heute viable, weil der Einkauf ohne EU-Nachweis nicht mehr unterschreiben darf — vor 24 Monaten war das noch "nice to have" [aigovhub/morvantine/launcpadhost Quellen oben; Hetzner DPA-Nachfrage].
- **Technological trend:** **"LiveKit als Standard-Transport für AI-Voice/Video-Agents"** — LiveKit Agents Framework + Inference treibt Adoption (Series C $1B Jan 2026, 100M+ Docker-Pulls, powers ChatGPT voice mode) — WebRTC wird von "Meeting-Feature" zu "Agent-Infrastruktur". Dadurch wächst die Zahl der Teams, die überhaupt LiveKit produktiv haben und dann vor dem EU-Hosting-Problem stehen; Self-Host-Helm/K8s ist reif genug für Solo-Betrieb [usagepricing/trtc/docs.livekit.io].

## Riskiest assumption test (RAT)
- **What to test next:** 15 qualitative Interviews mit LiveKit-nutzenden DACH-Teams (GitHub/LinkedIn) — "Würdet ihr für EU-gehostetes LiveKit mit AVV + Support 199 €/Mo zahlen oder bleibt ihr bei Self-Host Hetzner / LiveKit Cloud US? Was blockiert den Deal konkret (AVV, Jurisdiktion, Support, Latenz)?" — **vor** Infra-Aufbau. Parallel Landing "In 30 Min auf EU umstellen" + AVV-Muster testen (Click + Trial-Signup).
- **Kill signal:** ≥10/15 sagen "Self-Host reicht, AVV von Hetzner reicht" oder LiveKit Cloud EU-Region-Pinning löst ihr Problem ohne Aufpreis → Wedge trägt nicht.

## Notes / assumptions
- ASSUMPTION: TAM 80–250 zahlungsbereite DACH-Teams — nicht verifiziert, Proxy über GH-Stars/Jobs, braucht echte Zählung.
- ASSUMPTION: Hetzner-DPA deckt SFU-Media-Pfad für AVV-Forderung des Kunden ab — juristisch nicht geprüft (500–1k € Anwalt nötig).
- ASSUMPTION: Solo-Betrieb hält 40–80 Tenants mit Agent-Tooling stabil — erst bei >1.5M Min/Mo (Scale-Schwelle) wird SRE kritisch.
- LiveKit Cloud Region-Pinning existiert, ist aber Scale-gated und löst US-Jurisdiktion (CLOUD Act) nicht vollständig — verifiziert via Docs-Vergleich self-host vs Cloud.
