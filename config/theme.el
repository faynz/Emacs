;; Colors for all types of delimiters

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode)
  )


(use-package doom-themes
   :hook
   (after-init . (lambda () (load-theme 'doom-dracula)))

   :config

   ;; Color settings (comment for theme color)
    (if (display-graphic-p)
      (setq initial-frame-alist
            '(
              (background-color . "#1F1F25")
;;              (cursor-color . "#000000")
;;              (foreground-color . "#000000")
              (tool-bar-lines . 0)
              (width . 106)
              (height . 60)
              (left . 50)
              (top . 50)))
    (setq initial-frame-alist '( (tool-bar-lines . 0))))

  (setq default-frame-alist initial-frame-alist)


;;  ;; If using evil mode, use this :
;;  (setq evil-insert-state-cursor '(box "RoyalBlue3")
;;	evil-normal-state-cursor '(box "MediumPurple1"))

   )

;; Modeline appearance

;; (use-package doom-modeline
;;   :ensure t
;;   :defer t
;;   :config
;;   (doom-modeline-init)
;;   )

(use-package spaceline
  :ensure t
  :config
  (require 'spaceline-config)
  (setq powerline-default-separator (quote arrow))
  (spaceline-emacs-theme))

;; (custom-set-faces
;;  '(spaceline-highlight-face ((t (:foreground "RoyalBlue3" :background "MediumPurple1"))))

 ;; (custom-set-faces
 ;; '(spacemacs-normal-face ((t (:inherit 'mode-line :foreground "MediumPurple1" :background "DarkGoldenRod2")))))

;; Removes the mode display on modeline

(use-package diminish
  :ensure t
  :init
  (diminish 'undo-tree-mode)
  (diminish 'ivy-mode)
  (diminish 'company-mode)
  (diminish 'ggtags-mode)
  (diminish 'counsel-gtags-mode)
  (diminish 'abbrev-mode)
  (diminish 'irony-mode)
  (diminish 'yas-minor-mode)
  (diminish 'projectile-mode))


;; ;; Blinking cursor that changes color

;;  (defvar blink-cursor-colors (list  "#92c48f" "#6785c5" "#be369c" "#d9ca65")
;;    "On each blink the cursor will cycle to the next color in this list.")

;;  (setq blink-cursor-count 0)
;;  (defun blink-cursor-timer-function ()
;;    "Zarza wrote this cyberpunk variant of timer `blink-cursor-timer'.
;;  Warning: overwrites original version in `frame.el'.

;;  This one changes the cursor color on each blink. Define colors in `blink-cursor-colors'."
;;    (when (not (internal-show-cursor-p))
;;      (when (>= blink-cursor-count (length blink-cursor-colors))
;;        (setq blink-cursor-count 0))
;;      (set-cursor-color (nth blink-cursor-count blink-cursor-colors))
;;      (setq blink-cursor-count (+ 1 blink-cursor-count))
;;      )
;;    (internal-show-cursor nil (not (internal-show-cursor-p)))
;;    )



;;  ;;Toggle background opacity
;;
;;  ;;(SET-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
;;  ;;(set-frame-parameter (selected-frame) 'alpha <both>)
;;  ;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
;;  ;;(set-frame-parameter (selected-frame) 'alpha <both>)
;;  (set-frame-parameter (selected-frame) 'alpha '(75 . 60))
;;  (add-to-list 'default-frame-alist '(alpha . (75 . 60)))
;;
;;  (defun toggle-transparency ()
;;    (interactive)
;;    (let ((alpha (frame-parameter nil 'alpha)))
;;      (set-frame-parameter
;;       nil 'alpha
;;       (if (eql (cond ((numberp alpha) alpha)
;;                      ((numberp (cdr alpha)) (cdr alpha))
;;                      ;; Also handle undocumented (<active> <inactive>) form.
;;                      ((numberp (cadr alpha)) (cadr alpha)))
;;                100)
;;           '(75 . 60) '(100 . 100)))))
;;  (global-set-key (kbd "C-c t") 'toggle-transparency)
