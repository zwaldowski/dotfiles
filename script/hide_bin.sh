#!/usr/bin/env bash
set -eu
. "$(dirname "$0")/common.sh"

echo "Hiding home bin folder"
/usr/bin/chflags hidden ~/bin
