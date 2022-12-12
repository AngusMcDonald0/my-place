FROM ruby:3.1.2
RUN apt-get update && apt-get install -y npm yarn
RUN mkdir /myplace
WORKDIR /myplace
ADD . /myplace
RUN bundle install
