;Create a recursive function called “list-slice” that takes a list, a start index, and an end index. It should return a new list with all the elements starting at the start index (inclusive) and ending with the end index (exclusive) from the given list.

(defun list-slice (list-struct start end &optional (accumulator nil) (dummy-var start) (count 0))
  (cond
    ((or (= start end) (> start end)) accumulator)
    ((= dummy-var end) accumulator)
    ((null (first list-struct)) accumulator)
    ((not (= start count))
     (list-slice (rest list-struct) start end accumulator dummy-var (incf count)))
    (t (progn
         (setf accumulator (append accumulator (list (first list-struct))))
         (incf dummy-var)
         (list-slice (rest list-struct) start end accumulator dummy-var count)))))
