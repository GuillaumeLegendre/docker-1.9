# alpine is a tiny linux with just the minimum package install
# https://hub.docker.com/_/nginx/
FROM nginx:1.9.15-alpine

# Copy sites-available/default file
# !!! warning: !!!
# This method override the conf of nginx so it can be use only on dedicated server
COPY nginx.conf /etc/nginx/nginx.conf
