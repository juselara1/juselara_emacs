(load-file "lisp/utils.el")

(defun setup-projectile ()
  "Setups projectile."
  (use-package projectile
    :diminish
    :config (projectile-mode +1)
    :init
    (let ((path (handle-os-path)))
      (when (file-directory-p path)
	(setq projectile-project-search-path `(,(print path)))
	)
      (setq projectile-switch-project-action #'projectile-dired)
      )
    )
  )

(setup-projectile)

;; keybindings
(defhydra hydra-projectile (:timeout 10)
  "Hydra to handle the different projectile functions"
  ("s" projectile-switch-project)
  ("a" projectile-add-known-project)
  ("d" projectile-clear-known-projects)
  ("f" projectile-find-file)
  ("d" projectile-find-dir)
  ("r" projectile-discover-projects-in-search-path)
  ("q" nil "Done" :exit t)
  )
(rune/leader-keys
  "p" '(hydra-projectile/body :which-key "Projectile")
  )
