#!/usr/bin/env bash
set -eu
. "$(dirname "$0")/common.sh"

echo "Installing Fish and packages..."

SCRIPT="$(mktemp)"
curl -L http://get.oh-my.fish > $SCRIPT
fish $SCRIPT --config=/Users/zw/.cider/fish/config --noninteractive
fish -c "omf install"
