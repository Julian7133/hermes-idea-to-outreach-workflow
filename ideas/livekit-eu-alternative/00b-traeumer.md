# 00b — Träumer

## Kern in einem Satz

Jedes DACH-Produktteam, das LiveKit liebt, bekommt dieselbe fantastische Entwickler-Experience — nur eben mit deutschem Handschlag: Daten bleiben in der EU, Verträge sprechen Deutsch, und jemand geht ans Telefon, wenn das Video ruckelt.

## Die beste denkbare Version

Stell dir vor, du bist CTO eines 40-Köpfe-Health-Techs in Berlin. Dein Voice-Agent läuft auf LiveKit, Investoren lieben die Demo — aber Datenschutz sagt: "US-Turnserver? AVV? Nein." Heute würdest du Wochen mit Eigenhosting, TURN-Skalierung und Gutachter-Briefen verlieren. In der besten Version tippst du `LIVEKIT_URL=wss://eu.dein-projekt.livekit-eu.de`, tauschst den API-Key, lädst AVV und TOM unterschrieben herunter, und der nächste Call läuft über Falkenstein — Latenz 23 ms, Logs in EU, Rechnung mit USt. Der Wechsel dauert einen Nachmittag, die Klinik kauft, weil die Rechtsabteilung endlich "Ja" sagt.

## Wer wäre begeistert

Die **CTO/Lead-Engineerin eines 25-Personen EdTech-Startups in München**, das Live-Sessions für Prüflinge anbietet. Sie hat LiveKit self-hosted auf Hetzner, verbringt aber jeden zweiten Sprint mit Upgrades, TURN-Debugging und "wie erkläre ich das dem Datenschutzbeauftragten?". Wenn ihr jemand LiveKit-SDK-Kompatibilität plus Hosting in Nürnberg, AVV, Monitoring und deutschsprachigen 4-h-Support abnimmt — und sie nie wieder nachts wegen eines ICE-Failures aufwacht — wäre sie sofort bereit, dafür zu zahlen, weil sie endlich Produkt bauen kann statt Infra.

## Drei Ausprägungen

### A — Werkzeug

**EU-LiveKit Cloud (drop-in).** Managed LiveKit-Cluster in DE/EU, 100 % SDK-kompatibel, gehostet in EU-Rechenzentren, mit Dashboard, Usage-Metering, TURN-EU-only, AVV/DPA-Download, deutsch/englischer Oberfläche. Für Teams, die selbst bauen, aber nicht selbst betreiben wollen. *Für: DACH-Produktteams mit eigenem Dev, die heute LiveKit Cloud oder Self-Host nutzen.*

### B — Dienstleistung

**"Wir migrieren euch in einer Woche."** Done-for-you: Bestands-LiveKit-App auditieren, auf EU-Cluster migrieren, Lasttests, TURN-Hardening, AVV/TOM-Papierkram, Monitoring/Alerts, danach Managed-Betrieb mit SLA. Fixpreis 3.500 € Migration + monatlicher Betrieb. *Für: regulierte Mittelständler/Kanzleien/Kliniken ohne Infra-Team, die Abnahme brauchen.*

### C — Nische

**Telehealth & Bildung — "GKV/Bildungs-DSGVO-Paket".** LiveKit-EU nur für zwei Branchen mit Maximal-Prüfung: Telehealth (DiGA-Nähe, Patienten-Video) und Online-Prüfungen/Proctoring. Inkl. Auftragsverarbeitung nach Art. 28, TOM-Katalog, Logging nur EU, Löschkonzept, Audit-Nachweis. Vertrieb über Fachmessen/Verbände. *Für: DACH-Telehealth/EdTech-Anbieter mit direkter Behörden-/Kassen-Prüfung, bei denen US-Hosting automatisch K.-o. ist.*

## Das wird groß, wenn

1. LiveKit der De-facto-Standard für Realtime + AI-Voice bleibt und die EU-Nachfrage nach sauberer Datenresidenz weiter steigt statt abkühlt.
2. Ein EU-Hosting mit echtem AVV, Support auf Deutsch und vorhersagbaren Preisen für DACH-Einkäufer mehr wert ist als "selbst auf Hetzner schrauben".
3. Der Betrieb so automatisiert werden kann, dass ein Solo-Founder mit Agent-Tooling 40–80 Kunden-Deployments ohne 24/7-Team stabil halten kann.
