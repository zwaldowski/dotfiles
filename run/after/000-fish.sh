#!/bin/sh
# Set up Fish and "Fisher" package manager for Fish.
set -eu

sudo dscl . -create /Users/zw UserShell /opt/homebrew/bin/fish
fish -c "fisher update"
