(defun menor(lista)
    (if (null (cdr lista))
        (car lista)
        (_menor(car lista) (menor (cdr lista)))
    )
)

(defun _menor(a b)
    (if (< a b)
        a
        b
    )
)

(defun main()
    (write-line (write-to-string (menor '(6 6 6 6 5))))
)
