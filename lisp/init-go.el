(require-package 'go-mode)

(defun my-go-mode-hook ()
  (linum-mode 1)
  (add-hook 'before-save-hook 'gofmt-before-save)
  (local-set-key (kbd "M-.") 'godef-jump))

(add-hook 'go-mode-hook 'my-go-mode-hook)

(provide 'init-go)
