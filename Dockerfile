# FROM ruby:3.1.2
# RUN apt-get update && apt-get install -y npm yarn
# RUN mkdir /myplace
# WORKDIR /myplace
# ADD . /myplace
# RUN bundle install

FROM ruby:3.1.2
RUN apt-get update && apt-get install -y nodejs
WORKDIR /app
# COPY Gemfile* app/

COPY . /app/
RUN bundle install
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
