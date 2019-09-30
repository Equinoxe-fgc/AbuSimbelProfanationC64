;*=$0300

;------------------------------------------------------------
;Variables globales del juego
;------------------------------------------------------------

;PLAYER_MOV_DELAY
;          byte CONST_PLAYER_MOV_DELAY
PLAYER_ANIM_DELAY
          byte CONST_PLAYER_ANIM_DELAY
CUR_SCREEN
          byte 0
SALIDAS_CURR_SCREEN
          byte 0,0,0,0
ENEMIES_CUR_SCREEN
          byte 0
ENEMY_TYPE
          byte 0,0,0,0,0,0
ENEMY_DIRECTION
          byte 0,0,0,0,0,0
ENEMY_MOVEMENT
          byte 0,0,0,0,0,0
ENEMY_MOV_DELAY
          byte 0,0,0,0,0,0
ENEMY_MOV_DELAY_CUR
          byte 0,0,0,0,0,0
ENEMY_ANIM_DELAY
          byte 0,0,0,0,0,0
ENEMY_ANIM_DELAY_CUR
          byte 0,0,0,0,0,0
ENEMY_COLOR
          byte 0,0,0,0,0,0
ENEMY_INI_X_POS
          byte 0,0,0,0,0,0
ENEMY_INI_Y_POS
          byte 0,0,0,0,0,0
ENEMY_END_X_POS
          byte 0,0,0,0,0,0
ENEMY_END_Y_POS
          byte 0,0,0,0,0,0
SPRITE_POS_X
          byte 0,0,0,0,0,0
SPRITE_POS_X_EXTEND
          byte 0
SPRITE_POS_Y
          byte 0,0,0,0,0,0
SPRITE_CHAR_POS_X
          byte 0,0,0,0,0,0
SPRITE_CHAR_POS_X_DELTA
          byte 0,0,0,0,0,0
SPRITE_CHAR_POS_Y
          byte 0,0,0,0,0,0
SPRITE_CHAR_POS_Y_DELTA
          byte 0,0,0,0,0,0

PLAYER_POS_ENTRADA_PANTALLA_X
        byte 0
PLAYER_POS_ENTRADA_PANTALLA_Y
        byte 0
PLAYER_ENTRADA_JUMP_POS
        byte 0
PLAYER_ENTRADA_FALL_POS
        byte 0
PLAYER_ENTRADA_DIRECCION
        byte 0

BIT_TABLE
          byte 1,2,4,8,16,32,64,128
SCREEN_LINE_OFFSET_TABLE_LO
        byte $00,$28,$50,$78,$A0,$C8,$F0,$18,$40,$68,$90,$B8,$E0,$08,$30,$58,$80,$A8;,$D0,$F8,$20,$48,$70,$98,$C0
SCREEN_LINE_OFFSET_TABLE_HI
        byte $CC,$CC,$CC,$CC,$CC,$CC,$CC,$CD,$CD,$CD,$CD,$CD,$CD,$CE,$CE,$CE,$CE,$CE;,$CE,$CE,$CF,$CF,$CF,$CF,$CF

COLOR_LINE_OFFSET_TABLE_HI
        byte $D8,$D8,$D8,$D8,$D8,$D8,$D8,$D9,$D9,$D9,$D9,$D9,$D9,$DA,$DA,$DA,$DA,$DA;,$DA,$DA,$DB,$DB,$DB,$DB,$DB

PLAYER_JUMP_POS
          byte 0
PLAYER_CURR_JUMP_TABLE_LENGTH
        byte 0
PLAYER_JUMP_TABLE_SHORT
          byte 2,2,2,2,2,2,2,2,1,1,0,0,0
PLAYER_JUMP_TABLE_LONG         
        byte 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0
          
PLAYER_FALL_POS
          byte 0
FALL_SPEED_TABLE
          byte 0,0,1,1,2,2,2,2,2,2

INVENTARIO
        byte 0,0
SCREENS_VISITED
        byte 1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
SCREENS_DATA_TABLE_HI
        byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
SCREENS_DATA_TABLE_LO
        byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
SCREENS_COLOR_TABLE_HI
        byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
SCREENS_COLOR_TABLE_LO
        byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
SCREENS_INFO_TABLE_HI
        byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
SCREENS_INFO_TABLE_LO
        byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
SCREEN_CHARSET
        byte CS_INI,CS_INI,CS_GEN,CS_GEN,CS_GEN,CS_GEN,CS_GEN,CS_ESF,CS_GEN,CS_GEN
        byte CS_GEN,CS_GEN,CS_FIN,CS_INI,CS_FIN,CS_FIN,CS_FIN,CS_FIN,CS_GEN,CS_GEN
        byte CS_ESF,CS_GEN,CS_GEN,CS_ESF,CS_ESF,CS_ESF,CS_ESF,CS_ESF,CS_ESF,CS_ESF
        byte CS_ESF,CS_ESF,CS_ESF,CS_ESF,CS_ESF,CS_ESF,CS_ESF,CS_INI,CS_GEN,CS_GEN
        byte CS_ESF,CS_GEN,CS_ESF,CS_GEN,CS_FIN,CS_FIN
SCREEN_CHARSET_ACTUAL
        byte 6

CONT_ORIGEN
        byte 0
CONT_DESTINO
        byte 0
CONT_BYTES_LINEA
        byte 0

PUERTAS_ABIERTAS
        byte 0,0
COLOR_DIAMANTE
        byte 0
VALOR_DIAMANTE
        byte 0

TECLAS_DEBUG_POS
        byte 0
TECLAS_DEBUG
        byte 0,0,0,0

CONTROL_MOVIMIENTO
        byte 0

PUERTA_FILA_INI
        byte 0
PUERTA_FILA_FIN
        byte 0
PUERTA_COLUMNA_INI
        byte 0
PUERTA_ANCHO
        byte 0
COLOR_PUERTA
        byte 0

CHEAT_INFINITAS
        byte 0

