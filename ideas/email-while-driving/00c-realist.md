# 00c — Realist

## Gewählte Ausprägung
**C — Die Nische** (Handwerksbetriebe mit Kundentermin-Rundreisen, speziell
Ein-Personen-/Kleinbetriebe im Elektro-/SHK-/Malerhandwerk). Begründung: Die
Zielgruppe ist über lokale Innungen, Fachverbände und Google-Maps-Branchen-
suche konkret auffindbar (im Gegensatz zu "Vielfahrer" allgemein), und ein
Solo-Entwickler kann mit wenigen handwerksspezifischen Antwortvorlagen
(Terminverschiebung, Angebot nachfassen, Rechnungsfrage) schneller einen
sichtbaren Nutzen zeigen als mit einem generischen Werkzeug für "alle
Vielfahrer".
Verworfen, aber aufgehoben: **A (Werkzeug)** — generische CarPlay-App für
Vielfahrer, breiterer Markt aber ohne Differenzierung gegen Siri/Google
Assistant. **B (Dienstleistung)** — Fahrzeit-Sekretariat per Sprachnachricht,
skaliert schlecht solo (jede Antwort braucht manuelle Prüfung, bis Automation
zuverlässig ist).

## Der erste zahlende Kunde
Ein selbstständiger Elektromeister mit 1–3 Gesellen, der täglich 3–6
Kundentermine fährt (Störungsdienst, Angebotsbesichtigung, Abnahme) und
abends E-Mails von Kunden und Zulieferern beantwortet, statt Feierabend zu
haben. Auslöser: eine besonders volle Woche, in der er merkt, dass sein
Posteingang trotz voller Terminauslastung nicht kleiner wird. Der Moment, in
dem er kauft: wenn er auf einer Fahrt selbst erlebt (Demo/Testphase), dass eine
Antwort "unterwegs erledigt" tatsächlich rausgegangen ist, ohne dass er abends
noch mal ranmusste.
**Erreichbar über:** Lokale Handwerksinnungen (Elektro-Innung, mehrere
Landesverbände mit Mitgliederverzeichnissen), Handwerkskammer-Branchenlisten,
und branchenspezifische Facebook-/WhatsApp-Gruppen für Kleinbetriebe — nicht
kaltes E-Mail-Anschreiben an unbekannte Fremdadressen, sondern Ansprache über
Verbandskanäle, wo Vertrauen bereits vorhanden ist.

## Der kleinste Beweis
**Eingabe:** Eine Sprachaufnahme während der Fahrt ("Antworte Kunde Müller,
Termin Donnerstag passt nicht, biete Freitag 14 Uhr an") plus Zugriff auf
Gmail/Outlook des Nutzers.
**Verarbeitung:** Spracherkennung (Whisper-API) → LLM formt daraus eine
druckreife E-Mail im Ton des Nutzers, unter Rückgriff auf eine kleine
Vorlagenbibliothek handwerkstypischer Antwortmuster → Entwurf wird im Postfach
abgelegt (nicht automatisch versendet).
**Ausgabe:** Ein fertiger E-Mail-Entwurf im Postfach, den der Nutzer beim
nächsten Blick aufs Handy mit einem Klick freigibt.
**Bewusst nicht drin:** Automatischer Versand ohne Freigabe, Vorlesen
eingehender Mails (TTS), CarPlay-/Android-Auto-Integration, Mehrsprachigkeit.
Der MVP ist bewusst "diktieren unterwegs → Entwurf danach freigeben", nicht
freihändiges Vorlesen+Versenden während der Fahrt — das senkt sowohl das
Ablenkungs-/Haftungsrisiko als auch den Bauaufwand drastisch.

## Weg zum ersten Euro
**Preis:** €19/Monat pro Nutzer (Einzelabo) — Begründung: Der Nutzen ist
"jeden Abend 20–30 Minuten weniger Nacharbeit", ein Betrag, den ein
Handwerksmeister mit spürbarem Stundensatz gegen einen niedrigen zweistelligen
Monatsbetrag leicht aufwiegt; kein Enterprise-Preis, weil kein Team-Feature im
MVP.
1. Whisper-API + LLM-Prompting mit 5–8 handwerkstypischen Antwortmustern
   bauen und an eigenen Testfällen prüfen.
2. Gmail-API-Anbindung für Entwurf-Ablage (OAuth, minimal-invasiv, kein
   automatischer Versand) implementieren.
3. Fünf persönliche Testnutzer aus dem eigenen Umfeld/Innungskontakt eine Woche
   kostenlos ausprobieren lassen, Fehlerquote und Tonqualität der Entwürfe
   auswerten.
4. Mit den zwei überzeugtesten Testnutzern über Preis sprechen und den ersten
   zahlenden Abschluss holen.
5. Referenz des ersten Kunden nutzen, um über die Innung zwei bis drei weitere
   anzusprechen.

## Aufwand und Abhängigkeiten
ASSUMPTION: 6–10 Tage für den kleinsten Beweis (Whisper-Anbindung, Prompt-
Tuning für handwerkstypischen Ton, Gmail-OAuth, minimale Bedienoberfläche).
Fehlender Zugang: keine bestehende Beziehung zu einer Handwerksinnung — muss
neu aufgebaut werden. Drittabhängigkeiten: Whisper-/LLM-API-Kosten pro
Diktat-Minute, Gmail-API-Nutzungsrichtlinien (App-Verifizierung nötig, sobald
über Testnutzerkreis hinausgegangen wird), keine bekannte StVO-Problematik für
die MVP-Variante, da während der Fahrt nur diktiert wird (freihändige
Sprachaufnahme ist erlaubt) und der Versand erst nach der Fahrt per Freigabe
erfolgt.

## Riskanteste Annahme
**Annahme:** Handwerksmeister vertrauen einem unbekannten Solo-Anbieter genug
E-Mail-Zugriff an (Lesen + Entwurf-Ablage), um es überhaupt zu testen.
**Billiger Test:** Vor dem Bauen 5–8 informelle Gespräche mit
Handwerksmeistern aus dem eigenen Umfeld/Innungskontakten führen: würden sie
einer App Gmail-Zugriff geben, wenn sie den Anbieter nicht kennen? Wenn die
Antwort mehrheitlich "nein, nicht ohne Referenz" ist, muss der Weg zum ersten
Kunden über eine persönliche Empfehlung statt Cold Outreach laufen — das
prüft man für unter €0 und einen Nachmittag Telefonate.
