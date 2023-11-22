(load-file "lisp/utils.el")

(defun setup-dashboard ()
  "Setup dashboard"
  (use-package dashboard
    :init
    (multi-setq :vars '(dashboard-center-content dashboard-set-file-icons) :value t)
    (setq dashboard-items '(
			    (recents . 5)
			    (projects . 5)
			    ))
    (setq dashboard-banner-logo-title "So basically, We're just monky... 🐒")
    (setq dashboard-startup-banner (concat (handle-os-path) "/juselara_emacs/image/logo.png"))
    :config
    (dashboard-open)
    ))

(setup-dashboard)
