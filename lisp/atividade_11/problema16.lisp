(defun divisible (x y)
    (if (= (mod x y) 0)
        T
        NIL
    )
)


(defun main()
    (setq x (read))
    (setq y (read))

    (write-line (write-to-string (divisible x y)))
)
