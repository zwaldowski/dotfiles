#!/bin/sh
# Fetch "Fisher" package manager for Fish and run it.
set -eu

echo "Setting up Fish…"

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

fish -c "fisher"
