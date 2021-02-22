;;;;; 7

(define (sqrt x)
  (define (improve guess)
    (define (average x y)
      (/ (+ x y) 2)
    )
    (average guess (/ x guess))
  )
  (define (sqrt-iter last-guess next-guess)
    (define (good-enough?)
      (< (abs (/ (- last-guess next-guess) next-guess)) 0.001)
    )
    (if (good-enough?)
        next-guess
        (sqrt-iter next-guess (improve next-guess))
    )
  )
  (sqrt-iter 1.0 (improve 1.0))
)

(sqrt 0.0002)
(sqrt 2)
(sqrt 9)

;;;;; 8

(define (curt x)
  (define (improve y)
    (/ (+ (/ x (* y y)) (* y 2.0)) 3.0)
  )
  (define (curt-iter last-guess next-guess)
    (define (good-enough?)
      (< (abs (/ (- last-guess next-guess) next-guess)) 0.001)
    )
    (if (good-enough?)
        next-guess
        (curt-iter next-guess (improve next-guess))
    )
  )
  (curt-iter 1.0 (improve 1.0))
)

(curt 27)

(curt 8)
