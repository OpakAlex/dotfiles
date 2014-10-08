ZSH=$HOME/.oh-my-zsh
ZSH_THEME="hl7"

source $ZSH/oh-my-zsh.sh
stty stop undef
unsetopt correct
unsetopt correct_all

export EDITOR=vim
export BROWSER=google-chrome
export PAGER='less -S'
export TERM=xterm-256color
export PGDATA=/usr/local/var/postgres
export PATH="$HOME/bin:/usr/local/heroku/bin:$PATH"

alias -r g='git'
alias -r v='vim'

alias -r bx='bundle exec'
alias -r rails='bx rails'
alias -r rake='bx rake'
alias -r rackup='bx rackup'
alias -r cap='bx cap'
alias -r rspec='bx rspec'

eval "$(rbenv init -)"
