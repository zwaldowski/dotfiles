#!/bin/sh

LOCAL="$1"
REMOTE="$2"
MERGED="$4"

CMD=/opt/homebrew/bin/code

if [ ! -x "$CMD" ]; then
    CMD=/usr/local/bin/code
fi

if [ -n "$MERGED" ]; then
    "$CMD" --wait "$MERGED"
else
    "$CMD" --wait --diff "$LOCAL" "$REMOTE"
fi
