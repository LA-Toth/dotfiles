syn match trailingSpace "\s\+$"
" syn region trailingSpace start="\\$" end="\\$" contains="\(\\$\|\s\)\+"


hi clear SpellBad
hi SpellBad cterm=bold ctermfg=1 ctermbg=gray


" Default highlighting
if version >= 508
" || !exists("did_cp_syntax_inits")
  if version < 508
"    let did_cp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  " HiLink trailingSpace          Error
  HiLink trailingSpace          Underlined
  delcommand HiLink
endif

" vim: ts=8

