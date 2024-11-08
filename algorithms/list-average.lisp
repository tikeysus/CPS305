;Create a function called “average”. It takes in one argument, a list of integers. It should be the average of the group of integers.
;Using a dolist loop, iterate through your elements to sum them together. After that, you can divide the sum by the length of the list to get your average.

(defun average (list-struct)
  (let ((sum 0) (len (length list-struct)))
    (dolist (element list-struct (/ sum len))
      (setf sum (+ element sum)))))
