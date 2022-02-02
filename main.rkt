#lang racket
(require eopl)

;; list.get-informative: List -> Int -> Value
;; usage: (list.get-informative list n) = nth element of the list (0-index)
(define list.get-informative
  (lambda (l n)
    (let ([ret (list.get-informative.internal l n)])
      (if (eq? ret #f)
          (eopl:error `list.get-informative
                      "~s does not have ~s elements.~%" l (+ n 1))
          ret))))

(define list.get-informative.internal
  (lambda (l n)
    (if (null? l)
        #f
        (if (zero? n)
            (car l)
            (list.get-informative.internal (cdr l) (- n 1))))))



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
