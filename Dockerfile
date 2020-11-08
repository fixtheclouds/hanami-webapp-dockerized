FROM ruby:2.6.5-alpine

RUN apk add --no-cache build-base postgresql postgresql-dev libpq bash

ENV WEB_ROOT /web
RUN mkdir $WEB_ROOT
COPY . ${WEB_ROOT}
WORKDIR $WEB_ROOT

ENV LANG=en_US.UTF-8
ENV HANAMI_HOST=0.0.0.0
ENV HANAMI_ENV development
ENV DATABASE_URL="postgres://hanami:hanami@localhost:5432/hanami_webapp"

RUN bundle install -j $(nproc) --quiet

EXPOSE 2300
