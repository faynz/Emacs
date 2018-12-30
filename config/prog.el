;; Shows all the whitespaces

(use-package ws-butler
  :hook
  (prog-mode . (lambda () (setq show-trailing-whitespace 1)))
  (prog-mode . (lambda () (ws-butler-mode 1)))

  )


;; Shows possible suffix keys
(use-package which-key
  :ensure t
  :config
  (which-key-mode)
  )
