;; Move through windows using meta-<arrows>
(if (string= "darwin" system-type)
    (windmove-default-keybindings 'meta))

;; Do not close Emacs on Command-q
(global-set-key (kbd "s-q") nil)

(global-set-key (kbd "<f12>") 'ido-mode)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Do not send to background/minimize
(global-set-key (kbd "C-z") nil)
(global-set-key (kbd "C-x C-z") nil)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;; Textmate
(global-set-key (kbd "C-x t") 'textmate-clear-cache)

(global-set-key (kbd "C-M-;") 'toggle-comment-line)

;; Resize windows
(global-set-key (kbd "C-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-s-<left>")  'shrink-window-horizontally)
(global-set-key (kbd "C-s-<down>")  'enlarge-window)
(global-set-key (kbd "C-s-<up>")    'shrink-window)

;; Tab autocomplete
;; http://gastonramos.wordpress.com/2012/05/22/emacs-autocomplete-con-tab/
; (global-set-key [(tab)] 'smart-tab)

(provide 'bindings)
