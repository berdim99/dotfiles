# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
    fzf
    history
    vi-mode
    themes
    timer
    zsh-autosuggestions
    autoswitch_virtualenv
)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/bin:$PATH"

export GOBIN=$HOME/go/bin
export PATH=$PATH:$GOBIN
alias ..='cd ..'


export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh --no-rehash)"

# Editor
alias v=nvim
alias vim=nvim
alias vf='vim $(fzf)'
export EDITOR=nvim

export TIMER_THRESHOLD=3

export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export ZSH_AUTOSUGGEST_USE_ASYNC=true
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(fzf --zsh)"

. "$HOME/.asdf/asdf.sh"

#export TERM=xterm-256color

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias df=duf
#source ~/.lscolors.sh

export PATH="$PATH:/Users/micha/.local/bin"

#alias t='tickrs -s META,LYFT,SPY,VGT,VCR,IHI,QQQ,GBTC,ETHE,CYN,BTC-USD,ETH-USD'
alias ls='ls -FG'

unalias hl
unalias gsts

eval "$(direnv hook zsh)"
eval "$(atuin init zsh --disable-up-arrow)"

# pnpm
export PNPM_HOME="/Users/micha/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

alias z=zed
alias d='kitten diff'
alias icat="kitten icat"
alias ls=eza
alias ssh='kitten ssh'

autoload -U compinit
compinit
source <(jj util completion zsh)

# NVM setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

#export ANTHROPIC_API_KEY="..."
#export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/Cellar/libpq/18.1_1/bin/:$PATH"

# Increase file descriptor limit for development
ulimit -n 65535

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Cortex CLI completion (disable via /settings in cortex)
[[ -s ~/.zsh/completions/cortex.zsh ]] && source ~/.zsh/completions/cortex.zsh


export LDFLAGS="-L/opt/homebrew/opt/ncurses/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ncurses/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/ncurses/lib/pkgconfig"

alias t='tickrs -s META,LYFT,SPY,VGT,VCR,IHI,QQQ,GBTC,ETHE,CYN,BTC-USD,ETH-USD,SPCX'

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/micha/.juliaup/bin' $path)
export PATH
# Tab completion for juliaup and julia channel selection
[ -f "/Users/micha/.julia/juliaup/completions/zsh.zsh" ] && source "/Users/micha/.julia/juliaup/completions/zsh.zsh"

# <<< juliaup initialize <<<
