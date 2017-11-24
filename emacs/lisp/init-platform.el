;;; init-platform --- Platform-specific settings
;;; Commentary:

;;; Code:
(require 'init-fonts)

;; This must run after window setup or it seems to have no effect.
(add-hook 'window-setup-hook
          (lambda ()
            (when (memq window-system '(mac ns))
              (add-to-list 'default-frame-alist '(font . "Source Code Pro"))
              (set-face-attribute 'default nil :font "Source Code Pro" :weight 'light)
              (sanityinc/set-frame-font-size 14)
              (define-key global-map (kbd "<s-return>") 'toggle-frame-fullscreen))

            (when (memq window-system '(x))
              (add-to-list 'default-frame-alist '(font . "Source Code Pro"))
              (set-face-attribute 'default nil :font "Source Code Pro")
              (sanityinc/set-frame-font-size 16))

            (when (fboundp 'powerline-reset)
              (powerline-reset))))

(provide 'init-platform)
;;; init-platform.el ends here
