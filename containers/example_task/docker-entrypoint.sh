#!/bin/sh
# start docker daemon
dockerd > /var/log/dockerd.log 2>&1 & 
exec "$@"
