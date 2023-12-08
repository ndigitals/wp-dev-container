#!/usr/bin/env bash

set -eux

export DEBIAN_FRONTEND=noninteractive

# Install the WP-CLI.
if [ ! -f /usr/local/bin/wp ]; then
	echo "Installing WP-CLI..."
	sudo curl -sS -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	sudo chmod +x /usr/local/bin/wp
fi

echo "Done!"
