(defun euclides(x y)
    (cond ((= x 0) y)
          ((= y 0) x)
          (t (euclides y (mod x y)))
    )

)


(defun lmc (x y)
    (floor (* x y) (euclides x y))
)


(defun main()
    (setq x (read))
    (setq y (read))

    (write-line (write-to-string (lmc x y)))

)
