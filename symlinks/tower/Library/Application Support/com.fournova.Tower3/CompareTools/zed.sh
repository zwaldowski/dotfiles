#!/bin/sh

LOCAL="$1"
REMOTE="$2"

# Sanitize LOCAL path
if [[ ! "$LOCAL" =~ ^/ ]]; then
	LOCAL=$(echo "$LOCAL" | sed -e 's/^\.\///')
	LOCAL="$PWD/$LOCAL"
fi

# Sanitize REMOTE path
if [[ ! "$REMOTE" =~ ^/ ]]; then
	REMOTE=$(echo "$REMOTE" | sed -e 's/^\.\///')
	REMOTE="$PWD/$REMOTE"
fi

CMD=/opt/homebrew/bin/zed

if [ ! -x "$CMD" ]; then
    CMD=/usr/local/bin/zed
fi

if [ ! -x "$CMD" ]; then
	echo "$(basename $0): Could not find zed."
	exit 1
fi

"$CMD" --wait --diff "$LOCAL" "$REMOTE"
