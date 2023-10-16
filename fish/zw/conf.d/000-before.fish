if test -x /opt/homebrew/bin/brew
  eval (/opt/homebrew/bin/brew shellenv)
else if test -x /usr/local/bin/brew
  eval (/usr/local/bin/brew shellenv)
end

fish_add_path $HOME/bin
fish_add_path $HOMEBREW_PREFIX/opt/ruby/bin
alias cat="bat"
alias docker="podman"
set -x EDITOR "code -W"

set -g fish_color_command brcyan
set -g hydro_color_pwd 00AFFF
set -g hydro_color_git brgreen
set -g hydro_color_prompt $fish_color_command
