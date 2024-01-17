#!/usr/bin/env bash

set -eux

export DEBIAN_FRONTEND=noninteractive

# Install the Subversion CLI.
if [ ! -f /usr/bin/svn ]; then
	echo "Installing Subversion CLI..."
	sudo apt-get update -y --no-install-recommends
	sudo apt-get install -y --no-install-recommends subversion
fi

echo "Done!"
