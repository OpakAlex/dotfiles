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
set scrolloff=10
set nofoldenable
set clipboard=unnamed
set ruler
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
" Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim'
" Plugin 'tpope/vim-cucumber'
Plugin 'yaml.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'vim-emblem'
Plugin 'oscarh/vimerl'
Plugin 'elixir-lang/vim-elixir'
" Plugin 'vim-scripts/VimClojure'
Plugin 'mustache/vim-mustache-handlebars'
call vundle#end()

filetype plugin indent on
syntax on

colorscheme custom

nnoremap <silent> <leader>h :set hlsearch!<CR>
nnoremap <silent> <leader>r :exe "CtrlPClearCache"<CR>
nnoremap <silent> <leader>b :exe "CtrlPBuffer"<CR>

nnoremap <leader>gg yiwmG/<C-R>"<CR>:Ggrep <C-R>"<CR>:set hlsearch<CR>
vnoremap <leader>gg ymG/<C-R>"<CR>:Ggrep <C-R>"<CR>:set hlsearch<CR>

let g:ctrlp_map = '<leader>f'
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {'dir': '\v[\/](\.git|\.bundle|_build)$'}
let g:vim_json_syntax_conceal = 0
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html'] }

function! StripTrailingWhite()
	let l:winview = winsaveview()
	silent! %s/\s\+$//
	call winrestview(l:winview)
endfunction

function! g:ToggleColorColumn()
	if &colorcolumn != ''
		setlocal colorcolumn&
	else
		setlocal colorcolumn=81
	endif
endfunction
nnoremap <silent> <leader>c :call g:ToggleColorColumn()<CR>

function! Indent()
	let p = getpos(".")
	normal! gg=G
	call setpos(".",p)
endfunction
nnoremap <silent> <leader>i :call Indent()<CR>

function! DeleteInactiveBufs()
    let tablist = []
    for i in range(tabpagenr('$'))
        call extend(tablist, tabpagebuflist(i + 1))
    endfor

    let nWipeouts = 0
    for i in range(1, bufnr('$'))
        if bufexists(i) && !getbufvar(i,"&mod") && index(tablist, i) == -1
            silent exec 'bwipeout' i
            let nWipeouts = nWipeouts + 1
        endif
    endfor
    echomsg nWipeouts . ' buffer(s) wiped out'
endfunction
nnoremap <leader>w :call DeleteInactiveBufs()<CR>

augroup custom
	au!
	au BufWritePre * call StripTrailingWhite()
	au FileType javascript,json,html,eruby setl sw=4 sts=4 et
	au FileType ruby,haml,yaml,coffee,scss,sass,slim setl sw=2 sts=2 et
	au FileType erlang setl ts=8 sw=4 sts=4 noet commentstring=%\ %s
	au Filetype elixir nnoremap <leader>s :exe "Start mix test ".@%."; read"<CR>
	au Filetype ruby nnoremap <leader>s :exe "Start bundle exec rspec ".@%.":".line(".")."; read"<CR>
	au Filetype ruby nnoremap <leader>as :exe "Start bundle exec rspec ".@%."; read"<CR>
augroup END
