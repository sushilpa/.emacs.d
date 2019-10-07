(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")
			 ))
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(package-initialize)

;; Make sure that `use-package' is installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  (setq use-package-verbose t)
  (setq use-package-always-ensure t)
  (require 'use-package)
  )

(require 'org)
(org-babel-load-file (expand-file-name (concat
					user-emacs-directory "config.org")))
