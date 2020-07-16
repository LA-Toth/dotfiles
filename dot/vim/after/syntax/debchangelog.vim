syn match debchangelogTarget	contained "\( zorpos33\| balabit-backports\| kernel-2-6-\(17r\(3\|4\)\|22r1\|24r1\|27r1\)\)\+"
"syn keyword debchangelogTarget zorpos33

" Associate our matches and regions with pretty colours
if version >= 508 
  if version < 508
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink debchangelogTarget		Identifier

  delcommand HiLink
endif

" vim: ts=8 sw=2
