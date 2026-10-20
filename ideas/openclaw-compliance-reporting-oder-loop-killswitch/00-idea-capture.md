---
slug: openclaw-compliance-reporting-oder-loop-killswitch
title: OpenClaw Compliance-Reporting oder Loop/Kosten-Kill-Switch (Pivot-Kandidaten)
status: dropped
created: 2026-09-07
stage: 1
---

# 00 — Idea Capture

## Raw idea

Zwei Pivot-Kandidaten aus `secure-openclaw-watchdog` (Tier A, product 6/10, bereits als Kill-Switch-MVP gebaut, PR #19). Beide behalten Julians unfairen Vorteil (Agent-Orchestrierung/bb/openclaw) und adressieren je ein anderes Risiko des bereits gebauten Watchdogs:

**(a) Compliance-Reporting-Tool ohne aktiven Kill-Switch** — nur Logging + täglicher/wöchentlicher Bericht ("menschliche Aufsicht nachweisbar"). Verkauft an GRC-/Datenschutzbeauftragte statt Security-Teams. Niedrigere Trust-Barriere (kein False-Positive-Risiko, kein Eingriff in den Produktiv-Agenten), verspricht Nachweis statt Schutz.

**(b) AgentWatch-artiges Kosten-/Loop-Kill-Switch-Produkt für DACH-Freelancer/Solo-Entwickler mit Claude Code/OpenClaw** — löst Budget-Runaway/Endlos-Loop statt Security-Exfiltration. Bewiesener Preispunkt ($39/Mo, AgentWatch), keine Enterprise-Trust-Barriere, Kaufentscheidung beim Einzelnutzer selbst.

Relevant, falls der bereits gebaute Security-Watchdog-Wedge (neue Output-Ziele + Burst-Erkennung + opt-in Isolation) sich in der Praxis nicht bestätigt — dann ist genau einer dieser beiden Pfade der natürliche Pivot ohne Neu-Bau von null.

Der Kritiker greift den Realisten-Plan für die **gewählte** Ausprägung an; die andere bleibt als verworfene Alternative dokumentiert.

## Monetization assumption

**(a) Compliance-Reporting:** €49–99/Mo SaaS (Selbstbedienung, PDF-Report + Audit-Log-Export) oder €490–990 Einmal-Setup inkl. Erstbericht für Kanzleien/KMU mit externem DSB. ASSUMPTION: DSB/GRC zahlt für "Nachweis menschlicher Aufsicht" als TOM-Baustein (Art. 14 EU AI Act / Art. 32 DSGVO-Kontext). Kleineres, aber wiederkehrendes Compliance-Budget — monatlicher Report ist der Retainer.

**(b) Loop/Kosten-Kill-Switch:** €19–39/Mo pro Developer (AgentWatch-Anker: $39/Mo, CC-Switch ~$29/Mo). Usage-basierter Value: ein verhinderter Runaway spart €20–200 an Token-/API-Kosten; der Preis ist ein Bruchteil des verhinderten Schadens. Solo-Budget, Kreditkarte, kein Einkaufsprozess. ASSUMPTION: DACH-Freelancer mit Claude Code/OpenClaw empfinden Budget-Runaway als wiederkehrenden, bezahlbaren Schmerz (mind. 1–2 Vorfälle/Quartal).

Beide Preise sind bewusst niedrig genug für Self-Serve (kein Enterprise-Sales), hoch genug für Solo-CLV bei 8–12 Monaten Retention.

## Solo fit

Sehr gut — beide Varianten sind kleiner als der bereits gebaute Watchdog:

- **(a)** ist *weniger* als der Watchdog: Lesen + Auswerten + Bericht, kein Eingriff, keine Firewall-Integration, kein Echtzeit-Entscheid. Solo baubar in 3–5 Tagen (Log-Adapter + Report-Vorlage). Haftungsfrage aber heikel: "Compliance-Nachweis" grenzt an Rechtsberatung — Disclaimer-Pflicht.
- **(b)** ist *anders* als der Watchdog, aber technisch verwandt: dieselbe Log-/Token-Beobachtung, andere Heuristik (Kosten/Loop statt Security-Ziele). Julians Vorteil ist direkt: er betreibt selbst ~20 Agent-Projekte, kennt Runaway-Muster, hat bb-/Claude-Code-Logs. Solo baubar als CLI + Menüleisten-Widget (Anschluss an vorhandenes osx-menulet).

Beides schmal, nischig, "boring" — kein YC-Hype. Genau deshalb defensibel per Langeweile.

## Trigger / why now

- Der Watchdog-MVP existiert seit 19.08.2026 als lauffähiger Code — die Pivot-Frage ist nicht hypothetisch, sondern die dokumentierte "falls der Kern nicht trägt"-Option aus `VACATION-BRIEF.md`.
- **(a)** EU AI Act: Art. 14 (menschliche Aufsicht) und Transparenzpflichten erzeugen seit Q2 2026 echten Nachweisdruck — DSBs suchen genau solche Artefakte ("wir loggen und berichten die Aufsicht"), nicht nur Technik.
- **(b)** Claude Code/OpenClaw-Adoption unter DACH-Freelancern steigt 2026 sichtbar; AgentWatch ($39/Mo) und CC-Switch belegen zahlende Nachfrage für Runaway-Schutz; gleichzeitig mehrere Community-Berichte über vierstellige Monatsrechnungen durch Loops (Anthropic erhöht Preise/Ratelimits 2026).

## Open questions

- (a) Zahlt ein DSB/GRC-Beauftragter wirklich separat für "menschliche Aufsicht nachweisbar" — oder erwartet er das als Feature der Agent-Plattform selbst (openclaw/Anthropic) gratis?
- (a) Haftungsrisiko: Darf ein Tool "Compliance-Reporting" heißen ohne Rechtsberatung zu sein — reicht "technischer Bericht + Disclaimer"?
- (b) Wie groß ist die DACH-Solo-Dev-Zielgruppe, die Claude Code/openclaw *produktiv* (nicht spielerisch) nutzt und bereits Runaway-Schmerz hatte — 500 oder 5.000 Personen?
- (b) Ist der DACH-Aufpreis (deutsche Oberfläche/Support/DSGVO-Hosting) für ein $39-Tool überhaupt ein Kaufgrund, oder kauft der Solo-Dev einfach das englische Original?
- Für beide: Ist Cold Outreach der richtige Kanal — oder SEO/Community/Marktplatz (openclaw-Skill/ClawHub)?
