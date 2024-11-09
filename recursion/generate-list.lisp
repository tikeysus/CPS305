;Create a tail recursive function called “generate-list”. It should take two integers, start and end, and return a list of integers from start to end (inclusive).

(defun generate-list (start end &optional (accumulator ()))
  (cond
    ((> start end) accumulator)
    (t (progn
         (setf accumulator (append accumulator (list start)))
         (generate-list (incf start) end accumulator)))))
