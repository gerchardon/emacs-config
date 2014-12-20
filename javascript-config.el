;; Javascript config

(setq js-indent-level 2)
(setq c-basic-offset 2)

(setq js3-consistent-level-indent-inner-bracket t)
(setq js3-paren-indent-offset 2)
(custom-set-variables
 '(js3-lazy-semicolons t)
 '(js3-paren-indent-offset 2))

;; Start autopair to complete brackets and quotes
(add-hook 'js-mode-hook 'autopair-mode)
