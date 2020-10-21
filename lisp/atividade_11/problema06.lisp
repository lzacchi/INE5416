(defun check(a b c)
	(if (and (< (- a b) c) (< a (+ b c)))
        T
        NIL
    )

)

(defun valid_triangle(a b c)
    (if (and (check a b c) (check a c b) (check b c a))
        "Triangulo Valido"
        "Triangulo Invalido"
    )
)

(defun main()
    (setq a (read))
    (setq b (read))
    (setq c (read))

    (write-line (valid_triangle a b c))

)

(main)
