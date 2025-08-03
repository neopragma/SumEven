#!/opt/homebrew/bin/clisp

(defun sum-even-numbers (start end)
  "Return the sum of even numbers from START to END using reduce."
  (reduce #'+
          (remove-if-not #'evenp (loop for x from start to end collect x))))

(defun main ()
  (let ((sum (sum-even-numbers 0 100)))
    (format t "Sum of even numbers from 0 to 100 is: ~A~%" sum))
  (quit))

(main)
