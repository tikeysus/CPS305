(defun count-nums-recursive (list-struct)
  (cond
    ((null list-struct) 0)
    ((typep (first list-struct) 'integer) 1)
    (t (+ (count-nums-recursive (first list-struct))
           (count-nums-recursive (rest list-struct))))))
