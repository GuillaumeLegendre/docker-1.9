#! /bin/bash

# Supprime les containers qui ont le status exited
# add -v to remove volume with it?
docker rm $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
# Supprime les images obsolètes
docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
