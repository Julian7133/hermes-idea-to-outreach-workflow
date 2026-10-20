# 00c — Realist

## Gewählte Ausprägung

**A — Werkzeug (EU-LiveKit Cloud, drop-in)** — führt solo am schnellsten zum ersten Euro, weil die Nachfrage konkret ist ("wir nutzen LiveKit, brauchen EU-Hosting mit AVV") und das Produkt ohne Vor-Ort-Projekt verkauft werden kann. Self-serve Trial + Migration-Doku skaliert besser als B/C, die Projekt-Tage fressen.

Verworfen, aber aufgehoben: **B — Dienstleistung** (stärkerer Preispunkt, aber Solo-Kapazität limitiert, nicht skalierbar vor 20 Kunden); **C — Telehealth/EdTech-Nische** (stärkster regulatorischer Wedge, aber erfordert Branchenzertifikate/Netzwerk — zweite Welle, wenn A trägt).

## Der erste zahlende Kunde

**Lead-Media-Engineer / CTO eines 15–60-MA EdTech/Telehealth/HR-Tech in DACH**, dessen Produkt bereits LiveKit (Cloud oder self-hosted) produktiv nutzt. Auslöser: Datenschutzbeauftragter oder Enterprise-Kunde fordert AVV + "kein US-Transfer" für den nächsten Deal/Audit — Ticket liegt seit Wochen auf HOLD. Moment der Erkenntnis: beim Blick auf LiveKit Cloud Terms ("hosted on AWS US") realisiert das Team, dass der Deal ohne EU-Alt platzt.

**Erreichbar über:** Direktansprache via LinkedIn/GitHub (LiveKit-Stargazer/Contributor, Job-Titel "WebRTC/LiveKit"), DACH-Tech-Communities (WebRTC-Slack, Heise/T3N-Kommentare), sowie Suche ("LiveKit EU hosting DSGVO") — Outreach plus SEO/Docs, nicht reiner Cold-Volume-Blast.

## Der kleinste Beweis

**Eingabe:** Kunde legt Projekt an, erhält `wss://<slug>.eu.livekit.berlow.de` + API-Key/Secret, lädt AVV/TOM als PDF herunter.
**Verarbeitung:** LiveKit-SFU + TURN, ausschließlich EU-Nodes (Hetzner EU-Central/Falkenstein), getrennte Tenant-Isolation, Usage-Metering pro Teilnehmer-Minute, Health-Monitoring.
**Ausgabe:** Drop-in Ersatz: bestehende LiveKit-SDKs verbinden ohne Codeänderung, Media bleibt in EU, Dashboard zeigt Minuten/Sessions, Rechnung mit AVV. Support via E-Mail/Slack mit 4-h-Reaktion im Growth-Tier.

**Bewusst nicht drin:** Eigene SDKs/Fork (nur Config + Hosting), globales Edge-Netz, Recording/Transcription-Eigenbau (LiveKit-Features 1:1 durchgereicht), 99,99 %-SLA im Starter, White-Label-Brand.

## Weg zum ersten Euro

**Preis:** 199 €/Mo Growth (inkl. 10k Min., AVV, Support) — begründet aus Schmerz "Deal blockiert ohne EU-AVV" (ein verhinderter 20k-Deal rechtfertigt 2,4k/Jahr sofort).
1. Hetzner-Server + LiveKit-Helm + coturn in EU-Central provisionieren, Tenant-Isolation und Metering bauen.
2. Landing + Doku ("In 30 Min von LiveKit Cloud auf EU umstellen") + AVV-Muster (Anwalt prüfen lassen) veröffentlichen.
3. 20 LiveKit-nutzende DACH-Teams identifizieren (GitHub/LinkedIn/Jobs) und persönlich anschreiben — Angebot 14-Tage-Trial + Migrationshilfe.
4. Ersten Piloten onboarden, Feedback zu Latenz/TURN/Preis einarbeiten, Logo + Zitat sichern.
5. Standard-Onboarding automatisieren, Preise/Overage justieren.

## Aufwand und Abhängigkeiten

**Aufwand kleinster Beweis:** 12–18 Tage (Infra 5d, Billing/Metering/Dashboard 5d, AVV/TOM/Doku 3d, Trial-Onboarding 2d). Danach laufender Betrieb.

**Fehlende Zugänge:** Juristische AVV/TOM-Vorlage (einmalig Anwalt, ~500–1.000 €), Hetzner/Netcup EU-Infra-Account, LiveKit-OSS-Helm produktiv härten.

**Drittabhängigkeiten:** LiveKit-OSS-Releases (Upstream), Hetzner/Upstream-Netz, coturn/STUN, WebRTC-Browser-Kompatibilität, deutsche DSGVO-Auslegung (keine Zulassung, aber Haftungsrisiko bei Zusagen).

## Riskanteste Annahme

**Annahme:** Genug DACH-Teams würden für "LiveKit + EU/AVV/Support" zahlen statt gratis selbst auf Hetzner zu hosten oder bei LiveKit Cloud zu bleiben.
**Billiger Test:** Vor Bau 15 LiveKit-nutzende DACH-Teams (via GitHub/LinkedIn) fragen: "Würdet ihr 199 €/Mo für EU-gehostetes LiveKit mit AVV + Support zahlen — oder bleibt ihr bei Self-Host/US-Cloud? Warum?" — plus Preis-Anker LiveKit Cloud verifizieren.
