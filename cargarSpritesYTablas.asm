;------------------------------------------------------------
;cargarTablaScreens
;Rellena la tabla con las direcciones de las pantallas
;------------------------------------------------------------   
cargarTablaScreens
        ldx #0
        
        lda #>Screen_0_screen_data
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_0_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_0_colour_data 
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_0_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_0_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_0_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_1_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_1_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_1_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_1_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_1_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_1_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_2_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_2_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_2_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_2_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_2_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_2_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_3_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_3_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_3_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_3_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_3_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_3_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_4_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_4_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_4_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_4_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_4_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_4_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_5_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_5_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_5_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_5_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_5_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_5_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_6_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_6_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_6_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_6_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_6_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_6_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_7_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_7_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_7_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_7_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_7_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_7_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_8_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_8_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_8_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_8_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_8_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_8_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_9_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_9_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_9_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_9_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_9_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_9_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_10_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_10_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_10_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_10_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_10_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_10_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_11_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_11_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_11_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_11_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_11_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_11_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_12_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_12_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_12_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_12_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_12_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_12_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_13_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_13_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_13_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_13_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_13_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_13_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_14_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_14_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_14_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_14_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_14_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_14_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_15_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_15_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_15_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_15_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_15_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_15_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_16_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_16_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_16_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_16_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_16_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_16_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_17_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_17_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_17_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_17_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_17_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_17_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_18_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_18_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_18_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_18_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_18_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_18_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_19_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_19_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_19_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_19_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_19_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_19_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_20_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_20_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_20_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_20_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_20_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_20_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_21_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_21_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_21_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_21_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_21_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_21_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_22_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_22_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_22_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_22_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_22_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_22_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_23_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_23_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_23_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_23_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_23_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_23_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_24_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_24_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_24_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_24_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_24_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_24_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_25_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_25_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_25_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_25_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_25_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_25_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_26_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_26_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_26_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_26_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_26_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_26_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_27_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_27_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_27_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_27_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_27_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_27_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_28_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_28_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_28_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_28_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_28_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_28_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_29_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_29_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_29_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_29_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_29_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_29_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_30_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_30_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_30_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_30_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_30_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_30_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_31_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_31_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_31_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_31_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_31_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_31_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_32_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_32_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_32_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_32_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_32_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_32_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_33_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_33_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_33_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_33_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_33_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_33_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_34_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_34_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_34_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_34_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_34_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_34_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_35_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_35_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_35_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_35_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_35_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_35_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_36_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_36_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_36_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_36_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_36_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_36_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_37_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_37_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_37_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_37_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_37_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_37_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_38_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_38_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_38_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_38_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_38_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_38_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_39_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_39_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_39_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_39_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_39_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_39_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_40_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_40_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_40_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_40_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_40_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_40_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_41_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_41_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_41_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_41_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_41_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_41_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_42_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_42_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_42_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_42_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_42_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_42_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_43_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_43_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_43_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_43_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_43_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_43_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_44_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_44_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_44_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_44_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_44_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_44_info_data
        sta SCREENS_INFO_TABLE_LO,x
        inx

        lda #>Screen_45_screen_data 
        sta SCREENS_DATA_TABLE_HI,x
        lda #<Screen_45_screen_data 
        sta SCREENS_DATA_TABLE_LO,x
        lda #>Screen_45_colour_data
        sta SCREENS_COLOR_TABLE_HI,x
        lda #<Screen_45_colour_data 
        sta SCREENS_COLOR_TABLE_LO,x
        lda #>Screen_45_info_data
        sta SCREENS_INFO_TABLE_HI,x
        lda #<Screen_45_info_data
        sta SCREENS_INFO_TABLE_LO,x
        ;inx

        rts


;========================================================
; cargarSprite
;  X -> Índice del sprite a cargar
;Carga los sprites 
;======================================================== 
cargarSprite
        lda ENEMY_TYPE,x
        cmp #SP_PLANO           ;Plano
        bne CheckCargaMurcielago
        lda #SPRITE_PLANO
        jmp endCargaSprite

CheckCargaMurcielago
        cmp #SP_MURCIELAGO      ;Murciélago
        bne CheckCargaGota
        lda #SPRITE_MURCIELAGO_R
        jmp endCargaSprite

CheckCargaGota
        cmp #SP_GOTA            ;Gota
        bne CheckCargaGota2
        lda #SPRITE_GOTA
        jmp endCargaSprite

CheckCargaGota2
        cmp #SP_GOTA_2            ;Gota sin salpicaduras
        bne CheckCargaKey1
        lda #SPRITE_GOTA
        jmp endCargaSprite

CheckCargaKey1
        cmp #SP_KEY_1           ;Llave 1
        bne cargarMoscas
        lda #SPRITE_KEY_1
        jmp endCargaSprite

cargarMoscas
        cmp #SP_MOSCAS          ;Moscas
        bne cargarPalmas
        lda #SPRITE_MOSCAS
        jmp endCargaSprite

cargarPalmas
        cmp #SP_PALMAS          ;Palmas
        bne cargarSerpiente
        lda #SPRITE_PALMAS
        jmp endCargaSprite

cargarSerpiente
        cmp #SP_SERPIENTE       ;Serpiente
        bne cargarMazo
        lda #SPRITE_SERPIENTE_R
        jmp endCargaSprite

cargarMazo
        cmp #SP_MAZO            ;Mazo
        bne cargarArana
        lda #SPRITE_MAZO
        jmp endCargaSprite

cargarArana
        cmp #SP_ARANA           ;Araña
        bne cargarMomia
        lda #SPRITE_ARANA
        jmp endCargaSprite

cargarMomia
        cmp #SP_MOMIA           ;Momia
        bne cargarPinchos1
        lda #SPRITE_MOMIA_R
        jmp endCargaSprite

cargarPinchos1
        cmp #SP_PINCHOS_1       ;Pinchos 1
        bne cargarPinchos2
        lda #SPRITE_PINCHOS_1
        jmp endCargaSprite

cargarPinchos2
        cmp #SP_PINCHOS_2       ;Pinchos 2
        bne cargarLock1
        lda #SPRITE_PINCHOS_2
        jmp endCargaSprite

cargarLock1
        cmp #SP_LOCK_1          ;Cerradura 1
        bne cargarKey2
        lda #SPRITE_LOCK_1
        jmp endCargaSprite

cargarKey2
        cmp #SP_KEY_2           ;Llave 2
        bne cargarTransporter1
        lda #SPRITE_KEY_2
        jmp endCargaSprite

cargarTransporter1
        cmp #SP_TRANSPORTER_1   ;Transportador 1
        bne cargarBola
        lda #SPRITE_TRANSPORTER_1
        jmp endCargaSprite

cargarBola
        cmp #SP_BOLA            ;Bola
        bne cargarAro
        lda #SPRITE_BOLA
        jmp endCargaSprite

cargarAro
        cmp #SP_ARO             ;Aro
        bne cargarKey3
        lda #SPRITE_ARO
        jmp endCargaSprite

cargarKey3
        cmp #SP_KEY_3           ;Llave 3
        bne cargarLock3
        lda #SPRITE_KEY_3
        jmp endCargaSprite

cargarLock3
        cmp #SP_LOCK_3          ;Cerradura 3
        bne cargarRayo
        lda #SPRITE_LOCK_3
        jmp endCargaSprite
        
cargarRayo
        cmp #SP_RAYO            ;Rayo
        bne cargarKey4
        lda #SPRITE_RAYO
        jmp endCargaSprite

cargarKey4
        cmp #SP_KEY_4           ;Llave 4
        bne cargarLock4
        lda #SPRITE_KEY_4
        jmp endCargaSprite

cargarLock4
        cmp #SP_LOCK_4          ;Cerradura 4
        bne cargarDiamanteL
        lda #SPRITE_LOCK_4
        jmp endCargaSprite

cargarDiamanteL
        cmp #SP_DIAMANTE_L      ;Diamante izquierda
        bne cargarDiamanteR
        lda #SPRITE_DIAMANTE_L
        jmp endCargaSprite

cargarDiamanteR
        cmp #SP_DIAMANTE_R      ;Diamante derecha
        bne cargarKey5
        lda #SPRITE_DIAMANTE_R
        jmp endCargaSprite

cargarKey5
        cmp #SP_KEY_5      ;Llave 5
        bne cargarLock2
        lda #SPRITE_KEY_5
        jmp endCargaSprite

cargarLock2
        cmp #SP_LOCK_2      ;Cerradura 2
        bne cargarKey6
        lda #SPRITE_LOCK_2
        jmp endCargaSprite

cargarKey6
        cmp #SP_KEY_6      ;Llave 6
        bne cargarLock6
        lda #SPRITE_KEY_6
        jmp endCargaSprite

cargarLock6
        cmp #SP_LOCK_6      ;Cerradura 6
        bne cargarTransporter2
        lda #SPRITE_LOCK_6
        jmp endCargaSprite

cargarTransporter2
        cmp #SP_TRANSPORTER_2   ;Transportador 1
        bne cargarEstalactita
        lda #SPRITE_TRANSPORTER_2
        jmp endCargaSprite

cargarEstalactita
        cmp #SP_ESTALACTITA   ;Estalactita
        bne cargarVolcan
        lda #SPRITE_ESTALACTITA
        jmp endCargaSprite

cargarVolcan
        cmp #SP_VOLCAN   ;Volcan
        bne cargarKey7
        lda #SPRITE_VOLCAN
        jmp endCargaSprite

cargarKey7
        cmp #SP_KEY_7   ;Llave 7
        bne cargarLock7
        lda #SPRITE_KEY_7
        jmp endCargaSprite

cargarLock7
        cmp #SP_LOCK_7   ;Cerradura 7
        bne cargarKey8
        lda #SPRITE_LOCK_7
        jmp endCargaSprite

cargarKey8
        cmp #SP_KEY_8   ;Llave 8
        bne cargarPez
        lda #SPRITE_KEY_8
        jmp endCargaSprite

cargarPez
        cmp #SP_PEZ   ;Pez
        bne cargarFlecha
        lda #SPRITE_PEZ_U
        jmp endCargaSprite

cargarFlecha
        cmp #SP_FLECHA   ;Flecha
        bne cargarLock8
        lda #SPRITE_FLECHA
        jmp endCargaSprite

cargarLock8
        cmp #SP_LOCK_8   ;Cerradura 8
        bne cargarRayo2
        lda #SPRITE_LOCK_8
        jmp endCargaSprite

cargarRayo2
        cmp #SP_RAYO_2   ;Rayo 2
        bne cargarKey9
        lda #SPRITE_RAYO
        jmp endCargaSprite

cargarKey9
        cmp #SP_KEY_9   ;Llave 9
        bne cargarLock9
        lda #SPRITE_KEY_9
        jmp endCargaSprite

cargarLock9
        cmp #SP_LOCK_9   ;Cerradura 9
        bne cargarKey10
        lda #SPRITE_LOCK_9
        jmp endCargaSprite

cargarKey10
        cmp #SP_KEY_10   ;Llave 10
        bne cargarLock10
        lda #SPRITE_KEY_10
        jmp endCargaSprite

cargarLock10
        cmp #SP_LOCK_10   ;Cerradura 10
        bne cargarLock10_2
        lda #SPRITE_LOCK_10
        jmp endCargaSprite

cargarLock10_2
        cmp #SP_LOCK_10_2   ;Cerradura 10 que no se alcanza
        bne cargarPlayer
        lda #SPRITE_LOCK_10_2
        jmp endCargaSprite

cargarPlayer
        lda #SPRITE_PLAYER      ;Jugador
        
endCargaSprite
        sta SPRITE_POINTER_BASE,x
        rts
