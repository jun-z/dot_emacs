(add-to-list 'default-frame-alist '(width . 80))
(add-to-list 'default-frame-alist '(height . 52))

(tool-bar-mode -1)

(setq dired-listing-switches "-aloh")

(require 'package)
(setq package-archives '(("gnu" ."http://elpa.gnu.org/packages/")
			 ("marmalade" ."http://marmalade-repo.org/packages/")
			 ("melpa" ."http://melpa.milkbox.net/packages/")))
(package-initialize)

(set-default-font "Menlo 11")

;; (require 'color-theme)
;; (color-theme-initialize)
;; (load-file "~/.emacs.d/elpa/color-themes/color-theme-mac-classic.el")
;; (color-theme-mac-classic)

;;(load-theme 'monokai t)
(load-theme 'solarized-dark t)

(setq inhibit-splash-screen t)
(switch-to-buffer "**")

(require 'autopair)
(autopair-global-mode) ;; to enable in all buffers

(require 'exec-path-from-shell) ;; if not using the ELPA package
(exec-path-from-shell-initialize)

(pyvenv-activate "~/.emacs.d/2.7.13/")
(elpy-enable)
;; (elpy-use-ipython)

;; fix for emacs 25.1
(global-set-key (kbd "M-*") 'pop-tag-mark)
