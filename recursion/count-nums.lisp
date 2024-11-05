(defun count-nums-recursive (list-struct)
  (cond
    ((null list-struct) 0)
    ((typep (first list-struct) 'list)
     (+ (count-nums-recursive (first list-struct))
         (count-nums-recursive (rest list-struct))))
    (t (+ 1 (count-nums-recursive (rest list-struct))))))
