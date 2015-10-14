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


(defun flycheck-disable-on-temp-buffers ()
   (unless (and buffer-file-name (file-exists-p buffer-file-name) (flycheck-mode -1))))

(add-hook 'js-mode-hook 'flycheck-disable-on-temp-buffers)

(defun node-run-buffer()
  (interactive)
  (async-shell-command (concat "node " (buffer-name))))
(add-hook 'js-mode-hook (lambda()
                          (local-set-key (kbd "<f8>") 'node-run-buffer)))
