FROM ruby:2.2.3-slim
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp

#Is it ok?
ONBUILD RUN bundle exec rake db:create db:migrate db:seed
