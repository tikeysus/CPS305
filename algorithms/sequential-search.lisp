(defun sequential-search (array element)
  (dotimes (i (length array) nil)
    (when (equal (aref array i) element) (return t))))
