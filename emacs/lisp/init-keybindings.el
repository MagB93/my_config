 (use-package which-key
    :ensure t
    :diminish which-key-mode
    :config
    (add-hook 'after-init-hook 'which-key-mode))

(provide 'init-keybindings)
