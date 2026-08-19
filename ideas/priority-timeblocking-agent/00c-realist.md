# 00c — Realist

## Gewählte Ausprägung
**C — Nische** (Freelance-Berater mit mehreren gleichzeitig laufenden
Kundenprojekten). Begründung: Die Zielgruppe ist über LinkedIn cold-anschreibbar
(klar identifizierbares Berufsbild), das Priorisierungsproblem ist bei ihr
konkret und wiederkehrend (Deadline-Konflikte zwischen Kundenprojekten), und
der Scope lässt sich auf einen Kalenderanbieter + einen Onboarding-Typ
begrenzen — schneller solo baubar als das breite Werkzeug (A), das gegen
VC-finanzierte General-Scheduler antreten müsste.
Verworfen, aber aufgehoben: **A — Werkzeug** (breiter General-Scheduler, zu
direkt gegen Motion/Reclaim positioniert, schwer differenzierbar solo). **B —
Dienstleistung** (Weekly-Focus-Concierge, manuell skalierbar aber
zeitintensiv pro Kunde, passt schlecht zu Cold-Outreach-Skalierung).

## Der erste zahlende Kunde
Ein selbstständiger IT-/Marketing-Berater (Einzelunternehmer, kein Team), der
gleichzeitig 3–5 Kundenprojekte mit unterschiedlichen Abrechnungstakten und
Deadlines betreut. Auslöser: er hat gerade wieder eine Deadline eines
kleineren Kunden verpasst, weil der lauteste (nicht wichtigste) Kunde seine
Woche dominiert hat. Er merkt das im Moment der Nachbesprechung mit diesem
Kunden — nicht abstrakt, sondern an einem konkreten Vorfall.
**Erreichbar über:** LinkedIn Cold Outreach (Berufsbild "Selbstständiger
Berater" ist dort klar filterbar) sowie Freelancer-Communities
(z. B. deutschsprachige Slack-/Discord-Gruppen für Consultants).

## Der kleinste Beweis
**Eingabe:** Google-Kalender (lesend + schreibend) des Nutzers, plus eine
kurze Liste seiner aktuellen Kundenprojekte mit Deadline und
Selbsteinschätzung der Priorität (1–5), einmalig im Onboarding erfasst.
**Verarbeitung:** Agent ordnet für die kommende Kalenderwoche freie Zeitblöcke
den Projekten zu, gewichtet nach Deadline-Nähe und Priorität, unter
Berücksichtigung bestehender Fixtermine.
**Ausgabe:** Geblockter Kalender für die kommende Woche, pro Block eine
Zeile Begründung ("Projekt X, weil Deadline in 3 Tagen und Priorität hoch").
**Bewusst nicht drin:** automatisches Rescheduling bei neuen Meetings,
Team-/Mehrpersonen-Kalender, mobile App, laufende Prioritäten-Neuerkennung
ohne manuelles Update.

## Weg zum ersten Euro
**Preis:** €19/Monat pro Nutzer — Begründung aus dem Nutzen: spart geschätzt
1–2 Std. Umplanung pro Woche und verhindert mindestens einen verpassten
Kunden-Termin pro Monat; bei Stundensätzen von 80–150 €/h ist das für den
Zielkunden eine triviale Investition, sofern das Ergebnis trägt.
1. MVP mit Google-Calendar-API + Priorisierungslogik am eigenen Kalender
   testen.
2. 5 Freelance-Berater aus Netzwerk/LinkedIn für einen kostenlosen
   2-Wochen-Pilot gewinnen.
3. Onboarding-Fragen und Prioritätslogik anhand des Pilot-Feedbacks schärfen.
4. Über LinkedIn-Cold-Outreach + Netzwerk die ersten 10 zahlenden Nutzer
   gewinnen.
5. Self-Serve-Checkout (Stripe) einrichten, sobald der Flow ohne manuelle
   Betreuung trägt.

## Aufwand und Abhängigkeiten
ASSUMPTION: 8–12 Tage für den kleinsten Beweis (Google-Calendar-OAuth,
Priorisierungslogik, einfaches Onboarding-CLI/UI). Fehlender Zugang: Google
Calendar API OAuth-Verifizierung (App Review nötig für Schreibzugriff über
100 Nutzer hinaus). Drittabhängigkeiten: Google-Calendar-API-Nutzungsbedingungen,
laufende LLM-API-Kosten pro Nutzer und Woche.

## Riskanteste Annahme
**Annahme:** Ein Freelance-Berater ist bereit, einem Agenten Schreibzugriff
auf seinen Kalender zu geben und ihm die Priorisierungsentscheidung zu
überlassen. **Billiger Test:** 5 Onboarding-Gespräche mit Freelance-Beratern
aus dem eigenen Netzwerk, in denen der Prioritäts-Vorschlag-Flow manuell
simuliert wird (Wizard-of-Oz, kein Code) — Frage: würden sie den
Kalender-Vorschlag so übernehmen?
