;Create a structure called “book” that contains information about the book title (string), author (string), genre (string), and number of pages (integer). 

;Create a function called max-books-pages that takes an array of books as input. The function should output the book with the greatest number of pages.

;Create a function called last-books-author that takes an array of books as input. The function should output the book whose author would come last alphabetically (i.e. Neil Gaiman’s book would be returned instead of John Green’s book if they were the inputs).

(defstruct book
  title author genre num-pages)

(defun max-books-pages (arr)
  (let ((max 0) (maxbook nil))
    (dotimes (i (length arr) maxbook)
      (let* ((indbook (aref arr i)) (pages (book-num-pages indbook)))
        (if (> pages max) (setf max pages
                                maxbook indbook))))))

(defun last-books-author (arr)
  (let ((max 0) (maxbook nil))
    (dotimes (i (length arr) maxbook)
      (let* ((indbook (aref arr i)) (initial (char-code (char (book-author indbook) 0))))
        (if (> initial max) (setf max initial
                                  maxbook indbook))))))

(defun max-books (arr comp)
  (let ((max (make-book :title "" :author "" :genre "" :num-pages 0))) ;dummy instance of struct
    (dotimes (i (length arr))
      (if (funcall comp max (aref arr i))
          (setf max (aref arr i))))
    (if (= (book-num-pages max) 0) nil
        max))) ;would only really work for the page comparison, for other comparisons more work would be needed. 
