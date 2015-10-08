#!/usr/bin/emacs --script
;;-*- mode: emacs-lisp;-*-

(require 'org)
(require 'htmlize)
(setq org-src-fontify-natively t)
(defun compile-org-file ()
  (let ((org-document-content "")
        this-read)
    (while (setq this-read (ignore-errors
                             (read-from-minibuffer "")))
      (setq org-document-content (concat org-document-content "\n" this-read)))

    (with-temp-buffer
      (org-mode)
      (insert org-document-content)
      (org-html-export-as-html nil nil nil t nil)
      (princ (buffer-string)))))
(compile-org-file)
