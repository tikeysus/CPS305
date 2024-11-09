(defun remove-int-duplicates (list-struct &optional (stack nil))  ;assumes integer inputs only
  (cond
    ((null list-struct) stack)
    ((num-in-stack stack (first list-struct)) (remove-int-duplicates (rest list-struct) stack))
    (t (progn
         (setf stack (append stack (list (first list-struct))))
         (remove-int-duplicates (rest list-struct) stack)))))


(defun num-in-stack (stack num)
  (let ((bool nil))
    (dolist (element stack bool)
      (if (= element num) (setf bool t)))))
