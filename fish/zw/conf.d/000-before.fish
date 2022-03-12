if test -x /opt/homebrew/bin/brew
  eval (/opt/homebrew/bin/brew shellenv)
else if test -x /usr/local/bin/brew
  eval (/usr/local/bin/brew shellenv)
end

fish_add_path $HOME/bin
fish_add_path $HOMEBREW_PREFIX/lib/ruby/gems/3.0.0/bin
fish_add_path $HOMEBREW_PREFIX/opt/ruby/bin
alias cat="bat"
alias code="open -b com.microsoft.VSCode"
set -x EDITOR "open -W -b com.microsoft.VSCode"
