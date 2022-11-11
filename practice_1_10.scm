(define (A x y)
  (cond
    ((= y 0) 0)
    ((= x 0) (* 2 y))
    ((= y 1) 2)
    (else (A (- x 1) (A x (- y 1))))
  )
)

(define (p x) (display x))

(define (f n) (A 0 n))     ; 2 * n
(define (g n) (A 1 n))     ; 2 ** n
(define (h n) (A 2 n))     ; 2 ** 2 ** n
(define (k n) (* 5 n n))

(p "f ")
(p (f 1)) (p " ")
(p (f 2)) (p " ")
(p (f 3)) (p " ")
(p (f 4)) (p " ")

(p "|g ")
(p (g 1)) (p " ")
(p (g 2)) (p " ")
(p (g 3)) (p " ")
(p (g 4)) (p " ")

(p "|h ")
(p (h 1)) (p " ")
(p (h 2)) (p " ")
(p (h 3)) (p " ")
(p (h 4)) (p " ")
