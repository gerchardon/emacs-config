;; (add-hook 'go-mode-hook
;;           (lambda ()
;;             ;; (linum-mode 1)
;;             (flymake-mode 1)
;;             (auto-complete-mode 1)
;;             (add-to-list 'ac-sources 'ac-source-go)
;;             (call-process "gocode" nil nil nil "-s")))

(add-hook 'go-mode-hook
        (lambda ()
                (local-set-key (kbd "<f3>") 'godef-jump)
		;; (local-set-key (kbd "<f2>") 'godef)
        ))


;; gocode set autobuild true
;; gocode set lib-path $GOPATH/src/
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)
