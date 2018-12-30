
(use-package avy

  :bind
  ("<S-return>" . avy-goto-char-timer)
  ("<C-return>" . avy-goto-line)
  ("C-x y" . avy-copy-region)
  ("C-x w" . avy-kill-region)

  :config
  (setq avy-timeout-seconds 3.0)
  ;; Jump across different emacs buffers
  (setq avy-all-windows 'all-frames)
  )
