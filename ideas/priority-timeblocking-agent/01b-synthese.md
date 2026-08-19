# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert

| Einwand | Klasse | Antwort |
|---|---|---|
| Motion bedient die gewählte Nische (Freelancer, Multi-Client, Tags) bereits explizit | Weich | Wettbewerb mit Feature-Überschneidung, kein rechtliches/technisches Verbot, kein Beweis für "kein Käufer" — überarbeitbar über Zuspitzung. |
| Kern-Vorteil "kein manuelles Prioritäten-Pflegen" ist unbewiesen; Reclaim-Onboarding gilt als reibungsarm (~15 Min.) | Weich | Kein direkter Konkurrent tut exakt dasselbe (LinkedIn-basierter Cold-Start), aber die Größe des Vorteils ist unbelegt — Risiko, kein K.-o. |
| Preis (€19/Mo) sitzt undifferenziert mitten im Wettbewerbsfeld | Weich | Preisdruck vorhanden, aber kein Beweis, dass niemand zu diesem Preis zahlt — überarbeitbar über Preis-/Positionierungsänderung. |
| DACH/DSGVO-Winkel ist durch Zelvor bereits allgemein besetzt | Weich | Zelvor ist generisch, nicht freelancer-multi-client-spezifisch und nicht auf Solo-Berater zugeschnitten — Lücke schmaler, aber nicht geschlossen. |
| CAC/CLV bei Cold Outreach auf €19/Mo-Self-Serve strukturell dünn | Weich | Zutreffend für skalierten Vertrieb, aber die Hermes-Validierungscharge (20–50 Sends) ist genau für diese Unsicherheit gedacht, kein struktureller Ausschluss. |
| ("TAM DACH nicht separat verifiziert" als Kritikpunkt) | Unbelegt | Als eigenständiger Einwand nicht vom Kritiker erhoben — nur als Notiz/Assumption markiert, keine Widerlegung einer im Plan behaupteten Prämisse. Zählt nicht als eigener Einwand. |

## Harte Einwände
Keine. Kein rechtliches oder technisches Verbot, kein Nachweis eines
nicht-existenten Käufers — nur Wettbewerbs-, Preis- und Belegdruck. Die Idee
überarbeitet eine Runde.

## Überarbeiteter Plan
Gegenüber `00c-realist.md` geändert:

1. **Zuspitzen (Käufer + Sprache):** Der Zielkunde wird auf **deutschsprachige
   Solo-Berater in DACH** eingeengt, die heute entweder ein englischsprachiges
   US-Tool (Motion/Reclaim, ohne DSGVO-Zusicherung) nutzen oder gar keines.
   Begründung: Der Kritiker-Einwand "Motion bedient die Nische bereits" gilt
   für den globalen, englischsprachigen Markt — nicht für DACH-Berater, die
   eine deutschsprachige Oberfläche und EU-Datenhaltung als Kaufkriterium
   nennen könnten. Motion/Reclaim/Zelvor decken diese Dreier-Kombination
   (Sprache + DSGVO-Datenhaltung + Freelancer-Multi-Client-Logik) nach der
   Wedge-Suche im Kritiker-Bericht **nicht** ab.
2. **Kanalwechsel (keiner nötig, aber geschärft):** LinkedIn-Cold-Outreach
   bleibt, aber explizit gefiltert auf DACH-Standort + deutschsprachiges
   Profil — reduziert Streuverlust gegenüber dem breiteren "Freelance-Berater"
   Filter aus `00c`.
3. **Preisänderung:** €15/Monat statt €19/Monat — unterbietet Motion ($29–34)
   deutlich, liegt aber über Reclaim/Trevor-Einstieg; Begründung: die
   DSGVO+Sprache-Kombination ist der Kaufgrund, nicht Feature-Overkill, daher
   kein Premium-Preis nötig.
4. **Kleinster Beweis unverändert**, aber Onboarding-Text und UI werden von
   Anfang an ausschließlich deutschsprachig gehalten (kein Übersetzungs-Layer
   über ein englisches Produkt).
5. **Nicht geändert:** Kernfunktion (Kalender-Zeitblöcke aus
   Kundenprioritäten), Preismodell (Subscription), kleinster Beweis
   (Eingabe/Verarbeitung/Ausgabe aus `00c`).

Der Einwand "Kern-Vorteil unbewiesen" (Zero-Setup-Onboarding via LinkedIn)
bleibt bestehen — dafür ist genau der Wizard-of-Oz-Test aus dem RAT-Abschnitt
vorgesehen und wird nicht durch die Überarbeitung wegdefiniert.

## Neue Bewertung
- outreach_score: 5/10 (vorher 4/10) — engerer, benennbarer Wedge
  (DACH-Sprache + DSGVO-Datenhaltung + Freelancer-Multi-Client), echter
  Cold-Outreach-fähiger Käufer, aber CAC/CLV bei €15/Mo weiterhin dünn und der
  Kern-Nutzenversprechen unbewiesen — besetzter Markt mit offenem Ausgang,
  keine strukturelle Überlegenheit.
- product_score: 5/10 (vorher 5/10, unverändert) — Schmerz real und
  wiederkehrend, solo baubar (Difficulty 6/10), Julians Agenten-Erfahrung
  direkt einsetzbar (K6), aber der Moat bleibt eine Kombination aus drei
  schmalen Lücken statt einer strukturellen — Bau lohnt sich als
  Informationsgewinn, nicht als klarer Produktgewinner.
- buildable: no (product_score 5 liegt unter der Bau-Schwelle 6 aus dem
  Vacation-Run-Prozess — `product_score >= 4` reicht für den
  "Produktkern für den MVP"-Abschnitt, aber nicht für `buildable: yes`, das ab
  6 gilt).

## Ehrliches Fazit
Die Überarbeitung löst den Wettbewerbseinwand teilweise (DACH+DSGVO+Sprache
ist eine reale, wenn auch schmale Lücke), verschiebt aber das eigentliche
Risiko nur: ob "kein manuelles Prioritäten-Pflegen via LinkedIn-Onboarding"
tatsächlich ein Kaufgrund ist, bleibt ungetestet und ist der Punkt, an dem die
Idee in der Praxis stehen oder fallen wird — nicht am Wettbewerb.
