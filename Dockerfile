FROM ruby:2.6.5-alpine

RUN apk add --no-cache build-base postgresql postgresql-dev libpq

ENV WEB_ROOT /web
RUN mkdir $WEB_ROOT
WORKDIR $WEB_ROOT

ENV LANG=en_US.UTF-8

COPY Gemfile ${WEB_ROOT}
COPY Gemfile.lock ${WEB_ROOT}
RUN bundle install -j $(nproc) --quiet

COPY . ${WEB_ROOT}

EXPOSE 2300
