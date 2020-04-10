#!/bin/sh
# Customize the little dude in the top right of the Touch Bar.
# Add the undocumented "media next" key, replace Siri with Screen Lock.
set -eu

echo "Adjusting Control Strip…"

defaults write com.apple.controlstrip MiniCustomized -array com.apple.system.brightness com.apple.system.volume com.apple.system.media-next com.apple.system.screen-lock
