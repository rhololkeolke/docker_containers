#!/bin/bash
set -e
if [ -d /var/lib/mumble-server ]; then
    chown -R mumble-server:mumble-server /var/lib/mumble-server
fi
ruby /mumble.rb
/usr/bin/supervisord
