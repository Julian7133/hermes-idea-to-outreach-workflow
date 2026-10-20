# 00c — Realist

## Gewählte Ausprägung
A — Werkzeug. Solo am schnellsten zum zahlenden Kunden, weil es Julians eigenem Schmerz entspricht und er selbst der erste Nutzer/QA ist; kein Dienstleistungs-Onboarding, keine bb-Plattform-Abhängigkeit wie bei C. Verworfen, aber aufgehoben: B (Dienstleistung) als späteres Upsell für Teams, die Setup-Hilfe wollen; C (bb-natives Plugin) als Distribution-Kanal für A, nicht als eigenständiges Produkt.

## Der erste zahlende Kunde
Senior Freelance-Engineer / Indie-Hacker (35–50), DACH oder englischsprachig, betreibt 2–4 Agent-Tools parallel (bb oder Claude Code als Haupt-Orchestrator plus Cursor/Codex als Zweit-Tool), lässt täglich 3–8 Agenten laufen, hat bereits ein oder mehrere OSS-Dashboards ausprobiert und merkt: Jedes zeigt nur die Hälfte. Auslöser: Ein Agent hing 2 Stunden unbemerkt im Loop, ein anderer wartete auf Review, er hat es zu spät gesehen — danach sucht er aktiv nach "unified agent dashboard".
**Erreichbar über:** Community-Kanäle (bb Discord/Community, Claude Code GitHub Discussions, r/ClaudeAI, Cursor Forum, X/Twitter Agent-Tooling-Nische), SEO/Content ("agent fleet dashboard", "Claude Code monitor"), und Empfehlung — nicht über klassischen Cold-Outreach an Firmenlisten.

## Der kleinste Beweis
**Eingabe:** Lokale Statusquellen — `bb thread list/show --json` (Threads + Environments + Workflow-Runs), Claude-Code Session-Logs/JSONL, Codex CLI Logs, Cursor Agent-Sessions (Extension-API oder lokales SQLite/JSON, zu validieren). Polling alle 15–30s. **Verarbeitung:** Normalisierung in ein gemeinsames Modell (id, tool, parentId, status, title, lastOutputSnippet, updatedAt), Ablage in lokaler JSON/SQLite, einfache Heuristik für Status-Mapping. **Ausgabe:** Ein Board (lokales Web-UI, z. B. Next.js/HTMX oder TUI) mit Karten pro Agent, gruppiert nach Parent-Thread/Tool, farbcodiert, Filter nach Tool/Status, Detail-Pane mit letzter Ausgabe.
**Bewusst nicht drin:** Token-/Kosten-Tracking, Remote-Team-Sync/SSO, Eingriffe (Kill/Restart), Benachrichtigungen/Push, Hosting/Multi-User-Backend, Analytics.

## Weg zum ersten Euro
**Preis:** €19/Mo Solo / €190/Jahr (Begründung: Spürbare Zeitersparnis 15–20 Min/Tag + Loop-Erkennung, unter dem Stack-Preis von Claude+Cursur+Codex, aber über Gratis-Dashboards — muss den Adapter-Mehraufwand rechtfertigen) — Lizenzschlüssel lokal validiert, keine Cloud-Pflicht.
1. Adapter-Skelett bauen: bb-Adapter zuerst (eigenes Dogfooding), dann Claude-Code-CLI-Logs, dann Codex/Cursor je nach API-Stabilität prototypieren.
2. Board-MVP lokal lauffähig machen und 2 Wochen selbst im Alltag nutzen, dabei alle Instabilitäten/Bugs sammeln.
3. 10 Design-Partner aus bb-Community / X-Nische gewinnen (kostenloser Early-Access gegen Feedback), 2 Wochen begleitetes Testen.
4. Pricing + Lizenz-Validierung einbauen, Landing + Checkout (LemonSqueezy/Paddle) live stellen.
5. Content-Launch (Show HN / bb-Community / X-Thread) mit echtem Board-Screenshot aus dem Dogfooding, erste 10 zahlende Solo-Kunden gewinnen.

## Aufwand und Abhängigkeiten
Aufwand kleinster Beweis: 10–15 Tage solo (bb-Adapter 2–3 Tage inkl. Dogfooding, weitere Adapter je 2–4 Tage abhängig von Reverse-Engineering, Board-UI 4–5 Tage). Fehlende Zugänge: Cursor-Agent-Session-Format (muss reverse-engineered werden, keine dokumentierte API), Codex-CLI Log-Format (analog). Drittabhängigkeiten: Stabilität der Log-/Storage-Formate der Fremd-Tools (können sich ohne Ankündigung ändern), Polling-Last bei vielen Agenten, lokale Dateisystem-Rechte.

## Riskanteste Annahme
**Annahme:** Es gibt genug Multi-Tool-Nutzer, die für werkzeugübergreifende Übersicht zahlen — nicht nur Julian. **Billiger Test:** Vor dem Bau 15-minütige Interviews + kurze Umfrage in bb-Community, Claude-Code-Discussions und Cursor-Forum: "Nutzt du 2+ Agent-Tools parallel? Welches Dashboard nutzt du heute, und was fehlt dir?" — 10+ positive Antworten mit konkretem Schmerz ("ich verliere Agenten zwischen Tools") als Go-Signal; <5 als Stop-Signal.
