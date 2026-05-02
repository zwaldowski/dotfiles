if test -x /opt/homebrew/bin/brew
  eval (/opt/homebrew/bin/brew shellenv)
else if test -x /usr/local/bin/brew
  eval (/usr/local/bin/brew shellenv)
end

fish_add_path -g \
    ~/bin \
    /opt/homebrew/opt/ruby/bin \
    $(gem env gemdir)/bin \
    /opt/homebrew/opt/rustup/bin
alias docker="podman"
set -gx EDITOR "zed -w"

set -g fish_color_command brcyan
set -g hydro_color_pwd 00AFFF
set -g hydro_color_git brgreen
set -g hydro_color_prompt $fish_color_command

ssh-add -q
