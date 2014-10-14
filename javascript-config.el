;; Javascript config

(setq js-indent-level 4)
(setq c-basic-offset 4)

(setq js3-consistent-level-indent-inner-bracket t)
(setq js3-paren-indent-offset 4)
(custom-set-variables
 '(js3-lazy-semicolons t)
 '(js3-paren-indent-offset 4))

;; Start autopair to complete brackets and quotes
(add-hook 'js-mode-hook 'autopair-mode)
