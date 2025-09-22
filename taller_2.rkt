#lang racket

;; -----------------------------------------------------------------------------
;; const-exp
;; -----------------------------------------------------------------------------

;; const-exp:
;; Proposito: Constructor para una expresión constante.
(define const-exp
  (lambda (num)
    (list 'const-exp num)))

;; const-exp?:
;; Proposito: Predicado que retorna #t si la expresión es una constante.
(define const-exp?
  (lambda (exp)
    (eqv? (car exp) 'const-exp)))

;; const-exp->num:
;; Proposito: Extractor que retorna el valor numérico de una expresión constante.
(define const-exp->num
  (lambda (exp)
    (cadr exp))) 

;; -----------------------------------------------------------------------------
;; add-exp
;; -----------------------------------------------------------------------------

;; add-exp:
;; Proposito: Constructor para una expresión de suma.
(define add-exp
  (lambda (exp1 exp2)
    (list 'add-exp exp1 exp2)))

;; add-exp?:
;; Proposito: Predicado que retorna #t si la expresión es una suma.
(define add-exp?
  (lambda (exp)
    (eqv? (car exp) 'add-exp)))

;; add-exp->exp1:
;; Proposito: Extractor que retorna la primera sub-expresión (izquierda) de una suma.
(define add-exp->exp1
  (lambda (exp)
    (cadr exp)))

;; add-exp->exp2:
;; Proposito: Extractor que retorna la segunda sub-expresión (derecha) de una suma.
(define add-exp->exp2
  (lambda (exp)
    (caddr exp)))

;; -----------------------------------------------------------------------------
;; diff-exp
;; -----------------------------------------------------------------------------

;; diff-exp:
;; Proposito: Constructor para una expresión de resta.
(define diff-exp
  (lambda (exp1 exp2)
    (list 'diff-exp exp1 exp2)))

;; diff-exp?:
;; Proposito: Predicado que retorna #t si la expresión es una resta.
(define diff-exp?
  (lambda (exp)
    (eqv? (car exp) 'diff-exp)))

;; diff-exp->exp1:
;; Proposito: Extractor que retorna la primera sub-expresión (izquierda) de una resta.
(define diff-exp->exp1
  (lambda (exp)
    (cadr exp)))

;; diff-exp->exp2:
;; Proposito: Extractor que retorna la segunda sub-expresión (derecha) de una resta.
(define diff-exp->exp2
  (lambda (exp)
    (caddr exp))) 

;; -----------------------------------------------------------------------------
;; mult-exp
;; -----------------------------------------------------------------------------

;; mult-exp:
;; Proposito: Constructor para una expresión de multiplicación.
(define mult-exp
  (lambda (exp1 exp2)
    (list 'mult-exp exp1 exp2)))

;; mult-exp?:
;; Proposito: Predicado que retorna #t si la expresión es una multiplicación.
(define mult-exp?
  (lambda (exp)
    (eqv? (car exp) 'mult-exp)))

;; mult-exp->exp1:
;; Proposito: Extractor que retorna la primera sub-expresión (izquierda) de una multiplicación.
(define mult-exp->exp1
  (lambda (exp)
    (cadr exp)))

;; mult-exp->exp2:
;; Proposito: Extractor que retorna la segunda sub-expresión (derecha) de una multiplicación.
(define mult-exp->exp2
  (lambda (exp)
    (caddr exp)))

;; -----------------------------------------------------------------------------
;; div-exp
;; -----------------------------------------------------------------------------

;; div-exp:
;; Proposito: Constructor para una expresión de división.
(define div-exp
  (lambda (exp1 exp2)
    (list 'div-exp exp1 exp2)))

;; div-exp?:
;; Proposito: Predicado que retorna #t si la expresión es una división.
(define div-exp?
  (lambda (exp)
    (eqv? (car exp) 'div-exp)))

;; div-exp->exp1:
;; Proposito: Extractor que retorna la primera sub-expresión (izquierda) de una división.
(define div-exp->exp1
  (lambda (exp)
    (cadr exp)))

;; div-exp->exp2:
;; Proposito: Extractor que retorna la segunda sub-expresión (derecha) de una división.
(define div-exp->exp2
  (lambda (exp)
    (caddr exp))) 