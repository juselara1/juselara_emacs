(load-file "lisp/utils.el")

(defun org-general-config ()
  "Define general configuration for orgmode."
  (org-indent-mode)
  (multi-setq :vars '(evil-auto-indent org-adapt-indentation) :value nil)
  )

(defun org-font-config ()
  "Setup different fonts used in org"
  (dolist (face '((org-level-1 . 1.2)
		  (org-level-2 . 1.1)
		  (org-level-3 . 1.05)
		  (org-level-4 . 1.0)
		  (org-level-5 . 1.1)
		  (org-level-6 . 1.1)
		  (org-level-7 . 1.1)
		  (org-level-8 . 1.1)
		  )
		)
    (set-face-attribute (car face) nil :font "Monaspace Neon" :weight 'regular :height (cdr face)))
  )

(defun setup-orgmode ()
  (use-package org
    :hook (org-mode . org-general-config)
    :config
    (setq org-ellipsis " ▾" org-hide-emphasis-markers t)
    (org-font-config)
    )
  )

(setup-orgmode)

(defhydra hydra-org (:timeout 2)
  "Orgmode utilities"
  ("il" org-insert-link)
  ("it" org-table-create)
  ("ir" org-table-insert-row)
  ("ic" org-table-insert-column)
  ("ih" org-table-insert-hline)
  ("tc" org-table-toggle-checkbox)
  ("ol" org-open-at-point)
  ("h" org-up-element)
  ("l" org-down-element)
  ("j" org-forward-element)
  ("k" org-backward-element)
  ("q" nil "Done" :exit t)
  )
(rune/leader-keys
  "o" '(hydra-org/body :which-key "Orgmode")
  )
