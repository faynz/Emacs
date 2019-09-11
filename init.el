(require 'package)
(setq package-enable-at-startup nil)

;;ELPA MELPA
(setq package-archives '(("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("org"   . "https://orgmode.org/elpa/")))
(package-initialize)

;;installing use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;; loading config file
(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))

;; Force emax background color 
;;(add-to-list 'default-frame-alist '(background-color . "#1F1F25"))


(put 'dired-find-alternate-file 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-display-line-numbers-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
