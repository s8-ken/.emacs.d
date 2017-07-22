(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
	("melpa" . "http://melpa.org/packages/")
	("org" . "http://orgmode.org/elpa/")))

;; ;use helm
;; (require 'helm-config)
;; (helm-mode 1)
;; (define-key global-map (kbd "C-;") 'helm-mini)
;; (define-key global-map (kbd "M-y") 'helm-show-kill-ring)

;;load theme
(load-theme 'zenburn t)


;; activate undo-tree
(global-undo-tree-mode)

;; activate auto-complete
(global-auto-complete-mode)

;; activate smooth-scroll
(require 'smooth-scroll)
(smooth-scroll-mode t)

;; activate undo-tree
(require 'undo-tree)
(global-undo-tree-mode t)
(global-set-key (kbd "M-/") 'undo-tree-redo)

(require 'undohist)
(undohist-initialize)
;;; 永続化を無視するファイル名の正規表現
(setq undohist-ignored-files
      '("/tmp/"))


;; activate flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

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

;; describe colum-number
(column-number-mode t)

;; show the date
(setq display-time-day-and-date t)

;; yasnippet.el----------------------------------
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/elpa/yasnippet-20170717.1946/snippets"
        ))
(yas-global-mode 1)



;; スタートアップメッセージを表示させない
(setq inhibit-startup-message t)

;; ウィンドウを透明にする
;; アクティブウィンドウ／非アクティブウィンドウ（alphaの値で透明度を指定）
(add-to-list 'default-frame-alist '(alpha . (0.95 0.95)))


;; スペース、タブなどを可視化する
(global-whitespace-mode 0)

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
(setq blink-cursor-delay 1.0)
(blink-cursor-mode 1)
;; タブにスペースを使用する
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; 改行コードを表示する
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;;parenmode
(show-paren-mode t)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)
(set-face-background 'show-paren-match-face "blue")
(set-face-underline-p 'show-paren-match-face "Yellow")


;; バックアップファイルを作成させない
(setq make-backup-files nil)
