;; General

(global-set-key "\M-#" 'calc)
(global-set-key "\M-`" 'ff-find-other-file)
(global-set-key "\C-c1" 'find-grep-dired)
(global-set-key "\C-c2" 'grep-find)
(global-set-key "\C-z" 'undo)
(global-set-key [(control tab)] 'next-multiframe-window)
(global-set-key [(control shift iso-lefttab)] 'previous-multiframe-window)
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-cc" 'jao-copy-line)
(global-set-key "\C-\M-w" 'my-mark-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
(global-set-key "\C-j" 'newline)
(global-set-key (kbd "C-x C-r") 'find-alternative-file-with-sudo)
(global-set-key [f4] 'revert-buffer)
(global-set-key [f5] 'bookmark-set)
(global-set-key [f6] 'bookmark-jump)
(global-set-key (kbd "TAB") 'indent-according-to-mode)
(global-set-key [backspace] 'delete-empty-pair)
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "M-SPC") 'set-mark-command)

;; make cursor movement keys under right hand's home-row.
(global-set-key (kbd "M-j") 'backward-char) ; was indent-new-comment-line
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-i") 'previous-line) ; was tab-to-tab-stop
(global-set-key (kbd "M-k") 'next-line) ; was kill-sentence

;;; WINDOW SPLITING
(global-set-key (kbd "M-0") 'delete-window) ; was digit-argument
(global-set-key (kbd "M-1") 'delete-other-windows) ; was digit-argument
(global-set-key (kbd "M-2") 'split-window-vertically) ; was digit-argument
(global-set-key (kbd "M-3") 'split-window-horizontally) ; was digit-argument
(global-set-key (kbd "M-o") 'other-window) ; was prefix

(global-set-key (kbd "C-<left>") 'previous-user-buffer)
(global-set-key (kbd "C-<right>") 'next-user-buffer)
(global-set-key (kbd "<f9>") 'kill-this-buffer) ; Close file

;; Org
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

;; Quod Libet
(global-set-key [f7] 'quodlibet-play)
(global-set-key [f8] 'quodlibet-pause)
(global-set-key [f9] 'quodlibet-prev)
(global-set-key [f10] 'quodlibet-next)
(global-set-key [f11] 'quodlibet-volume-down)
(global-set-key [f12] 'quodlibet-volume-up)

;; TextMate inspired bindings
(global-set-key (kbd "M-RET") 'insert-line-below)
(global-set-key (kbd "M-S-<return>") '(lambda ()
                                   (interactive)
                                   (previous-line)
                                   (insert-line-below)))
(global-set-key [(control shift k)] 'kill-whole-line)
(global-set-key [(control shift d)] 'duplicate-line)
(global-set-key [(control shift l)] 'mark-line)

(global-set-key "\C-xgf" 'textmate-goto-file)
(global-set-key "\C-xgs" 'textmate-goto-symbol)

;; TODO check if w3m is available first? or move to site file
(global-set-key (kbd "C-x w") 'w3m)
(global-set-key "\C-xh" 'view-url)
(global-set-key "\C-cT" 'twittering-update-status-interactive)

(provide 'my-bindings)
