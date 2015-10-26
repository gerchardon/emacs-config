;; Emacs Config

;; Add lisp directory to path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(eval-and-compile
  (require 'cask "~/.cask/cask.el")
  (cask-initialize)
  (add-to-list 'load-path "~/.emacs.d/lisp"))

(package-initialize)

(require 'cask "~/.cask/cask.el")

;; Recompile .emacs.d/lisp & .emacs.d/lisp-config
(byte-recompile-directory "~/.emacs.d/lisp" 0)
(byte-recompile-directory "~/.emacs.d/lisp-config" 0)


(load "proxy")
(load "pre-cask")
(load "customize")

;; Init All Plugin with Cask & Pallet
(cask-initialize)

;; Load all files with *.elc in lisp-config
(mapc 'load-file (directory-files (expand-file-name "lisp-config" user-emacs-directory) t ".elc$"))


;;;;;;;;;;;;
;; ShortCuts
;;;;;;;;;;;;
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "<f5>") 'revert-buffer)
