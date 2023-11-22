;; setup remotes
(require 'package)
(setq
 package-archives '(
		    ("melpa" . "https://melpa.org/packages/")
		    ("elpa" . "https://elpa.gnu.org/packages")))

;; Wait until package is initialized
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents)
  )

;; Install use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package)
  )

;; Include use-package
(require 'use-package)
(setq use-package-always-ensure t)

;; Setup straight
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'use-package)

;; Install dash utilities
(use-package dash
  :config
  (global-dash-fontify-mode)
  )
