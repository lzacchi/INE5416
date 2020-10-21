(defun euclides(x y)
    (cond ((= x 0) y)
          ((= y 0) x)
          (t (euclides y (mod x y)))
    )

)


(defun main()
    (setq x (read))
    (setq y (read))

    (write-line (write-to-string (euclides x y) ) )
)
