#!/bin/sh
set -euo pipefail

#exec su-exec $@
# Re-set permission to the `testuser` user
# This avoids permission denied if the data volume is mounted by root
chown -R testuser /build
exec su-exec testuser /usr/local/bin/testtoctree.sh
