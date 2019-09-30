;==============================================================================
;MoveEnemies
; Recorre los enemigos de una pantalla para moverlos en función del tipo de
; movimiento que tengan
;==============================================================================
MoveEnemies
        lda ENEMIES_CUR_SCREEN
        bne CheckEnemy
        rts

        ldx #0
CheckEnemy
        inx
        
        lda ENEMY_MOV_DELAY_CUR,x       ;Se comprueba que toca mover el sprite
        beq moverSprite
        dec ENEMY_MOV_DELAY_CUR,x       ;Se decrementa la cuenta de retardo de movimiento
        jmp NextEnemy

moverSprite
        lda ENEMY_MOV_DELAY,x   ;Vuelve a cargar el divisor de movimiento
        sta ENEMY_MOV_DELAY_CUR,x

        lda ENEMY_MOVEMENT,x   ;Se lee el tipo de enemigo

        cmp #SP_LR
        ;bne Check_LRC  
        bne Check_R
        jsr MoveEnemyLeftRight       ;Si es de izquierda a derecha
        jmp AnimateEnemy

Check_R
        cmp #SP_R
        bne CheckUpDown  
        jsr MoveEnemyRight       ;Si es de izquierda a derecha
        jmp AnimateEnemy

CheckUpDown
        cmp #SP_UD
        bne CheckDown     
        jsr MoveEnemyUpDown  ;Si es de arriba a abajo        
        jmp AnimateEnemy

CheckDown
        cmp #SP_D
        bne CheckNoMove       
        jsr MoveEnemyDown    ;Si es solo hacia abajo
        jmp AnimateEnemy

CheckNoMove
        lda ENEMY_TYPE,x        ;Si el tipo de enemigo es una llave, entonces no se anima
        cmp #SP_START_KEYS
        bpl NextEnemy

        cmp #SP_PINCHOS_1       ;Si son los pinchos tampoco se anima
        beq NextEnemy
        cmp #SP_PINCHOS_2
        beq NextEnemy
 
        cmp #SP_DIAMANTE_L       ;Si es el diamante tampoco se anima
        beq NextEnemy
        cmp #SP_DIAMANTE_R
        beq NextEnemy
      
AnimateEnemy
        jsr animateSprite

NextEnemy
        cpx ENEMIES_CUR_SCREEN
        bne CheckEnemy

        rts

;------------------------------------------------------------
;Mueve enemigo de izquierda a derecha
;el registro x tiene el indice del sprite (1 to 7)
;------------------------------------------------------------
MoveEnemyLeftRight
        lda SPRITE_CHAR_POS_X,x
        cmp ENEMY_END_X_POS,x
        beq ChangeDirectionX 
        cmp ENEMY_INI_X_POS,x
        beq ChangeDirectionX
        jmp MoveLeftRight

ChangeDirectionX
        lda #0                          ;Se pone el retardo de animacion a cero para que se
        sta ENEMY_ANIM_DELAY_CUR,x       ;produzca el cambio inmediatamente

        lda ENEMY_DIRECTION,x
        eor #$FF
        sta ENEMY_DIRECTION,x

MoveLeftRight
        lda ENEMY_DIRECTION,x
        cmp #MOVE_LEFT
        bne MoveRightX
        jsr SpriteMoveLeft
        rts

MoveRightX
        jsr SpriteMoveRight
        rts
        
;------------------------------------------------------------
;Mueve enemigo solo a derecha
;el registro x tiene el indice del sprite (1 to 7)
;------------------------------------------------------------
MoveEnemyRight
        lda SPRITE_CHAR_POS_X,x
        cmp ENEMY_END_X_POS,x
        bne MoveRight

        lda ENEMY_INI_X_POS,x   ;Se cargan las posiciones x e y de inicio del sprite
        sta PARAM1
        lda ENEMY_INI_Y_POS,x
        sta PARAM2
        jsr CalcSpritePosFromCharPos

        rts

MoveRight
        jsr SpriteMoveRight
        rts

;------------------------------------------------------------
;Mueve enemigo de arriba a abajo
;el registro x tiene el indice del sprite (1 to 7)
;------------------------------------------------------------
MoveEnemyUpDown
        lda SPRITE_CHAR_POS_Y,x
        cmp ENEMY_END_Y_POS,x
        beq ChangeDirectionY 
        cmp ENEMY_INI_Y_POS,x
        beq ChangeDirectionY
        jmp MoveUpDown

ChangeDirectionY
        lda #0                          ;Se pone el retardo de animacion a cero para que se
        sta ENEMY_ANIM_DELAY_CUR,x       ;produzca el cambio inmediatamente

        lda ENEMY_DIRECTION,x
        eor #$FF
        sta ENEMY_DIRECTION,x

MoveUpDown
        lda ENEMY_DIRECTION,x
        cmp #MOVE_UP
        bne MoveDownY
        jsr SpriteMoveUp
        rts

MoveDownY
        jsr SpriteMoveDown
        rts

;------------------------------------------------------------
;Mueve enemigo hacia abajo
;el registro x tiene el indice del sprite (1 to 7)
;------------------------------------------------------------
MoveEnemyDown
        lda SPRITE_CHAR_POS_Y,x
        cmp ENEMY_END_Y_POS,x
        bne MoveDown

        rts

MoveDown
        jsr SpriteMoveDown
        rts

;------------------------------------------------------------
;SpriteMoveLeft
;en registro x contiene el indice del sprite
;------------------------------------------------------------
SpriteMoveLeft
          lda SPRITE_CHAR_POS_X_DELTA,x   ;Se carga la posición X delta (entre 1 y 8)
          beq .CheckCanMoveLeft         ;Se comprueba si se puede mover a la izquierda
          
.CanMoveLeft
          dec SPRITE_CHAR_POS_X_DELTA,x   ;Se decrementa X delta
          
          jsr MoveSpriteLeft            ;Se mueve a la izquierda
          rts
 
.CheckCanMoveLeft
          lda SPRITE_CHAR_POS_Y_DELTA,x
          beq .NoThirdCharCheckNeededLeft
          
          ldy SPRITE_CHAR_POS_Y,x         
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1

          lda SPRITE_CHAR_POS_X,x

          clc
          adc #39       ;Una línea abajo y otra a la izquierda
          tay
          
          lda (ZEROPAGE_POINTER_1),y
          
          ;sta $CC00
          jsr IsCharBlocking
          bne .BlockedLeft
          
.NoThirdCharCheckNeededLeft
          ;Una fila encima
          ldy SPRITE_CHAR_POS_Y,x
          dey
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ;Se comprueba uno arriba y uno a la izquierda
          ldy SPRITE_CHAR_POS_X,x
          dey
          cpx #0        ;Si es el protagonista hay que comprobar 2 a la izquierda
          bne esEnemigoLeft          
          dey

esEnemigoLeft
          lda (ZEROPAGE_POINTER_1),y
          
          ;sta $CC01
          jsr IsCharBlocking
          bne .BlockedLeft
          
          ;Se comprueba el de justo a la izquierda¿?
          tya
          clc
          adc #40
          tay
          lda (ZEROPAGE_POINTER_1),y
          ;sta $CC02
          jsr IsCharBlocking
          bne .BlockedLeft
          
          
          lda #8
          sta SPRITE_CHAR_POS_X_DELTA,x
          dec SPRITE_CHAR_POS_X,x
          jmp .CanMoveLeft
          
.BlockedLeft
          rts
          
;------------------------------------------------------------
;SpriteMoveRight
;en registro x contiene el indice del sprite
;------------------------------------------------------------
SpriteMoveRight
          lda SPRITE_CHAR_POS_X_DELTA,x
          beq .CheckCanMoveRight
          
.CanMoveRight
          inc SPRITE_CHAR_POS_X_DELTA,x
          
          lda SPRITE_CHAR_POS_X_DELTA,x
          cmp #8
          bne .NoCharStep
          
          lda #0
          sta SPRITE_CHAR_POS_X_DELTA,x
          inc SPRITE_CHAR_POS_X,x
          
.NoCharStep          
          jsr MoveSpriteRight
          rts
          
.CheckCanMoveRight
          lda SPRITE_CHAR_POS_Y_DELTA,x
          beq .NoThirdCharCheckNeededright
          
          ldy SPRITE_CHAR_POS_Y,x
          iny
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1

          ldy SPRITE_CHAR_POS_X,x
          iny
          
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedRight
          
.NoThirdCharCheckNeededRight         

          ldy SPRITE_CHAR_POS_Y,x
          dey
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X,x
          iny
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedRight
          
          tya
          clc
          adc #40
          tay
          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlocking
          bne .BlockedRight
          
          jmp .CanMoveRight
          
.BlockedRight
          rts
          

;------------------------------------------------------------
;SpriteMoveUp
;en registro x contiene el indice del sprite
;------------------------------------------------------------
SpriteMoveUp
          lda SPRITE_CHAR_POS_Y_DELTA,x
          beq .CheckCanMoveUp
          
.CanMoveUp
          dec SPRITE_CHAR_POS_Y_DELTA,x
          
          lda SPRITE_CHAR_POS_Y_DELTA,x
          cmp #$FF
          bne .NoCharStepUp
          
          dec SPRITE_CHAR_POS_Y,x
          lda #7
          sta SPRITE_CHAR_POS_Y_DELTA,x
          
.NoCharStepUp          
          jsr MoveSpriteUp
          rts
          
.CheckCanMoveUp
          lda SPRITE_CHAR_POS_X_DELTA,x
          beq .NoSecondCharCheckNeededUp
          
          ldy SPRITE_CHAR_POS_Y,x
          dey
          dey
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1

          ldy SPRITE_CHAR_POS_X,x
          iny
          
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedUp
          
.NoSecondCharCheckNeededUp          

          ldy SPRITE_CHAR_POS_Y,x
          dey

          cpx #0        ;Si es el protagonista hay que comprobar 2 arriba
          bne esEnemigoUp          
          dey

esEnemigoUp
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X,x ;Se comprueba una posición
          
          lda (ZEROPAGE_POINTER_1),y
          
          ;Si es un enemigo no se comprueba que se pueda mover
          cpx #0
          bne .CanMoveUp

          jsr IsCharBlocking
          bne .BlockedUp

          dey                   ;Se comprueba la posición anterior
          ;dey

          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedUp
          
          jmp .CanMoveUp
          
.BlockedUp
          rts
          
          
;------------------------------------------------------------
;SpriteMoveDown
;en registro x contiene el indice del sprite
;------------------------------------------------------------
SpriteMoveDown
          lda SPRITE_CHAR_POS_Y_DELTA,x
          beq .CheckCanMoveDown
          
.CanMoveDown
          inc SPRITE_CHAR_POS_Y_DELTA,x
          
          lda SPRITE_CHAR_POS_Y_DELTA,x
          cmp #8
          bne .NoCharStepDown
          
          lda #0
          sta SPRITE_CHAR_POS_Y_DELTA,x
          inc SPRITE_CHAR_POS_Y,x
          
.NoCharStepDown          
          jsr MoveSpriteDown
          lda #1
          rts
          
.CheckCanMoveDown
          lda SPRITE_CHAR_POS_X_DELTA,x
          beq .NoSecondCharCheckNeededDown
          
          ldy SPRITE_CHAR_POS_Y,x
          iny
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1

          ldy SPRITE_CHAR_POS_X,x
          iny
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedDown
          
.NoSecondCharCheckNeededDown          

          ldy SPRITE_CHAR_POS_Y,x
          iny
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X,x        ;Se comprueba si se bloquea
          
          lda (ZEROPAGE_POINTER_1),y
          
          ;Si es un enemigo no se comprueba que se pueda mover
          cpx #0
          bne .CanMoveDown

          jsr IsCharBlocking
          bne .BlockedDown

          dey                    ;Se comprueba también en el de la izquierda
          ;dey
          
          lda (ZEROPAGE_POINTER_1),y
          
          ;Si es un enemigo no se comprueba que se pueda mover
          ;cpx #0
          ;bne .CanMoveDown

          jsr IsCharBlocking
          bne .BlockedDown
          
          jmp .CanMoveDown
          
.BlockedDown
          lda #0
          rts

;------------------------------------------------------------
;Move Sprite Left
;expect x as sprite index (0 to 7)
;------------------------------------------------------------
MoveSpriteLeft
          dec SPRITE_POS_X,x
          bpl .NoChangeInExtendedFlagLeft
          
          lda BIT_TABLE,x
          eor #$ff
          and SPRITE_POS_X_EXTEND
          sta SPRITE_POS_X_EXTEND
          sta VIC_SPRITE_X_EXTEND
          
.NoChangeInExtendedFlagLeft    
          txa
          asl
          tay

          ;jsr animateSprite
          
          lda SPRITE_POS_X,x
          sta VIC_SPRITE_X_POS,y

;        lda $1
;        sta SCREEN_COLOR
;        sta SCREEN_COLOR+1
;        sta $CC00
        ;lda VIC_SPRITE_X_EXTEND
        ;sta $CC01

          rts  

;------------------------------------------------------------
;Move Sprite Right
;expect x as sprite index (0 to 7)
;------------------------------------------------------------
MoveSpriteRight
          inc SPRITE_POS_X,x
          lda SPRITE_POS_X,x
          bne .NoChangeInExtendedFlagRight
          
          lda BIT_TABLE,x
          ora SPRITE_POS_X_EXTEND
          sta SPRITE_POS_X_EXTEND
          sta VIC_SPRITE_X_EXTEND
          
.NoChangeInExtendedFlagRight     
          txa
          asl
          tay

          ;jsr animateSprite        
          
          lda SPRITE_POS_X,x
          sta VIC_SPRITE_X_POS,y

;        lda $1
;        sta SCREEN_COLOR
;        sta SCREEN_COLOR+1

;        sta $CC00
        ;lda VIC_SPRITE_X_EXTEND
        ;sta $CC01

          rts  

;------------------------------------------------------------
;Move Sprite Up
;expect x as sprite index (0 to 7)
;------------------------------------------------------------
;!zone MoveSpriteUp
MoveSpriteUp
          dec SPRITE_POS_Y,x
          
          txa
          asl
          tay
          
          ;jsr animateSprite

          lda SPRITE_POS_Y,x
          sta VIC_SPRITE_Y_POS,y

          rts  

;------------------------------------------------------------
;Move Sprite Down
;expect x as sprite index (0 to 7)
;------------------------------------------------------------
;!zone MoveSpriteDown
MoveSpriteDown
          inc SPRITE_POS_Y,x
          
          txa
          asl
          tay
          
          ;jsr animateSprite

          lda SPRITE_POS_Y,x
          sta VIC_SPRITE_Y_POS,y
          rts  
