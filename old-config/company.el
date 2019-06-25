(use-package company-c-headers)
(use-package company
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0.5)

  :init
  ;; Default Back Ends
  (setq company-backends
	'((company-files
	   company-keywords
	   company-capf
	   company-yasnippet
	   ))
	)

  )

(add-hook 'after-init-hook 'global-company-mode)


(with-eval-after-load 'company

    (define-key company-active-map (kbd "M-n") nil )
    (define-key company-active-map (kbd "M-p") nil )
    (define-key company-active-map (kbd "C-n") #'company-select-next )
    (define-key company-active-map (kbd "C-p") #'company-select-previous )

    )

(use-package company-irony
  :config
  (require 'company)
  (add-to-list 'company-backends 'company-irony))

  (add-to-list
   (make-local-variable 'company-backends)
   '(company-gtags
      company-semantic
      company-c-headers
      )
   )

(use-package irony
  :config
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
  )
