#!/bin/sh

LOCAL="$1"
REMOTE="$2"
MERGING="$4"

CMD=/opt/homebrew/bin/code

if [ ! -x "$CMD" ]; then
    CMD=/usr/local/bin/code
fi

if [ -n "$MERGING" ]; then
	BASE="$3"
	MERGE="$4"
    "$CMD" --wait --merge "$LOCAL" "$REMOTE" "$BASE" "$MERGE"
else
    "$CMD" --wait --diff "$LOCAL" "$REMOTE"
fi
