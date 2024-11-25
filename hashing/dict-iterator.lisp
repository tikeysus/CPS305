(defparameter heroes (make-hash-table))

(loop for (key value) in '((superman 1938)
                           (donald-duck 1934)
                           (batman 1939))
      do (setf (gethash key heroes) value))

(defun epoch (start end)
  (let ((heroes-list '() ))
    (maphash (lambda (hero year)
               (when (and (<= year end) (>= year start))
                 (push (cons hero year) heroes-list)))
             heroes)
    heroes-list))
