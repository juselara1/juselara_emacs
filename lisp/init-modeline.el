(defun setup-modeline ()
  "Setup modeline"
  (use-package doom-modeline
    :init
    (doom-modeline-mode t)
    :config
    (setq doom-modeline-icon nil))
  )

(setup-modeline)
