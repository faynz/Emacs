
;; Prefix key for eyebrowse options is : "C-c C-w"

(use-package eyebrowse
  :diminish eyebrowse-mode
  :config (progn
            (define-key eyebrowse-mode-map (kbd "C-1") 'eyebrowse-switch-to-window-config-1)
            (define-key eyebrowse-mode-map (kbd "C-2") 'eyebrowse-switch-to-window-config-2)
            (define-key eyebrowse-mode-map (kbd "C-3") 'eyebrowse-switch-to-window-config-3)
            (define-key eyebrowse-mode-map (kbd "C-4") 'eyebrowse-close-window-config)

            (eyebrowse-mode t)
            (setq eyebrowse-new-workspace t)
            )
  )
