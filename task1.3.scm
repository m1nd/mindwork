; Упражнение 1.3
; Определите процедуру, которая принимает в качестве аргументов три числа и возвращает сумму квадратов двух б ́ольших из них.

(define (square_of_larger_numbs a b c)
  (apply + (map (lambda (n) (* n n))
    (list (max a b) (max (min a b) c))))
)