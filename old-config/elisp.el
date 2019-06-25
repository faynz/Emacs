(defun elisp-setup-comment ()
  (setq comment-start ";;"
	comment-end ";;"
	comment-multi-line t
	comment-padding " "
	comment-continue ";; "
	comment-empty-lines t
	comment-padding 1
	comment-style 'extra-line)
  )

(defun elisp-setup ()
  (elisp-setup-comment)
  )

(add-hook 'emacs-lisp-mode 'elisp-setup)
