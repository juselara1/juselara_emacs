(defun setup-treemacs ()
  "Setup treemacs"
  (use-package treemacs
    :config
    (setq treemacs-is-never-other-window t)
    )
  )

(setup-treemacs)


(defhydra hydra-treemacs (:timeout 10)
  "Treemacs commands"
  ("o" treemacs)
  ("a" treemacs-projectile)
  ("r" treemacs-remove-project-from-workspace)
  ("f" treemacs-create-file)
  ("c" treemacs-create-dir)
  ("d" treemacs-delete)
  ("q" nil "Done" :exit t)
  )
(rune/leader-keys
  "t" '(hydra-treemacs/body :which-key "Treemacs")
  )
