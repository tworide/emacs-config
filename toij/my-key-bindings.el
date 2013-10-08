(global-set-key (kbd "<f7>") 'magit-status)

;; ============================================================
;; Enable opening of .h files in c++ mode
;; ============================================================
(global-set-key (kbd "<f12>") 'compile)

(setq auto-mode-alist (cons '("\.cl$" . c-mode) auto-mode-alist))


(delete-selection-mode 1)


(global-set-key (kbd "C-x C-b") 'ibuffer)

;; ============================================================
;; Effective switching beetween buffer windows
;; ============================================================
(global-set-key [M-left] 'windmove-left)          ; move to left windnow
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to downer window


;;;;  To have the last used TAG be the default value (when no current-token is found (when cursor is not on a word))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
;; (defvar gtags-last-token nil
;;   "Current buffer.")
 
;; (defun gtags-find-tag2 (&optional other-win)
;;   "Input tag name and move to the definition."
;;   (interactive)
;;   (let (tagname prompt input)
;;     (setq tagname (gtags-current-token))
;;     (if (equal nil tagname)
;; 	(setq tagname gtags-last-token))
;;     (if tagname
;;       (setq prompt (concat "Find tag: (default " tagname ") "))
;;      (setq prompt "Find tag: "))
;;     (setq input (completing-read prompt 'gtags-completing-gtags
;;                   nil nil nil gtags-history-list))
;;     (if (not (equal "" input))
;;       (setq tagname input))
;;     (setq gtags-last-token tagname)
;;     (gtags-push-context)
;;     (gtags-goto-tag tagname "" other-win)))
 
;; ;;;;;;; Key bindings
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (global-set-key "\M-," 'ww-next-gtag)      ;; M-; cycles to next result, after doing M-. C-M-. or C-M-,
;; (global-set-key "\M-*" 'gtags-pop-stack)   ;; M-, cycles to next result, after doing M-. C-M-. or C-M-,
;; (global-set-key "\M-." 'gtags-find-tag2)    ;; M-. finds tag
;; (global-set-key [(control meta .)] 'gtags-find-rtag)   ;; C-M-. find all references of tag
;; (global-set-key [(control meta ,)] 'gtags-find-symbol) ;; C-M-, find all usages of symbol.
