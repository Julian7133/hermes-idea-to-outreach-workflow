---
slug: openclaw-managed-service
title: Managed Service für OpenClaw — Einrichtung, Absicherung, Betrieb
status: dropped
created: 2026-08-18
stage: 0
---

# 00 — Idea Capture

## Raw idea

Ein Managed Service rund um **OpenClaw** (das selbst-gehostete Open-Source-Agenten-
Framework von Peter Steinberger, ex-Clawdbot/Moltbot): Julian übernimmt für
Gründer/Exec-Teams die **Einrichtung** (Deployment auf VPS/eigener Infra), die
**Absicherung** (Hardening gegen die bekannten Angriffsklassen — Prompt Injection,
Credential-Leaks, offene Gateway-Ports) und den **laufenden Betrieb** (Updates,
Monitoring, Incident-Reaktion). Zielkunde: Firmen/Solo-Founder, die OpenClaw
produktiv nutzen wollen, aber weder Zeit noch Sicherheits-Know-how für einen
sauberen Self-Host haben.

## Monetization assumption

Erst **Projektpreis** für Einrichtung + Hardening (ASSUMPTION: €2.500–5.000
einmalig, je nach Integrationstiefe), danach optional **Fixpreis-Retainer** für
laufenden Betrieb (z. B. „3 Agenten inklusive" für einen festen Monatsbetrag,
ASSUMPTION: €250–800/Monat). Tier A: hoher Preispunkt, wenig Kunden, 1:1-Outreach
statt Self-Serve.

## Solo fit

**Pro:** Setup + Hardening ist eine klar abgrenzbare, projektförmige Leistung —
solo lieferbar, deckt sich mit Julians Kernkompetenz (Absicherung/Betrieb von
Agenten-Infrastruktur). Retainer-Anteil würde wiederkehrenden Umsatz liefern.

**Contra:** Die Positionierung „Managed Service für OpenClaw" ist **kein
Nischen-Fund** — sie ist seit Monaten ein öffentlich dokumentiertes Geschäftsmodell
mit mehrstelliger Zahl aktiver Anbieter im selben Preissegment (siehe 01). Solo-
Differenzierung gegen etablierte, bereits eingeführte Wettbewerber ist die offene
Frage, nicht die Machbarkeit der Leistung selbst.

## Trigger / why now

- OpenClaw ist seit Ende 2025 (als „Clawdbot") und v. a. seit der Umbenennung im
  Januar 2026 extrem schnell gewachsen und in aller Munde.
- Parallel dazu eine Serie öffentlicher Sicherheitsvorfälle (CVE-2026-33579
  Privilege Escalation, „ClawJacked"-Gateway-Hijack, 341 bösartige Skills auf
  ClawHub laut Koi Security) — Grundannahme: Firmen wollen den Agenten nutzen,
  trauen sich aber den Self-Host aus Sicherheitsgründen nicht zu.
- ASSUMPTION: Julian sieht das als Kernkompetenz-Fit (Absicherung/Betrieb), nicht
  primär als Marktlücke.

## Open questions

- Wie groß ist die Zielgruppe „Firmen, die OpenClaw *produktiv* einsetzen wollen"
  wirklich, verglichen mit der Zahl der Hobby-Self-Hoster?
- Was unterscheidet Julians Angebot von den bereits aktiven Anbietern im exakt
  gleichen Preissegment (siehe 01 — Wettbewerbsliste)?
- Ist das Fenster für einen Neueinstieg in dieses Segment (offenbar erst seit
  Frühjahr 2026 existent) schon wieder zu?
