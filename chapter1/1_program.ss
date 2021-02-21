;;;;; 名前と手続き

(define size 2); 変数定義

(* 5 size); => 10変数の使用 (10)

(define pi 3.14159)

(define radius 10)

(* pi (* radius radius)); => 314.159 (面積)

(define circumference (* 2 pi radius))

circumference; => 62.8318 (直径)

;; 式の評価規則
;; 1. 一般規則
;; 2. 特殊形式(いまのところdefineのみ)
;;
;; (define x 3)
;; の評価は
;; 2つの引数に作用させるのではなく、
;; xを値に対応付けること
;; つまり一般規則とは異なる

;;;;; 合成手続き

;; 2乗(squareと名前をつけられた手続き)
(define (square x) (* x x))

(square 21); => 441

(square (+ 2 5)); => 49

(square (square 3)); => 81

;; x^2 + y^2
(define (sum-of-squares x y)
  (+ (square x) (square y))
)

(sum-of-squares 3 4); => 25

(define (f a)
  (sum-of-squares (+ a 1) (* a 2))
)

(f 5); => 136

;;;;; 条件式と述語

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))
  )
)

(abs 100); => 100
(abs 0); => 0
(abs -100); => 100

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)
  )
)

(abs 100)
(abs 0)
(abs -100)

(define (abs x)
  (if (< x 0) (- x) x)
)

(abs 100)
(abs 0)
(abs -100)

(define x 3)

(and (> x 5) (< x 10)); => #f (true は#t)

(define (>= x y)
  (or (> x y) (= x y))
)

(>= 4 3); => #t
(>= 3 3); => #t
(>= 3 4); => #f

(define (>= x y)
  (not (< x y))
)

(>= 4 3); => #t
(>= 3 3); => #t
(>= 3 4); => #f
