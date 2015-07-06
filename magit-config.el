;; Configure Magit

(setq magit-commit-signoff t)
(setq magit-remote-ref-format 'remote-slash-branch)
(setq magit-completing-read-function 'magit-iswitchb-completing-read)
(setq magit-save-some-buffers nil)
; magit 1.4.0 (no revert before git)
(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.0")

(global-set-key (kbd "C-x g") 'magit-status)

;; Enable gerrit
;; FIXME: bug with gerrit in https mode
;; (require 'magit-gerrit)
;; (setq-default magit-gerrit-remote "gerrit")
;; (setq magit-gerrit-remote "gerrit")
