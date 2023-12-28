# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/micha/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="gallois"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    sublime
    colored-man-pages
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
#export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
#export PATH="$PATH:/opt/homebrew/opt/mysql-client/bin"
#export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/15/bin/"

alias ..='cd ..'

# Vim/nvim
alias v=nvim
alias vim=nvim
alias vf='vim $(fzf)'
export EDITOR=nvim

export TIMER_THRESHOLD=3

export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export ZSH_AUTOSUGGEST_USE_ASYNC=true
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GOBIN=$HOME/go/bin
export PATH=$PATH:$GOBIN

. /opt/homebrew/opt/asdf/libexec/asdf.sh

export TERM=xterm-256color

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias df=duf
source ~/.lscolors.sh

export PATH="$PATH:/Users/micha/.local/bin"

alias t='tickrs -s META,LYFT,SPY,VGT,VCR,IHI,QQQ,GBTC,ETHE,CYN,BTC-USD,ETH-USD'

export PATH="$PATH:/Users/micha/.foundry/bin"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#compdef gt
###-begin-gt-completions-###
#
# yargs command completion script
#
# Installation: ../../.asdf/installs/nodejs/17.1.0/.npm/bin/gt completion >> ~/.zshrc
#    or ../../.asdf/installs/nodejs/17.1.0/.npm/bin/gt completion >> ~/.zprofile on OSX.
#
_gt_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" ../../.asdf/installs/nodejs/17.1.0/.npm/bin/gt --get-yargs-completions "${words[@]}"))
  IFS=$si
  _describe 'values' reply
}
compdef _gt_yargs_completions gt
###-end-gt-completions-###

eval "$(direnv hook zsh)"
eval "$(atuin init zsh --disable-up-arrow)"

# pnpm
export PNPM_HOME="/Users/micha/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
