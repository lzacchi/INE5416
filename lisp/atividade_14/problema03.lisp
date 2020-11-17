(defun main()
    (setq a 1)
    (setq b 4)
    (setq c 5)

    (write-line (write-to-string ((lambda (x y z) (/ (- (- b) (sqrt (- (* b b) (* 4 a c)))) (* 2 a))) a b c)))
    (write-line (write-to-string ((lambda (x y z) (/ (+ (- b) (sqrt (- (* b b) (* 4 a c)))) (* 2 a))) a b c)))
)
