#!/bin/sh

set -e

docker-compose exec web bundle exec hanami console
