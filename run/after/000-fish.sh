#!/bin/sh
# Fetch "Fisher" package manager for Fish and run it.
set -eu

echo "Setting up Fish…"

curl -sL git.io/fisher | source && fisher install jorgebucaran/fisher

fish -c "fisher"
