; Написать процедуру, которая определяет количество способов разменять сумму в 1 доллар, если имеются монеты по 50, 25, 10, 5 и 1 цент.

(define (count-change amount) 
  (cc amount 5))
(define (cc amount kinds-of-coins) 
  (cond ((= amount 0) 1)
    ((or (< amount 0) (= kinds-of-coins 0)) 0) 
    (else (+ (cc amount 
                 (- kinds-of-coins 1))
             (cc (- amount
                    (first-denomination kinds-of-coins)) 
                  kinds-of-coins)))))
(define (first-denomination kinds-of-coins) 
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5) 
        ((= kinds-of-coins 3) 10) 
        ((= kinds-of-coins 4) 25) 
        ((= kinds-of-coins 5) 50)))