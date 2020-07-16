" Vim syntax file
" Language:     zwa (tla) log file
" Maintainer:   Laszlo Attila Toth <panther@balabit.hu>
" Last Change:  2008-06-12 


" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif


syn match logItemName	"^[a-zA-Z][^:]\+:"
syn match logFileName	"^\s\+\(\*[^:,]\+\(:\|\s*,\s*$\)\|[^:,]\+,\s*$\|[^:]\+:\)"
syn match trailingSpace "\s\+$"
syn match moreEmptyLines "\n\n\n\+"


" highlight tSpace guibg=red ctermbg=red
highlight meLines guibg=green ctermbg=green

" Default highlighting
if version >= 508 || !exists("did_tlalogs_syntax_inits")
  if version < 508
    let did_tlalogs_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink logItemName		Keyword
  HiLink logFileName		Label
  HiLink trailingSpace          Underlined
  HiLink moreEmptyLines         meLines
  delcommand HiLink
endif

set sts=8
set ts=8
set ai
set noet

let b:current_syntax = "tlalogs"

" vim: ts=8
