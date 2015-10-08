;;;
;; Jedi config
;;;

;; Start autocomplete and jedi for refactoring
;; (setq jedi:server-args
;;       '("--sys-path" "<pythonPath>"
;;         "--sys-path" "<pythonPath>"))

;; Use projectile to detect python project
(require 'projectile)
;; load the known projects
(projectile-load-known-projects)
(setq jedi:server-args
  (let (value)
    (dolist (element projectile-known-projects value)
      (if (file-exists-p (concat element "setup.py"))
        (setq value (append value (list "--sys-path" element)))))))


(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:setup)

(setq jedi:complete-on-dot t)
(setq jedi:use-shortcuts t)

(add-hook 'python-mode-hook
        (lambda ()
                (local-set-key (kbd "<f3>") 'jedi:goto-definition)
		(local-set-key (kbd "<f2>") 'jedi:goto-definition-pop-marker)
        ))
