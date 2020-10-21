(defun soma(list)
    (if (null list)
        0
        (+ (car list) (soma (cdr list)))
    )
)


(defun main()
    (write-line (write-to-string (soma '(1 2 3 4 5))))
)
