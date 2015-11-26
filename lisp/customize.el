(setq custom-file load-file-name)

;; Emacs Configure
(setq c-basic-offset 2)
(setq tab-width 2)
(setq indent-tabs-mode nil)
(setq inhibit-startup-message t)
(setq make-backup-files nil)

(setq-default indent-tabs-mode nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)


;; disable help popup in modeline
(setq show-help-function nil)

(require 'dired-x)
(setq-default dired-omit-files-p t) ; this is buffer-local variable
(setq dired-omit-files
    (concat dired-omit-files "\\|^\\..+$\\|\\.pyc$|\\.elc$|^\\.tern-port$"))
(setq dired-recursive-deletes 'always)

;; Zoom in/out globaly
(define-globalized-minor-mode
  global-text-scale-mode
  text-scale-mode
  (lambda () (text-scale-mode 1)))

(defun global-text-scale-adjust (inc) (interactive)
  (text-scale-set 1)
  (kill-local-variable 'text-scale-mode-amount)
  (setq-default text-scale-mode-amount (+ text-scale-mode-amount inc))
  (global-text-scale-mode 1))

(global-set-key (kbd "M-0")
  '(lambda () (interactive)
     (global-text-scale-adjust (- text-scale-mode-amount))
     (global-text-scale-mode -1)))
(global-set-key (kbd "M-+")
  '(lambda () (interactive) (global-text-scale-adjust 1)))
(global-set-key (kbd "M--")
  '(lambda () (interactive) (global-text-scale-adjust -1)))

;;
;; Next and previous buffer ignore *...* buffer
;;
(defadvice next-buffer (after avoid-messages-buffer-in-next-buffer)
  "Advice around `next-buffer' to avoid going into the *Messages* buffer."
  ;;(when (string= "*Messages*" (buffer-name))
  (when (string-match "\\*.*\\*" (buffer-name))
    (next-buffer)))

;; activate the advice
(ad-activate 'next-buffer)


(defadvice previous-buffer (after avoid-messages-buffer-in-next-buffer)
  "Advice around `previous-buffer' to avoid going into the *Messages* buffer."
  ;;(when (string= "*Messages*" (buffer-name))
  (when (string-match "\\*.*\\*" (buffer-name))
    (previous-buffer)))

;; activate the advice
(ad-activate 'previous-buffer)

;; ask before close emacs
(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

(when window-system
  (global-set-key (kbd "C-x C-c") 'ask-before-closing))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "26614652a4b3515b4bbbb9828d71e206cc249b67c9142c06239ed3418eff95e2" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "b71d5d49d0b9611c0afce5c6237aacab4f1775b74e513d8ba36ab67dfab35e5a" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" default)))
 '(expand-region-guess-python-mode nil)
 '(expand-region-preferred-python-mode (quote python))
 '(js3-lazy-semicolons t)
 '(js3-paren-indent-offset 2 t)
 '(magit-log-arguments
   (quote
    ("--graph" "--color" "--show-signature" "--stat" "--no-merges" "-n100")))
 '(package-selected-packages (quote (package-build shut-up epl git commander f dash s)))
 '(python-indent-guess-indent-offset nil)
 '(solarized-high-contrast-mode-line t)
 '(sp-autoescape-string-quote nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 80 :width normal)))))
