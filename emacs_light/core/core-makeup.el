;; Copyright (c) 2017 Hüseyin Zengin
;;
;; Author: Hüseyin Zengin <hzenginx@gmail.com>
;; URL: https://github.com/hzenginx/spacelite
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun spacelite/init-makeup ()
  ;; hide column numbers
  (setq column-number-mode 't)

  ;; always hightlight current line
  (global-hl-line-mode t)

  ;; stop blinking!!
  (blink-cursor-mode 0)

  ;; y or n is enough for me
  (fset 'yes-or-no-p 'y-or-n-p)

  ;; draw underline lower
  (setq x-underline-at-descent-line t)

  ;; hide ui elements
  (setq inhibit-startup-message t)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (toggle-scroll-bar -1)

  ;; font
  (set-face-attribute 'default nil
		      :family config-font-family
		      :height config-font-height)
  (setq-default fill-column 110)
  (setq-default tab-width 2)

  ;; theme
  ;; This required some fonts to be downloaded, run `all-the-icons-install-fonts` manually
  (use-package
    zerodark-theme
    :config (zerodark-setup-modeline-format))

  ;; window numbers
  (use-package
    winum)
  (winum-mode)
  (setq winum-auto-setup-mode-line nil)

  ;; evil-anzu for improving search result rendering
  (use-package
    evil-anzu
    :config (global-anzu-mode +1)
    :diminish 'anzu-mode)

  ;; relative line numbers + centered mode FTW
  (use-package
    linum-relative
    :diminish 'linum-relative-mode
    :init (setq linum-relative-current-symbol "")
    :config (linum-relative-global-mode))
  (use-package
    centered-cursor-mode
    :config (global-centered-cursor-mode)
    :diminish 'centered-cursor-mode)

  ;; Column settings
  (use-package
    column-marker
    :ensure t
    :init (add-hook 'prog-mode-hook 'column-marker-mode)
  )

  ;; Highlighting of the indentation
  (use-package
    highlight-indentation
    :ensure t
    :init
    (add-hook 'prog-mode-hook 'highlight-indentation-mode)
    (add-hook 'prog-mode-hook 'highlight-indentation-current-column-mode)
   )
   ;; (set-face-background 'highlight-indentation-face "#e3e3d3")
   ;; (set-face-background 'highlight-indentation-current-column-face "#c3b3b3")

  ;; parenthesis
  (show-paren-mode 1)
  (use-package
    highlight-parentheses
    :diminish 'highlight-parentheses-mode
    :config (add-hook 'prog-mode-hook #'highlight-parentheses-mode)))

(provide 'core-makeup)
