(defun org-tempo-config ()
  "Setup abbreviations for code blocks in orgmode"
  (require 'org-tempo)
  (let ((abbrs '(("sh" . "src shell")
		 ("el" . "src emacs-lisp")
		 ("py" . "src python")
		 ("un" . "src")
		 )))
    (mapcar (lambda (abbr) (add-to-list 'org-structure-template-alist abbr)) abbrs)
    )
  )

(defun org-babel-config ()
  (setq org-confirm-babel-evaluate nil)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (python . t)
     (emacs-lisp . t)
     )))

(defun setup-orgbabel ()
  (org-tempo-config)
  (org-babel-config)
  )

(setup-orgbabel)
