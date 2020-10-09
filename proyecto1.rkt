#lang racket

(require racket/gui)

; Make a frame by instantiating the frame% class
(define frame (new frame%
                   [label "Damas Chinas - P1"]
                   [border 10]
                   [spacing 5]
                   [x 1000]	 
                   [y 30]))

; Make a button in the frame
(define bnn (new button% [parent frame]
             [label "Click me"]
             [enabled #t]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (iniciar 1))]))

; Make a static text message in the frame
(define msg (new message% [parent frame]
                          [label "Hi!"]
                          [vert-margin 10]
                          [stretchable-width #f]	 
                          [stretchable-height #f]	
                          [auto-resize #t]))

; ---------------------------------------------------------------------

(define row0 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b0-1 (new button% [parent row0]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; ---------------------------------------------------------------------

(define row1 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b1-1 (new button% [parent row1]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b1-2 (new button% [parent row1]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))


; ---------------------------------------------------------------------

(define row2 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b2-1 (new button% [parent row2]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b2-2 (new button% [parent row2]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b2-3 (new button% [parent row2]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))


; -----------------------------------------------------------------

(define row3 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))


; Make a button in the frame
(define b3-1 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b3-2 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b3-3 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b3-4 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))


; -----------------------------------------------------------------

(define row4 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b4-1 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b4-2 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b4-3 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b4-4 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b4-5 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; -----------------------------------------------------------------

(define row5 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b5-1 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b5-2 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b5-3 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b5-4 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b5-5 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b5-6 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; -----------------------------------------------------------------

(define row6 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b6-1 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b6-2 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b6-3 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b6-4 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b6-5 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b6-6 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b6-7 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; -----------------------------------------------------------------

(define row7 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b7-1 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b7-2 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b7-3 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b7-4 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b7-5 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b7-6 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; -----------------------------------------------------------------

(define row8 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b8-1 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b8-2 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b8-3 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b8-4 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b8-5 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; -----------------------------------------------------------------

(define row9 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b9-1 (new button% [parent row9]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b9-2 (new button% [parent row9]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b9-3 (new button% [parent row9]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b9-4 (new button% [parent row9]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; -----------------------------------------------------------------

(define row10 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b10-1 (new button% [parent row10]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b10-2 (new button% [parent row10]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b10-3 (new button% [parent row10]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; -----------------------------------------------------------------

(define row11 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b11-1 (new button% [parent row11]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b11-2 (new button% [parent row11]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))


; -----------------------------------------------------------------

(define row12 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b12-1 (new button% [parent row12]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         ;(check-availables b12-1))]))
                         (send msg set-label "Button click"))]))

;-------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------

(define-struct ficha(tipo btn) #:mutable #:transparent)

(define x01(ficha "X" b0-1))
(define x02(ficha "X" b1-1))
(define x03(ficha "X" b1-2))
(define x04(ficha "X" b2-1))
(define x05(ficha "X" b2-2)) ; Fichas del jugador X
(define x06(ficha "X" b2-3))
(define x07(ficha "X" b3-1))
(define x08(ficha "X" b3-2))
(define x09(ficha "X" b3-3))
(define x10(ficha "X" b3-4))

(define o01(ficha "O" b12-1))
(define o02(ficha "O" b11-1))
(define o03(ficha "O" b11-2))
(define o04(ficha "O" b10-1))
(define o05(ficha "O" b10-2)) ; Fichas del jugador O
(define o06(ficha "O" b10-3))
(define o07(ficha "O" b9-1))
(define o08(ficha "O" b9-2))
(define o09(ficha "O" b9-3))
(define o10(ficha "O" b9-4))

(define e01(ficha "E" b4-1))
(define e02(ficha "E" b4-2))
(define e03(ficha "E" b4-3))
(define e04(ficha "E" b4-4))
(define e05(ficha "E" b4-5))
(define e06(ficha "E" b5-1))
(define e07(ficha "E" b5-2))
(define e08(ficha "E" b5-3))
(define e09(ficha "E" b5-4))
(define e10(ficha "E" b5-5))
(define e11(ficha "E" b5-6))
(define e12(ficha "E" b6-1))
(define e13(ficha "E" b6-2))
(define e14(ficha "E" b6-3)) ; Espacios disponibles
(define e15(ficha "E" b6-4))
(define e16(ficha "E" b6-5))
(define e17(ficha "E" b6-6))
(define e18(ficha "E" b6-7))
(define e19(ficha "E" b7-1))
(define e20(ficha "E" b7-2))
(define e21(ficha "E" b7-3))
(define e22(ficha "E" b7-4))
(define e23(ficha "E" b7-5))
(define e24(ficha "E" b7-6))
(define e25(ficha "E" b8-1))
(define e26(ficha "E" b8-2))
(define e27(ficha "E" b8-3))
(define e28(ficha "E" b8-4))
(define e29(ficha "E" b8-5))


; X-O --> Fichas de jugadores.
; E --> Espacio.

(define tablero(list
               (list                  x01)
               (list                x02 x03)
               (list              x04 x05 x06)
               (list            x07 x08 x09 x10)
               (list          e01 e02 e03 e04 e05)
               (list        e06 e07 e08 e09 e10 e11)
               (list      e12 e13 e14 e15 e16 e17 e18)
               (list        e19 e20 e21 e22 e23 e24)
               (list          e25 e26 e27 e28 e29)
               (list            o07 o08 o09 o10)
               (list              o04 o05 o06)
               (list                o02 o03)
               (list                  o01)
               ))

(define (hay-ganador)
  (cond
    [(equal? (ficha-tipo (first(first tablero))) "X") #f]
    [(equal? (ficha-tipo (first(first tablero))) "E") #f]
    [(equal? (ficha-tipo (first(last tablero))) "O") #f]
    [(equal? (ficha-tipo (first(last tablero))) "E") #f]

    [(equal? (verificar-fila (fifth tablero)) #f) #f]
    [(equal? (verificar-fila (sixth tablero)) #f) #f]
    [(equal? (verificar-fila (seventh tablero)) #f) #f]
    [(equal? (verificar-fila (eighth tablero)) #f) #f]
    [(equal? (verificar-fila (ninth tablero)) #f) #f]
    
    [else #t]))

(define (verificar-fila fila)
  (cond
    [(empty? fila) #t]
    [(equal? (ficha-tipo (first fila)) "E") (verificar-fila (rest fila))]
    [else #f]))

(define (iniciar turno)
  (cond
    [(boolean=? (hay-ganador) #t) (write 'GANOOOOO)]
    [(= turno 1) (juega-O)]
    [else (juega-X)] ))

(define (juega-O)
  (send msg set-label "O")
  (cambiar-btns "X" tablero #f))
  ;(iniciar 0))

(define (juega-X)
  (send msg set-label "X")
  (cambiar-btns "O" tablero #f)
  (iniciar 1))

(define (cambiar-btns tipo tableroo condicion)
  (cond
    [(empty? tableroo) 0]
    [(equal? tipo "X") (cambiar-btns-aux tableroo "X" (first tableroo) condicion)]
    [else (cambiar-btns-aux tableroo "O" (first tableroo) condicion)]))

(define (cambiar-btns-aux tableroo tipo fila condicion)
  (cond
    [(empty? fila) (cambiar-btns tipo (rest tableroo) condicion)]
    [(equal? (ficha-tipo (first fila)) tipo) (begin (cambiar-btn (ficha-btn (first fila)) condicion) (cambiar-btns-aux tableroo tipo (rest fila) condicion))]
    [else (cambiar-btns-aux tableroo tipo (rest fila) condicion)]))

(define (cambiar-btn btn condicion)
  (send btn enable condicion))

(send frame show #t)