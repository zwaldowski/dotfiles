#!/usr/bin/env bash
set -eu
. "$(dirname "$0")/common.sh"

echo "Remapping keys..."

# Swaps Control with Caps Lock on a "MacBookPro10,1" internal keyboard
defaults -currentHost write -g com.apple.keyboard.modifiermapping.1452-610-0 -array '<dict><key>HIDKeyboardModifierMappingDst</key><integer>2</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>' '<dict><key>HIDKeyboardModifierMappingDst</key><integer>0</integer><key>HIDKeyboardModifierMappingSrc</key><integer>2</integer></dict>' '<dict><key>HIDKeyboardModifierMappingDst</key><integer>0</integer><key>HIDKeyboardModifierMappingSrc</key><integer>10</integer></dict>'

# To list the necessary product and vendor:
# `ioreg -n IOHIDKeyboard -r | grep -e 'class IOHIDKeyboard' -e VendorID\" -e Product`
# The format is vendor-product-0.
