# 00c — Realist

## Gewählte Ausprägung
**C — Die Nische** (Freigabe kritischer Agenten-Aktionen am Handgelenk). Begründung: Sie hat den engsten, am klarsten beschreibbaren ersten Kunden (Team/Solo mit produktivem Agenten und echtem Risiko im Loop) und eine einzige Kernfunktion, die sich in wenigen Tagen als Beweis bauen lässt — anders als A (offenes Protokoll für beliebige Agenten, deutlich mehr Integrationsaufwand) oder B (Dienstleistung braucht bereits zahlende Referenzkunden, die es noch nicht gibt).
Verworfen, aber aufgehoben: A — als spätere Plattformerweiterung, falls C zieht, aber zu schmal bleibt. B — als Upsell, sobald 2–3 zahlende C-Kunden bestehen und Einrichtungsaufwand sichtbar wird.

## Der erste zahlende Kunde
Ein Solo-Freelancer oder Zwei-Personen-Studio, das bereits einen Agenten (openclaw, Claude Code Automationen, eigene Skripte) produktiv für mindestens eine risikobehaftete Aktion einsetzt — Rechnungsversand, Deploy auf Produktion, oder automatisierte Kundenantworten. Auslöser: ein Vorfall oder Beinahe-Vorfall, bei dem der Agent etwas ausgeführt hat (oder fast ausgeführt hätte), das ein Mensch hätte stoppen sollen, weil die Freigabe-Notification im Handy-Trubel unterging. Der Moment, in dem er merkt, dass er das braucht: nach diesem Vorfall, wenn er nach "wie kriege ich Freigaben zuverlässiger raus" sucht.
**Erreichbar über:** Cold Outreach in Agent-Ops-/openclaw-nahen Communities (Discord/Slack-Gruppen, in denen genau solche Vorfälle diskutiert werden) — dort ist der Auslöser sichtbar, bevor Julian die Person überhaupt kennt.

## Der kleinste Beweis
**Eingabe:** Ein Agent-Skript ruft einen kleinen lokalen Relay-Dienst mit einer strukturierten Freigabeanfrage auf (Aktion, Risikostufe, Timeout). **Verarbeitung:** Der Relay schickt eine Push-Benachrichtigung mit Ja/Nein/Später an eine Companion-Watch-App (zunächst Apple Watch, da größte installierte Basis bei der Zielgruppe); Antwort geht über denselben Relay zurück an das wartende Skript. **Ausgabe:** Das Skript erhält die Freigabe/Ablehnung und fährt fort oder bricht ab; bei "Später" bleibt die Anfrage in einer kleinen Warteliste.
**Bewusst nicht drin:** Sprachsteuerung, freie Texteingabe von der Watch, Mehrbenutzer-/Team-Funktionen, Unterstützung für Wear OS, jede Cloud-Komponente über den lokalen Relay hinaus.

## Weg zum ersten Euro
**Preis:** 15 €/Monat pro Nutzer (Abo, nicht Einmalkauf) — Begründung: Der Nutzen ist wiederkehrend (jede verhinderte Fehlfreigabe zahlt sich sofort aus), ein Einmalkauf würde die laufende Pflege des Relay-Protokolls gegen App-Updates nicht decken.
1. Kleinsten Beweis bauen (Relay + Apple-Watch-App, 3–5 Tage).
2. An 5–10 Personen aus Agent-Ops-Communities zeigen, die den Auslöser-Moment kennen — als Beta, nicht als Verkauf.
3. Aus dem Feedback die eine Formulierung des Nutzens schärfen, die tatsächlich zieht.
4. Cold Outreach an 20–30 identifizierte Personen mit produktivem Agenten-Einsatz.
5. Erste 3 zahlende Nutzer als Referenz für Preis- und Nutzenvalidierung.

## Aufwand und Abhängigkeiten
ASSUMPTION: 4–6 Tage für den kleinsten Beweis (Relay-Backend + minimale watchOS-App), da Julian keinen bisher demonstrierten watchOS-Track-Record hat — reine Schätzung, im Kritiker-Schritt zu hinterfragen. Fehlender Zugang: Apple Developer Account (99 $/Jahr) für Distribution, auch im Beta-Stadium (TestFlight). Drittabhängigkeit: Apple-Plattformrichtlinien für Watch-Apps und Push-Zustellung (APNs) — kein rechtliches Risiko, aber ein Betriebsrisiko (Policy-Änderung, Review-Ablehnung).

## Riskanteste Annahme
**Annahme:** Genug Menschen haben einen produktiven Agenten mit mehrfach-täglichen, echten Freigabeentscheidungen — nicht nur ein Spielzeug-Setup mit gelegentlichen Alerts.
**Billiger Test:** Vor jeder Codezeile in 3–5 Agent-Ops-Communities offen fragen: "Wie oft am Tag wartet euer Agent gerade auf eine Freigabe, die ihr verpasst oder verzögert beantwortet?" — wenn die Antworten im Bereich "selten/nie" liegen, ist die Prämisse widerlegt, bevor gebaut wird.
