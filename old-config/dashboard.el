(use-package dashboard

  :ensure t
  :init
  (setq initial-buffer-choice (lambda() (get-buffer "*dashboard*")))


  ;; dashboard message
  (setq dashboard-banner-logo-title (concat ". . . . ."))

  ;; dashboard picture
  (setq dashboard-startup-banner 2)
  ;;(setq dashboard-startup-banner "~/Pictures/Wallpapers/dashboard.png")

  ;; dashboard elements
  (setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5)))
  :config
  (dashboard-setup-startup-hook)
  ;; Why is m bound to bookmarks???
  (dashboard-insert-shortcut "b" "Bookmarks:")
  )
