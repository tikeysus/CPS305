(defun find-largest (seq)
  (let ((largest 0))
    (dolist (num seq largest)
      (if (> num largest) (setq largest num)))))

(defun find-largest-recursive (seq &optional (largest 0))
  (cond
    ((null seq) largest)
    ((<= (first seq) largest) (find-largest-recursive (rest seq) largest))
    (t (find-largest-recursive (rest seq) (first seq)))))
