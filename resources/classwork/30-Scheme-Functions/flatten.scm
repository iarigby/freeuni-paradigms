(define (flatten sequence)
  (cond ((null? sequence) '())
	((list? (car sequence)) (append (flatten (car sequence))
					(flatten (cdr sequence))))
	(else (cons (car sequence) (flatten (cdr sequence))))))

