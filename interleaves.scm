; interleaves two lists
(define (interleave xs ys)
  (cond ((null? xs) ys) ; if xs empty, append ys instead
        ((null? ys) xs) ; if ys empty, append xs instead
        (else (cons (car xs) (interleave ys (cdr xs)))))) ; recursively alternate
; test case 1
(define xs '(1 2 3))
(define ys '(a b c))
(display (interleave xs ys))
(newline)
;test case 2
(define xs '(1 2 3))
(define ys '(a b c d e f))
(display (interleave xs ys))
(newline)
;test case 3
(define xs '(1 2 3 4 5 6))
(define ys '(a b c))
(display (interleave xs ys))
(newline)
