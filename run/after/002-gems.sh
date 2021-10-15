#!/bin/sh
# Install Ruby Gems.
set -eu

echo "Setting up Ruby Gems…"

if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -x /usr/local/bin/brew ]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

gem update --system --quiet
bundle install --gemfile=~/.dotfiles/Gemfile --quiet
