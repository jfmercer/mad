# Path to your oh-my-zsh configuration.
ZSH=$HOME/.mad/zsh/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="af-magic"
ZSH_THEME="agnoster"
for file in ~/.{aliases,exports,secrets}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(git git-flow laravel4 node python osx brew brew-cask composer sublime ruby rvm gem ssh-agent sudo vundle zsh-syntax-highlighting zsh-history-substring-search composer vagrant)

source $ZSH/oh-my-zsh.sh

# My $PATH is kept in ./zsh/path.zsh
source $HOME/.mad/zsh/path.zsh

# Let's color those man pages
source $HOME/.mad/zsh/color-man-pages.zsh

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"
#
