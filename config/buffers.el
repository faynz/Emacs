;; Forces the messages to 0, and kills the *Messages* buffer - thus disabling it on startup.

(setq initial-scratch-message "")
(setq-default message-log-max nil)
(when (get-buffer "*Messages*")
(kill-buffer "*Messages*"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;; Initial buffer ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; to use, comment dashboard in config.el

(setq initial-buffer-choice "~/Documents/Poly")

;; No gnu buffer
(setq inhibit-startup-screen t)
