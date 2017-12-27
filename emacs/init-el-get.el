(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(custom-set-variables
 '(el-get-verbose t))
(add-to-list 'el-get-recipe-path (locate-user-emacs-file "el-get-recipes"))

;; setup
(el-get-bundle emacs-jp/init-loader)
(el-get-bundle purcell/exec-path-from-shell)

;; input method
(when (executable-find "mozc_emacs_helper")
  (el-get-bundle ccc)
  (el-get-bundle mozc)
  (el-get-bundle d5884/mozc-popup
    :depends popup))

;; search
(when (executable-find "cmigemo")
  (el-get-bundle migemo))
(el-get-bundle anzu)

;; cursor jump
(el-get-bundle goto-chg)
(el-get-bundle abo-abo/avy)

;; undo
;; (el-get-bundle undo-tree)
(el-get-bundle emacsmirror/undo-tree)

;; theme
(el-get-bundle powerline)
(el-get-bundle color-theme-sanityinc-tomorrow)

;; buffer
(el-get-bundle ibukanov/pc-bufsw (pc-bufsw-default-keybindings))
(el-get-bundle popwin)

;; perspeen (multi workspaces)
(el-get-bundle seudut/perspeen
  :features perspeen
  (setq perspeen-use-tab t)
  (perspeen-mode))

;; helm
(el-get-bundle helm)
;; helm plugins
(el-get-bundle helm-swoop)
(el-get-bundle helm-descbinds)
(el-get-bundle helm-gtags)
(el-get-bundle helm-ag)
(el-get-bundle jimo1001/helm-perspeen)

;; company
(el-get-bundle company-mode/company-mode :name company-mode)

;; yasnippet
(el-get-bundle yasnippet)

;; flycheck
(el-get-bundle flycheck)
(el-get-bundle flycheck-pos-tip)
(el-get-bundle flycheck-irony)

;; irony-mode
(el-get-bundle irony-mode)
(el-get-bundle company-irony)

;; C/C++
(el-get-bundle cmake-mode)

;; python
(el-get-bundle syohex/emacs-company-jedi
  :name company-jedi
  :depends-on (jedi-core company-mode))

;; tex
(el-get-bundle yatex)
(el-get-bundle latex-math-preview
  :type git
  :url "https://gitlab.com/latex-math-preview/latex-math-preview.git")

;; markdown
(el-get-bundle markdown-mode)

;; magit
(el-get-bundle magit)

;; rtags
(el-get-bundle rtags)

;; smartrep
(el-get-bundle myuhe/smartrep.el)

