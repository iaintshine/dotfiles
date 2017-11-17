# Path to your oh-my-bash installation.
export OSH=/Users/boguslawmista/.oh-my-bash

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="font"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(core rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(core git bashmarks progress)

source $OSH/oh-my-bash.sh

# Base HOME directory
export BASE_HOME=/opt/base

source $BASE_HOME/dotfiles/git.sh
