FROM ruby:2.3.1-alpine
MAINTAINER tommyku

RUN gem install bundler

COPY Gemfile Gemfile.lock /app/

WORKDIR /app/

RUN bundle

COPY server.rb /app/

ADD views /app/views

CMD ["ruby", "server.rb"]
