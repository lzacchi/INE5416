(defun dist (x1 y1 z1 x2 y2 z2)
    (sqrt (+ (+ (expt (- x2 x1) 2 ) (expt (- y2 y1) 2 )) (expt (- z2 z1) 2)))
)

(defun main ()
    (setq x1 (read))
    (setq y1 (read))
    (setq z1 (read))

    (setq x2 (read))
    (setq y2 (read))
    (setq z2 (read))

    (write-line (write-to-string (dist x1 y1 z1 x2 y2 z2)))
)

(main)
