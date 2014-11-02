#!/bin/sh
#
# Sublime Text
#
# Symlinks Sublime Text settings on Darwin

# Check for Darwin
if [ "$(uname -s)" == "Darwin" ]
then
  echo "  Symlinking Sublime Text packages"
  mkdir -p $HOME/Library/Application\ Support/Sublime\ Text\ 3/
  cd ~/Library/Application\ Support/Sublime\ Text\ 3/
  rm -rf Packages
  ln -s ~/.dotfiles/sublime-text/Packages Packages
fi

exit 0
