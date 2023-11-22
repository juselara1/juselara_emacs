(defun setup-codecells ()
  (use-package code-cells)
  )

(defhydra hydra-code-cells (:timeout 2)
  "Code cells"
  ("m" code-cells-mode)
  ("k" code-cells-backward-cell)
  ("j" code-cells-forward-cell)
  ("K" code-cells-move-cell-up)
  ("J" code-cells-move-cell-down)
  ("q" nil "Done" :exit t)
  )

(rune/leader-keys
  "c" '(hydra-code-cells/body :which-key "Code cells")
  )
