;;;;
;; Configure IDO (http://www.emacswiki.org/emacs/InteractivelyDoThings)
;;;
(require 'ido)
(ido-mode t)

(setq ido-enable-regexp t)
(setq ido-enable-flex-matching t)

(require 'bookmark)
(setq enable-recursive-minibuffers t)
(define-key ido-file-dir-completion-map [(meta control ?b)] 'ido-goto-bookmark)
(defun ido-goto-bookmark (bookmark)
  (interactive
    (list (bookmark-completing-read "Jump to bookmark" bookmark-current-bookmark))
  )
  (unless bookmark
    (error "No bookmark specified"))
  (let ((filename (bookmark-get-filename bookmark)))
    (if (file-directory-p filename)
      (progn
        (ido-set-current-directory filename)
  	  (setq ido-text ""))
        (progn
  	(ido-set-current-directory (file-name-directory filename))))
      (setq ido-exit        'refresh
  	  ido-text-init   ido-text
  	  ido-rotate-temp t)
      (exit-minibuffer)))

;; (require 'uniquify)
;; (setq uniquify-buffer-name-style 'reverse)
;; (setq uniquify-separator "/")
;; (setq uniquify-after-kill-buffer-p t) ; rename after killing uniquified

;; (setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers (or Gnus mail buffers)



;; dired-find-alternate-file
;; replaces the current buffer keeping the clutter of dired buffers to a minimum.
(put 'dired-find-alternate-file 'disabled nil)


;; iswitchb
;; (buffer switch)
;; (iswitchb-mode 1)
;; (setq iswitchb-buffer-ignore '("^ " "*Buffer"))
;; (setq iswitchb-default-method 'samewindow)

;; (defun iswitchb-local-keys ()
;;   (mapc (lambda (K)
;;           (let* ((key (car K)) (fun (cdr K)))
;;             (define-key iswitchb-mode-map (edmacro-parse-keys key) fun)))
;;         '(("<right>" . iswitchb-next-match)
;;           ("<left>"  . iswitchb-prev-match)
;;           ("<up>"    . ignore             )
;;           ("<down>"  . ignore             ))))

;; (add-hook 'iswitchb-define-mode-map-hook 'iswitchb-local-keys)
