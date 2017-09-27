;; config for org-mode
(defun spacelite/init-org ()
    (use-package org-mode
    :mode "\\.org$"
    :ensure org
    )
    (use-package org-bullets
    :ensure t
    :commands (org-bullets-mode)
    :init (add-hook
	   'org-mode-hook (lambda () (org-bullets-mode 1))))
)

(provide 'spacelite-org)
