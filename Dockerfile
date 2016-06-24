# Image used  from https://hub.docker.com/
FROM ruby:2.3.1-slim
MAINTAINER legendre.gui@gmail.com

# TODO use versionning to avoid issue.
# Package need for the project
RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       # for postgres
                       # libpq-dev=x.x.x \
                       libpq-dev \
                       # for a JS runtime
                       nodejs \
                       # for paperclip
                       imagemagick\
                       file\
                       # for nokogiri
                       # libxml2-dev libxslt1-dev \
    # Smaller images
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV APP_HOME /myapp

# Allow to put the gemfile in a volume
# https://medium.com/@fbzga/how-to-cache-bundle-install-with-docker-7bed453a5800#.xoqyjqgsw
ENV BUNDLE_PATH /bundle

# Create the folder /myapp in the container
RUN mkdir $APP_HOME

# Define the folder /myapp as the working directory
# (next command will be launch from this directory)
WORKDIR $APP_HOME

# Link the current directory to /myapp in the container
ADD . $APP_HOME
