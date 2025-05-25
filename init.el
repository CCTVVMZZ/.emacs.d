(setq package-archives
'(("gnu" . "http://elpa.gnu.org/packages/")
  ("melpa" . "http://melpa.org/packages/")))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 200 :width normal)))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-save-query nil)
 '(TeX-source-correlate-method 'synctex)
 '(TeX-source-correlate-mode t)
 '(TeX-source-correlate-start-server t)
 '(TeX-view-program-selection
   '(((output-dvi has-no-display-manager) "dvi2tty")
     ((output-dvi style-pstricks) "dvips and gv") (output-dvi "xdvi")
     (output-pdf "PDF Tools") (output-html "xdg-open")))
 '(auto-save-timeout 600)
 '(column-number-mode t)
 '(coq-compile-before-require t)
 '(coq-load-path '((rec "/home/francoisnicolas/Documents/coq" "mycoq")))
 '(coq-prog-args '("-emacs"))
 '(coq-use-pg t)
 '(custom-enabled-themes '(tango-dark))
 '(desktop-save-mode t)
 '(evil-undo-system 'undo-tree)
 '(evil-want-fine-undo t)
 '(geiser-guile-binary "guile2.2")
 '(global-undo-tree-mode t)
 '(haskell-process-type 'stack-ghci)
 '(menu-bar-mode nil)
 '(mouse-wheel-scroll-amount '(2 ((shift) . 1) ((meta)) ((control) . text-scale)))
 '(package-selected-packages
   '(auctex command-log-mode company-coq evil geiser-guile haskell-mode
	    impatient-mode magit markdown-mode merlin nodejs-repl
	    pdf-tools php-mode proof-general rainbow-delimiters tuareg
	    undo-tree web-mode))
 '(proof-assistants '(coq))
 '(proof-prog-name "coqtop")
 '(proof-prog-name-guess t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(warning-suppress-log-types '((comp))))

(add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(add-hook 'coq-mode-hook 'undo-tree-mode)
(add-hook 'js-mode-hook
             (lambda ()
                (define-key js-mode-map (kbd "C-x C-e") 'nodejs-repl-send-last-expression)
                (define-key js-mode-map (kbd "C-c C-j") 'nodejs-repl-send-line)
                (define-key js-mode-map (kbd "C-c C-r") 'nodejs-repl-send-region)
                (define-key js-mode-map (kbd "C-c C-c") 'nodejs-repl-send-buffer)
                (define-key js-mode-map (kbd "C-c C-l") 'nodejs-repl-load-file)
                (define-key js-mode-map (kbd "C-c C-z") 'nodejs-repl-switch-to-repl)))

(require 'evil)
(evil-mode t)

(require 'pdf-tools)
(pdf-tools-install)

(fido-mode)



;; (use-package company-coq
;;   :ensure t
;;   :defer t
;;   :init
;;   (progn
;;     (add-hook 'coq-mode-hook #'company-coq-mode)
;;     )
;;   )
 ;; (unbind-key "<menu>" company-coq-map)

; (add-hook 'company-coq--keybindings-minor-mode '(fido-mode))
	  ;(lambda () (unbind-key "<menu>" company-coq-map)))
