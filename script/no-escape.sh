#!/usr/bin/env bash
set -eu
. "$(dirname "$0")/common.sh"

echo "Binding Caps Lock to Escape"
defaults -currentHost write -globalDomain "com.apple.keyboard.modifiermapping.1452-631-0" -array '{ HIDKeyboardModifierMappingDst = 30064771113; HIDKeyboardModifierMappingSrc = 30064771129; }'
defaults -currentHost write -globalDomain "com.apple.keyboard.modifiermapping.1452-632-0" -array '{ HIDKeyboardModifierMappingDst = 30064771113; HIDKeyboardModifierMappingSrc = 30064771129; }'
defaults -currentHost write -globalDomain "com.apple.keyboard.modifiermapping.1452-636-0" -array '{ HIDKeyboardModifierMappingDst = 30064771113; HIDKeyboardModifierMappingSrc = 30064771129; }'
