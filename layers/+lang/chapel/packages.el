;;; packages.el --- C/C++ Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq chapel-packages
      '(
        chapel-mode
        ;; disaster
        ;; does chapel use cmake?
        ;;cmake-mode
        ;;gdb-mi
        ;;ggtags
        ;;helm-cscope
        ;;helm-gtags
        ;;semantic
        ;;srefactor
        ;;stickyfunc-enhance
        ;;ycmd
        ;;xcscope
        ))

(defun chapel/init-chapel-mode ()
  (use-package chapel-mode
    :defer t
    :init
    :config
    (progn
      (require 'compile)
      ;;(chapel-toggle-auto-newline 1)
      (spacemacs/set-leader-keys-for-major-mode 'chapel-mode
        "ga" 'projectile-find-other-file
        "gA" 'projectile-find-other-file-other-window)
      )))
