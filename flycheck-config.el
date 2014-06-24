;;;
;; Use flycheck
;;;
(add-hook 'after-init-hook #'global-flycheck-mode)

(add-hook 'python-mode-hook
        (lambda ()
                (local-set-key (kbd "<f3>") 'jedi:goto-definition)
		(local-set-key (kbd "<f2>") 'jedi:goto-definition-pop-marker)
        ))
