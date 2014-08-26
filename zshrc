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

alias -r l='ls -lh'
alias -r v='vim'
alias -r g='git'
alias -r t='tmux attach || tmux'
alias -r pg='pg_ctl -D /usr/local/var/postgres'
alias -r b='bundle'
alias -r bx='bundle exec'

eval "$(rbenv init -)"

PATH=./bin:~/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
