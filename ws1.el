;; DEFAULT FORMAT
(defun mode-line-fill (face reserve)
  "Return empty space using FACE and leaving RESERVE space on the right."
  (when
      (and window-system (eq 'right (get-scroll-bar-mode)))
    (setq reserve (- reserve 3)))
  (propertize " "
	      'display
	      `((space :align-to (- (+ right right-fringe right-margin) ,reserve)))
	      'face face
	      )
  )

(setq-default mode-line-format
	      (list
	       '(:eval (propertize "%b" 'face '(:weight bold)))
	       '(:eval (if (buffer-modified-p)
			   (propertize "  " 'face '(:foreground "#bd93f9" :weight bold))
			 (propertize "  " 'face '(:foreground "#bd93f9" :weight bold))))
	       '(:eval (propertize "%m" 'face '(:weight bold)))
	       '(:eval (propertize " ws1 " 'face '(:foreground "#bd93f9" :weight bold)))
	       '(:eval (mode-line-fill 'mode-line 9))
	       '(:eval (propertize "  " 'face '(:foreground "#bd93f9" :weight bold)))
	       '(:eval (propertize "%l" 'face '(:weight bold)))))
(setq frame-title-format '(("[%b]\n\n")minor-mode-alist))
