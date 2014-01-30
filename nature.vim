" Vim color file
" Maintainer: Mihai Popescu <elfakyn@gmail.com>
" Last Change: 14 June 2009 - 0.3

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name="nature"
hi Normal       ctermfg=LightGray  ctermbg=none       guifg=#D3D7CF    guibg=#000000
hi NonText      ctermfg=Magenta    ctermbg=none       guifg=#555753    guibg=#000000
hi Comment      ctermfg=Magenta    ctermbg=none       guifg=#555753    guibg=#000000 gui=italic
hi Constant     ctermfg=DarkCyan   ctermbg=none       guifg=#06989A    guibg=#000000
hi Character    ctermfg=Cyan       ctermbg=none       guifg=#3465A4    guibg=#000000
hi Boolean      ctermfg=Cyan       ctermbg=none       guifg=#3465A4    guibg=#000000
hi Identifier   ctermfg=Cyan       ctermbg=none       guifg=#34E2E2    guibg=#000000
hi Statement    ctermfg=Green      ctermbg=none       guifg=#8AE234    guibg=#000000 cterm=bold term=bold gui=bold
hi Repeat       ctermfg=Yellow     ctermbg=none       guifg=#FCE94F    guibg=#000000 cterm=bold term=bold gui=bold
hi PreProc      ctermfg=White      ctermbg=none       guifg=#EEEEEC    guibg=#000000 cterm=bold term=bold gui=bold
hi Type         ctermfg=DarkGreen  ctermbg=none       guifg=#4E9A06    guibg=#000000 cterm=none term=bold
hi Special      ctermfg=Blue       ctermbg=none       guifg=#729FCF    guibg=#000000
hi Underlined   ctermfg=Magenta    ctermbg=none       guifg=#AD7FA8    guibg=#000000 cterm=bold,underline gui=bold,underline
hi Error        ctermfg=White      ctermbg=Red        guifg=#EEEEEC    guibg=#EF2929 cterm=bold,underline term=bold gui=bold,underline

hi Visual       ctermfg=White      ctermbg=DarkGray   guifg=#EEEEEC    guibg=#555753
hi ErrorMsg     ctermfg=Red        ctermbg=none       guifg=#EF2929    guibg=#000000 cterm=bold term=bold gui=bold
hi WarningMsg   ctermfg=Yellow     ctermbg=none       guifg=#FCE94F    guibg=#000000
hi Title        ctermfg=White      ctermbg=DarkCyan   guifg=#EEEEEC    guibg=#06989A
hi VertSplit    ctermfg=DarkGray   ctermbg=none       guifg=#EEEEEC    guibg=#000000
hi Directory    ctermfg=Cyan       ctermbg=DarkBlue   guifg=#34E2E2    guibg=#3465A4
hi Cursor       ctermfg=White      ctermbg=White      guifg=#EEEEEC    guibg=#EEEEEC
hi StatusLine   ctermfg=White      ctermbg=none       guifg=#EEEEEC    guibg=#000000 cterm=bold,underline term=bold gui=bold,underline
hi StatusLineNC ctermfg=Gray       ctermbg=none       guifg=#D3D7CF    guibg=#000000 cterm=bold,underline term=bold gui=bold,underline
hi LineNr       ctermfg=DarkYellow ctermbg=none       guifg=#C4A000    guibg=#000000 cterm=none term=bold

hi PmenuSel 	ctermfg=White 	   ctermbg=DarkGray
hi Pmenu 	ctermfg=Black 	   ctermbg=White
