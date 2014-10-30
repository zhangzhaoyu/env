(custom-set-variables
 '(show-paren-mode t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(menu-bar-mode nil)
 '(abbrev-mode t)
 '(auto-fill-mode t)
 '(visible-bell t)
 '(transient-mark-mode t);mark set highlight
 )

(custom-set-faces
 )

(put 'downcase-region 'disabled nil)
;;------------------------------------------------------------
(global-font-lock-mode t);highlight
(setq inhibit-startup-message t)
(setq auto-save-default nil)
(setq make-backup-files nil)
(global-linum-mode t) ;always show line numbers
(setq line-number-mode t)
(setq default-fill-column 80)
(setq default-major-mode 'text-mode)
(setq show-paren-style 'parentheses)
(setq x-select-enable-clipboard t);enable global clipboard

;; k&r coding style indentation

;; (add-hook 'c-mode-common-hook ( lambda() ( c-set-style "linux" ) ) )
;;(add-hook 'c++-mode-common-hook ( lambda() ( c-set-style "linux" ) ) )

(setq c-default-style "linux"
      c-basic-offset 4)
(setq c-basic-offset 4);reset table offset
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
;; (setq tab-stop-list ())
;; (setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40))
;;(setq c-tab-always-indent t)



;; -------------------------------------------------------------------------
                                        ;鼠标滚轮，默认的滚动太快，这里改为3行
(defun up-slightly () (interactive) (scroll-up 3))
(defun down-slightly () (interactive) (scroll-down 3))
(global-set-key [mouse-4] 'down-slightly)
(global-set-key [mouse-5] 'up-slightly)
;;------------------------------------------------------------
;; keyboard shortcuts setting
(setq-default compile-command "make")
(setq gdb-use-separate-io-buffer 1)
(global-set-key [f8] 'compile)
(global-set-key [f9] 'gdb)
(global-set-key [f11] 'speedbar)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-c =") 'hs-toggle-hiding)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-c C-f")'find-file-at-point)
(global-set-key (kbd "C-m") 'set-mark-command)
;(global-set-key (kbd "\r") 'newline-and-indent)


(setq kill-ring-max 200)
(fset 'yes-or-no-p 'y-or-n-p)
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
                                        ;(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'python-mode-hook 'hs-minor-mode)
(add-hook 'html-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'javascript-mode-hook 'hs-minor-mode)
(add-to-list 'load-path "/home/huangbin/.emacs.d/site-lisp/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/huangbin/.emacs.d/site-lisp/ac-dict")
(ac-config-default)
(require 'gyp)
;; (add-to-list 'load-path "/home/huangbin/.emacs.d/color-theme-6.6.0")
;; (require 'color-theme)
;; (color-theme-initialize)
;; (color-theme-classic)
