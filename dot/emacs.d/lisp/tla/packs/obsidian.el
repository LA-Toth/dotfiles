(use-package hydra)
(use-package obsidian
  :ensure nil
  :load-path "~/.emacs.d/packages/"

  :demand t
  :config
  (obsidian-specify-path "~/MY_OBSIDIAN_FOLDER")
  (global-obsidian-mode t)
  :custom
  ;; This directory will be used for `obsidian-capture' if set.
  (obsidian-inbox-directory "000 Inbox")
  (obsidian-wiki-link-create-file-in-inbox nil)
  (obsidian-daily-notes-directory "002 Daily Notes")
  (obsidian-templates-directory "Templates")
  :bind (:map obsidian-mode-map
	      ;; Replace C-c C-o with Obsidian.el's implementation. It's ok to use another key binding.
	      ("C-c C-o" . obsidian-follow-link-at-point)
	      ;; Jump to backlinks
	      ("C-c C-b" . obsidian-backlink-jump)
	      ;; If you prefer you can use `obsidian-insert-link'
	      ("C-c C-l" . obsidian-insert-wikilink)
        ;; Templates
        ("C-c C-t" . obsidian-apply-template)
        ))

(global-set-key (kbd "C-c o j") 'obsidian-jump)
(global-set-key (kbd "C-c o c") 'obsidian-capture)
(global-set-key (kbd "C-c o n") 'obsidian-daily-note)
(provide 'tla/packs/obsidian)
