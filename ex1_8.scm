(+ 1 3 5)

(define (sqrt x)
  (define (average x y) (/ (+ x y) 2))
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
  (sqrt-iter 1.0 x))

(define (cubert x)
  (define (improve guess x)
    (/
     (+ (/ x (* guess guess)) (* 2 guess))
     3)
    ) 

  (define (cube x)
    (* x x x))
    (define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.001))
  (define (cube-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-iter (improve guess x) x)))
  (cube-iter 1.0 x)
  )

