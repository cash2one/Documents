(define (fast_multi a b)
  (define (double n) (* n 2))
  (define (halve n) (/ n 2))
  (define (iter a count summation)
    (cond ((= count 0) summation)
          ((even? count) 
           (iter (double a) (halve count) summation))
          (else (iter a (- count 1) (+ a summation)))))
  (iter a b 0))
