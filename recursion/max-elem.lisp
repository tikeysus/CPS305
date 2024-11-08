(defun max-elem (lst &optional (accumulator 0))
  (cond
    ((null lst) accumulator)
    (t (progn
         (if (< accumulator (first lst)) (setf accumulator (first lst)))
         (max-elem (rest lst) accumulator)))))
