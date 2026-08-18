# 01 — Devalidation Report

> Filled by `clearframe-devalidation` only. **Auto-aborted:** score < 4/10.
> `boring-and-trends-check` wurde **nicht** ausgeführt (Token-sparender Kill-Switch).

## Verdict
- **Score:** 1/10
- **Go/No-Go:** NO-GO
- **One-line reason:** Die Kernprämisse „ein Dashboard, das mehrere Agenten (openclaw, Claude Code, …) in einer Ansicht zusammenführt" ist **verifiziert falsch** — mindestens sechs kostenlose, aktiv gepflegte Open-Source-Tools tun das bereits (u. a. eines, das explizit OpenClaw + Claude Code + Cursor kombiniert, und eines mit 150k+ Nutzern); ein Subscription-Produkt konkurriert hier gegen Gratis-MIT-Lizenz-Tools, nicht gegen eine Lücke.

## CLEARFRAME breakdown

| Lens | Assessment |
|---|---|
| **C**ustomer | Entwickler, die mehrere KI-Coding-Agenten parallel nutzen (Claude Code, Cursor, opencode, openclaw) — überschneidet sich stark mit der Zielgruppe bereits existierender Gratis-Tools. |
| **L**onging/Job | Verbrauch/Limits/Kosten über mehrere Tools hinweg auf einen Blick sehen, statt in jedem Tool einzeln nachzuschauen. |
| **E**xisting solution | **Bereits gelöst, kostenlos:** ClaudeBar, CodexBar, CodeBurn, TokenTracker, claude-usage-tracker u. a. — mehrere davon decken exakt die genannte Kombination (openclaw + Claude Code, teils + Cursor) ab. |
| **A**lternative cost | Praktisch null — Installation eines kostenlosen Menulets/CLI dauert Minuten (`npx codeburn`, Homebrew-Install). |
| **R**eachability | Zielgruppe (Entwickler mit mehreren Agent-Tools) ist über GitHub/Dev-Communities erreichbar — aber jeder erreichte Lead nutzt vermutlich bereits eines der Gratis-Tools oder findet es in Sekunden. |
| **F**requency | Täglich genutzt (Menu-Bar-Widget) — gute Frequenz, aber das spricht für die Gratis-Konkurrenz genauso wie für uns. |
| **R**evenue | ASSUMPTION: €9–15/Mo × X Kunden — bei einer Kategorie, die vollständig durch MIT-lizenzierte Gratis-Tools mit 150k+ Nutzern (CodeBurn) besetzt ist, ist eine belastbare Zahlbereitschaft nicht herleitbar. |
| **A**dvantage | Realer technischer Vorsprung vorhanden (siehe unten), aber er löst ein Problem, das der Markt bereits kostenlos gelöst hat — der Vorteil zahlt nicht auf eine Zahlungsbereitschaft ein. |
| **M**oat-later | Keiner ersichtlich: Provider-Endpunkte (Keychain/Cookie-Reads) sind von jedem nachbaubar, wie die Vielzahl der Klone zeigt. |
| **E**ffort | 3–4/10 solo (Kern-Logik existiert bereits in `osx-menulet-subscription-usage`) — aber niedriger Bauaufwand ist irrelevant, wenn der Markt für das Ergebnis nicht zahlt. |

## CLEARFRAME + Market Reality
- **TAM (sanity):** Nicht belastbar zu beziffern — die adressierbare Zielgruppe (Entwickler mit ≥2 parallelen KI-Coding-Agenten) existiert, zahlt aber nachweislich nicht dafür: die Referenzimplementierungen sind alle kostenlos/Open-Source.
- **Saturation / competition:** **Verifiziert extrem gesättigt (Stand August 2026).** Mindestens 6 aktive, kostenlose Produkte: [ClaudeBar](https://github.com/tddworks/ClaudeBar) (Claude, Codex, Antigravity, Gemini), [CodexBar](https://codexbar.app/) (69 Provider inkl. Claude, Cursor, Gemini, Copilot — MIT-Lizenz), [CodeBurn](https://codeburn.app/) (36+ Tools, 150k+ Nutzer, MIT-Lizenz, Desktop-App + Menu-Bar + CLI + Web-Dashboard), [claude-usage-tracker](https://github.com/658jjh/claude-usage-tracker) (**explizit OpenClaw + Claude Code + Cursor + Windsurf + Cline + Roo Code + Aider + Continue.dev in einer Ansicht** — genau die im Raw-Idea beschriebene Kombination), [TokenTracker](https://github.com/mm7894215/TokenTracker) (31 Tools inkl. Claude Code, Cursor, Codex, Gemini), [claude-token-tracker](https://github.com/pepperonas/claude-token-tracker). Alle kostenlos, alle aktiv (2026er Commits/Releases).
- **Category maturity & growth:** **Plateau/Übersättigt**, nicht Emerging. Die Kategorie ist bereits durchlaufen: von Single-Tool-Trackern (2025) zu Multi-Tool-Aggregatoren mit 30–69 unterstützten Providern (2026). Ein Neueinsteiger kommt nicht früh, sondern spät in eine bereits konsolidierte Nische.
- **CAC vs CLV sanity:** Strukturell unterwater. Jeder Cold-Outreach-Kontakt kann das Problem in unter 5 Minuten kostenlos lösen (`npx codeburn` oder Homebrew-Install eines MIT-Tools) — ein bezahlter Dienst muss nicht nur Awareness schaffen, sondern eine bereits verfügbare Gratislösung aktiv verdrängen. Kein tragfähiger CAC-Pfad über Cold Email erkennbar.
- **Difficulty score:** 3/10 (technisch — der Code existiert teilweise schon), aber **Go-to-Market-Schwierigkeit 9/10** — gegen kostenlose, funktionsreichere Open-Source-Alternativen mit Nutzerbasis zu monetarisieren.
- **Key risks:**
  1. **Premise tot** — die Kombi-Ansicht (openclaw + Claude Code + weitere) existiert bereits kostenlos und open-source, nicht als Lücke.
  2. **Kein Preis-Wedge möglich** — MIT-Lizenz-Tools mit 150k+ Nutzern setzen den Ankerpreis bei €0; ein €9–15/Mo-Produkt hat keine funktionale Differenzierung, die das rechtfertigt.
  3. **Der reale unfaire Vorteil (bestehender Menulet-Code) zeigt selbst, dass die Idee naheliegend genug ist, dass viele andere sie parallel bereits umgesetzt haben** — kein First-Mover-Vorteil, kein Distributionskanal, der die Konkurrenz übertrifft.

## Cited market signals (researched 2026-08-18)
- Kernprämisse widerlegt — exakte Tool-Kombination existiert bereits kostenlos: [claude-usage-tracker (658jjh)](https://github.com/658jjh/claude-usage-tracker) — „Track and visualize Claude AI usage costs across all local tools — OpenClaw, Claude Code, Claude Desktop, Cursor, Windsurf, Cline, Roo Code, Aider, and Continue.dev".
- Marktsättigung, Multi-Provider-Abdeckung: [CodexBar](https://codexbar.app/) — 69 Provider, MIT-Lizenz, kostenlos ([GitHub](https://github.com/steipete/CodexBar)).
- Marktsättigung, Nutzerbasis: [CodeBurn](https://codeburn.app/) — 36+ Tools, „genuinely free" (MIT), „used by 150k+ developers" ([GitHub](https://github.com/getagentseal/codeburn), [Product Hunt](https://www.producthunt.com/products/codeburn)).
- Weitere aktive Alternativen (Konsolidierungsgrad der Kategorie): [ClaudeBar](https://github.com/tddworks/ClaudeBar) (Claude, Codex, Antigravity, Gemini), [TokenTracker](https://github.com/mm7894215/TokenTracker) (31 Tools), [claude-token-tracker](https://github.com/pepperonas/claude-token-tracker).
- OpenClaw selbst bietet nativ CLI-Usage-Tracking (`openclaw status --usage`) für OAuth- und API-Key-Provider — die Rohdaten sind bereits im Tool zugänglich, was die Einstiegshürde für Dritt-Dashboards weiter senkt ([OpenClaw Docs](https://openclawlab.com/en/docs/concepts/usage-tracking/)).

## Riskiest assumption test (RAT)
- **What to test next:** *Nicht empfohlen über diese Pipeline.* Falls dennoch von Interesse: die technische Basis (`osx-menulet-subscription-usage`) als privates Eigennutz-Tool weiterpflegen statt kommerzialisieren — der Wert liegt im persönlichen Nutzen, nicht im Marktpotenzial.
- **Kill signal:** N/A — bereits im Desk-Stage gekillt.

## Notes / assumptions
- ASSUMPTION: „openclaw" bezeichnet das in der Recherche gefundene Open-Source-Projekt OpenClaw (openclawlab.com) — sollte ein anderes, gleichnamiges Produkt gemeint sein, ändert das die Konkurrenzanalyse nicht grundsätzlich, da die übrigen genannten Tools (Claude Code, Cursor) ohnehin breit abgedeckt sind.
- ASSUMMPTION korrigiert: Preis €9–15/Mo war eine Setzung aus `00`, nicht verifiziert — irrelevant, da die Kategorie bei €0 verankert ist.
- Der bestehende Code in `osx-menulet-subscription-usage` bleibt technisch valide und wiederverwendbar (Keychain-/Cookie-Credential-Resolution, Provider-Protokoll) — das ändert nichts am Marktbefund, ist aber für eine mögliche private Nutzung oder eine ganz andere (nicht-kommerzielle) Anwendung des Codes notierbar.
