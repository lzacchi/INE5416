(defun absolute_value(x)
    (if (< x 0)
        (* x -1)
        x
    )
)

(defun main()
    (setq x (read))
    (write-line (write-to-string (absolute_value x)))
)

(main)
