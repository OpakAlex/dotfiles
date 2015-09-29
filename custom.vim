set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name="custom"
hi Normal       ctermfg=White      ctermbg=none
hi NonText      ctermfg=DarkGray   ctermbg=none
hi Comment      ctermfg=DarkGray   ctermbg=none
hi Constant     ctermfg=DarkCyan   ctermbg=none
hi Character    ctermfg=Cyan       ctermbg=none
hi Boolean      ctermfg=Cyan       ctermbg=none
hi Identifier   ctermfg=Cyan       ctermbg=none
hi Statement    ctermfg=Green      ctermbg=none
hi Repeat       ctermfg=Yellow     ctermbg=none
hi PreProc      ctermfg=White      ctermbg=none
hi Type         ctermfg=DarkGreen  ctermbg=none
hi Special      ctermfg=Blue       ctermbg=none
hi Underlined   ctermfg=DarkGray   ctermbg=none         cterm=underline
hi Error        ctermfg=Red        ctermbg=none         cterm=underline

hi Visual       ctermfg=White      ctermbg=DarkGray
hi ErrorMsg     ctermfg=Red        ctermbg=none
hi WarningMsg   ctermfg=Yellow     ctermbg=none
hi Title        ctermfg=DarkCyan   ctermbg=none
hi VertSplit    ctermfg=DarkGray   ctermbg=DarkGray
hi Directory    ctermfg=Cyan       ctermbg=DarkBlue
hi Cursor       ctermfg=White      ctermbg=White
hi StatusLine   ctermfg=White      ctermbg=none        cterm=underline
hi StatusLineNC ctermfg=Gray       ctermbg=none        cterm=underline
hi LineNr       ctermfg=DarkGray   ctermbg=none        cterm=none

hi PmenuSel 	ctermfg=White 	   ctermbg=DarkGray
hi Pmenu 	ctermfg=Black 	   ctermbg=White

hi CursorLine                      ctermbg=DarkGray    cterm=none
hi MatchParen   ctermfg=Red        ctermbg=none

hi TabLine     ctermfg=DarkGray    ctermbg=none        cterm=underline
hi TabLineSel  ctermfg=DarkCyan                        cterm=underline
hi TabLineFill ctermfg=DarkGray                        cterm=underline
