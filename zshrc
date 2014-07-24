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
alias -r n='tmux rename-window'
alias -r pg='pg_ctl -D /usr/local/var/postgres'
alias -r bx='bundle exec'

eval "$(rbenv init -)"

PATH=./bin:~/bin:$PATH

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

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
