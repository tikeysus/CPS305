(defun palindrome (word)
  (cond
    ((null word) t)
    ((or (= (length word) 1) (= (length word) 0)) t)
    (t
     (let ((len (length word)))
       (if (equal (aref word 0) (aref word (- len 1))) (palindrome (subseq word 1 (- len 1)))
           nil)))))

(defun list-palindrome (list-struct &optional (accumulator t))
  (cond
    ((equal accumulator nil) nil)
    ((or (= (length list-struct) 0) (null list-struct) (= (length list-struct) 1)) t)
    (t
     (let ((len (length list-struct)))
       (progn
         (setf accumulator (equal (first list-struct) (elt list-struct (- len 1))))
         (setf list-struct (subseq list-struct 1 (- len 1)))
         (list-palindrome list-struct accumulator))))))
