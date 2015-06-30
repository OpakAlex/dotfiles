ZSH=$HOME/.oh-my-zsh
ZSH_THEME="hl7"

PATH=~/bin:$PATH

source $ZSH/oh-my-zsh.sh
stty stop undef
unsetopt correct
unsetopt correct_all

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=vim
export BROWSER=google-chrome
export PAGER='less -S'
export TERM=xterm-256color
export PGDATA=/usr/local/var/postgres

alias -r g='git'
alias -r v='vim'
alias -r b='bundle exec'

eval "$(rbenv init - zsh)"

[[ -s $(brew --prefix)/etc/autojump.sh ]] && . $(brew --prefix)/etc/autojump.sh
