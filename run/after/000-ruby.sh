#!/bin/sh
# Install Ruby using rbenv, select it, and update Gems.
set -eu

export RBENV_ROOT=/usr/local/var/rbenv
if command -v rbenv >/dev/null; then
    eval "$(rbenv init -)"
else
    echo >&2 "Error: rbenv not installed"
    exit 1
fi

echo "Setting up Ruby…"

RUBY_CONFIGURE_OPTS=--with-openssl-dir=/usr/local/opt/libressl CFLAGS=-DHAVE_OPAQUE_OPENSSL rbenv install 2.7.1 --skip-existing
rbenv global 2.7.1
gem update --system
