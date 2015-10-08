;; Emacs Config

;; Init All Plugin with Cask & Pallet

;;;; Add lisp directory to path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(package-initialize)

(require 'cask "~/.cask/cask.el")


(load-library "proxy.el")
(load-library "pre-cask.el")
(load-library "customize.el")
(cask-initialize)

;; Load all files with *.el
(mapc 'load-file (directory-files (expand-file-name "lisp-config" user-emacs-directory) t ".el$"))


;;;;;;;;;;;;
;; ShortCuts
;;;;;;;;;;;;
(global-set-key (kbd "C-x k") 'kill-this-buffer)

;;;
;; C-x g => Magit-Status
;;
;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (package-build shut-up epl git commander f dash s))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
