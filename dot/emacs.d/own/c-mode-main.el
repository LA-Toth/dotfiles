(load "~/.emacs.d/own/c-styles.el")
;(load "~/.emacs.d/own/columnmark.el")
(load "~/.emacs.d/own/c-hideif.el")
(load "~/.emacs.d/own/c-syntax-hl.el")
(load "~/.emacs.d/downloaded/linum2.el")

; (setq linum-format "%4d ")

;(add-hook 'c-mode-hook (lambda () (interactive) (linum-mode)
;			))
;(add-hook 'c++-mode-hook (lambda () (interactive) (linum-mode)
;			))
;;(require 'cedet)
(load "/usr/share/emacs/site-lisp/cedet-common/cedet.el")

(setq semanticdb-default-save-directory "/home/panther/tmp/s-cache")

;; Load CEDET
;; (load-file "~/cedet-VERSION/common/cedet.el")

;; Enabling various SEMANTIC minor modes.  See semantic/INSTALL for more ideas.
;; Select one of the following:

;; * This enables the database and idle reparse engines
;;(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode
;;   imenu support, and the semantic navigator
;;(semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as the nascent intellisense mode
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-guady-code-helpers)

;; * This turns on which-func support (Plus all other code helpers)
(semantic-load-enable-excessive-code-helpers)

;; This turns on modes that aid in grammar writing and semantic tool
;; development.  It does not enable any other features such as code
;; helpers above.
;; (semantic-load-enable-semantic-debugging-helpers)


(require 'doxymacs) 
(add-hook 'c-mode-common-hook'doxymacs-mode)

(defun my-doxymacs-font-lock-hook ()
    (if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
        (doxymacs-font-lock)))
  (add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)
