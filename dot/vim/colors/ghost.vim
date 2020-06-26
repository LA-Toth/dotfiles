" Vim color file
" Maintainer:	Tevesz András - \ghost\ <ghost@inf.elte.hu>
" Last Change:	2004 Nov 7
" Light - Dark :-)
" optimized for TFT panels

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "ghost"

" hardcoded colors :

hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen

" GUI
highlight Normal     guifg=#efefef	guibg=#000000 font='FixedSys' 
highlight Cursor     guifg=#000000	guibg=#efefef	gui=NONE
highlight Search     guifg=#ffff60	guibg=#0000ff	gui=NONE
highlight Visual     guifg=Grey25			gui=NONE
highlight Special    guifg=Orange
highlight Comment    guifg=#3030ff
highlight StatusLine guifg=blue		guibg=white
highlight Statement  guifg=#ffff60			gui=NONE
highlight PreProc    guifg=#a0e0a0
highlight Identifier guifg=#00ffff
highlight Constant   guifg=#a0a0a0

highlight Number     guifg=#ff0000 
highlight Float      guifg=#ff0000
highlight String     guifg=Orange 

highlight Type       guifg=#a0a0ff			gui=NONE
highlight Operator   guifg=#ccaa00 			gui=NONE
highlight Keyword    guifg=gray
highlight Label      guifg=green
highlight TagListTagName  guifg=red
highlight TagListTagScope guifg=green
highlight TagListTitle    guifg=blue

set statusline=%<%1*===\ \(%5*%Y%1*:%5*%n%1*\)\ ===\ %5*%f%1*%(\ ===\ %4*%h%1*%)%(\ ===\ %4*%m%1*%)%(\ ===\ %4*%r%1*%)\ ===%====\ %2*%b(0x%B)%1*\ ===\ %3*%l,%c%V%1*\ ===\ %5*%P%1*\ ===%0* laststatus=2
hi StatusLineNC	guibg=#c2bfa5	guifg=grey50		gui=none
hi StatusLine	 cterm=bold,reverse
hi StatusLineNC  cterm=reverse
