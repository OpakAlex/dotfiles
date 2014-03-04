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

" general
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'tsaleh/vim-supertab'
Bundle 'wincent/Command-T'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-dispatch'

" language-specific
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-scripts/VimClojure'
Bundle 'elzr/vim-json'

" Bundle 'yaml.vim'
" Bundle 'oscarh/vimerl'
" Bundle 'elixir-lang/vim-elixir'
" Bundle 'tpope/vim-haml'
" Bundle 'tpope/vim-cucumber'
" Bundle 'artemave/slowdown.vim'

filetype plugin indent on
syntax on

colorscheme nature

nmap <silent> <leader>f :CommandT<CR>
nmap <silent> <leader>b :CommandTBuffer<CR>
nmap          <leader>r :CommandTFlush<CR>
nmap          <leader>s :exe "Start! bundle exec rspec % -l " . line(".") . "; read"<CR>
nmap          <leader>m :exe "Start! mocha --compilers coffee:coffee-script/register %; read"<CR>
nmap <silent> <leader>h :set hlsearch!<CR>

command! Conf source ~/.vimrc
command! Spec Start! bundle exec rspec %; read

let g:CommandTMaxFiles = 100000
let g:CommandTMaxHeight = 16
let g:CommandTWildIgnore=&wildignore . ",**/.bundle/*,**/node_modules/*,**/bower_components/*,**/target/*"

function! StripTrailingWhite()
	let l:winview = winsaveview()
	silent! %s/\s\+$//
	call winrestview(l:winview)
endfunction

function! Indent()
	let p = getpos(".")
	normal! gg=G
	call setpos(".",p)
endfunction
nmap <silent> <leader>i :call Indent()<CR>

au BufWritePre *.{rb,coffee,js,json,clj}  call StripTrailingWhite()

au FileType c,cpp setl sw=4 sts=4 noet
au FileType javascript,json,html setl sw=4 sts=4 et
au FileType ruby,yaml,haml,coffee,scss,sass,cucumber setl sw=2 sts=2 et
