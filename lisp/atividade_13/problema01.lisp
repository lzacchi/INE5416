(defstruct ponto2D
    x
    y
)

(defun distancia (p1 p2)
	(sqrt (+ (expt (- (ponto2D-x p2) (ponto2D-x p1)) 2) (expt (- (ponto2D-y p2) (ponto2D-y p1))2)))
)

(defun colineares(p1 p2 p3)
    (= (determinante p1 p2 p3) 0)
)


(defun determinante (a b c)
    (+ (* (ponto2D-x a) (ponto2D-y b))
       (* (ponto2D-y a) (ponto2D-x c))
       (* (ponto2D-x b) (ponto2D-y c))
       (- (* (ponto2D-x c) (ponto2D-y b)))
       (- (* (ponto2D-y c) (ponto2D-x a)))
       (- (* (ponto2D-x b) (ponto2D-y a)))
    )
)


(defun verificaTriangulo (p1 p2 p3)
    (trianguloValido (distancia p1 p2) (distancia p2 p3) (distancia p3 p1))
)


(defun trianguloValido (a b c)
    (and (< (abs (- b c))a) (< a (+ b c)))
)


(defun formaTriangulo(p1 p2 p3)
    (and (verificaTriangulo p1 p2 p3) (verificaTriangulo p2 p1 p3) (verificaTriangulo p3 p1 p2))
)


(defun main()
    (setq p1
        (make-ponto2D
            :x 2.0
            :y 3.0
        )
    )
    (setq p2
        (make-ponto2D
            :x 2.0
            :y 4.0
        )
    )
    (setq p3
        (make-ponto2D
            :x 3.0
            :y 5.0
        )
    )


    (write-line (write-to-string (distancia p1 p2)))
    (write-line (write-to-string (colineares p1 p2 p3)))
    (write-line (write-to-string (formaTriangulo p1 p2 p3)))

)

(main)
