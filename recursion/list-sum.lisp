(defun sum-list-recursive (list-struct &optional (sum 0))
  (if (null list-struct) sum
      (sum-list-recursive (cdr list-struct) (+ sum (car list-struct)))))
