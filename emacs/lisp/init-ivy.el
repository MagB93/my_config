 (use-package ivy
      :ensure t
      :diminish ivy-mode
      :config
      (ivy-mode t))

 (use-package counsel
    :ensure t
    ; :bind (("M-x" . counsel-M-x))
    :chords (("yy" . counsel-yank-pop)))

(use-package swiper
    :ensure t
    ; :bind (("M-s" . swiper))
    )

(use-package ivy-hydra
    :ensure t)

(provide 'init-ivy)
