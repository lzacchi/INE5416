(defun soma_lista (lista)
	(if (null lista)
		0
		(+ (car lista) (soma_lista (cdr lista)))
	)
)


(defun tamanho (lista)
	(if (null lista)
		0
		(+ 1 (tamanho (cdr lista)))
	)
)


(defun media (lista)
	(if (null lista)
		0
		(/ (soma_lista lista) (tamanho lista))
	)
)


(defun main()
    (write-line (write-to-string ( media '(10 10 10 10) )))
    (write-line (write-to-string ( media '(10 20 30 40) )))

)
