# 01 — Devalidation Report

> Filled by `clearframe-devalidation` only. **Auto-aborted:** score < 4/10.
> `boring-and-trends-check` wurde **nicht** ausgeführt (token-saving kill switch).

## Verdict
- **Score:** 2/10
- **Go/No-Go:** NO-GO
- **One-line reason:** Das Kern-Feature „OSS-€10.000-Lieferschwelle überwachen"
  gibt es bereits **kostenlos** als WooCommerce-Plugin (vendidero, WordPress.org)
  und ist bei Quaderno ($29/Mo) sowie hellotax (ab €39/Mo) bereits Bestandteil
  günstigerer/breiterer VAT-Compliance-Suiten (Stand August 2026) — dazu kommt
  ein ungeklärtes Steuerberatungsgesetz-Haftungsrisiko für einen Solo-Anbieter
  ohne Steuerberater-Zulassung.

## CLEARFRAME breakdown

| Lens | Assessment |
|---|---|
| **C**ustomer | ASSUMPTION: D2C-Shop-Inhaber (5–50 MA, DACH) mit spürbarem EU-Auslandsumsatz — nicht „jeder Online-Shop". |
| **L**onging/Job | EU-weite OSS-Lieferschwelle (€10.000 kumuliert) + Meldefristen im Blick behalten, ohne manuell Umsätze pro Land zu addieren. |
| **E**xisting solution | Kostenloses WooCommerce-Plugin (vendidero) für Lieferschwellen-Monitoring; Quaderno/hellotax/Taxdoo als Vollsuiten; Steuerberater; manuelle Excel-Tabelle. |
| **A**lternative cost | ASSUMPTION: Bei Überschreiten unbemerkt → Nachzahlung + Verzugszinsen im Bestimmungsland, oft erst Monate später vom Steuerberater entdeckt — realer Schaden, aber selten (nicht jeder Shop überschreitet die Schwelle). |
| **R**eachability | Shop-Betreiber sind über Shopify-/WooCommerce-Communities, LinkedIn, Agenturen erreichbar — aber Cold Outreach zu einem Steuerthema erfordert hohes Vertrauen vor dem ersten Kontakt. |
| **F**requency | Quartalsweise Meldung, Schwellen-Check eher gelegentlich — kein täglicher/wöchentlicher Pain, schwacher Retention-Treiber für ein Stand-alone-Tool. |
| **R**evenue | ASSUMPTION: €29/Mo (Solo) bzw. €79/Mo (Steuerberater-Tarif) — liegt über dem kostenlosen Plugin und nahe an/über Quaderno ($29/Mo für globales Threshold-Monitoring, nicht nur EU). |
| **A**dvantage | Keiner benannt. Kein bestehendes Vertrauen im Tax-/Compliance-Bereich, keine Steuerberater-Zulassung, keine Audience. |
| **M**oat-later | Kaum vorhanden — die Kernlogik (Summe der EU-B2C-Umsätze > €10.000) ist eine öffentlich bekannte, triviale Regel; kein proprietärer Datenvorteil. |
| **E**ffort | 6–7/10 solo: Shopify-/WooCommerce-API-Anbindung, Regel-Engine, E-Mail-Versand sind einfach — der Aufwand steckt in der **rechtssicheren Formulierung** (keine unerlaubte Steuerberatung) und im Support bei Grenzfällen. |

## CLEARFRAME + Market Reality
- **TAM (sanity, not spurious precision):** ASSUMPTION: ~50–150k deutsche
  D2C-Online-Shops gesamt; davon nur ein Teil mit **relevantem** EU-Auslandsumsatz
  nahe der €10.000-Schwelle — die kumulierte EU-Cross-Border-Marktgröße ist zwar
  groß (€275,6 Mrd., 2024, +16 % YoY), dominiert aber von Marktplätzen und
  Großhändlern (IKEA etc.), nicht von Kleinshops im Schwellenbereich. Realistische
  zahlungsbereite Zielgruppe eher niedrig vierstellig, kein breiter SMB-Markt.
- **Saturation / competition:** **VERIFIZIERT (August 2026): das Kern-Feature ist
  bereits kostenlos verfügbar.** Das WooCommerce-Plugin „One Stop Shop for
  WooCommerce" von vendidero (WordPress.org, Gratis-Download) überwacht exakt die
  €10.000-Lieferschwelle und erstellt OSS-Steuerreports. Für Shopify und
  Multi-Channel-Händler bündeln Quaderno (ab $29/Mo, globales Threshold-Monitoring
  über 12.000+ Jurisdiktionen inkl. EU-OSS) und hellotax (ab €39/Mo, volle
  EU-USt-Compliance inkl. Threshold- und Warenbewegungs-Überwachung) dasselbe
  Feature bereits in ein breiteres, günstigeres oder gleich teures Produkt.
  Taxdoo hat sein VAT-Compliance-Geschäft zum 30.04.2026 eingestellt (Wechsel zu
  KI-Buchhaltung) — ein Marktsignal für dünne Margen im Segment, nicht für eine
  offene Lücke. Marosa bedient das Thema Intrastat/Threshold eher enterprise-seitig.
  Ein Neueinsteiger mit reinem Monitoring-Tool konkurriert also gegen ein
  **kostenloses Plugin** und gegen **günstigere/breitere Bezahlangebote**.
- **Category maturity & growth:** Plateau/Reguliert — die OSS-Regel besteht seit
  1.7.2021, ist eingeführt und die Tool-Landschaft dafür ist bereits ausgebaut
  (Plugins + spezialisierte VAT-SaaS + Steuerberater-Ökosystem). Kein Wachstums-
  schub durch neue Regulierung sichtbar, kein Emerging-Category-Vorteil.
- **CAC vs CLV sanity:** ASSUMPTION: €29–79/Mo, ~6–12 Monate Retention → ~€200–900
  CLV. Outreach muss gegen ein **kostenloses** Plugin und etablierte VAT-Suiten
  differenzieren — bei einem Steuerthema ist die Vertrauensschwelle für Cold
  Outreach hoch, CAC realistisch €150–350+. Strukturell mindestens grenzwertig,
  eher underwater gegen die Gratis-Alternative.
- **Difficulty score:** 7/10
- **Key risks:**
  1. **Premise weitgehend widerlegt** — die Kernfunktion existiert bereits
     kostenlos (WooCommerce-Plugin) bzw. günstiger/breiter gebündelt (Quaderno,
     hellotax).
  2. **Rechts-/Haftungsrisiko (StBerG):** Konkrete Handlungsempfehlungen zu
     Steuerpflichten ("jetzt registrieren") können als unerlaubte Steuerberatung
     gewertet werden, wenn sie über reine Zahlen-/Schwellen-Anzeige hinausgehen —
     ungeklärt, nicht im Rahmen dieser Desk-Recherche verifizierbar, aber ein
     Show-Stopper-Kandidat für einen Solo-Anbieter ohne Steuerberater-Zulassung.
     **ASSUMPTION**, da keine Rechtsberatung eingeholt wurde.
  3. **Schwache Frequenz/Retention:** Quartalsweiser Check ist kein wiederkehrender
     Alltags-Pain — Kunden könnten nach der ersten Registrierung/Klärung wieder
     kündigen ("einmal eingerichtet, fertig").

## Cited market signals (researched 2026-08-18)
- Kostenloses Konkurrenzprodukt für den Kernfall: [„One Stop Shop for WooCommerce" Plugin, vendidero (WordPress.org)](https://wordpress.org/plugins/one-stop-shop-woocommerce/) — überwacht explizit die €10.000-Lieferschwelle und warnt vor Überschreiten; siehe auch [vendidero.de Produktseite](https://vendidero.de/one-stop-shop-verfahren-oss-in-woocommerce-einfach-umsetzen) und [Kreativdenker-Beschreibung](https://www.agentur-kreativdenker.de/woocommerce-oss-one-stop-shop-plugin/).
- Bezahlte Bündel-Konkurrenz: [Quaderno](https://quaderno.io/vat-and-gst-threshold/) — Threshold-Monitoring über 12.000+ Jurisdiktionen, ab $29/Mo, kein Freemium ([MakerStack-Review](https://makerstack.co/reviews/quaderno-review/)); [hellotax](https://hellotax.com/blog/de/eu-umsatzsteuer-compliance-anbieter/) — volle EU-USt-Compliance inkl. Schwellen- und Warenbewegungs-Monitoring, ab €39/Mo.
- Marktaustritt als Signal: [Taxdoo](https://hellotax.com/blog/taxdoo-replacement-for-vat-compliance/) hat sein VAT-Compliance-Geschäft zum 30.04.2026 eingestellt und wechselt zu KI-gestützter Buchhaltung (Pakete ab €49/149/399 pro Monat, nicht mehr VAT-fokussiert).
- OSS-Regelrahmen bestätigt: EU-weite Lieferschwelle von €10.000 seit 1.7.2021 einheitlich, quartalsweise Meldung an das BZSt fällig ([IHK Ostbrandenburg](https://www.ihk.de/ostbrandenburg/zielgruppeneinstieg-gruender/internetrecht/neue-lieferschwelle-fuer-den-online-handel-5162656), [dhw-stb.de Fristen-Übersicht](https://www.dhw-stb.de/2025/02/oss-meldung-fristen/)); typischer Kill-Fall — Überschreitung fällt oft erst Monate später beim Steuerberater auf ([ohn.haendlerbund.de](https://ohn.haendlerbund.de/themen/payment-finance/one-stop-shop-ueberschreiten-der-lieferschwelle-wichtig)).
- Marktgröße Cross-Border EU-Commerce: €275,6 Mrd. Umsatz 2024, 36 % des gesamten EU-Online-Markts, +16 % YoY, angeführt von Großshops/Marktplätzen wie IKEA — keine belastbare Aufschlüsselung nach Kleinshops nahe der €10.000-Schwelle gefunden ([onlinemarktplatz.de Cross-Border-Ranking](https://onlinemarktplatz.de/255066/top-500-b2c-onlineshops/)).

## Riskiest assumption test (RAT)
- **What to test next:** *Nicht empfohlen über diese Pipeline.* Falls trotzdem
  verfolgt: zuerst rechtlich klären, ob Schwellen-Hinweise + Handlungs-
  empfehlungen unter das Steuerberatungsgesetz fallen (Konsultation mit
  Steuerberater/Anwalt) — **vor** jeder weiteren Produkt- oder Outreach-Arbeit.
  Erst danach 10–15 qualitative Interviews mit Shop-Betreibern zur tatsächlichen
  Schwellen-Nähe und Zahlungsbereitschaft gegenüber der Gratis-Plugin-Lösung.
- **Kill signal:** N/A — bereits auf Desk-Stufe abgebrochen.

## Notes / assumptions
- ASSUMPTION: Zielgruppengröße (Shops nahe der €10.000-Schwelle) nicht separat
  verifizierbar — nur die aggregierte EU-Cross-Border-Marktgröße ist belegt.
- ASSUMPTION: Retention-/CAC-Zahlen ohne öffentlichen Benchmark für dieses
  Nischenprodukt geschätzt.
- ASSUMPTION: Rechtliche Einordnung nach StBerG nicht abschließend geprüft —
  reine Desk-Recherche, keine Rechtsberatung eingeholt.
