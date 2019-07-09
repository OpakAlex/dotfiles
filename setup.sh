DIR=`pwd`

# VIM
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/colors
ln -fs $DIR/vimrc ~/.vimrc
ln -fs $DIR/custom.vim ~/.vim/colors/custom.vim
