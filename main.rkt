#lang racket
(require eopl)

;; nth-element: List -> Int -> Value
;; usage: (nth-element list n) = nth element of the list (0-index)
(define nth-element
  (lambda (l n)
    (let ([ret (nth-element.internal l n)])
      (if (eq? ret #f)
          (eopl:error `nth-element
                      "~s does not have ~s elements.~%" l (+ n 1))
          ret))))

(define nth-element.internal
  (lambda (l n)
    (if (null? l)
        #f
        (if (zero? n)
            (car l)
            (nth-element.internal (cdr l) (- n 1))))))



; reference
; ---------

; (define id expr):
; define global identifier

; (lambda (args...) body) 
; define a function

; (let ([id expr] ...) body)
; define local identifiers and execute body

; #f
; false (boolean)

; (eq? a b)
; check if a is equal to b
; (types need not be same)

; (null? list)
; is list is empty

; (zero? number)
; is number is zero

; (car list)
; returns first element of list (head)

; (cdr list)
; get elements of list excluding the first (tail)

; (eopl:error symbol string args...)
; abort with error message
; ~s: parameter
; ~%: new line
