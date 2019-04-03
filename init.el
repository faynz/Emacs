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
 '(dired-directory ((t (:foreground "dark orange"))))
 '(dired-header ((t (:inherit bold :background "#242728" :foreground "dark orange"))))
 '(dired-mark ((t (:foreground "#63de5d" :weight bold))))
 '(dired-marked ((t (:inherit bold :foreground "#ab7eff"))))
 '(doom-modeline-bar ((t (:background "#bd93f9"))))
 '(ivy-current-match ((t (:background "yellow3" :foreground "black"))))
 '(ivy-minibuffer-match-highlight ((t (:background "olive drab" :foreground "black"))))
 '(ivy-prompt-match ((t (:inherit ivy-current-match))))
 '(line-number ((t (:background "#1F1F25" :foreground "#5D6365"))))
 '(line-number-current-line ((t (:inherit line-number :foreground "white"))))
 '(mode-line ((t (:background "#1F1F25" :foreground "#f8fbfc" :box (:line-width 8 :color "#1F1F25" :style unspecified)))))
 '(mode-line-buffer-id ((t (:foreground "orange" :weight extra-bold))))
 '(mode-line-emphasis ((t (:foreground "light sea green"))))
 '(mode-line-highlight ((t (:foreground "yellow"))))
 '(mode-line-inactive ((t (:background "#1F1F25" :foreground "#6272a4" :box (:line-width 8 :color "#242728" :style unspecified))))))


 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(ansi-term-color-vector
   [unspecified "#272822" "#f92672" "#a6e22e" "#f4bf75" "#66d9ef" "#ae81ff" "#66d9ef" "#f8f8f2"])
 '(background-color "#202020")
 '(background-mode dark)
 '(column-number-mode t)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(cursor-color "#cccccc")
 '(custom-enabled-themes (quote (darkokai)))
 '(custom-safe-themes
   (quote
    ("d986619578e8a8dabb846e91c54090b82d937672f54ffa0ef247c0428813d602" "c968804189e0fc963c641f5c9ad64bca431d41af2fb7e1d01a2a6666376f819c" "fc7fd2530b82a722ceb5b211f9e732d15ad41d5306c011253a0ba43aaf93dccc" "4138944fbed88c047c9973f68908b36b4153646a045648a22083bd622d1e636d" "78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "aded4ec996e438a5e002439d58f09610b330bbc18f580c83ebaba026bbef6c82" "b3bcf1b12ef2a7606c7697d71b934ca0bdd495d52f901e73ce008c4c9825a3aa" "04232a0bfc50eac64c12471607090ecac9d7fd2d79e388f8543d1c5439ed81f5" "8885761700542f5d0ea63436874bf3f9e279211707d4b1ca9ed6f53522f21934" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "b54826e5d9978d59f9e0a169bbd4739dd927eead3ef65f56786621b53c031a7c" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "100e7c5956d7bb3fd0eebff57fde6de8f3b9fafa056a2519f169f85199cc1c96" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "ab564a7ce7f2b2ad9e2cfe9fe1019b5481809dd7a0e36240c9139e230cc2bc32" "ab564a7ce7f2b2ad9e2cfe9fe1019b5481809dd7a0e3670c9139e230cc2bc32" "dd43ce1171324a8e47f9e4ca9f49773c4b4960706171ab951130c668adc59f53" default)))
 '(fci-rule-color "#6272a4")
 '(foreground-color "#cccccc")
 '(fringe-mode 0 nil (fringe))
 '(global-centered-cursor-mode nil)
 '(global-display-line-numbers-mode t)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(jdee-db-active-breakpoint-face-colors (cons "#1E2029" "#bd93f9"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1E2029" "#50fa7b"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1E2029" "#565761"))
 '(line-number-mode nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-agenda-files nil)
 '(org-emphasis-alist
   (quote
    (("*"
      (:foreground "red"))
     ("/" italic)
     ("_" underline)
     ("=" org-verbatim verbatim)
     ("~" org-code verbatim)
     ("+"
      (:strike-through t)))))
 '(package-selected-packages
   (quote
    (darkokai-theme doom-modeline all-the-icons base16-theme subatomic-theme ujelly-theme noctilux-theme evil-easymotion nasm-mode centered-cursor-mode cl-lib)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
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
;;(set-face-foreground 'font-lock-string-face "light pink")
(put 'dired-find-alternate-file 'disabled nil)
;; highlight color
(set-face-attribute 'region nil :background "#333344")

(add-to-list 'default-frame-alist '(background-color . "#000000"))
(add-to-list 'default-frame-alist '(background-color . "#1F1F25"))

