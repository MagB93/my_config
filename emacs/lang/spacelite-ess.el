(defun spacelite/init-ess ()
  (use-package ess
    :ensure t
    :init (require 'ess-site)
    )
  )

(provide 'spacelite-ess)
