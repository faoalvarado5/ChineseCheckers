#lang racket

(require racket/gui)

; Frame del GUI.
(define frame (new frame%
                   [label "Chinese Checkers IA"]
                   [border 10]
                   [spacing 5]
                   [x 1000]	 
                   [y 30]))

; Botón de incio.
(define bnn (new button% [parent frame]
             [label "Click para empezar"]
             [enabled #t]
             [callback (lambda (button event)
                         (send bnn enable #f)
                         (jugar))]))

; Pantalla de mensajes del juego.
(define msg (new message% [parent frame]
                          [label "Hola!"]
                          [vert-margin 10]
                          [stretchable-width #f]	 
                          [stretchable-height #f]	
                          [auto-resize #t]))

; ---------------------------------------------------------------------

; Fila #0 del tablero seguida de sus respectivos botones.
(define row0 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

(define b0-1 (new button% [parent row0]
             [label "X"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 0 0 0 0 #f tablero) (cambiar-posiciones 0 0)))]))

; ---------------------------------------------------------------------

; Fila #1 del tablero seguida de sus respectivos botones.
(define row1 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

(define b1-1 (new button% [parent row1]
             [label "X"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 1 0 0 0 #f tablero) (cambiar-posiciones 1 0)))]))

(define b1-2 (new button% [parent row1]
             [label "X"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 1 1 0 0 #f tablero) (cambiar-posiciones 1 1)))]))


; ---------------------------------------------------------------------

; Fila #2 del tablero seguida de sus respectivos botones.
(define row2 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

(define b2-1 (new button% [parent row2]
             [label "X"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 2 0 0 0 #f tablero) (cambiar-posiciones 2 0)))]))

(define b2-2 (new button% [parent row2]
             [label "X"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 2 1 0 0 #f tablero) (cambiar-posiciones 2 1)))]))

(define b2-3 (new button% [parent row2]
             [label "X"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 2 2 0 0 #f tablero) (cambiar-posiciones 2 2)))]))


; -----------------------------------------------------------------

; Fila #3 del tablero seguida de sus respectivos botones.
(define row3 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))


(define b3-1 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 3 0 0 0 #f tablero) (cambiar-posiciones 3 0)))]))

(define b3-2 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 3 1 0 0 #f tablero) (cambiar-posiciones 3 1)))]))

(define b3-3 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 3 2 0 0 #f tablero) (cambiar-posiciones 3 2)))]))

(define b3-4 (new button% [parent row3]
             [label "X"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 3 3 0 0 #f tablero) (cambiar-posiciones 3 3)))]))


; -----------------------------------------------------------------

; Fila #4 del tablero seguida de sus respectivos botones.
(define row4 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

(define b4-1 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 4 0 0 0 #f tablero) (cambiar-posiciones 4 0)))]))

(define b4-2 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 4 1 0 0 #f tablero) (cambiar-posiciones 4 1)))]))

(define b4-3 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 4 2 0 0 #f tablero) (cambiar-posiciones 4 2)))]))

(define b4-4 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 4 3 0 0 #f tablero) (cambiar-posiciones 4 3)))]))

(define b4-5 (new button% [parent row4]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 4 4 0 0 #f tablero) (cambiar-posiciones 4 4)))]))

; -----------------------------------------------------------------

; Fila #5 del tablero seguida de sus respectivos botones.
(define row5 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

(define b5-1 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 5 0 0 0 #f tablero) (cambiar-posiciones 5 0)))]))

(define b5-2 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 5 1 0 0 #f tablero) (cambiar-posiciones 5 1)))]))

(define b5-3 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 5 2 0 0 #f tablero) (cambiar-posiciones 5 2)))]))

(define b5-4 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 5 3 0 0 #f tablero) (cambiar-posiciones 5 3)))]))

(define b5-5 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 5 4 0 0 #f tablero) (cambiar-posiciones 5 4)))]))

(define b5-6 (new button% [parent row5]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 5 5 0 0 #f tablero) (cambiar-posiciones 5 5)))]))

; -----------------------------------------------------------------

; Fila #6 del tablero seguida de sus respectivos botones.
(define row6 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

(define b6-1 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 6 0 0 0 #f tablero) (cambiar-posiciones 6 0)))]))

(define b6-2 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 6 1 0 0 #f tablero) (cambiar-posiciones 6 1)))]))

(define b6-3 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 6 2 0 0 #f tablero) (cambiar-posiciones 6 2)))]))

(define b6-4 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 6 3 0 0 #f tablero) (cambiar-posiciones 6 3)))]))

(define b6-5 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 6 4 0 0 #f tablero) (cambiar-posiciones 6 4)))]))

(define b6-6 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 6 5 0 0 #f tablero) (cambiar-posiciones 6 5)))]))

(define b6-7 (new button% [parent row6]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 6 6 0 0 #f tablero) (cambiar-posiciones 6 6)))]))

; -----------------------------------------------------------------

; Fila #7 del tablero seguida de sus respectivos botones.
(define row7 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

(define b7-1 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 0 0 0 #f tablero) (cambiar-posiciones 7 0)))]))

(define b7-2 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 1 0 0 #f tablero) (cambiar-posiciones 7 1)))]))

(define b7-3 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 2 0 0 #f tablero) (cambiar-posiciones 7 2)))]))

(define b7-4 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 3 0 0 #f tablero) (cambiar-posiciones 7 3)))]))

(define b7-5 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 4 0 0 #f tablero) (cambiar-posiciones 7 4)))]))

(define b7-6 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 5 0 0 #f tablero) (cambiar-posiciones 7 5)))]))

(define b7-7 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 6 0 0 #f tablero) (cambiar-posiciones 7 6)))]))

(define b7-8 (new button% [parent row7]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 7 7 0 0 #f tablero) (cambiar-posiciones 7 7)))]))

; -----------------------------------------------------------------

; Fila #8 del tablero seguida de sus respectivos botones.
(define row8 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

(define b8-1 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 8 0 0 0 #f tablero) (cambiar-posiciones 8 0)))]))

(define b8-2 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 8 1 0 0 #f tablero) (cambiar-posiciones 8 1)))]))

(define b8-3 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 8 2 0 0 #f tablero) (cambiar-posiciones 8 2)))]))

(define b8-4 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 8 3 0 0 #f tablero) (cambiar-posiciones 8 3)))]))

(define b8-5 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 8 4 0 0 #f tablero) (cambiar-posiciones 8 4)))]))

(define b8-6 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 8 5 0 0 #f tablero) (cambiar-posiciones 8 5)))]))

(define b8-7 (new button% [parent row8]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 8 6 0 0 #f tablero) (cambiar-posiciones 8 6)))]))

; -----------------------------------------------------------------

; Fila #9 del tablero seguida de sus respectivos botones.
(define row9 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

(define b9-1 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 9 0 0 0 #f tablero) (cambiar-posiciones 9 0)))]))

(define b9-2 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 9 1 0 0 #f tablero) (cambiar-posiciones 9 1)))]))

(define b9-3 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 9 2 0 0 #f tablero) (cambiar-posiciones 9 2)))]))

(define b9-4 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 9 3 0 0 #f tablero) (cambiar-posiciones 9 3)))]))

(define b9-5 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 9 4 0 0 #f tablero) (cambiar-posiciones 9 4)))]))

(define b9-6 (new button% [parent row9]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 9 5 0 0 #f tablero) (cambiar-posiciones 9 5)))]))

; -----------------------------------------------------------------

; Fila #10 del tablero seguida de sus respectivos botones.
(define row10 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

(define b10-1 (new button% [parent row10]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 10 0 0 0 #f tablero) (cambiar-posiciones 10 0)))]))

(define b10-2 (new button% [parent row10]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 10 1 0 0 #f tablero) (cambiar-posiciones 10 1)))]))

(define b10-3 (new button% [parent row10]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 10 2 0 0 #f tablero) (cambiar-posiciones 10 2)))]))

(define b10-4 (new button% [parent row10]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 10 3 0 0 #f tablero) (cambiar-posiciones 10 3)))]))

(define b10-5 (new button% [parent row10]
             [label "-"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 10 4 0 0 #f tablero) (cambiar-posiciones 10 4)))]))

; -----------------------------------------------------------------

; Fila #11 del tablero seguida de sus respectivos botones.
(define row11 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

(define b11-1 (new button% [parent row11]
             [label "O"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 11 0 0 0 #f tablero) (cambiar-posiciones 11 0)))]))

(define b11-2 (new button% [parent row11]
             [label "O"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 11 1 0 0 #f tablero) (cambiar-posiciones 11 1)))]))

(define b11-3 (new button% [parent row11]
             [label "O"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 11 2 0 0 #f tablero) (cambiar-posiciones 11 2)))]))

(define b11-4 (new button% [parent row11]
             [label "O"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 11 3 0 0 #f tablero) (cambiar-posiciones 11 3)))]))

; -----------------------------------------------------------------

; Fila #12 del tablero seguida de sus respectivos botones.
(define row12 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

(define b12-1 (new button% [parent row12]
             [label "O"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 12 0 0 0 #f tablero) (cambiar-posiciones 12 0)))]))

(define b12-2 (new button% [parent row12]
             [label "O"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 12 1 0 0 #f tablero) (cambiar-posiciones 12 1)))]))

(define b12-3 (new button% [parent row12]
             [label "O"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 12 2 0 0 #f tablero) (cambiar-posiciones 12 2)))]))

; -----------------------------------------------------------------

; Fila #13 del tablero seguida de sus respectivos botones.
(define row13 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

(define b13-1 (new button% [parent row13]
             [label "O"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 13 0 0 0 #f tablero) (cambiar-posiciones 13 0)))]))

(define b13-2 (new button% [parent row13]
             [label "O"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 13 1 0 0 #f tablero) (cambiar-posiciones 13 1)))]))


; -----------------------------------------------------------------

; Fila #14 del tablero seguida de sus respectivos botones.
(define row14 (new horizontal-panel% [parent frame]
                  	            [alignment (list 'center 'top)]))

(define b14-1 (new button% [parent row14]
             [label "O"]
             [enabled #f]
             [callback (lambda (button event)
                         (if (= accionActual 0) (verificar-disponibles 14 0 0 0 #f tablero) (cambiar-posiciones 14 0)))]))

;-------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------

(define-struct ficha(tipo btn) #:mutable #:transparent)

(define f01(ficha "X" b0-1))
(define f02(ficha "X" b1-1))
(define f03(ficha "X" b1-2))
(define f04(ficha "X" b2-1))
(define f05(ficha "X" b2-2)) ; Fichas del jugador X
(define f06(ficha "X" b2-3))
(define f07(ficha "X" b3-1))
(define f08(ficha "X" b3-2))
(define f09(ficha "X" b3-3))
(define f10(ficha "X" b3-4))

(define f11(ficha "O" b14-1))
(define f12(ficha "O" b13-1))
(define f13(ficha "O" b13-2))
(define f14(ficha "O" b12-1))
(define f15(ficha "O" b12-2)) ; Fichas del jugador O
(define f16(ficha "O" b12-3))
(define f17(ficha "O" b11-1))
(define f18(ficha "O" b11-2))
(define f19(ficha "O" b11-3))
(define f20(ficha "O" b11-4))

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

(define IA "X") ; Tipo de fichas de la IA
(define turnoActual "O") ; Turno actual (incia el usuario con las dichas de tipo O)
(define accionActual 0) ; Acción actual a realizar con los botones
(define actualX null) 
(define actualY null)
(define tableroTMP null) ; Tablero temporal.

(define-struct movimiento(ficha x1 y1 x2 y2 peso) #:mutable #:transparent)
(define listaMovimientos(list)) ; Lista de posibles movimentos de la IA.
(define listaPrimerosMovimientos(list
                                 (make-movimiento f08 3 1 4 2 36)
                                 (make-movimiento e03 4 2 5 3 40)
                                 (make-movimiento f04 2 0 3 1 36) ; Lista de los primeros movimientos de la IA.
                                 (make-movimiento f08 3 1 4 2 36)
                                 (make-movimiento e08 5 3 6 3 32)
                                 ))

; 10 : cuando avanza y se mueve hacia el mero centro
; 9 : cuando avanza y se muere hacia el centro
; 8 : cuando avanza y se aleja del centro
; 7 : cuando se mueve en linea y se mueve hacia el mero centro
; 6 : cuando se mueve en linea y se muere hacia el centro
; 5 : cuando se mueve en linea y se aleja del centro
; 4 : cuando no avanza y se mueve hacia el mero centro
; 3 : cuando no avanza y se muere hacia el centro
; 2 : cuando no avanza y se aleja del centro

(define listaEval(list
                  (list        4)
                  (list       4 4)
                  (list      3 4 3)
                  (list     3 4 4 3)
                  (list    2 3 4 3 2)
                  (list   2 3 4 4 3 2)
                  (list  1 2 3 4 3 2 1)
                  (list 1 2 3 4 4 3 2 1) ; Matríz de coeficientes de aproximación al centro.
                  (list  1 2 3 4 3 2 1)
                  (list   2 3 4 4 3 2)
                  (list    2 3 4 3 2)
                  (list     3 4 4 3)
                  (list      3 4 3)
                  (list       4 4)
                  (list        4)
                  ))

; F --> Fichas de jugadores.
; E --> Espacio.
(define tablero(list
               (list                  f01)
               (list                f02 f03)
               (list              f04 f05 f06)
               (list            f07 f08 f09 f10)
               (list          e01 e02 e03 e04 e05)
               (list        e06 e07 e08 e09 e10 e11)
               (list      e12 e13 e14 e15 e16 e17 e18)
               (list    e19 e20 e21 e22 e23 e24 e25 e26) ; Tablero de juego.
               (list      e27 e28 e29 e30 e31 e32 e33)
               (list        e34 e35 e36 e37 e38 e39)
               (list          e40 e41 e42 e43 e44)
               (list            f17 f18 f19 f20)
               (list              f14 f15 f16)
               (list                f12 f13)
               (list                  f11)
               ))


;-------------------------------------------------------------------------------
; De aqui hacia abajo es el funcionamiento de la IA.
;-------------------------------------------------------------------------------

(define (juega-IA)
  #|
  Entradas: Ninguna.
  Salidas: Nada.
  Restricciones: Debe ser el turno de la IA.
  Descripcion: Función encargada de realizar el movimiento de la IA.
  |#
  (set! listaMovimientos (list))
  (cambiar-btns "0" tablero #f) ;apago los botones de "O"
  (cambiar-btns "E" tablero #f) ;apago los botones de "O"
  (cambiar-btns "X" tablero #f) ;prendo los botones de "X"
  (posibles-jugadas-ia tablero 0 0)
  (set! actualX (movimiento-x1 (minimax listaMovimientos (first listaMovimientos))))
  (set! actualY (movimiento-y1 (minimax listaMovimientos (first listaMovimientos))))
  (cambiar-posiciones (movimiento-x2 (minimax listaMovimientos (first listaMovimientos))) (movimiento-y2 (minimax listaMovimientos (first listaMovimientos)))) ; hago la jugada devuelta por el minimax
  )

(define (mayor lista raiz)
  #|
  Entradas: Una lista de posibles movimientos y el nodo raíz del árbol.
  Salidas: El nodo raíz del árbol.
  Restricciones: La lista no debe de ser vacía y el nodo raíz no debe de ser nulo.
  Descripcion: Función encargada de identificar la mejor jugada para la IA.
  |#
  (cond
    [(empty? lista) raiz]
    [else (if (> (movimiento-peso raiz) (movimiento-peso (first lista))) (mayor (rest lista) raiz) (mayor (rest lista) (first lista)))]))

(define (minimax lista raiz)
  #|
  Entradas: Una lista de posibles movimientos y el nodo raíz del árbol.
  Salidas: Nada.
  Restricciones: La lista no debe de ser vacía y el nodo raíz no debe de ser nulo.
  Descripcion: Función principal del algoritmo minimax.
  |#
  (cond
    [(< (length lista) 3) (mayor listaMovimientos (first listaMovimientos))] ;aquí es cuando el árbol ya no da para otra iteración.
    [else (minimax-aux lista raiz (first lista) 1)])) ;este first lista representa el hijo de la raiz, o sea, el nivel dos.

(define (minimax-aux lista raiz nodoHijo contador)
  #|
  Entradas: Una lista de posibles movimientos, el nodo raíz del árbol, el nodo hijo de la raíz y un contador.
  Salidas: Nada.
  Restricciones: La lista no debe de ser vacía, el nodo raíz no debe de ser nulo el nodoHijo no debe ser nulo y el contador no debe de ser mayor que 3 ni menor que 0.
  Descripcion: Función auxiliar del minimax, donde se realizan las comparaciones y la poda.
  |#
  (cond
    [(= contador 3) (minimax (rest(rest(rest lista))) raiz)]
    [(< (movimiento-peso nodoHijo) (movimiento-peso raiz)) (minimax (rest(rest(rest lista))) raiz)] ; aqui se hace la validacion y se hace la poda a-b
    [(> (movimiento-peso nodoHijo) (movimiento-peso raiz)) (minimax (rest(rest(rest lista))) nodoHijo)] ; aqui sube el nodo hoja al nodo hijo
    [else (if (< (movimiento-peso (first lista)) (movimiento-peso nodoHijo)) (minimax-aux lista raiz (first lista) (+ contador 1)) (minimax-aux lista raiz nodoHijo (+ contador 1)))])) ;el first lista al incio del if representa el tercer nivel.

(define (Eval x1 y1 x2 y2)
  #|
  Entradas: Cuatro índices, los 2 primeros referentes a la posición de la ficha a mover, y los 2 restantes a la posición a mover.
  Salidas: Un valor numérico con el peso de la jugada.
  Restricciones: Los índices no pueden ser nulos y deben estar dentro de las posiciones válidas del tablero.
  Descripcion: Función encargada de asignar un peso a una posible jugada.
  |#
  (cond
    ;caso donde retrocede
    [(> x1 x2) (cond
                 ; sector izquierdo
                 [(> (/ (length(list-ref tablero x2)) 2)  y2) (cond
                              ;se aleja del centro
                              [(> y1 y2) (* 2 (list-ref (list-ref listaEval x2) y2))]
                              ;se acerca del centro
                              [(< y1 y2) (* 3 (list-ref (list-ref listaEval x2) y2))]
                              ; se acerca
                              [else (* 3 (list-ref (list-ref listaEval x2) y2))])]
                 
                 ; sector derecho
                 [(< (/ (length(list-ref tablero x2)) 2)  y2) (cond
                              ;se acerca del centro
                              [(> y1 y2) (* 3 (list-ref (list-ref listaEval x2) y2))]
                              ;se aleja del centro
                              [(< y1 y2) (* 2 (list-ref (list-ref listaEval x2) y2))]
                              ;se aleja
                              [else (* 2 (list-ref (list-ref listaEval x2) y2))])]
                 ; cuando esta en el mero centro
                 [else (* 4 (list-ref (list-ref listaEval x2) y2))])]

    ;caso donde avanza
    [(< x1 x2) (cond
                 ; sector izquierdo
                 [(> (/ (length(list-ref tablero x2)) 2)  y2) (cond
                              ;se aleja del centro
                              [(> y1 y2) (* 8 (list-ref (list-ref listaEval x2) y2))]
                              ;se acerca del centro
                              [(< y1 y2) (* 9 (list-ref (list-ref listaEval x2) y2))]
                              [else (* 8 (list-ref (list-ref listaEval x2) y2))])]
                 
                 ; sector derecho
                 [(< (/ (length(list-ref tablero x2)) 2)  y2) (cond
                              ;se acerca del centro
                              [(> y1 y2) (* 9 (list-ref (list-ref listaEval x2) y2))]
                              ;se aleja del centro
                              [(< y1 y2) (* 8 (list-ref (list-ref listaEval x2) y2))]
                              [else (* 9 (list-ref (list-ref listaEval x2) y2))])]
                 ; cuando esta en el mero centro
                 [else (* 10 (list-ref (list-ref listaEval x2) y2))])]
    
    ;cuando se mueve en la misma fila
    [else (cond
                 ; sector izquierdo
                 [(> (/ (length(list-ref tablero x2)) 2)  y2) (cond
                              ;se aleja del centro
                              [(> y1 y2) (* 5 (list-ref (list-ref listaEval x2) y2))]
                              ;se acerca del centro
                              [(< y1 y2) (* 6 (list-ref (list-ref listaEval x2) y2))])]
                 
                 ; sector derecho
                 [(< (/ (length(list-ref tablero x2)) 2)  y2) (cond
                              ;se acerca del centro
                              [(> y1 y2) (* 6 (list-ref (list-ref listaEval x2) y2))]
                              ;se aleja del centro
                              [(< y1 y2) (* 5 (list-ref (list-ref listaEval x2) y2))])]
                 ; cuando esta en el mero centro
                 [else (* 7 (list-ref (list-ref listaEval x2) y2))])]))

(define (posibles-jugadas-ia tableroo x1 y1)
  #|
  Entradas: El tablero actual y dos índices de control de posiciones.
  Salidas: Nada.
  Restricciones: El tablero no debe ser nulo y ambos indices deben ser 0s.
  Descripcion: Función principal encargada de buscar todos los posibles movimientos de la IA y meterlos en una lista.
  |#
  (cond
    [(empty? tableroo) 0]
    [else (posibles-jugadas-ia-aux x1 y1 tableroo (first tableroo))]))

(define (posibles-jugadas-ia-aux x1 y1 tableroo fila)
  #|
  Entradas: Dos índices de control de posiciones, el tablero actual y la primera fila de la matríz del tablero.
  Salidas: Nada.
  Restricciones: Los índices deben ser válidos al igual que el tablero y la fila.
  Descripcion: Función auxiliar dedicada a identificar las posiciones de las fichas de la IA (tipo X).
  |#
  (cond
    [(empty? fila) (posibles-jugadas-ia (rest tableroo) (+ x1 1) 0)]
    [(equal? (ficha-tipo (first fila)) IA) (begin
                                             (verificar-disponibles-ia x1 y1 0 0 tablero) ;aquí identifica una ficha de tipo X y busca sus posibles movimientos.
                                             (posibles-jugadas-ia-aux x1 (+ y1 1) tableroo (rest fila)))]
    [else (posibles-jugadas-ia-aux x1 (+ y1 1) tableroo (rest fila))]))


(define (verificar-disponibles-ia x1 y1 x2 y2 tableroo)
  #|
  Entradas: Cuatro índices donde respectivamente dos son referentes a la posición actual de la ficha y los dos restantes de control y el tablero actual.
  Salidas: Nada.
  Restricciones: Los índices deben ser válidos al igual que el tablero.
  Descripcion: Función principal encargada de recorrer el tablero en busca de posibles movimientos.
  |#
  (cond
    [(empty? tableroo) 0]
    [else (verificar-disponibles-ia-aux x1 y1 x2 y2 tableroo (first tableroo))]))

(define (verificar-disponibles-ia-aux x1 y1 x2 y2 tableroo fila)
  #|
  Entradas: Cuatro índices donde respectivamente dos son referentes a la posición actual de la ficha y los dos restantes de control, el tablero actual y la fila actual.
  Salidas: Nada.
  Restricciones: Los índices deben ser válidos al igual que el tablero y la fila.
  Descripcion: Función auxiliar encargada de recorrer el tablero en busca de posibles movimientos y en caso de identificar uno, agregarlo a la lista respectiva.
  |#
  (cond
    [(empty? fila) (verificar-disponibles-ia x1 y1 (+ x2 1) 0   (rest tableroo))]
    [(not(verificar-espacio-vacio (first fila))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila))] ;aquí verifica que no sea un espacio vacío para ahorrar algo de tiempo de ejecución.

    ; parte inferior del tablero
    [(> x1 7)
    (cond

    ; movimiento hacia atrás
    [(equal? (- x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] ; arriba - izquierda
      [(equal? y1 (- y2 1)) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] ; arriba - derecha
      [else (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)  )])]

    ; movimiento hacia adelante
    [(equal? (+ x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] ; arriba - izquierda
      [(equal? (- y1 1) y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] ; arriba - derecha
      [else (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)  )])]

    ; movimiento hacia un lado
    [(equal? x1 x2)
     (cond
      [(equal? (+ y1 1) y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] ; arriba - derecha
      [(equal? (- y1 1) y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] ; arriba - derecha
      [else (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)  )])]
    
    [else (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)  )])]

    ; parte superior del tablero
    [(< x1 7)
     (cond

    ; movimiento hacia adelante
    [(equal? (+ x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] 
      [(equal? (+ y1 1) y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] 
      [else (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)  )])]

    ; movimiento hacia atrás
    [(equal? (- x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] 
      [(equal? y1 (+ y2 1)) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))]
      [else (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)  )])]

    ; movimiento hacia un lado
    [(equal? x1 x2)
     (cond
      [(equal? (+ y1 1) y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] 
      [(equal? (- y1 1) y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] 
      [else (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)  )])]
    
    [else (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)  )])]
    
    ; centro del tablero
    [(= x1 7)
     (cond

    ; movimiento hacia adelante
    [(equal? (+ x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] 
      [(equal? (- y1 1) y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] 
      [else (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)  )])]

    ; movimiento hacia atrás
    [(equal? (- x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] 
      [(equal? y1 (+ y2 1)) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))]
      [else (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)  )])]

    ; movimiento hacia un lado
    [(equal? x1 x2)
     (cond
      [(equal? (+ y1 1) y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] 
      [(equal? (- y1 1) y2) (begin (set! listaMovimientos (append listaMovimientos (list (make-movimiento (first fila) x1 y1 x2 y2 (Eval x1 y1 x2 y2))))) (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)))] 
      [else (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)  )])]
    
    [else (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)  )])]
    
    [else (verificar-disponibles-ia-aux x1 y1 x2 (+ y2 1) tableroo (rest fila)  )]))


;-------------------------------------------------------------------------------------------
; De aqui hacia abajo es el funcionamiento del juego normal, sin IA.
;----------------------------------------------------------------------------------------------

(define (ubicar-elemento tableroo x1 y1 x2 y2)
  #|
  Entradas: El tablero actual y cuatro índices donde respectivamente dos son referentes a la posición actual de la ficha y los dos restantes de control.
  Salidas: Nada.
  Restricciones: Los índices deben ser válidos al igual que el tablero.
  Descripcion: Función principal encargada de recorrer el tablero en busca de de un elemento en específico.
  |#
  (cond
    [(empty? tableroo) 0]
    [else (ubicar-elemento-aux tableroo x1 y1 x2 y2 (first tableroo))]))

(define (ubicar-elemento-aux tableroo x1 y1 x2 y2 fila)
  #|
  Entradas: El tablero actual, cuatro índices donde respectivamente dos son referentes a la posición actual de la ficha y los dos restantes de control y la fila actual.
  Salidas: El struct referente al elemento a buscar.
  Restricciones: Los índices deben ser válidos al igual que el tablero y la fila.
  Descripcion: Función auxiliar encargada de recorrer el tablero en busca de de un elemento en específico.
  |#
  (cond
    [(empty? fila) (ubicar-elemento (rest tableroo) x1 y1 (+ x2 1) 0)]
    [(equal? x1 x2) (cond
                       [(equal? y1 y2)(first fila)]
                       [else (ubicar-elemento-aux tableroo x1 y1 x2 (+ y2 1) (rest fila))])]
    [else (ubicar-elemento-aux tableroo x1 y1 x2 (+ y2 1)(rest fila))]))

;-----------------------------------------------------

(define (nuevo-tablero tableroo x1 y1 x2 y2 tablero2)
  #|
  Entradas: El tablero actual, cuatro índices donde respectivamente dos son referentes a la posición actual de la ficha y los dos restantes de control y un tablero temporal.
  Salidas: El tablero actual nuevo.
  Restricciones: Los índices deben ser válidos al igual que el tablero y el tablero temporal.
  Descripcion: Función principal encargada de cambiar el tablero tras una jugada.
  |#
  (cond
    [(empty? tableroo) tablero2] ; devuelve el tablero nuevo.
    [else (nuevo-tablero-aux tableroo x1 y1 x2 y2 (first tableroo) tablero2 (list))]))

(define (nuevo-tablero-aux tableroo x1 y1 x2 y2 fila tablero2 fila2)
  #|
  Entradas: El tablero actual, cuatro índices donde respectivamente dos son referentes a la posición actual de la ficha y los dos restantes de control, la fila actual, un tablero temporal y la fila actual temporal.
  Salidas: El tablero actual nuevo.
  Restricciones: Los índices deben ser válidos al igual que el tablero y el tablero temporal.
  Descripcion: Función principal encargada de cambiar el tablero tras una jugada.
  |#
  (cond
    [(empty? fila) (nuevo-tablero (rest tableroo) x1 y1 (+ x2 1) 0 (append tablero2 (list fila2)))]
    [(equal? x1 x2) (cond
                       [(equal? y1 y2) (nuevo-tablero-aux tableroo x1 y1 x2 (+ y2 1) (rest fila) tablero2 (append fila2 (list (struct-copy ficha (ubicar-elemento tablero x1 y1 0 0) [tipo turnoActual]))))] ;se asigna la ficha
                       [(equal? actualX x2) (cond
                                              [(equal? actualY y2) (nuevo-tablero-aux tableroo x1 y1 x2 (+ y2 1) (rest fila) tablero2 (append fila2 (list (struct-copy ficha (ubicar-elemento tablero actualX actualY 0 0) [tipo "E"]))))] ; se asigna el espacio vacío
                                              [else (nuevo-tablero-aux tableroo x1 y1 x2 (+ y2 1) (rest fila) tablero2 (append fila2 (list(first fila))))])]
                       [else (nuevo-tablero-aux tableroo x1 y1 x2 (+ y2 1)(rest fila) tablero2 (append fila2 (list(first fila))))])]
    
    [(equal? actualX x2) (cond
                       [(equal? actualY y2) (nuevo-tablero-aux tableroo x1 y1 x2 (+ y2 1) (rest fila) tablero2 (append fila2 (list (struct-copy ficha (ubicar-elemento tablero actualX actualY 0 0) [tipo "E"]))))] ; se asigna el espacio vacío
                       [(equal? x1 x2) (cond
                                         [(equal? y1 y2) (nuevo-tablero-aux tableroo x1 y1 x2 (+ y2 1) (rest fila) tablero2 (append fila2 (list (struct-copy ficha (ubicar-elemento tablero x1 y1 0 0) [tipo turnoActual]))))] ;se asigna la ficha
                                         [else (nuevo-tablero-aux tableroo x1 y1 x2 (+ y2 1)(rest fila) tablero2 (append fila2 (list(first fila))))])]
                       [else (nuevo-tablero-aux tableroo x1 y1 x2 (+ y2 1) (rest fila) tablero2 (append fila2 (list(first fila))))])]
    
    [else (nuevo-tablero-aux tableroo x1 y1 x2 (+ y2 1)(rest fila) tablero2 (append fila2 (list(first fila))))]))

;----------------------------------
(define (cambiar-posiciones x1 y1)
  #|
  Entradas: Dos índices referentes a la posición a cambiar.
  Salidas: Nada.
  Restricciones: Los índices deben ser válidos.
  Descripcion: Función encargada de cambiar dos fichas.
  |#
  (send (ficha-btn (ubicar-elemento tablero x1 y1 0 0)) set-label turnoActual) ;cambia los labels de los botones para el GUI.
  (send (ficha-btn (ubicar-elemento tablero actualX actualY 0 0)) set-label "-")
  
  (set! tableroTMP (nuevo-tablero tablero x1 y1 0 0 (list)))
  (set tablero null)
  (set! tablero tableroTMP) ;aquí hace los cambios necesarios para establecer el nuevo tablero tras la jugada
  (set! tableroTMP null)
  (set! accionActual 0)

  (if (boolean=? (hay-ganador) #t)
      (begin (send msg set-label "Hay ganador") (cambiar-btns "X" tablero #f) (cambiar-btns "O" tablero #f) (cambiar-btns "E" tablero #f))
      (begin (if (equal? turnoActual "O") (set! turnoActual "X") (set! turnoActual "O")) (jugar))
      )
  )

(define (realizar-jugada x1 y1)
  #|
  Entradas: Dos índices referentes a la posición actual a cambiar.
  Salidas: Nada.
  Restricciones: Los índices deben ser válidos.
  Descripcion: Función encargada de setear variables para hacer el cambio de fichas próximamente.
  |#
  (set! actualX x1)
  (set! actualY y1)
  (set! accionActual 1) ; cambia de accíon actual 
  (cambiar-btns turnoActual tablero #f)
  )

;------------------

(define (verificar-disponibles x1 y1 x2 y2 flag tableroo)
  #|
  Entradas: Cuatro índices donde respectivamente dos son referentes a la posición actual de la ficha y los dos restantes de control, una bandera y el tablero actual.
  Salidas: Nada.
  Restricciones: Los índices deben ser válidos al igual que el tablero.
  Descripcion: Función principal encargada de recorrer el tablero en busca de posibles movimientos.
  |#
  (cond
    [(empty? tableroo) (if (boolean=? flag #f) (send msg set-label "No hay jugada") (realizar-jugada x1 y1))] ; en caso de que no haya jugada lo indica, y si la hay, setea las variables respectivas
    [else (verificar-disponibles-aux x1 y1 x2 y2 tableroo (first tableroo) flag)]))

(define (verificar-disponibles-aux x1 y1 x2 y2 tableroo fila flag)
  #|
  Entradas: Cuatro índices donde respectivamente dos son referentes a la posición actual de la ficha y los dos restantes de control, el tablero actual, la fila actual y la bandera.
  Salidas: Nada.
  Restricciones: Los índices deben ser válidos al igual que el tablero y la fila.
  Descripcion: Función auxiliar encargada de recorrer el tablero en busca de posibles movimientos y en caso de identificar uno, cambia los botónes para que el usuario elija la jugada deseada y cambia la bandera.
  |#
  (cond
    [(empty? fila) (verificar-disponibles x1 y1 (+ x2 1) 0 flag (rest tableroo))]
    [(not(verificar-espacio-vacio (first fila))) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)] ;aquí verifica que no sea un espacio vacío para ahorrar algo de tiempo de ejecución.*

    ; parte inferior del tablero
    [(> x1 7)
    (cond

    ; movimiento hacia atrás
    [(equal? (- x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] 
      [(equal? y1 (- y2 1)) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] 
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]

    ; movimiento hacia adelante
    [(equal? (+ x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))]
      [(equal? (- y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))]
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]

    ; movimiento hacia un lado
    [(equal? x1 x2)
     (cond
      [(equal? (+ y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] 
      [(equal? (- y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] 
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    
    [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]

    ; parte superior del tablero
    [(< x1 7)
     (cond
       
    ; movimiento hacia adelante
    [(equal? (+ x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))]
      [(equal? (+ y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))]
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]

    ; movimiento hacia atrás
    [(equal? (- x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))]
      [(equal? y1 (+ y2 1)) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] 
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]

    ; movimiento hacia un lado
    [(equal? x1 x2)
     (cond
      [(equal? (+ y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] 
      [(equal? (- y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] 
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    
    [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    
    ; centro del tablero
    [(= x1 7)
     (cond

    ; movimiento hacia adelante
    [(equal? (+ x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] 
      [(equal? (- y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] 
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]

    ; movimiento hacia atrás
    [(equal? (- x1 1) x2)
     (cond
      [(equal? y1 y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] 
      [(equal? y1 (+ y2 1)) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))]
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]

    ; movimiento hacia un lado
    [(equal? x1 x2)
     (cond
      [(equal? (+ y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] 
      [(equal? (- y1 1) y2) (begin (cambiar-btn (ficha-btn (first fila)) #t) (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) #t))] 
      [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    
    [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)])]
    
    [else (verificar-disponibles-aux x1 y1 x2 (+ y2 1) tableroo (rest fila) flag)]))

;------------------

(define (verificar-espacio-vacio fichaa)
  #|
  Entradas: Un struct de una ficha.
  Salidas: Un booleano referente a si es espacio vacío o no.
  Restricciones: Ficha válida.
  Descripcion: Función encargada de verificar si un espacio es vacío o no.
  |#
  (if (equal? (ficha-tipo fichaa) "E") #t #f))

(define (hay-ganador)
  #|
  Entradas: Ninguna.
  Salidas: Un booleano referente a si hay ganador o no.
  Restricciones: Ninguna.
  Descripcion: Función encargada de verificar si hay ganador o no.
  |#
  (cond 
    [(boolean=? (verificar-fila (first tablero) "O") #t)
     (if (boolean=? (verificar-fila (first tablero) "O") #t)
         (if (boolean=? (verificar-fila (second tablero) "O") #t)
             (if (boolean=? (verificar-fila (third tablero) "O") #t)
                 (if (boolean=? (verificar-fila (fourth tablero) "O") #t) #t #f) #f) #f) #f)]

    [(boolean=? (verificar-fila (list-ref tablero 14) "X") #t)
     (if (boolean=? (verificar-fila (list-ref tablero 14) "X") #t)
         (if (boolean=? (verificar-fila (list-ref tablero 13) "X") #t)
             (if (boolean=? (verificar-fila (list-ref tablero 12) "X") #t)
                 (if (boolean=? (verificar-fila (list-ref tablero 11) "X") #t) #t #f) #f) #f) #f)]

    [else #f]))


(define (verificar-fila fila tipo)
  #|
  Entradas: Una fila de la matríz.
  Salidas: Un booleano referente a si la fila contiene unicamente espacios vacíos o no.
  Restricciones: Fila válida.
  Descripcion: Función encargada de verificar si la fila contiene unicamente fichas de cierto tipo.
  |#
  (cond
    [(empty? fila) #t]
    [(equal? (ficha-tipo (first fila)) tipo) (verificar-fila (rest fila) tipo)]
    [else #f]))

(define (jugar)
  #|
  Entradas: Una fila de la matríz.
  Salidas: Un booleano referente a si la fila contiene unicamente espacios vacíos o no.
  Restricciones: Fila válida.
  Descripcion: Función encargada de realizar los movimientos para el orden de los turnos.
  |#
  (cond
    [(boolean=? (hay-ganador) #t) (begin (send msg set-label "Hay ganador") (cambiar-btns "X" tablero #f) (cambiar-btns "O" tablero #f) (cambiar-btns "E" tablero #f))]
    [(equal? turnoActual "O") (juega-O)]
    ;[else (juega-X)])) ; en caso de querer eliminar la IA del juego se debe de descomentar esta línea y comentar la de abajo.
    [else (juega-IA)]))

(define (juega-O)
  #|
  Entradas: Ninguna.
  Salidas: Nada.
  Restricciones: Ninguna.
  Descripcion: Función encargada de permitirle el turno al jugador O.
  |#
  (send msg set-label "O")
  (cambiar-btns "X" tablero #f) ;apago los botones de "X"
  (cambiar-btns "E" tablero #f) ;apago los botones de "O"
  (cambiar-btns "O" tablero #t) ;prendo los botones de "O"
  )

(define (juega-X)
  #|
  Entradas: Ninguna.
  Salidas: Nada.
  Restricciones: Ninguna.
  Descripcion: Función encargada de permitirle el turno al jugador X (sin IA).
  |#
  (send msg set-label "X")
  (cambiar-btns "O" tablero #f) ;apago los botones de "O"
  (cambiar-btns "E" tablero #f) ;apago los botones de "O"
  (cambiar-btns "X" tablero #t) ;prendo los botones de "X"
  )

;------------------------------------------

(define (cambiar-btns tipo tableroo condicion)
  #|
  Entradas: Tipo de botones a cambiar, tablero actual y condición del botón.
  Salidas: Nada.
  Restricciones: Tipo y tablero válidos.
  Descripcion: Función principal encargada de cambiar ciertos botones del tablero.
  |#
  (cond
    [(empty? tableroo) 0]
    [(equal? tipo "X") (cambiar-btns-aux tableroo "X" (first tableroo) condicion)]
    [(equal? tipo "E") (cambiar-btns-aux tableroo "E" (first tableroo) condicion)]
    [else (cambiar-btns-aux tableroo "O" (first tableroo) condicion)]))

(define (cambiar-btns-aux tableroo tipo fila condicion)
  #|
  Entradas: Tipo de botones a cambiar, tablero actual, fila actual y condición del botón.
  Salidas: Nada.
  Restricciones: Tipo, fila y tablero válidos.
  Descripcion: Función auxiliar encargada de cambiar ciertos botones del tablero.
  |#
  (cond
    [(empty? fila) (cambiar-btns tipo (rest tableroo) condicion)]
    [(equal? (ficha-tipo (first fila)) tipo) (begin (cambiar-btn (ficha-btn (first fila)) condicion) (cambiar-btns-aux tableroo tipo (rest fila) condicion))]
    [else (cambiar-btns-aux tableroo tipo (rest fila) condicion)]))

;-------------------------------------------------

(define (cambiar-btn btn condicion)
  #|
  Entradas: Botón a cambiar y condición deseada.
  Salidas: Nada.
  Restricciones: Botón válido.
  Descripcion: Función encargada de cambiar un botón del tablero.
  |#
  (send btn enable condicion))

(send frame show #t) ; aquí se muertra la interfáz antes definida