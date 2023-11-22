(defun setup-lsp ()
  (use-package lsp-mode
    :commands (lsp lsp-deferred)
    )
  )

(setup-lsp)

(defhydra hydra-lsp (:timeout 2)
  "Lsp actions"
  ("d" flycheck-list-errors)
  ("c" completion-at-point)
  ("q" nil "Done" :exit t)
  )
(rune/leader-keys
  "l" '(hydra-lsp/body :which-key "LSP")
  )
