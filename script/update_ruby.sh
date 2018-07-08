#!/usr/bin/env bash
set -eu
. "$(dirname "$0")/common.sh"

export RBENV_ROOT=/usr/local/opt/rbenv
if which rbenv > /dev/null; then
    eval "$(rbenv init -)";
else
    puterr "rbenv not installed"
    exit 1
fi

echo "Updating Ruby"
RUBY_CONFIGURE_OPTS=--with-openssl-dir=/usr/local/opt/libressl CFLAGS=-DHAVE_OPAQUE_OPENSSL rbenv install 2.5.1 --skip-existing
rbenv global 2.5.1
gem update --system
