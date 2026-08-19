# 00c — Realist

## Gewählte Ausprägung
**B — Dienstleistung**, aber mit Kanalwechsel gegenüber dem Träumer: nicht
Familie kauft direkt, sondern der **Pflegedienst als Wiederverkäufer/Partner**.
Begründung: Die Familie (Kind eines Seniors) ist als Zielgruppe für Cold
Outreach diffus und praktisch nicht listbar; ein ambulanter Pflegedienst ist
ein Gewerbebetrieb mit Website, Adresse, Geschäftsführer:in und öffentlich
auffindbarem Kontakt — die einzige der drei Ausprägungen, bei der der erste
Kunde tatsächlich kalt anschreibbar ist.
Verworfen, aber aufgehoben: **A (Werkzeug/Self-Serve)** scheitert am selben
Reachability-Problem wie B direkt an Familien — kein Kaltakquise-Kanal ohne
Werbebudget. **C (Nische: frisch Verwitwete)** ist rechtlich/ethisch heikel für
Cold Outreach (Trauerfall-Targeting) und zeitlich zu eng getaktet für Validierung.

## Der erste zahlende Kunde
Inhaber:in eines ambulanten Pflegedienstes, 10–30 Mitarbeitende, in einer
mittelgroßen deutschen Stadt. Auslöser: Wettbewerbsdruck durch Pflegekräftemangel
— Familien vergleichen Anbieter, ein Konkurrent bewirbt bereits ein
"digitales Plus" (Sturzsensorik, Notrufknopf-Abo). Der Moment, in dem der
Inhaber merkt, dass er das braucht: wenn ein Klient wegen eines
Betrugsvorfalls oder eines unbemerkten Sturzes fast verloren geht und die
Familie öffentlich (Bewertung, Mundpropaganda) Kritik am Pflegedienst übt, weil
"niemand aufgepasst hat" — obwohl das rechtlich nicht die Aufgabe des
Pflegedienstes ist, trifft es seine Reputation.
**Erreichbar über:** Cold E-Mail/LinkedIn an Geschäftsführer:innen ambulanter
Pflegedienste, Adressen aus öffentlichen Verzeichnissen (z. B. Pflegedienst-
Datenbanken, IHK-Register, LinkedIn-Suche "Inhaber ambulanter Pflegedienst").
B2B, gewerblich, damit UWG-konform kalt anschreibbar.

## Der kleinste Beweis
**Eingabe:** eingehender Telefonanruf beim Senioren (mit vorheriger, dokumentierter
Einwilligung von Senior und Pflegedienst) + Sprachmuster.
**Verarbeitung:** Klassifikation "verdächtig / normal" gegen eine kuratierte
Liste bekannter Betrugsscript-Muster (Enkeltrick, falscher Amtsträger,
Schockanruf) — keine offene Konversation, kein generisches Sprachmodell-Chat.
**Ausgabe:** akustische Warnung an den Senioren direkt im Gespräch + sofortige
Push-/SMS-Benachrichtigung an eine hinterlegte Kontaktperson (Kind oder
Pflegedienst-Zentrale), plus ein Ein-Klick-Video-Notrufbutton auf dem Gerät.
**Bewusst nicht drin:** Terminerinnerungen, Medikamentenplan, Brief-Vorlesen,
freies Chatten — das komplette restliche Funktionsset aus dem Träumer-Bild
kommt erst, wenn dieses eine Feature Vertrauen bewiesen hat.

## Weg zum ersten Euro
**Preis:** €199 einmaliges Pilot-Setup pro Pflegedienst + €15/Klient/Monat
Lizenz, die der Pflegedienst entweder an die Familie weiterberechnet oder als
Differenzierungs-Investition selbst trägt — Begründung: Der Pflegedienst kauft
eine Volumenlizenz statt dass Julian 50 Einzelfamilien einzeln akquirieren muss;
das verlagert das Vertriebsproblem auf einen einzigen B2B-Kunden pro Pilot.
1. Liste von 30–50 ambulanten Pflegediensten in einer Zielregion erstellen.
2. Cold E-Mail/LinkedIn mit konkretem Reputations-/Differenzierungs-Pain.
3. 2–3 Demo-Calls mit Klick-Dummy zeigen (kein Code nötig für den Pitch).
4. Einen Pilot-Pflegedienst gewinnen, 3–5 Testfamilien einrichten.
5. Nach 4–6 Wochen echten Betrag abrechnen, Feedback zur Zahlungsbereitschaft
   einholen.

## Aufwand und Abhängigkeiten
MVP (Anruf-Klassifikation + Video-Notruf-Button) geschätzt 15–20 Tage solo,
aufbauend auf bestehender Agent-Infrastruktur. Kritische Abhängigkeit: Telefonie-
Interception (z. B. via Twilio oder Anrufweiterleitung) ist in Deutschland
einwilligungspflichtig (§201 StGB, Vertraulichkeit des Wortes) — Einwilligung
von Senior **und** Anrufer ist praktisch nicht durchsetzbar bei Betrugsanrufen;
realistischer technischer Weg ist Analyse **nach** dem Gespräch (Aufzeichnung
mit Einwilligung des Seniors als Gerätebesitzer, nicht Live-Interception) oder
ein separates Warngerät, das auf bekannte Anrufer-Nummern/Muster reagiert, nicht
auf Inhalt in Echtzeit. Diese Rechtsfrage ist ungeklärt und geht direkt an den
Kritiker.

## Riskanteste Annahme
**Annahme:** Ambulante Pflegedienste sind bereit, eine Drittanbieter-App an ihre
Klienten zu vermitteln oder mitzufinanzieren, obwohl das zusätzliche Haftungs-
und Erklärungsaufwand für sie bedeutet.
**Billiger Test:** 5–10 Kaltakquise-Gespräche mit Pflegedienstinhabern führen,
konkret fragen: "Würden Sie das Ihren Klienten anbieten, und was müsste es
kosten, damit es sich für Sie lohnt?" — vor jeder Zeile Code.
