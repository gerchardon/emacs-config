;; Emacs Config

;; Init All Plugin with Cask & Pallet
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
