(defun palindrome (word)
  (cond
    ((null word) t)
    ((or (= (length word) 1) (= (length word) 0)) t)
    (t
     (let ((len (length word)))
       (if (equal (aref word 0) (aref word (- len 1))) (palindrome (subseq word 1 (- len 1)))
           nil)))))
