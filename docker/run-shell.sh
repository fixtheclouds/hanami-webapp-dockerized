#!/bin/sh

set -e

docker-compose run web sh "$@"
