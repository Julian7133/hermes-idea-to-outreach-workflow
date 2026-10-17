# 01 — Devalidation Report

**Gate:** PASS + GREENLIGHT NEXT STAGE (Julian, 2026-10-17); Stage 1 → Stage 2 freigegeben.

## CLEARFRAME
- **Customer:** Produktionsmittelstand, zunächst NBG-ähnliche Betriebe mit kritischem Maschinenwissen und absehbarem Ausscheiden eines Experten.
- **Job:** Störungswissen so aufnehmen, dass andere Mitarbeitende konkrete Fälle schneller lösen.
- **Existing solution:** Excel/Falllisten, persönliche Übergabe, Handbücher und Nachfragen an einzelne Experten; beim NBG-Fall existiert bereits eine einfache Excel+LangDock-Lösung (Kontext).
- **Alternative cost:** Für den NBG-Fall werden 1.000–4.000 € je Ausfalltag genannt (Kundenkontext, nicht unabhängig geprüft). Andere Kosteneinsparungen sind **ASSUMPTION:**.
- **Reachability:** NBG ist zugänglicher Referenzkunde; 20–50 ähnliche Entscheider sind solo über Industrie-/Instandhaltungsnetzwerke erreichbar, aber diese Zahl ist **ASSUMPTION:**.
- **Frequency:** Wissenserfassung projektförmig, Störungen und Pflege wiederkehrend.
- **Revenue:** **ASSUMPTION:** 3.500–6.000 € Pilot + 250–600 €/Monat Pflege; ein realer, kleinerer NBG-Vorlauf von 1.600 € ist im Kontext belegt.
- **Advantage:** Ex-CTO/Physiker, RAG-/Sprachinterview-Assets und bereits gelieferter NBG-Anwendungsfall (Kontext).
- **Moat-later:** Wiederverwendbare strukturierte Erfassungs- und Qualitätsmethodik für Maschinenfälle; noch nicht bewiesen.
- **Effort:** Mittel bis hoch; Integration und Wissensaufnahme dominieren, nicht die reine RAG-Technik.

## Verdict
- **Score:** 8/10
- **Go/No-Go:** GO
- **One-line reason:** Ein eng definierter Auftrag wurde beim passenden Kunden bereits bezahlt und Folgearbeit freigegeben; Wiederholbarkeit außerhalb dieses Falls bleibt zu belegen.

## CLEARFRAME + Market Reality
- **TAM (sanity, not spurious precision):** **ASSUMPTION:** In Deutschland gibt es genügend mittlere Produktionsbetriebe mit kritischem Erfahrungswissen für ein Solo-Geschäft, aber kein belastbarer TAM-Wert recherchiert; Fokus zunächst Süddeutschland und Maschinen-/Instandhaltungsfälle.
- **Saturation / competition:** KI-Wissensmanagement ist besetzt: Langdock Business kostet laut Preisseite 25 €/Nutzer/Monat; ragspace nennt 180 €/Monat für einen kompakten FAQ-Bot; Peerox adressiert industrielle Bedienerassistenz, veröffentlicht dort aber keinen Preis. Der bezahlte Differenzierungsraum ist daher Erfassung, belegte Antworten, Tests und Übergabe als betreutes Ergebnis, nicht ein weiterer Chatbot. [Langdock Preise](https://langdock.com/de/pricing) · [ragspace Preismodell](https://ragspace.de/preismodell.html) · [Peerox Anbieterprofil](https://deutschlandki.de/ki-loesungen/ki-wissensmanagement)
- **Category maturity & growth:** **Growth**, aber mit Produkt- und Implementierungswettbewerb. Bitkom meldet für 2025 KI-Nutzung in 42 % der deutschen Industrieproduktion und Planungen bei weiteren 35 %; das belegt Adoptionsinteresse, nicht speziell Kaufabsicht für Wissenstransfer. [Bitkom Research, Industrie-KI](https://www.bitkom-research.de/news/industrie-40-42-prozent-der-unternehmen-prozent-setzen-ki-der-produktion-ein)
- **CAC vs CLV sanity:** Ein 3.500–6.000-€-Projekt kann Direktvertrieb durch den Freelancer tragen; NBG liefert einen konkreten Zugang und Referenzfall. Wiederkehrumsatz ist **ASSUMPTION:** und muss durch tatsächliche Pflegearbeit bestätigt werden.
- **Difficulty score:** 6/10
- **Key risks:** (1) Expertenwissen lässt sich nicht in kurzer Zeit sauber erfassen; (2) interne Nutzung fällt nach Pilot ab; (3) Plattformanbieter/IT können die einfache Technik selbst bereitstellen.

## Cited market signals (researched 2026-10-17)
- NBG kaufte Phase 1a für 1.600 €, Phase 1b ist freigegeben; Störkosten 1.000–4.000 €/Tag und Wunsch nach pflegbarer Lösung sind Angaben aus dem gelieferten Gesprächskontext, nicht extern verifiziert.
- DIHK Fachkräftereport 2025/26 beschreibt Sorge vor Verlust betriebsspezifischen Wissens durch Ausscheiden langjährig Beschäftigter; besonders in der Industrie fürchten 35 % der Unternehmen diesen Wissensverlust. [DIHK Fachkräftereport 2025/26](https://mittlerer-niederrhein.ihk.de/fileadmin/IHK_Mittlerer-Niederrhein/Dokumente/Ausbildung/dihk-fachkraeftereport-2025-2026-data.pdf)
- IAB schätzt, dass zwischen 2024 und 2040 demografisch etwa sieben Millionen mehr Arbeitskräfte aus dem Erwerbsleben ausscheiden als eintreten; das stützt den strukturellen Wissenstransferdruck, nicht eine konkrete Softwarekaufquote. [IAB Zentrale Befunde 2025](https://iab.de/zentrale_befunde_2025)
- Langdock listet Business mit 25 €/Nutzer/Monat und Enterprise individuell; die Plattform bietet Wissens-/Agentenfunktionen als bestehende Alternative. [Langdock Preise](https://langdock.com/de/pricing)
- ragspace veröffentlicht 180 €/Monat als Einstieg für kompakten FAQ-Bot; Peerox nennt industrielle Wissens-/Bedienerassistenz, Preis auf Anfrage. [ragspace](https://ragspace.de/preismodell.html) · [Peerox Profil](https://deutschlandki.de/ki-loesungen/ki-wissensmanagement)
- **ASSUMPTION:** Such-/Marktsignale zeigen Problemrelevanz, aber die NBG-Zahlung ist derzeit der einzige konkrete Kaufbeleg in diesem Kontext.

## Boring & Trends check
- **Boring/niche defensibility:** Unsexy und eng, wenn auf einen konkreten Maschinentyp, eine ausscheidende Fachkraft und übergabefähige Fälle begrenzt. Der dokumentierte Prozess und die Abnahme mit Instandhaltern könnten schützen; kein technischer Moat gegen allgemeine RAG-Produkte.
- **Sociological trend:** **Wissensverlust durch demografischen Abgang:** Der DIHK-Fachkräftereport benennt Sorge über verlorenes betriebsspezifisches Wissen; für einen Werkstatt-/Instandhaltungsfall macht das strukturierte Experteninterviews jetzt dringlicher. [DIHK Fachkräftereport 2025/26](https://mittlerer-niederrhein.ihk.de/fileadmin/IHK_Mittlerer-Niederrhein/Dokumente/Ausbildung/dihk-fachkraeftereport-2025-2026-data.pdf)
- **Technological trend:** **Spracherkennung als günstiger Erfassungskanal:** ElevenLabs listet Speech-to-Text API ab 0,22 US-Dollar/Stunde. Damit kann spontane Fallaufnahme schneller in überprüfbare Textnotizen überführt werden; für sensible Kunden muss eine lokale/EU-Option separat geprüft werden. [ElevenLabs API-Preise](https://elevenlabs.io/pricing/api?price.platform=api)

## Riskiest assumption test (RAT)
- **What to test next:** Stage 3 validation send — founder-led cold email to 20–50 hand-picked ICP contacts (max 30 enrolled). Pass if ≥1 positive reply OR ≥3 human clicks after sends complete.
- **Kill signal:** 30 sends, 0 replies AND <3 human clicks → `status: validation-failed`.

## Notes / assumptions
- ASSUMPTION: Zielpreis und 250–600 €/Monat Retainer sind noch nicht mit anderen Kunden erprobt.
- ASSUMPTION: Ein Teil des NBG-Fallprozesses lässt sich ohne hohen Anpassungsaufwand wiederholen.

## Schnell-Umsatz-Check
- **Kaufchance binnen 8 Wochen:** NBG / Bodo als klarster Anschlusskäufer; Phase 1b ist laut Kontext bereits freigegeben. Kein Neukauf unterstellt.
- **Kleinstes verkaufbares Deliverable:** 10 geprüfte Störungsfälle mit Quellen-/Belegantworten und einem kleinen Testfragenlauf; **ASSUMPTION:** 1.600 € Festpreis, angelehnt an die bereits gelieferte NBG-Phase 1a.
- **Demo müsste zeigen:**
  - Sprachnotiz wird in einen strukturierten Störungsfall überführt.
  - Antwort enthält nachvollziehbare Quellstelle.
  - Bei fehlender Quelle sagt der Assistent „weiß ich nicht“.
  - Testfragen erkennen eine falsche oder unbelegte Antwort.
  - Instandhalter kann einen Fall ohne Entwickler aktualisieren.
- **Demo-Aufwand:** **ASSUMPTION:** 12 Stunden mit vorhandenem Wissensbot-Asset.
