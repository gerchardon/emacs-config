;; Configure Magit

(setq magit-commit-signoff t)
(setq magit-remote-ref-format 'remote-slash-branch)
(setq magit-save-some-buffers nil)
; magit 1.4.0 (no revert before git)
(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.0")

;; Magit Status in same buffer
(add-to-list 'same-window-regexps "\*magit: .*\*")

(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "<f12>") 'magit-status)

(require 'magit)
(magit-define-popup-switch 'magit-log-popup "nm" "No merges" "--no-merges")
