; first, declare repositories
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))

;; Init the package facility
;; (require 'package)
(package-initialize)
(package-refresh-contents) ;; refreshing packages is time-consuming and should be done on demand

;; Declare packages
(setq mes-super-packages
      '(magit
	evil
	pdf-tools
	auctex
	haskell-mode
	php-mode
	markdown-mode
	undo-tree)
      )

;; Iterate on packages and install missing ones
(dolist (pkg mes-super-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))
