(defun setup-lsp-pyright ()
  (use-package lsp-pyright
    :after lsp-mode
    :hook
    (python-mode . (lambda () (require 'lsp-pyright) (lsp)))))

(defun setup-lint-python ()
  (require 'lsp-diagnostics)
  (lsp-diagnostics-flycheck-enable)
  (use-package flycheck
    :hook
    (python-mode . (lambda ()

		     (flycheck-mode)
		     (flycheck-add-next-checker 'python-pyright 'lsp)
		     ))
  ))

(setup-lsp-pyright)
(setup-lint-python)
