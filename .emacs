
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(package-selected-packages (quote (slime markdown-mode solarized-theme))))
(load-theme 'solarized-dark)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; https://orgmode.org/worg/org-tutorials/orgtutorial_dto.html
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
;; https://github.com/emacs-evil/evil
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
;; https://www.emacswiki.org/emacs/UndoTree#toc2
(add-to-list 'load-path "~/.emacs.d/undo-tree")
(require 'undo-tree)
(global-undo-tree-mode)
;; https://github.com/emacs-evil/goto-chg.git
(add-to-list 'load-path "~/.emacs.d/goto-chg")
(require 'goto-chg)

(show-paren-mode 1)

; Extensions for ansi-term
; https://oremacs.com/2015/01/01/three-ansi-term-tips/
;; Use /bin/bash
(setq explicit-shell-file-name "/bin/bash")
;; Close termintal after quiting
(defun oleh-term-exec-hook ()
  (let* ((buff (current-buffer))
	 (proc (get-buffer-process buff)))
    (set-process-sentinel
     proc
     `(lambda (process event)
	     (if (string= event "finished\n")
		 (kill-buffer ,buff))))))
(add-hook 'term-exec-hook 'oleh-term-exec-hook)
;; Call Emacs yank with C-c C-y
(eval-after-load "ansi-term"
  '(define-key term-raw-map (kbd "C-c C-y") 'term-paste))
  

; LISP environment
(slime-setup '(slime-fancy slime-quicklisp slime-asdf))
(setq inferior-lisp-program "sbcl")
