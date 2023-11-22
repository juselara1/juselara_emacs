(defun setup-eshell-z ()
  (use-package eshell-z
    :hook
    (eshell-mode . (lambda () (require 'eshell-z)))
    )
  )
  
(setup-eshell-z)
