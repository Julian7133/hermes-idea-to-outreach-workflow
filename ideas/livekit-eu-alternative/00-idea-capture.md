---
slug: livekit-eu-alternative
title: LiveKit-kompatible EU-Hosting-Alternative — DSGVO-konformes WebRTC in DE/EU
status: active
created: 2026-09-07
stage: 0
---

# 00 — Idea Capture

## Raw idea

Managed WebRTC-Infrastruktur **LiveKit-kompatibel, gehostet in DE/EU** für Teams, die heute LiveKit Cloud (US-Hosting) oder Eigenbetrieb nutzen, aber **DSGVO/AVV, Datenresidenz und deutschen Support** brauchen. Bietet drop-in-kompatible LiveKit-SDKs (JS/Go/Swift), EU-only Media-Turnover, AVV, DPA und Hosting in deutschen/EU-Rechenzentren (z. B. Hetzner/Falkenstein, EU-Central). Zielkunde: DACH-Product-Teams (10–200 MA) mit sensiblen Video-/Audio-Use-Cases (Telehealth, Bildung, HR, Beratung, CivicTech), die LiveKit lieben, aber nicht in die USA übertragen dürfen oder wollen.

Kein Behaupten "es gibt keine Alternative" — es geht um ein **Wertversprechen**: gleiche Entwickler-Experience wie LiveKit, aber mit rechtssicherer EU-Verankerung, planbaren EU-Preisen und Ansprechpartner auf Deutsch.

## Monetization assumption

Subscription + Usage-Hybrid, monatlich:
- **Starter 49 €/Mo** inkl. 1.000 Teilnehmer-Minuten, danach 0,004 €/Min
- **Growth 199 €/Mo** inkl. 10.000 Minuten + SLA/AVV-Support, danach 0,003 €/Min
- **Scale 499 €/Mo** inkl. 40.000 Minuten + dedizierte EU-Region/WAF-Option

ASSUMPTION: Ziel 40 Growth-Kunden in 12 Monaten → ~95k ARR + Usage-Overage; zusätzlich Setup 500 € für Migration/Hardening bei Enterprise-nahen Kunden. Kein reines Gratis-Tier — 14-Tage-Trial mit EU-Datenraum.

## Solo fit

**Pro:** Schmaler, "boring" Infrastruktur-Job; LiveKit ist OSS — Solo kann bestehende Binaries/Helm-Charts auf EU-Servern betreiben, Billing/AVV/Monitoring drumherum bauen; wiederkehrender Infrastruktur-Bedarf, hohe Switching-Kosten; Julians Agent-Orchestrierung hilft bei Betrieb/Automatisierung.

**Contra:** Betriebskritisch (WebRTC-SFU, TURN, Skalierung, 99,9 % Uptime) — Solo-On-Call-Risiko; Haftungsnähe bei DSGVO-Zusagen; Wettbewerb nicht nur LiveKit Cloud, sondern Hetzner-Selbsthost + EU-CPSPs mit eigenem WebRTC; Kapital für erste Server/Monitoring nötig; UWG/GDPR-Outreach heikel (B2B okay, aber enge Zielgruppe).

## Trigger / why now

- EU-Datenresidenz / Schrems-II-Druck hält an; immer mehr DACH-Vergaben fordern explizit "Hosting in EU/DE + AVV".
- LiveKit ist De-facto-Standard für AI-Voice/Video-Agents (starkes Wachstum 2024–2026), Cloud aber US-zentriert — EU-Nachfrage wächst mit KI-Voice-Use-Cases.
- Hetzner & EU-Rechenzentren bieten günstige, DSGVO-nahe Infra — Hosting-Kosten als Vorteil, nicht Nachteil.

## Open questions

- Wie viele DACH-Teams nutzen LiveKit aktiv und würden für EU-Hosting zahlen vs. selbst hosten (Gratis-OSS)?
- Welche AVV/SLA-Anforderungen sind tatsächlich Kauf-Auslöser vs. "nice to have"?
- Preis-Anker LiveKit Cloud aktuell? EU-Hosting-Aufschlag tragbar?
- Solo-Betrieb: ab welcher Last braucht es 24/7-Coverage / SRE-Hilfe?
