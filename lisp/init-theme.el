(defun setup-theme ()
  "Setup theme"
  (use-package gruvbox-theme)
  :config 
  (load-theme 'gruvbox-dark-hard t)
  )

(setup-theme)
