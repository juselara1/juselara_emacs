(defun setup-vertico ()
  (use-package vertico
    :bind (:map vertico-map)
    ("C-j" . vertico-next)
    ("C-k" . vertico-previous)
    ("<tab>" . vertico-insert)
    :custom
    (vertico-cycle t)
    (vertico-count 13)
    (vertico-resize t)
    :init
    (vertico-mode)
    )
  )

(setup-vertico)
