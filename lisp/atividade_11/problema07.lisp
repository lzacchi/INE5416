(defun fibonacci(n)
    (if (= n 0)
        0
    )
	(if (or (= n 1) (= n 2))
		1
		(+ ( fibonacci (- n 1) ) ( fibonacci (- n 2) ) )

    )
)

(defun main()
    (setq n (read))
    (write-line (write-to-string (fibonacci n)))
)

(main)
