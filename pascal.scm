; Напишите процедуру, вычисляющую элементы треугольника Паскаля с помощью рекурсивного процесса. 

(define (abs x)
            (if (or (> x 0) (= x 0))
                      x
                      (- x)))
                    
(define (pascal m n)
            (cond ((= m n) 1)
                       ((and (even? m) (odd? n)) 0)
                       ((and (even? n) (odd? m)) 0)
                       ((> m n) 0)
                       (else (+ (pascal (+ m 1) (- n 1)) (pascal (abs (- m 1)) (- n 1))))))
