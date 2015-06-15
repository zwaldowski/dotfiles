# Remove fish default greeting
set --erase fish_greeting

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

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

Theme "zw"
Plugin "brew"
Plugin "cask"
Plugin "extract"
Plugin "rbenv"
Plugin "android-sdk"
Plugin "sublime"
Plugin "theme"
