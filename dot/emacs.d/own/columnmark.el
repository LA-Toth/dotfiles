(load "~/.emacs.d/downloaded/column-marker.el")

(add-hook 'c-mode-hook (lambda () (interactive) (column-marker-1 120)))
(add-hook 'c++-mode-hook (lambda () (interactive) (column-marker-1 120)))

