export EDITOR="subl -n -w"
export GIT_EDITOR="subl -n -w"

BREW_ROOT="/usr/local"
export RBENV_ROOT="$BREW_ROOT/opt/rbenv"

eval "$(rbenv init - --no-rehash)"

function ql { qlmanage -p $1 >& /dev/null; }
function p { cd ~/Documents/Projects/$1; }
function w { cd ~/Documents/Work/$1; }

export ZSH=$HOME/.cider/zsh/oh-my-zsh
export ZSH_CUSTOM=$HOME/.cider/zsh/custom

ZSH_THEME="zw"
DISABLE_AUTO_TITLE="true"
plugins=(brew brew-cask extract history-substring-search git sublime terminalapp xcode)

source $ZSH/oh-my-zsh.sh
