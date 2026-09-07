---
slug: slack-culture-bot
title: Slack Leadership-/Culture-Bot — tägliche Nudges, Recognition und Pulse für Teams auf Slack
status: dropped
created: 2026-09-07
stage: 0
---

# 00 — Idea Capture

## Raw idea
Ein Slack-Bot für Teamleads und People-Leads in 20–150-Personen-Teams, die bereits auf Slack arbeiten. Der Bot liefert drei Jobs in einem schlanken Paket: (1) kurze tägliche/wöchentliche Pulse-Checks und Stimmungsbarometer, (2) leichtgewichtige Recognition/Shoutouts und Ritual-Nudges für Führungskräfte (z. B. "Frag heute 1 Person nach Blockern"), (3) wöchentlicher Culture-Report (Stimmung, Beteiligung, Top-Themen) — ohne separates HR-Tool, ohne neue Oberfläche, direkt in Slack.

## Monetization assumption
Subscription pro Workspace, gestaffelt nach aktiven Nutzern: **€49/Mo bis 50 MA**, **€99/Mo bis 150 MA**, **€199/Mo bis 300 MA** (jährlich -20%). ASSUMPTION: Ein People-Lead/Office-Manager mit Budget für Team-Tools zahlt das aus "Team & Culture"-Budget, wenn der Bot wöchentlich 30–60 Min. manuelle Abstimmung/Umfrage spart und als Ritual läuft. Alternative: €590–€1.490 Setup + €79/Mo Care (Onboarding der Rituale) für DACH-KMU, die lieber Projekt + Betreuung kaufen.

## Solo fit
Scope bewusst schlank: Slack-App (Bolt SDK, Events, Slash-Commands), Scheduler, Postgres/JSON-Store, wöchentlicher Report — kein eigenes HRIS, kein Performance-Management. Julians Vorteil: Agent-Orchestrierung/bb-Erfahrung hilft bei Bot-Logik, DACH-Freelancer kann HR-Leads kalt und über Community erreichen. Guter Solo-Fit, wenn bewusst NICHT "Platform für alles" gebaut wird. Schlechter Fit, wenn daraus breites Engagement-Tool mit Survey-Bibliothek, Analytics-Dashboard und Integrationen wird.

## Trigger / why now
Remote/hybrid Teams behalten Slack als zentrales Betriebssystem, Kultur- und Führungsrituale laufen dort — gleichzeitig steigt die Müdigkeit gegenüber schweren HR-Suiten. Signal: Slack Marketplace und HR-Tool-Roundups listen dutzende Culture-Bots erfolgreich, DACH-Firmen suchen "Slack-native" statt neuer Plattform. ASSUMPTION: Die Nachfrage nach leichtgewichtigen Ritualen (Daily Nudges, Shoutouts, Pulse) ist vorhanden, aber zersplittert auf mehrere Tools.

## Open questions
- Welche der drei Funktionen (Pulse, Recognition, Manager-Nudge) trägt den Kauf allein — oder braucht es das Bündel?
- Wie hoch ist echte Zahlungsbereitschaft gegen Gratis-Alternativen (Polly, Disco, Donut free tier) und gegen Suites (Lattice/Culture Amp)?
- DSGVO/Betriebsrat: Ist ein Slack-Bot mit Stimmungsdaten in DACH-KMU verkaufbar ohne Betriebsrats-Albtraum?
- Wie oft wird der Schmerz wirklich gefühlt — wöchentlich oder nur bei Quartals-Retros/Fluktuation?
