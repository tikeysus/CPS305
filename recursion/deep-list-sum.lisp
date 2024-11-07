(defun deep-list-sum (list-struct)
  (cond
    ((null list-struct) 0)
    ((listp (car list-struct)) (+ (deep-list-sum (car list-struct))
                                   (deep-list-sum (rest list-struct))))
   (t (+ (car list-struct) (deep-list-sum (rest list-struct))))))

(defun tail (list-struct &optional (accumulator 0))
  (cond
    ((null list-struct) accumulator)
    ((listp (first list-struct)) (tail (rest list-struct) (+ accumulator (tail (first list-struct)))))
    ((numberp (first list-struct)) (tail (rest list-struct) (+ accumulator (first list-struct))))
    (t (tail (rest list-struct) accumulator))))
