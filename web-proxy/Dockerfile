FROM ruby:2.3.1-alpine
MAINTAINER tommyku

RUN gem install bundler

COPY Gemfile Gemfile.lock /app/

WORKDIR /app/

RUN bundle

COPY server.rb /app/

EXPOSE 1080

CMD ["ruby", "server.rb"]
