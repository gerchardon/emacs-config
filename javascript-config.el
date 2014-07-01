;; Javascript config

(setq js-indent-level 4)
(setq c-basic-offset 4)

(setq js3-consistent-level-indent-inner-bracket t)
(setq js3-paren-indent-offset 4)
(custom-set-variables
 '(js3-lazy-semicolons t)
 '(js3-paren-indent-offset 4))

;(add-to-list 'ac-modes 'js3-mode)
(global-auto-complete-mode t)
(add-hook 'js-mode 'auto-complete-mode)

;; ;;; auto complete mod
;; ;;; should be loaded after yasnippet so that they can work together
;; (require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;; (ac-config-default)
;; ;;; set the trigger key so that it can work together with yasnippet on tab key,
;; ;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;; ;;; activate, otherwise, auto-complete will
;; (ac-set-trigger-key "TAB")
;; (ac-set-trigger-key "<tab>")


;; (add-hook 'after-init-hook (lambda()
;;   (ac-config-default)
;;   (ac-complete-with-helm)
;; ))
; auto-complete
;(require 'auto-complete-config)
;(ac-config-default)

; ac-helm
;(ac-complete-with-helm)
