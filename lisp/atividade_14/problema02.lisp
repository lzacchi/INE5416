(defun main ()
    (setq p1 5)
    (setq p2 5)
    (setq p3 8)

    (write-line (write-to-string ((lambda (p1 p2 p3) (>= (/ (+ p1 p2 p3) 3) 6))p1 p2 p3)))
)
