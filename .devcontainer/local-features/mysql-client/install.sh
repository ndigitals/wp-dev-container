#!/usr/bin/env bash

set -eux

export DEBIAN_FRONTEND=noninteractive

# Install the MySQL/MariaDB client.
if [ ! -f /usr/bin/mysql ]; then
	echo "Installing MySQL/MariaDB client..."
	sudo apt-get update -y --no-install-recommends
	sudo apt-get install -y --no-install-recommends default-mysql-client
fi

echo "Done!"
