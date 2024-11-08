(defun merge-sorted (list1 list2 comparator) ;assumes two sorted lists as input
  (cond
    ((null list1) list2)
    ((null list2) list1)
    ((and (null list1) (null list2)) nil)
    (t
     (do ((stack (make-list 0)))
          ((or (null (first list1)) (null (first list2)))
           (progn ;return statement starts here after do loop is over
             (dolist (element list1)
               (push element stack)
               (pop list1))
             (dolist (element list2)
               (push element stack)
               (pop list2))
             (reverse stack)))
       (if (funcall comparator (first list1) (first list2))
           (progn
             (push (first list1) stack)
             (pop list1))
           (progn
             (push (first list2) stack)
             (pop list2)))))))
