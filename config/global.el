
(require 'subr-x)
(require 'iso-transl)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;; Removed ;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq-default indent-tabs-mode nil)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
;; Removes the annoying bell sound
(setq ring-bell-function 'ignore)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;; Added ;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; General options
;;y for yes
(fset 'yes-or-no-p 'y-or-n-p)


(line-number-mode t)
(column-number-mode t)
(electric-pair-mode 1)
(show-paren-mode)

;;Enable the line numbers
(global-linum-mode)

;; hooks
(display-time)
(add-hook 'c++-mode-hook 'linum-mode)
(add-hook 'c-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'linum-mode)
(add-hook 'emacs-lisp-mode-hook 'linum-mode)
(add-hook 'text-mode-hook 'orgtbl-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;; Keybindings ;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Any existing default command will be overwritten

;; Colors buffer

(global-set-key (kbd "C-c c") 'list-colors-display)

;;Navigate through words

(global-set-key (kbd "C-M-h") 'backward-paragraph)
(global-set-key (kbd "C-M-j") 'left-word)
(global-set-key (kbd "C-M-k") 'right-word)
(global-set-key (kbd "C-M-l") 'forward-paragraph)

;; Global Key
(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C-x ;") 'comment-region)
(global-set-key (kbd "C-x '") 'uncomment-region)

;;Selected region to upcase (C-x C-u), downcase (C-x C-l)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Scroll down X lines
(global-set-key (kbd "M-n") (lambda () (interactive) (scroll-up 4)))
(global-set-key (kbd "M-p") (lambda () (interactive) (scroll-down 4)))

;; -----------------------------------------------------

;; Disable Auto Save and Backup
;; Maybe selecting a place for dumb files instead?
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq create-lockfiles nil)
(setq backup-directory-alist `(("." . "~/.saves")))


;; Encoding
(prefer-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-selection-coding-system 'utf-8-unix)
(setq-default buffer-file-coding-system 'utf-8-unix)


;; Functions (?)
(defun insert-and-comment (text)
  (interactive)
  (let ((begin (point)))
    (insert text)
    (comment-region begin (point))
    (indent-region begin (point))
    )
  )
