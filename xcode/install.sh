#!/bin/sh
#
# Xcode
#
# Symlinks Xcode settings on Darwin

# Check for Darwin
if [ "$(uname -s)" == "Darwin" ]
then
  echo "  Symlinking Xcode preferences"
  mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes
  cd ~/Library/Developer/Xcode/UserData
  rm -rf FontAndColorThemes
  ln -s ~/.dotfiles/xcode/themes FontAndColorThemes
fi

exit 0
