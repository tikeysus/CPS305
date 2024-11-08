;Create a function called “print-squares-of-3s”. The function takes one integer as an argument, y. 
;Using a do loop, start at 1 and increase by multiples of 3. Each time print out the square of that multiple. The stop condition should be when i2 > y. Finally, return the last i.


(defun print-square-of-3s (num)
  (do ((i 1 (* 3 i)))
      ((> (* i i) num) i)
    (print (* i i))))

