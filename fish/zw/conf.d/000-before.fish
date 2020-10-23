set -gx RBENV_ROOT /usr/local/var/rbenv
set -gx EDITOR "code --wait"
set -gx GIT_EDITOR "code --wait"
set -gx GOPATH $HOME/go
set -gx PATH $HOME/bin $GOPATH/bin $PATH
alias cat="bat"
