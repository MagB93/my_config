;; Config for the lisp mode
(defun spacelite/init-lisp ()
  (use-package lisp-mode
    :defer t
    :ensure nil
    :commands emacs-lisp-mode
  )
)

(provide 'spacelite-lisp)
