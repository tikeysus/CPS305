(defun item-count (seq)
  (let ((result () ))
    (dolist (item seq result)
      (let ((curr (find item result :key 'first)))
        (if curr (incf (second curr))
            (push (list item 1) result))))))

(defun item-count-recursive (seq &optional (result () ))
  (if (null seq) result
      (let ((curr (find (first seq) result :key 'first)))
        (if curr (progn
                   (incf (second curr))
                   (item-count-recursive (rest seq) result))
            (item-count-recursive (rest seq) (push (list (first seq) 1) result))))))
