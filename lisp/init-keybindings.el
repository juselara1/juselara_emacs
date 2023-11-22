(require 'cl-lib)

(defun setup-hydra ()
  (use-package hydra)
  )

(defun setup-general ()
  (use-package general
    :after evil
    :config
    (general-create-definer rune/leader-keys
      :keymaps '(normal visual emacs)
      :prefix "SPC"
      :non-normal-prefix "C-SPC"
      )
    (general-define-key
     "C-<tab>" 'completion-at-point
     )
    )
  )

(defun setup-keybindings ()
  (setup-hydra)
  (setup-general)
  )

(setup-keybindings)


;; zoom hydra
(defhydra hydra-text-scale (:timeout 2)
  "Zoom in and out"
  ("j" text-scale-increase "in")
  ("k" text-scale-decrease "out")
  ("q" nil "Done" :exit t)
  )

(rune/leader-keys
  "z"  '(hydra-text-scale/body :which-key "Scale text")
  )

;; window resize hydra
(defhydra hydra-resize-win (:timeout 2)
  "Resize windows"
  ("j" evil-window-increase-height)
  ("k" evil-window-decrease-height)
  ("l" evil-window-increase-width)
  ("h" evil-window-decrease-width)
  ("=" balance-windows)
  ("q" nil "Done" :exit t)
  )

(rune/leader-keys
  "r" '(hydra-resize-win/body :which-key "Resize window")
  )

;; Movements in windows
(defhydra hydra-move-win (:timeout 10)
  "Move between windows"
  ("j" evil-window-down)
  ("k" evil-window-up)
  ("h" evil-window-left)
  ("l" evil-window-right)
  ("d" evil-window-delete)
  ("v" evil-window-vsplit)
  ("s" evil-window-split)
  ("q" nil "Done" :exit t)
  )

(rune/leader-keys
  "w" '(hydra-move-win/body :which-key "Move between windows")
  )

;; Spawn shells
(defhydra hydra-shell (:timeout 10)
  "Open shell"
  ("e" eshell)
  ("n" shell)
  ("c" comint-clear-buffer)
  ("q" nil "Done" :exit t)
  )
(rune/leader-keys
  "s" '(hydra-shell/body :which-key "Open shell")
  )
