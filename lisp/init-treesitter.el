(defun setup-treesitter ()
  (use-package tree-sitter)
  (use-package tree-sitter-langs
    :init
    (global-tree-sitter-mode)
    :hook
    (python-mode . tree-sitter-hl-mode)
    (emacs-lisp-mode . tree-sitter-hl-mode)
    (lisp-mode . tree-sitter-hl-mode)
    (sh-mode . tree-sitter-hl-mode)
    )
  )

(setup-treesitter)
