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

(define (square-big-two x y z)
  (cond ((and (>= x z) (>= y z)) (+ (* x x) (* y y)))
        ((and (>= x y) (>= z y)) (+ (* x x) (* z z)))
        ((and (>= y x) (>= z x)) (+ (* y y) (* z z)))
  )
)

(square-big-two 3 4 5)
(square-big-two 4 5 3)

;;;;; 4

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)
)

(a-plus-abs-b 1 -2)
(a-plus-abs-b 1 2)

;;;;; 5

(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y
  )
)

; (test 0 (p))
