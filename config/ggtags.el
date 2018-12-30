;; Need Hydra
(use-package ggtags

  :init
  (use-package counsel-gtags

    :hook
    (
     (c-mode-common . counsel-gtags-mode)
     )

    :bind
    (
     :map counsel-gtags-mode-map
          ("M-." . counsel-gtags-dwim)
          ("M-," . counsel-gtags-pop)
          )
    )
)
