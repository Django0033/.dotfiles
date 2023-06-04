(setq inhibit-startup-message t)

(scroll-bar-mode -1) ; Disable scroll bar
(tool-bar-mode -1) ; Disable tool bar
(tooltip-mode -1) ; Disable tooltips
(set-fringe-mode 9) ; Add some margin

(menu-bar-mode -1) ; Disable menu bar

;; Set up the visible bell
(setq visible-bell t)

(set-face-attribute 'default nil :font "FiraCode Nerd Font")
; (set-frame-font "FiraCode Nerd Font" nil t)


(column-number-mode)
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; Disable line numbers for some modes
(dolist (mode '(term-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; Initialize package source
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package counsel
  :bind (("M-x" . counsel-M-x)
	 ("C-x b" . counsel-ibuffer)
	 :map minibuffer-local-map
	 ("C-r" . 'counsel-minibuffer-history)))

(use-package swiper)

(use-package ivy
  :diminish
  :bind (;("C-s" . swiper)
	 :map ivy-minibuffer-map
	 ("TAB" . ivy-alt-done)
	 :map ivy-switch-buffer-map
	 ("C-d" . ivy-switch-buffer-kill)
	 :map ivy-reverse-i-search-map
	 ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode))


(use-package ivy-rich
  :init (ivy-rich-mode 1)
  :config (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line))

(use-package nerd-icons
  :custom
  (nerd-icons-font-family "Symbols Nerd Font Mono)")
  )

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15))
  :config
  (setq doom-modeline-icon 1)
  )

(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t
	)
  ;; (load-theme 'doom-one t)
  (load-theme 'doom-dracula t)
  ;; (load-theme 'doom-gruvbox t)
  ;; (load-theme 'doom-laserwave t)
  (doom-themes-visual-bell-config)
  )

 
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package which-key
  :init (which-key-mode 1)
  :config
  (setq which-key-idle-delay 0.27))

(use-package helpful
  :ensure t
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key)
  )

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner 'logo)
  (setq dashboard-center-content t)
  (setq dashboard-show-shorcuts t)
 )

(use-package avy)

(use-package yasnippet)
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;; (use-package auto-complete
;;   :init
;;   (global-auto-complete-mode t)
;;   :bind
;;   (:map ac-mode-map
;;   ("TAB" . ac-next)
;;   ("S-TAB" . ac-previous)
;;   ("S-RET" . ac-expand)))

(use-package company)
(add-hook 'after-init-hook 'global-company-mode)

(use-package magit
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

(use-package undo-tree)
(use-package undo-fu)
(use-package goto-chg)
(use-package evil
  :init 
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode 1)
  (evil-global-set-key 'motion "j" 'evil-next-visual-line)
  (evil-global-set-key 'motion "k" 'evil-previous-visual-line)
  (evil-global-set-key 'normal "gcc" 'comment-line)
  (evil-global-set-key 'visual "gc" 'comment-region))

(use-package evil-collection
  :config
  (evil-collection-init))

(use-package general
  :config
  (general-define-key
   "<escape>" 'keyboard-escape-quit
   "C-s" 'save-buffer
   :states 'normal
   "C-j" 'evil-window-down
   "C-k" 'evil-window-up
   "s" 'avy-goto-char-2
   "f" 'avy-goto-char-in-line
   :states 'visual
   "f" 'avy-goto-char-in-line)
  (general-create-definer my-leader
    :prefix "SPC")
  (general-create-definer my-local-leader
    :prefix ",")
  (my-leader
   :states 'normal
   :keymaps 'override
   "b" '(:ignore t :which-key "Buffer")
   "bd" '(evil-delete-buffer :which-key "Buffer Delete")
   "bh" '(split-window-below :which-key "Buffer Horizontal Split")
   "c" '(:ignore t :which-key "Code")
   "ce" '(eval-last-sexp :which-key "Code Evaluate")
   "f" '(:ignore t :which-key "File")
   "ff" '(find-file :which-key "File Find")
   "g" '(:ignore t :which-key "Git")
   "gs" '(magit-status :which-key "Git Status")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644" "944d52450c57b7cbba08f9b3d08095eb7a5541b0ecfb3a0a9ecd4a18f3c28948" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "f681100b27d783fefc3b62f44f84eb7fa0ce73ec183ebea5903df506eb314077" default))
 '(package-selected-packages
   '(evil-magit magit yasnippet company avy general auto-complete doom-themes helpful counsel ivy-rich which-key rainbow-delimiters evil goto-chg undo-fu undo-tree doom-modeline use-package swiper)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
