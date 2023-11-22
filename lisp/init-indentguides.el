(defun setup-indentguides ()
  (use-package highlight-indent-guides
    :hook (prog-mode . highlight-indent-guides-mode)
    :config
    (setq highlight-indent-guides-method 'character)
    )
  )

(setup-indentguides)
