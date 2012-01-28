;; Change foreground/background color
(set-foreground-color "white")
(set-background-color "black")

(setq visible-bell nil)

;; 'y' or 'n' instead of "yes" or "no"
(fset 'yes-or-no-p 'y-or-n-p)

;; smooth-scrolling removes the jerkyness of emacs's default scrolling
(require 'smooth-scrolling)

;; ============================================================
;; Enable Color-theme and zenburn
;; ============================================================
(require 'color-theme)

(require 'zenburn)
(color-theme-zenburn)

;; ============================================================
;; Enable easy switching beetween .h and .cpp files
;; ============================================================
(global-set-key (kbd "C-x C-o") 'ff-find-other-file)
