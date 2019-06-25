(use-package projectile

  :init
  (use-package counsel-projectile

    :init
    (setq projectile-completion-system 'ivy)
    )

  :config
  (define-key projectile-mode-map (kbd "C-c C-p") 'projectile-command-map)
  (counsel-projectile-mode)
  )
