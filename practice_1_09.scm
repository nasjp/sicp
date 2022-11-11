(define (inc x) (+ x 1))
(define (dec x) (- x 1))

(define (+ a b)             ; 再帰
  (if (= a 0)
      b
      (inc (+ (dec a) b))
  )
)

(define (+ a b)             ; 反復
  (if (= a 0)
      b
      (+ (dec a) (inc b))
  )
)

(display "none")
