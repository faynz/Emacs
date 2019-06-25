;; Colors for all types of delimiters

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode)
  )

(use-package doom-themes
  
  :hook 
  (after-init . (lambda () (load-theme 'darkokai))) 

   :config

   
   ;; Colors (Put in init.el for Emax)
   (set-face-foreground 'font-lock-comment-face "gray34")
   (set-foreground-color "#FFFFFF")
   (set-background-color "#1F1F25")
   ;;(set-face-foreground 'font-lock-string-face "light pink")
   


    ;; If using evil mode, use this :
    (setq evil-insert-state-cursor '(box "#F92672")
	  evil-normal-state-cursor '(box "yellow2"))
    
    (blink-cursor-mode 0)

    )

