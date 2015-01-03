;; Set up package manager and initialize packages early
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(setq package-enable-at-startup nil)
(package-initialize)


;; Highlght parens using rainbow colors in every programming mode
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
;; Enable auto-fill in every programming language mode
(add-hook 'prog-mode-hook 'turn-on-auto-fill)
;; In C and C++, enable auto indenting
(add-hook 'c-mode-common-hook
	  '(lambda () (c-toggle-auto-state 1)))
;; This sets the brace style and indent width for C and C++
(setq-default c-default-style "stroustrup"
	      c-basic-offset 4)

;; Remap some keys
(global-set-key (kbd "<f1>") 'delete-other-windows)
(global-set-key (kbd "<f2>") 'compile)
(global-set-key (kbd "<f3>") 'next-error)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("0c311fb22e6197daba9123f43da98f273d2bfaeeaeb653007ad1ee77f0003037" "64581032564feda2b5f2cf389018b4b9906d98293d84d84142d90d7986032d33" "0e121ff9bef6937edad8dfcff7d88ac9219b5b4f1570fd1702e546a80dba0832" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
