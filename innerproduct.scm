; inner product of two vectors
(define (inner-product v1 v2)
  (if (or (null? v1) (null? v2))
      0 ; if v1 and v2 null, return 0
      (+ (* (car v1) (car v2)) (inner-product (cdr v1) (cdr v2)))))
      ; basically product of head + recursion on tail and do the same thing
(define v1 '(1 2 3))
(define v2 '(4 5 6))

(display "Vector 1: ")
(display v1)
(newline)

(display "Vector 2: ")
(display v2)
(newline)

(display "Inner Product: ")
(display (inner-product v1 v2))
(newline)
