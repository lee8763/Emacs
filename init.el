;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")


;; BASIC CUSTOMIZATION
;; --------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(set-default-font "consolas 14")
(global-linum-mode t) ;; enable line numbers globally

;; Set function to open init.el quickly
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; Binding this function to <F2>
(global-set-key (kbd "<f2>") 'open-init-file)


;; PYTHON CONFIGURATION
;; --------------------------------------


(elpy-enable)

;; For elpy
;;(setq elpy-rpc-python-command "C:/apps/Python34")
;; For interactive shell
;;(setq python-shell-interpreter "C:/apps/Python34")

;; init.el ends here
