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
" set ignorecase
" set smartcase
set scrolloff=10
set nofoldenable
set clipboard=unnamed
set statusline=%f\ %y
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'tsaleh/vim-supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/syntastic'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'oscarh/vimerl'
Plugin 'mustache/vim-mustache-handlebars'
call vundle#end()

filetype plugin indent on
syntax on

colorscheme custom

let g:ctrlp_map = '<leader>f'
let g:ctrlp_show_hidden = 1
let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files | uniq']
let g:vim_json_syntax_conceal = 0

let g:syntastic_mode_map = { "mode": "passive",
			\ "active_filetypes": ["erlang"],
			\ "passive_filetypes": [] }

function! StripTrailingWhite()
	let l:winview = winsaveview()
	silent! %s/\s\+$//
	call winrestview(l:winview)
endfunction

function! ToggleColorColumn()
	if &colorcolumn != ''
		setlocal colorcolumn&
	else
		setlocal colorcolumn=81
	endif
endfunction

function! Indent()
	let l:winview = winsaveview()
	normal! gg=G
	call winrestview(l:winview)
endfunction

function! EunitFile()
	let l:modname = matchlist(@%, '\([^/]\+\)\.erl')[1]
	exe "Start rebar eunit suite=" . l:modname . "; read"
endfunction

function! RspecFile()
	exe "Start bundle exec rspec " . @% . "; read"
endfunction

function! RspecLine()
	exe "Start bundle exec rspec " . @% . ":" . line(".") . "; read"
endfunction

nnoremap <silent> <leader>c :call ToggleColorColumn()<CR>
nnoremap <silent> <leader>i :call Indent()<CR>
nnoremap <silent> <leader>h :set hlsearch!<CR>
nnoremap <leader>g :Ggrep<space>
vnoremap <leader>g y:Ggrep<space><C-R>"
nnoremap <leader>s :SyntasticReset<CR>
command Gadd Git add %
nnoremap Â :Git add %<CR>

augroup custom
	au!
	au BufWritePre * call StripTrailingWhite()

	au FileType javascript,json,html,eruby setl ts=4 sw=4 sts=4 et
	au FileType ruby,haml,yaml,coffee setl ts=2 sw=2 sts=2 et
	au FileType erlang setl ts=4 sw=4 sts=4 et commentstring=%\ %s

	au Filetype ruby nnoremap <leader>t :call RspecLine()<CR>
	au Filetype ruby nnoremap <leader>at :call RspecFile()<CR>
	au Filetype erlang nnoremap <leader>t :call EunitFile()<CR>
augroup END
