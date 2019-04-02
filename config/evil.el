(setq evil-want-C-u-scroll t)
(use-package evil
  :config
  (evil-mode 1)
  ;;emacs state is i state
  (setq evil-insert-state-map (make-sparse-keymap))
  (define-key evil-insert-state-map (kbd "<escape>") 'evil-normal-state)
  
  (add-to-list 'evil-emacs-state-modes 'nav-mode)
  ;; (add-hook 'nav-mode-hook 'evil-emacs-state-modes)
  ;; (add-hook 'read-only-mode-hook 'evil-emacs-state-modes)

  (evil-set-initial-state 'ibuffer-mode 'normal)
  (evil-set-initial-state 'bookmark-bmenu-mode 'normal)
  (evil-set-initial-state 'dired-mode 'emacs)
  (evil-set-initial-state 'sunrise-mode 'emacs)
  (evil-set-initial-state 'image-mode 'emacs)
  (evil-set-initial-state 'pdf-view-mode 'emacs)

  (evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
  (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
  (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "g") 'neotree-refresh)
  (evil-define-key 'normal neotree-mode-map (kbd "n") 'neotree-next-line)
  (evil-define-key 'normal neotree-mode-map (kbd "p") 'neotree-previous-line)
  (evil-define-key 'normal neotree-mode-map (kbd "A") 'neotree-stretch-toggle)
  (evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle)


  (use-package evil-easymotion
    :after (evil)
    :config
    (evilem-default-keybindings "SPC")
    )
  
  
)


