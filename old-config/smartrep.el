;; Setting new prefix key for multiple cursors

(define-prefix-command 'mc)
(global-set-key (kbd"M-z") 'mc)


(use-package smartrep
  :config
  (smartrep-define-key
   global-map "M-z"
   '(

     ;; Multiple cursors

     ("h" . mc/skip-to-previous-like-this)
     ("j" . mc/mark-previous-like-this)
     ("k" . mc/mark-next-like-this)
     ("l" . mc/skip-to-next-like-this)

     ("u" . mc/unmark-previous-like-this)
     ("i" . mc/unmark-next-like-this)

     ("b" . mc/insert-letters)
     ("n" . mc/insert-numbers)

     ("m" . mc/mark-all-like-this)
     ("e" . mc/edit-lines)

     ("o" . mc/mark-pop )
     ("a" . mc/vertical-align )

     ("y" . er/expand-region )
     ))
  )
