# 00c — Realist

## Gewählte Ausprägung
**B — Dienstleistung (Julian selbst als Layer).** Begründung: Kein Trägerprodukt-Bau, kein Wettbewerb mit Airtable/Notion, keine Store-Policy, sofort lieferbar mit Julians bestehendem Skillset (Agent-Automationen, Integrationen), und der schnellste Weg zum zahlenden Kunden ist ein konkreter Vorher/Nachher-Ablauf statt einer generischen Studio-Software. Die Nische C steckt als Fokussierung *innerhalb* von B — B ohne Fokus verkauft sich nicht, B mit 1–2 Trägertools wird zu C, nur ohne starres Ein-Tool-Versprechen im ersten Schritt.
Verworfen, aber aufgehoben: **A — Werkzeug** bleibt als späterer Hebel, wenn dieselben Workflows 3× verkauft wurden und sich als Produkt kapseln lassen; **C — Nische** (ein Tool, eine Pflicht) ist der nächste Verengungsschritt, sobald die ersten 2–3 Setups zeigen, welcher Träger die stärkste Wiederholbarkeit hat.

## Der erste zahlende Kunde
**Rolle:** Inhaber/Geschäftsführerin eines **SHK-Handwerksbetriebs, 12–22 MA, nutzt Plancraft oder Streit V.1 seit ≥1 Jahr**, sitzt zwischen Büro und Baustelle, hat keine eigene IT, aber eine Office-Kraft, die täglich Aufmaße, Angebote und Rechnungen zwischen Tool, WhatsApp, Excel und E-Mail hin- und herträgt.

**Auslöser:** E-Rechnungspflicht (seit 01.01.2025 Pflicht) + Aufmaß-Chaos: 5–10 Baustellenfotos pro Tag per WhatsApp, manuelle Übertragung ins Branchentool, verspätete Angebote, vergessene Nachträge. Der Moment ist der Montagmorgen, an dem sie das Wochenende mit Angebotstippen verbracht hat, während zwei Monteure auf Freigaben warten — und merkt, dass das Tool nicht das Problem ist, sondern dass niemand es je auf *ihren* Ablauf angepasst hat.

**Erreichbar über:** **Empfehlung + Handwerkskammer/Innung + lokale Suche/Content** — nicht Kaltmail an 50 Betriebe. Handwerker kaufen über Empfehlung des Steuerberaters, des Großhändlers, der Innung oder eines befreundeten Betriebs. Ergänzt durch gezielte Branchen-Community (Plancraft-Facebook-Gruppe, SHK-Forum, Meister-WhatsApp-Gruppen) und SEO-Content ("Plancraft Aufmaß automatisieren", "Streit V.1 Angebot Vorlage anpassen"). Cold Outreach ist hier strukturell der falsche Erstkanal; Pull + Empfehlung ist der Weg.

## Der kleinste Beweis
**Eingabe:** Zugang zu Plancraft (oder Streit V.1) + ein konkreter Schmerz-Workflow des Kunden (z. B. "Baustellenfoto vom Aufmaß → Angebot → E-Rechnung"), plus Beispieldaten (1 altes Angebot, 1 Aufmaß-Foto, 1 Rechnung).

**Verarbeitung:** 1 Tag Discovery (remote/on-site, Ablauf mappen), dann 5–8 Tage Build: (1) Foto→Auftrag-Pipeline (WhatsApp/eMail-Trigger → openclaw-Agent sortiert → Plancraft-Auftrag anlegen/aktualisieren), (2) Angebotsvorlage + Materialpreis-Import (Großhandel CSV/API → Branchentool), (3) E-Rechnung-Export + Versand-Automation (XRechnung/ZUGFeRD), alles über vorhandene APIs/Webhooks/Make/Zapier + kleine Glue-Scripts, kein Core des Trägertools angerührt.

**Ausgabe:** Im gewohnten Branchentool läuft der gewählte Workflow ohne Excel-Umweg: Foto rein → Auftrag/Vorlage befüllt → Angebot/Rechnung raus, inkl. 1-seitigem Loom-Video + Mini-Handbuch ("so pflegst du Preise/Vorlagen selbst") + 14 Tage Care (Feinjustierung). Messbar: vorher 60–90 Min/Tag Umweg, nachher 10–15 Min.

**Bewusst nicht drin:** Eigenes Trägerprodukt, generisches Studio, Multi-Tool-Support, 24/7-SLA, Haftungsübernahme für E-Rechnungs-Konformität (nur Export-Hilfe, Prüfung beim StB), tiefere ERP-Integration (DATEV-Lohn, Fibu bleibt beim StB).

## Weg zum ersten Euro
**Preis:** **€3.200 Setup (Fixpreis)** für den ersten Referenzkunden (rabattiert, danach €3.800–€4.500) + **€390/Monat Care-Retainer** (3 h Anpassungen/Monat, WhatsApp-Support, kleine Workflow-Änderungen) — begründet aus Nutzen: 6 h/Woche × €45/h = ~€1.080/Monat Ersparnis → ROI in ~3 Monaten; Fixpreis signalisiert "kein Berater-Stundengrab".
1. Eine Träger-Nische fixieren (Plancraft SHK, weil API/Webhook vorhanden und DACH-Wachstum), 1 Referenz-Ablauf als Demo-Loom aufnehmen (fiktive SHK-Firma, vorher/nachher).
2. 5–10 Handwerksbetriebe über Kammer/Innung/Großhandel-Kontakt + 2 bestehende Julian-Kontakte ansprechen (Empfehlungsfrage: "Kennt ihr einen Betrieb, der sein Plancraft liebt, aber täglich daran leidet?") — kein Massen-Cold-Outreach.
3. Discovery-Tag beim ersten Interessenten (kostenfrei, wenn danach Setup gebucht wird), Angebot mit fixer Scope-Grenze (1 Workflow + 1 Integration + Vorlagenpaket).
4. Lieferung in 10 Arbeitstagen, Abnahme am realen Auftrag, Loom + Handbuch, Retainer-Angebot direkt bei Übergabe ("für €390 bleib ich dran, wenn sich Preise/Vorlagen ändern").
5. Referenzstory (vorher/nachher in Stunden, Foto→Rechnung in Minuten) als Content + Empfehlungshebel für die nächsten 2 Kunden.

## Aufwand und Abhängigkeiten
**Aufwand kleinster Beweis:** 8–12 Arbeitstage solo (1 Tag Discovery/Mapping, 5–8 Tage Build/Integration, 1–2 Tage Härtung/Doku/Übergabe). Wiederholungen danach 5–8 Tage (Vorlagen vorhanden). Julians bb/openclaw-Stack ist genau dafür gebaut (Glue-Scripts, Agent-Trigger, Make/Zapier-Brücken).

**Fehlende Zugänge:** API-Dokumentation + Testzugang für Plancraft/Streit V.1 (öffentlich verfügbar, aber vor Zusage verifizieren), E-Rechnungs-Validierung (XRechnung/ZUGFeRD-Tool, z. B. Mustang/Seeburger-Validator), WhatsApp Business API oder simpler E-Mail-Trigger als Foto-Eingang.

**Drittabhängigkeiten:** Plancraft/Streit-API-Stabilität, Großhandel-Preisquelle (Idealo-Handel/GC-Gruppe CSV), E-Rechnungs-Standard (XRechnung/ZUGFeRD hat sich seit 2025 stabilisiert), Make/Zapier als Brücke falls kein Webhook. Keine Hersteller-Zertifizierung nötig, wenn über öffentliche API/Webhook gearbeitet wird — aber ein Hersteller, der APIs drosselt, erhöht Aufwand.

## Riskanteste Annahme
**Annahme:** Inhabergeführte SHK-Betriebe (5–30 MA) empfinden den Umweg in ihrem Branchentool als **bezahlbares** Problem — nicht als "nervt, aber wir haben uns arrangiert".

**Billiger Test (vor dem Bauen):** 10 strukturierte 20-Minuten-Gespräche mit Betrieben, die Plancraft/Streit V.1 aktiv nutzen (über Kammer/Innung/Großhandel vermittelt, nicht kalt). Frage nicht "wollt ihr Automatisierung?", sondern "zeigt mir euren Montagmorgen: Wo tippt ihr dasselbe zweimal, wo wartet die Baustelle auf das Büro?". Wenn 6+ spontan denselben 60-Min-Umweg beschreiben und 2+ sagen "dafür würde ich €3k zahlen, wenn es in meinem Tool bleibt", ist die Annahme tragfähig — sonst ist es ein "nice to have".
