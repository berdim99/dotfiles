# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/micha/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gallois"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    sublime
    colored-man-pages
    common-aliases
    fd
    fzf
    history
    vi-mode
    themes
    timer
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/bin:$PATH"

alias ..='cd ..'

# Vim/nvim
alias v=nvim
alias vim=nvim
alias vf='vim $(fzf)'

export TIMER_THRESHOLD=3

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export EDITOR=nvim

alias python=python3
alias gw="./gradlew"

export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export ZSH_AUTOSUGGEST_USE_ASYNC=true
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GOBIN=$HOME/go/bin
export PATH=$GOBIN:$PATH
