(use-package ace-window
  :ensure t
  :config
  (global-set-key (kbd "C-c a") 'ace-window)
  )

;; Enable Window Move (Switch buffers on Emacs)
(windmove-default-keybindings)
