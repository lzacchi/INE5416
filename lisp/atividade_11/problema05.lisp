(defun media(a b c)
    (if (>= (/ (+ (+ a b)c)3) 6)
        "Aprovado"
        "Reprovado"
    )
)


(defun main()
    (setq a (read))
    (setq b (read))
    (setq c (read))

    (write-line (media a b c))
)
(main)
