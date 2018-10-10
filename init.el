(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
					(not (gnutls-available-p))))
	   (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
	;; For important compatibility libraries like cl-lib
	(add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)


;; 何も考えず公式のREADMEからコピペすればいいコード
;; straight.el自身のインストールと初期設定を行ってくれる
(let ((bootstrap-file (concat user-emacs-directory "straight/repos/straight.el/bootstrap.el"))
      (bootstrap-version 3))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

(setq straight-use-package-by-default t)
(use-package init-loader)

;; ~/.emacs.d/init/ 以下のファイルを全部読み込む
(init-loader-load "~/.emacs.d/init")

(use-package powerline)
(defun powerline-my-theme ()
  "Setup the my mode-line."
  (interactive)
  (setq powerline-current-separator 'utf-8)
  (setq-default mode-line-format
                '("%e"
                  (:eval
                   (let* ((active (powerline-selected-window-active))
                          (mode-line (if active 'mode-line 'mode-line-inactive))
                          (face1 (if active 'mode-line-1-fg 'mode-line-2-fg))
                          (face2 (if active 'mode-line-1-arrow 'mode-line-2-arrow))
                          (separator-left (intern (format "powerline-%s-%s"
                                                          (powerline-current-separator)
                                                          (car powerline-default-separator-dir))))
                          (lhs (list (powerline-raw " " face1)
                                     (powerline-major-mode face1)
                                     (powerline-raw " " face1)
                                     (funcall separator-left face1 face2)
                                     (powerline-buffer-id nil )
                                     (powerline-raw " [ ")
                                     (powerline-raw mode-line-mule-info nil)
                                     (powerline-raw "%*")
                                     (powerline-raw " |")
                                     (powerline-process nil)
                                     (powerline-vc)
                                     (powerline-raw " ]")
                                     ))
                          (rhs (list (powerline-raw "%4l")
                                     (powerline-raw ":")
                                     (powerline-raw "%2c")
                                     (powerline-raw " | ")                                  
                                     (powerline-raw "%6p")
                                     (powerline-raw " ")
                                     )))
                     (concat (powerline-render lhs)
                             (powerline-fill nil (powerline-width rhs)) 
                             (powerline-render rhs)))))))

(defun make/set-face (face-name fg-color bg-color weight)
  (make-face face-name)
  (set-face-attribute face-name nil
                      :foreground fg-color :background bg-color :box nil :weight weight))
(make/set-face 'mode-line-1-fg "#282C34" "#EF8300" 'bold)
(make/set-face 'mode-line-2-fg "#AAAAAA" "#2F343D" 'bold)
(make/set-face 'mode-line-1-arrow  "#AAAAAA" "#3E4451" 'bold)
(make/set-face 'mode-line-2-arrow  "#AAAAAA" "#3E4451" 'bold)

(powerline-my-theme)

;;use helm
(require 'helm-config)
(helm-mode 1)
;;(define-key global-map (kbd "C-;") 'helm-mini)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)

;; helm-find-files
(define-key global-map (kbd "C-x C-f") 'helm-find-files)

;; tab 補完
(define-key helm-find-files-map (kbd "<tab>") 'helm-execute-persistent-action)



;; C-h バックスペース
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)

(global-set-key (kbd "M-x") 'helm-M-x)

(global-set-key (kbd "C-x C-r") 'helm-imenu)


;;load theme
(load-theme 'dracula t)

;;ace-jump-modeの設定
(require 'ace-jump-mode)
(setq ace-jump-mode-gray-background nil)
(setq ace-jump-word-mode-use-query-char nil)
(setq ace-jump-mode-move-keys
(append "asdfghjkl;:]qwertyuiop@zxcvbnm,." nil))
(global-set-key (kbd "C-:") 'ace-jump-word-mode)


;;;ruby関連
;;erbファイルはwebmodeで開く
(setq auto-mode-alist
      (append '(("\\.erb$" . web-mode))
              auto-mode-alist))


;;;rails関連
(require 'projectile)
(projectile-global-mode)
(require 'projectile-rails)
(add-hook 'projectile-mode-hook 'projectile-rails-on)


;; 非アクティブウィンドウの背景色を設定
(require 'hiwin)
(hiwin-activate)
(set-face-background 'hiwin-face "gray30")


(use-package js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(use-package typescript-mode)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)
;; activate auto-complete
(use-package auto-complete)
(global-auto-complete-mode t)

;; activate smooth-scroll
(require 'smooth-scroll)
(smooth-scroll-mode t)

;; activate undo-tree
(require 'undo-tree)
(global-undo-tree-mode t)
(global-set-key (kbd "M-/") 'undo-tree-redo)

(require 'undohist)
(undohist-initialize)

;; activate flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; disable mouse(without wheel)
;;(require ' disable-mouse)
;;(global-disable-mouse-mode)

;; エラー音をならなくする
(setq ring-bell-function 'ignore)


;;; 永続化を無視するファイル名の正規表現
(setq undohist-ignored-files
      '("/tmp/"))


;; keybind for magit
(global-set-key (kbd "C-x g") 'magit-status)


(add-to-list 'load-path "/some/path/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)


;; use C-h as a backspace key
(keyboard-translate ?\C-h ?\C-?)

(define-key global-map (kbd "C-z") 'undo)
(define-key global-map (kbd "C-j") 'newline)

;;use C-t as a change window
(define-key global-map (kbd "C-t") 'other-window)

;;add directry to load-path
(add-to-list 'load-path "~/.emacs.d./elisp")
(when(< emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacs.d/"))
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let((default-directory
	     (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
		(normal-top-level-add-subdirs-to-load-path))))))
(add-to-load-path "elisp")

;; show the date
(setq display-time-day-and-date t)

;; yasnippet.el----------------------------------
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/elpa/yasnippet-snippets-20180503.657/snippets"
        ))
(yas-global-mode 1)



;; スタートアップメッセージを表示させない
(setq inhibit-startup-message t)

;; ウィンドウを透明にする
;; アクティブウィンドウ／非アクティブウィンドウ（alphaの値で透明度を指定）
(add-to-list 'default-frame-alist '(alpha . (0.95 0.95)))


;; スペース、タブなどを可視化する
;;(global-whitespace-mode 1)

;; スクロールは１行ごとに
(setq scroll-conservatively 1)

;; language setting
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

;; C-kで行全体を削除する
(setq kill-whole-line t)

;; メニューバーを消す
(menu-bar-mode -1)

;; ツールバーを消す
(tool-bar-mode -1)

;; 列数を表示する
(column-number-mode t)

;; 行数を表示する
(global-linum-mode t)

;; カーソルの点滅をやめる
(set-cursor-color "orange")
(setq blink-cursor-interval 0.05)
;(setq blink-cursor-delay 1.0)
(blink-cursor-mode 0)
;; タブにスペースを使用する
(setq-default indent-tabs-mode 1)
(setq-default tab-width 4)

;; 改行コードを表示する
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;;parenmode
(show-paren-mode t)
;(setq show-paren-delay 3)
(setq show-paren-style 'expression)

;; バックアップファイルを作成させない
(setq make-backup-files nil)


(setq load-path (cons  "/usr/local/otp/lib/tools-<ToolsVer>/emacs"
                       load-path))
(setq erlang-root-dir "/usr/local/otp")
(setq exec-path (cons "/usr/local/otp/bin" exec-path))
(require 'erlang-start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("a4df5d4a4c343b2712a8ed16bc1488807cd71b25e3108e648d4a26b02bc990b3" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "eecacf3fb8efc90e6f7478f6143fd168342bbfa261654a754c7d47761cec07c8" "e9460a84d876da407d9e6accf9ceba453e2f86f8b86076f37c08ad155de8223c" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(provide 'init.el)

