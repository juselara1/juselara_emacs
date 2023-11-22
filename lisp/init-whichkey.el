(defun setup-which-key ()
  (use-package which-key
    :init (which-key-mode)
    :diminish which-key-mode
    :config
    (setq which-key-idle-delay 0.1)
    )
  )

(setup-which-key)
