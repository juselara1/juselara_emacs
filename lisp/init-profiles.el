(require 'cl-lib)

(defun get-available-profiles ()
  "Returns a list of profiles and the modules they must load"
  '((python-nix . ("init-aspect.el" "init-highlight-tail.el" "init-dashboard.el"
		   "init-modeline.el" "init-theme.el" "init-evil.el"
		   "init-whichkey.el" "init-undotree.el" "init-keybindings.el"
		   "init-projectile.el" "init-treemacs.el" "init-orgmode.el"
		   "init-orgbullets.el" "init-orgbabel.el" "init-direnv.el"
		   "init-docker.el" "init-delimiters.el" "init-nix.el"
		   "init-dockerfile.el" "init-yaml.el" "init-lsp.el"
		   "init-treesitter.el" "init-lsp-python.el" "init-lsp-bash.el"
		   "init-textobj.el" "init-indentguides.el" "init-paredit.el"
		   "init-vertico.el" "init-savehist.el" "init-marginalia.el"
		   "init-orderless.el" "init-company.el" "init-codecells.el"
		   "init-eshell.el" "init-eshell-prompt.el"
		   ))
    (terminal-nix . ("init-aspect.el" "init-modeline.el" "init-dashboard.el"
		     "init-theme.el" "init-evil.el" "init-whichkey.el"
		     "init-undotree.el" "init-keybindings.el" "init-projectile.el"
		     "init-treemacs.el" "init-orgmode.el" "init-orgbullets.el"
		     "init-orgbabel.el" "init-direnv.el" "init-docker.el"
		     "init-delimiters.el" "init-nix.el" "init-dockerfile.el"
		     "init-yaml.el" "init-lsp.el" "init-treesitter.el"
		     "init-lsp-python.el" "init-lsp-bash.el" "init-textobj.el"
		     "init-indentguides.el" "init-paredit.el" "init-vertico.el"
		     "init-savehist.el" "init-marginalia.el" "init-orderless.el"
		     "init-company.el" "init-codecells.el" "init-eshell.el"
		     "init-eshell-prompt.el" "init-eshell-z.el"
		     ))
    (python-win . ("init-aspect.el" "init-highlight-tail.el" "init-dashboard.el"
		   "init-modeline.el" "init-theme.el" "init-evil.el"
		   "init-whichkey.el" "init-undotree.el" "init-keybindings.el"
		   "init-projectile.el" "init-treemacs.el" "init-orgmode.el"
		   "init-orgbullets.el" "init-orgbabel.el" "init-delimiters.el"
		   "init-dockerfile.el" "init-yaml.el" "init-lsp.el"
		   "init-treesitter.el" "init-lsp-python.el" "init-textobj.el"
		   "init-indentguides.el" "init-paredit.el"
		   "init-vertico.el" "init-savehist.el" "init-marginalia.el"
		   "init-orderless.el" "init-company.el" "init-codecells.el"
		   "init-eshell.el" "init-eshell-prompt.el"))))

(defun get-profile-names ()
  "Returns the profile names"
  (mapcar #'car (get-available-profiles)))

(cl-defun profile-exists-p (&key (profile))
  "Validates if the profile exists"
  (let ((profile-names (get-profile-names)))
    (if (member profile profile-names )
	t
      (error (format
	      "The (%s) profile doesn't exist, choose between %s"
	      profile profile-names)))))

(cl-defun get-profile-modules (&key (profile))
  "Loads the modules for the specified profile"
  (profile-exists-p :profile profile)
  (let ((profiles (get-available-profiles)))
    (cdar
     (-filter
      (lambda (x) (string= profile (car x))) profiles))))

(cl-defun load-profile (&key (profile 'python))
  "Loads the modules for a given profile."
  (setq juselara-profile profile)
  (let ((modules (get-profile-modules :profile profile)))
    (mapcar
     #'load-file
     (mapcar (lambda (x) (concat "./lisp/" x)) modules))))
