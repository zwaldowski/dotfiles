#!/usr/bin/env bash
set -eu
. "$(dirname "$0")/common.sh"

echo "Installing Fish plugins..."

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fish -c "fisher up"
