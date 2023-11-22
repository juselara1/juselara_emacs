(defun setup-eshell-prompt ()
  (use-package eshell-prompt-extras)
  (with-eval-after-load "esh-opt"
    (autoload 'epe-theme-lambda "eshell-prompt-extras")
    (setq eshell-highlight-prompt nil
	  eshell-prompt-function 'epe-theme-lambda))
  )

(setup-eshell-prompt)
