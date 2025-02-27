#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /aplicacao/tmp/pids/server.pid

# Run db setup
rake db:setup

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"