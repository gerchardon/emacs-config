;; Start autopair to complete brackets and quotes
(add-hook 'python-mode-hook 'autopair-mode)

;; Delete trailing whitespace when saving (compliance with PEP8)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Python hook to Highlight TODO, FIXME, ...
(add-hook 'python-mode-hook 'turn-on-fic-mode)
