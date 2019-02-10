;; Adds many functionalities to dired mode (including <open all marked files>)

(use-package diredful
  :config
  (diredful-mode 1))

 (defun dc/dired-mode-keys ()
   "User defined keys for dired mode."
   (interactive)
   (local-set-key (kbd "K") 'dired-kill-subdir)
   )
(add-hook 'dired-mode-hook 'dc/dired-mode-keys)

(add-hook 'dired-mode-hook
      (lambda ()
        (dired-hide-details-mode)
        (dired-sort-toggle-or-edit)))

