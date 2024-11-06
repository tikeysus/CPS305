(defun list-flattener (list-struct)
     (cond
       ((null list-struct) list-struct)
       ((typep (first list-struct) 'list)
        (append (list-flattener (first list-struct)) (list-flattener (rest list-struct))))
       (t (cons (first list-struct) (list-flattener (rest list-struct))))))
