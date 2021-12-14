(load "~/.emacs.d/own/shortcuts.el")

;(load "/usr/share/emacs/site-lisp/site-gentoo.el")
;(require 'php-mode)
;(require 'doxymacs)
;(add-hook 'c-mode-common-hook 'doxymacs-mode)
;(add-hook 'php-mode-common-hook 'doxymacs-mode)
;(defun my-doxymacs-font-lock-hook ()
;  (if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode) (eq major-mode 'php-mode))
;    (doxymacs-font-lock)))
;(add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)
(defalias 'perl-mode 'cperl-mode)
(setq cperl-electric-keywords t) ;; expands for keywords such as
                                     ;; foreach, while, etc...
(setq cperl-hairy t) ;; Turns on most of the CPerlMode options
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(setq-default indent-tabs-mode nil)
; (require 'whitespace)
;(autoload 'nuke-trailing-whitespace "whitespace" nil t)
;(add-hook 'write-file-hooks 'nuke-trailing-whitespace)

;(global-set-key "\C-c_w" 'whitespace-mode)
;   (global-set-key "\C-c_t" 'whitespace-toggle-options)
;   (global-set-key "\C-c=w" 'global-whitespace-mode)
;   (global-set-key "\C-c=t" 'global-whitespace-toggle-options)

(setq-default show-trailing-whitespace t)
(setq standard-indent 4)

(load "~/.emacs.d/downloaded/popup.el")
(load "~/.emacs.d/downloaded/rfc-mode.el")

(load "~/.emacs.d/own/latex.el")
(load "~/.emacs.d/own/abbrevs.el")
(load "~/.emacs.d/own/c-mode-main.el")
(load "~/.emacs.d/own/editing.el")

;(set-background-color "black"
(server-start)

(setq c-default-style "linux")

 (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
     (global-set-key "\C-cl" 'org-store-link)
     (global-set-key "\C-ca" 'org-agenda)
     (global-set-key "\C-cb" 'org-iswitchb)

(setq-default indent-tabs-mode nil)
