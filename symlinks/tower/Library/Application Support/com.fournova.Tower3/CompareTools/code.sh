#!/bin/sh

LOCAL="$1"
REMOTE="$2"
MERGED="$4"

CMD=/usr/local/bin/code

if [ -n "$MERGED" ]; then
    "$CMD" --wait "$MERGED"
else
    "$CMD" --wait --diff "$LOCAL" "$REMOTE"
fi
