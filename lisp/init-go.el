(require-package 'go-mode)
(require-package 'company)
(require-package 'company-go)

(defun my-go-mode-hook ()
  (linum-mode 1)
  (add-hook 'before-save-hook 'gofmt-before-save)
  (local-set-key (kbd "M-.") 'godef-jump)
  (set (make-local-variable 'company-backends '(company-go)))
  (company-mode))

(add-hook 'go-mode-hook 'my-go-mode-hook)

(provide 'init-go)
