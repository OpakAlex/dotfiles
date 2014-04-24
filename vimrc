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
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-dispatch'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-vinegar'

Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-scripts/VimClojure'
Bundle 'elzr/vim-json'
Bundle 'tpope/vim-cucumber'
Bundle 'elixir-lang/vim-elixir'
Bundle 'oscarh/vimerl'
Bundle 'yaml.vim'
Bundle 'vim-emblem'
" Bundle 'tpope/vim-haml'

filetype plugin indent on
syntax on

colorscheme nature

nmap <silent> <leader>h :set hlsearch!<CR>
nmap <silent> <leader>p :set paste!<CR>
command! Conf source ~/.vimrc

nmap <leader>s :exe "Start! bundle exec rspec % -l " . line(".") . "; read"<CR>
nmap <leader>c :exe "Start! bundle exec cucumber %:" . line(".") . "; read"<CR>

command! Spec Start! bundle exec rspec %; read
command! Cuke Start! bundle exec cucumber %; read
command! Mocha Start! mocha --compilers coffee:coffee-script/register %; read
command! Lein Start! lien spec %; read
command! Mix Start! mix test %; read

nmap <silent> <leader>r :exe "CtrlPClearCache"<CR>
let g:ctrlp_map = '<leader>f'
let g:ctrlp_custom_ignore = {'dir': '\v[\/](\.git|\.bundle|node_modules|bower_components|target|_build|deps)$'}
let g:ctrlp_show_hidden = 1

function! StripTrailingWhite()
	let l:winview = winsaveview()
	silent! %s/\s\+$//
	call winrestview(l:winview)
endfunction
au BufWritePre *.{rb,coffee,js,json,yml,clj,ex,exs,haml,emblem}  call StripTrailingWhite()

function! Indent()
	let p = getpos(".")
	normal! gg=G
	call setpos(".",p)
endfunction
nmap <silent> <leader>i :call Indent()<CR>

au FileType javascript,json,html setl sw=4 sts=4 et
au FileType ruby,haml,yaml,coffee,scss,sass,cucumber setl sw=2 sts=2 et
