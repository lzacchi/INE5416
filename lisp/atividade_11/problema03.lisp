(defun area (b h)
    (/(* b h) 2)
)

(defun main ()
    (setq b (read))
    (setq h (read))

    (write-line (write-to-string (area b h)))
)

(main)
