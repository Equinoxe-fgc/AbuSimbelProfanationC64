;Custom sound effects player for 
;C64 port of Abu Simbel
;by Richard Bayliss

;Desired sound effects for game are:
;
;- 1-Steps (when the caracter walkds along the tombs)
;- 2-Character jump (long jump and short jump)
;- 3-Drop falling
;- 4-Picking up an object
;- 5-When you lose a life
;- 6-Game over sound
;- 7-Gota
;- 8-Abrir puerta
;- 9-Transportar
; 10 SYS (2304)

;sfxinit = $1000 ;When you make the sfx
;sfxplay = $1003 ;addresses can be changed
;                ;to suit your game program
;*=$0801

;        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $32, $33, $30, $34, $29, $00, $00, $00

;        *=$0900 ;Test program

SID_CONTROL_V1  = $D404  ;54276
SID_CONTROL_V2  = $D40B  ;54283
SID_CONTROL_V3  = $D412  ;54290

SID_FREQ_V1     = $D401  ;54273
SID_FREQ_V2     = $D408  ;54280
SID_FREQ_V3     = $D40F  ;54287

SID_PULSE_WIDTH_LO_V1 = $D402      ;54274
SID_PULSE_WIDTH_LO_V2 = $D409      ;54281
SID_PULSE_WIDTH_LO_V3 = $D410      ;54288

SID_PULSE_WIDTH_HI_V1 = $D403      ;54275
SID_PULSE_WIDTH_HI_V2 = $D40A      ;54282
SID_PULSE_WIDTH_HI_V3 = $D411      ;54289

SID_AD_V1             = $D405      ;54277
SID_AD_V2             = $D40C      ;54284
SID_AD_V3             = $D413      ;54291

SID_SR_V1             = $D406      ;54278
SID_SR_V2             = $D40D      ;54285
SID_SR_V3             = $D414      ;54292

SID_VOL_FILTERS       = $D418      ;54296


initSounds
        lda #$FF
        sta SID_CONTROL_V1
        sta SID_CONTROL_V2
        sta SID_CONTROL_V3
        lda #$0a
        sta SID_AD_V1
        sta SID_AD_V2
        sta SID_AD_V3
        lda #$aa
        sta SID_SR_V1
        sta SID_SR_V2
        sta SID_SR_V3
        
        lda #$0f
        sta SID_VOL_FILTERS

        rts



initpickedfx
        
        sta fxno
        ldx #$00
        stx fxpointer
        lda fxno

        cmp #$01 ;Sound number 1?
        bne notsound1

        ;Sound 1 detected, setup the lo
        ;and hi byte values of sound table
        ;
        ;SFX of the player walking
        ;-------------------------
        lda #<fxwave1
        sta fxsm1+1
        lda #>fxwave1
        sta fxsm1+2
        lda #<fxvoice1
        sta fxsm2+1
        lda #>fxvoice1
        sta fxsm2+2
        rts
notsound1
        cmp #$02
        bne notsound2
        ;Set lo/hibyte values of sound
        ;table. SFX of the player 
        ;jumping.

        lda #<fxwave2
        sta fxsm1+1
        lda #>fxwave2
        sta fxsm1+2
        lda #<fxvoice2
        sta fxsm2+1
        lda #>fxvoice2
        sta fxsm2+2
        rts
notsound2

;        cmp #$03
;        bne notsound3

;        ;Play sfx where player falls

;        lda #<fxwave3
;        sta fxsm1+1
;        lda #>fxwave3
;        sta fxsm1+2
;        lda #<fxvoice3
;        sta fxsm2+1
;        lda #>fxvoice3
;        sta fxsm2+2
;        rts

notsound3        
        cmp #$04
        bne notsound4
;Play SFX where player picks an object

        lda #<fxwave4 
        sta fxsm1+1
        lda #>fxwave4
        sta fxsm1+2
        lda #<fxvoice4
        sta fxsm2+1
        lda #>fxvoice4
        sta fxsm2+2
        rts
notsound4
        cmp #$05
        bne notsound5
        
;Play SFX where player dies

        lda #<fxwave5
        sta fxsm1+1
        lda #>fxwave5
        sta fxsm1+2
        lda #<fxvoice5
        sta fxsm2+1
        lda #>fxvoice5
        sta fxsm2+2
        rts

notsound5
        cmp #$06
        bne notsound6

;Play SFX for GAME OVER

        lda #<fxwave6
        sta fxsm1+1
        lda #>fxwave6
        sta fxsm1+2
        lda #<fxvoice6
        sta fxsm2+1
        lda #>fxvoice6
        sta fxsm2+2
        rts
notsound6
        cmp #$07
        bne notsound7
        
;Play SFX for drip
        lda #<fxwave7
        sta fxsm1+1
        lda #>fxwave7
        sta fxsm1+2
        lda #<fxvoice7
        sta fxsm2+1
        lda #>fxvoice7
        sta fxsm2+2
        rts
notsound7
        cmp #$08
        bne notsound8
        
;Play SFX for door opening

        lda #<fxwave8
        sta fxsm1+1
        lda #>fxwave8
        sta fxsm1+2
        lda #<fxvoice8
        sta fxsm2+1
        lda #>fxvoice8
        sta fxsm2+2
        rts

;Play SFX for next room
notsound8
        cmp #$09
        bne notsound9

        lda #<fxwave9
        sta fxsm1+1
        lda #>fxwave9
        sta fxsm1+2
        lda #<fxvoice9
        sta fxsm2+1
        lda #>fxvoice9
        sta fxsm2+2
        rts

notsound9
        cmp #$ff
        bne notsilence
        lda #<Silence   
        sta fxsm1+1
        sta fxsm2+1
        lda #>Silence
        sta fxsm1+2
        sta fxsm2+2
       
notsilence
        rts

playpickedfx
        txa
        pha
        tya
        pha

        jsr playsoundeffect

        pla
        tay
        pla
        tax

        rts

;Play sound effect ... This is made by 
;calling a delay then a loop, to 
;read the table and store it to the
;correct settings.


playsoundeffect
        ldx fxpointer

fxsm1   lda fxwave1,x
        cmp #$FF
        bne waveOK
        lda #$00

waveOK
        sta SID_CONTROL_V1
        sta SID_CONTROL_V2
        sta SID_CONTROL_V3

fxsm2   lda fxvoice1,x
        cmp #$FF
        bne voiceOK
        lda #$08
        sta SID_FREQ_V1
        sta SID_FREQ_V2
        sta SID_FREQ_V3
        jmp finishsfxpointer

voiceOK
        sta SID_FREQ_V1
        sta SID_FREQ_V2
        sta SID_FREQ_V3

        lda #$08
        sta SID_PULSE_WIDTH_LO_V1
        sta SID_PULSE_WIDTH_HI_V1

        sta SID_PULSE_WIDTH_LO_V2
        sta SID_PULSE_WIDTH_HI_V2

        sta SID_PULSE_WIDTH_LO_V3
        sta SID_PULSE_WIDTH_HI_V3

        inc fxpointer
        rts
finishsfxpointer
        rts

;Pointers and delay

fxpointer 
        byte 0
fxno
        byte 0


;Sound effect 1 - Steps:
;Just a simple white noise tick 

fxwave1
        byte $81,$00,$00,$00,$81,$00,$00,$00,$FF
        ;byte $81,$00,$00,$00,$81,$00,$00,$00,$FF
;        byte $00,$00,$00,$00,$00,$00,$ff,$ff
;        byte $00,$00,$00,$00,$00,$00,$ff,$ff
;        byte $00,$00,$00,$00,$00,$00,$ff,$ff
;        byte $00,$00,$00,$00,$00,$00,$ff,$ff

fxvoice1
        byte $3c,$3c,$00,$00,$2a,$2a,$00,$00,$FF
        ;byte $3c,$3c,$00,$00,$2a,$2a,$00,$00,$FF
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
        
;Sound effect 2 - Jump

fxwave2
        byte $41,$41,$41,$41,$41,$41,$41,$41
        byte $41,$41,$41,$41,$41,$FF
;,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
fxvoice2
        byte $10,$14,$18,$1c,$20,$24,$28,$2c
        byte $30,$34,$38,$3c,$40,$FF
;,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00

;;Sound effect 3 - fall

;fxwave3
;        byte $11,$11,$11,$11,$11,$11,$11,$11
;        byte $11,$11,$11,$11,$11,$11,$11,$11
;        byte $11,$11,$11,$11,$11,$11,$11,$11
;        byte $11,$11,$11,$11,$11,$11,$11,$11
;        byte $11,$11,$11,$11,$11,$11,$00,$00   

;fxvoice3
;        byte $60,$60,$5f,$5f,$5e,$5e,$5d,$5d
;        byte $5c,$5c,$5b,$5b,$5a,$5a,$59,$59
;        byte $58,$58,$57,$57,$56,$56,$55,$55
;        byte $54,$54,$53,$53,$52,$52,$51,$51
;        byte $50,$50,$4f,$4f,$4e,$4e,$00,$00
       
;Sound effect 4 - pick up object

fxwave4
        byte $11,$11,$11,$11,$11,$11,$11,$11
        byte $11,$11,$11,$11,$11,$11,$11,$11
        byte $FF
;,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00

fxvoice4
        byte $30,$70,$44,$54,$27,$47,$6c,$3c
        byte $10,$60,$24,$54,$47,$97,$3c,$14
        byte $FF
;,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00

;Sound effect 5 Lose a life

fxwave5 
        byte $81,$21,$81,$21,$81,$21,$81,$21
        byte $81,$21,$81,$21,$81,$21,$81,$21
        byte $81,$21,$81,$21,$81,$21,$81,$21
        byte $81,$21,$81,$21,$81,$21,$81,$21
        byte $81,$21,$81,$21,$81,$21,$FF;,$00

fxvoice5
        byte $20,$20,$1f,$1f,$1e,$1e,$1d,$1d
        byte $1c,$1c,$1b,$1b,$1a,$1a,$19,$19
        byte $18,$18,$17,$17,$16,$16,$15,$15
        byte $14,$14,$13,$13,$12,$12,$11,$11
        byte $10,$10,$0f,$0f,$0e,$0e,$FF;,$00
       
;Sound effect 6 Game Over

fxwave6
        byte $41,$41,$41,$41,$41,$41,$41,$41
        byte $41,$41,$41,$41,$41,$41,$41,$41
        byte $41,$41,$41,$41,$41,$41,$41,$41
        byte $41,$41,$41,$41,$41,$41,$41,$41
        byte $41,$41,$41,$41,$41,$41,$FF;,$00
fxvoice6
        byte $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a
        byte $08,$08,$08,$08,$08,$08,$08,$08
        byte $05,$05,$05,$05,$05,$05,$05,$05
        byte $04,$04,$04,$04,$04,$04,$04,$04
        byte $04,$04,$04,$04,$04,$04,$FF;,$00

Silence
        byte $00,$FF;$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00

;Sound effect for drip sound

fxwave7
                        
        byte $81,$00,$FF;$00,$00,$00,$81,$00,$00
;        byte $00,$00,$FF;,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00

fxvoice7
        byte $70,$30,$FF;$40,$30,$20,$70,$00,$00
;        byte $00,$00,$FF ;$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
                    
;Sound effect for door open

fxwave8
        byte $81,$81,$81,$81,$81,$81,$81,$81
        byte $81,$81,$81,$81,$81,$81,$81,$81
        byte $81,$81,$81,$81,$81,$81,$81,$81
        byte $81,$81,$81,$81,$81,$81,$81,$81
        byte $81,$81,$81,$81,$81,$81,$FF;,$00
fxvoice8
        byte $06,$09,$0b,$09,$06,$09,$0b,$09
        byte $06,$09,$0b,$09,$06,$09,$0b,$09
        byte $06,$09,$0b,$09,$06,$09,$0b,$09
        byte $06,$09,$0b,$09,$06,$09,$0b,$09
        byte $06,$09,$0b,$09,$06,$09,$FF;,$00

;Sound effect for next room

fxwave9
        byte $41,$41,$41,$41,$41,$41,$41,$41
        byte $41,$41,$41,$41,$41,$41,$41,$41
        byte $FF
;,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00

fxvoice9
        byte $08,$0a,$0c,$0e,$10,$11,$12,$14
        byte $08,$0a,$0c,$0e,$10,$11,$12,$14
        byte $FF
;,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
;        byte $00,$00,$00,$00,$00,$00,$00,$00
        