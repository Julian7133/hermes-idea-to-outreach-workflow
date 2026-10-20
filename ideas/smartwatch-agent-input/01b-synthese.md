# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert

| Einwand | Klasse | Antwort |
|---|---|---|
| openclaw selbst liefert die Kernfunktion (Watch-Freigabe) bereits nativ und kostenlos als Wear-OS-Companion | Weich | Wettbewerb/Gratis-Alternative — kein Kill an sich (K3), aber besonders scharf, weil es die *Zielplattform selbst* ist, nicht nur ein Drittanbieter |
| Zwei lebende kommerzielle Wettbewerber mit fast identischem Kernversprechen (Agent Approve $14,99/Mo, AgentWatch Gratis+Plus) | Weich | Wettbewerb vorhanden — Wedge-Suche (K2) wurde durchgeführt, kein Wedge gefunden |
| Kostenlose, community-dokumentierte DIY-Route (Pushcut/ntfy + Shortcuts/Hooks) für dieselbe Zielgruppe | Weich | Gratis-Preisanker (K3) — Frage ist, ob ein Geschäftskunde für Support/Policy/Betrieb zahlt |
| Kein watchOS-Track-Record bei Julian, Aufwand vermutlich 8–12 statt 4–6 Tage | Weich | Aufwandsrisiko, keine Marktaussage — durch Schnittwechsel entschärfbar |
| Kein DACH-/EU-/Sicherheits-Wedge nach expliziter Suche gefunden | Unbelegt als eigener Einwand — ist Ergebnis der Wedge-Suche, kein separater Kritikpunkt | Fließt in die Bewertung der obigen Einwände ein, zählt nicht doppelt |

## Harte Einwände
Keine. Kein Einwand ist rechtlich oder technisch unmöglich, und ein Käufer ist nicht nachweislich ausgeschlossen — die Watch-Genehmigungs-Kategorie existiert nachweislich (drei Anbieter/Varianten), also gibt es zahlende oder zumindest interessierte Nutzer. Die Idee bekommt die eine erlaubte Überarbeitungsrunde.

## Überarbeiteter Plan
**Zug: Rollenwechsel (Werkzeug → Dienstleistung) + Käuferwechsel (Solo-Dev → Team/Kanzlei mit Agent-Betrieb, kein eigener DevOps-Zugang).**

Statt eine vierte Watch-App gegen zwei lebende Wettbewerber und eine kostenlose Plattformfunktion zu bauen: Julian **richtet** bestehende Genehmigungswege (openclaw-eigener Wear-Companion, ggf. Agent Approve, oder die Pushcut/ntfy-DIY-Route) für Teams ein, die das nicht selbst konfigurieren wollen oder können — inklusive Policy-Definition ("was braucht wirklich eine Freigabe"), Einrichtung und laufender Pflege. Kein eigenes Produkt mehr, sondern ein Einrichtungs-/Beratungspaket rund um bereits existierende Tools.

**Ehrlicher Befund der Überarbeitung:** Dieser Zug löst die Wettbewerbseinwände nicht durch Differenzierung, sondern durch **Kategoriewechsel** — und landet damit inhaltlich fast deckungsgleich auf der bereits im Backlog priorisierten, höherrangigen Idee `A3 openclaw-managed-service` ("Managed Service: Einrichtung, Absicherung, Betrieb von openclaw", Tier A). Die überarbeitete Version von `smartwatch-agent-input` ist kein eigenständiges Produkt mehr, sondern ein Feature-Teilausschnitt einer bereits erkannten, breiteren Idee. Eine eigene Produktlinie dafür aufzuziehen wäre Doppelarbeit gegenüber A3, nicht eine neue Chance.

## Neue Bewertung
- outreach_score: 3/10 (vorher 2/10) — Dienstleistungs-Framing ist prinzipiell besser kaltakquirierbar als ein Nischen-Watch-App-Abo, aber der Kanal/Käufer ist identisch mit A3, kein eigenständiger Zugewinn.
- product_score: 3/10 (vorher 3/10) — unverändert: der einzige tragfähige Ausweg aus der Sättigung ist, keine eigene Software mehr zu bauen, sondern in eine bereits höher priorisierte Idee zu verschmelzen. Als eigenständiger Produktkern bleibt nichts Distinktes übrig.
- buildable: no (als eigenständiges Produkt — die tragfähige Restsubstanz gehört zu A3, nicht zu einem separaten `smartwatch-agent-input`-MVP)

## Ehrliches Fazit
Die Überarbeitung hat das Problem nicht gelöst, sondern korrekt benannt: Es gibt keinen eigenständigen Wedge für eine vierte Watch-Genehmigungs-App, weil die Zielplattform selbst (openclaw) die Funktion bereits mitliefert. Der einzige verwertbare Rest — Einrichtung/Beratung für Teams, die das nicht selbst konfigurieren — ist keine neue Idee, sondern ein Teilausschnitt von `A3 openclaw-managed-service`, der dort mitgedacht werden sollte statt hier einen zweiten Eintrag zu erzeugen.
