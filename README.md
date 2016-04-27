# README

This app is a workflow test for using docker on a rails project from dev to prod.

* [x] easy first deploy

 (no manual install of ruby, nginx, postgresql, gems...)

 should I automate create database, migrate, seed in dockerfile ?

* [x] automate config of necessary processus (nginx)

* [ ] multi-server dev in the same time with easy find url to hit  

* [ ] Don't reinstall every gem when the gemfile.lock change
 
* [ ] Be sure of the system use (debian...) and his version

* [ ] Be sure of the lib version install (libpng...)

* [ ] Bundle install throw an error do I have to relaunch all the docker-compose build? How do I launch any command in the         docker
 
  An error occurred while installing temple (0.7.6), and Bundler cannot continue.
  Make sure that `gem install temple -v '0.7.6'` succeeds before bundling.
  ERROR: Service 'web' failed to build: The command '/bin/sh -c bundle install' returned a non-zero code: 5

* [ ] remote deployment

* [ ] Zero downtime deployment

* [ ] Pre-production

 (launching the app on the production server without remove the old version. Able to go back on the old version easily)

* [ ] continuous integration (with wercker)

* [ ] scaling horizontaly

* [ ] scaling verticaly



## Wondering

Can I simplify the restart of docker if the server is shutdown then up again?

env variable?

How the image stack up ? How avoid to get too much harddrive taken [here ? :)](https://gist.github.com/ngpestelos/4fc2e31e19f86b9cf10b)
