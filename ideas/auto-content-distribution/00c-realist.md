# 00c — Realist

## Gewählte Ausprägung
**A — Werkzeug** — Solo am schnellsten zu einem zahlenden Kunden: schmaler SaaS-Scope (Voice/Bullet → 4 Entwürfe + Queue + 1-Klick-Publish), keine operative Dienstleistungs-Last wie bei B, und breiter als C (nicht nur Substack-Autoren), aber mit C als natürlicher Engführungs-Option falls der Markt zu generisch ist. B skaliert nicht solo, C limitiert initial die Lead-Base.
Verworfen, aber aufgehoben: **B — Dienstleistung** bleibt als Pivot, falls Tool-CAC zu hoch ist (verkauft Ergebnis statt Software, höherer Preispunkt €500–900/Mo Retainer). **C — Substack-Nische** bleibt als Zuspitzung, falls generischer LinkedIn-Markt zu gesättigt ist (klare DACH-Differenzierung, direkter Draht zu Julians Substack-Outreach-Skill).

## Der erste zahlende Kunde
**Lena, Solo-Beraterin (Operations/HR/GTM) mit 5–15 Jahren Erfahrung, 1–3 Kunden, DACH, akquiriert über Netzwerk & LinkedIn.** Auslöser: Sie hat im letzten Quartal 2 Anfragen über LinkedIn gewonnen, dann 3 Wochen nichts gepostet und die Pipeline ist leer — sie merkt beim Weekly Review: "Ich war unsichtbar". Moment: Sie hat eine starke Kunden-Story als Sprachnotiz, aber keinen Nerv, daraus 3 Posts zu feilen. Sie zahlt, wenn in 10 Minuten 3 verteilbereite Entwürfe in ihrem Ton dastehen.
**Erreichbar über:** LinkedIn (aktive Creator/Berater-Community, DMs/Kommentare), Substack-Community, Solo-Berater-Slacks (z. B. Freelancer-Communities), Empfehlung über Berater-Netzwerke — nicht Cold Email an beliebige KMU, sondern Suche/Content/Community dort, wo Solo-Berater über Akquise sprechen.

## Der kleinste Beweis
**Eingabe:** 3 Bullet Points oder 90-Sek-Voice-Memo + kurzer Stil-Steckbrief (3 Beispielposts, ICP in 2 Sätzen) + Zielkanäle (LinkedIn + Newsletter).
**Verarbeitung:** LLM generiert 3 Varianten je Kanal (kurz/mittel/narrativ), adaptiert Länge/Ton/CTA je Kanal, entwirft 2 Kommentar-Antworten und einen Repurposing-Vorschlag ("aus diesem LinkedIn-Post wird in 7 Tagen eine Substack-Note"); Nutzer wählt/freigibt, Queue plant Versand.
**Ausgabe:** 1 LinkedIn-Post + 1 Newsletter-Abschnitt ready-to-publish (+ 2 Alternativ-Varianten), im Nutzer-Ton, mit Queue-Einträgen für die nächsten 7 Tage.
**Bewusst nicht drin:** Auto-Publish ohne Freigabe, Bildgenerierung, Analytics-Dashboard, Team-Features, X/TikTok, komplexes Scheduling über mehrere Wochen.

## Weg zum ersten Euro
**Preis:** €49/Mo Starter (40 Generierungen) / €99/Mo Pro — Begründung: Ein gewonnener Beratungs-Kunde (€3–8k Projekt) deckt 3–8 Jahre Tool-Kosten; verglichen mit €500+/Mo für Ghostwriter/Content-Agentur ist es ein 10× günstiger Konsistenz-Hebel, nicht ein Schreib-Tool.
1. Landing mit 3 Before/After-Beispielen (Bullet → 4 Posts) + Early-Access-Form.
2. 10 Design-Partner (Solo-Berater aus eigenem Netzwerk) für 2 Wochen gratis gegen Feedback + Testimonial.
3. Onboarding-Flow bauen: Stil-Profil aus 3 Posts + ICP erfassen, erste Generierung in <2 Min.
4. 1-Klick-Publish für LinkedIn + E-Mail-Export (Newsletter) live — Queue als "magischer Moment".
5. Von Design-Partnern 3 zahlende Starter konvertieren (€49) — erster Euro nach ~3–4 Wochen.

## Aufwand und Abhängigkeiten
**Aufwand kleinster Beweis:** 8–12 Tage solo (LLM-Prompting + Stil-Adaption, Queue, LinkedIn-API/Buffer-Integration, Voice-to-Text via Whisper-API, simples Web-UI). Keine schwere Infra, SQLite/Datei reicht.
**Fehlende Zugänge:** LinkedIn-API-Zugang (eingeschränkt, oft nur über Buffer/Typefully-Umweg stabil), Newsletter-APIs (Beehiiv/Substack/Brevo) dokumentiert aber vorhanden.
**Drittabhängigkeiten:** LLM-API-Kosten (variabel, ca. €0.02–0.08/Generierung), LinkedIn-Policy (Automatisierung), Whisper/STT-Provider, Hosting. Kein Compliance-Zwang.

## Riskanteste Annahme
**Annahme:** Solo-Berater empfinden Inkonsistenz als so schmerzhaft, dass sie €49/Mo für Konsistenz zahlen — statt gratis ChatGPT + manuell zu posten.
**Billiger Test:** 15 Kurzinterviews (je 10 Min) mit Solo-Beratern, die 1k+ LinkedIn-Follower haben aber <2 Posts/Woche: "Wie viele Posts hast du letzte 4 Wochen geschafft? Was hat das gekostet (Pipeline)? Würdest du €49 zahlen, wenn 1 Voice → 3 Posts in 10 Min real wäre?" + 1-Woche Concierge-Test (manuell 3 Posts aus deren Bullets bauen, Reaktion messen).
