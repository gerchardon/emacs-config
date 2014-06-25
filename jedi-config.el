;;;
;; Jedi config
;;;

;; Start autocomplete and jedi for refactoring
;; (setq jedi:server-args
;;       '("--sys-path" "<pythonPath>"
;;         "--sys-path" "<pythonPath>"))
(setq jedi:server-args
      '("--sys-path" "/home/ubuntu/publics/python-keystoneclient"
	"--sys-path" "/home/ubuntu/publics/heat"))
(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:setup)

(setq jedi:complete-on-dot t)
(setq jedi:use-shortcuts t)

(add-hook 'python-mode-hook
        (lambda ()
                (local-set-key (kbd "<f3>") 'jedi:goto-definition)
		(local-set-key (kbd "<f2>") 'jedi:goto-definition-pop-marker)
        ))
