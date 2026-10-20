# 00c — Realist

## Gewählte Ausprägung

**C — Die Nische** (bb-Power-User, Eltern-Kind-Thread-Mindmap). Begründung:
Julian hat mit `bb` selbst schon die Zielgruppe, den Input
(Weekly-Overview) und die API-Kenntnis — kein Fremd-Setup nötig, um den
ersten Beweis zu bauen. Ausprägung A (generisches Werkzeug für "jedes"
Multi-Agent-Setup) verlangt zuerst eine Integrationsschicht für mehrere
fremde Orchestrierungs-Tools, bevor überhaupt ein Nutzer etwas sieht —
langsamer zum ersten Kunden.

Verworfen, aber aufgehoben: **A — Werkzeug** wäre die Erweiterung, sobald
mehr als bb als Quelle unterstützt werden soll (LangGraph, CrewAI-Setups).
**B — Dienstleistung** (kuratiertes Fleet-Briefing) bliebe die Ausweichoption,
falls sich zeigt, dass die Zielgruppe kein Self-Serve-Tool bedienen will,
sondern lieber eine fertige Zusammenfassung kauft.

## Der erste zahlende Kunde

Ein Solo-Freelancer oder kleines Team, das bb (oder ein selbstgebautes
Setup aus Claude-Code-Worktrees + eigenem Orchestrator-Skript) für
Kundenprojekte nutzt und regelmäßig 5+ parallele Kind-Threads gleichzeitig
laufen hat — z. B. Agentur-Freelancer, die mehrere Kundenprojekte parallel
per Agent bearbeiten lassen, oder technische Gründer, die ihr eigenes
Produkt per Multi-Agent-Setup bauen. Auslöser: der Moment, in dem sie zum
dritten Mal in einer Woche einen wartenden Thread erst Stunden später
bemerken, weil er im Hintergrund lag.

**Erreichbar über:** bb-Community/-Nutzerbasis direkt (Discord/Slack der
bb-Plattform, falls vorhanden), sowie Multi-Agent-/Claude-Code-Power-User-
Communities (Reddit r/ClaudeAI, r/LocalLLaMA, X/Twitter-Threads zu
"agentic coding workflows", GitHub-Discussions zu Multi-Agent-Frameworks).
Kein klassischer Cold-Outreach-Kanal (kein LinkedIn-Filter für "orchestriert
5+ Agenten-Threads") — eher Content/Community-getriebene Reichweite oder
sehr gezieltes 1:1-Ansprechen einzelner sichtbarer Power-User.

## Der kleinste Beweis

**Eingabe:** Weekly-Overview-Texte aller aktiven bb-Threads eines Nutzers
(per bb-API/Export), inkl. Eltern-Kind-Beziehung der Threads.
**Verarbeitung:** LLM extrahiert je Thread Status (läuft / wartet auf
Review / blockiert / fertig), offene Punkte und Risiken; ordnet die Threads
nach ihrer Eltern-Kind-Hierarchie.
**Ausgabe:** Eine statische, aber laufend neu generierbare Mindmap-Ansicht
(z. B. als lokal gehostete Single-Page-App), die alle Threads als Knoten
zeigt, farbcodiert nach Status, gruppiert nach Eltern-Thread.
**Bewusst nicht drin:** kein Live-Websocket-Update, keine Multi-Tool-
Integration (nur bb), kein Onboarding-Flow, keine Team-Rechte/Logins.

## Weg zum ersten Euro

**Preis:** €19/Monat pro Nutzer (Selbstbedienung) — Begründung: Preisanker
knapp unter dedizierten Mindmap-Tools (GitMind $4,90, Storyflow $7,99) plus
Aufschlag für die bb-spezifische Hierarchie-Logik, die diese Tools nicht
liefern.
1. Prototyp gegen Julians eigene bb-Threads bauen und selbst eine Woche
   nutzen.
2. Screenshot/Demo-Video in bb-Community und einschlägigen Power-User-Foren
   teilen, gezielt Feedback von 5–10 sichtbaren Multi-Agent-Nutzern einholen.
3. Aus den Rückmeldungen die 3 am häufigsten gewünschten Anpassungen
   umsetzen.
4. Self-Serve-Signup mit 14-Tage-Test für die ersten Interessenten öffnen.
5. Erste 5 zahlende Nutzer als Referenz für weitere Community-Posts nutzen.

## Aufwand und Abhängigkeiten

ASSUMMPTION: 3–5 Tage für den kleinsten Beweis (Export-Skript + LLM-
Extraktion + einfache Mindmap-Rendering-Bibliothek, z. B. Markmap/D3).
Fehlende Abhängigkeit: eine stabile, dokumentierte Schnittstelle, um
Weekly-Overview-Texte und Thread-Hierarchie aus bb programmatisch
auszulesen (heute ASSUMPTION: über `bb thread show --json` möglich, nicht
verifiziert für Massenabruf). Kein Rechtsrisiko, keine Drittanbieter-API
nötig außer dem ohnehin genutzten LLM.

## Riskanteste Annahme

**Annahme:** Es gibt heute schon genug Menschen, die regelmäßig 5+
parallele Agenten-Threads führen, um daraus eine zahlende Nutzerbasis zu
bilden — nicht nur Julian selbst.
**Billiger Test:** Vor dem Bauen in bb-Community/Power-User-Foren gezielt
fragen: "Wie viele parallele Agenten-Threads führt ihr typischerweise
gleichzeitig, und wie behaltet ihr den Überblick?" — 15–20 Antworten
reichen, um die Annahme zu erhärten oder zu verwerfen.
