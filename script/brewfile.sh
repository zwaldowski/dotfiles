#!/usr/bin/env bash
set -eu
. "$(dirname "$0")/common.sh"

echo "Using Brewfile to bootstrap"
brew bundle --global
