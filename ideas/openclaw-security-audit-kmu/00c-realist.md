# 00c — Realist

## Gewählte Ausprägung
B — Dienstleistung — Ein beauftragtes, bezahltes Audit mit Report ist solo am schnellsten zu einem zahlenden Kunden führbar: kein Produktbau, kein Pricing-Tooling, kein Abo-Support — eine kalendarisch buchbare Leistung mit klarem Deliverable (PDF), die Julians unfairen Vorteil (bb/openclaw-Betriebswissen, ~20 Projekte, DACH-Marke) unmittelbar monetarisiert. Preis rechtfertigt die Recherchezeit; Werkzeug (A) bräuchte erst Entwicklung und Vertrauen, Nische (C) ist eine Zuspitzung von B, nicht eine Alternative.
Verworfen, aber aufgehoben: A — Werkzeug: als späterer Upsell/Lead-Magnet denkbar, sobald Audit-Muster bekannt sind. C — Kanzlei-Nische: bleibt als Ansprache-Zuspitzung innerhalb von B erhalten (erste Zielgruppe), ohne die Leistung künstlich zu verengen.

## Der erste zahlende Kunde
Geschäftsführer/IT-Leiter einer DACH-Steuerkanzlei oder kleinen Wirtschaftskanzlei (15–60 MA, eigener DSB oder externer DSB, Berufshaftpflicht vorhanden), die OpenClaw gerade evaluiert oder bereits auf einem Hetzner/On-Prem-Host laufen hat und vor dem Produktiv-Go steht — Auslöser ist ein konkreter Block: DSB sagt „erst Nachweis", Partner will Freigabe, Versicherung fragt nach TOMs. Moment: Nach Gartner-/Behörden-Warnung googelt die Kanzlei „OpenClaw sicher betreiben / DSGVO", landet auf Warn-Blogposts ohne Handlungsanweisung — und braucht jemanden, der ihre konkrete Installation beurteilt.
**Erreichbar über:** Gezieltes 1:1-Outreach an Kanzleien/KMU mit erkennbarer OpenClaw-Evaluation (GitHub-Diskussionen, Community-Signale, Tech-Blogposts, Stellenausschreibungen/Projektbeschreibungen mit „KI-Agent" + erkennbarem DACH-Sitz) — plus Empfehlungs-Kanal über DSB-Netzwerke und Selective-Content (Checkliste). Cold Outreach ist hier B2B-Anbahnungskontext, nicht B2C-Streuung.

## Der kleinste Beweis
**Eingabe:** Snapshot/Export der OpenClaw-Konfiguration (docker-compose/env-Beispiel ohne echte Secrets, Verzeichnisliste, Netzwerk-Config, Liste eingebundener Tools/Skills), plus 5-Minuten-Fragebogen (Hosting-Ort, Zugriffsmodell, Logging, wer darf was).
**Verarbeitung:** Strukturierte Prüfung gegen eine 25-Punkt-Checkliste (Secrets-Handling, Filesystem-/Tool-Berechtigungen, Persistenz/Backup, Netzwerk-Exposition, Update-Pfad, Logging/Audit-Trail, Datenorte/DSGVO-TOM) — manuell durchgespielt, ergänzt durch einen schmalen, lokalen Scanner (Secrets-Regex, offene Ports, Env-Leaks) — kein Cloud-Upload.
**Ausgabe:** PDF-Report (8–12 Seiten): Ampel je Prüffeld, 5–10 priorisierte Fixes mit Befehl/Config-Snippet, DSB-Anhang (verarbeitete Datenkategorien, TOM-Skizze, Nachweis „menschliche Aufsicht eingerichtet"), 30-Minuten Debrief-Call.
**Bewusst nicht drin:** Dauerhaftes Monitoring, automatisches Härten/Patchen, Rechtsgutachten, Pentest mit echter Exploitation, Abo-Dashboard.

## Weg zum ersten Euro
**Preis:** €1.490 Basis (Remote-Audit Single-Host, Report + Debrief) bis €2.900 erweitert (inkl. Nachprüfung nach Fix-Runde) — Begründung: Der Nutzen ist ein „Go/No-Go mit Deckung" für ein blockiertes Digitalisierungsprojekt; die Alternative sind Wochen interner Recherche oder ein generischer IT-Audit-Tag zu ähnlichem Tagessatz, ohne OpenClaw-Spezifik.
1. Checkliste + PDF-Vorlage in 2–3 Tagen bauen (aus den bekannten Warnquellen abgeleitet).
2. 15–20 Kanzleien/KMU mit erkennbarem OpenClaw-Signal handverlesen, je 1:1 persönlich anschreiben (B2B-Kontext, kein Bulk).
3. Erstes Audit zum Einführungspreis (€990) als Referenzfall durchführen, Report anonymisiert als Muster freigeben lassen.
4. Mit Referenz + Checkliste auf vollen Preis gehen.

## Aufwand und Abhängigkeiten
Kleinster Beweis: 3–5 Tage (Checkliste, lokale Scan-Hilfe, PDF-Vorlage, Website/Checkout via bestehende Domain). Fehlt: Referenz-Report und sauberer Disclaimer (keine Rechtsberatung). Drittabhängigkeiten: OpenClaw-Releases (Checkliste muss mitziehen), keine Pflicht-API, keine Plattform-Freigabe — alles lokal prüfbar.

## Riskanteste Annahme
**Annahme:** Genug regulierte DACH-KMU evaluieren OpenClaw 2026 wirklich (statt nur davon zu lesen), sodass aus Behörden/Gartner-Warnungen kaufbare Audit-Nachfrage entsteht.
**Billiger Test:** Vor jedem Bau 20 Kanzleien/KMU, die öffentlich OpenClaw-Signale zeigen, 1:1 kontaktieren und fragen: „Steht bei euch ein Audit/Go-Entscheid an, oder nur Neugier?" — keine Landingpage, keine Ads, nur Gespräche. Null positives Interesse = keine Pipeline, egal wie gut die Checkliste wird.
