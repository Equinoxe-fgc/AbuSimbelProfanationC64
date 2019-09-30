;=============================================================
;check joystick (player control)
;=============================================================
PlayerControl
;        lda PLAYER_MOV_DELAY
;        beq doPlayerCotrol
;        dec PLAYER_MOV_DELAY
;        rts

doPlayerCotrol
;        lda #CONST_PLAYER_MOV_DELAY
;        sta PLAYER_MOV_DELAY

          ldx #0        ;Indice del sprite es el 0

          lda PLAYER_JUMP_POS   ;Se comprueba la posición de salto
          beq .NotJumping  ;Si no es 0 es porque se está saltando

.PlayerIsJumping
          inc PLAYER_JUMP_POS   ;Se incrementa 1 la posición de salto
          lda PLAYER_JUMP_POS   
          cmp PLAYER_CURR_JUMP_TABLE_LENGTH            ;Se comprueba si se ha llegado al final de la tabla
          bne .JumpOn
          
          lda #0                ;El salto ha terminado
          sta PLAYER_JUMP_POS
          jsr animatePlayerLookRight
          jmp .JumpComplete
          
.JumpOn                    
          ldy PLAYER_JUMP_POS
          
          lda PLAYER_CURR_JUMP_TABLE_LENGTH
          cmp #JUMP_TABLE_SIZE_LONG     ;Se comprueba si se ha hecho un salto largo
          bne shortJump
          lda PLAYER_JUMP_TABLE_LONG,y  ;Se carga el valor de salto largo
          
          jmp check
shortJump
          lda PLAYER_JUMP_TABLE_SHORT,y ;Se carga el valor de salto corto
check     bne .continueJump
          rts

.continueJump
          sta PARAM5                    ;Se almacena el valor del salto en PARAM5
          
.JumpContinue          
          jsr SpriteMoveUp      ;Se mueve hacia arriba y se comprueba si se choca
          beq .JumpBlocked
          
          jsr CheckDiagonal

          dec PARAM5            ;Se decrementa el valor del salto
          bne .JumpContinue     ;Se continua si no se ha llegado el final del salto
          jmp .JumpComplete     ;Se llega al final del salto

.JumpBlocked
          lda #0                ;Si se choca con algo se para el salto
          sta PLAYER_JUMP_POS
          jmp .JumpStopped

.NotJumping
          jsr SpriteMoveDown    ;Se comprueba si se está cayendo
          beq .NotFalling       ;Si no se está cayendo (ni saltando) se comprueba el joystick
          
          ;player fell one pixel
          jmp .PlayerFell       ;Se hace que caiga un pixel

.NotFalling     
          lda #0                ;Si no se cae se pone la posición de caida a 0
          sta PLAYER_FALL_POS        

;check up          
.CheckUp          
          lda #$0
          sta PARAM3    ;Se borra PARAM3 porque ya no se salta

          jsr leerJoystickYTeclado

;          lda #$1               ;Se comprueba si se pulsa arriba
;          bit JOYSTICK
;          bne .CheckDown
;          lda #JUMP_TABLE_SIZE_LONG     ;Se carga el tamaño de la tabla de salto largo
;          sta PLAYER_CURR_JUMP_TABLE_LENGTH
;          jsr animatePlayerJump
;          jmp .CheckDiagonal

;;check down
;.CheckDown
;          lda #$2               ;Se comprueba si se pulsa abajo
;          bit JOYSTICK
;          bne .CheckLeft
;          lda #JUMP_TABLE_SIZE_SHORT        ;Se carga el tamaño de la tabla de salto corto
;          sta PLAYER_CURR_JUMP_TABLE_LENGTH
;          jsr animatePlayerJump

          lda #$11               ;Se comprueba si se pulsa arriba y fuego
          bit CONTROL_MOVIMIENTO
          bne .CheckDown
          lda #JUMP_TABLE_SIZE_Short     ;Se carga el tamaño de la tabla de salto largo
          sta PLAYER_CURR_JUMP_TABLE_LENGTH
          jsr animatePlayerJump
          jmp .CheckDiagonal

;check down
.CheckDown
          lda #$01               ;Se comprueba si se pulsa arriba
          bit CONTROL_MOVIMIENTO
          bne .CheckLeft
          lda #JUMP_TABLE_SIZE_LONG        ;Se carga el tamaño de la tabla de salto largo
          sta PLAYER_CURR_JUMP_TABLE_LENGTH
          jsr animatePlayerJump

.CheckDiagonal          
          lda #$04      ;Comprueba si se pulsa diagonal izquierda a la vez
          bit CONTROL_MOVIMIENTO
          bne .CheckdownRight
          lda #1        ;Se carga 1 en PARAM3 si se pulsa diagonal izquierda
          sta PARAM3
          jsr animatePlayerJumpLeft
          jmp .endCheckDown          ;Se pasa a saltar
.CheckDownRight
          lda #$8       ;Comprueba si se pulsa diagonal derecha
          bit CONTROL_MOVIMIENTO
          bne .endCheckDown
          lda #2        ;Se carga 2 en PARAM3 si se pulsa diagonal izquierda
          sta PARAM3          
          jsr animatePlayerJumpRight
.endCheckDown
          jmp .PlayerIsJumping          ;Se pasa a saltar

;check left
.CheckLeft
          lda #$04              ;Se comprueba si se pulsa izquierda
          bit CONTROL_MOVIMIENTO
          bne .CheckRight
          jsr SpriteMoveLeft
          jsr animatePlayerLeft

;check right         
.CheckRight     
          lda #$08              ;Se comprueba si se pulsa derecha
          bit CONTROL_MOVIMIENTO
          bne .NoDirectionPressed
          jsr SpriteMoveRight
          jsr animatePlayerRight

.PlayerFell
          ldy PLAYER_FALL_POS           ;Se carga en PARAM5 el valor del siguiente valor de caida
          lda FALL_SPEED_TABLE,y
          beq .FallComplete
          sta PARAM5

.FallLoop          
          dec PARAM5                    ;Se cae hasta que se termine el loop
          beq .FallComplete

          jsr CheckDiagonal
          
          jsr SpriteMoveDown
          jmp .FallLoop
          
.FallComplete
          lda PLAYER_FALL_POS           ;Se comprueba si se ha llegado al final de la tabla de caida
          cmp #9
          beq .FallSpeedAtMax        
          
          inc PLAYER_FALL_POS

.NoDirectionPressed          
          ;jsr animatePlayerLookRight

.JumpStopped

.JumpComplete
.FallSpeedAtMax
          rts

;------------------------------------------------------------
;CheckDiagonal - Comprueba si se ha pulsado diagonal en el salto y caída
;       PARAM3 - 1 si es diagonal izquierda
;              - 2 diagonal derecha
;              - Cualquier otro valor no hace nada        
;------------------------------------------------------------
CheckDiagonal
          lda PARAM3            ;SE comprueba el valor de PARAM3 para diagonales
          cmp #1
          beq .FallMoveLeft         ;Caida diagonal izquierda
          cmp #2
          beq .FallMoveRight        ;Caida diagonal derecha
          jmp .endCheckDiagonal
          
.FallMoveRight
        ;jsr animatePlayerJumpRight
          jsr SpriteMoveRight
          jmp .endCheckDiagonal
.FallMoveLeft
        ;jsr animatePlayerJumpLeft
          jsr SpriteMoveLeft
.endCheckDiagonal
          rts


;displayCode
;        tax
;        and #%10000000
;        sta SCREEN_CHAR
;        lda $1
;        sta SCREEN_COLOR
;        txa

;        and #%010000000
;        sta SCREEN_CHAR+1
;        lda $1
;        sta SCREEN_COLOR+1
;        txa
;        and #%00100000
;        sta SCREEN_CHAR+2
;        lda $1
;        sta SCREEN_COLOR+2
;        txa
;        and #%00010000
;        sta SCREEN_CHAR+3
;        lda $1
;        sta SCREEN_COLOR+3
;        txa
;        and #%00001000
;        sta SCREEN_CHAR+4
;        lda $1
;        sta SCREEN_COLOR+4
;        txa
;        and #%00000100
;        sta SCREEN_CHAR+5
;        lda $1
;        sta SCREEN_COLOR+5
;        txa
;        and #%00000010
;        sta SCREEN_CHAR+6
;        lda $1
;        sta SCREEN_COLOR+6
;        txa
;        and #%00000001
;        sta SCREEN_CHAR+7
;        lda $1
;        sta SCREEN_COLOR+7
;        txa

;        rts

;------------------------------------------------------------
;leerJoystickYTeclado - Lee el joystick y el teclado para mover al personaje
;       Modifica la variable CONTROL_MOVIMIENTO con los datos del movimiento
;------------------------------------------------------------
leerJoystickYTeclado

compruebaTeclado
;        lda #$FF
;        sta CIA_DATA_DIRECTION_A
;        lda #$00
;        sta CIA_DATA_DIRECTION_B

        lda #%11101111  ;Fila 4
        sta CIA_PORT_A      
        lda CIA_PORT_B      
        cmp #%10111111  ;Columna 6
        bne seguir      ;Se ha pulsado O

        lda #%0111111  ;Filas 7
        sta CIA_PORT_A      
        lda CIA_PORT_B
        ;jsr displayCode
        cmp #%10111111  ;Columna 6
        beq OyQ         ;Se ha pulsado O y Q

seguir
        lda #%11101101  ;Filas 4 y 1
        sta CIA_PORT_A      
        lda CIA_PORT_B      
        cmp #%10111011  ;Columnas 2 y 6
        beq OyA         ;Se ha pulsado O y A a la vez

        lda #%01011111  ;Filas 5 y 7
        sta CIA_PORT_A      
        lda CIA_PORT_B      
        cmp #%10111101  ;Columnas 1 y 6
        beq PyQ         ;Se ha pulsado P y Q a la vez

        lda #%11011101  ;Filas 5 y 1
        sta CIA_PORT_A      
        lda CIA_PORT_B      
        cmp #%11111001  ;Columnas 1 y 2
        beq PyA         ;Se ha pulsado P y A a la vez

        lda #%11111101  ;Fila y 1
        sta CIA_PORT_A      
        lda CIA_PORT_B      
        cmp #%11111011  ;Columna 2
        beq PulsadoA    ;Se ha pulsado A

        lda #%11101111  ;Fila 4
        sta CIA_PORT_A      
        lda CIA_PORT_B      
        cmp #%10111111  ;Columna 6
        beq PulsadoO    ;Se ha pulsado O

        lda #%11011111  ;Fila 5
        sta CIA_PORT_A      
        lda CIA_PORT_B      
        cmp #%11111101  ;Columna 1
        beq PulsadoP    ;Se ha pulsado P

        lda #%01111111  ;Fila 7
        sta CIA_PORT_A      
        lda CIA_PORT_B      
        cmp #%10111111  ;Columna 6
        beq PulsadoQ    ;Se ha pulsado Q

        lda JOYSTICK
        jmp salir
        rts

OyQ
        lda #%11111010              
        jmp salir

OyA
        lda #%11101010              
        jmp salir

PyQ
        lda #%11110110              
        jmp salir

PyA
        lda #%11100110              
        jmp salir

PulsadoO
        lda #%11111011              
        jmp salir

PulsadoA
        lda #%11101110              
        jmp salir

PulsadoP
        lda #%11110111              
        jmp salir

PulsadoQ
        lda #%11111110

salir
        sta CONTROL_MOVIMIENTO
        rts
