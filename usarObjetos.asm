
;usarObjeto
;        lda CUR_SCREEN
;        cmp #4                  ;Pantalla 4
;        bne ckeckPantalla6
;        
;        lda #$20
;        sta SCREEN_CHAR+#$1D9
;        
;        jmp finCheckPantallas

;ckeckPantalla6

;finCheckPantallas
;        rts