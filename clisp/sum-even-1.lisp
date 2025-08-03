#!/opt/homebrew/bin/clisp

(defun main ()
  (format t "Sum of even numbers from 0 to 100: ~A~%"
          (loop for x from 0 to 100
                when (evenp x)
                sum x))
  (quit))

(main)