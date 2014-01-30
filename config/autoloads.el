(add-to-list 'load-path "~/.emacs.d/external/rvm.el")
(add-to-list 'load-path "~/.emacs.d/external/rspec-mode")
(add-to-list 'load-path "~/.emacs.d/external/cucumber.el")
(add-to-list 'load-path "~/.emacs.d/external/yasnippet")
(add-to-list 'load-path "~/.emacs.d/external/yaml-mode")
(add-to-list 'load-path "~/.emacs.d/external/markdown-mode")
(add-to-list 'load-path "~/.emacs.d/external/magithub")
;;(add-to-list 'load-path "~/.emacs.d/external/edts")
(add-to-list 'load-path "~/.emacs.d/external/auto-complete")
(add-to-list 'load-path "~/.emacs.d/external/smart-tab")
(add-to-list 'load-path "~/.emacs.d/external/emacs-slim")
(add-to-list 'load-path "~/.emacs.d/external/maxframe.el")
(add-to-list 'load-path "~/.emacs.d/external/ensime/dist/elisp/")

(add-to-list 'auto-mode-alist '("\\.js" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.erl" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.erb" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\*.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\*.template$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\*.scss$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\*.feature$", org-mode))
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))
(add-to-list 'auto-mode-alist '("\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\.sbt$" . scala-mode))
(add-to-list 'auto-mode-alist '("\.gradle$" . groovy-mode))

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
(require 'textmate)

(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests")
(autoload 'yaml-mode "yaml-mode" "major mode for yaml")