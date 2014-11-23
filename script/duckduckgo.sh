#!/usr/bin/env bash
set -eu
. "$(dirname "$0")/common.sh"

echo "Setting search engine to DuckDuckGo"
defaults write -g NSPreferredWebServices '{NSWebServicesProviderWebSearch = { NSDefaultDisplayName = DuckDuckGo; NSProviderIdentifier = "com.duckduckgo"; }; }';
defaults write com.apple.Safari SearchProviderIdentifier -string "com.duckduckgo"
