;;; pacakge --- Emacs Config

;;; Commentary:


;; Proxy Config
;; (setq url-proxy-services '(("no_proxy" . "localhost,domain\\.local")
;;                            ("http" . "<proxy>:80")
;; 			   ("https" . "<proxy>:3128")))

(add-to-list 'load-path "~/.emacs.d/")

;; Init All Plugin with Cask & Pallet
(require 'cask "~/.cask/cask.el")


;;; Code:
(setq zconfig-emacsd (file-name-directory load-file-name))
(setq zconfig-emacs-cmd (concat invocation-directory invocation-name))
(message (concat "zconfig-emacsd is " zconfig-emacsd))
(message (concat "zconfig-emacs-cmd is " zconfig-emacs-cmd))

;; (setq files '())
;(defadvice cask-add-dependency (after cask-add-dependency-message (bundle name &rest args) activate)
;  (message (concat "cask-add-dependency for " (symbol-name name)))
;  ;; FIX Load file after (dependency has not be loaded)
;  (add-to-list 'files (symbol-name name))
;  ;(zconfig-load (symbol-name name))
;)

(defun zconfig-load (name)
  (let ((zconfig-config-file (concat zconfig-emacsd name ".el")))


    (if (file-exists-p zconfig-config-file)
        (progn
          (message (concat "loading " zconfig-config-file "..."))
          (load-file zconfig-config-file)))))

(zconfig-load "pre-cask")
;(zconfig-load "customize") 
(cask-initialize zconfig-emacsd)

;; Load all files
;; (mapc 'zconfig-load files)
(mapc 'load-file (directory-files zconfig-emacsd t "-config.el$"))

;(zconfig-load "javascript")
;(zconfig-load "post-cask")

;; ;; Python Config
;; (load "~/.emacs.d/python-init.el")

(add-hook 'after-init-hook (lambda () (load "~/.emacs.d/after-init.el")))
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
