DIR=`pwd`

# VIM
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/colors
ln -fs $DIR/vimrc ~/.vimrc
ln -fs $DIR/custom.vim ~/.vim/colors/custom.vim

# ZSH
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -fs $DIR/zshrc ~/.zshrc
ln -fs $DIR/zshenv ~/.zshenv
ln -fs $DIR/hl7.zsh-theme ~/.oh-my-zsh/themes/hl7.zsh-theme

# OTHER
ln -fs $DIR/gemrc ~/.gemrc
ln -fs $DIR/gitconfig ~/.gitconfig
ln -fs $DIR/tmux.conf ~/.tmux.conf
ln -fs $DIR/rspec ~/.rspec
