;; Emacs Config

(add-to-list 'load-path ".emacs.d")

;; Init All Plugin with Cask & Pallet
(require 'cask "~/.cask/cask.el")


(load "proxy.el")
(load "pre-cask.el")
(load "customize.el")
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
