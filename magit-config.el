;; Configure Magit

(setq magit-commit-signoff t)
(setq magit-remote-ref-format 'remote-slash-branch)
(setq magit-completing-read-function 'magit-iswitchb-completing-read)
(setq magit-save-some-buffers nil)

(global-set-key (kbd "C-x g") 'magit-status)

;; Enable gerrit
;; FIXME: bug with gerrit in https mode
;; (require 'magit-gerrit)
;; (setq-default magit-gerrit-remote "gerrit")
;; (setq magit-gerrit-remote "gerrit")
