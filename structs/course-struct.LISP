(defun make-struct (struct name-of-course)
  (setf (course-name struct) name-of-course)
  struct)

(defstruct course
           name department professor)
