;; Rövidítések, stb.
(setq-default abbrev-mode t)                            ; enable abbreviations
(setq save-abbrevs t)                                   ; save abbreviations upon exiting xemacs
(setq abbrev-file-name "~/.emacs.d/my-abbreviations.el") ; the file storing the abbreviations
(if (file-readable-p abbrev-file-name)                  ; read the abbreviations every
  (read-abbrev-file abbrev-file-name)                   ; time xemacs is started
  )
(setq dabbrev-case-replace nil)  ; Preserve case when expanding
; C-q Space: nem helyettesít

(load "~/.emacs.d/own/php-abbrevs.el")
(load "~/.emacs.d/own/c-abbrevs.el")
(setq skeleton-end-hook nil)
