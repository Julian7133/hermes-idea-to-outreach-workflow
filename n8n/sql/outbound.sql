-- Hermes outreach schema — adapted from Mfrostbutter/cold-email-outbound.
-- Changes vs. original (see IMPLEMENTATION-PLAN.md §4):
--   * generic `leads` replaces the Google-Maps `gms_leads_enriched`
--   * ListMonk columns removed (we send via Mailgun directly)
--   * new `outreach_events` table for granular, bot-aware diagnostics
--
-- Applied automatically by Postgres on first container init because the file is
-- mounted into /docker-entrypoint-initdb.d/ (see docker-compose.yml). Idempotent
-- so it is safe to re-run by hand: psql "$DATABASE_URL" -f sql/outbound.sql

BEGIN;

CREATE SCHEMA IF NOT EXISTS hermes_outreach;
SET search_path TO hermes_outreach, public;

-- ---------------------------------------------------------------------------
-- leads — kurated contacts imported per campaign (Workflow 0)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS leads (
    id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    campaign    TEXT        NOT NULL,
    email       TEXT        NOT NULL,
    first_name  TEXT,
    company     TEXT,
    title       TEXT,
    domain      TEXT,
    source      TEXT        NOT NULL DEFAULT 'csv'
                            CHECK (source IN ('csv', 'apollo')),
    icp_score   INTEGER     CHECK (icp_score BETWEEN 0 AND 10),
    notes       TEXT,
    created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);
-- one row per email per campaign; Workflow 0's ON CONFLICT dedupe targets this.
-- Expression uniqueness must be an index, not a table constraint.
CREATE UNIQUE INDEX IF NOT EXISTS leads_campaign_email_key ON leads (campaign, lower(email));
CREATE INDEX IF NOT EXISTS leads_email_idx    ON leads (lower(email));
CREATE INDEX IF NOT EXISTS leads_campaign_idx ON leads (campaign);

-- ---------------------------------------------------------------------------
-- outreach_state — one row per enrolled lead; drives the drip (Workflow 4a/4b)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS outreach_state (
    id             BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    lead_id        BIGINT      NOT NULL REFERENCES leads (id) ON DELETE CASCADE,
    campaign       TEXT        NOT NULL,
    status         TEXT        NOT NULL DEFAULT 'in_sequence'
                               CHECK (status IN ('in_sequence', 'replied',
                                      'bounced', 'unsubscribed', 'completed',
                                      'suppressed')),
    sequence_step  INTEGER     NOT NULL DEFAULT 0,   -- 0 = day0, 1 = day3, 2 = day5
    next_send_at   TIMESTAMPTZ,                      -- NULL once terminal
    enrolled_at    TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at     TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT outreach_state_lead_key UNIQUE (lead_id)
);
CREATE INDEX IF NOT EXISTS outreach_state_due_idx
    ON outreach_state (status, next_send_at)
    WHERE status = 'in_sequence';

-- ---------------------------------------------------------------------------
-- outreach_sends — append-only send log (Workflow 4b). provider_message_id is
-- the Mailgun Message-ID and the join key for incoming events.
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS outreach_sends (
    id                   BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    state_id             BIGINT      NOT NULL REFERENCES outreach_state (id) ON DELETE CASCADE,
    lead_id              BIGINT      NOT NULL REFERENCES leads (id) ON DELETE CASCADE,
    campaign             TEXT        NOT NULL,
    sequence_step        INTEGER     NOT NULL,
    provider_message_id  TEXT,                 -- Mailgun Message-ID (with < >)
    recipient            TEXT        NOT NULL,
    subject              TEXT,
    body                 TEXT,
    sent_at              TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS outreach_sends_msgid_idx  ON outreach_sends (provider_message_id);
CREATE INDEX IF NOT EXISTS outreach_sends_lead_idx   ON outreach_sends (lead_id);
CREATE INDEX IF NOT EXISTS outreach_sends_campaign_idx ON outreach_sends (campaign);

-- ---------------------------------------------------------------------------
-- outreach_events — granular Mailgun events with bot flag (Workflow 4c).
-- This is the table the diagnostics skill reads. IPs from the webhook payload
-- are NOT stored here (GDPR, plan §7) — the 4c normalizer drops them.
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS outreach_events (
    id           BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    send_id      BIGINT      REFERENCES outreach_sends (id) ON DELETE SET NULL,
    campaign     TEXT,
    event        TEXT        NOT NULL
                             CHECK (event IN ('delivered', 'opened', 'clicked',
                                    'bounced', 'complained', 'unsubscribed')),
    recipient    TEXT,
    url          TEXT,                          -- populated for 'clicked'
    client_name  TEXT,
    device_type  TEXT,
    is_bot       BOOLEAN     NOT NULL DEFAULT false,
    occurred_at  TIMESTAMPTZ NOT NULL DEFAULT now(),
    raw          JSONB,                         -- payload minus IP fields
    CONSTRAINT outreach_events_dedupe UNIQUE (send_id, event, recipient, occurred_at)
);
CREATE INDEX IF NOT EXISTS outreach_events_send_idx     ON outreach_events (send_id);
CREATE INDEX IF NOT EXISTS outreach_events_campaign_idx ON outreach_events (campaign, event);

-- ---------------------------------------------------------------------------
-- suppression — global do-not-contact list. Kept forever (the suppression is
-- itself the legal obligation). Checked by Workflow 0 and 4a.
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS suppression (
    id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    email       TEXT        NOT NULL,
    reason      TEXT        NOT NULL
                            CHECK (reason IN ('replied', 'bounced', 'complaint',
                                   'unsubscribed', 'manual')),
    campaign    TEXT,                            -- context, not a scope: list is global
    created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);
-- global do-not-contact uniqueness; Workflow 4c ON CONFLICT targets this index.
CREATE UNIQUE INDEX IF NOT EXISTS suppression_email_key ON suppression (lower(email));

-- ---------------------------------------------------------------------------
-- outreach_config — one row per campaign of throttle settings (Workflow 4a/4b).
-- Conservative defaults; warm up daily_send_cap over 2–3 weeks toward ~40.
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS outreach_config (
    campaign         TEXT        PRIMARY KEY,
    daily_send_cap   INTEGER     NOT NULL DEFAULT 10,
    max_new_per_day  INTEGER     NOT NULL DEFAULT 10,
    send_window_start TIME       NOT NULL DEFAULT '09:00',
    send_window_end   TIME       NOT NULL DEFAULT '17:00',
    min_gap_seconds  INTEGER     NOT NULL DEFAULT 90,
    timezone         TEXT        NOT NULL DEFAULT 'Europe/Berlin',
    updated_at       TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Seed a default config row so 4a/4b have settings on day one. Rename/duplicate
-- per real campaign slug before sending.
INSERT INTO outreach_config (campaign) VALUES ('example-campaign')
    ON CONFLICT (campaign) DO NOTHING;

-- keep updated_at fresh on state/config mutations
CREATE OR REPLACE FUNCTION touch_updated_at() RETURNS trigger AS $$
BEGIN
    NEW.updated_at := now();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_outreach_state_touch ON outreach_state;
CREATE TRIGGER trg_outreach_state_touch
    BEFORE UPDATE ON outreach_state
    FOR EACH ROW EXECUTE FUNCTION touch_updated_at();
DROP TRIGGER IF EXISTS trg_outreach_config_touch ON outreach_config;
CREATE TRIGGER trg_outreach_config_touch
    BEFORE UPDATE ON outreach_config
    FOR EACH ROW EXECUTE FUNCTION touch_updated_at();

COMMIT;
