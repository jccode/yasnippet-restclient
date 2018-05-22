;;; yasnippet-restclient.el --- Yasnippets for restclient

(defvar restclient-snippets-root (file-name-directory (or load-file-name
                                                   (buffer-file-name))))

;;;###autoload
(defun restclient-snippets-initialize ()
  "Load restclient-snippets."
  (let ((snippets-dir (expand-file-name "snippets" restclient-snippets-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snippets-dir t))
    (yas-load-directory snippets-dir)))

;;;###autoload
(eval-after-load 'yasnippet
  '(restclient-snippets-initialize))

(require 'yasnippet)

(provide 'yasnippet-restclient)

