(load-file "lisp/utils.el")
(defun enable-disable-globals ()
  "Enables or disables global config variables"
  (let ((to-enable '(inhibit-startup-message
		     visible-bell
		     ))
	(to-disable '(
		      make-backup-files
		      auto-save-default
		      evil-want-keybinding
		      ))
	)
    (multi-setq :vars to-enable :value t)
    (multi-setq :vars to-disable :value nil)
    )
  (setq display-line-numbers-type 'relative)
  )

(defun enable-disable-modes ()
  "Enables or disables default modes"
  (let ((to-enable '(column-number-mode
		     global-display-line-numbers-mode
		     global-hl-line-mode
		     ))
	(to-disable '(scroll-bar-mode
		      tool-bar-mode
		      tooltip-mode
		      menu-bar-mode
		      )))
    (mapcar (lambda (mode) (eval `(,(print mode) t))) to-enable)
    (mapcar (lambda (mode) (eval `(,(print mode) -1))) to-disable)
    ))

(defun setup-fonts ()
  "Setup the font"
  (set-face-attribute 'default nil :font "Monaspace Neon" :height 120)
  (use-package all-the-icons)
  )



(enable-disable-globals)
(enable-disable-modes)
(setup-fonts)
