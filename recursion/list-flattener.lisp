
(defun list-flattener (list-struct &optional (accumulator nil))
  (cond
    ((null list-struct) accumulator)
    ((listp (first list-struct)) (list-flattener (first list-struct) accumulator))
    (t (list-flattener (rest list-struct) (append accumulator (list (first list-struct)))))))
