# 00c — Realist

## Gewählte Ausprägung
**C — Nische** (interne Dashboards/CRM/Buchhaltung für Freelancer &
Kleinstteams). Begründung: A (Plattform/SDK für fremde SaaS-Anbieter) ist ein
Verkaufsproblem an Produktteams mit eigener Roadmap — viel zu langer
Sales-Zyklus für einen Soloauftakt. B (Dienstleistung) ist im Kern richtig,
aber ohne ein konkretes Trägerprodukt beliebig; C macht daraus ein bauwares
Trägerprodukt mit eingebautem Dienstleistungs-Loop.
Verworfen, aber aufgehoben: **A** — später sinnvoll, sobald C als Referenz
läuft, dann als White-Label-Angebot an andere Solo-SaaS-Betreiber. **B** —
Fallback, falls C als Produkt zu langsam Kunden findet: dieselbe Fähigkeit
als reine Anpassungs-Dienstleistung für ein fremdes bestehendes Tool verkaufen.

## Der erste zahlende Kunde
Ein Freelancer oder Kleinstunternehmer (1–3 Personen, z. B. Handwerker,
Berater, Coach), der bereits ein generisches CRM/Auftrags-Tool (Airtable-
Klon, einfaches CRM, Rechnungstool) nutzt und regelmäßig öffentlich klagt
("dieses Feld brauche ich nicht", "ich will das anders sortiert", "wieso muss
ich das doppelt eintippen") — typischerweise in Freelancer-Foren, Subreddits
oder unter Produkt-Reviews. Auslöser: er hat gerade wieder zwei Stunden mit
einem Workaround verbracht, weil das Tool seine Reihenfolge nicht abbildet.
**Erreichbar über:** Nicht Cold Outreach als Erstkanal — die Person ist über
ihre eigenen öffentlichen Beschwerden (Review-Kommentare, Reddit/Foren-Posts,
Facebook-Gruppen für Freelancer) auffindbar; der erste Kontakt ist eine
warme, kontextbezogene Ansprache ("ich habe deinen Kommentar zu X gesehen"),
kein generischer Kaltakquise-Blast.

## Der kleinste Beweis
**Eingabe:** Ein bestehendes, einfaches Web-Dashboard (z. B. eine simple
Auftragsliste) plus ein Chatfeld, in das der Nutzer einen Änderungswunsch in
natürlicher Sprache eingibt (z. B. "sortiere nach Fälligkeit, nicht nach
Kunde").
**Verarbeitung:** Ein Agent prüft den Wunsch gegen eine kleine, fest
definierte Liste erlaubter Änderungsarten (Sortierung, Spaltenreihenfolge,
Feldbezeichnung, Sichtbarkeit einzelner Felder), formuliert eine Rückfrage
zur Bestätigung, und setzt bei Zustimmung ein nutzerspezifisches Feature-Flag,
das die generierte Änderung ausliefert.
**Ausgabe:** Die Ansicht dieses einen Nutzers ändert sich sichtbar und
dauerhaft; alle anderen Nutzer sehen weiter die Standardansicht.
**Bewusst nicht drin:** keine Änderungen an Datenmodell, Kernlogik,
Berechnungen oder Integrationen — nur Präsentations- und Workflow-Ebene
(Layout, Sortierung, Benennung, Sichtbarkeit).

## Weg zum ersten Euro
**Preis:** 29 €/Monat Aufpreis auf ein bestehendes Basistool (oder als
eigenständiges kleines Auftragstool mit 39 €/Monat inklusive) — begründet
aus dem Nutzen: die Alternative ist entweder ein Custom-Dev-Auftrag (mehrere
hundert Euro) oder dauerhafter täglicher Reibungsverlust; 29–39 €/Monat ist
der Punkt, an dem "Software, die endlich passt" günstiger wirkt als beides.
1. Fünf konkrete Freelancer/Kleinstunternehmer mit öffentlich geäußertem
   Frust über ein bestehendes generisches Tool identifizieren.
2. Für einen von ihnen manuell (ohne volle Automatisierung) genau seinen
   einen größten Änderungswunsch in einem bestehenden Mini-Dashboard
   umsetzen und ihm kostenlos zeigen.
3. Bei positivem Feedback: Chatfeld + Prüf-Agent + Feature-Flag-Mechanik für
   die erlaubte Änderungsliste bauen (kleinster Beweis oben).
4. Den ersten Kunden auf 29 €/Monat umstellen, sobald der automatisierte
   Loop läuft.
5. Über seine öffentliche Referenz (mit Erlaubnis) zwei bis drei weitere
   Nutzer aus derselben Community gewinnen.

## Aufwand und Abhängigkeiten
ASSUMPTION: 8–12 Tage für den kleinsten Beweis (Basis-Dashboard, Chatfeld,
Prüf-Agent mit fester Regelliste, Feature-Flag-Ausspielung) — machbar mit
bestehender Agent-Orchestrierungs-Erfahrung. Fehlend: eine konkrete
Trägerprodukt-Nische mit echtem Bestandsnutzer, an dem getestet wird (noch
nicht ausgewählt). Drittabhängigkeiten: keine kritischen APIs; falls das
Trägerprodukt später als native App vertrieben würde, Abhängigkeit von
Store-Policy (siehe riskanteste Annahme) — für den kleinsten Beweis als
Web-Dashboard nicht relevant.

## Riskanteste Annahme
**Annahme:** Der Prüf- und Build-Schritt lässt sich auf eine so kleine,
klar abgegrenzte Menge erlaubter Änderungsarten begrenzen, dass er pro
Wunsch Minuten statt Stunden kostet — sonst ist es kein Produkt, sondern
Custom-Dev mit Chat-Interface.
**Billiger Test:** Vor jedem Code-Investment fünf bis zehn echte, öffentlich
geäußerte Änderungswünsche aus Freelancer-Foren/Reviews sammeln und von Hand
klassifizieren: wie viele fallen in eine kleine, wiederkehrende Kategorie
(Sortierung/Layout/Benennung/Sichtbarkeit) versus wie viele wären echte
Logikänderungen? Nur bei einer klaren Mehrheit in der ersten Kategorie lohnt
sich der Bau der Automatisierung.
