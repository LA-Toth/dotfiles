;; org-mode and org-roam setup

(use-package magit-section
    :ensure t)

(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory "~/Documents/Notes/Roam/")
  :bind (("C-c n l"   . org-roam)
           ("C-c n f"   . org-roam-find-file)
           ("C-c n d"   . org-roam-dailies-find-date)
           ("C-c n c"   . org-roam-dailies-capture-today)
           ("C-c n C r" . org-roam-dailies-capture-tomorrow)
           ("C-c n t"   . org-roam-dailies-find-today)
           ("C-c n y"   . org-roam-dailies-find-yesterday)
           ("C-c n r"   . org-roam-dailies-find-tomorrow))
    :config     
        (org-roam-setup)
         
         )


(provide 'tla/packs/org)