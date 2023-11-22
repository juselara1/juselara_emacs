(require 'cl-lib)
(defun handle-os-path ()
  "Determines the project's path depending on the operating system."
  (if (string= system-type "gnu/linux")
      "~/repositories"
      "~/Documents/repositories/"))

(defun is-terminal-p ()
  "Validates if emacs is used inside a terminal emulator."
  (eq window-system nil)
  )

(cl-defun multi-setq (&key (vars) (value))
  "Assigns the same value to multiple variables"
  (mapcar
   (lambda (var) (eval `(setq ,(print var) value)))
   vars))
