(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ))
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
