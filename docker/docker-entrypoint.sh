#!/bin/bash

# TODO : If an error occured (in bundle install for example) every next command will execute...
# I tried set e but without success


# First launch of the container gems aren't install so rails command is not known.
# With double pipe if the first command fail the second is execute.
# So bundle install will be execute only when needs automatically.
bundle check || bundle install

# I'm not sure why but the server.pid isn't remove at the end of container, so
# we try to remove it at each start of the server.
rm tmp/pids/server.pid > /dev/null 2> /dev/null

# Affiche le port externe du serveur web
echo "TODO: Le port du serveur web est: "

# bundle exec puma -C /myapp/config/puma.rb -p 3000
bundle exec rails s -p 3000 -b 0.0.0.0
