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

# Prompt

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

# Enable fasd
eval "$(fasd --init auto)"
