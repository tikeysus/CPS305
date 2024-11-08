(defun factorial (num &optional (accumulator 1))
  (cond
    ((< num 0) "Invalid Input")
    ((= num 1) accumulator)
    ((= num 0) 1)
    (t (factorial (- num 1) (* accumulator num)))))

(defun fact-list (lst)
  (let ((fact-list (make-list 0)))
    (dolist (element lst fact-list)
      (setf fact-list (append fact-list (list (factorial element)))))))
