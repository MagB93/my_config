;; Configuration for the cpputils-cmake package

(defun spacelite/init-cpp ()
  (use-package
    srefactor
    :defer t
    :diminish 'semantic-mode
    )
  (require 'cc-mode)
  ;; (define-key c-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
  ;; (define-key c++-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)

)

(provide 'cpp-cmake)
