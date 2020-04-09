#!/bin/sh
# Rebind Caps Lock as Escape
set -eu

echo "Binding Caps Lock to Escape…"
defaults -currentHost write -g "com.apple.keyboard.modifiermapping.1452-636-0" -array '{ HIDKeyboardModifierMappingDst = 30064771113; HIDKeyboardModifierMappingSrc = 30064771129; }'
