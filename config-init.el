;; Emacs Configure
(setq c-basic-offset 2)
(setq tab-width 2)
(setq indent-tabs-mode nil)
(setq inhibit-startup-message t)
(setq make-backup-files nil)

;; plus de BIP mais clignotement des lignes superieure et inferieure
(setq visible-bell 't)

(setf (frame-parameter nil 'scroll-bar-width) 8)

(defalias 'yes-or-no-p 'y-or-n-p)

; Conversion des fins de lignes du format MS-DOS au format Unix
(defun dos2unix ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t)
    (replace-match "")
  )
)

;Recentf is a minor mode that builds a list of recently opened files.
; This list is is automatically saved across Emacs sessions.
; You can then access this list through a menu.
(require 'recentf)
(recentf-mode 1)

;; La recherche n'est pas sensible a la casse
(setq case-fold-search t)

; When you visit a file,
; point goes to the last place where it was when you previously visited the same file.
(require 'saveplace)

;Load TRAMP (ssh edit file)
(require 'tramp)

;;;;;;;;
;; YAML
;;;;;;;;
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-hook 'yaml-mode-hook
      '(lambda ()
        (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
