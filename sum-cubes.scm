; Написать процедуру sum-cubes, которая вычисляет сумму кубов целых чисел в заданном диапазоне

(define (cube x) (* x x x))  
  (define (sum-cubes a b) 
    (if (> a b)
      0
      (+ (cube a) (sum-cubes (+ a 1) b))))
  