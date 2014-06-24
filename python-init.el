;; Start autopair to complete brackets and quotes
;(add-hook 'python-mode-hook 'autopair-mode)

;; Delete trailing whitespace when saving (compliance with PEP8)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
