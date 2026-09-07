# 00c — Realist

## Gewählte Ausprägung
**A — Werkzeug** — Solo am schnellsten zum zahlenden Kunden: einmal Slack-App bauen, dann per Self-Service skalieren, ohne wöchentliche Service-Stunden. C ist zu eng für den ersten Euro (Betriebsrats-Nische braucht Rechts-/Vertriebsaufwand), B skaliert nicht ohne Julian-Zeit. Ausprägung A liefert den Kern (Rituale in Slack), der auch später als Service aufgewertet werden kann.
Verworfen, aber aufgehoben: **B — Dienstleistung** bleibt als Upsell/Care-Paket für Kunden, die nach dem Tool Start-Hilfe wollen. **C — DACH-DSGVO-Nische** bleibt als Differenzierungsmerkmal im Wording und Report (Anonymitätsschwelle, Löschkonzept), aber nicht als alleinige Positionierung zum Start.

## Der erste zahlende Kunde
**Mira, People & Culture Lead / Office & Culture Manager, 45-MA-Agentur in Leipzig, hybrid, Slack-pflichtig.** Auslöser: Zwei Kündigungen in 3 Monaten, Geschäftsführung fragt "was tun wir für Kultur/Bindung?", Mira hat kein Budget für Lattice/Culture Amp, aber €49–99/Mo aus Team-Budget sind freigabefähig. Moment: Sie sucht "slack culture bot" / "slack recognition" und vergleicht Shoutout-/Pulse-Tools — Kaufentscheidung in 1–2 Wochen, wenn der Bot in 15 Min. steht und sofort ersten Report liefert.
**Erreichbar über:** Slack App Directory Suche + SEO/Content ("slack culture bot", "slack shoutout intranet"), gezielte Cold Outreach an People-/Office-Manager in Slack-first DACH-Agenturen/Tech-KMU (20–150 MA) über LinkedIn + Website-Signal "nutzt Slack, keine große HR-Suite".

## Der kleinste Beweis
**Eingabe:** Slack-Workspace-Install (OAuth), Auswahl 2 Rituale (z. B. wöchentlicher Pulse mit 1 Frage + täglicher Shoutout-Channel) und Ziel-Channel. **Verarbeitung:** Scheduler postet Pulse/Shoutout-Prompt, sammelt Antworten (anonymisiert ab 5 Teilnehmern), zählt Beteiligung, erkennt wiederkehrende Keywords. **Ausgabe:** Jeden Freitag 9 Uhr ein Report im Channel: Beteiligung, Stimmung (1–5), Top-3-Themen, 1 Handlungsvorschlag für Leads ("Diese Woche 2 Shoutouts zu wenig — erinnere Team X"). **Bewusst nicht drin:** Belohnungen/Guthaben, Performance-Reviews, 360°, tiefes Analytics-Dashboard, Integrationen außer Slack, KI-Coaching — nur die drei Ritual-Schleifen, die täglich/wöchentlich laufen.

## Weg zum ersten Euro
**Preis:** €49/Mo bis 50 MA (jährlich €39/Mo) — Begründung aus Nutzen: ersetzt 2–3 h/Monat manuelle Umfrage + Reminder + Report und liefert wöchentlich sichtbaren Kultur-Beleg; €99/Mo bis 150 MA, weil większy zespół = mehr Wert, aber gleiche Kosten.
1. Slack-App mit Bolt SDK + OAuth + 2 Rituale + Scheduler + Report bauen (2–3 Wochen).
2. Landingpage mit 60-Sekunden-Video "Install in 3 clicks" und 3 echten Beispiel-Reports.
3. 20 handverlesene DACH-Agenturen/Tech-KMU (Slack-Signal auf Website/Karriereseite) per LinkedIn/Email an People-Lead anschreiben — Offer: 14 Tage gratis, dann €49/Mo, Setup-Hilfe inklusive.
4. Nach 10 Installs: 3 Interviews führen, welches Ritual bleibt, welches versandet — nur das behalten.
5. Auf DSGVO-Seite (Daten nur in EU, Löschung, Anonymitätsschwelle) und Empfehlungs-Schleife (1 Monat gratis bei Empfehlung an anderes Slack-Team) bestehen.

## Aufwand und Abhängigkeiten
**Aufwand:** 12–18 Tage für kleinsten Beweis (Slack-App, Scheduler, Report, Billing via Stripe, EU-Hosting). **Fehlende Zugänge:** Slack App Directory Review (1–2 Wochen), Stripe + EU-Hosting (Hetzner EU) vorhanden. **Drittabhängigkeiten:** Slack API (Events, Slash Commands, OAuth) stabil; keine LLM-Pflicht, aber optional für Zusammenfassung; kritisch: Slack-Rate-Limits und App-Review-Richtlinien.

## Riskanteste Annahme
**Annahme:** People-Leads zahlen €49/Mo für "Rituale in Slack" statt gratis Polly/Disco/Donut zu nutzen oder das Problem zu ignorieren. **Billiger Test:** 15 Outreach-Mails an DACH-People-Leads mit 3-Satz-Pitch + Loom des fiktiven Reports — messe Reply-Rate auf "Zeig mir das live" vs. "Wir nutzen schon Polly gratis". Kein Code vor 5 Positiv-Signalen.
