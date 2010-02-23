(add-to-list 'load-path "~/.emacs.d/")
(set-frame-parameter nil 'alpha '(85 75))

; Twitter
(require 'twitter)
(autoload 'twitter-get-friends-timeline "twitter" nil t)
(autoload 'twitter-status-edit "twitter" nil t)
(global-set-key "\C-xt" 'twitter-get-friends-timeline)
(add-hook 'twitter-status-edit-mode-hook 'longlines-mode)

(require 'multi-term)
(setq multi-term-program "/bin/bash")

(defun indent-or-expand (arg)
  "Either indent according to mode, or expand the word preceding
point."
  (interactive "*P")
  (if (and
       (or (bobp) (= ?w (char-syntax (char-before))))
       (or (eobp) (not (= ?w (char-syntax (char-after))))))
      (dabbrev-expand arg)
    (indent-according-to-mode)))

(defun my-tab-fix ()
  (local-set-key [tab] 'indent-or-expand))

; Smart tab completion
(add-hook 'ruby-mode-hook       'my-tab-fix)

; Add the twilight theme (ala Textmate)
(require 'color-theme)
(color-theme-initialize)
(color-theme-twilight)

; Custom set term colors (black background, white text)
(custom-set-variables
 '(term-default-bg-color "#000000")
 '(term-default-fg-color "#FFFFFF"))

; Set tab width and standard indentation to 2 spaces
(setq-default tab-width 2
              standard-indent 2
              indent-tabs-mode nil)

; Global clipboard changes
(global-set-key "\C-w" 'clipboard-kill-region)
(global-set-key "\M-w" 'clipboard-kill-ring-save)
(global-set-key "\C-y" 'clipboard-yank)

; ANSI in terminals (shell)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

; Allows you to press 'y' or 'n' vs 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

; Disable backups on files
(setq backup-inhibited t)
(setq auto-save-default nil)

; Remove startup screen
(setq inhibit-startup-screen t)
(tool-bar-mode -1)

; Highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#222")

(require 'magit)

(ido-mode t)
(setq ido-enable-flex-matching t)
(defun Ido-find-file-in-tag-files ()
  (interactive)
  (save-excursion
    (let ((enable-recursive-minibuffers t)) (visit-tags-table-buffer))
    (find-file (expand-file-name
                (ido-completing-read "Project file: "
                                     (tags-table-files) nil t)))))

; Shortcut for find-file-in-project
(global-set-key (kbd "C-c t") 'Ido-find-file-in-tag-files)

; Shortcut for magit
(global-set-key (kbd "C-c m") 'magit-status)

; IBuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

; Transient mark mode (marked area highlighting)
(transient-mark-mode t)

; ORG mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)