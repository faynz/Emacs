(use-package org
  :ensure t 
  :init
  (setq org-startup-folded nil)
  :config
  (add-to-list 'org-emphasis-alist
             '("*" (:foreground "red"))
             )
  )


(use-package org-bullets
  :config
  (setq org-bullets-face-name (quote org-bullet-face))
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  (setq org-bullets-bullet-list '("" "" "" ""))
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




