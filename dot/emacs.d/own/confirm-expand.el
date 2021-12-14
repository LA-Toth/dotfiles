(add-hook 'pre-abbrev-expand-hook 'query-if-not-space)
     
;; This is the function invoked by `pre-abbrev-expand-hook'.
     
;; If the user terminated the abbrev with a space, the function does
;; nothing (that is, it returns so that the abbrev can expand).  If the
;; user entered some other character, this function asks whether
;; expansion should continue.
     
;; If the user answers the prompt with `y', the function returns
;; `nil' (because of the `not' function), but that is
;; acceptable; the return value has no effect on expansion.
     
(defun query-if-not-space ()
  (if (/= ?\  (preceding-char))
      (if (not (y-or-n-p "Do you want to expand this abbrev? "))
	  (error "Not expanding this abbrev"))))
 
