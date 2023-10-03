;; DISABLE MENU AT THE TOP
(setq inhibit-startup-screen t)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; DISABLE ANNOYING NOISES
(setq ring-bell-function 'ignore)

;; CTAGS
(setq path-to-ctags "/usr/bin/ctags-exuberant")

;; PACKAGE MANAGEMENT
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; LOAD NON-ELPA PACKAGES
(load "~/.emacs.d/odin-mode.el")
;; (load "~/.emacs.d/vlang-mode.el")

;; COMMON LISP MODE
(require 'slime)
(setq inferior-lisp-program "sbcl")

;; EXWM (UNUSED)
;; (require 'exwm)
;; (require 'exwm-config)
;; (exwm-config-example)
;; (require 'exwm-randr)
;; (setq exwm-randr-workspace-output-plist '(0 "DP-2"))
;; (add-hook 'exwm-randr-screen-change-hook
;; 	  (lambda ()
;; 	    (start-process-shell-command
;; 	     "xrandr" nil "xrandr --output DP-2 --left-of DP-4 --auto")))
;; (exwm-randr-enable)

;; IDO - better completions on commands
(require 'ido)
(ido-mode t)

;; SMEX - better completion on M-x
(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; WHICH-KEY - show keys (im not good)
(require 'which-key)
(which-key-mode)

;; COMMAND HISTORY
(setq history-length 20)
(savehist-mode t)

;; MAGIT
(require 'magit)

;; CEDET
(semantic-mode t)
(require 'semantic/ia)
(require 'semantic/bovine/gcc)

;; DISPLAY LINE AT 80 COLS
(setq-default fill-column 80)
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)

;; MOVE BACKUPS TO THIS FOLDER (SO THEY DONT CLUTTER CWD)
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)

;; CUSTOM (DONT TOUCH)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruvbox-dark-medium))
 '(custom-safe-themes
   '("046a2b81d13afddae309930ef85d458c4f5d278a69448e5a5261a5c78598e012" default))
 '(package-selected-packages
   '(d-mode slime zig-mode multiple-cursors helm v-mode glsl-mode emmet-mode zencoding-mode markdown-mode magit which-key gruvbox-theme exwm smex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
