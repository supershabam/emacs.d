(let ((minver 24))
  (unless (>= emacs-major-version minver)
    (error "Your emacs literally can't even")))

(unless (executable-find "gpg")
  (error "How about you install gpg to check some package signatures, mmmk?"))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq make-backup-files nil)

(require 'init-package)
