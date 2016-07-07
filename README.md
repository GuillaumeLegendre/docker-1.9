# README

## How to use
```bash
$ docker-compose build
```

```bash
$ docker-compose up
```

```bash
$ docker-compose run app bundle exec rake db:create db:migrate db:seed
```

### Utiliser un debuggeur (byebug, pry...)

```bash
$ docker-compose up -d
$ docker attach nom_app
```

### debugger un container
```bash
$ docker exec -it nom_app /bin/bash
```

## Objectif

This app is a workflow test for using docker on a rails project from dev to prod.

### Dev

* [ ] Can't rake db:drop database is always open !

* [ ] multi-server dev in the same time without port conflict

* [ ] Mailcatcher? in a container or in a project mailcatcher?

* [ ] Other tool like phpmyadmin,... ?

* [x] Don't reinstall every gem when the gemfile.lock change
* https://medium.com/@fbzga/how-to-cache-bundle-install-with-docker-7bed453a5800#.xoqyjqgsw

* [ ] easy git hook management ? http://stackoverflow.com/questions/3462955/putting-git-hooks-into-repository/3464399#3464399
* https://mpdaugherty.wordpress.com/2010/04/06/how-to-include-git-hooks-in-a-repository-and-still-personalize-your-machine/

* [ ] Be sure of the system use (debian...) and his version

### To prod

* [ ] remote deployment

* [ ] Zero downtime deployment

* [ ] Pre-production

 (launching the app on the production server without remove the old version. Able to go back on the old version easily)

* [ ] continuous integration (with wercker)

* [ ] mutual hosting with (one nginx many puma one postgres)

* [ ] Docker swarm

* [ ] gestion des logs en prod?


## Wondering

Can I simplify the restart of docker if the server is shutdown then up again?

env variable?

How the images stack up ? How avoid to get too much harddrive taken
[here ? :)](https://gist.github.com/ngpestelos/4fc2e31e19f86b9cf10b)
[And here with spotify/docker-gc](https://github.com/spotify/docker-gc)
And script docker-clean.sh
