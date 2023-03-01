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
   '("dea4b7d43d646aa06a4f705a58f874ec706f896c25993fcf73de406e27dc65ba" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(package-selected-packages
   '(zenburn-theme yasnippet spacemacs-theme smartparens helm-company flycheck-clangcheck flycheck-clang-tidy flycheck-clang-analyzer company-c-headers)))
;; '(package-selected-packages '(yasnippet spacemacs-theme)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "IBM Plex Mono" :foundry "IBM " :slant normal :weight semi-bold :height 123 :width normal)))))

;; Setting theme
(load-theme 'zenburn)

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
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(helm-autoresize-mode 1)
(helm-mode t)

(global-flycheck-mode t)

(windmove-default-keybindings)
