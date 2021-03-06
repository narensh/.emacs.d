(when window-system
  ;; toggle menu-bar visibility
  (global-set-key (kbd "<f11>") 'scroll-bar-mode)
  (global-set-key (kbd "<f12>") 'menu-bar-mode)
)

;; Unhook suspend
(global-unset-key (kbd "C-x C-z"))
(global-unset-key (kbd "C-z"))

;; Font size
(define-key global-map (kbd "s-+") 'text-scale-increase)
(define-key global-map (kbd "s--") 'text-scale-decrease)

;; Fix forward-delete on X11 on OS X
(global-set-key [delete] 'delete-forward-char)

(global-set-key (kbd "C-/") 'comment-dwim)

;; Nagivation
(global-set-key (kbd "C-l") 'goto-line)
(global-set-key (kbd "C-S-v") 'scroll-down)
(global-set-key (kbd "C-v") 'scroll-up)
(global-set-key (kbd "C-<home>") "\M-<")
(global-set-key (kbd "C-<end>") "\M->")

;; Newlines
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-j") 'newline)

;; TODO - on a terminal, need a suspend key
(global-set-key (kbd "C-z") 'undo)

(global-set-key (kbd "C-f") 'find-file)
(global-set-key (kbd "C-t") 'projectile-find-file) ; Like TextMate
(global-set-key (kbd "C-S-s")  #'helm-ag)

;;; Fixes for Cocoa
;; Match X11 version
(global-set-key (kbd "<home>") 'move-beginning-of-line)
(global-set-key (kbd "<end>") 'move-end-of-line)

;; Match other Cocoa apps
(global-set-key (kbd "<s-left>") 'move-beginning-of-line)
(global-set-key (kbd "<s-right>") 'move-end-of-line)
(global-set-key (kbd "<s-up>") 'beginning-of-buffer)
(global-set-key (kbd "<s-down>") 'end-of-buffer)

(global-set-key (kbd "M-]") 'next-buffer)
(global-set-key (kbd "M-[") 'previous-buffer)

(global-set-key (kbd "C-c r") 'revert-buffer)

(defun kill-current-buffer ()
  "Kills the current buffer"
  (interactive)
  (kill-buffer (buffer-name)))
(global-set-key (kbd "C-x C-k") 'kill-current-buffer)

(defun nuke-all-buffers ()
  "Kill all buffers, leaving *scratch* only"
  (interactive)
  (mapcar (lambda (x) (kill-buffer x))
          (buffer-list))
  (delete-other-windows))
(global-set-key (kbd "C-x C-S-k") 'nuke-all-buffers)
