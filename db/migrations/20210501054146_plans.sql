-- migrate:up


CREATE TABLE "stripe"."plans" (
    id text primary key,
    object text,
    name text,
    tiers jsonb,
    active boolean,
    amount bigint,
    created integer,
    product text,
    updated integer,
    currency text,
    "interval" text,
    livemode boolean,
    metadata jsonb,
    nickname text,
    tiers_mode text,
    usage_type text,
    billing_scheme text,
    interval_count bigint,
    aggregate_usage text,
    transform_usage text,
    trial_period_days bigint,
    statement_descriptor text,
    statement_description text
);


-- migrate:down

drop table "stripe"."plans";