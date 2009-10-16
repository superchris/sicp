(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (fast-expt2 b n)
  (fast-expt2-iter b n 1))

(define (fast-expt2-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (fast-expt2-iter (square b) (/ n 2) a))
        (else (fast-expt2-iter b (- n 1) (* b a)))))

(define (mult a b)
  (if (= b 0)
      0
      (+ a (mult a (- b 1)))))
