export EDITOR="subl -n -w"
export GIT_EDITOR="subl -n -w"

BREW_ROOT="/usr/local"
export RBENV_ROOT="$BREW_ROOT/opt/rbenv"

eval "$(rbenv init - --no-rehash)"

function ql { qlmanage -p $1 >& /dev/null; }
function p { cd ~/Documents/Projects/$1; }
function w { cd ~/Documents/Work/$1; }

# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
  source `brew --prefix`/etc/grc.bashrc
fi

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

export ZSH=$HOME/.cider/zsh/oh-my-zsh
export ZSH_CUSTOM=$HOME/.cider/zsh/custom

ZSH_THEME="zw"
DISABLE_AUTO_TITLE="true"
plugins=(brew brew-cask extract history-substring-search git sublime terminalapp xcode)

source $ZSH/oh-my-zsh.sh

# added by travis gem
[ -f /Users/zw/.travis/travis.sh ] && source /Users/zw/.travis/travis.sh
