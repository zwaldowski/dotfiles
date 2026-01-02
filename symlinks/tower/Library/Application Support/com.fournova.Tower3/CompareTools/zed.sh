#!/bin/sh

CMD="/opt/homebrew/bin/zed"

if [ ! -x "$CMD" ]; then
    CMD=/usr/local/bin/zed
fi

if [ ! -x "$CMD" ]; then
	echo "$(basename $0): Could not find zed."
	exit 1
fi

if [[ $# -eq 4 ]]; then
  # Invoked as merge tool
  "$CMD" --wait "$4"
elif [[ $# -eq 2 ]]; then
  # Invoked as diff tool
  "$CMD" --wait --diff "$1" "$2"
else
  # Error
  echo "error: Number of arguments must be 4 or 2."
  exit 1
fi
