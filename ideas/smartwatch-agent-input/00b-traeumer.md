# 00b — Träumer

## Kern in einem Satz
Der Agent soll ansprechbar sein, ohne dass man ihn dafür aufsuchen muss — das Handgelenk wird zum Sprachrohr in den Hintergrundprozess.

## Die beste denkbare Version
Man trägt die Uhr wie immer. Der Agent im Hintergrund stößt auf eine Entscheidung, die nur ein Mensch treffen kann — "Soll ich die Deploy-Pipeline auf main triggern?", "Der Kunde hat geantwortet, willst du, dass ich mit Version B fortfahre?" — und statt in eine Warteschlange zu fallen, die man erst abends am Rechner abarbeitet, klopft es am Handgelenk: ein kurzer Haptik-Impuls, eine Zeile Klartext auf dem Display, drei Antwortmöglichkeiten. Man antwortet im Gehen, im Meeting unter dem Tisch, beim Kochen — ein Tap oder ein Zwei-Wort-Sprachbefehl, und der Agent läuft weiter. Kein Kontextwechsel, kein Handy zücken, kein Tab öffnen. Umgekehrt kann man dem Agenten auch selbst etwas zurufen, ohne dass er darauf gewartet hätte: "notier: Rechnung an Kunde X nachfassen" während man zur Bahn läuft — und es landet sauber einsortiert in seiner Aufgabenliste, nicht in einer Notiz-App, die man nie wieder öffnet.

## Wer wäre begeistert
Der Solo-Freelancer, der drei Agenten parallel laufen lässt (Buchhaltung, Kundenkommunikation, Deployment-Überwachung) und den ganzen Tag zwischen Kundengesprächen pendelt. Er verpasst gerade Freigabeentscheidungen, weil er sein Handy erst zwei Stunden später wieder anschaut — und in der Zwischenzeit steht die Pipeline still oder der Agent hat auf eigene Faust die falsche Entscheidung getroffen. Was besser wird: Er bleibt im Loop, ohne im Loop gefangen zu sein. Der Agent wird vom "Ding, das ich abends prüfen muss" zum "Kollegen, der mich kurz anklopft".

## Drei Ausprägungen

### A — Werkzeug
Eine Watch-App (Apple Watch / Wear OS) mit offenem Protokoll: der Agent (openclaw, Claude Code, eigene Skripte) sendet strukturierte Anfragen an einen kleinen lokalen Relay, die Watch zeigt sie an, Antworten gehen zurück. Für Entwickler und Power-User, die ihren eigenen Agenten-Stack betreiben und ihn nur um einen weiteren Ein-/Ausgabekanal erweitern wollen.

### B — Die Dienstleistung
Ein voll eingerichteter "Agent-am-Handgelenk"-Service: Julian richtet für den Kunden Agent, Watch-Anbindung und die drei bis fünf Entscheidungspunkte ein, die wirklich Freigabe brauchen (Deploy, Versand, Zahlung), inklusive laufender Pflege. Für Selbstständige und kleine Teams, die einen Agenten wollen, aber die Verkabelung nicht selbst bauen können oder wollen.

### C — Die Nische
Zugespitzt auf eine einzige, hochfrequente Entscheidung: die Freigabe kritischer Agenten-Aktionen mit echtem Risiko (Geld bewegen, an Kunden senden, Code deployen) — als reines Freigabe-Gerät, nicht als General-Purpose-Eingabe. Für Teams, die Agenten bereits produktiv einsetzen und eine physische, schnelle Zwei-Faktor-Bestätigung wollen, die nicht im selben Gerät sitzt wie der Agent selbst (Sicherheitsargument: getrenntes Trust-Gerät).

## Das wird groß, wenn
1. Genug Menschen einen Agenten wirklich im Dauerbetrieb laufen haben, der regelmäßig auf menschliche Freigabe wartet — nicht nur einmal am Tag, sondern mehrfach, verteilt über den Tag.
2. Das Warten auf diese Freigabe echte Kosten erzeugt (verlorene Zeit, verpasste Fenster, blockierte Pipelines) — nicht nur unbequem, sondern spürbar teuer oder riskant.
3. Die Watch als getrenntes, vertrauenswürdiges Gerät einen echten Vorteil gegenüber "Handy-Push-Notification reicht doch" bietet — sei es Geschwindigkeit, Diskretion oder Sicherheit.
