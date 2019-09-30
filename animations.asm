;=======================================
;Comprueba el tipo de sprite para animar
;el registro x es el índice del sprite
;=======================================
animateSprite
        lda ENEMY_ANIM_DELAY_CUR,x
        beq cambiarSprite
        dec ENEMY_ANIM_DELAY_CUR,x
        rts

cambiarSprite
        lda ENEMY_ANIM_DELAY,x          ;Se lee los pasos de animación
        sta ENEMY_ANIM_DELAY_CUR,x      ;Se cargan los pasos de animación para la siguiente espera

        lda ENEMY_TYPE,x
        cmp #SP_PLANO
        bne CheckMurcielago
        lda #SPRITE_PLANO
        sta PARAM5
        lda #SPRITE_PLANO + 7
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckMurcielago
        cmp #SP_MURCIELAGO
        bne CheckGota
        lda #SPRITE_MURCIELAGO_L
        sta PARAM5
        lda #SPRITE_MURCIELAGO_R
        sta PARAM6
        lda #SPRITE_MURCIELAGO_L + 5
        sta PARAM7
        lda #SPRITE_MURCIELAGO_R + 5
        sta PARAM8
        jsr animateDoubleSprite
        jmp endAnimation

CheckGota
        cmp #SP_GOTA
        bne CheckGota2
        lda #SPRITE_GOTA
        sta PARAM5
        lda #SPRITE_GOTA + 4
        sta PARAM6
        jsr animateSoloBajada
        jmp endAnimation

CheckGota2
        cmp #SP_GOTA_2
        bne CheckMoscas
        lda #SPRITE_GOTA
        sta PARAM5
        lda #SPRITE_GOTA
        sta PARAM6
        jsr animateSoloBajada
        jmp endAnimation
       
CheckMoscas
        cmp #SP_MOSCAS
        bne CheckPalmas
        lda #SPRITE_MOSCAS
        sta PARAM5
        lda #SPRITE_MOSCAS + 3
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckPalmas
        cmp #SP_PALMAS
        bne CheckSerpiente
        lda #SPRITE_PALMAS
        sta PARAM5
        lda #SPRITE_PALMAS + 3
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckSerpiente
        cmp #SP_SERPIENTE
        bne CheckMazo
        lda #SPRITE_SERPIENTE_L
        sta PARAM5
        lda #SPRITE_SERPIENTE_R
        sta PARAM6
        lda #SPRITE_SERPIENTE_L + 3
        sta PARAM7
        lda #SPRITE_SERPIENTE_R + 3
        sta PARAM8
        jsr animateDoubleSprite
        jmp endAnimation

CheckMazo
        cmp #SP_MAZO
        bne CheckArana
        lda #SPRITE_MAZO
        sta PARAM5
        lda #SPRITE_MAZO + 5
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckArana
        cmp #SP_ARANA
        bne CheckMomia
        lda #SPRITE_ARANA
        sta PARAM5
        lda #SPRITE_ARANA + 4
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckMomia
        cmp #SP_MOMIA
        bne CheckLock1
        lda #SPRITE_MOMIA_L
        sta PARAM5
        lda #SPRITE_MOMIA_R
        sta PARAM6
        lda #SPRITE_MOMIA_L + 3
        sta PARAM7
        lda #SPRITE_MOMIA_R + 3
        sta PARAM8
        jsr animateDoubleSprite
        jmp endAnimation

CheckLock1
        cmp #SP_LOCK_1
        bne CheckBola
        lda #SPRITE_LOCK_1
        sta PARAM5
        lda #SPRITE_LOCK_1 + 1
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckBola
        cmp #SP_BOLA
        bne CheckAro
        lda #SPRITE_BOLA
        sta PARAM5
        lda #SPRITE_BOLA + 1
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckAro
        cmp #SP_ARO
        bne CheckLock3
        lda #SPRITE_ARO
        sta PARAM5
        lda #SPRITE_ARO + 5
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckLock3
        cmp #SP_LOCK_3
        bne CheckRayo
        lda #SPRITE_LOCK_3
        sta PARAM5
        lda #SPRITE_LOCK_3 + 1
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckRayo
        cmp #SP_RAYO
        bne CheckLock4
        lda #SPRITE_RAYO
        sta PARAM5
        lda #SPRITE_RAYO + 2
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckLock4
        cmp #SP_LOCK_4
        bne CheckLock2
        lda #SPRITE_LOCK_4
        sta PARAM5
        lda #SPRITE_LOCK_4 + 1
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckLock2
        cmp #SP_LOCK_2
        bne CheckLock6
        lda #SPRITE_LOCK_2
        sta PARAM5
        lda #SPRITE_LOCK_2 + 1
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckLock6
        cmp #SP_LOCK_6
        bne CheckTransporter1
        lda #SPRITE_LOCK_6
        sta PARAM5
        lda #SPRITE_LOCK_6 + 1
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckTransporter1
        cmp #SP_TRANSPORTER_1
        bne CheckTransporter2
        lda #SPRITE_TRANSPORTER_1
        sta PARAM5
        lda #SPRITE_TRANSPORTER_1
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckTransporter2
        cmp #SP_TRANSPORTER_2
        bne CheckEstalactita
        lda #SPRITE_TRANSPORTER_2
        sta PARAM5
        lda #SPRITE_TRANSPORTER_2 + 1
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckEstalactita
        cmp #SP_ESTALACTITA
        bne CheckVolcan
        lda #SPRITE_ESTALACTITA
        sta PARAM5
        lda #SPRITE_ESTALACTITA + 4
        sta PARAM6
        jsr animateSoloBajada
        jmp endAnimation

CheckVolcan
        cmp #SP_VOLCAN
        bne CheckLock7
        lda #SPRITE_VOLCAN
        sta PARAM5
        lda #SPRITE_VOLCAN + 4
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckLock7
        cmp #SP_LOCK_7
        bne CheckPez
        lda #SPRITE_LOCK_7
        sta PARAM5
        lda #SPRITE_LOCK_7 + 1
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckPez
        cmp #SP_PEZ
        bne CheckFlecha
        lda #SPRITE_PEZ_D
        sta PARAM5
        lda #SPRITE_PEZ_U
        sta PARAM6
        lda #SPRITE_PEZ_D + 3
        sta PARAM7
        lda #SPRITE_PEZ_U + 3
        sta PARAM8
        jsr animateDoubleSprite
        jmp endAnimation

CheckFlecha
        cmp #SP_FLECHA
        bne CheckLock8
        lda #SPRITE_FLECHA
        sta PARAM5
        lda #SPRITE_FLECHA
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckLock8
        cmp #SP_LOCK_8
        bne CheckRayo2
        lda #SPRITE_LOCK_8
        sta PARAM5
        lda #SPRITE_LOCK_8 + 1
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckRayo2
        cmp #SP_RAYO_2
        bne CheckLock9
        lda #SPRITE_RAYO
        sta PARAM5
        lda #SPRITE_RAYO + 2
        sta PARAM6
        jsr animateSoloBajada
        jmp endAnimation

CheckLock9
        cmp #SP_LOCK_9
        bne CheckLock10_2
        lda #SPRITE_LOCK_9
        sta PARAM5
        lda #SPRITE_LOCK_9 + 1
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

CheckLock10_2
        cmp #SP_LOCK_10_2
        bne endAnimation
        lda #SPRITE_LOCK_10_2
        sta PARAM5
        lda #SPRITE_LOCK_10_2 + 1
        sta PARAM6
        jsr animateSimpleSprite
        jmp endAnimation

endAnimation
        rts


;==============================================================================
;animateSoloBajada - Anima los sprites que solo bajan como las gotas
;PARAM5 - Indece primer sprite
;PARAM6 - Indice último sprite
;==============================================================================
animateSoloBajada
        lda SPRITE_CHAR_POS_Y,x
        cmp ENEMY_END_Y_POS,x
        bne endAnimateSoloBajada
        
        lda SPRITE_POINTER_BASE,x
        cmp PARAM6
        beq resetAnimSoloBajada
        inc SPRITE_POINTER_BASE,x

        lda #SND_GOTA
        jsr initpickedfx

        jmp endAnimateSoloBajada

resetAnimSoloBajada
        lda PARAM5
        sta SPRITE_POINTER_BASE,x

        lda ENEMY_INI_X_POS,x   ;Se cargan las posiciones x e y de inicio del sprite
        sta PARAM1
        lda ENEMY_INI_Y_POS,x
        sta PARAM2
        jsr CalcSpritePosFromCharPos
                
endAnimateSoloBajada
        rts


;==============================================================================
;animateDoubleSprite - Anima los sprites que cambién en función de la dirección
;PARAM5 - Indice sprite izquierda
;PARAM6 - Indice sprite derecha
;PARAM7 - Indice último sprite izquierda
;PARAM8 - Indice último sprite derecha
;==============================================================================
animateDoubleSprite
        lda ENEMY_DIRECTION,x

        beq checkCambioIzquierda

        ;Se mueve hacia la derecha
        lda SPRITE_POINTER_BASE,x
        cmp PARAM5
        bmi animar
        cmp PARAM7
        bpl animar
        
        lda PARAM6
        sta SPRITE_POINTER_BASE,x
 
        jmp animar

checkCambioIzquierda        


animar
        lda ENEMY_DIRECTION,x
        beq anim2

anim1   ;Animación hacia la derecha
        lda SPRITE_POINTER_BASE,x
        cmp PARAM8
        bpl resetAnim1
        inc SPRITE_POINTER_BASE,x
        jmp endAnimateDoubleSprite

resetAnim1      ;Se vuelve al primer sprite hacia la derecha
        lda PARAM6
        sta SPRITE_POINTER_BASE,x
        jmp endAnimateDoubleSprite

anim2   ;Animación hacia la izquierda
        lda SPRITE_POINTER_BASE,x
        cmp PARAM7
        bpl resetAnim2
        inc SPRITE_POINTER_BASE,x
        jmp endAnimateDoubleSprite

resetAnim2      ;Se vuelve al primer sprite hacia la izquierda
        lda PARAM5
        sta SPRITE_POINTER_BASE,x
        
endAnimateDoubleSprite
        rts

;==============================================================================
;animateSimpleSprite - Animacion de sprites en loop
;PARAM5 - Indece primer sprite
;PARAM6 - Indice último sprite
;==============================================================================
animateSimpleSprite
        lda SPRITE_POINTER_BASE,x
        cmp PARAM6
        beq resetAnimSimpleSprite
        inc SPRITE_POINTER_BASE,x
        jmp endAnimateSimpleSprite

resetAnimSimpleSprite
        lda PARAM5
        sta SPRITE_POINTER_BASE,x
        
endAnimateSimpleSprite
        rts

;=======================================
;Animación del jugador andando a la izquierda
;=======================================
animatePlayerLeft
        lda PLAYER_ANIM_DELAY
        beq doAnimatePlayerLeft
        dec PLAYER_ANIM_DELAY
        rts
        
doAnimatePlayerLeft
        lda #CONST_PLAYER_ANIM_DELAY          ;Se inicializa el retardo de animación
        sta PLAYER_ANIM_DELAY

        lda SPRITE_POINTER_BASE
        cmp #SPRITE_PLAYER+11
        bpl resetAnimPlayerLeft
        cmp #SPRITE_PLAYER+9
        bmi resetAnimPlayerLeft
        inc SPRITE_POINTER_BASE
        jmp endAnimatePlayerLeft
        
resetAnimPlayerLeft
        lda #SPRITE_PLAYER+9
        sta SPRITE_POINTER_BASE

        lda #SND_PASOS
        jsr initpickedfx

endAnimatePlayerLeft
        rts

;=======================================
;Animación del jugador a la derecha
;=======================================
animatePlayerRight
        lda PLAYER_ANIM_DELAY
        beq doAnimatePlayerRight
        dec PLAYER_ANIM_DELAY
        rts

doAnimatePlayerRight
        lda #CONST_PLAYER_ANIM_DELAY          ;Se inicializa el retardo de animación
        sta PLAYER_ANIM_DELAY

        lda SPRITE_POINTER_BASE
        cmp #SPRITE_PLAYER+8
        bpl resetAnimPlayerRight
        cmp #SPRITE_PLAYER+6
        bmi resetAnimPlayerRight
        inc SPRITE_POINTER_BASE
        jmp endAnimatePlayerRight
        
resetAnimPlayerRight
        lda #SPRITE_PLAYER+6
        sta SPRITE_POINTER_BASE

        lda #SND_PASOS
        jsr initpickedfx

endAnimatePlayerRight
        rts

;=======================================
;Animación del jugador saltando
;=======================================
animatePlayerJump
        lda #SPRITE_PLAYER+3
        sta SPRITE_POINTER_BASE

        lda #SND_SALTO
        jsr initpickedfx

        rts

;=======================================
;Animación del jugador saltando a la izquierda
;=======================================
animatePlayerJumpLeft
        lda #SPRITE_PLAYER+5
        sta SPRITE_POINTER_BASE
        rts

;=======================================
;Animación del jugador saltando a la derecha
;=======================================
animatePlayerJumpRight
        lda #SPRITE_PLAYER+4
        sta SPRITE_POINTER_BASE
        rts

;=======================================
;Animación del jugador mirando a la derecha
;=======================================
animatePlayerLookRight
        lda #SPRITE_PLAYER
        sta SPRITE_POINTER_BASE
        rts

;=======================================
;Animación del jugador mirando a la izquierda
;=======================================
animatePlayerLookLeft
        lda #SPRITE_PLAYER+1
        sta SPRITE_POINTER_BASE
        rts

;=======================================
;Animación del jugador mirando al frente
;=======================================
animatePlayerLookFront
        lda #SPRITE_PLAYER+2
        sta SPRITE_POINTER_BASE
        rts
