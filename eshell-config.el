(add-hook
 'eshell-mode-hook
 (lambda ()
   (setenv "COLORTERM" "true") ; enable colors
))
