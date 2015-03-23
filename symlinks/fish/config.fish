set -x EDITOR "subl -n -w"
set -x GIT_EDITOR "subl -n -w"

set -gx RBENV_ROOT /usr/local/opt/rbenv

function ql
    qlmanage -p $argv >& /dev/null
end

function p
    cd ~/Documents/Projects/$1
end

function w
    cd ~/Documents/Work/$1
end

# Path to your oh-my-fish.
set fish_path $HOME/.cider/fish/oh-my-fish
set fish_custom $HOME/.cider/fish/custom

# Theme
set fish_theme zw
set fish_greeting ""

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
set fish_plugins brew cask extract rbenv android-sdk subl theme

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
