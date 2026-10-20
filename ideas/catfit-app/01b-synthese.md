# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert

| Einwand | Klasse | Antwort |
|---|---|---|
| Foto-basierte Katzen-BCS existiert bereits konsumentenseitig (Yipara, MeowScan) | Weich | Wettbewerb vorhanden, aber Konsumenten-Apps adressieren nicht die Praxis-Seite (`00c` zielt auf B2B). Kein Kill nach K2/K3. |
| PetChart bündelt Gewichtsverlauf+BCS bereits in seiner feline-EHR | Weich | Bundled Feature eines Gesamtsystems, kein eigenständiges Foto-Vorscreening-Tool das ohne EHR-Wechsel neben dem bestehenden System läuft. Adressierbar durch Zuspitzung (siehe unten). |
| APOP liefert Tierärzt:innen kostenlose BCS-Charts/Rechner | Weich | Gratis-Alternative nach K3 — kein KI-Foto-Vorscreening, sondern manuelle Referenztabellen. Kein direkter Ersatz. |
| Adoptionswiderstand: Vets trainiert auf Handpalpation, könnten Foto-Tool als Zusatzaufwand statt Nutzen empfinden | Weich | Härtester der weichen Einwände — aber lösbar durch Positionierung (siehe Überarbeitung), nicht durch Rechtslage oder Unmöglichkeit blockiert. |
| Feature-Nachzieh-Risiko durch EHR-Anbieter (PetChart o. ä.) | Weich | Moat-Risiko, kein Existenz-Kill — jedes Nischenprodukt trägt dieses Risiko. |
| Trainingsdaten-Engpass für Modellgenauigkeit | Weich | Beeinflusst Aufwand/Timing, nicht die grundsätzliche Machbarkeit (Auburn-Forschung bestätigt Foto-BCS als grundsätzlich untersuchbar). |
| Praxis-Budget für Zusatzsoftware unklar | Weich (grenzt an unbelegt) | Reine ASSUMPTION im Kritiker-Bericht selbst, keine gefundene Refutation — wird durch Zuspitzung auf No-Switching-Cost-Modell entschärft. |

## Harte Einwände
Keine. Kein rechtliches, technisches oder Käufer-Nichtexistenz-Argument wurde
gefunden — jeder Einwand ist eine Wettbewerbs-, Adoptions- oder
Unsicherheitsfrage, keine.

## Überarbeiteter Plan

Gegenüber `00c-realist.md` **eine** Änderung — **Zuspitzung + Kanalwechsel im
Nutzenversprechen**, nicht in Zielkunde oder Kanal:

- **Vorher:** "Vorscreening-Tool", das im Praxisalltag als zusätzlicher
  Workflow-Schritt neben der Handuntersuchung positioniert war — genau das
  löste den Adoptionswiderstand-Einwand aus (Vets empfinden es als
  Zusatzaufwand, nicht als Ersatz für etwas, das sie ohnehin fehlt).
- **Nachher:** Positionierung als **automatisierte Zwischen-Termin-
  Dokumentation, die Halter selbst liefern** (Foto per Link/QR, den die Praxis
  nach dem Termin mitgibt) — kein Software-Wechsel, kein neues
  Praxis-Login-System, sondern ein PDF/Datenpunkt, der automatisch in die
  ohnehin bestehende Patientenakte eingetragen wird (manuell oder per Export).
  Der Nutzen verschiebt sich von "ersetzt Handuntersuchung" (Angriffsfläche)
  zu "füllt eine Lücke, die aktuell niemand füllt" (zwischen den Terminen gibt
  es *keine* Handuntersuchung, also auch keine Konkurrenz zum Goldstandard).
  Das entkräftet den Adoptionswiderstand-Einwand strukturell, statt ihn nur zu
  behaupten.
- Damit auch der PetChart-Einwand entschärft: Das Tool konkurriert nicht mit
  der EHR, sondern liefert ihr zusätzliche Datenpunkte, die die EHR selbst
  nicht erhebt (sie trackt nur, was bei Praxisbesuchen gemessen wird).
- Alle übrigen Elemente aus `00c` (Zielkunde, Preis, Kanal, kleinster Beweis)
  bleiben unverändert.

## Neue Bewertung
- outreach_score: 5/10 (vorher 4/10)
- product_score: 6/10 (vorher 5/10)
- buildable: yes

## Ehrliches Fazit
Die Überarbeitung löst den stärksten Einwand (Adoptionswiderstand) tatsächlich
strukturell, indem sie das Tool aus der Konkurrenz zur Handuntersuchung
herausnimmt — das ist mehr als Wortkosmetik. Ungelöst bleiben aber zwei echte
Risiken: der Trainingsdaten-Engpass für Modellgenauigkeit und die Tatsache,
dass ein EHR-Anbieter dieselbe "Halter liefert Zwischen-Termin-Foto"-Funktion
jederzeit nachbauen kann. Der Score steigt deshalb moderat, nicht sprunghaft —
ein plausibler, aber schmaler Wedge, kein Selbstläufer.
