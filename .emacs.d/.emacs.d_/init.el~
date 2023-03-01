;; Random Stuff
(setq default-directory "~/Gits/")

;; Highlight lines
(global-hl-line-mode t)

;; Startup-screen disable
(setq inhibit-startup-message t)

;; Clean all bars from window
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(package-selected-packages '(spacemacs-theme)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "IBM Plex Mono" :foundry "IBM " :slant normal :weight semi-bold :height 123 :width normal)))))

;; Setting theme
(load-theme 'spacemacs-dark)

;; Package: smartparens
(require 'smartparens-config)
(show-smartparens-global-mode 1)
(smartparens-global-mode 1)

;; Config for the CompAny(completion any) package
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0.0)

;; Config for Helm
(require 'helm)
(require 'helm-config)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal

(setq helm-autoresize-max-height 0)
(setq helm-autoresize-min-height 20)
(helm-autoresize-mode 1)

(helm-mode t)

;; Config for Flycheck package
(global-flycheck-mode t)

(windmove-default-keybindings)
