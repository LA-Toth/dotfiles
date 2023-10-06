(require 'package)


(setq package-archives '(("elpa" . "https://elpa.gnu.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")
                         ("nongnu" . "https://elpa.nongnu.org/nongnu/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(use-package auto-compile
  :init (progn
          (setq load-prefer-newer t)
          (require 'auto-compile)
          (auto-compile-on-load-mode 1)
          (auto-compile-on-save-mode 1)))

;; customization
(setq custom-file "~/.emacs.d/custom.el")
(if (file-exists-p custom-file)
    (load (file-name-sans-extension custom-file)))

(if (file-exists-p "~/.emacs.d/local.el")
    (load "~/.emacs.d/local"))


;; Dispatch to local snippets.
;;
;; Loads ~/.emacs.d/lisp/users/$USER/settings.el, then
;; ~/.emacs.d/lisp/aec/*, and finally ~/.emacs.d/lisp/users/$USER/*.
(defun tla-require (path &optional noerror)
  (when (file-exists-p (concat user-emacs-directory "/lisp/" path))
    (mapc
     (lambda (name)
       (require (intern (concat path "/"
                                (file-name-sans-extension name)))
                nil noerror))
     (directory-files (concat user-emacs-directory
                              "lisp/" path)
                      nil "^[^#].*el$"))))


(add-to-list 'load-path (concat user-emacs-directory "/lisp"))

(require 'tla/misc)
(require 'tla/keybindings)
(require 'tla/packs)
(require 'tla/ui)
