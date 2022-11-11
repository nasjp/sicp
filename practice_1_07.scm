(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (square x) (* x x))

(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)
  )
)

(define (sqrt x) (sqrt-iter 1.0 x))

(display (sqrt 2))
(display " ")

; improved sqrt
(define (good-enough2? guess pre-guess) (< (/ (abs (- guess pre-guess)) guess) 0.001))

(define (sqrt-iter2 guess pre-guess x)
  (if (good-enough2? guess pre-guess)
      guess
      (sqrt-iter2 (improve guess x) guess x)
  )
)

(define (sqrt2 x) (sqrt-iter2 1.0 100.0 x))

(display(sqrt2 2))
