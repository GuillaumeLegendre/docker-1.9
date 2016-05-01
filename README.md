# README

## How to use

$ docker-machine ip default

ip à remplacer par localhost:3000

$ docker-compose build

$ docker-compose up

$ docker-compose run app bundle install

$ docker-compose run app rake db:create db:migrate db:seed

## Objectif

This app is a workflow test for using docker on a rails project from dev to prod.

* [x] Don't reinstall every gem when the gemfile.lock change
https://medium.com/@fbzga/how-to-cache-bundle-install-with-docker-7bed453a5800#.xoqyjqgsw

* [x] Be sure of the lib version install (libpng...)

* [ ] Bug: Aborting when quit and reinstall bundle when he shouldn't

* [ ] multi-server dev in the same time with easy find url to hit

* [ ] Show only log of a specific container

* [ ] Be sure of the system use (debian...) and his version

* [ ] remote deployment

* [ ] Zero downtime deployment

* [ ] Pre-production

 (launching the app on the production server without remove the old version. Able to go back on the old version easily)

* [ ] continuous integration (with wercker)

* [ ] mutual hosting with (one nginx many puma one postgres)

* [ ] scaling horizontaly

* [ ] scaling verticaly



## Wondering

Can I simplify the restart of docker if the server is shutdown then up again?

env variable?

gestion des logs?

How the images stack up ? How avoid to get too much harddrive taken
[here ? :)](https://gist.github.com/ngpestelos/4fc2e31e19f86b9cf10b)
[And here with spotify/docker-gc](https://github.com/spotify/docker-gc)
And script docker-clean.sh
