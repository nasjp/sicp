;;;; フィボナッチ数列

(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1)) (fib (- n 2))))
  )
)

(fib 10)

;;; 改良版

(define (fib n)
  (fib-iter 1 0 n)
)

(define (fib-iter a b count)
  (if (= count 0)
    b
    (fib-iter (+ a b) a (- count 1))
  )
)

(fib 10)

;;;;; 両替

; (define (count-change amount)
;   (cc amount 5)
; )

; (define (cc amount kinds-of-coins)
;   (cond ((= amount 0) 1)
;         ((or (< amount 0) (= kinds-of-coins)) 0)
;         (else (+ (cc amount)))
;   )
; )
