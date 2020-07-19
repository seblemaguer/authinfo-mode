;;; colored-authinfo-mode.el ---

;; Copyright 2015, 2020 Sébastien Le Maguer
;;
;; Author: Sébastien Le Maguer
;; Version: $Id: colored-authinfo-mode.el,v 0.0 2015/09/23 13:19:39 slemaguer Exp $
;; Keywords:
;; X-URL: not distributed yet

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary:

;;

;; Put this file into your load-path and the following into your ~/.emacs:
;;   (require 'colored-authinfo-mode)

;;; Code:

(setq auth-keywords
      '(("default\\|machine\\|login\\|password\\|account\\|macdef" . font-lock-keyword-face)))


(defun colored-authinfo-mode~parent-mode ()
  (if (version< "27" emacs-version)
      (define-derived-mode colored-authinfo-mode authinfo-mode "authinfo"
        "Major mode to edit authinfo files"
        (setq-local font-lock-defaults '(auth-keywords))
        (setq-local mode-name "authinfo")

        ;; Comment part
        (setq-local comment-start "#")
        (setq-local comment-end "")
        (font-lock-add-keywords nil '(("^#.*" . font-lock-comment-face)))

        ;; Disable String
        (setq-local font-lock-string-face nil))

    (define-derived-mode colored-authinfo-mode fundamental-mode "authinfo"
      "Major mode to edit authinfo files"
      (setq-local font-lock-defaults '(auth-keywords))
      (setq-local mode-name "authinfo")

      ;; Comment part
      (setq-local comment-start "#")
      (setq-local comment-end "")
      (font-lock-add-keywords nil '(("^#.*" . font-lock-comment-face)))

      ;; Disable String
      (setq-local font-lock-string-face nil))))

(colored-authinfo-mode~parent-mode)

(provide 'colored-authinfo-mode)
;;; colored-authinfo-mode.el ends here
