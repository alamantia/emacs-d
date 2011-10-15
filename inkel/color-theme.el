(require 'color-theme)
(color-theme-initialize)

(setq color-theme-is-global t)

(defvar inkel/color-themes)
(defvar inkel/color-theme-current)

(defun inkel/color-themes-reset ()
  "Reset the color theme list"
  (interactive)
  (setq inkel/color-themes '(color-theme-subtle-hacker
                             color-theme-jonadabian-slate
                             color-theme-kingsajz
                             color-theme-gnome2
                             color-theme-deep-blue
                             color-theme-dark-blue2)))

(inkel/color-themes-reset)

(let ((inkel-twilight "~/.emacs.d/vendors/twilight-emacs/color-theme-twilight.el"))
  (when (file-exists-p inkel-twilight)
    (load inkel-twilight)
    (add-to-list 'inkel/color-themes 'color-theme-twilight)))

(defun inkel/color-theme-next ()
  "Select next color theme"
  (interactive)
  (setq inkel/color-theme-current (car (last inkel/color-themes)))
  (setq inkel/color-themes (cons inkel/color-theme-current (butlast inkel/color-themes)))
  (message "Using color theme: %s" inkel/color-theme-current)
  (apply (symbol-function inkel/color-theme-current) '()))

(provide 'inkel/color-theme)
