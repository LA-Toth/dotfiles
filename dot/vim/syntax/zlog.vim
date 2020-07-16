" Vim syntax file
" Language:	Zorp log file
" Last Change:	2006 Feb 08

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

highlight lineref ctermfg=darkgray
highlight dataline ctermfg=green
highlight textline ctermfg=green
highlight enterleave ctermfg=blue
highlight fnname ctermfg=darkmagenta
highlight signal ctermbg=red ctermfg=white
highlight stderr ctermbg=blue ctermfg=white
highlight wb ctermfg=green ctermbg=red
highlight fn ctermfg=darkgreen

syntax match logmsg /: [^:;]*;/ms=s+2,me=e-1
syntax match argname /[;,] [^=]*='/ms=s+2,me=e-2
syntax match argvalue /='[^']*'/ms=s+1
syntax match lineref /([^:]\+:[0-9]\+)$/
syntax match dataline /: data line .*/ms=s+2
syntax match textline /: text line .*/ms=s+2
syntax match enterleave /\(Enter\|Leave\|Checkpoint\) /me=e-1 nextgroup=fnname skipwhite
syntax match fnname /[a-zA-Z0-9_]\+/ contained nextgroup=lineref skipwhite
syntax match signal /Signal received, stackdump follows\|Fatal signal occurred, dumping stack\|Zorp exited due to a signal\/failure\|retaddr=0x[0-9a-f]\+, ebp=0x[0-9a-f]\+/
syntax match sigdump /[0-9a-f]\{8\}-[0-9a-f]\{8\} [r-][w-][x-][p-] [0-9a-f]\{8\} [0-9][0-9]:[0-9][0-9] [0-9].*/
syntax match stderr /(stderr): .*/
syn match perform "Performing resync; msg='[^']\+'"
syn match perform "Performing resync"
syn match perform "Finished resync"
syn match server "'server'"
syn match client "'client'"
syn match msg93  "msg='93'"
syn match service /\<svc\/[^:]\+:/me=e-1
syn match idx /:[0-9]\+[/)]/me=e-1
"syn match channel /[0-9]\/[a-z]\+)/ms=s+1,me=e-1
syn match channel /\(\/[a-z]\+\)\+)/me=e-1
syn match inf /rdp_iso [a-z_]\+/
"syn match parsing "Parsing next packet"

syn match perform "BUF\( ptr:\|:\) 0x[0-9a-zA-Z]\+"
syn match wb  "STORED 0x[0-9a-zA-z]\+"
syn match fn /function_name='[^']\+'/

highlight link logmsg Type
highlight link argname Identifier
highlight link argvalue String
highlight link sigdump signal
highlight link lineref LineRef
highlight link dataline DataLine
highlight link enterleave EnterLeave
highlight link fnname FnName
hi link signal Error
hi link server  Exception
hi link client  Exception
hi link perform Error
hi link msg93 Constant
hi link service lineref
hi link idx lineref
hi link channel lineref
hi link inf    Error
"hi link parsing Error

let b:current_syntax = "zlog"
set nowrap
set nosol

":nmap <Up> <C-Y>
":nmap <Down> <C-E>
":nmap <PageUp> <C-U>
":nmap <PageDown> <C-D>
":nmap <Left> zh
":nmap <Right> zl

" vim: ts=8
