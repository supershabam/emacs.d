(require 'package)

; explicitly set our package sources overriding any defaults
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("org" . "http://orgmode.org/elpa/")))

; check signature unless the package itself doesn't have a sig
(setq package-check-signature 'allow-unsigned)

; on-demant package installation
(defun require-package (package)
  "Install given PACKAGE"
  (if (package-installed-p package)
      t
    (package-install package)))

(package-initialize)

(provide 'init-package)
