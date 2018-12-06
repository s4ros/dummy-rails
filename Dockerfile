FROM ruby:alpine

RUN apk update && \
apk add gcc \
  libc-dev \
  make \
  sqlite-dev \
  nodejs \
  tzdata \
  postgresql-dev postgresql-libs
RUN gem install rails execjs tzinfo-data sidekiq pg

COPY dummy /data
WORKDIR /data
RUN bundle install

EXPOSE 3000
CMD ["bin/rails", "server"]
