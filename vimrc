set nocompatible
set nobackup
set nowritebackup
set noswapfile
set showcmd
set number
set incsearch
set laststatus=2
set splitbelow                
set splitright
set ignorecase
set smartcase
set so=50
set ruler
set encoding=utf8
setglobal fileencoding=utf8
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'tsaleh/vim-supertab'
Bundle 'wincent/Command-T'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-dispatch'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'yaml.vim'
Bundle 'oscarh/vimerl'
Bundle 'elixir-lang/vim-elixir'
Bundle 'vim-scripts/VimClojure'
Bundle 'elzr/vim-json'
" Bundle 'artemave/slowdown.vim'
" Bundle 'tpope/vim-cucumber'

filetype plugin indent on
syntax on

colorscheme nature

nmap <silent> <leader>f :CommandT<CR>
nmap <silent> <leader>b :CommandTBuffer<CR>
nmap          <leader>r :CommandTFlush<CR>
nmap          <leader>s :exe "Start! bundle exec rspec % -l " . line(".") . "; read"<CR>
nmap          <leader>c :exe "Start! bundle exec cucumber %:" . line(".") . "; read"<CR>
nmap          <leader>m :exe "Start! mocha --compilers coffee:coffee-script %; read"<CR>
nmap <silent> <leader>h :set hlsearch!<CR>

command! Conf source ~/.vimrc
command! Spec Start! bundle exec rspec %; read
command! Cuke Start! bundle exec cucumber %; read

let g:CommandTMaxFiles = 100000
let g:CommandTMaxHeight = 16
let g:CommandTWildIgnore=&wildignore . ",**/.bundle/*,**/node_modules/*,**/bower_components/*"
let g:C_Ctrl_j='off'

function! StripTrailingWhite()
	let l:winview = winsaveview()
	silent! %s/\s\+$//
	call winrestview(l:winview)
endfunction

au BufWritePre *.{c,h,cpp,hpp,rb,haml,slim,coffee,js,yml,css,scss,sass,feature}  call StripTrailingWhite()
au FileType c,cpp setl sw=4 sts=4 noet
au FileType javascript,json,html setl sw=4 sts=4 et
au FileType ruby,yaml,haml,coffee,scss,sass,cucumber setl sw=2 sts=2 et
