(defun binary-search (array element)
                                        ;note that array must be sorted
  (do ()   
      ((= (length array) 0) (return nil))
    (let* ((len (length array))
           (middle (floor len 2))
           (middle-el (aref array middle)))
      (cond
        ((equal middle-el element) (return t))
        ((< middle-el element)
         (setf array (subseq array middle)))
        ((and (= len 1) (not (equal (aref array 0) element))) (return nil))
        (t (setf array (subseq array 0 middle)))))))
