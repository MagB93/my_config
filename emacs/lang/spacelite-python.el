;; Configuration for the python mode
(defun spacelite/init-python ()
  ;; The package is "python" but the mode is "python-mode":
    (use-package python
    :mode ("\\.py\\'" . python-mode)
    :interpreter ("python" . python-mode)
    )
    )

(provide 'spacelite-python)
