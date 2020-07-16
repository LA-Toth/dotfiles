syn keyword phpStructure        namespace
syn match phpMemberSelector "\\"  contained display

" Default highlighting
if version >= 508
" || !exists("did_cp_syntax_inits")
  if version < 508
"    let did_cp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  "
  delcommand HiLink
endif

" vim: ts=8

