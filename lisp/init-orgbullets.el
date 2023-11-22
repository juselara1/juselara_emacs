(defun setup-orgbullets ()
  "Setup the bullets for orgmode headings."
  (use-package org-bullets
    :after org
    :hook (org-mode . org-bullets-mode)
    :custom
    (org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●"))
    )
  )

(setup-orgbullets)
