(use-package org

  :init
  (setq org-startup-folded nil)
  )


(use-package org-bullets
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
)

;; (eval-after-load 'org '(require 'org-pdfview))

(add-to-list 'org-file-apps
             '("\\.pdf\\'" . (lambda (file link)
                                     (org-pdfview-open link))))


;; '(org-emphasis-alist
;;    (quote
;;     (
;;      ("!" org-habit-overdue-face)
;;      ("%" org-habit-alert-face)
;;      ("*" bold)
;;      ("/" italic)
;;      ("_" underline)
;;      ("=" org-verbatim verbatim)
;;      ("~" org-code verbatim)
;;      ("+" (:strike-through t))
;;      )))

(add-to-list 'org-emphasis-alist
             '("*" (:foreground "red"))
             )



