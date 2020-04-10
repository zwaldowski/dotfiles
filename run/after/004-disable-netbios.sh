#!/bin/sh
set -eu

echo "Disabling netbiosd"

sudo launchctl disable system/netbiosd
sudo launchctl unload -w /System/Library/LaunchAgents/com.apple.netbiosd.plist 2>/dev/null
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.netbiosd.plist 2>/dev/null
