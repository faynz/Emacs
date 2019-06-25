(use-package magit

  :ensure t

  :bind
  ("C-c m" . magit-status)

  :config
  (global-magit-file-mode)
)
