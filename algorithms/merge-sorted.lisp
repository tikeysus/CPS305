(defun merge-sorted (list1 list2 comparator)
  (cond
    ((null list1) list2)
    ((null list2) list1)
    ((and (null list1) (null list2)) nil)
    ((funcall comparator 1 2) (merge-ascending list1 list2 comparator))
    (t (merge-descending list1 list2 comparator))))

(defun merge-ascending (list1 list2 comparator)
  (let ((stack (make-list 0)))
    (do () ((or (null list1) (null list2))
            (progn
              (dolist (element list1)
                (append stack (list element)))
              (dolist (element list2)
                (append stack (list element)))
              stack))
      (if (funcall comparator (first list1) (first list2))
          (progn
            (setf stack (append stack (list (first list1))))
            (pop list1))
          (progn
            (setf stack (append stack (list (first list2))))
            (pop list2))))))

(defun merge-descending (list1 list2 comparator)
  (let ((stack (make-list 0)))
    (do () ((or (null list1) (null list2))
            (progn
              (dolist (element list1)
                (push element stack))
              (dolist (element list2)
                (push element stack))
              stack))
      (if (not (funcall comparator (first list1) (first list2)))
          (progn
            (setf stack (push (first list1) stack))
            (pop list1))
          (progn
            (setf stack (push (first list2) stack))
            (pop list2))))))
