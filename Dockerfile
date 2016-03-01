FROM ruby:2.2.3-slim
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
# Differentiate production version
# RUN bundle install --without development test
COPY . /myapp

# Is it ok?
ONBUILD RUN bundle exec rake db:create db:migrate db:seed
# ONBUILD RUN RAILS_ENV=production rake db:create db:migrate db:seed
