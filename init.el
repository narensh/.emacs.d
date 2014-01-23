;; fix the PATH variable
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo $PATH'")))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system (set-exec-path-from-shell-PATH))
;;(push "/usr/local/bin" exec-path)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)

(add-to-list 'load-path "~/.emacs.d/config")

(package-initialize)

(load "keys")
(load "autoloads")
(load "osx")
(load "rvm-help")
(load "editing")
(load "hooks")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(feature-use-rvm t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode t)
 '(js-indent-level 2)
 '(js2-auto-indent-p t)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-cleanup-whitespace t)
 '(js2-indent-on-enter-key t)
 '(rspec-use-rvm t)
 '(ruby-comment-column 96)
 '(safe-local-variable-values (quote ((enconing . utf-8) (erlang-indent-level . 4) (encoding . utf-8) (ruby-compilation-executable . "ruby") (ruby-compilation-executable . "ruby1.8") (ruby-compilation-executable . "ruby1.9") (ruby-compilation-executable . "rbx") (ruby-compilation-executable . "jruby") (whitespace-line-column . 80) (lexical-binding . t))))
 '(setq tab-width t)
 '(setq-default c-basic-offset)
 '(show-paren-mode t)
 '(standard-indent 2)
 '(tab-stop-list (quote (2 4 6 8 10 12 14 16 18 20 22 24 26 28 30)))
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(workgroups-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
'(default ((t (:inherit nil :stipple nil :background "#242424" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "apple" :family "Consolas")))))

(require 'puppet-mode)
(require 'rvm)
(require 'rspec-mode)
(require 'feature-mode)
(require 'yasnippet)
(require 'yaml-mode)
(require 'markdown-mode)
(require 'magithub)
(require 'autopair)
(require 'workgroups)
(require 'slim-mode)
(require 'ensime)
;;(require 'edts-start)
