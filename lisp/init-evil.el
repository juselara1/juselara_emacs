(load-file "lisp/utils.el")

(defun evil-config ()
  (use-package evil
    :init
    (multi-setq :vars '(evil-want-integration evil-want-C-u-scroll) :value t)
    (multi-setq :vars '(evil-want-keybinding evil-want-C-i-jump) :value nil)
    :config
    (evil-mode t)
    (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)

    (evil-global-set-key 'motion "j" 'evil-next-visual-line)
    (evil-global-set-key 'motion "k" 'evil-previous-visual-line)

    (evil-set-initial-state 'messages-buffer-mode 'normal)
    (evil-set-initial-state 'dashboard-mode 'normal)
    )
  )

(defun evil-collection-config ()
  (use-package evil-collection
    :after evil
    :config
    (evil-collection-init)
    )
  )

(defun setup-evil ()
  (evil-config)
  (evil-collection-config)
  )

(setup-evil)
