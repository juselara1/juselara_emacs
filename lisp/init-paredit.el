(defun setup-paredit ()
  (use-package paredit
    :hook (prog-mode . enable-paredit-mode)
    )
  )

(setup-paredit)

(defhydra hydra-paredit (:timeout 10)
    "Paredit"
    ("a(" paredit-wrap-round)
    ("a[" paredit-wrap-square)
    ("a{" paredit-wrap-curly)
    ("a<" paredit-wrap-angle)
    ("a\"" paredit-meta-doublequote)
    ("d" paredit-splice-sexp)
    )

(rune/leader-keys
    "e" '(hydra-paredit/body :which-key "Paredit")
    )
