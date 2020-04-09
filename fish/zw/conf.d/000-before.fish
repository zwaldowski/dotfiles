set -gx RBENV_ROOT /usr/local/var/rbenv
set -gx EDITOR "subl -n -w"
set -gx GIT_EDITOR "subl -n -w"
set -gx RUBY_CONFIGURE_OPTS "--with-openssl-dir=/usr/local/opt/libressl CFLAGS=-DHAVE_OPAQUE_OPENSSL"
alias cat="bat"
