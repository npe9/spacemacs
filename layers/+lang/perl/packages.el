(setq perl-packages
      '(
        ;;company
        ;;company-perl
        ;;flycheck
        cperl-mode
        flycheck-perl6
        flymake-perlcritic
        helm-perldoc
        lang-refactor-perl
        perl-completion
        perl6-mode
        perlbrew
        ;;starter-kit-perl
        ))

(defalias 'perl-mode 'cperl-mode)

(defun perl/init-cperl-mode ()
    (use-package cperl-mode
      :defer t
      :init
      (progn
        (spacemacs/set-leader-keys-for-major-mode 'cperl-mode
          ;;"'"  'python-start-or-switch-repl
          "cc" 'spacemacs/perl-execute-file
          "cC" 'spacemacs/perl-execute-file-focus
          "db" 'spacemacs/perl-toggle-breakpoint
          "ri" 'spacemacs/perl-remove-unused-imports
          "sB" 'perl-shell-send-buffer-switch
          "sb" 'perl-shell-send-buffer
          "sF" 'perl-shell-send-defun-switch
          "sf" 'perl-shell-send-defun
          "si" 'perl-start-or-switch-repl
          "sR" 'perl-shell-send-region-switch
          "sr" 'perl-shell-send-region ""
;; I also want perl critic
          ))))

(defun perl/init-flycheck ()
  (use-package flycheck
    :defer t))

(defun perl/init-lang-refactor-perl ()
  (use-package lang-refactor-perl
    :defer t))

(defun perl/init-perl-completion ()
  (use-package perl-completion
    :defer t))


(defun perl/init-perl6-mode ()
  (use-package perl6-mode
    :defer t))


(defun perl/init-perlbrew ()
  (use-package perlbrew
    :defer t))



(defun perl/init-flycheck-perl6 ()
  (use-package flycheck-perl6
    :defer t))

(defun perl/init-flymake-perlcritic ()
  (use-package flymake-perlcritic
    :defer t))

(defun perl/init-lang-refactor-perl ()
  (use-package flymake-lang-refactor-perl
    :defer t))

(defun perl/init-helm-perldoc ()
  (use-package helm-perldoc
    :defer t
    :init
    ;; This block executes before the package has been loaded
    :config
    ;; This block executes after the package has been loaded
    ))

(defun perl/init-flymake-perlcritic ()
  (use-package flymake-perlcritic
    :defer t
    :init
    ;; This block executes before the package has been loaded
    :config
    ;; This block executes after the package has been loaded
    ))

