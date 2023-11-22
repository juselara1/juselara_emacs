(defun setup-undotree ()
  (use-package undo-tree
    :after evil
    :diminish
    :config
    (evil-set-undo-system 'undo-tree)
    (global-undo-tree-mode 1)
    (setq undo-tree-auto-save-history nil)
    )
  )

(setup-undotree)
