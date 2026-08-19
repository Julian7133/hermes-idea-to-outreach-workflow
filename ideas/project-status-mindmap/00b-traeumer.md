# 00b — Träumer

## Kern in einem Satz

Wer viele Agenten gleichzeitig arbeiten lässt, will in drei Sekunden sehen,
was gerade wichtig ist — ohne einen einzigen Thread selbst zu lesen.

## Die beste denkbare Version

Ein Bildschirm, der nie veraltet: Sobald irgend ein Agenten-Thread seinen
Weekly-Overview-Text aktualisiert, verschiebt sich live ein Knoten auf einer
Mindmap — von "läuft" zu "wartet auf dich" oder "blockiert, seit 40 Minuten".
Man öffnet morgens einen Tab, sieht auf einen Blick zehn parallele
Vorhaben als farbige Cluster, klickt auf den roten Knoten, der am längsten
brennt, und ist in Sekunden wieder im Kontext des einen Threads, der
tatsächlich eine Entscheidung von einem Menschen braucht — der Rest bleibt
unangetastet im Hintergrund weiterlaufen. Kein Scrollen durch zwanzig
Chat-Fenster, kein "welcher Thread wartet eigentlich auf mich" — das Board
selbst beantwortet die Frage, bevor man sie stellt.

## Wer wäre begeistert

Der Solo-Freelancer, der an einem Nachmittag sieben parallele Claude-Code-
Threads für sieben Kundenprojekte laufen lässt, weil er gelernt hat, dass
er als Mensch der Flaschenhals ist, nicht die Agenten. Er hat drei Monitore
offen, in jedem drei bis vier Tabs, und merkt jeden Tag, dass er einen
Thread erst nach Stunden bemerkt, weil das Fenster im Hintergrund lag. Er
würde sofort zahlen für ein einziges Bild, das ihm sagt: "Diese drei
Threads warten auf dich, alle anderen laufen."

## Drei Ausprägungen

### A — Werkzeug

Eine Web-App, die sich mit dem eigenen bb-/Multi-Agent-Setup verbindet, die
Weekly-Overview-Texte aller laufenden Threads liest und daraus laufend eine
interaktive Mindmap/ein Board rendert. Der Nutzer bedient es selbst, keine
Einrichtung durch Dritte nötig. Gedacht für jeden, der selbst mehrere
Agenten-Threads orchestriert.

### B — Die Dienstleistung

Ein wöchentliches "Fleet-Briefing": Man schickt die Weekly-Overviews aller
laufenden Agenten-Threads ein, bekommt eine von Menschen kuratierte,
priorisierte Zusammenfassung zurück — welche drei Dinge diese Woche eine
Entscheidung brauchen, was riskant aussieht, was ignoriert werden kann.
Gedacht für Teams, die zu beschäftigt sind, ein Tool selbst zu bedienen,
aber eine verlässliche externe Stimme wollen, die den Überblick behält.

### C — Die Nische

Zugeschnitten exakt auf bb-Nutzer, die parallele Kind-Threads über `bb
thread spawn` orchestrieren: eine Mindmap, die nicht nur Status zeigt,
sondern die Eltern-Kind-Beziehung der Threads selbst abbildet — wer hat wen
gespawnt, wer wartet auf wen, wo sitzt der eigentliche Engpass in der
Thread-Hierarchie. Gedacht für die kleine, aber wachsende Gruppe von
bb-Power-Usern, die genau dieses Strukturproblem täglich spüren.

## Das wird groß, wenn

1. Parallele Multi-Agent-Orchestrierung durch einen einzelnen Menschen zum
   Alltag wird, statt Ausnahme zu bleiben — je mehr Threads jemand
   gleichzeitig führt, desto unverzichtbarer wird ein zusammenfassendes Bild.
2. Die zugrunde liegenden Orchestrierungs-Tools (bb, Claude Code, Codex)
   selbst keinen befriedigenden nativen Fleet-Überblick liefern und das auch
   mittelfristig nicht zu ihrer Kernaufgabe machen.
