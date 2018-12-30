(defun ivy-view-backtrace ()
  (interactive)
  (switch-to-buffer "*ivy-backtrace*")
  (delete-region (point-min) (point-max))
  (fundamental-mode)
  (insert ivy-old-backtrace)
  (goto-char (point-min))
  (forward-line 1)
  (let (part parts)
    (while (< (point) (point-max))
      (condition-case nil
          (progn
            (setq part (read (current-buffer)))
            (push part parts)
            (delete-region (point-min) (point)))
        (error
         (progn
           (ignore-errors (up-list))
           (delete-region (point-min) (point)))))))
  (goto-char (point-min))
  (dolist (part parts)
    (lispy--insert part)
    (lispy-alt-multiline)
    (insert "\n")))

 (defmacro csetq (variable value)
   `(funcall (or (get ',variable 'custom-set)
                 'set-default)
             ',variable ,value))


;; ivy/swiper

(use-package ivy
  :bind(
	("C-s" . swiper)
	("C-c C-r" . ivy-resume)

	:map ivy-minibuffer-map
	("M-<return>" . ivy-alt-done)
	("C-M-h" . ivy-previous-line-and-call)
	("C-c o" . ivy-occur)

	:map ivy-switch-buffer-map
	("C-k" . ivy-switch-buffer-kill)
	)

  :init
  (csetq ivy-display-style 'fancy)
  ;; (csetq ivy-count-format "(%d/%d) ")
  (csetq ivy-use-virtual-buffers t)
  (csetq counsel-find-file-ignore-regexp "\\`\\.")

  (setq ivy-initial-inputs-alist nil)
  (setq ivy-switch-buffer-faces-alist
	'((emacs-lisp-mode . swiper-match-face-1)
          (dired-mode . ivy-subdir)
          (org-mode . org-level-4)))

   (setq ivy-re-builders-alist
   	 '((t . ivy--regex-ignore-order)))

   :config
   (ivy-mode 1)
  )


;; counsel

(use-package counsel

  :bind(
        ("M-C-y" . counsel-yank-pop)
        ("M-x" . counsel-M-x)
        ("C-x C-f" . counsel-find-file)
        ("<f1> f" . counsel-describe-function)
        ("<f1> v" . counsel-describe-variable)
        ("<f1> l" . counsel-find-library)
        ("<f1> i" . counsel-info-lookup-symbol)
        ("<f1> u" . counsel-unicode-char)
;;  ("C-c g" . counsel-git)
;;  ("C-c j" . counsel-git-grep)
;;  ("C-c k" . counsel-ag)
;;  ("C-x l" . counsel-locate)
;;  ("C-S-o" . counsel-rhythmbox)

  :map read-expression-map
  ("C-r" . counsel-expression-history)
  ("C-r" . counsel-minibuffer-history)
  )

  :init
  (setq counsel-grep-base-command "grep -niE %s %s")
  (setq counsel-grep-base-command
	"rg -i -M 120 --no-heading --line-number --color never %s %s")
  (setq counsel-rg-base-command
	"rg -i -M 120 --no-heading --line-number --color never %s .")

  (setq counsel-git-grep-cmd-default
	(concat "git --no-pager grep --full-name -n --no-color -i -e '%s' -- './*' "
		(mapconcat (lambda (x) (format "':!*.%s'" x))
                           '("htm" "so" "a" "TTC" "NDS" "png" "md5") " ")))
  (setq counsel-fzf-dir-function
	(lambda ()
          (let ((d (locate-dominating-file default-directory ".git")))
            (if (or (null d)
                    (equal (expand-file-name d)
                           (expand-file-name "~/")))
		default-directory
	      d))))

;;   (setq counsel-linux-apps-directories
;; 	'("/usr/local/share/applications/"
;;           "/usr/share/applications/"))

  :config
  (ivy-set-display-transformer 'counsel-describe-function nil)
  )
