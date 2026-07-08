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
CREATE UNIQUE INDEX IF NOT EXISTS leads_campaign_email_key ON leads (campaign, lower(email));
CREATE INDEX IF NOT EXISTS leads_email_idx    ON leads (lower(email));
CREATE INDEX IF NOT EXISTS leads_campaign_idx ON leads (campaign);

-- ---------------------------------------------------------------------------
-- outreach_state — one row per enrolled lead; drives the drip (Workflow 4a/4b)
-- sequence_step: 0 = week 0, 1 = week 1, 2 = week 2 (7-day intervals)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS outreach_state (
    id             BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    lead_id        BIGINT      NOT NULL REFERENCES leads (id) ON DELETE CASCADE,
    campaign       TEXT        NOT NULL,
    status         TEXT        NOT NULL DEFAULT 'in_sequence'
                               CHECK (status IN ('in_sequence', 'replied',
                                      'bounced', 'unsubscribed', 'completed',
                                      'suppressed')),
    sequence_step  INTEGER     NOT NULL DEFAULT 0,
    next_send_at   TIMESTAMPTZ,
    enrolled_at    TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at     TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT outreach_state_lead_key UNIQUE (lead_id)
);
CREATE INDEX IF NOT EXISTS outreach_state_due_idx
    ON outreach_state (status, next_send_at)
    WHERE status = 'in_sequence';

-- ---------------------------------------------------------------------------
-- outreach_sends — append-only send log (Workflow 4b)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS outreach_sends (
    id                   BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    state_id             BIGINT      NOT NULL REFERENCES outreach_state (id) ON DELETE CASCADE,
    lead_id              BIGINT      NOT NULL REFERENCES leads (id) ON DELETE CASCADE,
    campaign             TEXT        NOT NULL,
    sequence_step        INTEGER     NOT NULL,
    provider_message_id  TEXT,
    recipient            TEXT        NOT NULL,
    subject              TEXT,
    body                 TEXT,
    sent_at              TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS outreach_sends_msgid_idx  ON outreach_sends (provider_message_id);
CREATE INDEX IF NOT EXISTS outreach_sends_lead_idx   ON outreach_sends (lead_id);
CREATE INDEX IF NOT EXISTS outreach_sends_campaign_idx ON outreach_sends (campaign);

-- ---------------------------------------------------------------------------
-- outreach_events — granular Mailgun events with bot flag (Workflow 4c)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS outreach_events (
    id           BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    send_id      BIGINT      REFERENCES outreach_sends (id) ON DELETE SET NULL,
    campaign     TEXT,
    event        TEXT        NOT NULL
                             CHECK (event IN ('delivered', 'opened', 'clicked',
                                    'bounced', 'complained', 'unsubscribed')),
    recipient    TEXT,
    url          TEXT,
    client_name  TEXT,
    device_type  TEXT,
    is_bot       BOOLEAN     NOT NULL DEFAULT false,
    occurred_at  TIMESTAMPTZ NOT NULL DEFAULT now(),
    raw          JSONB,
    CONSTRAINT outreach_events_dedupe UNIQUE (send_id, event, recipient, occurred_at)
);
CREATE INDEX IF NOT EXISTS outreach_events_send_idx     ON outreach_events (send_id);
CREATE INDEX IF NOT EXISTS outreach_events_campaign_idx ON outreach_events (campaign, event);

-- ---------------------------------------------------------------------------
-- suppression — global do-not-contact list
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS suppression (
    id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    email       TEXT        NOT NULL,
    reason      TEXT        NOT NULL
                            CHECK (reason IN ('replied', 'bounced', 'complaint',
                                   'unsubscribed', 'manual')),
    campaign    TEXT,
    created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE UNIQUE INDEX IF NOT EXISTS suppression_email_key ON suppression (lower(email));

-- ---------------------------------------------------------------------------
-- outreach_config — throttle settings per campaign (auto-created on CSV import)
-- max_new_per_day defaults to 30 (validation enrollment cap)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS outreach_config (
    campaign         TEXT        PRIMARY KEY,
    daily_send_cap   INTEGER     NOT NULL DEFAULT 10,
    max_new_per_day  INTEGER     NOT NULL DEFAULT 30,
    send_window_start TIME       NOT NULL DEFAULT '09:00',
    send_window_end   TIME       NOT NULL DEFAULT '17:00',
    min_gap_seconds  INTEGER     NOT NULL DEFAULT 90,
    timezone         TEXT        NOT NULL DEFAULT 'Europe/Berlin',
    updated_at       TIMESTAMPTZ NOT NULL DEFAULT now()
);

INSERT INTO outreach_config (campaign, max_new_per_day, daily_send_cap)
VALUES ('example-campaign', 30, 10)
    ON CONFLICT (campaign) DO NOTHING;

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
