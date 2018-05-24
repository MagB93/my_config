;; add MELPA package server
(package-initialize)
(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; (add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))

(setq package-enable-at-startup nil)

;; if not yet installed, install package use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile (require 'use-package))

;; load org package and our emacs-config.org file
(require 'org)
(org-babel-load-file "~/.emacs.d/emacs-config.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#d2ceda" "#f2241f" "#67b11d" "#b1951d" "#3a81c3" "#a31db1" "#21b8c7" "#655370"])
 '(custom-enabled-themes nil)
 '(haskell-font-lock-symbols t)
 '(haskell-font-lock-symbols-alist
   (and
    (fboundp 'decode-char)
    (list
     (cons "&&"
           (decode-char 'ucs 57600))
     (cons "***"
           (decode-char 'ucs 57601))
     (cons "*>"
           (decode-char 'ucs 57602))
     (cons "\\\\"
           (decode-char 'ucs 57603))
     (cons "||"
           (decode-char 'ucs 57604))
     (cons "|>"
           (decode-char 'ucs 57605))
     (cons "::"
           (decode-char 'ucs 57606))
     (cons "=="
           (decode-char 'ucs 57607))
     (cons "==="
           (decode-char 'ucs 57608))
     (cons "==>"
           (decode-char 'ucs 57609))
     (cons "=>"
           (decode-char 'ucs 57610))
     (cons "=<<"
           (decode-char 'ucs 57611))
     (cons "!!"
           (decode-char 'ucs 57612))
     (cons ">>"
           (decode-char 'ucs 57613))
     (cons ">>="
           (decode-char 'ucs 57614))
     (cons ">>>"
           (decode-char 'ucs 57615))
     (cons ">>-"
           (decode-char 'ucs 57616))
     (cons ">-"
           (decode-char 'ucs 57617))
     (cons "->"
           (decode-char 'ucs 57618))
     (cons "-<"
           (decode-char 'ucs 57619))
     (cons "-<<"
           (decode-char 'ucs 57620))
     (cons "<*"
           (decode-char 'ucs 57621))
     (cons "<*>"
           (decode-char 'ucs 57622))
     (cons "<|"
           (decode-char 'ucs 57623))
     (cons "<|>"
           (decode-char 'ucs 57624))
     (cons "<$>"
           (decode-char 'ucs 57625))
     (cons "<>"
           (decode-char 'ucs 57626))
     (cons "<-"
           (decode-char 'ucs 57627))
     (cons "<<"
           (decode-char 'ucs 57628))
     (cons "<<<"
           (decode-char 'ucs 57629))
     (cons "<+>"
           (decode-char 'ucs 57630))
     (cons ".."
           (decode-char 'ucs 57631))
     (cons "..."
           (decode-char 'ucs 57632))
     (cons "++"
           (decode-char 'ucs 57633))
     (cons "+++"
           (decode-char 'ucs 57634))
     (cons "/="
           (decode-char 'ucs 57635)))))
 '(haskell-stylish-on-save t)
 '(hl-sexp-background-color "#efebe9")
 '(inhibit-startup-screen t)
 '(package-selected-packages '(ess 0blayout cquery counsel evil use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
