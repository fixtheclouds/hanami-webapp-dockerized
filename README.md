# Hanami test

Hanami test project run by docker.

## Setup
```sh
# build & run
$ docker-compose up --build
# init database
$ ./docker/init.sh
# run PG console
$ ./docker/run-postgres.sh
# run shell inside web app container
$ ./docker/run-shell.sh
```
