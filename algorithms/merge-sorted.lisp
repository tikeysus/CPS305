(defun merge-sorted (list1 list2 comparator) ;assumes two sorted lists as input
  (cond
    ((null list1) list2)
    ((null list2) list1)
    ((and (null list1) (null list2)) nil)
    (t
     (do ((stack (make-list 0)))
          ((or (null (first list1)) (null (first list2)))
           (progn
             (dolist (element list1)
               (setf stack (append stack (list element)))
               (pop list1))
             (dolist (element list2)
               (setf stack (append stack (list element)))
               (pop list2))
             stack))
       (if (funcall comparator (first list1) (first list2))
           (progn
             (setf stack (append stack (list (first list1))))
             (pop list1))
           (progn
             (setf stack (append stack (list (first list2))))
             (pop list2)))))))
