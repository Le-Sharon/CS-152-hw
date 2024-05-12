
; count elements in a list
(define (elements lst) 
  (cond ((null? lst) 0) ; if null return 0
        ((not (pair? lst)) 1) ; if not a pair return 1
        (else (+ (elements (car lst)) (elements (cdr lst)))))) ; recursion on head & tail

; counts length of a list
(define (list-length lst)
  (if (null? lst)
      0 ; if null return 0
      (+ 1 (list-length (cdr lst))))) ; recursively calls function using tail of list.


(display (list (elements '(1 (2 (3) 4) 5 6))(length '(1 (2 (3) 4) 5 6))))
