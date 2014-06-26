;; Emacs Config

(add-to-list 'load-path "~/.emacs.d/")

;; Init All Plugin with Cask & Pallet
(require 'cask "~/.cask/cask.el")


(load "proxy.el")
(load "pre-cask.el")
(load "customize.el")
(cask-initialize)

;; Load all files with *-config.el
(mapc 'load-file (directory-files "~/.emacs.d/" t "-config.el$"))


;;(add-hook 'after-init-hook (lambda () (load "~/.emacs.d/after-init.el")))
;; (load "~/.emacs.d/after-init.el")


;;;;;;;;;;;;
;; ShortCuts
;;;;;;;;;;;;
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(add-hook 'python-mode-hook
        (lambda ()
                (local-set-key (kbd "<f3>") 'jedi:goto-definition)
		(local-set-key (kbd "<f2>") 'jedi:goto-definition-pop-marker)
        ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GUI Options
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 113 :width normal)))))
