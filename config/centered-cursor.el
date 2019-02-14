(use-package centered-cursor-mode
  :config
  (global-centered-cursor-mode 1)
  (defcustom ccm-vpos-init '(round (window-text-height) 2)
    "This is the screen line position where the cursor initially stays."
    :group 'centered-cursor
    :tag "Vertical cursor position"
    :type '(choice (const :tag "Center" (round (window-text-height) 2))
                   (const :tag "Golden ratio" (round (* 21 (window-text-height)) 34)) 
                   (integer :tag "Lines from top" :value 10)))
  (make-variable-buffer-local 'ccm-vpos-init)
)
