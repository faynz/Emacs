;; Multiple cursors
;; Shortcuts are defined using smart-repeat!

(use-package multiple-cursors
  :config
  
  ;; Return key = new line & indent, instead of quit
  (define-key mc/keymap (kbd "<return>") nil)
  (global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)
  
  ;;  Commented shortcuts defined in smartrep.el
  ;;  :bind
  
  ;; ("M-<right>" . mc/mark-next-like-this)
  ;; ("M-<left>" . mc/mark-previous-like-this)
  ;; ("M-<up>" . mc/skip-to-previous-like-this)
  ;; ("M-<down>" . mc/skip-to-next-like-this)

  ;; ("M-;" . mc/unmark-previous-like-this)
  ;; ("M-'" . mc/unmark-next-like-this)

  ;; ("M-]" . mc/insert-letters)
  ;; ("M-[" . mc/insert-numbers)
  ;; ("M-{" . mc/mark-all-like-this)

  ;; ;;puts cursors on previous mark
  ;; ;; ("M-}" . mc/mark-pop )
  ;; ("M-}" . mc/vertical-align )

  )

(use-package expand-region
  :ensure t
  )

;;Move Lines Function
;; (Exchange line positions)

(defun move-line (n)
  "Move the current line up or down by N lines."
  (interactive "p")
  (setq col (current-column))
  (beginning-of-line) (setq start (point))
  (end-of-line) (forward-char) (setq end (point))
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (insert line-text)
    ;; restore point to original column in moved line
    (forward-line -1)
    (forward-char col)))

(defun move-line-up (n)
  "Move the current line up by N lines."
  (interactive "p")
  (move-line (if (null n) -1 (- n))))

(defun move-line-down (n)
  "Move the current line down by N lines."
  (interactive "p")
  (move-line (if (null n) 1 n)))

(global-set-key (kbd "M-S-<up>") 'move-line-up)
(global-set-key (kbd "M-S-<down>") 'move-line-down)

;;Move paragraphs
(defun move-text-internal (arg)
  (cond
   ((and mark-active transient-mark-mode)
    (if (> (point) (mark))
        (exchange-point-and-mark))
    (let ((column (current-column))
          (text (delete-and-extract-region (point) (mark))))
      (forward-line arg)
      (move-to-column column t)
      (set-mark (point))
      (insert text)
      (exchange-point-and-mark)
      (setq deactivate-mark nil)))
   (t
    (beginning-of-line)
    (when (or (> arg 0) (not (bobp)))
      (forward-line)
      (when (or (< arg 0) (not (eobp)))
        (transpose-lines arg))
      (forward-line -1)))))

(defun move-text-down (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines down."
  (interactive "*p")
  (move-text-internal arg))

(defun move-text-up (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines up."
  (interactive "*p")
  (move-text-internal (- arg)))

(global-set-key [\M-\S-up] 'move-text-up)
(global-set-key [\M-\S-down] 'move-text-down)
