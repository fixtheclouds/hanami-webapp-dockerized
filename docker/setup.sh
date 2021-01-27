#!/bin/sh

set -e

docker-compose exec web bundle exec hanami db prepare
docker-compose exec web bundle exec rake populate:all
