(global-set-key [f5] 'copy-region-as-kill) ; Copy
(global-set-key [f7] 'search-forward) ; search
(global-set-key "\C-cxs"  'search-forward) ; search
(global-set-key "\C-cxf"  'search-forward) ; search
(global-set-key "\C-cxb" 'search-backward) ; search
(global-set-key "\C-cxq" 'search-backward-regexp) ; search
(global-set-key "\C-cxw" 'search-forward-regexp) ; search
(global-set-key "\C-cxg"  'goto-line) ; Go To Line Number: :)
(global-set-key "\C-cxa"  'indent-region) ; Indent region
(global-set-key "\C-cxi"  'indent-region) ; Indent region
(global-set-key "\C-cxu"  'uncomment-region) ; Uncomment region
(global-set-key "\C-cxc"  'comment-region) ; Comment region
(global-set-key "\M-s" 'dabbrev-expand); ; same as M-/

; bookmarks
(define-key global-map [f9] 'bookmark-jump)
(define-key global-map [f10] 'bookmark-set)
(setq bookmark-save-flag 1) ; ne kelljen M-x bookmark-save
