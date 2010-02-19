(add-to-list 'load-path "~/.emacs.d/")
(set-frame-parameter nil 'alpha '(85 75))

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

(add-hook 'ruby-mode-hook       'my-tab-fix)
 
(require 'color-theme)
(color-theme-initialize)
(color-theme-twilight)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(term-bind-key-alist (quote (("C-y" . term-paste))))
 '(term-default-bg-color "#000000")
 '(term-default-fg-color "#FFFFFF"))

(setq-default tab-width 2
              standard-indent 2
              indent-tabs-mode nil)

(global-set-key "\C-w" 'clipboard-kill-region)
(global-set-key "\M-w" 'clipboard-kill-ring-save)
(global-set-key "\C-y" 'clipboard-yank)

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(defalias 'yes-or-no-p 'y-or-n-p)

; Disable backups on files
(setq backup-inhibited t)
(setq auto-save-default nil)

; Remove startup screen
(setq inhibit-startup-screen t)

; Highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#222")

(defun gf (file_name)
  (interactive "sFile? ")
  (find-file (concat "~/.emacs.d/" file_name)))

(require 'magit)