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
                         (jugar))]))

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
                         (verificar-disponibles 0 0 tablero))]))

; ---------------------------------------------------------------------

(define row1 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b1-1 (new button% [parent row1]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 1 0 tablero))]))

; Make a button in the frame
(define b1-2 (new button% [parent row1]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 1 1 tablero))]))


; ---------------------------------------------------------------------

(define row2 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b2-1 (new button% [parent row2]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 2 0 tablero))]))

; Make a button in the frame
(define b2-2 (new button% [parent row2]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 2 1 tablero))]))

; Make a button in the frame
(define b2-3 (new button% [parent row2]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 2 2 tablero))]))


; -----------------------------------------------------------------

(define row3 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))


; Make a button in the frame
(define b3-1 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 3 0 tablero))]))

; Make a button in the frame
(define b3-2 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 3 1 tablero))]))

; Make a button in the frame
(define b3-3 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 3 2 tablero))]))

; Make a button in the frame
(define b3-4 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 3 3 tablero))]))


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

; Make a button in the frame
(define b7-7 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b7-8 (new button% [parent row7]
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

; Make a button in the frame
(define b8-6 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b8-7 (new button% [parent row8]
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
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b9-2 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b9-3 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b9-4 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b9-5 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b9-6 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; -----------------------------------------------------------------

(define row10 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b10-1 (new button% [parent row10]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b10-2 (new button% [parent row10]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b10-3 (new button% [parent row10]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b10-4 (new button% [parent row10]
             [label "-"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))]))

; Make a button in the frame
(define b10-5 (new button% [parent row10]
             [label "-"]
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
                         (verificar-disponibles 11 0 0 0 #f tablero))]))

; Make a button in the frame
(define b11-2 (new button% [parent row11]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 11 1 0 0 #f tablero))]))

; Make a button in the frame
(define b11-3 (new button% [parent row11]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 11 2 0 0 #f tablero))]))

; Make a button in the frame
(define b11-4 (new button% [parent row11]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 11 3 0 0 #f tablero))]))

; -----------------------------------------------------------------

(define row12 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b12-1 (new button% [parent row12]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 12 0 0 0 #f tablero))]))

; Make a button in the frame
(define b12-2 (new button% [parent row12]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 12 1 0 0 #f tablero))]))

; Make a button in the frame
(define b12-3 (new button% [parent row12]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 12 2 0 0 #f tablero))]))

; -----------------------------------------------------------------

(define row13 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b13-1 (new button% [parent row13]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 13 0 0 0 #f tablero))]))

; Make a button in the frame
(define b13-2 (new button% [parent row13]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (verificar-disponibles 13 1 0 0 #f tablero))]))


; -----------------------------------------------------------------

(define row14 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

; Make a button in the frame
(define b14-1 (new button% [parent row14]
             [label "O"]
             [enabled #f]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         ;(check-availables b12-1))]))
                         (set! tmp b14-1)
                         (verificar-disponibles 14 0 0 0 #f tablero))]))

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

(define o01(ficha "O" b14-1))
(define o02(ficha "O" b13-1))
(define o03(ficha "O" b13-2))
(define o04(ficha "O" b12-1))
(define o05(ficha "O" b12-2)) ; Fichas del jugador O
(define o06(ficha "O" b12-3))
(define o07(ficha "O" b11-1))
(define o08(ficha "O" b11-2))
(define o09(ficha "O" b11-3))
(define o10(ficha "O" b11-4))

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
(define e25(ficha "E" b7-7))
(define e26(ficha "E" b7-8))
(define e27(ficha "E" b8-1))
(define e28(ficha "E" b8-2))
(define e29(ficha "E" b8-3))
(define e30(ficha "E" b8-4))
(define e31(ficha "E" b8-5))
(define e32(ficha "E" b8-6))
(define e33(ficha "E" b8-7))
(define e34(ficha "E" b9-1))
(define e35(ficha "E" b9-2))
(define e36(ficha "E" b9-3))
(define e37(ficha "E" b9-4))
(define e38(ficha "E" b9-5))
(define e39(ficha "E" b9-6))
(define e40(ficha "E" b10-1))
(define e41(ficha "E" b10-2))
(define e42(ficha "E" b10-3))
(define e43(ficha "E" b10-4))
(define e44(ficha "E" b10-5))

(define lista-fichas
  (list x01 x02 x03 x04 x05 x06 x07 x08 x09 x10
        o01 o02 o03 o04 o05 o06 o07 o08 o09 o10
        e01 e02 e03 e04 e05 e06 e07 e08 e09 e10
        e11 e12 e13 e14 e15 e16 e17 e18 e19 e20
        e21 e22 e23 e24 e25 e26 e27 e28 e29 e30
        e31 e32 e33 e34 e35 e36 e37 e38 e39 e40
        e41 e42 e43 e44))

(define turnoActual "O")
(define accionActual 0)
(define tmp null)

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
               (list    e19 e20 e21 e22 e23 e24 e25 e26)
               (list      e27 e28 e29 e30 e31 e32 e33)
               (list        e34 e35 e36 e37 e38 e39)
               (list          e40 e41 e42 e43 e44)
               (list            o07 o08 o09 o10)
               (list              o04 o05 o06)
               (list                o02 o03)
               (list                  o01)
               ))

(define (realizar-jugada tableroo x1 y1)
  (set! accionActual 1)
  (cambiar-btns turnoActual tablero #f)
  
  ;jabdiajbfiabfibaifbaiufhiuahfiuahfiahfihaifhaifiahri
  
  (set! turnoActual "X")
  )

;------------------

(define (verificar-disponibles x1 y1 x2 y2 flag tableroo)
  (cond
    [(empty? tableroo) (if (boolean=? flag #f) (writeln 'NoHayJugada) (realizar-jugada tablero x1 y1))]
    [else (verificar-disponibles-aux x1 y1 x2 y2 tableroo (first tableroo) flag)]))

(define (verificar-disponibles-aux x1 y1 x2 y2 tableroo fila flag)
  ;(write x1)(writeln x2)
  (cond
    [(empty? fila) (verificar-disponibles x1 y1 (+ x2 1) 0 flag (rest tableroo))]
    [(not(verificar-espacio-vacio (first fila))) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)]


    
    ;abajo de la mitad
    [(equal? (- x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (write 'aqui1) (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - izquierda
      [(equal? y1 (- y2 1)) (begin (write 'aqui2) (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] ; arriba - derecha
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    
    
    [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)]))

;------------------

(define (verificar-espacio-vacio fichaa)
  (if (equal? (ficha-tipo fichaa) "E") #t #f))

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

(define (jugar)
  (cond
    [(boolean=? (hay-ganador) #t) (write 'GANOOOOO)]
    [(equal? turnoActual "O") (juega-O)]
    [else (juega-X)] ))

(define (juega-O)
  (send msg set-label "O")
  (cambiar-btns "X" tablero #f) ;apago los botones de "X"
  (cambiar-btns "0" tablero #t) ;prendo los botones de "O"
  )
  ;(iniciar 0))

(define (juega-X)
  (send msg set-label "X")
  (cambiar-btns "X" tablero #t) ;prendo los botones de "X"
  (cambiar-btns "0" tablero #f) ;apago los botones de "O"
  )
  ;(iniciar 1)

;------------------

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

;------------------

(define (cambiar-btn btn condicion)
  (send btn enable condicion))

(send frame show #t)