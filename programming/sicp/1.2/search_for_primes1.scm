(define (search_for_primes n)
  

  (define (search_consecutive_prime n count)
	(define (next_odd n)
	  (define (odd n) (= (remainder n 2) 1))
	  (if (odd n) (+ n 2) (+ n 1)))

	(define (prime n)
	  (define (find_divisor n test_divisor)
		(define (divides a b) (= (remainder a b) 0))
		(cond ((> (square test_divisor) n) n)
			  ((divides n test_divisor) test_divisor)
			  (else (find_divisor n (+ test_divisor 1)))))
	  (define (smallest_divisor n) (find_divisor n 2))
	  (= n (smallest_divisor n)))

	(cond ((= count 0) (display "are primes."))
		  ((prime n)
		   (display n)
		   (newline)
		   (search_consecutive_prime (next_odd n) (- count 1)))
		  (else (search_consecutive_prime (next_odd n) count))))
  

  (let ((start-time (real-time-clock)))
        (search_consecutive_prime n 3)
       (- (real-time-clock) start-time)))
