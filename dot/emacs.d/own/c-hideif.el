(require 'hideif)

(defun hide-ifdef-region-internal (start end)
   (remove-overlays start end 'face 'font-lock-warning-face)
   (let ((o (make-overlay start end)))
     (overlay-put o 'face 'font-lock-warning-face)))

(defun hif-show-ifdef-region (start end)
   "Everything between START and END is made visible."
   (remove-overlays start end 'face 'font-lock-warning-face)) 

(add-hook 'c-mode-hook (lambda () (interactive) (hide-ifdefs)
			))
(add-hook 'c++-mode-hook (lambda () (interactive) (hide-ifdefs)
			))

