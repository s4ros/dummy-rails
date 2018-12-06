FROM ruby:alpine

# should be sorted A-Z, I know..
# and some of the packages should be --virtual and deleted when not needed
RUN apk update && \
apk add gcc \
  libc-dev \
  make \
  sqlite-dev \
  nodejs \
  tzdata \
  postgresql-dev postgresql-libs
RUN gem install rails execjs tzinfo-data pg

COPY dummy /data
WORKDIR /data
RUN bundle install

EXPOSE 3000
CMD ["bin/rails", "server"]
