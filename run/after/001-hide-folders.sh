#!/bin/sh
# Hide undesired folders in ~/, including ~/bin/
set -eu

echo "Hiding folders…"
/usr/bin/chflags -h hidden ~/bin
/usr/bin/chflags hidden ~/Movies
/usr/bin/chflags hidden ~/Public
