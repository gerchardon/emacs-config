(setq custom-file load-file-name)

;; Emacs Configure
(setq c-basic-offset 4)
(setq tab-width 4)
(setq indent-tabs-mode nil)
(setq inhibit-startup-message t)
(setq make-backup-files nil)

(setq-default indent-tabs-mode nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

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
