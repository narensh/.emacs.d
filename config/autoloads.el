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
(add-to-list 'auto-mode-alist '("\\.styl$" . stylus-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

(require 'yasnippet)
(require 'autopair)
(require 'workgroups)
(require 'textmate)
