(defun setup-marginalia ()
  (use-package marginalia
    :after vertico
    :custom
    (marginalia-annotators '(marginalia-annotators-heavy marginalia-annotators-light))
    (marginalia-max-relative-age 0)
    (marginalia-align 'right)
    :init
    (marginalia-mode)
    )
  )

(setup-marginalia)
