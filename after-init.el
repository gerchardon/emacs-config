; color theme
(load-theme 'solarized-dark t)

; Hide bar
(tool-bar-mode -1)

; projectile
(projectile-global-mode)

; pair mode
(show-paren-mode)
(electric-pair-mode)

;;; auto complete mod
;;; should be loaded after yasnippet so that they can work together
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))

(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq js2-highlight-level 3)
(completion-at-point)

;;; yasnippet
;;; should be loaded before auto complete so that they can work together
(require 'yasnippet)
(yas-global-mode 1)

; ac-helm
;(ac-complete-with-helm)

(require 'flycheck)
(add-hook 'js-mode-hook
          (lambda () (flycheck-mode t)))


;(define-key js-mode-map "{" 'paredit-open-curly)
;(define-key js-mode-map "}" 'paredit-close-curly-and-newline)

;(require 'ecb)
;(require 'ecb-autoloads)
;(ecb-activate)
