(defun euclides(x y)
    (cond ((= x 0) y)
          ((= y 0) x)
          (t (euclides y (mod x y)))
    )
)


(defun coprime(x y)
    (if (= (euclides x y) 1)
        "São coprimos"
        "Não são coprimos"
    )
)


(defun main()
    (setq x (read))
    (setq y (read))

    (write-line (coprime x y))
)
