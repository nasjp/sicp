(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(display (a-plus-abs-b 3  5))
(display " ")
(display (a-plus-abs-b 3 -5))
