;;; packages.el --- Fortran Layer packages File for Spacemacs
;; Copyright (c) 2015 Noah Evans
;;
;; Author: Noah Evans <noah.evans@gmail.com>
;; URL:  https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq fortran-packages
      `(
        fortpy
        flycheck
        f90-interface-browser
        helm-gtags
        ;; fortran snippets?
        ;; fortran indentation?
        ;; structured editing would be nice too
        ))

;; need to add better version of fortran tags to melpa


(defun fortran/init-fortpy ()
  (use-package fortpy
    :defer t
    ;; todo integrate the autocompletion
    ))

(defun fortran/post-init-helm-gtags ()
  (spacemacs/helm-gtags-define-keys-for-mode 'f90-mode)
  (spacemacs/helm-gtags-define-keys-for-mode 'fortran-mode))


(defun fortran/init-f90-interface-browser ()
  (use-package f90-interface-browser
    :defer t))

(evil-leader/set-key-for-mode 'f90-mode
  "ma" 'f90-beginning-of-subprogram
  "me" 'f90-end-of-subprogram
  "mh" 'f90-mark-subprogram
  "mn" 'f90-end-of-block
  "mp" 'f90-beginning-of-block
  "mq" 'f90-indent-subprogram
  "mP" 'f90-previous-block
  "mJ" 'f90-join-lines
  "mN" 'f90-next-block
  "mF" 'f90-fill-region
  ;; 'f90-break-line ?
  ;;
  ;; 'f90-insert-end
  ;; 'f90-comment-region
  ;"mn" 'f90-next-statement

  ;"mp" 'f90-previous-statement
  "m{" 'f90-next-block
  "m}" 'f90-previous-block

  )

(defun fortran/post-init-flycheck ()
  (add-to-hooks 'flycheck-mode '(f90-mode)))
;; I need to be able to handle fortran api lookup*
