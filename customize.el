(setq custom-file load-file-name)

;; Emacs Configure
(setq c-basic-offset 2)
(setq tab-width 2)
(setq indent-tabs-mode nil)
(setq inhibit-startup-message t)
(setq make-backup-files nil)

(setq-default indent-tabs-mode nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;'(coffee-tab-width 2)
 '(expand-region-guess-python-mode nil)
 '(expand-region-preferred-python-mode (quote python))
 '(python-indent-guess-indent-offset nil)
 '(sp-autoescape-string-quote nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flymake-errline ((t :underline "red")))
 '(flymake-warnline ((t :underline "green"))))
