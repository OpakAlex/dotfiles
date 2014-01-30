ZSH=$HOME/.oh-my-zsh
ZSH_THEME="hl7"

source $ZSH/oh-my-zsh.sh
stty stop undef # prevent ctrl+s freezing the terminal
unsetopt correct
unsetopt correct_all

export EDITOR=vim
export BROWSER=google-chrome
export PAGER='less -S'
export TERM=xterm-256color

alias -r l='ls -lh'
alias -r v='vim'
alias -r g='git'
alias -r gf='git flow'
alias -r t='tmux attach || tmux'
alias -r pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'
alias -r bx='bundle exec'
alias -r mpq='mysql --host=78.140.128.249 --user=query --password=qWb7ix}s6oJC+g --skip-secure-auth wz'

eval "$(rbenv init -)"

PATH=./bin:$PATH

# perl stuff
PATH="/Users/romankuznietsov/perl5/bin${PATH+:}$PATH";
export PATH;
PERL5LIB="/Users/romankuznietsov/perl5/lib/perl5${PERL5LIB+:}$PERL5LIB";
export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/romankuznietsov/perl5${PERL_LOCAL_LIB_ROOT+:}$PERL_LOCAL_LIB_ROOT";
export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/romankuznietsov/perl5\"";
export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/romankuznietsov/perl5";
export PERL_MM_OPT;
