(defun x_or (x y)
    ;;(not x && y) || (x && not y) = True
    ;;| otherwise = False
    (or (and x (not y)) (and (not x) y))
)

(defun main()
    (setq x (read))
    (setq y (read))

    (write-line (write-to-string (x_or x y)))
)
