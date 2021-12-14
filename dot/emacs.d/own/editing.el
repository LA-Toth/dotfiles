(defun copy-line (&optional arg)
  "Do a kill-line but copy rather than kill.  This function directly calls
kill-line, so see documentation of kill-line for how to use it including prefix
argument and relevant variables.  This function works by temporarily making the
buffer read-only."
  (interactive "P")
  (let ((buffer-read-only t)
        (kill-read-only-ok t))
    (kill-line arg)))
;; optional key binding
(global-set-key "\C-c\C-k1" 'copy-line)


(defun avi-kill-line-save (&optional arg)
  "Copy to the kill ring from point to the end of the current line.
With a prefix argument, copy that many lines from point. Negative
arguments copy lines backward. With zero argument, copies the
text before point to the beginning of the current line."
  (interactive "p")
  (save-excursion
    (copy-region-as-kill
     (point)
     (progn (if arg (forward-visible-line arg)
              (end-of-visible-line))
            (point)))))
(global-set-key "\C-c\C-k2" 'avi-kill-line-save)


(defun duplicate-current-line-or-region (arg)
  "Duplicates the current line or region ARG times.
If there's no region, the current line will be duplicated. However, if
there's a region, all lines that region covers will be duplicated."
  (interactive "p")
  (let (beg end (origin (point)))
    (if (and mark-active (> (point) (mark)))
        (exchange-point-and-mark))
    (setq beg (line-beginning-position))
    (if mark-active
        (exchange-point-and-mark))
    (setq end (line-end-position))
    (let ((region (buffer-substring-no-properties beg end)))
      (dotimes (i arg)
        (goto-char end)
        (newline)
        (insert region)
        (setq end (point)))
      (goto-char (+ origin (* (length region) arg) arg)))))

(defun copy-current-line-or-region (arg)
  "Duplicates the current line or region ARG times.
If there's no region, the current line will be duplicated. However, if
there's a region, all lines that region covers will be duplicated."
  (interactive "p")
  (let (beg end (origin (point)))
    (if (and mark-active (> (point) (mark)))
        (exchange-point-and-mark))
    (setq beg (line-beginning-position))
    (if mark-active
        (exchange-point-and-mark))
    (setq end (line-end-position))
    (let ((region (buffer-substring-no-properties beg end)))
       (copy-region-as-kill region))
    ))
(global-set-key "\C-c\C-k3" 'copy-current-line-or-region)


; open a file, process it, save, close it
(defun my-process-file ()
  "process the file at fullpath FPATH ..."
  (interactive (let ((string (read-string "Path: " nil 'fpath))) (list string)))
  (let (mybuffer)
    (setq mybuffer (find-file fpath))
    (goto-char (point-min)) ;; in case buffer already open
    ;; do something
    (mark-whole-buffer)
    (indent-region)
    (save-buffer)
    (kill-buffer mybuffer)))

(global-set-key "\C-c\C-k4" 'my-process-file)
(global-set-key "\C-c\C-k5" 'mark-whole-buffer)

(defun my-indent ()
   ""
   ((interactive "p")
   (mark-whole-buffer)
   (indent-region))
)
(global-set-key "\C-ctxx" 'mark-whole-buffer)
(global-set-key "\C-ctxs" 'indent-region)

