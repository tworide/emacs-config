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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Sublime Text 2 Themes (Supported by >24) ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; (load-theme 'hickey t)

;; (require 'color-theme)

;; (require 'zenburn)
;; (color-theme-zenburn)

;; ============================================================
;; Enable easy switching beetween .h and .cpp files
;; ============================================================
(global-set-key (kbd "C-x C-o") 'ff-find-other-file)

(setq load-path (cons (expand-file-name "/dir/with/cmake-mode") load-path))
(require 'cmake-mode)
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                ("\\.cmake\\'" . cmake-mode))
              auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Activate RefTex and wire it into AucTex ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   
(add-hook 'latex-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; AucTeX configurations ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master "main")
(setq TeX-PDF-mode t)
(setq TeX-source-correlate-mode t)

(add-hook 'LaTeX-mode-hook 'flyspell-mode nil)

(require 'dbus)
(defun th-evince-sync (file linecol)
  (let ((buf (get-buffer file))
        (line (car linecol))
        (col (cadr linecol)))
    (if (null buf)
        (message "Sorry, %s is not opened..." file)
      (switch-to-buffer buf)
      (goto-line (car linecol))
      (unless (= col -1)
        (move-to-column col)))))
(when (and
       (eq window-system 'x)
       (fboundp 'dbus-register-signal))
  (dbus-register-signal
   :session nil "/org/gnome/evince/Window/0"
   "org.gnome.evince.Window" "SyncSource"
   'th-evince-sync))
