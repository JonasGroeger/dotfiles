#
# XDG Base Directory Spec
#
export XDG_CACHE_HOME=~/.cache
export XDG_CONFIG_HOME=~/.config
export XDG_DATA_HOME=~/.local/share

#
# Load Antigen
#
source ~/.config/zsh/antigen.zsh

antigen use oh-my-zsh
antigen bundle command-not-found
antigen bundle docker
antigen bundle docker-compose
antigen bundle fasd
antigen bundle git
antigen bundle pip
antigen bundle sudo

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle ~/.config/zsh-env

antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

antigen apply

#
# Aliases
#
alias checkperm="namei $(pwd) -movx"
alias -- -='cd -'
alias ...=../..
alias ....=../../..
alias .....=../../../..
alias g=git
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls --color=tty'

#
# Environment variables
#
export EDITOR="vim"
export PAGER="most"
export PATH="$HOME/.local/bin:$PATH"

#
# Moving shitty dotfiles
#
export ICEAUTHORITY=${XDG_CACHE_HOME}/ICEauthority
export _FASD_DATA=${XDG_DATA_HOME}/fasd/data
export HISTFILE="${XDG_DATA_HOME}"/zsh/history

#
# Prompt
#
BULLETTRAIN_PROMPT_ORDER=(
    time
    status
    custom
    context
    dir
    perl
    ruby
    virtualenv
    #nvm
    aws
    go
    #elixir
    git
    hg
    cmd_exec_time
)
BULLETTRAIN_CONTEXT_BG=cyan
BULLETTRAIN_CONTEXT_FG=black

#
# fasd
#
eval "$(fasd --init auto)"
