(defun min-val (arr)
  (let ((min (aref arr 0))) ;guaranteed to not have an empty array as input 
    (dotimes (i (length arr) min)
      (if (< (aref arr i) min) (setf min (aref arr i))))))

(defun max-val (arr)
  (let ((max (aref arr 0)))
    (dotimes (i (length arr) max)
      (if (> (aref arr i) max) (setf max (aref arr i))))))

(defun average (arr)
  (let ((sum 0) (len (length arr)))
    (dotimes (i len (/ sum len))
      (setf sum (+ sum (aref arr i))))))

(defun sum (arr)
  (let ((sum 0))
    (dotimes (i (length arr) sum)
      (setf sum (+ sum (aref arr i))))))

(defun median (arr)
  (setf arr (sort arr #'<))
  (cond
    ((= (mod (length arr) 2) 1) (aref arr (floor (length arr) 2)))
    ((= (mod (length arr) 2) 0) (/ (+
                                       (aref arr (floor (length arr) 2))
                                       (aref arr (- (floor (length arr) 2) 1)))
                                   2))))

(defun array-stats (arr)
  (let ((lst (make-array 5)))
    (progn
    (setf (aref lst 0) (min-val arr))
    (setf (aref lst 1) (max-val arr))
    (setf (aref lst 2) (average arr))
    (setf (aref lst 3) (sum arr))
    (setf (aref lst 4) (median arr)))
    lst))
