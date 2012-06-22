;; Default font
(set-face-attribute 'default nil :family "Menlo")

;; Hide toolbar, menu and scrollbars
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Use unique buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)

;; Highlight parenthesis/brackets
(require 'paren)
(show-paren-mode t)
(setq show-paren-style 'mixed)

;; Highlight matches during query replacement
(setq query-replace-highlight t)

;; Highlight current search match
(setq search-highlight t)

;; Indicate column number on status bar
(setq column-number-mode t)

;; Show buffer size
(setq size-indication-mode t)

;; Misc indicators
(setq-default indicate-empty-lines t)
(setq-default indicate-buffer-boundaries t)

;; Frame title format: filename (fullpath)
(setq frame-title-format "%b (%f)")

;; Syntax highlighting
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
(global-hi-lock-mode t)

;; Indicate line number on the left side
(global-linum-mode t)

;; Blink cursor
(blink-cursor-mode t)

;; Highlight current line
(global-hl-line-mode t)

;; Theme
(if (functionp 'load-theme)
    (if (file-exists-p "~/.emacs.d/vendor/emacs-color-theme-solarized")
        (progn
          (add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/emacs-color-theme-solarized")
          (load-theme 'solarized-dark))
      (load-theme 'misterioso)))

(vendor 'powerline)
(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

(provide 'visual)
