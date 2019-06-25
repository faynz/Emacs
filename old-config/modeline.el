
;; Modeline appearance

(use-package doom-modeline
  :ensure t
  :defer t
  :hook (after-init . doom-modeline-mode)
  ;;:config
  ;; How tall the mode-line should be (only respected in GUI Emacs).
  ;;(setq doom-modeline-height 25)
  
  ;; How wide the mode-line bar should be (only respected in GUI Emacs).
  ;;(setq doom-modeline-bar-width 3)
  
  ;; Determines the style used by `doom-modeline-buffer-file-name'.
  ;; If you are expereicing the laggy issue, especially while editing remote files
  ;; with tramp, please use `file-name', `truncate-all' or `truncate-upto-root'
  ;; style.
  ;; Please refer to https://github.com/bbatsov/projectile/issues/657.
  ;; (setq doom-modeline-buffer-file-name-style 'truncate-upto-project)
  
  ;; What executable of Python will be used (if nil nothing will be showed).
  ;;(setq doom-modeline-python-executable "python")
  
  ;; Whether show `all-the-icons' or not (if nil nothing will be showed).
  ;; The icons may not be showed correctly on Windows. Disable to make it work.
  ;;(setq doom-modeline-icon t)
  
  ;; Don’t compact font caches during GC.
  ;; If you are expereicing the laggy issue especially on Windows, please set to
  ;; non-nil.
  ;;(setq inhibit-compacting-font-caches t)
  
  )

;; Removes the mode display on modeline

(use-package diminish
  :ensure t
  :init
  (diminish 'undo-tree-mode)
  (diminish 'ivy-mode)
  (diminish 'company-mode)
  (diminish 'ggtags-mode)
  (diminish 'counsel-gtags-mode)
  (diminish 'abbrev-mode)
  (diminish 'irony-mode)
  (diminish 'yas-minor-mode)
  (diminish 'projectile-mode))


;; (use-package spaceline
;;   :ensure t
;;   :config
;;   (require 'spaceline-config)
;;   (setq powerline-default-separator (quote arrow))
;;   (spaceline-spacemacs-theme))
;;   (display-time-mode -1)
