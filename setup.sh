DIR = `pwd`

# VIM
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
mkdir -p ~/.vim/colors
ln -s $DIR/vimrc ~/.vimrc
ln -s $DIR/nature.vim ~/.vim/colors/nature.vim

# ZSH
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -s $DIR/zshrc ~/.zshrc
ln -s $DIR/zshenv ~/.zshenv
ln -s $DIR/hl7.zsh-theme ~/.oh-my-zsh/themes/hl7.zsh-theme

# OTHER
ln -s $DIR/gemrc ~/.gemrc
ln -s $DIR/gitconfig ~/.gitconfig
ln -s $DIR/tmux.conf ~/.tmux.conf
