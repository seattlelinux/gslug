FROM ubuntu:16.10

RUN apt-get update && apt-get install -y \
    net-tools \
    nodejs-legacy \
    npm \
    ruby \
    ruby-dev

WORKDIR /tmp

COPY Gemfile .
COPY Gemfile.lock .
RUN gem install bundler 
RUN bundle install
