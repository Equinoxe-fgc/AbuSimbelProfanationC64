;========================================================
; CopyCharSet
;  ZEROPAGE_POINTER_1 -> Dirección del charset a copiar
;========================================================
CopyCharSet
        lda PARAM3      ;Se guarda PARAM3 porque se usa en otros sitios
        pha

          ;set target address ($F800)
          lda #$00
          sta ZEROPAGE_POINTER_2
          lda #$F8
          sta ZEROPAGE_POINTER_2 + 1

          ldx #$00
          ldy #$00
          lda #0
          sta PARAM3

.NextLine
          lda (ZEROPAGE_POINTER_1),Y
          sta (ZEROPAGE_POINTER_2),Y
          inx
          iny
          cpx #$08
          bne .NextLine
          cpy #$00
          bne .PageBoundaryNotReached
          
          ;we've reached the next 256 bytes, inc high byte
          inc ZEROPAGE_POINTER_1 + 1
          inc ZEROPAGE_POINTER_2 + 1

.PageBoundaryNotReached

          ;only copy 254 chars to keep irq vectors intact
          inc PARAM3
          lda PARAM3
          cmp #254
          beq .CopyCharsetDone
          ldx #$00
          jmp .NextLine

.CopyCharsetDone
        pla             ;Se recupera PARAM3
        sta PARAM3
          rts

;========================================================
; CopySprites
;  ZEROPAGE_POINTER_1 -> Dirección de los sprites a copiar
;========================================================
CopySprites
          ;take source address from SPRITES
          lda #<SPRITES
          sta ZEROPAGE_POINTER_1
          lda #>SPRITES
          sta ZEROPAGE_POINTER_1 + 1

          ldy #$00
          ldx #$00
          
          lda #00
          sta ZEROPAGE_POINTER_2
          lda #$d0
          sta ZEROPAGE_POINTER_2 + 1
          
          ;4 sprites per loop
.SpriteLoop
          lda (ZEROPAGE_POINTER_1),y
          sta (ZEROPAGE_POINTER_2),y
          iny
          bne .SpriteLoop
          inx
          inc ZEROPAGE_POINTER_1+1
          inc ZEROPAGE_POINTER_2+1
          cpx #NUMBER_OF_SPRITES_DIV_4
          bne .SpriteLoop

          rts

;========================================================
; CopyBitmapColor
;  Copia el color del bitmap de la parte inferior de la pantalla
;========================================================
CopyBitmapColor
          lda #<BITMAP_COLOR_DATA
          sta ZEROPAGE_POINTER_1
          lda #>BITMAP_COLOR_DATA
          sta ZEROPAGE_POINTER_1 + 1

          ldy #$00
          
          lda #<BITMAP_SCREEN_COLOR
          sta ZEROPAGE_POINTER_2
          lda #>BITMAP_SCREEN_COLOR
          sta ZEROPAGE_POINTER_2 + 1
                    
copyLoop
          lda (ZEROPAGE_POINTER_1),y
          sta (ZEROPAGE_POINTER_2),y
          iny
          cpy #240
          bne copyLoop
