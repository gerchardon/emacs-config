;; (add-hook 'go-mode-hook
;;           (lambda ()
;;             ;; (linum-mode 1)
;;             (flymake-mode 1)
;;             (auto-complete-mode 1)
;;             (add-to-list 'ac-sources 'ac-source-go)
;;             (call-process "gocode" nil nil nil "-s")))

(defun go-run-buffer()
  (interactive)
  (async-shell-command (concat "go run " (buffer-name))))

(add-hook 'go-mode-hook
        (lambda ()
          (local-set-key (kbd "<f3>") 'godef-jump)
          (local-set-key (kbd "<f8>") 'go-run-buffer)
          (local-set-key (kbd "<f1>") 'go-remove-unused-imports)
          (add-hook 'before-save-hook #'gofmt-before-save)
        ))

;; go get -u github.com/tools/godep
;; go get -u github.com/nsf/gocode
;; go get -u github.com/rogpeppe/godef
;; gocode set autobuild true
;; gocode set lib-path $GOPATH/src/
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

(setq-default
  tab-width 2
  standard-indent 2
  )
