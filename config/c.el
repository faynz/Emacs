(defun c-setup-comment ()
  (setq comment-start "/*"
	comment-end   "*/"
	comment-multi-line t
	comment-continue " *"
	comment-padding 1
	comment-style 'extra-line)
  )


(defun c-setup-style ()
  (setq c-default-style "bsd"
	c-basic-offset 8
	tab-width 8))


(defun c-setup ()
  (c-setup-comment)
  (c-setup-style)
)

(setq c-default-style "bsd"
      c-basic-offset 8
      tab-width 8)


(add-hook 'c-mode-common-hook 'c-setup)
(add-hook 'c-mode-hook 'c-setup)
(add-hook 'c++-mode-common-hook 'c-setup)
(add-hook 'c++-mode-hook 'c-setup)

;; c-default styles : https://www.emacswiki.org/emacs/IndentingC
