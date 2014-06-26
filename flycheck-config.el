;;;
;; Use flycheck
;;;
(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))


;(setq-default flycheck-enabled-checkers '(javascript-gjslint))
;(setq-default flycheck-select-checkers '(javascript-gjslint))


(add-hook 'after-init-hook #'global-flycheck-mode)

;; (add-hook 'js-mode-hook (lambda ()
;;                           (flycheck-select-checker 'javascript-gjslint)))
