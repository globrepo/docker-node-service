#!/bin/bash -e

# Container entrypoint to simplify running the production and dev servers.

if [ "$1" = "pm2" ]; then
    exec pm2 start $NAME-pm2.json
    elif [ "$1" = "dev" ]; then
    exec gulp serve
else
    exec $@
fi