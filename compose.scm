; (1.42) Пусть f и g — две одноаргументные функции. По определению, композиция (composition) f и g есть функция x → f(g(x)). Определите процедуру compose которая реализует композицию.

(define (square x) (* x x))
(define (inc x) (+ x 1))

(define (compose f g x) (lambda (x) (f (g x) ) ))  
