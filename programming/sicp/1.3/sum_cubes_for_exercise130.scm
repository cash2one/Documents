(load "1.3/sum_by_iteration.scm")

(define (cube x) (* x x x))
(define (inc n) (+ n 1))

(define (sum-cubes a b)
  (sum cube a inc b))
