(setq modes-in-dir '(
       ("/home/panther/src" "linux" )
       ("/home/panther/zwa" "gnu")
       ("/home/panther/git/kernel" "linux")
       ("/home/panther/git/zorp" "gnu")
       )
)

(defun compare-strings-ex (str1 b1 e1 str2 b2 e2)
  "Returns t if compare-string returns t, nil otherwise"
  (setq r (compare-strings str1 b1 e1 str2 b2 e2))
  (and (booleanp r) (not (eq r nil)))
)

(defun file-in-dir (filename directory)
  "Check that filename's prefix is directory"
 (setq len (length directory))
  (if (compare-strings-ex directory (- len 1) len "/" 0 1)
    (setq dir directory)
      (setq dir (concat directory "/"))
    )
 (setq len (length dir))
  (compare-strings-ex filename 0 len dir 0 len)
)


(defun set-style-in-dirs (filename default-style)
 "Sets the C style in the current buffer"
 (setq st default-style)
 (dolist (item modes-in-dir)
  (if (file-in-dir filename (car item))
    (setq st (car (cdr item)))
   )
  )
 (message st)
 (c-set-style st)
 st
 )


(global-set-key "\C-ccs" '(lambda ()
                         (interactive)
                         (message "Setting C style")
                         (set-style-in-dirs (buffer-file-name) "gnu")
                         ))


(add-hook 'c-mode-hook (lambda () (interactive)
                         (message "Setting C style")
                         (set-style-in-dirs (buffer-file-name) "gnu")
                         ))
(add-hook 'c++-mode-hook (lambda () (interactive)
                         (message "Setting C style")
                         (set-style-in-dirs (buffer-file-name) "gnu")
                         ))

