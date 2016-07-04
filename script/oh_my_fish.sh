#!/usr/bin/env bash
set -eu
. "$(dirname "$0")/common.sh"

echo "Installing Fish and packages..."
env OMF_CONFIG=~/.cider/fish curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
fish -c "omf install"
