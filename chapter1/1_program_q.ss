;;;;; 1

10; => 10

(+ 5 3 4); => 12

(- 9 1); => 8

(/ 6 2); => 3

(+ (* 2 4) (- 4 6)); => 2

(define a 3); => a

(define b (+ a 1)); => b

(+ a b (* a b)); => 19

(= a b); => #f

(if (and (> b a)
         (< b (* a b))
    )
    b
    a
); => 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)
); => 17

(+ 2 (if (> b a) b a)); => 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1)
   )
   (+ a 1)
); => 16

;;;;; 2

(/ (+ 5 4
      (- 2
         (- 3
            (+ 6
               (/ 4 5)
            )
         )
      )
    )
    (* 3
       (- 6 2)
       (- 2 7)
    )
); => -37/150(-0.24666...)

;;;;; 3

(define (square x) (* x x))

; (define (big-two x y z)
;   (cond (and (> x y) (> x z))
;   )
; )

; (define (square-big-two x y z)
; )
