#!/bin/bash

set -e

docker-compose run web bash "$@"
