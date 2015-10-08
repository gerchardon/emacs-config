;; Erc Configuration

;; joining && autojoing

;; make sure to use wildcards for e.g. freenode as the actual server
;; name can be be a bit different, which would screw up autoconnect
(erc-autojoin-mode t)

;; check channels
(erc-track-mode t)
(setq erc-track-exclude-types '("NICK" "JOIN" "PART" "QUIT" "MODE"
                                "301" ; away notice
                                "305" ; return from awayness
                                "306" ; set awayness
                                "324"
                                "329"
                                "332" ; topic notice
                                "333" ; who set the topic
                                "353" ; Names notice
                                "324" ; modes
                                "329" ; channel creation date
                                "477"
                                ))
;; don't show any of this
(setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK"))


(setq erc-header-line-format "%t: %o")
(setq erc-join-buffer 'bury)
(setq erc-warn-about-blank-lines nil)
(setq erc-interpret-mirc-color t)

(setq erc-server-reconnect-attempts t)
(setq erc-server-reconnect-timeout 10)

(add-to-list 'erc-modules 'notifications)
(erc-notifications-mode)
(add-hook 'focus-out-hook 'erc-notifications-enable)
(add-hook 'focus-in-hook 'erc-notifications-disable)

;; Specific ( at Work, at Home, ...)

;;;; Join chan
;; (setq erc-autojoin-channels-alist
;;   '((".*\\.freenode.net" "#<chan>" "#<chan>")))

;;;; Password identify
;; (add-hook 'erc-after-connect '(lambda (SERVER NICK)
;;                (erc-message "PRIVMSG" "NickServ identify <password>")))

;;;; Proxy configuration
;; (defun corkscrew-open-network-stream (name buffer host service)
;;    "Opens a network stream via corkscrew"
;;    (open-network-stream name buffer host service
;;                         :type 'shell
;;                         :shell-command "corkscrew <proxy_host> <proxy_host> %s %p $HOME/<cred_path>"))
;; (setq erc-server-connect-function 'corkscrew-open-network-stream)

;; (defun erc-start-or-switch ()
;;   "Connect to ERC, or switch to last active buffer"
;;   (interactive)
;;   (if (get-buffer "irc.freenode.net:8000") ;; ERC already active?
;;     (erc-track-switch-buffer 1) ;; yes: switch to last active
;;     (when (y-or-n-p "Start ERC? ") ;; no: maybe start ERC
;;       (erc :server "<host>" :port <port> :nick "<nick>" :full-name "<fullname>"))))

;; switch to ERC with Ctrl+c e
;; (global-set-key (kbd "<f12>") 'erc-start-or-switch)
