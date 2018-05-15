
((digest . "6720c67063dbb2705b9f3bf633cf8893") (undo-list (1376 . 1384) (1358 . 1366) (1281 . 1368) (241 . 284) (223 . 231) (151 . 233) (1138 . 1148) (1132 . 1133) (1075 . 1137) (1069 . 1070) (853 . 1074) (833 . 834) (151 . 852) ("
;;;### (autoloads nil \"git-commit\" \"git-commit.el\" (23290 43702 86621
;;;;;;  98000))
;;; Generated autoloads from git-commit.el

(defvar global-git-commit-mode t \"\\
Non-nil if Global-Git-Commit mode is enabled.
See the command `global-git-commit-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-git-commit-mode'.\")

(custom-autoload 'global-git-commit-mode \"git-commit\" nil)

(autoload 'global-git-commit-mode \"git-commit\" \"\\
Edit Git commit messages.
This global mode arranges for `git-commit-setup' to be called
when a Git commit message file is opened.  That usually happens
when Git uses the Emacsclient as $GIT_EDITOR to have the user
provide such a commit message.

\\(fn &optional ARG)\" t nil)

(defconst git-commit-filename-regexp \"/\\\\(\\\\(\\\\(COMMIT\\\\|NOTES\\\\|PULLREQ\\\\|TAG\\\\)_EDIT\\\\|MERGE_\\\\|\\\\)MSG\\\\|\\\\(BRANCH\\\\|EDIT\\\\)_DESCRIPTION\\\\)\\\\'\")

(autoload 'git-commit-setup-check-buffer \"git-commit\" \"\\


\\(fn)\" nil nil)

(autoload 'git-commit-setup \"git-commit\" \"\\


\\(fn)\" nil nil)

;;;***
" . -151) (t 23290 43702 154621 232000) (1279 . 1287) (239 . 282) (222 . 230) (151 . 231) (1138 . 1148) (1132 . 1133) (1075 . 1137) (1069 . 1070) (853 . 1074) (833 . 834) (151 . 852) 1 (t 23290 43702 94621 114000)))
