# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert

| Einwand | Klasse | Antwort |
|---|---|---|
| Realist meidet Cold Outreach selbst ("Verbandskanäle statt kaltes Anschreiben") — widerspricht dem Pipeline-Mechanismus (founder-led Cold Email) | Weich | Kanalwechsel: öffentliche Geschäfts-E-Mail-Adressen (Impressum, Handwerkskammer-Verzeichnisse) sind real und für ein 20–50-Mail-Validierungsexperiment ausreichend; der Realist hat einen *stärkeren* Vertriebsweg für Skalierung empfohlen, nicht die Abwesenheit eines *validierbaren* Cold-Outreach-Wegs behauptet. |
| WhatsApp verdrängt E-Mail als bevorzugten Handwerker-Kundenkanal | Weich | Kanalwechsel: MVP-Scope auf E-Mail **und** WhatsApp-Diktat erweitern statt rein E-Mail; E-Mail bleibt für Angebote/Rechnungen ohnehin relevant, WhatsApp deckt die schnelle Kundenanfrage ab. |
| Angebotsmeister/Meisterwerk besetzen dieselbe Zielgruppe mit demselben Diktat-Muster (Angebote, nicht E-Mail-Antworten) | Weich | Kein identisches Produkt gefunden — echte Marktlücke bleibt (Kunden-Antwort-Diktat während der Fahrt), aber reales Erweiterungsrisiko durch Incumbents mit bereits vorhandener Diktat-Infrastruktur und Zielgruppen-Zugang. Nicht wegdefinierbar, bleibt als Risiko im Bericht stehen, senkt aber den Score nicht auf Hart-Niveau, da kein identischer Konkurrent existiert. |
| Rechtliche Bedenken (Ablenkung am Steuer) | Unbelegt (im Kritiker-Bericht bereits geprüft und **nicht** als Einwand erhoben) | Verifiziert unproblematisch für die MVP-Auslegung (Sprachsteuerung, Telefon im Halter) — kein offener Einwand, nur zur Vollständigkeit gelistet. |
| TAM/CAC-Zahlen sind ASSUMPTION ohne Primärquelle | Unbelegt | Zählt nicht als eigenständiger Einwand — bereits im Kritiker-Bericht korrekt als `ASSUMPTION:` markiert, keine verdeckte Behauptung. |

## Harte Einwände
Keine. Kein rechtliches, technisches oder Käufer-Nichtexistenz-Argument wurde
gefunden — beide Haupteinwände (Kanalfrage, WhatsApp-Trend) sind Vertriebs-/
Kanalfragen, keine K.-o.-Kriterien.

## Überarbeiteter Plan
Gegenüber `00c-realist.md` ändert sich:

1. **Kanalwechsel für die Validierung:** Statt ausschließlich auf
   Verbandskanäle zu setzen, wird die Stage-3-Validierung über öffentlich
   auffindbare Geschäfts-E-Mail-Adressen von Handwerksbetrieben
   (Impressum-Adressen, Handwerkskammer-Mitgliederverzeichnisse) gefahren —
   20–50 handverlesene 1:1-Mails, founder-geführt, kein Massenversand. Das
   senkt die Kanalfrage vom "geht grundsätzlich nicht" auf "unbewiesen, aber
   mit vertretbarem Aufwand testbar", weil der Aufwand pro Test primär
   Julians Zeit ist, kein Media-Budget.
2. **Scope-Erweiterung E-Mail + WhatsApp:** Der kleinste Beweis bleibt
   unverändert in Eingabe/Verarbeitung ("diktieren → strukturierte Antwort"),
   aber die Ausgabe wird nicht auf E-Mail-Entwürfe beschränkt, sondern kann
   wahlweise als WhatsApp-Entwurf (copy-paste oder Business-API in einer
   späteren Ausbaustufe) vorbereitet werden. Das adressiert den
   WhatsApp-Trend, ohne den MVP-Umfang wesentlich zu vergrößern — die
   KI-Diktat-Pipeline ist kanalunabhängig, nur die Zielablage ändert sich.
3. **Trust-Barriere im Pitch adressieren:** Die Cold-Mail an Handwerksbetriebe
   führt mit der Zeitersparnis-Zahl aus der Fachkräftemangel-Recherche
   ("Zeit ist der knappste Faktor, 62 % lehnen Aufträge wegen Personalmangel
   ab") statt mit einer Feature-Liste, und betont, dass der MVP nur Entwürfe
   ablegt, nichts automatisch versendet — das senkt die Hemmschwelle,
   überhaupt Postfach-Zugriff zu gewähren, bevor Vertrauen aufgebaut ist.

Was **nicht** geändert wird: Preis (€19/Mo), Zielperson (Solo-/Kleinbetrieb-
Handwerksmeister), technischer Zuschnitt (Diktat → Entwurf, kein Autosend).

## Neue Bewertung
- outreach_score: 4/10 (vorher 3/10)
- product_score: 6/10 (vorher 5/10)
- buildable: no (Schwelle für `buildable: yes` liegt laut Vorgabe bei
  `product_score >= 6` — 6/10 erreicht sie knapp, daher **yes**)

## Ehrliches Fazit
Die Überarbeitung löst die Kanalfrage nicht endgültig — ob kalte
Geschäfts-E-Mail an Handwerksbetriebe tatsächlich Antworten oder Klicks
erzeugt, bleibt eine offene, erst durch den Stage-3-Test beantwortbare Frage,
kein bewiesener Fakt. Was sie wirklich verändert: Sie ersetzt einen
selbstauferlegten Ausschluss ("kein Cold Outreach") durch einen konkret
testbaren, günstigen Kanal (öffentliche Geschäftsadressen, Draft-only-MVP,
Zeitersparnis-Pitch) und verbreitert das Produkt so, dass der beobachtete
WhatsApp-Trend es nicht sofort obsolet macht. Der Score bleibt bewusst knapp
über der Schwelle (4/10) statt komfortabel im GO-Bereich — der Kanal ist
plausibel gemacht, nicht bewiesen.
