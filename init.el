;; Emacs Config

;; Add lisp directory to path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(package-initialize)

(require 'cask "~/.cask/cask.el")


(load-library "proxy.el")
(load-library "pre-cask.el")
(load-library "customize.el")

;; Init All Plugin with Cask & Pallet
(cask-initialize)

;; Load all files with *.el
(mapc 'load-file (directory-files (expand-file-name "lisp-config" user-emacs-directory) t ".el$"))


;;;;;;;;;;;;
;; ShortCuts
;;;;;;;;;;;;
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "<f5>") 'revert-buffer)
