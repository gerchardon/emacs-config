;; Emacs Config

;; Init All Plugin with Cask & Pallet

(package-initialize)

(require 'cask "~/.cask/cask.el")


(load-file "~/.emacs.d/proxy.el")
(load-file "~/.emacs.d/pre-cask.el")
(load-file "~/.emacs.d/customize.el")
(cask-initialize)

;; Load all files with *-config.el
(mapc 'load-file (directory-files "~/.emacs.d/" t "-config.el$"))


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
