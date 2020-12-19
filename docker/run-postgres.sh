#!/bin/sh

set -e

POSTGRES_USER=$(cat .env | grep POSTGRES_USER | awk '{ print $2 }' FS='=')
docker-compose exec postgres psql -U $POSTGRES_USER "$@"
