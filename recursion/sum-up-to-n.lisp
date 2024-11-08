(defun sum-of-natural-nums (num &optional (accumulator 0))
  (if (= num 0) accumulator
      (sum-of-natural-nums (- num 1) (+ accumulator num))))
