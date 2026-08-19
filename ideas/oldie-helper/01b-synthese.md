# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert
| Einwand | Klasse | Antwort |
|---|---|---|
| Circura Wächter deckt das identische Kern-Feature (Live-Betrugserkennung im Gespräch) bereits ab, B2C, startet Herbst 2026 | Weich | Wettbewerb ist kein Kill (K2). Der Plan darf das Feature wechseln, um dem direkten Vergleich auszuweichen. |
| Kanal (Pflegedienst als B2B-Reseller) ist unbewiesen | Weich | Testbar, kein Nachweis der Unmöglichkeit — bleibt riskanteste Annahme, aber kein Abbruchgrund. |
| Echtzeit-Audio-Interception ist nach §201 StGB bei Betrugsanrufen rechtlich angreifbar (Einwilligung des Anrufers nicht erhältlich) | Weich | Real, aber nicht "rechtlich unmöglich" — ein Wettbewerber (Circura) bringt genau das live in den Markt, also ist es kommerziell versuchbar. Trotzdem: vermeidbares Risiko, wenn das MVP-Feature gewechselt wird (siehe Schnittwechsel unten). |
| Julians benannter Unfair Advantage (Agenten-Orchestrierung) passt nicht zu Echtzeit-Telefonie-/Audio-ML | Weich | Zutreffend für das *ursprüngliche* MVP-Feature, entfällt aber, wenn das Feature auf Daten-/Agenten-Arbeit statt Audio-ML verschoben wird. |
| Kein Beleg für Zahlungsbereitschaft der Pflegedienste (€199 + €15/Klient) | Unbelegt | War im Realisten-Plan bereits ausdrücklich als "riskanteste Annahme, ungetestet" markiert, keine neue Widerlegung — zählt als offene Frage, nicht als Einwand gegen die Idee selbst. |

## Harte Einwände
Keine. Kein Einwand erfüllt die Schwelle "rechtlich unmöglich, technisch unmöglich, oder nachweislich kein Käufer" — Pflegedienste als Käufer existieren nachweisbar (17.976, Markt wächst), das Kern-Rechtsrisiko lässt sich durch Feature-Wechsel umgehen statt lösen zu müssen, und Wettbewerb allein ist per K2 kein Kill.

## Überarbeiteter Plan

**Schnittwechsel (kleinster Beweis):** Statt Live-Audio-Interception mit
Content-Analyse (das Circura-Feature, mit §201-Risiko) baut das MVP ein rein
**nummernbasiertes Anruf-Screening**: Abgleich eingehender Anrufe gegen eine
Betrugsnummern-Datenbank (öffentliche Blocklisten + von Pflegedienst-Klienten
selbst gemeldete Nummern aus derselben Region), automatische Push-Benachrichtigung
an die hinterlegte Kontaktperson bei unbekannter/gemeldeter Nummer, plus der
unveränderte Ein-Klick-Video-Notruf. **Kein Mithören von Gesprächsinhalten** —
das umgeht §201 StGB vollständig (Metadaten-Abgleich statt Content-Analyse ist
rechtlich etabliert, so arbeiten auch heute schon Anrufschutz-Apps).
Begründung der Änderung: Löst gleichzeitig das Rechtsrisiko *und* das
Advantage-Problem — Aggregation von Meldedaten + Agenten-gestützte
Benachrichtigungslogik liegt näher an Julians tatsächlicher Kompetenz als
Echtzeit-Audio-ML, und braucht keine Telekom-Spezialinfrastruktur.

**Neuer, aus dem Schnittwechsel entstehender Moat-Ansatz:** Der Pflegedienst
bringt seinen eigenen Klientenkreis als Meldequelle ein — eine regionale,
aus echten Vorfällen gespeiste Betrugsnummern-Datenbank ist etwas, das eine
bundesweite B2C-App wie Circura ohne Pflegedienst-Anbindung nicht hat. Das
macht aus dem bisher rein hypothetischen Vertriebskanal einen echten
Produktunterschied, nicht nur einen GTM-Unterschied.

**Unverändert:** Käufer (Pflegedienst-Inhaber), Erreichbarkeit (B2B-Kaltakquise),
Preis-Annahme (€199 Setup + €15/Klient/Monat), riskanteste Annahme (Bereitschaft
der Pflegedienste, das Produkt zu vermitteln — bleibt ungetestet und bleibt der
nächste billige Test vor jeder Code-Zeile).

## Neue Bewertung
- outreach_score: 5/10 (vorher 4)
- product_score: 5/10 (vorher 4)
- buildable: yes

Begründung nach K5: weiterhin besetzter Markt (Circura, F-Secure, BetrugsRadar+
adressieren dieselbe Grundangst), aber jetzt ein **klarer statt nur behaupteter**
Wedge — rechtlich unstrittiger Ansatz, zum Advantage passende Technik, und ein
Datenvorteil (regionale Meldedaten über den Pflegedienst-Kanal), den die reinen
B2C-Wettbewerber strukturell nicht haben. Kein Sprung in die 6–7-Bandbreite, weil
weder ein struktureller Zwang beim Käufer noch ein bewiesener Vertriebskanal
vorliegt — nur ein plausibler.

## Ehrliches Fazit
Die Überarbeitung hat real etwas gelöst, nicht nur verschoben: Das größte
unlösbare Risiko des Erstplans (§201 StGB bei Live-Audio ohne Einwilligung des
Betrügers) ist durch den Schnittwechsel auf Metadaten schlicht nicht mehr
vorhanden, nicht nur umgangen. Gleichzeitig bleibt der Kern des Problems
bestehen, das keine Überarbeitung lösen kann: Ob ambulante Pflegedienste
tatsächlich als Vertriebspartner für ein fremdes Sicherheitsprodukt auftreten
wollen, ist nicht recherchierbar, sondern nur durch echte Kaltakquise-Gespräche
zu klären — und genau daran hängt der ganze Case. Score 5/10 ist "Ausgang
offen", kein verstecktes Go.
