(load-file "lisp/utils.el")

(defun setup-bash-vars ()
  (multi-setq :vars '(sh-basic-offset sh-indentation) :value 4)
  )

(defun setup-lint-bash ()
  (use-package flycheck
    :hook
    (sh-mode . flycheck-mode)
    )
  )

(defun setup-lsp-bash ()
  (use-package lsp-mode
    :after lsp-mode
    :commands lsp
    :hook
    (sh-mode . lsp)
    )
  )

(setup-bash-vars)
(setup-lint-bash)
(setup-lsp-bash)
