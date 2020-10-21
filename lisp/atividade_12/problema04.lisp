(defun diferenca_maior_menor(lista)
    (- (maior lista) (menor lista))
)

(defun menor(lista)
    (if (null (cdr lista))
        (car lista)
        (_menor(car lista) (menor (cdr lista)))
    )
)


(defun maior(lista)
    (if (null (cdr lista))
        (car lista)
        (_maior(car lista) (maior (cdr lista)))
    )
)

(defun _menor (a b)
    (if (< a b)
        a
        b
    )
)

(defun _maior (a b)
    (if (> a b)
        a
        b
    )
)


(defun main ()
    (write-line (write-to-string (diferenca_maior_menor '(1 2 3 4 5 6))))
)
