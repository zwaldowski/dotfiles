#!/usr/bin/env bash
set -eu
. "$(dirname "$0")/common.sh"

echo "Installing Fish packages..."
fish -c "omf install"
