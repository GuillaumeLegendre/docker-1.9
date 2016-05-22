#!/bin/bash

# First launch of the container gems aren't install so rails command is not known.
# With double pipe if the first command fail the second is execute.
# So bundle install will be execute only when needs automatically.
bundle check || bundle install

# I'm not sure why but the server.pid isn't remove at the end of container, so
# we try to remove it at each start of the server.
rm tmp/pids/server.pid

bundle exec puma -C /myapp/config/puma.rb -p 3000
