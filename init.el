;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)

(defun load-config-file (files)
  (dolist (file files)
    (load-file
     (expand-file-name file (concat user-emacs-directory "config/"))
     )
    )
  )

;; config.el contains all my packages to load
;; package.el has all the melpa and defines use-package 

(load-config-file '("package.el"))
(load-config-file '("config.el"))


;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "MonacoB2" :foundry "pyrs" :slant normal :weight bold :height 143 :width normal))))
 '(doom-modeline-bar ((t (:background "#bd93f9"))))
 '(ivy-prompt-match ((t (:inherit ivy-current-match))))
 '(mode-line ((t (:background "#1F1F25" :foreground "cadet blue"))))
 '(mode-line-buffer-id ((t (:foreground "slate blue" :weight bold))))
 '(mode-line-emphasis ((t (:foreground "#bd93f9"))))
 '(mode-line-highlight ((t (:inherit highlight :background "black" :distant-foreground "black" :foreground "magenta"))))
 '(mode-line-inactive ((t (:background "#1F1F25" :foreground "#6272a4" :box nil)))))


 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (doom-dracula)))
 '(custom-safe-themes
   (quote
    ("f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "ab564a7ce7f2b2ad9e2cfe9fe1019b5481809dd7a0e36240c9139e230cc2bc32" "ab564a7ce7f2b2ad9e2cfe9fe1019b5481809dd7a0e3670c9139e230cc2bc32" "dd43ce1171324a8e47f9e4ca9f49773c4b4960706171ab951130c668adc59f53" default)))
 '(display-time-mode t)
 '(fci-rule-color "#6272a4")
 '(fringe-mode 0 nil (fringe))
 '(global-display-line-numbers-mode t)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(jdee-db-active-breakpoint-face-colors (cons "#1E2029" "#bd93f9"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1E2029" "#50fa7b"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1E2029" "#565761"))
 '(line-number-mode nil)
 '(org-agenda-files nil)
 '(package-selected-packages (quote (cl-lib)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(vc-annotate-background "#282a36")
 '(vc-annotate-color-map
   (list
    (cons 20 "#50fa7b")
    (cons 40 "#85fa80")
    (cons 60 "#bbf986")
    (cons 80 "#f1fa8c")
    (cons 100 "#f5e381")
    (cons 120 "#face76")
    (cons 140 "#ffb86c")
    (cons 160 "#ffa38a")
    (cons 180 "#ff8ea8")
    (cons 200 "#ff79c6")
    (cons 220 "#ff6da0")
    (cons 240 "#ff617a")
    (cons 260 "#ff5555")
    (cons 280 "#d45558")
    (cons 300 "#aa565a")
    (cons 320 "#80565d")
    (cons 340 "#6272a4")
    (cons 360 "#6272a4")))
 '(vc-annotate-very-old-color nil))

;; colors (for Emax)
(set-face-foreground 'font-lock-comment-face "gray34")
(set-foreground-color "#FFFFFF")
(set-background-color "#1F1F25")
(set-face-foreground 'font-lock-string-face "light pink")
(put 'dired-find-alternate-file 'disabled nil)
;; highlight color
(set-face-attribute 'region nil :background "#333344")
