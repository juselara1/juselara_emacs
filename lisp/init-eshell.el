(load-file "lisp/utils.el")

(defun setup-eshell ()
  (use-package eshell
    :init
    (multi-setq :vars '(
			eshell-error-if-no-glob
			eshell-hist-ignoredups
			eshell-save-history-on-exit
			eshell-destroy-buffer-when-process-dies
			eshell-prefer-lisp-functions
			)
		:value t
		)
    (setq eshell-scroll-to-bottom-on-input 'all)
    :hook
    (eshell-mode . (lambda () (mapcar
			       (lambda (com) (add-to-list 'eshell-visual-commands com))
			       '("ssh" "bat" "tail" "top"
				 "btop" "docker attach"
				 "docker exec" "gh repo create"))))
    (eshell-mode . (lambda ()
		     (eshell/alias "gs" "git status $1")
		     (eshell/alias "gd" "git diff")
		     (eshell/alias "gd" "git add $1")
		     (eshell/alias "gc" "git commit -m $1")
		     (eshell/alias "gp" "git push $1 $2")
		     (eshell/alias "gpl" "git pull $1 $2")
		     (eshell/alias "gch" "git checkout $1")
		     (eshell/alias "gl" "git log")
		     (eshell/alias "gr" "cd {git rev-parse --show-toplevel}")
		     ))
    )
  )


(setup-eshell)
