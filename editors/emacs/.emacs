(setq user-full-name "Julio Pastor"
      user-mail-address "hi.pazthor@gmail.com")

(menu-bar-mode -1)

(global-hl-line-mode t)

(set-face-background 'hl-line "#3e4446")

(setq make-backup-files nil)
(setq auto-save-default t )


;; tabs off by default
(setq-default ident-tabs-mode nil)

;; title
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
	    '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; Answering just 'y' or 'n' will do
(defalias 'yes-or-no-p 'y-or-n-p)

(show-paren-mode t)

;; packages

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

;; hice algo como sobre require package porque me daba un
;; ' require-pacagke- no existe  o algo asi jaja
;; control e  control x control e
;; y no sde que hara jaja 


;; que significa la t?

(package-install 'use-package)
(package-refresh-contents)

;; que hace esto? que es el paquete paredit?
(use-package paredit :ensure t)

;; que hace esto? , que es smex? 
(use-package smex
	     :ensure t
	     :config
	     (smex-initialize)
	     (glogal-set-key (kbd "M-x") 'smex)
	     (global-set-key (kbd "M-x") 'smex-major-mode-commands))





;; que es lsp mode? 
(use-package lsp-mode
  :ensure t
  :config
  (setq lsp-headerline-breadcrumb-enable nil))



(use-package lsp-ui :ensure t)

(use-package flycheck :ensure t)

(use-package company :ensure t)

(use-package dap-mode :ensure t)

(use-package yasnippet :ensure t)

(with-eval-after-load 'lsp-mode
  (require 'dap-chrome)
  (setq lsp-modeline-diagnostics-enable t)
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (yas-global-mode))


;; que es dash y ivy
(use-package dash :ensure t)

(use-package ivy :ensure t)



;; que es vertical mode:? 
(use-package ido-vertical-mode
  :ensure t
  :init
  (require 'ido)
  (ido-mode t)
  (setq ido-enable-prefix nil
        ido-enable-flex-matching t
        ido-case-fold nil
        ido-auto-merge-work-directories-length -1
        ido-create-new-buffer 'always
        ido-use-filename-at-point nil
        ido-max-prospects 10)

  (require 'ido-vertical-mode)
  (ido-vertical-mode)

  (require 'dash)
;; que hace esta función
  (defun my/ido-go-straight-home ()
    (interactive)
    (cond
     ((looking-back "~/") (insert "Developer/"))
     ((looking-back "/") (insert "~/"))
     (:else (call-interactively 'self-insert-command))))

  ;; que hace setup ido ? 
(defun my/setup-ido ()
    ;; Go straight home
    (define-key ido-file-completion-map (kbd "~") 'my/ido-go-straight-home)
    (define-key ido-file-completion-map (kbd "C-~") 'my/ido-go-straight-home))

  (add-hook 'ido-setup-hook 'my/setup-ido)
  (add-to-list 'ido-ignore-directories "node_modules"))

(use-package elfeed
  :ensure t
  :config
  (setq elfeed-feeds
        '("https://planet.emacslife.com/atom.xml"
          "https://sachachua.com/blog/feed/"
          "https://www.macstories.net/feed/"
          "http://karpathy.github.io/feed.xml")))



(use-package projectile
  :ensure t
  :config

  (setq projectile-enable-caching t)
  (setq projectile-completion-system 'ivy)
  (setq projectile-indexing-method 'alien)
  (projectile-mode))

(use-package hydra :ensure t)

(use-package json-mode :ensure t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))


;;que hace magit?
(use-package magit
  :bind ("C-x g" . magit-status)
  :ensure t
  :config
  (add-hook 'after-save-hook 'magit-after-save-refresh-status))


;; instalacion mode para marckdon, yamel que es pug mode? y restclient?
(use-package markdown-mode :ensure t)

(use-package yaml-mode :ensure t)

(use-package pug-mode :ensure t)

(use-package restclient :ensure t)

;;; asignando una global asignación  cd cc p a buscar proyectil
(global-set-key (kbd "C-c p") 'projectile-find-file)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(lsp-ui company company-mode use-package ivy typescript-mode rjsx-mode tool-bar-mode nil)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
