;; Config for the julia-mode
(defun spacelite/init-julia ()
    (add-to-list 'load-path "~/opt/emacs_melpa/lsp-mode")
    (add-to-list 'load-path "~/opt/emacs_melpa/lsp-julia")
    (with-eval-after-load 'lsp-mode
	(require 'lsp-flycheck))
    (require 'lsp-julia)
    (require 'lsp-mode)
    (add-hook 'ess-julia-mode-hook #'lsp-mode)
)

(provide 'spacelite-julia)
