# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert

| Einwand | Klasse | Antwort |
|---|---|---|
| Store-Policy-Konflikt (App-Store) | — (kein Einwand mehr) | Verifiziert klärbar: erlaubt für Datenänderungen bei bereits geprüftem Code; Web-App umgeht das Thema ohnehin vollständig. Nicht sortiert, da bereits im Kritiker-Bericht aufgelöst. |
| Airtable Personal Views bereits im Team-Plan enthalten | Weich | Trägerprodukt-Wahl ändern: nicht gegen Airtable/Notion antreten, sondern Nischentools ohne diese Funktion adressieren (Schnittwechsel). |
| Notion Custom Agents als Incumbent-Antwort | Weich | Gleiche Antwort — Zielgruppe wechselt zu Nutzern von Nischentools, die keine Notion-/Airtable-Migration wollen. |
| Vibe-Coding senkt DIY-Substitutionsschwelle | Weich | Käuferwechsel: Zielgruppe wird explizit auf nicht-technische Kleinstteams verengt (Handwerk, Kanzlei, Beratung), für die Selbstbau strukturell keine Option ist. |
| Reachability schwach für klassische Cold-Outreach (Solo-Freelancer) | Weich | Käuferwechsel: von Einzelperson zu Kleinstteam (2–5 Pers.) mit Geschäftsadresse — verbessert Auffindbarkeit, löst das Grundproblem aber nicht vollständig. |
| Wunsch-Sättigung senkt Retention | Weich | Preismodell anpassen: Sockelbetrag + Pay-per-Wunsch statt reiner Subscription, damit Umsatz nicht allein an Wunschfrequenz hängt. |
| TAM/CAC-Zahlen unbelegt | Unbelegt | Bleiben `ASSUMPTION:`, fließen nicht als eigenständiger Einwand in die Bewertung ein — bereits so gekennzeichnet. |

## Harte Einwände
Keine. Kein rechtliches oder technisches Verbot, kein Nachweis für "kein
Käufer existiert" — nur ein enger, teils besetzter Markt mit einem
Vertriebskanal-Mismatch für die Hermes-Cold-Outreach-Pipeline.

## Überarbeiteter Plan

**Trägerprodukt-Schnitt geändert (Schnittwechsel):** Statt eines neuen,
eigenständigen Dashboard-Produkts, das direkt mit Airtable-Personal-Views und
Notion-Custom-Agents konkurrieren würde, adressiert die Personalisierungs-
Fähigkeit gezielt **Nischen-Branchentools ohne native Personalisierung** —
z. B. einfache Handwerker-Auftragssoftware, Kanzlei-Fallverwaltung,
Berater-CRM-Nischenlösungen, die (anders als Airtable/Notion) keine
Personal-Views- oder Agent-Funktion haben und deren Anbieter zu klein/zu
generisch für schnelle Nachrüstung sind. Begründung: das entzieht den
stärksten verifizierten Konkurrenten (Airtable, Notion) die Angriffsfläche,
weil das Produkt nicht mehr im selben Trägerprodukt-Markt antritt.

**Käuferwechsel:** Von "Solo-Freelancer, warmer Community-Kanal" zu
**Kleinstteams (2–5 Personen) in einer Dienstleistungsbranche** (Handwerk,
Kanzlei, Beratung), die ein branchenspezifisches Nischentool im Einsatz
haben. Diese Betriebe sind über Geschäftsadresse, Xing/LinkedIn und
Branchenverzeichnisse auffindbar — näher an klassischer B2B-Kaltakquise als
eine Einzelperson, auch wenn der Ticketpreis klein bleibt. Der Kanal bleibt
primär warm (öffentlich geäußerter Frust, Nischentool-Communities), Cold
Outreach ist ergänzend, nicht der Erstkanal.

**Antwort auf die Vibe-Coding-Substitution:** Die neue Zielgruppe ist
explizit nicht-technisch — eine Kanzlei- oder Werkstattleitung hat weder
Interesse noch Kompetenz, selbst mit einem KI-Coding-Agenten ihr Tool
umzubauen. Das ist keine bloße Behauptung, sondern eine strukturelle
Eigenschaft der gewählten Zielgruppe (im Unterschied zu z. B. Indie-Hackern
oder technischen Solopreneuren, die genau das täten). Das Risiko sinkt damit
spürbar, verschwindet aber nicht vollständig (Agenturen/IT-Dienstleister
könnten es für ihre Kunden übernehmen).

**Preismodell angepasst:** Sockelbetrag (z. B. 19 €/Monat für laufenden
Hosting-/Wartungsanteil) + 39–59 € einmalig pro umgesetztem Änderungswunsch,
statt reiner 29–39 €/Monat-Flatrate. Das entkoppelt den Umsatz teilweise von
der Wunsch-Sättigung: auch nach Abklingen neuer Wünsche bleibt der Sockel
bestehen, und jeder neue Wunsch (z. B. bei neuen Mitarbeitenden oder
Prozessänderungen) ist zusätzlicher Umsatz statt "kostenlos inklusive".

**Unverändert aus 00c:** kleinster Beweis (Config-Ebene: Sortierung, Layout,
Feldnamen, Sichtbarkeit), riskanteste Annahme und ihr billiger Test.

## Neue Bewertung
- outreach_score: 4/10 (vorher 3) — Käuferwechsel zu Kleinstteams mit
  Geschäftsadresse verbessert Auffindbarkeit leicht; bleibt strukturell
  schwach für die Mailgun-1:1-Pipeline, weil Ticketgröße klein und Kanal
  primär warm ist. Kein Rettungs-Sprung, ehrlich weiterhin unter dem
  Stage-2-Schwellenwert.
- product_score: 5/10 (vorher 4) — Schnittwechsel entzieht den stärksten
  Konkurrenten die Angriffsfläche und macht den Wedge konkreter benennbar
  (Nischentools ohne Personalisierungsfunktion, nicht-technische Zielgruppe);
  bleibt in der K5-Bandbreite "besetzter Markt, aber plausibler Wedge, Ausgang
  offen" — kein Sprung in die 6–7-Bandbreite, weil der Wedge noch nicht an
  einem konkreten Nischentool/einer konkreten Branche verifiziert ist.
- buildable: yes

## Ehrliches Fazit
Die Überarbeitung hat ein echtes Problem gelöst (direkte Kollision mit
Airtable/Notion) und eines nur abgemildert (Reachability bleibt der
strukturelle Schwachpunkt fürs Outreach-Gate). Das Ergebnis ist kein
Durchbruch: ein bauwerter, aber kleiner Produktkern mit einem Vertriebskanal,
der nicht zur Hermes-Cold-Outreach-Pipeline passt. Genau das ist laut K4 ein
legitimes Ergebnis, kein Verstecken einer schwachen Idee hinter Zahlen.
