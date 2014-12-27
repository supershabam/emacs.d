(let ((minver 24))
  (unless (>= emacs-major-version minver)
    (error "Your emacs literally can't even")))

(unless (executable-find "gpg")
  (error "How about you install gpg to check some package signatures, mmmk?"))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

; don't make backups plz
(setq make-backup-files nil)
; let me live my life menu bar
(menu-bar-mode -1)

(require 'init-package)
(require 'init-helm)
(require 'init-projectile)
(require 'init-evil)
(require 'init-go)
