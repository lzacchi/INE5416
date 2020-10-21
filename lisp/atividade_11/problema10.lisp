(defun euclides(x y)
    (cond ((= x 0) y)
          ((= y 0) x)
          (t (euclides y (mod x y)))
    )

)

(defun main()
    (setq a (read))
    (setq b (read))
    (setq c (read))

    (write-line (write-to-string(max_num (max_num a b) c )))

)

(main)
