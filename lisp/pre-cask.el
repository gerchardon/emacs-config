;;default to home directory
(setq default-directory "~/")

;;replace selection when typing
(delete-selection-mode 1)

; prevent tramp from messing up recentf
(require 'recentf)
    (setq recentf-auto-cleanup 'never) ;; disable before we start recentf!
(recentf-mode 1)

(setq tramp-debug-buffer t)

(add-to-list 'auto-mode-alist
             '("\\.emacs\\-[a-z\\-]" . emacs-lisp-mode))


;; bug workaround
(setq warning-suppress-types nil)


;; disable gui crap
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; hide menu and tool bar
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

(setq inhibit-splash-screen t)

(defcustom mf-display-padding-width 50
  "*Any extra display padding that you want to account for while
determining the maximize number of columns to fit on a display"
  :type 'integer
  :group 'maxframe)

;; (require 'carbon-font)
;; (fixed-width-set-default-fontset
;; "-apple-inconsolata-medium-r-normal--14-*-*-*-*-*-iso10646-1"))

;; hippie-expand
(global-set-key (kbd "C-.") 'hippie-expand)

;default list
(setq hippie-expand-try-functions-list
  '(try-complete-file-name-partially
    try-complete-file-name
    try-expand-all-abbrevs
    try-expand-list
    try-expand-line
    try-expand-dabbrev
    try-expand-dabbrev-all-buffers
    try-expand-dabbrev-from-kill
    try-complete-lisp-symbol-partially
    try-complete-lisp-symbol))

;;ido tweaks
;; (require 'ido)
;; (ido-mode t)
;; (ido-everywhere t)

(setq ido-enable-flex-matching t) ; fuzzy matching is a must have
(setq ido-enable-tramp-completion t)
(setq ido-auto-merge-work-directories-length -1) ; don't screw with mkdir
(setq tramp-default-method "ssh")

;; (setq ido-default-file-method 'selected-window)
;; (global-set-key (kbd "C-x C-b") 'ido-switch-buffer)
(global-set-key (kbd "C-x C-b") 'switch-to-buffer)



;; Save all tempfiles in $TMPDIR/emacs$UID/
(defconst emacs-tmp-dir (format "%s/%s%s/" temporary-file-directory "emacs" (user-uid)))
(setq backup-directory-alist
      `((".*" . ,emacs-tmp-dir)))
(setq undo-tree-history-directory-alist
      `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
      `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix
      emacs-tmp-dir)

;; disable .#foo style symlinks
(setq create-lockfiles nil)

;; (defconst use-backup-dir t)

;; (defvar user-temporary-file-directory "/tmp/emacs")

;; (make-directory user-temporary-file-directory t)
;; (setq backup-directory-alist
;; `(("." . ,user-temporary-file-directory) (,tramp-file-name-regexp nil))
;; version-control t ; Use version numbers for backups
;; kept-new-versions 16 ; Number of newest versions to keep
;; kept-old-versions 2 ; Number of oldest versions to keep
;; delete-old-versions t ; Ask to delete excess backup versions?
;; backup-by-copying-when-linked t) ; Copy linked files, don't rename.
;; (setq auto-save-list-file-prefix
;; (concat user-temporary-file-directory ".auto-saves-"))
;; (setq auto-save-file-name-transforms
;; `((".*" ,user-temporary-file-directory t)))

;; ;; (defvar user-temporary-file-directory-semantic (concat user-temporary-file-directory "/semantic-cache"))
;; ;; (make-directory user-temporary-file-directory-semantic t)
;; ;; (setq semanticdb-default-save-directory user-temporary-file-directory-semantic)
