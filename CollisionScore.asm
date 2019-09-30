;==============================================================================
;CheckCollision
; Comprueba si ha habido colisión entre el protagonista y algún otro sprite
;==============================================================================
CheckCollision
        lda SPRITE_COLLISION
        tay
        and #$01
        bne bucleCheckCollision

        lda BACKGROUND_COLLISION
        and #$01
        beq noCollisionBackGround

        lda CUR_SCREEN
        cmp #36
        bne noCollisionBackGround

        jsr transportar
        

noCollisionBackGround
        lda #0          ;No hay colision
        rts

bucleCheckCollision
        tya

        ldx #1
CheckNewEnemy
        pha                     ;Se almacena A en la pila para después
        ldy ENEMY_TYPE,x        ;Se carga el tipo de enemigo
        beq NextSprite          ;Si no hay enemigo se pasa al siguiente

        and BIT_TABLE,x         ;Se comprueba si hay colisión
        beq NextSprite          ;Si no hay se pasa al siguiente sprite

        pla                     ;Se recupera A
        cpy #SP_START_LOCKS      
        bmi Muerte              ;Si son enemigos
        cpy #SP_START_TRANSPORTERS
        bmi TocarCerradura      ;Si es una cerradura
        cpy #SP_START_KEYS
        bmi TocarTransportador  ;Si es un transpoortador

        jmp CogerLlave

TocarTransportador
        ;Es un transportador
        jsr transportar       
        jmp NoCollision

TocarCerradura        
        ;Si son cerraduras
        tya     ;En Y está la cerradura
        clc     ;Se pone el flag de carry a 0 para que no haya carry en la suma
        adc #40 ;Se suma 40 para averiguar la llave que abre la cerradura
        
abrirPuerta        
        cmp INVENTARIO
        bne checkSegundaLlave
        lda INVENTARIO+1        ;Se pasa el objeto de la segunda posición
        sta INVENTARIO          ;a la primera
        lda #0
        sta INVENTARIO+1        ;Se borra la segunda posición
        jsr actualizarEstadoPuerta
        jmp ColisionSinMuertePuerta      

checkSegundaLlave
        cmp INVENTARIO+1
        bne NoCollision
        lda #0
        sta INVENTARIO+1        ;Se borra la segunda posición
        jsr actualizarEstadoPuerta
        jmp ColisionSinMuertePuerta

CogerLlave
        cpy INVENTARIO  ;Se comprueba si ya se tiene el objeto
        beq NoCollision

        lda INVENTARIO  ;Se comprueba si ya está ocupada la primera posición del inventario
        bne CogerLlaveSegundaPosicion
        tya
        sta INVENTARIO  ;Se coge en la primera posición del inventario

        ;jsr actualizarEstadoPuerta
        jmp ColisionSinMuerteLlave

CogerLlaveSegundaPosicion
        cpy INVENTARIO+1  ;Se comprueba si ya se tiene el objeto
        beq NoCollision

        lda INVENTARIO+1  ;Se comprueba si ya está ocupada la segunda posición del inventario
        bne NoCollision
        tya
        sta INVENTARIO+1        ;Se coge en la segunda posición del inventario

        ;jsr actualizarEstadoPuerta
        jmp ColisionSinMuerteLlave
         
Muerte      
        jsr PlayerDeath         ;Ha sido muerte del jugador
        rts

NextSprite
        pla
        inx     ;Se incrementa X
        cpx #7
        bne CheckNewEnemy

ColisionSinMuertePuerta
;        lda CUR_SCREEN
;        cmp #37
;        bne soloInventario
        jsr usarObjeto          ;Se usa el objeto en caso necesario
        jmp soloInventario

ColisionSinMuerteLlave
        lda #SND_OBJETO
        jsr initpickedfx

        lda CUR_SCREEN
        cmp #37
        beq soloInventario
        jsr actualizarEstadoPuerta
        jsr usarObjeto          ;Se usa el objeto en caso necesario

soloInventario
        jsr mostrarInventario   ;Se actualiza el inventario
        
NoCollision
        lda #0  ;Para indicar que no hay colisión
        rts


;==============================================================================
;transportar
; Transporta al personaje cuando toca un transportador
;==============================================================================
transportar
        lda CUR_SCREEN
        cmp #6          ;Se comprueba si es la pantalla 6
        bne checkTransport12

        lda #4                  ;Transportador de la pantalla 6
        sta CUR_SCREEN          ;Transporta a la 4

        ;Se almacena la posición en la que se cambia de pantalla
        lda #31
        sta PARAM1
        lda #7
        sta PARAM2
        
        jmp endCheckTransport

checkTransport12
        cmp #12          ;Se comprueba si es la pantalla 12
        bne checkTransport17

        lda #13                 ;Transportador de la pantalla 12
        sta CUR_SCREEN          ;Transporta a la 13

        ;Se almacena la posición en la que se cambia de pantalla
        lda #29
        sta PARAM1
        lda #13
        sta PARAM2
        
        jmp endCheckTransport

checkTransport17
        cmp #17          ;Se comprueba si es la pantalla 17
        bne checkTransport22

        lda #18                 ;Transportador de la pantalla 17
        sta CUR_SCREEN          ;Transporta a la 18

        ;Se almacena la posición en la que se cambia de pantalla
        lda #6
        sta PARAM1
        lda #3
        sta PARAM2
        
        jmp endCheckTransport

checkTransport22
        cmp #22          ;Se comprueba si es la pantalla 22
        bne checkTransport25

        lda #19                 ;Transportador de la pantalla 19
        sta CUR_SCREEN          ;Transporta a la 19

        ;Se almacena la posición en la que se cambia de pantalla
        lda #10
        sta PARAM1
        lda #5
        sta PARAM2
        
        jmp endCheckTransport

checkTransport25
        cmp #25          ;Se comprueba si es la pantalla 25
        bne checkTransport36

        lda #26                 ;Transportador a la pantalla 26
        sta CUR_SCREEN          ;Transporta a la 19

        ;Se almacena la posición en la que se cambia de pantalla
        lda #32
        sta PARAM1
        lda #8
        sta PARAM2
        
        jmp endCheckTransport

checkTransport36
        cmp #36          ;Se comprueba si es la pantalla 36
        bne checkTransport37

        ;Se comprueba que está a la altura de los transportadores
        lda VIC_SPRITE_Y_POS
        cmp #88
        bmi checkX
        rts

checkX
        lda VIC_SPRITE_X_EXTEND
        and #$01
        beq coloresMenores

        lda VIC_SPRITE_X_POS
        cmp #16
        bmi esPurple
        jmp esRed

coloresMenores
        lda VIC_SPRITE_X_POS
        cmp #152
        bpl colores
        rts

colores
        cmp #200
        bmi esYellow
        cmp #224
        bmi esCyan
        cmp #248
        bmi esGreen
        
        cmp #255
        bmi esPurple

esRed
        ldx #4
        jmp checkCorrect
esPurple
        ldx #3
        jmp checkCorrect
esGreen
        ldx #2
        jmp checkCorrect
esCyan
        ldx#1
        jmp checkCorrect
esYellow
        ldx #0

checkCorrect
        cpx VALOR_DIAMANTE
        beq colorCorrecto

        lda #10                 ;Transportador a la pantalla 10
        sta CUR_SCREEN
 
        ;Se almacena la posición en la que se cambia de pantalla
        lda #26
        sta PARAM1
        lda #6
        sta PARAM2

        jmp endCheckTransport

colorCorrecto
        lda #37                 ;Transportador a la pantalla 37
        sta CUR_SCREEN
 
        ;Se almacena la posición en la que se cambia de pantalla
        lda #7
        sta PARAM1
        lda #3
        sta PARAM2

        jmp endCheckTransport

checkTransport37
        cmp #37          ;Se comprueba si es la pantalla 37
        bne checkTransport43

        lda #38                 ;Transportador a la pantalla 37
        sta CUR_SCREEN          ;Transporta a la 38

        ;Se almacena la posición en la que se cambia de pantalla
        lda #8
        sta PARAM1
        lda #12
        sta PARAM2
        
        jmp endCheckTransport

checkTransport43
        cmp #43          ;Se comprueba si es la pantalla 43
        bne noTransport

        lda #45                 ;Transportador a la pantalla 43
        sta CUR_SCREEN          ;Transporta a la 45

        ;Se almacena la posición en la que se cambia de pantalla
        lda #32
        sta PARAM1
        lda #11
        sta PARAM2        

endCheckTransport
        lda #SND_TRANSPORT
        jsr initpickedfx

        ldx #20
bucleEspera
        jsr WaitFrame
        dex
        bne bucleEspera

        ;Se guarda la posición de entrada en la pantalla al transportar
        lda PARAM1
        sta PLAYER_POS_ENTRADA_PANTALLA_X
        lda PARAM2
        sta PLAYER_POS_ENTRADA_PANTALLA_Y

        ;Se resetea el estado del salto o caida
        lda #0
        sta PLAYER_JUMP_POS
        sta PLAYER_ENTRADA_JUMP_POS
        sta PLAYER_FALL_POS
        sta PLAYER_ENTRADA_FALL_POS

        ldx #0                          ;Se pone al jugador en su posición
        jsr CalcSpritePosFromCharPos

        lda CUR_SCREEN
        jsr checkCambiosdeCharSet
        jsr BuildScreen                 ;Se carga la pantalla

        lda SPRITE_COLLISION

        lda #SND_TRANSPORT
        jsr initpickedfx

noTransport
        rts


;==============================================================================
;actualizarEstadoPuerta
; Se actualiza el registro de puertas para poner las que se hayan abierto
;==============================================================================
actualizarEstadoPuerta
        lda CUR_SCREEN
        cmp #4          ;Puerta de la pantalla 4
        bne estadoPuerta6
        lda PUERTAS_ABIERTAS
        ora #$01
        sta PUERTAS_ABIERTAS
        jmp finActualizarEstadoPuerta

estadoPuerta6
        cmp #6          ;Puerta de la pantalla 6
        bne estadoPuerta8
        lda PUERTAS_ABIERTAS
        ora #$02
        sta PUERTAS_ABIERTAS
        jmp finActualizarEstadoPuerta

estadoPuerta8
        cmp #8          ;Puerta de la pantalla 8
        bne estadoPuerta9
        lda PUERTAS_ABIERTAS
        ora #$04
        sta PUERTAS_ABIERTAS
        jmp finActualizarEstadoPuerta

estadoPuerta9
        cmp #9          ;Puerta de la pantalla 9
        bne estadoPuerta12
        lda PUERTAS_ABIERTAS
        ora #$08
        sta PUERTAS_ABIERTAS
        jmp finActualizarEstadoPuerta

estadoPuerta12
        cmp #12          ;Puerta de la pantalla 12
        bne estadoPuerta16
        cpy #SP_LOCK_4
        bne finActualizarEstadoPuerta

        lda PUERTAS_ABIERTAS
        ora #$10
        sta PUERTAS_ABIERTAS
        jmp finActualizarEstadoPuerta

estadoPuerta16
        cmp #16          ;Puerta de la pantalla 16
        bne estadoPuerta21

        lda PUERTAS_ABIERTAS
        ora #$20
        sta PUERTAS_ABIERTAS
        jmp finActualizarEstadoPuerta

estadoPuerta21
        cmp #21          ;Puerta de la pantalla 21
        bne estadoPuerta17

        lda PUERTAS_ABIERTAS
        ora #$40
        sta PUERTAS_ABIERTAS
        jmp finActualizarEstadoPuerta

estadoPuerta17
        cmp #17          ;Puerta de la pantalla 17
        bne estadoPuerta26

        lda PUERTAS_ABIERTAS
        ora #$80
        sta PUERTAS_ABIERTAS
        jmp finActualizarEstadoPuerta

estadoPuerta26
        cmp #26          ;Puerta de la pantalla 26
        bne estadoPuerta36

        lda PUERTAS_ABIERTAS + 1
        ora #$01
        sta PUERTAS_ABIERTAS + 1
        jmp finActualizarEstadoPuerta

estadoPuerta36
        cmp #36          ;Puerta de la pantalla 36
        bne estadoPuerta37

        lda PUERTAS_ABIERTAS + 1
        ora #$02
        sta PUERTAS_ABIERTAS + 1
        jmp finActualizarEstadoPuerta

estadoPuerta37
        cmp #37          ;Puerta de la pantalla 37
        bne estadoPuerta43

        lda PUERTAS_ABIERTAS + 1
        ora #$04
        sta PUERTAS_ABIERTAS + 1
        jmp finActualizarEstadoPuerta

estadoPuerta43
        cmp #43          ;Puerta de la pantalla 43
        bne finActualizarEstadoPuerta

        lda PUERTAS_ABIERTAS + 1
        ora #$08
        sta PUERTAS_ABIERTAS + 1
        jmp finActualizarEstadoPuerta

finActualizarEstadoPuerta
        rts


;==============================================================================
;efectoAbrirPuerta
; Hace el efecto de abrir una puerta
;==============================================================================
efectoAbrirPuerta
        lda #SND_PUERTA
        jsr initpickedfx

        lda #15
        sta COLOR_PUERTA

inicioCambioColor
        lda PUERTA_FILA_INI
        tax

filaPuertaColor
        lda SCREEN_LINE_OFFSET_TABLE_LO,x
        sta ZEROPAGE_POINTER_1
        lda COLOR_LINE_OFFSET_TABLE_HI,x
        sta ZEROPAGE_POINTER_1 + 1
        
        lda PUERTA_COLUMNA_INI
        clc
        adc ZEROPAGE_POINTER_1
        bcc noCambiaPaginaInicioColor
        inc ZEROPAGE_POINTER_1 + 1
        
noCambiaPaginaInicioColor
        sta ZEROPAGE_POINTER_1
        lda COLOR_PUERTA
        ldy #0
columnaPuertaColor
        sta (ZEROPAGE_POINTER_1),y
        iny
        cpy PUERTA_ANCHO
        bne columnaPuertaColor

        cpx PUERTA_FILA_FIN
        beq siguienteColor
        inx
        jmp filaPuertaColor

siguienteColor
        jsr WaitFrame
        lda COLOR_PUERTA
        beq quitarPuerta
        dec COLOR_PUERTA

        jmp inicioCambioColor

quitarPuerta
        lda PUERTA_FILA_INI
        tax

filaQuitarPuerta
        lda SCREEN_LINE_OFFSET_TABLE_LO,x
        sta ZEROPAGE_POINTER_1
        lda SCREEN_LINE_OFFSET_TABLE_HI,x
        sta ZEROPAGE_POINTER_1 + 1
        
        lda PUERTA_COLUMNA_INI
        clc
        adc ZEROPAGE_POINTER_1
        bcc noCambiaPaginaInicio
        inc ZEROPAGE_POINTER_1 + 1
        
noCambiaPaginaInicio
        sta ZEROPAGE_POINTER_1
        lda #$20
        ldy #0
columnaPuerta
        sta (ZEROPAGE_POINTER_1),y
        iny
        cpy PUERTA_ANCHO
        bne columnaPuerta

        cpx PUERTA_FILA_FIN
        beq finQuitarPuerta
        inx
        jmp filaQuitarPuerta

finQuitarPuerta
        rts

;==============================================================================
;usarObjeto
; Se abren las puertas si están abiertas
;==============================================================================
usarObjeto
        lda CUR_SCREEN
        cmp #4                  ;Pantalla 4
        bne ckeckPantalla6
        
        lda PUERTAS_ABIERTAS    ;Se comprueba si la puerta está abierta
        and #$01
        beq ckeckPantalla6

        lda #10 ;Fila inicio
        sta PUERTA_FILA_INI
        lda #13  ;Fila fin
        sta PUERTA_FILA_FIN
        lda #32 ;Columna inicio
        sta PUERTA_COLUMNA_INI
        lda #4  ;Ancho
        sta PUERTA_ANCHO

        jsr efectoAbrirPuerta

        rts

ckeckPantalla6
        cmp #6                  ;Pantalla 6
        bne checkPantalla8

        lda PUERTAS_ABIERTAS    ;Se comprueba si la puerta está abierta
        and #$02
        beq checkPantalla8

        lda #10 ;Fila inicio
        sta PUERTA_FILA_INI
        lda #13  ;Fila fin
        sta PUERTA_FILA_FIN
        lda #30 ;Columna inicio
        sta PUERTA_COLUMNA_INI
        lda #2  ;Ancho
        sta PUERTA_ANCHO

        jsr efectoAbrirPuerta

        rts

checkPantalla8
        cmp #8                  ;Pantalla 8
        bne checkPantalla9

        lda PUERTAS_ABIERTAS    ;Se comprueba si la puerta está abierta
        and #$04
        beq checkPantalla9

        lda #2 ;Fila inicio
        sta PUERTA_FILA_INI
        lda #5  ;Fila fin
        sta PUERTA_FILA_FIN
        lda #32 ;Columna inicio
        sta PUERTA_COLUMNA_INI
        lda #4  ;Ancho
        sta PUERTA_ANCHO

        jsr efectoAbrirPuerta
        
        rts

checkPantalla9
        cmp #9                  ;Pantalla 9
        bne checkPantalla12

        lda PUERTAS_ABIERTAS    ;Se comprueba si la puerta está abierta
        and #$08
        beq checkPantalla12

        lda #2 ;Fila inicio
        sta PUERTA_FILA_INI
        lda #7  ;Fila fin
        sta PUERTA_FILA_FIN
        lda #23 ;Columna inicio
        sta PUERTA_COLUMNA_INI
        lda #4  ;Ancho
        sta PUERTA_ANCHO

        jsr efectoAbrirPuerta

        rts
        
checkPantalla12
        cmp #12                  ;Pantalla 12
        bne checkPantalla16

        lda PUERTAS_ABIERTAS    ;Se comprueba si la puerta está abierta
        and #$10
        beq checkPantalla16

        jsr transportar

        rts

checkPantalla16
        cmp #16                  ;Pantalla 16
        bne checkPantalla17

        lda PUERTAS_ABIERTAS    ;Se comprueba si la puerta está abierta
        and #$20
        beq checkPantalla17

        lda #4 ;Fila inicio
        sta PUERTA_FILA_INI
        lda #13  ;Fila fin
        sta PUERTA_FILA_FIN
        lda #30 ;Columna inicio
        sta PUERTA_COLUMNA_INI
        lda #6  ;Ancho
        sta PUERTA_ANCHO

        jsr efectoAbrirPuerta

        rts

checkPantalla17
        cmp #17                  ;Pantalla 17
        bne checkPantalla21

        lda PUERTAS_ABIERTAS    ;Se comprueba si la puerta está abierta
        and #$80
        beq checkPantalla21

        jsr transportar

        rts

checkPantalla21
        cmp #21                  ;Pantalla 21
        bne checkPantalla26

        lda PUERTAS_ABIERTAS    ;Se comprueba si la puerta está abierta
        and #$40
        beq checkPantalla26

        lda #10 ;Fila inicio
        sta PUERTA_FILA_INI
        lda #13  ;Fila fin
        sta PUERTA_FILA_FIN
        lda #32 ;Columna inicio
        sta PUERTA_COLUMNA_INI
        lda #4  ;Ancho
        sta PUERTA_ANCHO

        jsr efectoAbrirPuerta
        
        rts

checkPantalla26
        cmp #26                  ;Pantalla 26
        bne checkPantalla36

        lda PUERTAS_ABIERTAS + 1    ;Se comprueba si la puerta está abierta
        and #$01
        beq checkPantalla36

        lda #11 ;Fila inicio
        sta PUERTA_FILA_INI
        lda #14  ;Fila fin
        sta PUERTA_FILA_FIN
        lda #24 ;Columna inicio
        sta PUERTA_COLUMNA_INI
        lda #2  ;Ancho
        sta PUERTA_ANCHO

        jsr efectoAbrirPuerta
        
        rts

checkPantalla36
        cmp #36                  ;Pantalla 36
        bne checkPantalla37

        lda PUERTAS_ABIERTAS + 1    ;Se comprueba si la puerta está abierta
        and #$02
        beq checkPantalla37

        lda #2 ;Fila inicio
        sta PUERTA_FILA_INI
        lda #7  ;Fila fin
        sta PUERTA_FILA_FIN
        lda #13 ;Columna inicio
        sta PUERTA_COLUMNA_INI
        lda #6  ;Ancho
        sta PUERTA_ANCHO

        jsr efectoAbrirPuerta
        rts

checkPantalla37
        cmp #37                  ;Pantalla 37
        bne checkPantalla43

        lda PUERTAS_ABIERTAS + 1    ;Se comprueba si la puerta está abierta
        and #$04
        beq checkPantalla43

        jsr transportar

        rts

checkPantalla43
        cmp #43                  ;Pantalla 43
        bne checkPantallaN

        lda PUERTAS_ABIERTAS + 1    ;Se comprueba si la puerta está abierta
        and #$08
        beq checkPantallaN

        jsr transportar

        rts

checkPantallaN

        rts


;==============================================================================
;vaciarInventario
; Quita todos los elementos del inventario
;==============================================================================
vaciarInventario
        lda #0
        sta INVENTARIO
        sta INVENTARIO+1
        jsr borrarInventario
        rts

;==============================================================================
;borrarInventario
; Borra el pergamino del inventario
;==============================================================================
borrarInventario
        lda #<BITMAP_PERGAMINO_ADDR_FILA_1_1
        sta ZEROPAGE_POINTER_1
        lda #>BITMAP_PERGAMINO_ADDR_FILA_1_1
        sta ZEROPAGE_POINTER_1 + 1

        ldy #0
        lda #$0
borraFila1
        sta (ZEROPAGE_POINTER_1),y
        iny
        cpy #32
        bne borraFila1

        lda #<BITMAP_PERGAMINO_ADDR_FILA_2_1
        sta ZEROPAGE_POINTER_1
        lda #>BITMAP_PERGAMINO_ADDR_FILA_2_1
        sta ZEROPAGE_POINTER_1 + 1

        ldy #0
        lda #$0
borraFila2
        sta (ZEROPAGE_POINTER_1),y
        iny
        cpy #32
        bne borraFila2

        rts

;==============================================================================
;getMemPosSprite
; Obtiene la dirección de memoria donde se almacena el sprite con el identificador
; que se pasa por el registro A
;==============================================================================
getMemPosSprite
        cmp #SP_KEY_1
        bne checkKey2
        lda #<ADDR_SPRITE_KEY_1
        sta ZEROPAGE_POINTER_1
        lda #>ADDR_SPRITE_KEY_1
        sta ZEROPAGE_POINTER_1 + 1
        rts

checkKey2
        cmp #SP_KEY_2
        bne checkKey3
        lda #<ADDR_SPRITE_KEY_2
        sta ZEROPAGE_POINTER_1
        lda #>ADDR_SPRITE_KEY_2
        sta ZEROPAGE_POINTER_1 + 1
        rts    

checkKey3
        cmp #SP_KEY_3
        bne checkKey4
        lda #<ADDR_SPRITE_KEY_3
        sta ZEROPAGE_POINTER_1
        lda #>ADDR_SPRITE_KEY_3
        sta ZEROPAGE_POINTER_1 + 1
        rts  

checkKey4
        cmp #SP_KEY_4
        bne checkKey5
        lda #<ADDR_SPRITE_KEY_4
        sta ZEROPAGE_POINTER_1
        lda #>ADDR_SPRITE_KEY_4
        sta ZEROPAGE_POINTER_1 + 1
        rts   

checkKey5
        cmp #SP_KEY_5
        bne checkKey6
        lda #<ADDR_SPRITE_KEY_5
        sta ZEROPAGE_POINTER_1
        lda #>ADDR_SPRITE_KEY_5
        sta ZEROPAGE_POINTER_1 + 1
        rts     

checkKey6
        cmp #SP_KEY_6
        bne checkKey7
        lda #<ADDR_SPRITE_KEY_6
        sta ZEROPAGE_POINTER_1
        lda #>ADDR_SPRITE_KEY_6
        sta ZEROPAGE_POINTER_1 + 1
        rts  

checkKey7
        cmp #SP_KEY_7
        bne checkKey8
        lda #<ADDR_SPRITE_KEY_7
        sta ZEROPAGE_POINTER_1
        lda #>ADDR_SPRITE_KEY_7
        sta ZEROPAGE_POINTER_1 + 1
        dec ZEROPAGE_POINTER_1
        bpl dirKey7OK
        dec ZEROPAGE_POINTER_1 + 1
dirKey7OK        
        rts  

checkKey8
        cmp #SP_KEY_8
        bne checkKey9
        lda #<ADDR_SPRITE_KEY_8
        sta ZEROPAGE_POINTER_1
        lda #>ADDR_SPRITE_KEY_8
        sta ZEROPAGE_POINTER_1 + 1
        dec ZEROPAGE_POINTER_1
        bpl dirKey8OK
        dec ZEROPAGE_POINTER_1 + 1
dirKey8OK
        rts  

checkKey9
        cmp #SP_KEY_9
        bne checkKey10
        lda #<ADDR_SPRITE_KEY_9
        sta ZEROPAGE_POINTER_1
        lda #>ADDR_SPRITE_KEY_9
        sta ZEROPAGE_POINTER_1 + 1
        rts  

checkKey10
        lda #<ADDR_SPRITE_KEY_10
        sta ZEROPAGE_POINTER_1
        lda #>ADDR_SPRITE_KEY_10
        sta ZEROPAGE_POINTER_1 + 1
        rts  

;==============================================================================
;mostrarInventario
; Muestra el inventario
;==============================================================================
mostrarInventario
        jsr borrarInventario

        ;Primer elemento del inventario
        lda INVENTARIO
        beq inventarioVacio

        jsr getMemPosSprite
        jsr copySpriteAPergamino1


;        ldx #6                  ;Se almacena en el sprite 6
;        sta ENEMY_TYPE,x

;        lda #19
;        sta ENEMY_INI_X_POS,x   ;Se cargan las posiciones x e y de inicio del sprite
;        sta PARAM1
;        lda #21
;        sta ENEMY_INI_Y_POS,x
;        sta PARAM2
;        jsr CalcSpritePosFromCharPos

;        jsr cargarSprite
;        ;set sprite color
;        lda #BLACK
;        sta SPRITE_COLOR_BASE,x

;        ;enable sprite
;        lda #$40
;        ora VIC_SPRITE_ENABLE
;        sta VIC_SPRITE_ENABLE

        ;Segundo elemento del inventario
        lda INVENTARIO+1
        beq inventarioVacio

        jsr getMemPosSprite
        jsr copySpriteAPergamino2

;        ldx #7
;        sta ENEMY_TYPE,x

;        lda #21
;        sta ENEMY_INI_X_POS,x   ;Se cargan las posiciones x e y de inicio del sprite
;        sta PARAM1
;        lda #21
;        sta ENEMY_INI_Y_POS,x
;        sta PARAM2
;        jsr CalcSpritePosFromCharPos

;        jsr cargarSprite
;        ;set sprite color
;        ;lda #BLACK
;        lda #YELLOW
;        sta SPRITE_COLOR_BASE,x

;        ;enable sprite
;        lda #$80
;        ora VIC_SPRITE_ENABLE
;        sta VIC_SPRITE_ENABLE

inventarioVacio
        rts

;==============================================================================
;copySpriteAPergamino1
; Carga las posiciones de memoria para copiar el sprite a la primera posición del inventario
;==============================================================================
copySpriteAPergamino1
        lda #<BITMAP_PERGAMINO_ADDR_FILA_1_1
        sta ZEROPAGE_POINTER_2
        lda #>BITMAP_PERGAMINO_ADDR_FILA_1_1
        sta ZEROPAGE_POINTER_2 + 1

        lda #<BITMAP_PERGAMINO_ADDR_FILA_2_1
        sta ZEROPAGE_POINTER_3
        lda #>BITMAP_PERGAMINO_ADDR_FILA_2_1
        sta ZEROPAGE_POINTER_3 + 1

        jsr copySpriteAPergamino

        rts

;==============================================================================
;copySpriteAPergamino2
; Carga las posiciones de memoria para copiar el sprite a la segunda posición del inventario
;==============================================================================
copySpriteAPergamino2
        lda #<BITMAP_PERGAMINO_ADDR_FILA_1_2
        sta ZEROPAGE_POINTER_2
        lda #>BITMAP_PERGAMINO_ADDR_FILA_1_2
        sta ZEROPAGE_POINTER_2 + 1

        lda #<BITMAP_PERGAMINO_ADDR_FILA_2_2
        sta ZEROPAGE_POINTER_3
        lda #>BITMAP_PERGAMINO_ADDR_FILA_2_2
        sta ZEROPAGE_POINTER_3 + 1

        jsr copySpriteAPergamino

        rts

;==============================================================================
;copySpriteAPergamino
; Copia los datos del Sprite al pergamino
;==============================================================================
copySpriteAPergamino
        ldy #0
copyFila1
        tya     ;Se pasa Y a A para meterlo en la pila
        pha

        sta COLOR_PUERTA
        clc
        adc COLOR_PUERTA
        adc COLOR_PUERTA
        tay
        iny

        lda (ZEROPAGE_POINTER_1),y
        tax
        iny
        tya
        sta COLOR_PUERTA

        pla
        tay
        txa
        sta (ZEROPAGE_POINTER_2),y
        tya
        pha

        lda COLOR_PUERTA
        tay
        lda (ZEROPAGE_POINTER_1),y
        tax

        pla
        pha
        clc
        adc #8
        tay
        txa
        sta (ZEROPAGE_POINTER_2),y
        
        pla
        tay
        iny
        cpy #8
        bne copyFila1



        lda ZEROPAGE_POINTER_1
        clc
        adc #24
        bcc noIncPage

        inc ZEROPAGE_POINTER_1 + 1

noIncPage
        sta ZEROPAGE_POINTER_1

        ldy #0
copyFila2
        tya     ;Se pasa Y a A para meterlo en la pila
        pha

        sta COLOR_PUERTA
        clc
        adc COLOR_PUERTA
        adc COLOR_PUERTA
        tay
        iny

        lda (ZEROPAGE_POINTER_1),y
        tax
        iny
        tya
        sta COLOR_PUERTA

        pla
        tay
        txa
        sta (ZEROPAGE_POINTER_3),y
        tya
        pha

        lda COLOR_PUERTA
        tay
        lda (ZEROPAGE_POINTER_1),y
        tax

        pla
        pha
        clc
        adc #8
        tay
        txa
        sta (ZEROPAGE_POINTER_3),y
        
        pla
        tay
        iny
        cpy #08
        bne copyFila2

        rts

;==============================================================================
;PlayerDeath
; Se hace el efecto de parpadeo al matar al personaje y se decrementan las vidas
;==============================================================================
PlayerDeath
        ;Se hace el efecto flash del borde de la pantalla
        lda #WHITE
        sta VIC_BORDER_COLOR

        lda #SND_MORIR
        jsr initpickedfx

        ldx #15
bucle
        jsr WaitFrame
        dex
        bne bucle

        lda #BLACK
        sta VIC_BORDER_COLOR

        lda SPRITE_COLLISION
        lda BACKGROUND_COLLISION

        ;Se deshabilitan todos los sprites
        lda #0
        sta VIC_SPRITE_ENABLE
        
        ;Se carga de nuevo la pantalla para que todo empiece desde cero
        lda CUR_SCREEN
        jsr BuildScreen

        ;Se comprueba si hay un 1 en las decenas
        lda SCREEN_LIVES
        cmp #$31
        bne noDecenas

        ;Se ponen las decenas a 0
        lda #$30  ;Carga el caracter '0' 
        sta SCREEN_LIVES        ;Se ponen las decenas a cero
        lda #$39        ;Se carga un 9 en las unidades
        sta SCREEN_LIVES+1
        jsr InicioPlayer
        rts

noDecenas
        lda CHEAT_INFINITAS
        beq decrementar
        jsr InicioPlayer
        rts

decrementar
        dec SCREEN_LIVES+1      ;Si no es cero se decrementan las unidades
        lda SCREEN_LIVES+1      ;Se cargan las unidades
        cmp #$30                ;Se comprueba si es cero
        beq esCero
        jsr InicioPlayer
        lda #0                  ;Se carga 0 para indicar que no se ha acabado la partida
        rts

esCero
        ;Se hace el efecto flash del borde de la pantalla
        lda #WHITE
        sta VIC_BORDER_COLOR

        lda #SND_GAMEOVER
        jsr initpickedfx

        ldx #50
bucle2
        jsr WaitFrame
        dex
        bne bucle2
        
        lda #BLACK
        sta VIC_BORDER_COLOR

        ;Se pasa un 1 para indicar que se ha terminado la partida
        lda #1
        rts


;==============================================================================
;InicioPlayer
; Se coloca al protagonista tal y como entró en la pantalla
;==============================================================================
InicioPlayer
        lda #0
        sta SPRITE_COLLISION

        lda PLAYER_ENTRADA_JUMP_POS
        sta PLAYER_JUMP_POS

        lda PLAYER_FALL_POS
        sta PLAYER_ENTRADA_FALL_POS

        lda PLAYER_ENTRADA_DIRECCION
        sta PARAM3
        
        jsr animatePlayerLookFront

        ;Se coloca el sprite al principio de la pantalla
        lda PLAYER_POS_ENTRADA_PANTALLA_X
        sta PARAM1
        lda PLAYER_POS_ENTRADA_PANTALLA_Y
        sta PARAM2
        lda #0
        tax

        jsr CalcSpritePosFromCharPos

        ;Se pasa un 0 para indicar que no se ha terminado la partida
        lda #0

        rts

;==============================================================================
;incNumPantalla
; Suma 1 al número de pantallas visitadas
;==============================================================================
incNumPantalla
        lda SCREEN_VISIT+1      ;Se cargan las unidades
        cmp #$39                ;Se compara con la cifra 9
        beq cambiaDecenas       
        inc SCREEN_VISIT+1      ;Si no es 9 se incrementan las unidades
        rts

cambiaDecenas
        lda #$30                ;Se carga un 0 para las unidades
        sta SCREEN_VISIT+1
        inc SCREEN_VISIT        ;Se incrementan las decenas
        rts


;==============================================================================
;resetScreenVisit
; Pone a 0 las pantallas visitadas
;==============================================================================
resetScreenVisit        ;Pone a cero las visitas de las pantallas
        ldx #2          ;Excepto las pantallas 0 y 1
        lda #0
nextScreen
        sta SCREEN_VISIT,x
        inx
        cpx #46
        bne nextScreen
        rts
