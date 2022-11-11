; 三つの数値を引数として取り、そのうち大きいほうから二つの数値の二乗の和を返す手続きを定義せよ。

(define (practice_1_3 x y z)
  (cond ((and (>= x z) (>= y z)) (+ (* x x) (* y y)))
        ((and (>= x y) (>= z y)) (+ (* x x) (* z z)))
        ((and (>= y x) (>= z x)) (+ (* y y) (* z z)))
  )
)

(display (practice_1_3 1 2 3))
