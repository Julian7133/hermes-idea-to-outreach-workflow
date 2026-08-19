# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert

| Einwand | Klasse | Antwort |
|---|---|---|
| Foto-Konsistenz über ein ganzes Team ist technisch unbewiesen (Uncanny-Valley-Risiko bei günstigen Anbietern belegt) | Weich | Manuelle QA-Kuration vor Auslieferung statt reiner Selbstbedienung (Rollenwechsel-light Richtung Dienstleistung). |
| DSGVO-Vertrauen bei Gesundheitsbetrieben ggü. US-Cloud-KI (Gemini API) | Weich | EU-Hosting/AVV-Zusage bzw. die in `00` bereits angelegte On-Device-Alternative explizit anbieten. |
| Dünne Cold-Outreach-Ökonomie: niedriges Einmalticket (€120–300), niedrige Frequenz, Praxen schlecht per Cold-Mail erreichbar (Gatekeeping) | Weich | Kanalwechsel: nicht die einzelne Praxis kaltakquirieren, sondern Praxismarketing-/Webdesign-Agenturen als Reseller-Kanal — wenige, gut erreichbare B2B-Kontakte statt vieler schwer erreichbarer Praxen. |
| Kategorie "AI-Headshot" ist DACH-sprachig besetzt (Dr. Headshot, CV Pics), schwacher technischer Moat | Weich | Bereits im Kritiker-Bericht als "Wedge real, aber schmal" bewertet, nicht als Kill-Grund — bleibt bestehen, wird durch Kanalwechsel nicht gelöst, aber auch nicht verschärft. |

## Harte Einwände
Keine. Kein rechtliches oder technisches Verbot, kein Nachweis eines fehlenden
Käufers — im Gegenteil: Praxen zahlen heute nachweislich €895–2.995 für
Team-Fotografie, es existiert also ein zahlender Markt für das Grundbedürfnis.

## Überarbeiteter Plan

Gegenüber `00c-realist.md` ändert sich:

1. **Vertriebskanal (Kanalwechsel):** Statt Cold Outreach direkt an
   Praxismanagement wird der Erstkontakt auf **Praxismarketing- und
   Webdesign-Agenturen** verschoben, die Praxis-Websites bauen/pflegen — sie
   sind digital aktiv, schnell antwortend, und ein Agentur-Abschluss bringt
   mehrere Praxis-Aufträge über Zeit statt eines Einzeltickets. Begründung:
   löst direkt den Reachability-/CAC-Einwand; passt zur recherchierten
   Sozial-Tendenz (Praxen investieren wegen MFA-Fachkräftemangel aktiv in
   Employer-Branding-Content, meist über genau diese Agenturen).
2. **QA-Schritt vor Auslieferung:** Der kleinste Beweis bleibt technisch
   gleich (Upload → Generierung → Auswahl), bekommt aber eine manuelle
   Vorauswahl-/Retusche-Stufe, bevor ein Set an die Praxis geht — löst den
   Konsistenz-/Uncanny-Valley-Einwand, ohne die Ausprägung komplett zur
   Dienstleistung zu machen.
3. **DSGVO-Zusage explizit machen:** Angebot nennt aktiv entweder
   EU-gehostete Verarbeitung oder die in `00` skizzierte On-Device-Variante als
   Option — adressiert das Vertrauensargument, das die spezialisierten
   Praxisfotografen aktiv als Verkaufsargument nutzen.

Der erste zahlende Kunde ist jetzt **eine Praxismarketing-Agentur mit
mehreren Praxis-Mandanten**, nicht mehr die einzelne Praxis direkt; die Praxis
bleibt Endabnehmerin, aber der Kaufentscheider im Cold-Outreach-Sinn ändert
sich (Käuferwechsel als Nebeneffekt des Kanalwechsels).

## Neue Bewertung
- outreach_score: 7/10 (vorher 5) — Reseller-Kanal löst das
  Reachability-/CAC-Problem strukturell: wenige, gut erreichbare,
  digital-aktive B2B-Kontakte statt vieler schwer erreichbarer Praxen; ein
  Agentur-Abschluss skaliert über mehrere Praxis-Mandanten statt eines
  Einmaltickets.
- product_score: 7/10 (vorher 6) — QA-Stufe und DSGVO-Zusage adressieren die
  beiden echten Risiken (Qualität, Vertrauen) konkret; Wedge bleibt real, aber
  weiterhin ohne technischen Moat — kein Sprung in den 8–9-Bereich, da kein
  struktureller Zwang oder Unfair-Advantage-Zugang zum Gesundheitswesen
  vorliegt.
- buildable: yes

## Ehrliches Fazit
Der Kanalwechsel löst das eigentliche Problem des Plans — nicht die
Produktidee war schwach, sondern der direkte Praxis-Cold-Outreach war der
falsche Vertriebsweg für ein dünnes Einmalticket. Die Qualitäts- und
DSGVO-Einwände sind damit nicht verschwunden, nur durch konkrete
Prozessschritte (QA, EU-Hosting-Zusage) handhabbar gemacht — sie bleiben vor
dem ersten echten Verkauf zu beweisen, nicht nur zu behaupten.
