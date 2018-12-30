(use-package hydra

  :config

  (defhydra hydra-zoom (global-map "<f2>")
    "zoom"
    ("g" text-scale-increase "in")
    ("l" text-scale-decrease "out"))

  )

(use-package ivy-hydra
  :after (ivy hydra)

  :bind
  ("C-c w" . hydra-window/body)
  ("C-c p" . hydra-projectile/body)
  ("C-c g" . hydra-gtags/body)

  :config
  (defhydra hydra-window (:color amaranth)
    "
Hydra Window
^Size^                    ^Actions^            ^Split^
^^^^^^^------------------------------------------------------------
_e_nlarge Horizontally    _d_elete             _v_ertically
_E_nlarge Vertically      _D_elete Others      _h_orizontally
_s_hrink Horizontally     _o_: Other
_S_hrink Vertically
_M_aximize
_m_inimize
_b_alance
"
    ("v" split-window-vertically)
    ("h" split-window-horizontally)
    ("e" enlarge-window-horizontally)
    ("E" enlarge-window)
    ("s" shrink-window-horizontally)
    ("S" shrink-window)
    ("M" maxize-window)
    ("m" minimize-window)
    ("b" balance-windows)
    ("d" delete-window)
    ("D" delete-other-windows)
    ("o" other-window)
    ("q" nil "quit" :blue t))

  (defhydra hydra-projectile (:color teal)
    "
Hydra Projectile
^Find^        ^Actions^      ^Buffer
p^^^^^--------------------------------------
_p_roject     _g_rep         _k_ill
_f_ile        _G_it
_d_ir         _c_ompile
_t_ag         _r_eplace
_o_ther       _R_egex
^ ^           _s_hell
"
    ("p" counsel-projectile-switch-project)
    ("f" counsel-projectile-find-file)
    ("d" counsel-projectile-find-dir)
    ("t" projectile-find-tag)
    ("o" projectile-find-other-file)
    ("g" counsel-projectile-grep)
    ("G" counsel-projectile-git-grep)
    ("c" projectile-compile-project)
    ("r" projectile-replace)
    ("R" projectile-replace-regexp)
    ("s" projectile-run-shell)
    ("k" projectile-kill-buffers)
    ("q" nil "quit")
    )


  (defhydra hydra-gtags (:color amaranth)
    "
Hydra Gtags
^Search^        ^Tags^     ^Goto^
^^^^^^^------------------------------------------------------------
_d_efinitions   _c_reate   _p_op
_r_eference     _u_ptade
_s_ymbols
_f_iles
_D_wim
"

    ("d" counsel-gtags-find-definition)
    ("r" counsel-gtags-find-reference)
    ("s" counsel-gtags-find-symbol)
    ("f" counsel-gtags-find-file)
    ("D" counsel-gtags-dwim)
    ;; There's a bug in counsel-gtags. Use pop instead
;;    ("b" counsel-gtags-go-backward)
    ;;    ("f" counsel-gtags-go-forward)
    ("p" counsel-gtags-pop)
    ("c" counsel-gtags-create-tags)
    ("u" counsel-gtags-update-tags)
    ("q" nil "quit" :blue t)
    )


)
