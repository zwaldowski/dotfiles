#!/bin/sh
# Rebind Caps Lock as Escape
set -eu

echo "Binding Caps Lock to Escape…"
# 16-inch MacBook Pro, 2019 (MacBookPro16,1)
defaults -currentHost write -g "com.apple.keyboard.modifiermapping.1452-832-0" -array '{ HIDKeyboardModifierMappingDst = 30064771113; HIDKeyboardModifierMappingSrc = 30064771129; }'
# 14-inch MacBook Pro, 2021 (MacBookPro18,3)
defaults -currentHost write -g "com.apple.keyboard.modifiermapping.1452-834-0" -array '{ HIDKeyboardModifierMappingDst = 30064771113; HIDKeyboardModifierMappingSrc = 30064771129; }'
# Magic Keyboard with Touch ID for Mac models with Apple silicon
defaults -currentHost write -g "com.apple.keyboard.modifiermapping.alt_handler_id-82" -array '{ HIDKeyboardModifierMappingDst = 30064771113; HIDKeyboardModifierMappingSrc = 30064771129; }'
# MacBook Air 13-inch, M3, 2024 (Mac15,12)
defaults -currentHost write -g "com.apple.keyboard.modifiermapping.0-0-0" -array '{ HIDKeyboardModifierMappingDst = 30064771113; HIDKeyboardModifierMappingSrc = 30064771129; }'
