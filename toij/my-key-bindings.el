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
