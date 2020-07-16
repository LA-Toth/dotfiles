augroup filetypedetect
au BufNewFile,BufRead *.log     setf zlog
au BufNewFile,BufRead test-zorp.txt setf zlog
au BufNewFile,BufRead test-output.txt setf ztestout
au BufNewFile,BufRead testcases.txt setf ztestout
au BufNewFile,BufRead testcases setf ztestout
au BufNewFile,BufRead *.tests setf ztestout
augroup END
