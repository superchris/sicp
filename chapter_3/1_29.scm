(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (cube x) (* x x x))

(define (simp-rule f a b n) 
  (let ((h (/ (- b a) n)))
    (define (y k) (f (+ a (* k h))))
    (define (mult-y k)
       (cond
        ((= k 0) (y k))
        ((= k n) (y k)) 
        ((even? k)
          (* 2 (y k)))
        (else (* 4 (y k)))))
    (* (/ h 3) 
       (sum mult-y 0 inc n)))
)
