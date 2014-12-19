#!/bin/bash
set -e

# Copy environment variables to PHP
# env | grep MARIADB >> /etc/environment

exec "$@"