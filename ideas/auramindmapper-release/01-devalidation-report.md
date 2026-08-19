# 01 — Devalidation Report

> **REVISION 2026-08-19.** Ersetzt den Erstlauf vom 2026-08-18 (PR #10,
> Score 2/10 — Einzelscore, vor Dual-Scoring). Requeue-Grund (K1): Die alte
> Kernprämisse "Agent-first" war selbst erfunden und dann korrekt widerlegt;
> der Erstlauf berücksichtigte aber den bereits laufenden Code
> (`~/dev/sprint-mindmap`) nicht als K6-Unfair-Advantage und vergab keinen
> getrennten Produkt-Score. Diese Revision vergibt `outreach_score` und
> `product_score` getrennt nach K4 und dokumentiert eine echte Wedge-Suche
> nach K2, statt "kein Wedge" ungeprüft zu übernehmen.
>
> Filled by `clearframe-devalidation`. **Auto-abort (Outreach):**
> `outreach_score` 3/10 < 4/10 → `boring-and-trends-check` **nicht**
> ausgeführt. `product_score` 8/10 ≥ 4 → Abschnitt "Produktkern für den MVP"
> ist Pflicht und folgt unten.

## Verdict
- **Outreach-Score:** 3/10 → **NO-GO** (Cold-Outreach-Pipeline)
- **Produkt-Score:** 8/10 → **buildable: yes**
- **One-line reason:** Ein echter, benennbarer Wedge existiert (git-natives,
  agentenintegriertes Sprint-Mindmapping — kein gefundener Wettbewerber
  kombiniert das), und das Produkt läuft bereits mit Julians Unfair Advantage;
  aber es hat **keinen getesteten Preispunkt**, keine Billing-Infrastruktur,
  und die einzig konkret benennbare Zielgruppe (Tech Leads bei
  Agentic-Dev-Teams) ist strukturell eher über GitHub/Content als über
  Kaltakquise erreichbar — das ist ein Vertriebs-, kein Produkturteil.

## CLEARFRAME breakdown

| Lens | Assessment |
|---|---|
| **C**ustomer | Tech Leads / Engineering Manager bei kleinen (2–15 Personen) Software-Teams, die Coding-Agenten (Claude Code, OpenClaw, Cursor) produktiv einsetzen und Sprint-/Roadmap-Pläne als `.md`-Dateien im Repo führen — nicht "jeder Mindmap-Nutzer". |
| **L**onging/Job | Ein Sprintplan soll gleichzeitig git-diffbare Wahrheit **und** visuell/priorisierbar sein, und der Coding-Agent soll ihn direkt mitpflegen können, ohne separates Board-Re-Entry. |
| **E**xisting solution | Jira/Linear/Notion-Boards (agent-unfreundlich, manueller Re-Entry) **oder** rohe `.md`-Checklisten (agent-freundlich, aber unvisuell) **oder** allgemeine Chat-Mindmap-Tools wie MindMap AI/LLMindMap (visuell, aber nicht git-nativ, kein Bezug zum eigenen Repo). |
| **A**lternative cost | ASSUMPTION: 15–30 Min/Woche manuelles Nachpflegen des Boards, plus stille Kosten durch veraltete Boards, die niemand mehr liest. |
| **R**eachability | Zielgruppe ist über GitHub-Profile, OpenClaw-Skill-Verzeichnisse und Agentic-Dev-Communities identifizierbar — aber laut bereits im Erstlauf recherchiertem Signal (Lakera/1Password, s. u.) typischerweise **nicht** klassisch kaltakquise-empfänglich; reagiert eher auf Content/GitHub-Sichtbarkeit. |
| **F**requency | Sprintplanung ist wiederkehrend (wöchentlich/zweiwöchentlich) — gute Frequenz, **wenn** das Team überhaupt zahlt. |
| **R**evenue | Kein getesteter Preis. ASSUMPTION: Team-Tier €15–25/Monat (Anker: MindMeister Business $12,49/Nutzer/Monat, Mindomo Premium ~€6/Nutzer/Monat) — unvalidiert, Kern-Editor bleibt vermutlich gratis (Chrome-Web-Store-Norm). |
| **A**dvantage | **Vorhanden (K6):** Julian hat den Editor und den OpenClaw-Skill bereits gebaut und im eigenen Alltag im Einsatz (Dogfooding), plus tiefe Agent-Orchestrierungs-Erfahrung und DACH-Sendeinfrastruktur (berlow.de). Kein erfundener, sondern belegter Vorteil. |
| **M**oat-later | Git-native Datenhaltung + tiefe Agent-Integration (Skill statt nur Export) ist strukturell schwerer zu kopieren als ein weiteres Chat-Mindmap-Feature, weil Wettbewerber (MindMap AI, LLMindMap) auf Chat-UX optimiert sind, nicht auf Repo-native Workflows. |
| **E**ffort | Release-Aufwand niedrig (Produkt läuft, CWS-Submission-Checkliste liegt fertig vor) — verbleibend: CWS-Einreichung + Review (3–10 Werktage), Preistest, ggf. Team-Tier-Feature. |

## CLEARFRAME + Market Reality
- **TAM (sanity):** ASSUMPTION: einige Tausend Teams weltweit, die aktiv
  Coding-Agenten für Sprintplanung nutzen UND git-geführte Pläne wollen —
  echte Nische innerhalb einer Nische, nicht der breite Mindmap-Markt.
- **Saturation / competition:** Der **allgemeine** Mindmap-Markt ist voll
  besetzt (bereits im Erstlauf verifiziert: Mindomo, MindMeister, MindMup,
  SMindMap gratis, plus Chat-native Konkurrenz MindMap AI mit MCP-Server
  gratis nutzbar und LLMindMap als dedizierte Chrome-Extension für
  ChatGPT/Claude/Gemini-Mindmapping). **Für die enge Nische "git-natives,
  agent-integriertes Sprint-Mindmapping" wurde nach aktiver Suche (K2; siehe
  Cited market signals) kein direkter Wettbewerber gefunden**, der Canvas-
  Editor + git-diffbare Markdown-Datei + eigenständigen Coding-Agent-Skill
  kombiniert — OpenClaw-Mindmap-Skills existieren (`xmind`-Skill,
  `mindmap-generator`), aber als reine Diagramm-/Bild-Generatoren, nicht als
  editierbare, versionierte Sprint-Planungsquelle.
- **Category maturity & growth:** Emerging für "agentische Repo-native
  Planungswerkzeuge" (Coding-Agenten erst seit 2025/26 im Breiteneinsatz);
  Plateau für klassisches Mindmapping.
- **CAC vs CLV sanity:** **Nicht seriös bewertbar** — es gibt keinen
  getesteten Preis und keine Billing-Infrastruktur im Produkt. Jede CAC/CLV-
  Zahl wäre spekulativ. Das ist selbst der Kill-Grund für den Outreach-Score,
  nicht ein niedriger CLV.
- **Difficulty score:** 4/10 — Release-technisch leicht (Produkt fertig,
  Submission-Vorbereitung vorhanden), aber Preisfindung und
  Zielgruppen-Erreichbarkeit offen.
- **Key risks:**
  1. **Kein Preis, keine Zahlungsinfrastruktur** — Outreach kann heute nichts
     verkaufen, das over Cold Email geprüft werden könnte.
  2. **Zielgruppe kaltakquise-resistent** — Agentic-Dev-Tinkerer reagieren
     laut Ökosystem-Recherche eher auf GitHub/Content als auf E-Mail-Akquise.
  3. **OpenClaw-Vertrauensrisiko** (aus Erstlauf übernommen, weiterhin
     gültig): Sicherheitsartikel (Lakera, 1Password) zu ungesandboxten
     Skills mit vollen lokalen Rechten erschweren Adoption zusätzlich,
     unabhängig von Produktqualität.
  4. **Chrome-Web-Store-Review** kann 3–10+ Werktage dauern und ist ein
     Freigabe-Nadelöhr außerhalb eigener Kontrolle.

## Cited market signals (researched 2026-08-19)
- MindMap AI MCP-Server ist **gratis für alle Nutzer inkl. kostenloser
  Accounts** nutzbar (Connect ist kostenlos, Ansehen/Suchen/Exportieren
  verbraucht keine Credits), live in Claude- und ChatGPT-Verzeichnis —
  bestätigt den Erstlauf-Befund, dass "Agent-first Chat-Mindmapping" bereits
  besetzt und größtenteils kostenlos ist: [AiThority](https://aithority.com/machine-learning/mindmap-ai-launches-mcp-server-letting-claude-and-chatgpt-create-and-edit-mind-maps-in-conversation/), [EIN Presswire](https://www.einpresswire.com/article/933599495/mindmap-ai-launches-mcp-server-letting-claude-and-chatgpt-create-and-edit-mind-maps-in-conversation).
- **LLMindMap** existiert als dedizierte Chrome-Extension explizit für
  ChatGPT/Claude/Gemini-Mindmapping — ein direkter Konkurrent im
  "Chat-natives Mindmapping via Browser-Extension"-Segment:
  [llmindmap.com](https://llmindmap.com/).
- OpenClaw-Skill-Marktplatz (ClawHub) listet Mindmap-bezogene Skills
  (`xmind`-Skill, `mindmap-generator`, PlantUML-Mindmap-Generator) — **alle
  als Diagramm-/Bild-Generatoren aus einer Konversation heraus**, keiner
  davon bietet eine git-diffbare, canvas-editierbare Sprintplanungsdatei mit
  Prioritäts-Tracking wie auraMindmapper: [LobeHub xmind-Skill](https://lobehub.com/skills/openclaw-skills-xmind-skill), [playbooks.com mindmap-generator](https://playbooks.com/skills/openclaw/skills/mindmap-generator), [remoteopenclaw.com Mind-Map-Skill](https://www.remoteopenclaw.com/skills/markdown-viewer/skills/mindmap).
- Google Workspace Marketplace weiterhin mit mehreren aktiven, teils
  kostenlosen Mindmap-Add-ons besetzt (Mindmup, Coggle, Cloud MindMap, AI
  Mind Maps Maker) — bestätigt Erstlauf-Befund, keine neue Lücke im
  klassischen Workspace-Add-on-Kanal: [Google Workspace Marketplace Suche „Mind Maps"](https://workspace.google.com/marketplace/search/Mind%20Maps).
- Preisanker für ein mögliches Team-Tier: MindMeister Business ~$12,49/Nutzer/Monat,
  Mindomo Premium ~€6/Nutzer/Monat (aus Erstlauf-Recherche, weiterhin
  gültiger Marktanker) — kein direkter Beleg, dass Dev-Teams für ein
  git-natives Sprint-Mindmap-Tool zahlen würden; unverifiziert.
- **Kein direkter Wettbewerber gefunden**, der (a) Canvas-Editor, (b)
  git-diffbare Markdown als Quelle und (c) einen eigenständigen
  Coding-Agent-Skill zur automatischen Pflege kombiniert — Suche über drei
  unabhängige Anfragen (Google-Workspace-Add-ons, OpenClaw-Skill-Marktplatz,
  git-versionierte Sprintplanungs-/Mindmap-Vergleiche) ohne Treffer auf
  diese Kombination.

## Produktkern für den MVP

*(Pflicht ab `product_score ≥ 4`; hier 8/10.)*

**Eine Funktion:** Der Coding-Agent (Claude Code / OpenClaw) pflegt den
Sprintplan als eine einzige git-diffbare Markdown-Datei automatisch mit —
Priorität, Status, Struktur — und der Mensch sieht/steuert dieselbe Datei als
Canvas-Mindmap in der Chrome-Extension. Kein Board, keine Duplizierung, ein
Wahrheitsartefakt.

**Für wen genau:** Tech Lead eines kleinen Software-Teams (2–15 Personen),
das bereits Claude Code oder OpenClaw für Delivery einsetzt und heute entweder
(a) ein Board pflegt, das der Agent nicht anfassen kann, oder (b) rohe
`.md`-Checklisten ohne visuelle Übersicht führt.

**Kleinster lauffähiger Beweis:** Chrome-Extension unlisted im Chrome Web
Store veröffentlichen (Submission-Material liegt vollständig vor — Manifest,
Icons, Listing-Text, Privacy-Policy), 5–10 Tech Leads aus Julians eigenem
Agentic-Dev-Netzwerk (nicht Cold Outreach) den `create-mindmap`-OpenClaw-Skill
plus die Extension zum Testen geben, und messen: Nutzen sie die Datei nach
einer Woche noch aktiv (Commits auf der `.md`-Datei sichtbar), oder fällt sie
zurück auf das alte Board? Das ist der reale Nachweis, bevor irgendein
Preispunkt getestet wird — nicht Cold Email, das ist genau der Punkt dieser
Revision.

## Boring & Trends check

*Nicht ausgeführt — `outreach_score` 3/10 < 4/10, Auto-Kill-Regel greift für
die Cold-Outreach-Pipeline (Token-sparender Kill-Switch). Der Produktkern
oben bleibt davon unberührt gültig.*

## Riskiest assumption test (RAT)
- **What to test next:** *Nicht via Cold-Outreach-Pipeline.* Siehe
  "Produktkern für den MVP" oben — warmer Test mit 5–10 bekannten
  Agentic-Dev-Kontakten, kein Massen-Outreach.
- **Kill signal:** N/A für diese Pipeline — bereits auf Outreach-Ebene
  gekillt (Score 3/10); Produkt-Track läuft unabhängig weiter.

## Pivot-Signal

Der harte Fund dieser Revision: Der eigentlich verwertbare Markt ist nicht
"Mindmapping" (voll besetzt, teils gratis), sondern **"agentenlesbare/-
schreibbare Planungsartefakte für Dev-Teams"** — ein Teilproblem, das weder
Board-Tools (Jira/Linear, kein Agent-Zugriff) noch Chat-Mindmap-Tools
(MindMap AI/LLMindMap, nicht git-nativ, kein Repo-Bezug) bedienen. Das
Sprint-Mindmap-Format ist nur eine Ausprägung davon. Naheliegender Pivot: ein
schlankeres, noch engeres Produkt, das **nur** die Agent-Board-Synchronisation
löst (z. B. bidirektionale Sync zwischen `.planning/`-Markdown-Dateien und
Linear/Jira-Issues), ohne den Canvas-Editor überhaupt zu bauen — kleinerer
Scope, klarerer B2B-Preis (Integrationstool, kein Freemium-Konsumenten-Produkt),
und dadurch potenziell doch kaltakquise-fähig, weil "Board und Agent laufen
auseinander" ein konkretes, teures Ops-Problem für Engineering-Manager ist.
Slug-Vorschlag: `agent-planning-sync`.

## Notes / assumptions
- ASSUMPTION: Team-Tier-Preis €15–25/Monat — unvalidiert, kein Preistest
  durchgeführt.
- ASSUMPTION: TAM "einige Tausend Teams" — keine belastbare Zahl gefunden,
  bleibt grobe Schätzung.
- Produktexistenz und Funktionsumfang **wurden diesmal verifiziert** (Repo
  `~/dev/sprint-mindmap` gelesen: Manifest V3, Tests, OpenClaw-Skill,
  CWS-Submission-Material) — anders als im Erstlauf, der die Behauptung
  "bereits gebaut" nur aus dem Auftrag übernahm.
- Die Sicherheits-/Vertrauensrisiko-Quellen zum OpenClaw-Ökosystem (Lakera,
  1Password) stammen aus der Erstlauf-Recherche vom 2026-08-18 und wurden in
  dieser Revision nicht erneut geprüft; als weiterhin gültiges Risiko
  übernommen, nicht neu verifiziert.
