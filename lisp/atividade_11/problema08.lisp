(defun delta (a b c)
    (- (* b b) (* (* 4 a) c))
)


(defun bhaskara(a b c)

    (let ( (x1 (/ (+ (- b) (sqrt (delta a b c))) (* 2 a) ))
           (x2 (/ (- (- b) (sqrt (delta a b c))) (* 2 a) ))
         )

        (list x1 x2)
    )
)


(defun main()
    (setq a (read) )
    (setq b (read) )
    (setq c (read) )

    (write-line (write-to-string (bhaskara a b c) ) )
)
