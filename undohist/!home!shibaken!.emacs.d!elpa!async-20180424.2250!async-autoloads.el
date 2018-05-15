
((digest . "d2314d06af61b53bf004a8413a336b33") (undo-list (4778 . 4786) (4748 . 4756) (4677 . 4770) ("
;;;### (autoloads nil nil (\"async-pkg.el\" \"smtpmail-async.el\") (23290
;;;;;;  43703 562930 526000))

;;;***
" . -4677) (4669 . 4677) (3685 . 3729) (3660 . 3668) (3593 . 3677) (4525 . 4533) (4505 . 4506) (4407 . 4524) (4387 . 4388) (4285 . 4406) (4265 . 4266) (4165 . 4284) (4145 . 4146) (4051 . 4164) (4031 . 4032) (3593 . 4050) ("
;;;### (autoloads nil \"dired-async\" \"dired-async.el\" (23290 43703
;;;;;;  526623 959000))
;;; Generated autoloads from dired-async.el

(defvar dired-async-mode nil \"\\
Non-nil if Dired-Async mode is enabled.
See the command `dired-async-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dired-async-mode'.\")

(custom-autoload 'dired-async-mode \"dired-async\" nil)

(autoload 'dired-async-mode \"dired-async\" \"\\
Do dired actions asynchronously.

\\(fn &optional ARG)\" t nil)

(autoload 'dired-async-do-copy \"dired-async\" \"\\
Run ‘dired-do-copy’ asynchronously.

\\(fn &optional ARG)\" t nil)

(autoload 'dired-async-do-symlink \"dired-async\" \"\\
Run ‘dired-do-symlink’ asynchronously.

\\(fn &optional ARG)\" t nil)

(autoload 'dired-async-do-hardlink \"dired-async\" \"\\
Run ‘dired-do-hardlink’ asynchronously.

\\(fn &optional ARG)\" t nil)

(autoload 'dired-async-do-rename \"dired-async\" \"\\
Run ‘dired-do-rename’ asynchronously.

\\(fn &optional ARG)\" t nil)

;;;***
" . -3593) (3585 . 3593) (2496 . 2543) (2466 . 2474) (2399 . 2488) (3433 . 3441) (3422 . 3423) (3266 . 3432) (3246 . 3247) (2609 . 3265) (2577 . 2578) (2399 . 2608) ("
;;;### (autoloads nil \"async-bytecomp\" \"async-bytecomp.el\" (23290
;;;;;;  43703 538623 983000))
;;; Generated autoloads from async-bytecomp.el

(autoload 'async-byte-recompile-directory \"async-bytecomp\" \"\\
Compile all *.el files in DIRECTORY asynchronously.
All *.elc files are systematically deleted before proceeding.

\\(fn DIRECTORY &optional QUIET)\" nil nil)

(defvar async-bytecomp-package-mode nil \"\\
Non-nil if Async-Bytecomp-Package mode is enabled.
See the command `async-bytecomp-package-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `async-bytecomp-package-mode'.\")

(custom-autoload 'async-bytecomp-package-mode \"async-bytecomp\" nil)

(autoload 'async-bytecomp-package-mode \"async-bytecomp\" \"\\
Byte compile asynchronously packages installed with package.el.
Async compilation of packages can be controlled by
`async-bytecomp-allowed-packages'.

\\(fn &optional ARG)\" t nil)

(autoload 'async-byte-compile-file \"async-bytecomp\" \"\\
Byte compile Lisp code FILE asynchronously.

Same as `byte-compile-file' but asynchronous.

\\(fn FILE)\" t nil)

;;;***
" . -2399) (2391 . 2399) (146 . 255) (2272 . 2282) (2233 . 2234) (565 . 2271) (515 . 516) (146 . 564) ("
;;;### (autoloads nil \"async\" \"async.el\" (23290 43703 542623 990000))
;;; Generated autoloads from async.el

(autoload 'async-start-process \"async\" \"\\
Start the executable PROGRAM asynchronously.  See `async-start'.
PROGRAM is passed PROGRAM-ARGS, calling FINISH-FUNC with the
process object when done.  If FINISH-FUNC is nil, the future
object will return the process object when the program is
finished.  Set DEFAULT-DIRECTORY to change PROGRAM's current
working directory.

\\(fn NAME PROGRAM FINISH-FUNC &rest PROGRAM-ARGS)\" nil nil)

(autoload 'async-start \"async\" \"\\
Execute START-FUNC (often a lambda) in a subordinate Emacs process.
When done, the return value is passed to FINISH-FUNC.  Example:

    (async-start
       ;; What to do in the child process
       (lambda ()
         (message \\\"This is a test\\\")
         (sleep-for 3)
         222)

       ;; What to do when it finishes
       (lambda (result)
         (message \\\"Async process done, result should be 222: %s\\\"
                  result)))

If FINISH-FUNC is nil or missing, a future is returned that can
be inspected using `async-get', blocking until the value is
ready.  Example:

    (let ((proc (async-start
                   ;; What to do in the child process
                   (lambda ()
                     (message \\\"This is a test\\\")
                     (sleep-for 3)
                     222))))

        (message \\\"I'm going to do some work here\\\") ;; ....

        (message \\\"Waiting on async process, result should be 222: %s\\\"
                 (async-get proc)))

If you don't want to use a callback, and you don't care about any
return value from the child process, pass the `ignore' symbol as
the second argument (if you don't, and never call `async-get', it
will leave *emacs* process buffers hanging around):

    (async-start
     (lambda ()
       (delete-file \\\"a remote file on a slow link\\\" nil))
     'ignore)

Note: Even when FINISH-FUNC is present, a future is still
returned except that it yields no value (since the value is
passed to FINISH-FUNC).  Call `async-get' on such a future always
returns nil.  It can still be useful, however, as an argument to
`async-ready' or `async-wait'.

\\(fn START-FUNC &optional FINISH-FUNC)\" nil nil)

;;;***
" . -146) (t 23290 43703 654624 213000) (4781 . 4789) (4750 . 4758) (4671 . 4773) (3687 . 3731) (3662 . 3670) (3595 . 3679) (4527 . 4535) (4507 . 4508) (4409 . 4526) (4389 . 4390) (4287 . 4408) (4267 . 4268) (4167 . 4286) (4147 . 4148) (4053 . 4166) (4033 . 4034) (3595 . 4052) (2392 . 2400) (146 . 256) (2272 . 2282) (2233 . 2234) (565 . 2271) (515 . 516) (146 . 564) (1333 . 1341) (244 . 291) (213 . 221) (146 . 236) (1180 . 1188) (1169 . 1170) (1013 . 1179) (993 . 994) (356 . 1012) (324 . 325) (146 . 355) 1 (t 23290 43703 550624 6000)))
