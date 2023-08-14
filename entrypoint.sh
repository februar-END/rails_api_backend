#!/bin/sh
set -e
rm -f /profile_app/tmp/pids/server.pid
exec "$@"