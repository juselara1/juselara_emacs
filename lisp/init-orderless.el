(defun setup-orderless ()
  (use-package orderless
    :custom
    (completion-styles '(orderless))
    (completion-category-defaults nil)
    (completion-category-overrides
     '((file (styles basic-remote orderless)))
     )
    )
  )

(setup-orderless)
