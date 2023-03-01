;;; packages --- Setup
;;; Commentary:
;;; Code:
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))
(require 'package)
(package-initialize)

(setq my-packages
      '(ac-haskell-process
	haskell-mode
	rainbow-identifiers
	evil
	vterm
	lsp-mode
	rainbow-delimiters
	zenburn-theme
	smartparens
	helm
	flycheck-clangcheck
	flycheck-clang-tidy
	flycheck-clang-analyzer
	company))

(when (not package-archive-contents)
  (package-refresh-contents))

(dolist (pkg my-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(zenburn))
 '(custom-safe-themes
   '("2dc03dfb67fbcb7d9c487522c29b7582da20766c9998aaad5e5b63b5c27eec3f" "dea4b7d43d646aa06a4f705a58f874ec706f896c25993fcf73de406e27dc65ba" default))
 '(package-selected-packages
   '(julia-snail lsp-python-ms lsp-julia auto-complete-clang ac-haskell-process haskell-mode rainbow-identifiers evil vterm flycheck-julia lsp-mode rainbow-delimiters zenburn-theme smartparens helm flycheck-clangcheck flycheck-clang-tidy flycheck-clang-analyzer company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "IBM Plex Mono" :foundry "IBM " :slant normal :weight normal :height 108 :width normal)))))

;; Startup Settings
(setq inhibit-startup-message t)
(setq default-directory "~/Gits/")
(tool-bar-mode -1) ;; Clean all bars from window
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode t)
(global-display-line-numbers-mode t)
(global-tab-line-mode t)

;; Highlight lines
(global-hl-line-mode t)
(show-paren-mode t)

;; Package Configs
(windmove-default-keybindings)
(global-auto-revert-mode)
(global-flycheck-mode t)
(smartparens-global-mode t)
(helm-mode t)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'rainbow-identifiers-mode)
(evil-mode t)

;; Config for the CompAny(completion any) package
(global-company-mode t)
(define-key company-active-map (kbd "C-n")
  'company-select-next)
(define-key company-active-map (kbd "C-p")
  'company-select-previous)
(setq company-idle-delay 0.0)

;; Auto-Inserting templates as per file name.
(auto-insert-mode)
(setq auto-insert-directory "~/.emacs.d/templates/")
(setq auto-insert-query nil)
(define-auto-insert "\.cpp" "~/.emacs.d/templates/leetcode.cpp")

;; Julia configs
(setenv "JULIA_NUM_THREADS" "4")
(add-hook 'julia-mode-hook #'julia-snail-mode)

;; Haskell config
(add-hook 'haskell-mode-hook 'turn-on-haskell-unicode-input-method)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(provide 'init)
;;; init.el ends here
