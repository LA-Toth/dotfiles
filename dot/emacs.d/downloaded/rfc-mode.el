;;; rfc-mode.el --- RFC fetching and viewing mode for XEmacs

;; Copyright (C) 2002 Richard Kettlewell <rjk@greenend.org.uk>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

; $Header: /cvs/rjk/dotfiles/lib/emacs/rfc-mode.el,v 1.11 2002/07/28 19:32:41 richard Exp $

(provide 'rfc-mode)

(require 'popup)

(defgroup rfc-mode nil
  "Customization of RFC mode")

(defcustom rfc-mode-base-url "http://sunsite.org.uk/rfc/"
  "Base URL for RFC lookups"
  :group 'rfc-mode
  :type '(string))

(defun rfc-mode-buffer-name (key)
  "Determine the buffer name for KEY"
  (if (equal key "index")
      "rfc-index.txt"
    (concat "rfc" key ".txt")))

(defun rfc-mode-get-url (key)
  "Determine the URL for an RFC"
  (concat rfc-mode-base-url (rfc-mode-buffer-name key)))

(defun rfc-fetch (key)
  "Look up an RFC via the web"
  (interactive "sRFC: ")
  (let ((buffername
	 (rfc-mode-buffer-name key)))
    (popup buffername
	   (shell-command (concat "wget -q -O - " (rfc-mode-get-url key))
			  buffername)
	   (set-buffer-modified-p nil)	; removed modified flag
	   (setq buffer-read-only t)	; make it read-only
	   (rfc-mode))))		; turn on RFC mode

(defun rfc-mode ()
  "RFC viewing mode.
Commands:
j               Jump to an RFC by number
                (also button2)

\\{rfc-mode-map}"
  (interactive)
  (kill-all-local-variables)
  (setq major-mode 'rfc-mode)
  (setq mode-name "RFC")
  (view-mode)
  (use-local-map rfc-mode-map)
  (make-local-variable 'rfc-search-term)
  (run-hooks 'rfc-mode-hook)
  )

(defun rfc-mode-parse-link (s)
  "Convert a string, e.g. 0123 or RFC0123, to a plain number as a string"
  (cond
   ((integerp (string-match "^\\(rfc\\|RFC\\)?0*\\([1-9][0-9]*\\)$" s))
    (substring s (match-beginning 2) (match-end 2)))
   (t
    (error 'invalid-argument "Cannot deduce an RFC number" s)))
)

(defun rfc-mode-follow-link (event)
  "Follow a link in an RFC"
  (interactive "e")
  (mouse-set-point event)
  (rfc-fetch (rfc-mode-parse-link (current-word))))

(defun rfc-mode-interactively-follow-link (l)
  "Follow a link in an RFC, but prompt so that you can choose a different
destination."
  (interactive
   (list
    (let ((default (rfc-mode-parse-link (current-word))))
      (read-string (format "RFC (%s): " default) "" nil default))))
  (rfc-fetch l))

(defun rfc-search-forward (regexp)
  "Search forward for REGEXP."
  (interactive "sRegexp: ")
  (setq rfc-search-term regexp)
  (re-search-forward rfc-search-term))

(defun rfc-search-next ()
  "Search for the next occurrence of the most recent search term"
  (interactive)
  (re-search-forward rfc-search-term))

(defun rfc-search-previous ()
  "Search for the next occurrence of the most recent search term"
  (interactive)
  (re-search-backward rfc-search-term))

(defvar rfc-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map "j" 'rfc-mode-interactively-follow-link)
    (define-key map [button2] 'rfc-mode-follow-link)
    (define-key map [mouse-2] 'rfc-mode-follow-link)
    map)
  "Keymap for RFC map")
