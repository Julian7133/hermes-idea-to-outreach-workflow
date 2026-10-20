# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert

| Einwand | Klasse | Antwort |
|---|---|---|
| Nachfrage zu dünn — zu wenige regulierte Kanzleien evaluieren OpenClaw 2026 wirklich evaluativ (vs. reine Lektüre), 30 signal-positive Leads schwer zu füllen | Weich | Zuspitzung: nicht „jedes KMU", sondern nur Kanzleien/WP/Steuerberatungen 15–60 MA unter DSB-Druck als Erstziel; Leads werden per Signal (GitHub/ClawHub, Tech-Blog, Stellenausschreibung) qualifiziert statt per Streuung — macht die Reichweite klein, aber B2B-anbahnungsfähig. |
| Gratis-Anker: `openclaw security audit --deep` (78 Checks) + CSA `openclaw-audit` frei in Sekunden verfügbar — warum zahlen? | Weich | K3 angewendet: Gratis ist Preisanker, kein Todesurteil. Zahlungsgrund ist nicht der Check, sondern der vorzeigbare, unterschriebene DSB-Anhang (Verarbeitungsverzeichnis-Anknüpfung, TOM-Skizze, menschliche Aufsicht) + Sprache/Haftungsrahmen — kein freies Tool liefert das. |
| Generische KMU-Audits (1.500–4.500 €) + DACH-Agenturen (Clawgency 3–8k) könnten dasselbe PDF morgen anbieten | Weich | Schmaler, aber benennbarer Wedge: keiner koppelt heute OpenClaw-Spezifik (25-Punkt-Checkliste gegen die dokumentierten ClawHub-/CVE-Risiken) an einen DACH-DSB-vorlagefähigen Report als buchbare Einzelleistung — Agenturen verkaufen Implementierung/Retainer, nicht Audit-PDF. Überarbeiteter Plan dokumentiert genau diese Lücke. |
| DSB-Anhang grenzt an Rechtsberatung (Haftung) | Weich | Schnittwechsel: Report explizit als „technischer Befund + DSB-Vorlage mit Disclaimer, kein Rechtsgutachten" positionieren; keine Auslegung, nur Feststellung + Checkliste — analog CyberRisikoCheck (keine Zertifizierung, nur Reifegrad+Maßnahmen). Vor erstem Verkauf Disclaimer anwaltlich prüfen. |
| Frequenz/Retention schwach (Einmalprodukt) | Weich | Preis/Erwartung angepasst: kein Abo-Versprechen, CLV über jährliche Wiederholung + Empfehlung via DSB-Multiplikator — ehrlich als Einmal-Honorar mit Folgeoption modelliert. |
| UWG-§7(2) / B2C-Blocker (Vorgängeridee) | Unbelegt | Greift hier nicht — Ziel ist per Definition B2B (Kanzlei-Geschäftsführung/IT-Leitung, dienstliche Adresse, Anbahnungskontext), der Kritiker prüft den Realisten-Plan (B), nicht die rohe Vorgängeridee `openclaw-kurs-de`. |
| „OpenClaw ist unsicher, niemand sollte es einsetzen — daher kein Audit-Markt" | Unbelegt | Gartner/AP raten zu Blockieren/Isolieren, verbieten aber nicht — Token Security: 22% KI-affiner Firmen hatten OpenClaw binnen Tagen im Einsatz (Shadow AI). Der Markt ist gerade *wegen* der Warnungen entstanden, nicht trotz. |

## Harte Einwände
keine — kein rechtlicher Unmöglichkeitsbeweis (§6 StBerG greift nicht, da keine Rechtsberatung verkauft wird), kein technischer Unmöglichkeitsbeweis.

## Überarbeiteter Plan (nur Änderungen gegenüber 00c)

- **Zuspitzung:** Ziel verschärft auf Kanzleien/Steuer/WP 15–60 MA mit DSB — größter Compliance-Druck, kleinster Streuverlust. Andere KMU bleiben als zweite Welle, nicht als Erstziel.
- **Kanalwechsel:** Primär 1:1-B2B-Anbahnung an signal-positive Kanzleien (20–30 Leads, dokumentierter Kontext) + sekundär DSB-Empfehlungsnetz als Multiplikator — statt breiter Cold-Outreach-Streuung.
- **Schnittwechsel:** Report-Haftung explizit als „Befund + Vorlage, kein Gutachten" mit Disclaimer; vor erstem Verkauf juristisch absegnen. Kein Rechtsgutachten, kein Pentest mit Exploitation.
- **Preis unverändert:** €1.490–€2.900 (Ø €1.900) bleibt — liegt unter generischem Audit-Korridor, daher kein Preisdruck-Einwand.

Nicht erlaubt war: den Gratis-Einwand wegzudefinieren — er bleibt als Key Risk #2 im Report.

## Neue Bewertung

- outreach_score: 4/10 (vorher 3/10)
- product_score: 5/10 (vorher 5/10)
- buildable: no (product_score < 6)

Begründung: Outreach hebt sich von 3 auf 4, weil die Zuspitzung den UWG-Blocker der Vorgängeridee sauber löst und einen erreichbaren (wenn auch kleinen) B2B-Pool definiert — genug für die Hermes-Validierung (20–30 Sends), aber nicht für skalierbaren Vertrieb. Produkt bleibt bei 5: plausibler Wedge benennbar (OpenClaw-Spezifik + DSB-Vorlage als Einzelleistung), aber Markt nach wie vor besetzt (freie CLI + generische Audits + Agenturen) und Nachfrage zu schmal für eine klare 6.

## Ehrliches Fazit

Die Überarbeitung hat den harten Einwand-Typ verhindert und den schmalen Wedge präzise benannt — aber sie hat das Grundproblem nicht gelöst, nur eingegrenzt: Selbst in der besten Zuspitzung bleibt das Produkt ein Einmal-Honorar für eine kleine, schwer zählbare Evaluation-Nische. Es ist ein legitimer, „boring" Solo-Service mit 4/10-Outreach-Tauglichkeit — als Produkt aber kein klarer Bau-Case über der Schwelle.
