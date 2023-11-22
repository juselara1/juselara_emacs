(defun setup-textobj ()
  (use-package evil-textobj-tree-sitter
    :config
    (define-key evil-outer-text-objects-map "fn" (evil-textobj-tree-sitter-get-textobj "function.outer"))
    (define-key evil-inner-text-objects-map "fn" (evil-textobj-tree-sitter-get-textobj "function.inner"))
    (define-key evil-outer-text-objects-map "cl" (evil-textobj-tree-sitter-get-textobj "class.outer"))
    (define-key evil-inner-text-objects-map "cl" (evil-textobj-tree-sitter-get-textobj "class.inner"))
    )
  )
(setup-textobj)
