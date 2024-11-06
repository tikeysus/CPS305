(defun non-tail (list-struct)
  (if (null list-struct) list-struct
      (append (non-tail (rest list-struct)) (list (first list-struct)))))

(defun tail (list-struct &optional (accumulator nil))
  (if (null list-struct) accumulator
      (tail (rest list-struct) (cons (first list-struct) accumulator))))
