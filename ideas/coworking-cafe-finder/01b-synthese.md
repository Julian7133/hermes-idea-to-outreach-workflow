# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert

| Einwand (aus 01 Kritiker) | Klasse | Antwort |
|---|---|---|
| B2C-Zielgruppe (Studierende/Freelancer) nicht per 1:1-Cold-Mail an B2B-Budgethalter erreichbar — kein Hermes-Validierungssend möglich | **Weich** (Kanal ungeeignet, nicht „kein Käufer") | Kanalwechsel: bleibt B2C, aber validierbar über Suche/App Store/Community statt Outreach; Ausprägung C (Prüfungsphasen-Navigator) als Launch-Slice macht Kanal noch spitzer (Campus-Reddit/TikTok). B als Dienstleistung an Studentenwerke wäre outreach-fähig, aber langsamer — für Solo-MVP nicht gewählt. |
| Kernsignal „Live-Auslastung via Google Maps" nicht in offizieller Places API — nur Scraping via Outscraper ($3/1k, ToS-Risiko) | **Weich** (technisch umgehbar, aber teuer/riskant) | Schnittwechsel: Live-Signal gestrichen. Ampel jetzt aus **historischen Popular Times (manuell gepflegt) + Öffnungszeit + eigener Kuratierung** — kein Scraping, nur Nearby/Details Pro ($32/1k, 5k free). Verlust an „Live", Gewinn an Stabilität/Kosten. |
| Gratis-Wettbewerb (CTWF 200+ Städte, Twork, Cafe-Nomad 30k Cafés, Freework) löst Job gratis → 4,99 €/Mo schwer verkaufbar | **Weich** (Gratis ist Preisanker nach K3, kein Todesurteil) | Zuspitzen: Wedge verengt auf DACH-Uni-Stadt + **genau 3 Vorschläge + Bib-Fallback + Stammcafé-zu-Warnung** — das bietet CTWF so nicht; plus Deutsch, Prüfungsphasen-Gewichtung. Löst Zahlungsdruck nicht voll, aber macht Wedge benennbar. |
| SAisonalität + lineare Datenpflege pro Stadt (Cafés schließen, Ruhetage ändern) → Retention-Loch im Sommer, Pflegeaufwand skaliert | **Weich** | Zuspitzen auf **Leipzig-only für MVP** (20 Cafés manuell, 1 Stadt) — beweist Trefferquote vor Scale; Sommerloch bleibt, aber für Test irrelevant. |
| TAM klein, CAC/CLV knapp (CLV 20–30 €, CAC 10–30 €) bei B2C-Abo | **Weich** (Annahme, nicht hart belegt) | Preis/Modell-Test im RAT belassen (Fake-Door 4,99 € vs. einmalig 9,99 €/Semester); affiliate-Lead als sekundär nicht eingepreist. CLV bleibt ASSUMPTION. |
| „Es gibt schon Tools" — kein Alleinstellungsmerkmal | **Unbelegt** | Nach K1/K2 keine Lückenbehauptung im Plan; Wedge-Suche (Live, Bib, 3er-Kuratierung, DACH-Deutsch, Prüfungs-Kalender) wurde nachweislich durchgeführt — Einwand zählt nicht als Kill. |

## Harte Einwände

Keine. Kein rechtliches Verbot, kein technisch Unmögliches (nach Schnittwechsel), und es existiert ein benennbarer Käufer (Prüfungsphasen-Studierende, die täglich suchen) — nur der Hermes-Outreach-Kanal passt nicht.

## Überarbeiteter Plan

**Was sich gegenüber 00c ändert (genau eine Runde):**

1. **Zuspitzung + Schnittwechsel:** Aus „deutschlandweite Live-App" wird **Prüfungsphasen-Navigator Leipzig-only** — 20 kuratierte Cafés + 3 Bibs, Ranking nur aus Distanz + Öffnungszeit (Places Nearby Pro) + statischer Ampel (historisch gepflegt, kein Live-Scraping) + Prüfungsphasen-Flag. Löst ToS-/Kosten-Einwand und macht „3 Vorschläge" testbar in 6–8 Tagen statt Skalierungsaufwand. Begründung: Der härteste Einwand (Live-Signal) war umgehbar; ohne ihn bleibt ein ehrlicher Wedge übrig.
2. **Beweis kleiner:** Statt „Live-Auslastung + Bibliotheken dynamisch" jetzt **statische Ampel + Stammcafé-zu-Erkennung (Öffnungszeiten)**. Bewusst nicht drin: Live-Crowd, User-Accounts, Push, iOS-Nativ — nur Web-App Leipzig.
3. **Kanal explizit:** Validierung nicht via Cold Mail, sondern via **Campus-SEO/TikTok/Reddit** (Fake-Door + 10 Intercept-Interviews). Damit ist der Outreach-Einwand adressiert, ohne ihn zu ignorieren — er wird als Kanalwechsel beantwortet.
4. **Preis-Annahme bleibt, aber testbar:** 4,99 €/Mo bleibt Hypothese, wird im RAT gegen „gratis reicht" getestet; Abbruch wenn <2 % Klickrate. Kein Schönreden des Gratis-Ankers.

Nicht erlaubt und nicht getan: Einwand ignoriert oder Plan verwässert — Wedge bleibt schmal, aber benennbar (DACH-Deutsch, 3er-Kuratierung, Bib-Fallback, Prüfungsphasen).

## Neue Bewertung

- outreach_score: 2/10 (vorher 2/10) — unverändert: auch zugespitzt bleibt es B2C ohne B2B-Cold-Mail-Halter; Hermes-Gate bleibt NO-GO, das ist erwartbar und kein Produkturteil.
- product_score: 5/10 (vorher 4/10) — +1 wegen Wegfall des ToS-Risikos und schärferem, solo-baubarem Wedge (Leipzig + Prüfungsphase + Bib). Gratis-Anker und Saisonalität verhindern mehr als 5; für 6 fehlte Zahlungsnachweis.
- buildable: no (Schwelle 6 nicht erreicht)

## Ehrliches Fazit

Die Überarbeitung hat das härteste technische Risiko (Live-Scraping) sauber entfernt und den Wedge von „noch ein Cafe-Finder" auf „3 kuratierte Vorschläge in Leipzig mit Prüfungslogik + Bib-Fallback" geschärft — damit ist product_score von 4 auf 5 gestiegen, aber nicht auf 6. Der Gratis-Anker bleibt der eigentliche Gegner: Studierende haben heute gute Gratis-Alternativen (CTWF etc.), der Nutzen „nie wieder suchen" ist real, aber noch nicht als 5-€-Problem bewiesen. Die Idee ist als B2C-Tool baubar und testbar, aber kein Cold-Outreach-Fall — genau die Trennung, die K4 will.
