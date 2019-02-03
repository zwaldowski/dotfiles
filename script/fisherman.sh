#!/usr/bin/env bash
set -eu
. "$(dirname "$0")/common.sh"

echo "Installing Fish plugins..."

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fish -c "fisher up"
