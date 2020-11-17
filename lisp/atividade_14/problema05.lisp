(defun main()
    (setq a 5)
    (setq b 3)
    (setq c 9)

    (write-line (write-to-string ((lambda (a b c) (cond ((and (> a b) (> a c)) a) ((and (> b a) (> b c)) b ) (t c))) a b c)))

)
