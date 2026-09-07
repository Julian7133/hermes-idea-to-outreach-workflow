# 00b — Träumer

## Kern in einem Satz
Ein einzelnes, ruhiges Board, das alle parallel laufenden KI-Agenten — egal über welches Tool gestartet — in einem Bild zeigt und sofort verrät, wo es hängt.

## Die beste denkbare Version
Du öffnest morgens ein Board und siehst alle 7 Agenten der letzten 24 Stunden: zwei bb-Threads (einer wartet auf dein Review, einer baut gerade), drei Claude-Code-Sessions im Terminal, ein Codex-Job und ein Cursor-Agent im Editor — jeder als Karte mit Status, Eltern-Kind-Linie und letzter Ausgabe, farbcodiert (grün läuft, gelb wartet, rot blockiert). Du klickst eine blockierte Karte an, siehst die letzte Tool-Ausgabe und den blockierenden Parent, entscheidest in 10 Sekunden, und schließt das Board wieder. Kein Springen zwischen vier Terminals, kein Vergessen eines hängenden Agenten im Hintergrund.

## Wer wäre begeistert
Der Freelance-Engineer mit 20 Repos, der täglich 4–8 Agenten über bb und Claude Code parallel orchestriert, dazu Cursor für schnelle Edits und Codex für Reviews nutzt — aktuell hält er den Überblick über `bb thread list`, drei Terminal-Fenster und den Cursor-Chat-Verlauf im Kopf. Mit dem Board schläft er ruhiger, weil kein Agent mehr unbemerkt 3 Stunden im Loop hängt, und er spart täglich 15–20 Minuten reines Status-Sammeln.

## Drei Ausprägungen
### A — Werkzeug
Lokale Desktop-App / TUI + Web-Board (Electron/Tauri oder Next.js lokal), vier Adapter (bb, Claude Code, Codex, Cursor), Polling alle 10–30s, einheitliches Kartenmodell, Filter nach Tool/Status/Parent. Für Solo-Devs und 2–5-Personen-Teams, die es selbst installieren und lokal betreiben.
### B — Dienstleistung
"Fleet-Setup als Service": Du richtest dem Kunden an einem Tag alle Adapter ein, normalisierst seine bestehende Agent-Landschaft und lieferst ein gehostetes Board inkl. Onboarding + 30 Tage Support. Für Agent-schwere Teams, die keine Zeit haben, selbst zu integrieren. Wiederkehrend als Care-Paket.
### C — Nische
bb-natives Fleet-Plugin ausschließlich für bb-Power-User — kein werkzeugübergreifender Anspruch, dafür tiefe bb-Integration (Environment-Graph, Workflow-Runs, Plugin-SDK) als offizielles bb-Community-Plugin. Für die wachsende bb-Community als Lead-Magnet für pragmatic-ai-systems.

## Das wird groß, wenn
1. Multi-Tool-Agent-Nutzung (bb + Claude/Codex + Cursor parallel) von einer Julian-N=1-Eigenheit zu einem verbreiteten Muster unter Solo-Devs und kleinen Agent-Teams wird.
2. Die Adapter stabil bleiben (bb-API bleibt offen, Claude/Codex-Logs bleiben lesbar, Cursor legt seine Agent-Sessions offen).
3. Status-Transparenz als eigenständiger Job (nicht nur "sehen", sondern "entscheiden können") stark genug ist, dass dafür €19/Mo gezahlt wird, obwohl jedes Einzel-Tool bereits ein eigenes Dashboard hat.
