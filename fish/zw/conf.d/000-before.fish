if test -x /opt/homebrew/bin/brew
  eval (/opt/homebrew/bin/brew shellenv)
else if test -x /usr/local/bin/brew
  eval (/usr/local/bin/brew shellenv)
end

set -x PATH $HOME/bin $HOMEBREW_PREFIX/opt/ruby/bin $PATH
set -x EDITOR "code --wait"
set -x GIT_EDITOR "code --wait"
alias cat="bat"
