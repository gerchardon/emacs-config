(setq helm-quick-update                     t ; do not display invisible candidates
      helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-buffers-fuzzy-matching           t ; fuzzy matching buffer names when non--nil
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)

(setq enable-recursive-minibuffers t)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
;; (global-set-key (kbd "C-x C-f") 'helm-find-files)


;; (setq helm-boring-buffer-regexp-list '())
(setq helm-boring-buffer-regexp-list '("\\*.*\\*"))
(setq helm-find-ignored-directories '(".venv"))
(helm-mode 1)

;; (setq enable-recursive-minibuffers t)
(setq helm-grep-in-recurse t)

;; Helm Git Grep
(global-set-key (kbd "C-c g") 'helm-git-grep)
;; Invoke `helm-git-grep' from isearch.
(define-key isearch-mode-map (kbd "C-c g") 'helm-git-grep-from-isearch)
;; Invoke `helm-git-grep' from other helm.
(eval-after-load 'helm
  '(define-key helm-map (kbd "C-c g") 'helm-git-grep-from-helm))
