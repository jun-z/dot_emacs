(add-to-list 'default-frame-alist '(width . 80))
(add-to-list 'default-frame-alist '(height . 52))

(tool-bar-mode -1)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq-default truncate-lines t)

(setq mac-command-modifier 'control)
(setq dired-listing-switches "-aloh")

(global-set-key [M-return] 'toggle-frame-fullscreen)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'doom-themes)
(load-theme 'doom-city-lights t)

(set-default-font "Menlo 11")

(setq inhibit-splash-screen t)
(switch-to-buffer "**")

(require 'autopair)
(autopair-global-mode)

(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

(elpy-enable)
