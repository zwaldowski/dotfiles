# Customize Oh My Fish configuration path.
set -gx OMF_CONFIG $HOME/.cider/fish/config

# Reconfigure rbenv to point at Homebrew.
set -gx RBENV_ROOT /usr/local/opt/rbenv

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
