(defun setup-delimiters ()
  (use-package rainbow-delimiters
    :hook (prog-mode . rainbow-delimiters-mode)
    )
  )

(setup-delimiters)
