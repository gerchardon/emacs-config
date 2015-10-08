;; Enable projectile
(projectile-global-mode)
(setq projectile-switch-project-action 'projectile-dired)
(setq projectile-completion-system 'default)

(setq projectile-use-git-grep t)

(define-key projectile-mode-map (kbd "<f4>") 'projectile-grep)
