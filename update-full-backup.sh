#!/usr/bin/env bash

pg_dump \
  --dbname="$(heroku config:get DATABASE_URL -a rfcbot-rs)" \
  --inserts \
  --data-only \
  > full-db-backup.pg
