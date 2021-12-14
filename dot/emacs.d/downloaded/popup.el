;;; popup.el --- Display things in pop-up frames

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

; $Header: /cvs/rjk/dotfiles/lib/emacs/popup.el,v 1.2 2002/07/28 17:31:17 richard Exp $

(defvar popup-buffer-frame nil
  "Default frame for this buffer")
(make-variable-buffer-local 'popup-buffer-frame)
(put 'popup-buffer-frame 'permanent-local t)

(defun popup-buffer (buffer)
  "With a window system, make sure BUFFER has a frame to live in,
and pop it up.

Without a window system, equivalent to (display-buffer BUFFER)."
  (cond 
   (window-system
    (with-current-buffer buffer
      (if (not (frame-live-p popup-buffer-frame))
	  (setq popup-buffer-frame (new-frame)))
      (raise-frame popup-buffer-frame)
      (select-frame popup-buffer-frame))))
  (display-buffer buffer))

(defmacro popup (buffer &rest body)
  "If BUFFER already exists, just pop it up via popup-buffer.

Otherwise, create BUFFER, pop it up, and run BODY in it."
  `(cond
    ((get-buffer ,buffer)
     (popup-buffer ,buffer))
    (t
     (get-buffer-create ,buffer)
     (popup-buffer ,buffer)
     (with-current-buffer ,buffer
       ,@body))))

(defun popup-popdown ()
  "With a window system, delete the current frame.

Without one, delete the current window."
  (interactive)
  (if window-system
      (delete-frame)
    (delete-window)))

(provide 'popup)
