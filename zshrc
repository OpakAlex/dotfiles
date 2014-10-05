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

export PATH="/Users/romankuznietsov/perl5/bin${PATH+:}$PATH";
export PERL5LIB="/Users/romankuznietsov/perl5/lib/perl5${PERL5LIB+:}$PERL5LIB";
export PERL_LOCAL_LIB_ROOT="/Users/romankuznietsov/perl5${PERL_LOCAL_LIB_ROOT+:}$PERL_LOCAL_LIB_ROOT";
export PERL_MB_OPT="--install_base \"/Users/romankuznietsov/perl5\"";
export PERL_MM_OPT="INSTALL_BASE=/Users/romankuznietsov/perl5";

if [ -z $TMUX ]; then tmux attach || tmux; fi
