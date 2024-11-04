(defun make-list-recursive (element size &optional (acc-list nil))
  (if (= size 0) acc-list
      (make-list-recursive element (1- size) (cons element acc-list))))

(defun make-list-iterative (element size &optional (acc-list nil))
  (dotimes (i size acc-list)
    (setf acc-list (cons element acc-list))))
