;Color constants
BLACK           = $00
WHITE           = $01
RED             = $02       
CYAN            = $03
PURPLE          = $04
GREEN           = $05
BLUE            = $06
YELLOW          = $07
ORANGE          = $08
BROWN           = $09
LIGHT_RED       = $0A
DARK_GRAY       = $0B
MEDIUM_GRAY     = $0C
LIGHT_GREEN     = $0D
LIGHT_BLUE      = $0E
LIGHT_GRAY      = $0F

;Key constant
KEY_O           = $4F
KEY_P           = $50
KEY_Q           = $51
KEY_A           = $41
KEY_F           = $46
KEY_J           = $4A
KEY_G           = $47
KEY_C           = $43
KEY_1           = $31
KEY_2           = $32
KEY_ENTER       = $0D

;Constantes de sonidos
SND_PASOS       = 1
SND_SALTO       = 2
SND_OBJETO      = 4
SND_MORIR       = 5
SND_GAMEOVER    = 6
SND_GOTA        = 7
SND_PUERTA      = 8
SND_TRANSPORT   = 9
SND_SILENCIO    = $FF

;VIC constants
VIC_SPRITE_X_POS        = $d000
VIC_SPRITE_Y_POS        = $d001
VIC_SPRITE_X_EXTEND     = $d010
VIC_SCREEN_CONTROL      = $D011
VIC_SPRITE_ENABLE       = $d015
VIC_CONTROL             = $d016
VIC_MEMORY_CONTROL      = $d018
VIC_SPRITE_PRIORITY     = $D01B

VIC_BORDER_COLOR        = $d020
VIC_BACKGROUND_COLOR    = $d021

;Constantes varias
CIA_PRA                 = $dd00
JOYSTICK                = $dc00
KERNAL_GETIN            = $FFE4
CIA_PORT_A              = $dc00
CIA_PORT_B              = $dc01
CIA_DATA_DIRECTION_A    = $dc02
CIA_DATA_DIRECTION_B    = $dc03

SID_VOLUME              = $D418

;Parámetros temporales
PARAM1    = $03
PARAM2    = $04
PARAM3    = $05
PARAM4    = $06
PARAM5    = $07
PARAM6    = $08
PARAM7    = $09
PARAM8    = $0A

;Punteros a página 0
ZEROPAGE_POINTER_1 = $17
ZEROPAGE_POINTER_2 = $19
ZEROPAGE_POINTER_3 = $21
ZEROPAGE_POINTER_4 = $23

;address of the screen buffer
SCREEN_CHAR      = $CC00
;address of color ram
SCREEN_COLOR     = $D800
;dirección del buffer de pantalla donde empieza el marcador
SCREEN_SCORE_CHAR = $CEA8
;dirección de la ram de color donde empieza el marcador
SCREEN_SCORE_COLOR = $DAA8
;Dirección de memoria del color de la parte gráfica
BITMAP_SCREEN_COLOR = $06F8

;Color del pergamino para hacer que aparezca oa desaparezca
PERGAMINO_OFF       = $00
PERGAMINO_ON        = $07

;Inicio de las dos filas del inventario en modo gráfico pos 1 y 2
BITMAP_PERGAMINO_ADDR_FILA_1_1 = $3990
BITMAP_PERGAMINO_ADDR_FILA_2_1 = $3AD0

BITMAP_PERGAMINO_ADDR_FILA_1_2 = $39A0
BITMAP_PERGAMINO_ADDR_FILA_2_2 = $3AE0

;Posición en memoria de video donde está el número de pantallas
SCREEN_VISIT     = $CEBA
;Posicion en memoria de video donde están las vidas
SCREEN_LIVES     = $CEC7

;number of sprites divided by four
NUMBER_OF_SPRITES_DIV_4 = 35

;address of sprite pointers
SPRITE_POINTER_BASE     = SCREEN_CHAR + 1016

;sprite number constants
SPRITE_BASE             = 64

SPRITE_PLAYER           = SPRITE_BASE + 0
SPRITE_GOTA             = SPRITE_BASE + 12
SPRITE_MURCIELAGO_L     = SPRITE_BASE + 17
SPRITE_MURCIELAGO_R     = SPRITE_BASE + 23
SPRITE_PLANO            = SPRITE_BASE + 29
SPRITE_KEY_1            = SPRITE_BASE + 37
SPRITE_MOSCAS           = SPRITE_BASE + 38
SPRITE_PALMAS           = SPRITE_BASE + 42
SPRITE_SERPIENTE_L      = SPRITE_BASE + 46
SPRITE_SERPIENTE_R      = SPRITE_BASE + 50
SPRITE_MAZO             = SPRITE_BASE + 54
SPRITE_ARANA            = SPRITE_BASE + 60
SPRITE_MOMIA_L          = SPRITE_BASE + 65
SPRITE_MOMIA_R          = SPRITE_BASE + 69
SPRITE_PINCHOS_1        = SPRITE_BASE + 73
SPRITE_PINCHOS_2        = SPRITE_BASE + 74
SPRITE_LOCK_1           = SPRITE_BASE + 75
SPRITE_KEY_2            = SPRITE_BASE + 77
SPRITE_TRANSPORTER_1    = SPRITE_BASE + 78
SPRITE_BOLA             = SPRITE_BASE + 79
SPRITE_ARO              = SPRITE_BASE + 81
SPRITE_KEY_3            = SPRITE_BASE + 87
SPRITE_LOCK_3           = SPRITE_BASE + 88
SPRITE_RAYO             = SPRITE_BASE + 90
SPRITE_KEY_4            = SPRITE_BASE + 93
SPRITE_LOCK_4           = SPRITE_BASE + 94
SPRITE_DIAMANTE_L       = SPRITE_BASE + 96
SPRITE_DIAMANTE_R       = SPRITE_BASE + 97
SPRITE_KEY_5            = SPRITE_BASE + 98
SPRITE_LOCK_2           = SPRITE_BASE + 99
SPRITE_KEY_6            = SPRITE_BASE + 101
SPRITE_LOCK_6           = SPRITE_BASE + 102
SPRITE_TRANSPORTER_2    = SPRITE_BASE + 104
SPRITE_ESTALACTITA      = SPRITE_BASE + 106
SPRITE_VOLCAN           = SPRITE_BASE + 111
SPRITE_KEY_7            = SPRITE_BASE + 116
SPRITE_LOCK_7           = SPRITE_BASE + 117
SPRITE_KEY_8            = SPRITE_BASE + 119
SPRITE_PEZ_U            = SPRITE_BASE + 120
SPRITE_PEZ_D            = SPRITE_BASE + 124
SPRITE_FLECHA           = SPRITE_BASE + 128
SPRITE_LOCK_8           = SPRITE_BASE + 129
SPRITE_KEY_9            = SPRITE_BASE + 131
SPRITE_LOCK_9           = SPRITE_BASE + 132
SPRITE_KEY_10           = SPRITE_BASE + 134
SPRITE_LOCK_10_2        = SPRITE_BASE + 135
SPRITE_LOCK_10          = SPRITE_BASE + 137

SPRITE_COLOR_BASE       = $D027

;Registro de colisión de sprites
SPRITE_COLLISION        = $D01E

BACKGROUND_COLLISION    = $D01F

;entries of jump table
JUMP_TABLE_SIZE_LONG    = 20
JUMP_TABLE_SIZE_SHORT   = 13

;entries of fall table
FALL_TABLE_SIZE         = 10

;Constantes de velocidad de movimiento y animación
CONST_PLAYER_ANIM_DELAY = 3
;CONST_PLAYER_MOV_DELAY  = 0

;Constantes de los enemigos
SP_PLAYER             = 0
SP_GOTA               = 1
SP_MURCIELAGO         = 2
SP_PLANO              = 3
SP_MOSCAS             = 4
SP_PALMAS             = 5
SP_SERPIENTE          = 6
SP_MAZO               = 7
SP_ARANA              = 8
SP_MOMIA              = 9
SP_PINCHOS_1          = 10
SP_PINCHOS_2          = 11
SP_BOLA               = 12
SP_ARO                = 13
SP_RAYO               = 14
SP_DIAMANTE_L         = 15
SP_DIAMANTE_R         = 16
SP_ESTALACTITA        = 17
SP_VOLCAN             = 18
SP_GOTA_2             = 19
SP_PEZ                = 20
SP_FLECHA             = 21
SP_RAYO_2             = 22

;Constantes de las cerraduras
SP_START_LOCKS        = 50
SP_LOCK_1             = 51
SP_LOCK_2             = 52
SP_LOCK_3             = 53
SP_LOCK_4             = 54
SP_LOCK_6             = 56
SP_LOCK_7             = 57
SP_LOCK_8             = 58
SP_LOCK_9             = 59
SP_LOCK_10            = 60
SP_LOCK_10_2          = 61

;Constantes de los transportadores
SP_START_TRANSPORTERS = 70
SP_TRANSPORTER_1      = 71
SP_TRANSPORTER_2      = 72

;Constantes de las llaves
SP_START_KEYS         = 90
SP_KEY_1              = 91
SP_KEY_2              = 92
SP_KEY_3              = 93
SP_KEY_4              = 94
SP_KEY_5              = 95
SP_KEY_6              = 96
SP_KEY_7              = 97
SP_KEY_8              = 98
SP_KEY_9              = 99
SP_KEY_10             = 100


;Tipos de movimiento de los sprites
SP_NONE               = 0       ;Sprites que no se mueven
SP_LR                 = 1       ;Sprites que van de izquierda a derecha
SP_R                  = 2       ;Sprites que van solo a la derecha (la flecha)
SP_UD                 = 3       ;Sprites que van de arriba a abajo
SP_D                  = 4       ;Sprites que solo bajan (gotas)

;Constantes de movimiento
MOVE_UP         = $00
MOVE_DOWN       = $FF
MOVE_LEFT       = $00
MOVE_RIGHT      = $FF

;Constantes de charset
CS_GEN          = 1
CS_ESF          = 2
CS_INI          = 3
;CS_PGR          = 4
CS_FIN          = 5

;this creates a basic start
*=$0801
          ;SYS 2064
          byte $0C,$08,$0A,$00,$9E,$20,$32,$30,$36,$34,$00,$00,$00,$00,$00

          ;Desahilitar sprites
          lda #0
          sta VIC_SPRITE_ENABLE
          
          ;set charset
          ;lda #$3c
          lda #$3E
          sta VIC_MEMORY_CONTROL

          ;VIC bank
          lda CIA_PRA
          and #$fc
          sta CIA_PRA
          
        sei             ;Se deshabilitan las interrupciones
        lda $01         ;Se guarda la configuración
        sta PARAM1
        lda #%00110000  ;only RAM - to copy under the IO rom
        sta $01
        ;jsr CopyCharSet                    
        jsr CopySprites
        lda PARAM1            ;Se restauran las ROMs
        sta $01
        cli       
          
        ;Deshabilita Commodore-shift
        lda #128
        sta $0291

        ;Establece las direcciones de los datos de los puertos A y B de la CIA
        lda #$FF
        sta CIA_DATA_DIRECTION_A
        lda #$00
        sta CIA_DATA_DIRECTION_B

        ;Habilita la repetición de teclas
        sta $028A

        ;Inicia el SID para crear números aleatorios
        LDA #$FF  ; maximum frequency value
        STA $D40E ; voice 3 frequency low byte
        STA $D40F ; voice 3 frequency high byte
        LDA #$80  ; noise waveform, gate bit off
        STA $D412 ; voice 3 control register        

        jsr rellenarBitmapMemory        ;Se carga la parte inferior de la pantalla
        jsr CopyBitmapColor             ;Se carga el color de la parte inferior de la pantalla
        jsr cargarTablaScreens  ;Se carga la tabla con los inicios de las pantallas

        jsr WaitFrame
        jsr InitTitleIRQ

;==========================
;        lda $0
;        sta SCREEN_CHAR
;        lda $1
;        sta SCREEN_COLOR
;        sta SCREEN_COLOR+1
;        sta SCREEN_COLOR+2

;        sta SCREEN_COLOR+4
;        sta SCREEN_COLOR+5
;        sta SCREEN_COLOR+6
;        sta SCREEN_COLOR+7

;        sta SCREEN_COLOR+40
;        sta SCREEN_COLOR+41
;        sta SCREEN_COLOR+42
;        sta SCREEN_COLOR+6
;
;==========================


inicio
        lda #SND_SILENCIO
        jsr initpickedfx

        lda #0
        jsr MUSIC_PLAYER

inicioTrasInstrucciones
        jsr borraPantalla       ;Se borra la pantalla
        jsr resetScreenVisit    ;Se resetean las pantallas visitadas
        jsr vaciarInventario    ;Se vacia el inventario

        lda #PERGAMINO_OFF
        jsr ponerQuitarPergamino

        lda #0
        sta CUR_SCREEN

;        ;Se carga el Charset de inicio de juego
        jsr checkCambiosdeCharSet

;        ;Se carga la pantalla de presentación
        jsr BuildScreen

        ;Se deshabilitan los sprites
        lda #0
        sta VIC_SPRITE_ENABLE

        ;initialise music player
        ;lda #15
        ;sta SID_VOLUME
          
waitKeyPressInicio
        jsr WaitFrame2
        jsr KERNAL_GETIN
        bne teclaPulsada

        lda JOYSTICK
        and #$10
        beq cargarPrimeraPantalla
        jmp waitKeyPressInicio

teclaPulsada
        cmp #KEY_1              ;Si se pulsa 1 se inicia la partida
        beq cargarPrimeraPantalla
        cmp #KEY_2              ;Si se pulsa 2 se muestran las instrucciones
        beq mostrarInstrucciones
        jmp waitKeyPressInicio


mostrarInstrucciones            ;Se muestran las instrucciones
        ;jsr borraPantalla
        jsr borraZonaJuego
        jsr BuildInstrucciones
        ;jsr finInstruccionesDatos

waitKeyPressInstrucciones
        jsr WaitFrame2
        jsr KERNAL_GETIN
        beq waitKeyPressInstrucciones

        jmp inicioTrasInstrucciones
;        cmp #KEY_ENTER          ;Se espera a que se pulse Enter para volver al menú principal
;        beq inicio
;        jmp waitKeyPressInstrucciones


cargarPrimeraPantalla
        jsr initGame

        jsr initSounds

        lda #SND_SILENCIO
        jsr initpickedfx
        
;Bucle principal
GameLoop  
        jsr WaitFrame           ;Se espera a que se dibuje el frame

        jsr PlayerControl       ;Se mueve el protagonista
        jsr MoveEnemies         ;Se mueven los enemigos
 
        jsr CheckCollision      ;Se comprueba si hay colisión
        bne inicio              ;Si no quedan vidas se termina la partida

        jsr CheckCambioPantalla ;Se comprueba si se ha cambiado de pantalla
        bne inicio              ;Si no quedan vidas se termina la partida, para el caso de morir por el agua

        lda CUR_SCREEN
        cmp #45
        bne noFinal
        jsr pantallaFinal
        jmp inicio

        ;jsr mostrarCoordenadas
noFinal
        jsr KERNAL_GETIN        ;Comprobación de teclas para debug
        beq endLoop
        jsr teclasCheat
        jsr teclasDebug

endLoop
;        lda VALOR_DIAMANTE
;        clc
;        adc #48
;        sta SCREEN_CHAR
;        lda $1
;        sta SCREEN_COLOR

;        lda VIC_SPRITE_X_POS
;        sta SCREEN_CHAR + 2
;        lda $1
;        sta SCREEN_COLOR + 2

        jmp GameLoop          




;---------------------------------------------------------------
;initGame
;Inicializa la partida
;---------------------------------------------------------------
initGame
;        lda #SP_KEY_9
;        sta INVENTARIO
;        jsr mostrarInventario
        ;lda #SP_LOCK_4
        ;tay
        ;jsr tocarCerradura

        lda #PERGAMINO_ON
        jsr ponerQuitarPergamino

        jsr borraZonaJuego
        jsr elegirColorDiamante ;Se elige el color del diamante

        ;Se resetean las puertas abiertas y los saltos
        lda #0
        sta PUERTAS_ABIERTAS
        sta PUERTAS_ABIERTAS + 1
        sta PLAYER_ENTRADA_JUMP_POS
        sta PLAYER_ENTRADA_FALL_POS

        ;Se carga la primera pantalla
        ;lda #36
        lda #1                  
        sta CUR_SCREEN
;        ;Se carga el Charset de inicio de juego
        jsr checkCambiosdeCharSet
        jsr BuildScreen
        jsr BuildScorePanel

        jsr initPLayer

        ;Se borran las posible colisiones iniciales
        lda SPRITE_COLLISION

        rts

;---------------------------------------------------------------
;initPlayer
;Inicializa la posición del jugador y su estado
;---------------------------------------------------------------
initPlayer
        ;Se fija la posición del protagonista en la pantalla
        ;lda #20
        lda #11
        sta PLAYER_POS_ENTRADA_PANTALLA_X
        sta PARAM1
        ;lda #6
        lda #14
        sta PLAYER_POS_ENTRADA_PANTALLA_Y
        sta PARAM2
        lda #0
        tax
        jsr CalcSpritePosFromCharPos

        ;Se carga la imagen del protagonista y su color
        lda #SPRITE_PLAYER
        sta SPRITE_POINTER_BASE
        ;set sprite color
        lda #LIGHT_RED
        sta SPRITE_COLOR_BASE

        rts


;---------------------------------------------------------------
;pantallaFinal
;Espera a que se pulse ENTER en la pantalla final
;---------------------------------------------------------------
pantallaFinal
        lda #0
        sta VIC_SPRITE_ENABLE   ;Se deshabilitan los SPRITES

        lda #0
        jsr MUSIC_PLAYER

waitKeyPressFin
        jsr WaitFrame2
        jsr KERNAL_GETIN
        beq waitKeyPressFin

;        cmp #KEY_ENTER              ;Si se pulsa ENTER se vuelve al inicio
;        bne waitKeyPressFin

        rts


;---------------------------------------------------------------
;teclasCheat
;Activa o desactiva las vidas infinitas
;---------------------------------------------------------------
teclasCheat
        cmp #KEY_1
        bne finTeclasCheat
        lda CHEAT_INFINITAS
        eor #$FF
        sta CHEAT_INFINITAS
;        jmp finTeclasCheat

;checkKey2
;        cmp #KEY_2
;        bne finTeclasCheat
;        lda CHEAT_NO_COLISION
;        eor #$FF
;        sta CHEAT_NO_COLISION

finTeclasCheat        
        rts



;---------------------------------------------------------------
;teclasDebug
;Comprueba si se ha escrito el código para entrar en modo debug
;y permite cambiar de pantalla y colocar al protagonista en la misma
;---------------------------------------------------------------   
teclasDebug
        ldx TECLAS_DEBUG_POS
        sta TECLAS_DEBUG,x

        cpx #3                  ;Se comprueba si se ha llenado el buffer
        beq bufferLleno
        inc TECLAS_DEBUG_POS
        jmp finTeclasDebug

bufferLleno
        lda #0
        sta TECLAS_DEBUG_POS

        ;Se comprueba si se ha escrito el código correcto
        ldx #0
        lda TECLAS_DEBUG,x
        cmp #KEY_F        ;F
        bne finTeclasDebug
        inx
        lda TECLAS_DEBUG,x
        cmp #KEY_J        ;J
        bne finTeclasDebug
        inx
        lda TECLAS_DEBUG,x
        cmp #KEY_G        ;G
        bne finTeclasDebug
        inx
        lda TECLAS_DEBUG,x
        cmp #KEY_C        ;C
        bne finTeclasDebug

        ;Se obtiene el número de pantalla a visitar
        jsr obtenerCifras
        beq finTeclasDebug

        ;Se cambia de pantalla
        sta CUR_SCREEN

        jsr checkCambiosdeCharSet       ;Se comprueba si hay cambio de charset

        jsr BuildScreen
        jsr WaitFrame
               
        ;Se carga la posición del protagonista
        lda SPRITE_CHAR_POS_X
        sta PARAM1
        lda SPRITE_CHAR_POS_Y
        sta PARAM2

obtenerPosicion
        jsr KERNAL_GETIN
        beq obtenerPosicion

        ;Con las teclas OPQA se maneja la posición del protagonista
        ;Con Enter se fija y se sale de la rutina
        cmp #KEY_O        ;O
        beq pulsaIzquierda
        cmp #KEY_P        ;P
        beq pulsaDerecha
        cmp #KEY_Q        ;Q
        beq pulsaArriba
        cmp #KEY_A        ;A
        beq pulsaAbajo
        cmp #KEY_ENTER        ;ENTER
        bne obtenerPosicion
        jmp finTeclasDebug

pulsaIzquierda
        dec PARAM1
        jmp aplicarCambios
pulsaDerecha
        inc PARAM1
        jmp aplicarCambios
pulsaArriba
        dec PARAM2
        jmp aplicarCambios
pulsaAbajo
        inc PARAM2

aplicarCambios
        ;Se almacena la posición en la que se cambia de pantalla
        sta PLAYER_POS_ENTRADA_PANTALLA_X
        sta PLAYER_POS_ENTRADA_PANTALLA_Y

        ldx #0                          ;Se pone al jugador en su posición
        jsr CalcSpritePosFromCharPos
        jmp obtenerPosicion

finTeclasDebug
        lda SPRITE_COLLISION            ;Se borran las colisiones que haya habido

        rts



;---------------------------------------------------------------
;obtenerCifras
;Se leen 2 teclas (números) y se pasa a un número que será el
;el número de pantalla
; En A se devuelve el número de pantalla
;---------------------------------------------------------------  
obtenerCifras
        jsr KERNAL_GETIN        ;Se obtienen las decenas
        beq obtenerCifras
        sec
        sbc #$30                ;Se obtiene la cantidad
        sta TECLAS_DEBUG ;Se usa como almacenamiento auxiliar
obtenerCifra2
        jsr KERNAL_GETIN        ;Se obtienen las unidades
        beq obtenerCifra2
        sec
        sbc #$30                ;Se obtiene la cantidad
        
        ;Se calcula el número de pantalla
        ldx TECLAS_DEBUG
calculaDecenas
        beq compruebaNumero
        clc
        adc #10
        dex
        jmp calculaDecenas

compruebaNumero
        ;beq cifraIncorrecta     ;Si es 0
        cmp #46
        bpl cifraIncorrecta     ;Si es mayor que 45
        jmp finObtenerCifras
        
cifraIncorrecta
        lda #0        

finObtenerCifras        
        rts


;---------------------------------------------------------------
;elegirColorDiamante
;Se elige de forma aleatoria el color del diamante
;---------------------------------------------------------------
elegirColorDiamante
        LDA $D41B       ;Se coge un número aleatorio
        and #$07        ;Nos quedamos con los 3 últimos bits (0-7)
        cmp #5          ;Si es mayor que 4 se descarta (hay 5 colores)
        bpl elegirColorDiamante
        
        sta VALOR_DIAMANTE

        cmp #0          ;Ha salido 0 - Amarillo
        bne comprobarCyan        
        lda #YELLOW
        jmp finElegirColorDiamante

comprobarCyan
        cmp #1          ;Ha salido 1 - Cyan
        bne comprobarVerde
        lda #CYAN
        jmp finElegirColorDiamante

comprobarVerde
        cmp #2          ;Ha salido 2 - Verde
        bne comprobarMorado
        lda #GREEN
        jmp finElegirColorDiamante

comprobarMorado
        cmp #3          ;Ha salido 3 - Morado
        bne esRojo
        lda #PURPLE
        jmp finElegirColorDiamante

esRojo                  ;Ha salido 4 - Rojo
        lda #RED

finElegirColorDiamante
        sta COLOR_DIAMANTE
        rts


;---------------------------------------------------------------
;mostrarCoordenadas
;Función auxiliar - BORRAR EN VERSIÓN FINAL
;Muestra las coordenadas del la posición del protagonista en pantalla
;---------------------------------------------------------------
mostrarCoordenadas
        lda SPRITE_POS_X_EXTEND
        and #$01
        clc
        adc #$30
        sta SCREEN_CHAR

        lda SPRITE_POS_X
        tax
        clc
        lsr
        lsr
        lsr
        lsr
        cmp #10
        bmi numeroXH
        sec
        sbc #$09
        jmp mostrarXH

numeroXH
        clc
        adc #$30
mostrarXH
        sta SCREEN_CHAR+2

        txa
        and #$0F
        cmp #10
        bmi numeroXL
        sec
        sbc #$09
        jmp mostrarXL

numeroXL
        clc
        adc #$30
mostrarXL
        sec
        sta SCREEN_CHAR+3

        lda SPRITE_POS_Y
        tax
        clc
        lsr
        lsr
        lsr
        lsr
        cmp #10
        bmi numeroYH
        sec
        sbc #$09
        jmp mostrarYH

numeroYH
        clc
        adc #$30
mostrarYH
        sta SCREEN_CHAR+5

        txa
        and #$0F
        cmp #10
        bmi numeroYL
        sec
        sbc #$09
        jmp mostrarYL

numeroYL
        clc
        adc #$30
mostrarYL
        sta SCREEN_CHAR+6

        rts



;---------------------------------------------------------------
;CheckCambioPantalla
;Comprueba si se ha cambiado de pantalla, en cuyo caso la cambia
;---------------------------------------------------------------   
CheckCambioPantalla
        lda SPRITE_POS_X_EXTEND
        and #$01                ;Se comprueba que no esté activado el bit de extensión de posición
        cmp #0
        beq compruebaSalidaIzquierda    ;Si no está activado
        lda SPRITE_POS_X
        cmp #$2A                        ;Se comprueba si se sale por la derecha
        bpl salidaDerecha
        jmp compruebaY

compruebaSalidaIzquierda
        lda SPRITE_POS_X        ;Se comprueba si se sale por la izquierda
        cmp #$36
        bcc salidaIzquierda

compruebaY
        lda SPRITE_POS_Y        
        cmp #$3A                ;Se comprueba si se sale por arriba
        bmi salidaArriba
        cmp #$A2                ;Se comprueba si se sale por abajo
        bpl salidaAbajo
        jmp endCheck

salidaIzquierda                 ;Se ha salido por la izquierda
        ldy #0                  ;Y tiene la posicion donde está almacenada la siguiente pantalla
        lda #35
        sta PARAM1              ;Se cargan PARAM1 y PARAM2 para situar al jugador en la siguiente pantalla
        lda SPRITE_CHAR_POS_Y
        sta PARAM2
        jmp cargarPantalla

salidaDerecha                   ;Se ha salido por la derecha
        ldy #1
        lda #05
        sta PARAM1
        lda SPRITE_CHAR_POS_Y
        sta PARAM2
        jmp cargarPantalla

salidaArriba                    ;Se ha salido por arriba
        ldy #2
        lda SPRITE_CHAR_POS_X
        sta PARAM1
        lda #14
        sta PARAM2
        jmp cargarPantalla

salidaAbajo                     ;Se ha salido por la abajo
        ldy #3
        lda SPRITE_CHAR_POS_X
        sta PARAM1
        lda #2
        sta PARAM2

cargarPantalla
        tya     ;Se pasa Y a A para guardarlo en la pila
        pha

        ;Mantener el orden de las siguientes líneas
        lda SALIDAS_CURR_SCREEN,y       ;Se almacena la siguiente pantalla

        cmp #$FF
        bne NoMuerte
        pla     ;Se recupera de la pila para no dejarla coja
        jsr PlayerDeath
        rts

NoMuerte
        jsr checkCambiosdeCharSet
        sta CUR_SCREEN

        pla     ;Se recupera el valor de Y
        tay

        ;Se almacena la posición en la que se cambia de pantalla
        lda PARAM1
        sta PLAYER_POS_ENTRADA_PANTALLA_X
        lda PARAM2
        sta PLAYER_POS_ENTRADA_PANTALLA_Y

        ;Se almacena el estado del salto o caida y la dirección
        lda PLAYER_JUMP_POS
        sta PLAYER_ENTRADA_JUMP_POS
        lda PLAYER_FALL_POS
        sta PLAYER_ENTRADA_FALL_POS
        lda PARAM3
        sta PLAYER_ENTRADA_DIRECCION

        jsr checkCasosEspeciales        ;Se comprueba si el cambio de pantalla es un caso especial

        ;Se deshabilitan todos los sprites menos es del jugador
        lda #1
        sta VIC_SPRITE_ENABLE

        jsr borraZonaJuego
        ;jsr WaitFrame

;        sta SCREEN_CHAR
;        lda $1
;        sta SCREEN_COLOR

        ldx #0                          ;Se pone al jugador en su posición
        jsr CalcSpritePosFromCharPos

        jsr BuildScreen                 ;Se carga la pantalla

endCheck
        lda #0  ;Se devuelve 0 para indicar que no se acaba la partida
        rts



;---------------------------------------------------------------
;checkCambiosdeCharSet
; A - Pantalla destino
;Comprueba si se hay que cambiar de charset en función de la pantalla
;actual y la pantalla destino
;---------------------------------------------------------------  
checkCambiosdeCharSet
        pha     ;Se guarda A para no modificarlo
        
        tax
        lda SCREEN_CHARSET,x
        cmp SCREEN_CHARSET_ACTUAL
        beq sinCambioCharset

        sta SCREEN_CHARSET_ACTUAL

        cmp #CS_GEN
        beq cargarCharsetComun
        cmp #CS_ESF
        beq cargarCharsetEsfinge
        ;cmp #CS_PGR
        ;beq cargarCharsetParedGrande
        cmp #CS_FIN
        beq cargarCharsetFinal

        ;Charser inicial
cargarCharsetInicial
        LDA #<CHARS_INICIAL
        STA ZEROPAGE_POINTER_1
        LDA #>CHARS_INICIAL
        STA ZEROPAGE_POINTER_1 + 1
        jmp cargarCharset

        ;Charset comun
cargarCharsetComun
        LDA #<CHARS
        STA ZEROPAGE_POINTER_1
        LDA #>CHARS
        STA ZEROPAGE_POINTER_1 + 1
        jmp cargarCharset

        ;charset de la pared grande
;cargarCharsetParedGrande
;        LDA #<CHARS_PARED_GRANDE
;        STA ZEROPAGE_POINTER_1
;        LDA #>CHARS_PARED_GRANDE
;        STA ZEROPAGE_POINTER_1 + 1
;        jmp cargarCharset

        ;charset de la esfinje
cargarCharsetEsfinge
        LDA #<CHARS_ESFINGE
        STA ZEROPAGE_POINTER_1
        LDA #>CHARS_ESFINGE
        STA ZEROPAGE_POINTER_1 + 1
        jmp cargarCharset

        ;charset final
cargarCharsetFinal
        LDA #<CHARS_FINAL
        STA ZEROPAGE_POINTER_1
        LDA #>CHARS_FINAL
        STA ZEROPAGE_POINTER_1 + 1

cargarCharset
        jsr WaitFrame

        sei             ;Se deshabilitan las interrupciones
        lda $01         ;Se guarda la configuración
        pha
        lda #%00110000  ;only RAM - to copy under the IO rom
        sta $01
        jsr CopyCharSet
        pla             ;Se restauran las ROMs
        sta $01
        cli       

sinCambioCharset
        pla     ;Se recupera A
        rts



;---------------------------------------------------------------
;checkCasosEspeciales
; Y -> Dirección por la que se ha salido
;Se comprueban casos especiales en los que al salir de la pantalla
;se pasa a una posición concreta de otra
;--------------------------------------------------------------- 
checkCasosEspeciales
        lda CUR_SCREEN

        cmp #5          ;Salida de la pantalla 4 a la 5
        bne checkCasoEspecial8
        cpy #1          ;Salida por la derecha
        beq salidaPantalla4Derecha

checkCasoEspecial8
        cmp #9          ;Salida de la pantalla 8 a la 9
        bne checkCasoEspecial16
        cpy #1
        beq salidaPantalla8Derecha

checkCasoEspecial16
        cmp #17          ;Salida de la pantalla 16 a la 17
        bne checkCasoEspecial21
        cpy #1
        beq salidaPantalla16Derecha

checkCasoEspecial21
        cmp #23          ;Salida de la pantalla 21 a la 23
        bne finCheckCasosEspeciales
        cpy #1
        beq salidaPantalla21Derecha

        rts

salidaPantalla4Derecha
        ;Se almacena la posición de entrada a la siguiente pantalla
        lda #8
        sta PARAM1
        sta PLAYER_POS_ENTRADA_PANTALLA_X
        lda #13
        sta PARAM2
        sta PLAYER_POS_ENTRADA_PANTALLA_Y
        jmp deshabilitarSalto

salidaPantalla8Derecha
        ;Se almacena la posición de entrada a la siguiente pantalla
        lda #7
        sta PARAM1
        sta PLAYER_POS_ENTRADA_PANTALLA_X
        lda #5
        sta PARAM2
        sta PLAYER_POS_ENTRADA_PANTALLA_Y
        jmp deshabilitarSalto

salidaPantalla16Derecha
        ;Se almacena la posición de entrada a la siguiente pantalla
        lda #11
        sta PARAM1
        sta PLAYER_POS_ENTRADA_PANTALLA_X
        lda #13
        sta PARAM2
        sta PLAYER_POS_ENTRADA_PANTALLA_Y
        jmp deshabilitarSalto

salidaPantalla21Derecha
        ;Se almacena la posición de entrada a la siguiente pantalla
        lda #7
        sta PARAM1
        sta PLAYER_POS_ENTRADA_PANTALLA_X
        lda #14
        sta PARAM2
        sta PLAYER_POS_ENTRADA_PANTALLA_Y

deshabilitarSalto
        ;Se deshabilita el salto
        lda #0
        sta PLAYER_JUMP_POS
        sta PLAYER_ENTRADA_JUMP_POS
        sta PLAYER_FALL_POS
        sta PLAYER_ENTRADA_FALL_POS

        lda #SND_TRANSPORT
        jsr initpickedfx

        ldx #20
bucleEsperaCambioPantalla
        jsr WaitFrame
        dex
        bne bucleEsperaCambioPantalla

finCheckCasosEspeciales
        rts



;------------------------------------------------------------
;borraPantalla
;Borra toda la pantalla y la pone en negro
;------------------------------------------------------------   
borraPantalla
        ;Pantalla en negro
        lda #$00
        sta VIC_BORDER_COLOR
        sta VIC_BACKGROUND_COLOR

        jsr borraZonaJuego
        jsr borraZonaMarcador
        rts

;------------------------------------------------------------
;borraZonaJuego
;Borra la zona de juego. 16 primeras filas
;------------------------------------------------------------   
borraZonaJuego
        ;Se almacenan A y X en la pila
        pha
        txa
        pha

        lda #$20
        ldx #0

.ClearPlayScreenLoop
        sta SCREEN_CHAR,x
        sta SCREEN_CHAR+160,x
        sta SCREEN_CHAR+320,x
        sta SCREEN_CHAR+480,x
        inx
        cpx #160
        bne .ClearPlayScreenLoop

        lda #0
        ldx #0
      
.ClearPlayScreenColorLoop
        sta SCREEN_COLOR,x
        sta SCREEN_COLOR+160,x
        sta SCREEN_COLOR+320,x
        sta SCREEN_COLOR+480,x
        inx
        cpx #160
        bne .ClearPlayScreenColorLoop

        ;Se recupera X y A de la pila
        pla
        tax
        pla
        rts

;------------------------------------------------------------
;borraZonaMarcador
;Borra la zona de marcador. 9 últimas filas
;------------------------------------------------------------   
borraZonaMarcador
        lda #$20
        ldx #0

;.ClearScoreScreenLoop
;        sta SCREEN_CHAR+640,x
;        sta SCREEN_CHAR+730,x
;        sta SCREEN_CHAR+820,x
;        sta SCREEN_CHAR+910,x
;        inx
;        cpx #90
;        bne .ClearScoreScreenLoop

;        ldx #0

;.ClearScoreScreenColorLoop
;        sta SCREEN_COLOR+640,x
;        sta SCREEN_COLOR+730,x
;        sta SCREEN_COLOR+820,x
;        sta SCREEN_COLOR+910,x
;        inx
;        cpx #90
;        bne .ClearScoreScreenColorLoop


.ClearScoreScreenLoop
        sta SCREEN_CHAR+640,x
        inx
        cpx #120
        bne .ClearScoreScreenLoop

        lda #0
        ldx #0
.ClearScoreScreenColorLoop
        sta SCREEN_COLOR+640,x
        inx
        cpx #120
        bne .ClearScoreScreenColorLoop

        rts

        IncAsm "MoveSprites.asm"
        IncAsm "CollisionScore.asm"
        IncAsm "animations.asm"

;------------------------------------------------------------
;CalcSpritePosFromCharPos
;calculates the real sprite coordinates from screen char pos
;PARAM1 = char_pos_x
;PARAM2 = char_pos_y
;X      = sprite index
;------------------------------------------------------------   
CalcSpritePosFromCharPos

          ;offset screen to border 24,50
          lda BIT_TABLE,x
          eor #$ff
          and SPRITE_POS_X_EXTEND
          sta SPRITE_POS_X_EXTEND
          sta VIC_SPRITE_X_EXTEND
          
          ;need extended x bit?
          lda PARAM1
          sta SPRITE_CHAR_POS_X,x
          cmp #30
          bcc .NoXBit
          
          lda BIT_TABLE,x
          ora SPRITE_POS_X_EXTEND
          sta SPRITE_POS_X_EXTEND
          sta VIC_SPRITE_X_EXTEND
          
.NoXBit   
          ;calculate sprite positions (offset from border)
          txa
          asl
          tay
          
          lda PARAM1
          asl
          asl
          asl
          clc
          ;adc #(24-SPRITE_CENTER_OFFSET_X)
          adc #16
          sta SPRITE_POS_X,x
          sta VIC_SPRITE_X_POS,y
          
          lda PARAM2
          sta SPRITE_CHAR_POS_Y,x
          asl
          asl
          asl
          clc
          ;adc #( 50 - SPRITE_CENTER_OFFSET_Y )
          adc #42
          sta SPRITE_POS_Y,x
          sta VIC_SPRITE_Y_POS,y
          
          lda #0
          sta SPRITE_CHAR_POS_X_DELTA,x
          sta SPRITE_CHAR_POS_Y_DELTA,x
          rts


;========================================================
; BuildScorePanel
; Dibuja el panel de puntuacion
;========================================================        
BuildScorePanel
        lda #>Score_screen_data
        sta ZEROPAGE_POINTER_1+1
        LDA #<Score_screen_data
        sta ZEROPAGE_POINTER_1
                
        lda #>SCREEN_SCORE_CHAR
        sta ZEROPAGE_POINTER_2+1
        lda #<SCREEN_SCORE_CHAR
        sta ZEROPAGE_POINTER_2
        
        ldy #0
.loadScorePanelDataLoop1
        lda (ZEROPAGE_POINTER_1),y
        sta (ZEROPAGE_POINTER_2),y
        iny
        cpy #40
        bne .loadScorePanelDataLoop1
        
;        inc ZEROPAGE_POINTER_1+1
;        inc ZEROPAGE_POINTER_2+1

;        ldy #0
;.loadScorePanelDataLoop2
;        lda (ZEROPAGE_POINTER_1),y
;        sta (ZEROPAGE_POINTER_2),y
;        iny
;        cpy #104
;        bne .loadScorePanelDataLoop2


        lda #>Score_colour_data
        sta ZEROPAGE_POINTER_1+1
        LDA #<Score_colour_data
        sta ZEROPAGE_POINTER_1
                
        lda #>SCREEN_SCORE_COLOR
        sta ZEROPAGE_POINTER_2+1
        lda #<SCREEN_SCORE_COLOR
        sta ZEROPAGE_POINTER_2

        ldy #0
.loadScorePanelColorLoop1
        lda (ZEROPAGE_POINTER_1),y
        sta (ZEROPAGE_POINTER_2),y
        iny
        cpy #40
        bne .loadScorePanelColorLoop1
        
;        inc ZEROPAGE_POINTER_1+1
;        inc ZEROPAGE_POINTER_2+1

;        ldy #0
;.loadScorePanelColorLoop2
;        lda (ZEROPAGE_POINTER_1),y
;        sta (ZEROPAGE_POINTER_2),y
;        iny
;        cpy #104
;        bne .loadScorePanelColorLoop2

        rts
          

;========================================================
; BuildInstrucciones
; Dibuja las instrucciones
;======================================================== 
BuildInstrucciones
        LDA #<Instrucciones_screen_data
        sta ZEROPAGE_POINTER_1
        lda #>Instrucciones_screen_data
        sta ZEROPAGE_POINTER_1+1

        LDA #<SCREEN_CHAR
        sta ZEROPAGE_POINTER_2
        lda #>SCREEN_CHAR
        sta ZEROPAGE_POINTER_2+1

        lda #0                  ;Se inicializan los contadores
        sta CONT_ORIGEN
        
        lda #38                 ;Datos por línea
        sta CONT_BYTES_LINEA

        lda #1                  
        sta CONT_DESTINO

bucleInstruccionesDatos
        ldy CONT_ORIGEN                 ;Se carga la posición origen

        lda (ZEROPAGE_POINTER_1),y
        cmp #$FF                        ;Se compara con $FF para ver si se ha llegado
        beq finInstruccionesDatos                    ;al final de la información

        inc CONT_ORIGEN                 ;Se avanza una posición
        bne contInstrucciones1                       ;Si se han completado 256 posiciones
        inc ZEROPAGE_POINTER_1+1        ;Se incrementa el ZERO_PAGE en 256 posiciones
contInstrucciones1   
        iny 

        ldx #$01                        ;Repeticiones del dato
        cmp #$00                        ;Se comprueba si es un dato repetido
        bne bucleEscribirInstruccionesDato

        ;Cuando hay repeticiones se lee el número de ellas
        ldx #38

contInstrucciones2
        lda #$20                        ;Las repeticiones son siempre sobre el espacio vacío (código $20)

bucleEscribirInstruccionesDato
        ldy CONT_DESTINO                ;Se carga la posición de memoria del destino
        sta (ZEROPAGE_POINTER_2),y      ;Se guarda el dato en memoria
        
        dec CONT_BYTES_LINEA            ;Se incrementa el número de datos escritos
        bne noFinLineaInstruccionesDato              ;Se comprueba si se han escrito 32

        ;Nos saltamos la última posición y la primera
        inc CONT_DESTINO
        inc CONT_DESTINO

        pha
        lda #38                          ;Se pone el contador de bytes por linea a 38
        sta CONT_BYTES_LINEA
        pla

noFinLineaInstruccionesDato
        inc CONT_DESTINO                ;Se incrementa la posición de destino
        bne noPasoDePaginaInstruccionesDato
        inc ZEROPAGE_POINTER_2+1        ;Se pasa de página del ZERO PAGE

noPasoDePaginaInstruccionesDato
        dex                     ;Se comprueba si se han sacado todos los datos
        beq bucleInstruccionesDatos        ;Si es así se pasa al siguiente                                                  
                                     
        jmp bucleEscribirInstruccionesDato
                
        ;rts

finInstruccionesDatos
        ldx #0

bucleColoreaInstrucciones
        lda SCREEN_LINE_OFFSET_TABLE_LO,x
        sta ZEROPAGE_POINTER_1
        lda COLOR_LINE_OFFSET_TABLE_HI,x
        sta ZEROPAGE_POINTER_1+1

        lda #15
        sta COLOR_PUERTA
bucleColor
        ldy #38
bucleLinea
        sta (ZEROPAGE_POINTER_1),y
        dey
        bne bucleLinea
        txa
        pha
        jsr WaitFrame2
        jsr WaitFrame2
        pla
        tax
        dec COLOR_PUERTA
        lda COLOR_PUERTA
        cmp #4
        bne bucleColor

        inx
        cpx #15
        bne bucleColoreaInstrucciones
        
finColoreado
        rts

;        ldy #0
;.loadInstruccionesScreenLoop2
;        lda (ZEROPAGE_POINTER_1),y
;        sta (ZEROPAGE_POINTER_2),y
;        iny
;        bne .loadInstruccionesScreenLoop2

;        inc ZEROPAGE_POINTER_1+1
;        inc ZEROPAGE_POINTER_2+1

;        lda #$CE
;        sta ZEROPAGE_POINTER_2+1
;        lda #$00
;        sta ZEROPAGE_POINTER_2

;        ldy #0
;.loadInstruccionesScreenLoop3
;        lda (ZEROPAGE_POINTER_1),y
;        sta (ZEROPAGE_POINTER_2),y
;        iny
;        cpy #$80
;        bne .loadInstruccionesScreenLoop3


;        lda #>Instrucciones_colour_data
;        sta ZEROPAGE_POINTER_1+1
;        LDA #<Instrucciones_colour_data
;        sta ZEROPAGE_POINTER_1

               
;        lda #>SCREEN_COLOR
;        sta ZEROPAGE_POINTER_2+1
;        lda #<SCREEN_COLOR
;        sta ZEROPAGE_POINTER_2

;        ldy #0
;.loadInstruccionesScreenColorLoop1
;        ;lda (ZEROPAGE_POINTER_1),y
;        lda #GREEN
;        sta (ZEROPAGE_POINTER_2),y
;        iny
;        bne .loadInstruccionesScreenColorLoop1

;        ;inc ZEROPAGE_POINTER_1+1
;        inc ZEROPAGE_POINTER_2+1

;        ldy #0
;.loadInstruccionesScreenColorLoop2
;        ;lda (ZEROPAGE_POINTER_1),y
;        lda #GREEN
;        sta (ZEROPAGE_POINTER_2),y
;        iny
;        bne .loadInstruccionesScreenColorLoop2

;        ;inc ZEROPAGE_POINTER_1+1
;        inc ZEROPAGE_POINTER_2+1

;        ldy #0
;.loadInstruccionesScreenColorLoop3
;        ;lda (ZEROPAGE_POINTER_1),y
;        lda #GREEN
;        sta (ZEROPAGE_POINTER_2),y
;        iny
;        cpy #$80
;        bne .loadInstruccionesScreenColorLoop3

;;        rts

;        LDA #<Instrucciones_screen_data
;        sta ZEROPAGE_POINTER_1
;        lda #>Instrucciones_screen_data
;        sta ZEROPAGE_POINTER_1+1

;        ldx #16
;        lda SCREEN_LINE_OFFSET_TABLE_LO,x
;        sta ZEROPAGE_POINTER_2
;        lda SCREEN_LINE_OFFSET_TABLE_HI,x
;        sta ZEROPAGE_POINTER_2 + 1

;        ldx #16
;filas
;        ldy #0
;printFila
;        txa
;        and #$01
;        beq par
;        lda #$20
;        jmp copiaCaracter
;par
;        lda (ZEROPAGE_POINTER_1),y

;copiaCaracter
;        sta (ZEROPAGE_POINTER_2),y

;;        inc ZEROPAGE_POINTER_1
;;        bne seguir
;;        inc ZEROPAGE_POINTER_1 + 1

;;seguir

;        iny
;        cpy #40
;        bne printFila

;        ;jsr esperaTecla

;        ldy #7
;        lda VIC_SCREEN_CONTROL
;        ;and #%11111000
;        ora #%00000111
;        ;and #%11111000
;        sta VIC_SCREEN_CONTROL
;moverFila
;        ;jsr esperaTecla
;        jsr WaitFrame
;        jsr WaitFrame
;        jsr WaitFrame

;;        lda VIC_SCREEN_CONTROL
;;        and #%00000111
;;        bne noCambio
;;        lda VIC_SCREEN_CONTROL
;;        ora #%00000111
;;        sta VIC_SCREEN_CONTROL
;;        dey
;;        jmp moverFila

;noCambio
;        dec VIC_SCREEN_CONTROL
;        ;inc VIC_SCREEN_CONTROL
;        dey
;        bne moverFila

;;        jsr WaitFrame
;;        jsr WaitFrame
;;        jsr WaitFrame      

;        ;jsr esperaTecla
;        jsr desplazaTodo

;;        lda VIC_SCREEN_CONTROL
;;        ora #%00000011
;;        sta VIC_SCREEN_CONTROL

;        ;jsr WaitFrame
;        ;jsr esperaTecla

;        txa
;        and #$01
;        bne impar

;        lda ZEROPAGE_POINTER_1
;        clc
;        adc #40
;        bcc siguiente
;        ;cmp #40
;        inc ZEROPAGE_POINTER_1 + 1

;siguiente
;        sta ZEROPAGE_POINTER_1

;impar
;;        ldy #39
;;        lda #20
;;borraFila        
;;        sta (ZEROPAGE_POINTER_2),y
;;        dey
;;        bne borraFila

;        dex
;        bne filas

;        lda VIC_SCREEN_CONTROL
;        ora #%00000011
;        sta VIC_SCREEN_CONTROL
;               
;        rts


;esperaTecla
;        pha
;        txa
;        pha
;        tya
;        pha
;key1
;        jsr KERNAL_GETIN
;        beq key1

;        pla
;        tay
;        pla
;        tax
;        pla
;        rts


;desplazaTodo
;        txa
;        pha
;        tya
;        pha

;        ldx #0

;bucle
;        lda SCREEN_LINE_OFFSET_TABLE_LO,x
;        sta ZEROPAGE_POINTER_3
;        lda SCREEN_LINE_OFFSET_TABLE_HI,x
;        sta ZEROPAGE_POINTER_3 + 1
;        
;        inx
;        lda SCREEN_LINE_OFFSET_TABLE_LO,x
;        sta ZEROPAGE_POINTER_4
;        lda SCREEN_LINE_OFFSET_TABLE_HI,x
;        sta ZEROPAGE_POINTER_4 + 1

;        ldy #0
;copiaLinea
;        lda (ZEROPAGE_POINTER_4),y
;        sta (ZEROPAGE_POINTER_3),y
;;        lda #$20
;;        sta (ZEROPAGE_POINTER_4),y
;        iny
;        cpy #40
;        bne copiaLinea

;        cpx #16
;        bne bucle

;        pla
;        tay
;        pla
;        tax

;        rts


;========================================================
; Build Screen
;Dibuja el area de juego
;========================================================        
BuildScreen
        lda CUR_SCREEN
        tax

        ;Se apaga la pantalla
;        lda VIC_SCREEN_CONTROL
;        and #$1F
;        sta VIC_SCREEN_CONTROL
;        jsr WaitFrame
        
        ;Las pantallas entre la 30 y 34 los sprites van tras el fondo 
        cmp #29
        bmi spritesDelanteFondo
        cmp #35
        bpl spritesDelanteFondo

spritesTrasFondo        
        ;Los sprites se ven por detrás del fondo para las pantallas de las cavernas con agua
        lda #$0F
        jmp updateSpritePriority

spritesDelanteFondo
        ;Los sprites se ven delante del fondo
        lda #$00

updateSpritePriority
        sta VIC_SPRITE_PRIORITY

        ;Se comprueba si se ha visitado la pantalla
        lda SCREENS_VISITED,x
        bne loadScreenData
        lda #1                   ;Si no se ha visitado se pone a 1
        sta SCREENS_VISITED,x
        jsr incNumPantalla

loadScreenData
;        sei             ;Se deshabilitan las interrupciones
        lda $01         ;Se guarda la configuración
        pha
        lda #$36        ;Se habilita la RAM de $A000
        sta $01

        lda SCREENS_DATA_TABLE_HI,x
        sta ZEROPAGE_POINTER_1+1
        LDA SCREENS_DATA_TABLE_LO,x
        sta ZEROPAGE_POINTER_1

        lda #>SCREEN_CHAR
        sta ZEROPAGE_POINTER_2+1
        lda #<SCREEN_CHAR
        sta ZEROPAGE_POINTER_2


        lda #0                  ;Se inicializan los contadores
        sta CONT_ORIGEN
        
        lda #32                 ;Datos por línea
        sta CONT_BYTES_LINEA

        lda #4                  ;Se saltan las 4 primeras posiciones de pantalla
        sta CONT_DESTINO

bucleDatos
        ldy CONT_ORIGEN                 ;Se carga la posición origen

        lda (ZEROPAGE_POINTER_1),y
        cmp #$FF                        ;Se compara con $FF para ver si se ha llegado
        beq finDatos                    ;al final de la información

        inc CONT_ORIGEN                 ;Se avanza una posición
        bne cont1                       ;Si se han completado 256 posiciones
        inc ZEROPAGE_POINTER_1+1        ;Se incrementa el ZERO_PAGE en 256 posiciones
cont1   iny 

        ldx #$01                        ;Repeticiones del dato
        cmp #$00                        ;Se comprueba si es un dato repetido
        bne bucleEscribirDato

        ;Cuando hay repeticiones se lee el número de ellas
        lda (ZEROPAGE_POINTER_1),y      ;Se carga el número de repeticiones
        tax                             ;Se pasa el número de repeticiones a X

;        ;Se lee el dato a escribir
        inc CONT_ORIGEN
        bne cont2                       ;Si se han completado 256 posiciones
        inc ZEROPAGE_POINTER_1+1        ;Se incrementa el ZERO_PAGE en 256 posiciones
;cont2   iny
;        lda (ZEROPAGE_POINTER_1),y

;        inc CONT_ORIGEN                 ;Se incrementa la posición origen
;        bne bucleEscribirDato           ;Si se han completado 256 posiciones
;        inc ZEROPAGE_POINTER_1+1        ;Se incrementa el ZERO_PAGE en 256 posiciones
cont2
        lda #$20                        ;Las repeticiones son siempre sobre el espacio vacío (código $20)

bucleEscribirDato
        ldy CONT_DESTINO                ;Se carga la posición de memoria del destino
        sta (ZEROPAGE_POINTER_2),y      ;Se guarda el dato en memoria
        
        dec CONT_BYTES_LINEA            ;Se incrementa el número de datos escritos
        bne noFinLineaDato              ;Se comprueba si se han escrito 32

        lda CONT_DESTINO                ;Se suma 8 al destino para saltarse las 4 últimas posiciones de línea
        clc                             ;Y las 4 primeras de la siguiente
        adc #8
        sta CONT_DESTINO

        lda #32                          ;Se pone el contador de bytes por linea a 0
        sta CONT_BYTES_LINEA

noFinLineaDato
        inc CONT_DESTINO                ;Se incrementa la posición de destino
        bne noPasoDePaginaDato
        inc ZEROPAGE_POINTER_2+1        ;Se pasa de página del ZERO PAGE

noPasoDePaginaDato
        dex                     ;Se comprueba si se han sacado todos los datos
        beq bucleDatos        ;Si es así se pasa al siguiente                                                  
                                     
        jmp bucleEscribirDato
        
finDatos

;        ldy #0
;.loadPlayScreenLoop1
;        lda (ZEROPAGE_POINTER_1),y
;        sta (ZEROPAGE_POINTER_2),y
;        iny
;        bne .loadPlayScreenLoop1

;        inc ZEROPAGE_POINTER_1+1
;        inc ZEROPAGE_POINTER_2+1

;        ldy #0
;.loadPlayScreenLoop2
;        lda (ZEROPAGE_POINTER_1),y
;        sta (ZEROPAGE_POINTER_2),y
;        iny
;        bne .loadPlayScreenLoop2

;        inc ZEROPAGE_POINTER_1+1
;        inc ZEROPAGE_POINTER_2+1

;        ldy #0
;.loadPlayScreenLoop3
;        lda (ZEROPAGE_POINTER_1),y
;        sta (ZEROPAGE_POINTER_2),y
;        iny
;        cpy #$80
;        bne .loadPlayScreenLoop3


        lda CUR_SCREEN
        tax

        lda SCREENS_COLOR_TABLE_HI,x
        sta ZEROPAGE_POINTER_1+1
        LDA SCREENS_COLOR_TABLE_LO,x
        sta ZEROPAGE_POINTER_1

        lda #>SCREEN_COLOR
        sta ZEROPAGE_POINTER_2+1
        lda #<SCREEN_COLOR
        sta ZEROPAGE_POINTER_2

        lda #0                  ;Se inicializan los contadores
        sta CONT_ORIGEN
        
        lda #32                 ;Datos de color por línea
        sta CONT_BYTES_LINEA

        lda #4                  ;Se saltan las 4 primeras posiciones de pantalla
        sta CONT_DESTINO

bucleColores
        ldy CONT_ORIGEN                 ;Se carga la posición origen

        lda (ZEROPAGE_POINTER_1),y
        cmp #$FF                        ;Se compara con $FF para ver si se ha llegado
        beq finColor                    ;al final de la información

        lsr                             ;Se desplaza 4 posiciones a la derecha 
        lsr                             ;para quedarnos con el nibble alto que es el número de repeticiones
        lsr
        lsr
        clc                             ;El número de repeticiones es uno más del que se indica en el dato
        adc #1
        tax                             ;Se pasa el número de repeticiones a X
        lda (ZEROPAGE_POINTER_1),y      ;Se vuelve a leer el dato
        and #$0F                         ;En A se queda el código del color

        inc CONT_ORIGEN                 ;Se incrementa la posición origen
        bne bucleDatoColor              ;Si se han completado 256 posiciones
        inc ZEROPAGE_POINTER_1+1        ;Se incrementa el ZERO_PAGE en 256 posiciones

bucleDatoColor
        ldy CONT_DESTINO                ;Se carga la posición de memoria del destino
        sta (ZEROPAGE_POINTER_2),y      ;Se guarda el color en memoria
        
        dec CONT_BYTES_LINEA            ;Se incrementa el número de datos escritos
        bne noFinLineaColor             ;Se comprueba si se han escrito 32

        lda CONT_DESTINO                ;Se suma 8 al destino para saltarse las 4 últimas posiciones de línea
        clc                             ;Y las 4 primeras de la siguiente
        adc #8
        sta CONT_DESTINO

        lda #32                          ;Se pone el contador de bytes por linea a 0
        sta CONT_BYTES_LINEA

noFinLineaColor
        inc CONT_DESTINO                ;Se incrementa la posición de destino
        bne noPasoDePaginaColor
        inc ZEROPAGE_POINTER_2+1        ;Se pasa de página del ZERO PAGE

noPasoDePaginaColor
        dex                     ;Se comprueba si se han sacado todos los colores del dato
        beq bucleColores        ;Si es así se pasa al siguiente                                                  
                                     
        jmp bucleDatoColor
        
finColor

;.loadPlayScreenColorLoop1
;        lda (ZEROPAGE_POINTER_1),y
;        sta (ZEROPAGE_POINTER_2),y
;        iny
;        bne .loadPlayScreenColorLoop1

;        inc ZEROPAGE_POINTER_1+1
;        inc ZEROPAGE_POINTER_2+1

;        ldy #0
;.loadPlayScreenColorLoop2
;        lda (ZEROPAGE_POINTER_1),y
;        sta (ZEROPAGE_POINTER_2),y
;        iny
;        bne .loadPlayScreenColorLoop2

;        inc ZEROPAGE_POINTER_1+1
;        inc ZEROPAGE_POINTER_2+1

;        ldy #0
;.loadPlayScreenColorLoop3
;        lda (ZEROPAGE_POINTER_1),y
;        sta (ZEROPAGE_POINTER_2),y
;        iny
;        cpy #$80
;        bne .loadPlayScreenColorLoop3

       ;Se abren las puertas de la pantalla si ya se habían abierto
       jsr usarObjeto

        lda CUR_SCREEN
        tax

        lda SCREENS_INFO_TABLE_HI,x
        sta ZEROPAGE_POINTER_1+1
        lda SCREENS_INFO_TABLE_LO,x
        sta ZEROPAGE_POINTER_1

        ;SE cargan las salidas de la pantalla actual
        ldx #0
        ldy #0
loadSalidas
        lda (ZEROPAGE_POINTER_1),y
        sta SALIDAS_CURR_SCREEN,x
        iny
        inx
        cpx #4
        bne loadSalidas

        ;lda VIC_SPRITE_ENABLE
        ;and #$C1        ;Deshabilitar todos los sprites excepto el jugador
        lda #1          
        sta VIC_SPRITE_ENABLE

        ldx #1
        lda #0
borraEnemigos
        sta ENEMY_TYPE,x
        inx
        cpx #8
        bne borraEnemigos

        lda (ZEROPAGE_POINTER_1),y
        sta ENEMIES_CUR_SCREEN
        beq endLoadEnemies
        iny

        ldx #0  ;Iterador
        ;iny     ;Indice para ir leyendo datos
loadEnemies
        inx
        lda (ZEROPAGE_POINTER_1),y  ;Se lee el tipo de enemigo
        sta ENEMY_TYPE,x
        iny
        lda (ZEROPAGE_POINTER_1),y  ;Se lee el tipo de movimiento
        sta ENEMY_MOVEMENT,x
        iny
        ;lda (ZEROPAGE_POINTER_1),y  ;Se lee la direccion hacia la que va inicialmente el sprite
        lda #$FF                     ;Todos los sprites empiezan o yendo a la derecha o abajo
        sta ENEMY_DIRECTION,x
        ;iny
        lda (ZEROPAGE_POINTER_1),y  ;Se lee el divisor de movimiento del sprite (velocidad)
        sta ENEMY_MOV_DELAY,x
        sta ENEMY_MOV_DELAY_CUR,x
        iny
        lda (ZEROPAGE_POINTER_1),y  ;Se lee el retardo en la animación del sprite
        sta ENEMY_ANIM_DELAY,x     ;Se escribe también como valor actual
        sta ENEMY_ANIM_DELAY_CUR,x
        iny        
        lda (ZEROPAGE_POINTER_1),y  ;Se lee el color del sprite
        sta ENEMY_COLOR,x

        lda ENEMY_TYPE,x
        cmp #SP_DIAMANTE_L
        beq ponerColorDiamante
        cmp #SP_DIAMANTE_R
        bne cargarCoordenadas

ponerColorDiamante
        lda COLOR_DIAMANTE
        sta ENEMY_COLOR,x

cargarCoordenadas
        iny
        lda (ZEROPAGE_POINTER_1),y  ;Se lee la coordenada X de inicio
        sta ENEMY_INI_X_POS,x
        sta ENEMY_END_X_POS,x
        iny
        lda (ZEROPAGE_POINTER_1),y  ;Se lee la coordenada Y de inicio
        sta ENEMY_INI_Y_POS,x
        sta ENEMY_END_Y_POS,x
        iny        

        lda ENEMY_MOVEMENT,x        ;Si el enemigo no se mueve no se cargan las coordenadas de fin
        beq ponerSprite

        ;Si es movimiento SP_D o SP_UD hay que cargar la coordenada Y (la X no cambia)
        cmp #SP_UD
        bpl cargaCoordenadaY

        ;Se carga la coordenada X final para los casos de movimiento SP_R y SP_LR
        lda (ZEROPAGE_POINTER_1),y  ;Se lee la coordenada X de fin
        sta ENEMY_END_X_POS,x
        iny
        jmp ponerSprite

cargaCoordenadaY
        ;Se carga la coordenada Y final para los casos de movimiento SP_D y SP_UD
        lda (ZEROPAGE_POINTER_1),y  ;Se lee la coordenada Y de fin
        sta ENEMY_END_Y_POS,x
        iny

ponerSprite
        jsr colocarSprite

        cpx ENEMIES_CUR_SCREEN
        bne loadEnemies

endLoadEnemies  
        ;jsr mostrarInventario

        pla
        sta $01
;        cli

        ;Se habilita la pantalla
;        lda VIC_SCREEN_CONTROL
;        ora #$10
;        sta VIC_SCREEN_CONTROL

        rts
 



colocarSprite
        lda ENEMY_INI_X_POS,x   ;Se cargan las posiciones x e y de inicio del sprite
        sta PARAM1
        lda ENEMY_INI_Y_POS,x
        sta PARAM2
        tya                     ;Almacena y en el acumulador
        pha                     ;Se almacena y en la pila
        jsr CalcSpritePosFromCharPos
        pla                     ;Se recupera y de la pila
        tay                     ;Se carga en y

        jsr cargarSprite

        ;set sprite color
        lda ENEMY_COLOR,x
        sta SPRITE_COLOR_BASE,x

        ;enable sprites
        sec                     ;Se pone el carry a 1
        rol VIC_SPRITE_ENABLE   ;Se rota la habilitación de sprites añadiendo el sprite nuevo
                                ;desde el carry
        rts


;========================================================
; WaitFrame
;========================================================
          ;wait for the raster to reach line $f8
          ;this is keeping our timing stable
          
          ;are we on line $F8 already? if so, wait for the next full screen
          ;prevents mistimings if called too fast
WaitFrame 
          lda $d012
          cmp #$F8
          beq WaitFrame

          ;wait for the raster to reach line $f8 (should be closer to the start of this line this way)
.WaitStep2
          lda $d012
          cmp #$F8
          bne .WaitStep2

          jsr playpickedfx
         
          rts

WaitFrame2 
          lda $d012
          cmp #$F8
          beq WaitFrame2

          ;wait for the raster to reach line $f8 (should be closer to the start of this line this way)
.WaitStep22
          lda $d012
          cmp #$F8
          bne .WaitStep22

          ;play music
          jsr MUSIC_PLAYER + 3          
          rts


        IncAsm "CopyData.asm"
        IncAsm "PlayerMoves.asm"
        IncAsm "cargarSpritesYTablas.asm"

;------------------------------------------------------------
;IsCharBlocking
;checks if a char is blocking
;PARAM1 = char_pos_x
;PARAM2 = char_pos_y
;returns 1 for blocking, 0 for not blocking
;------------------------------------------------------------
IsCharBlocking          
          cmp #$20
          beq .NoBlocking
          cmp #$F8
          beq .NoBlocking
          
          lda #1
          rts
          
.NoBlocking
          lda #0
          rts

        IncAsm "sfx_player.asm"

        IncAsm "variables.asm"

* = $2C00
MUSIC_PLAYER
        IncBin"AbuSimbel.bin"
        
     IncAsm "title.asm"

CHARS_INICIAL
     incbin "charsInicial.cst",0,255
CHARS
     IncBin "characters.cst",0,255
;CHARS_PARED_GRANDE
;     IncBin "charsParedGrande.cst",0,255
CHARS_ESFINGE
     IncBin "charsEsfinge.cst",0,255
CHARS_FINAL
     IncBin "charsFinal.cst",0,255

SPRITES
        IncBin "Johnny.spt",1,12,true
        IncBin "gota.spt",1,5,true
        IncBin "murcielagoL.spt",1,6,true
        IncBin "murcielagoR.spt",1,6,true
        IncBin "cuadrado.spt",1,8,true
ADDR_SPRITE_KEY_1
        IncBin "key1.spt",1,1,true
        IncBin "moscas.spt",1,4,true
        IncBin "palmas.spt",1,4,true
        IncBin "serpienteL.spt",1,4,true
        IncBin "serpienteR.spt",1,4,true
        IncBin "mazo.spt",1,6,true
        IncBin "arana.spt",1,5,true
        IncBin "momiaL.spt",1,4,true
        IncBin "momiaR.spt",1,4,true
        IncBin "pinchosL.spt",1,1,true
        IncBin "pinchosR.spt",1,1,true"
        IncBin "lock1.spt",1,2,true
ADDR_SPRITE_KEY_2
        IncBin "key2.spt",1,1,true
        IncBin "transporter1.spt",1,1,true
        IncBin "bola.spt",1,2,true
        IncBin "aro.spt",1,6,true
ADDR_SPRITE_KEY_3
        IncBin "key3.spt",1,1,true
        IncBin "lock3.spt",1,2,true
        IncBin "rayo.spt",1,3,true
ADDR_SPRITE_KEY_4
        IncBin "key4.spt",1,1,true
        IncBin "lock4.spt",1,2,true
        IncBin "diamanteL.spt",1,1,true
        IncBin "diamanteR.spt",1,1,true
ADDR_SPRITE_KEY_5
        IncBin "key5.spt",1,1,true
        IncBin "lock2.spt",1,2,true
ADDR_SPRITE_KEY_6
        IncBin "key6.spt",1,1,true
        IncBin "lock6.spt",1,2,true
        IncBin "transporter2.spt",1,2,true
        IncBin "estalactita.spt",1,5,true
        IncBin "volcan.spt",1,5,true
ADDR_SPRITE_KEY_7       
        IncBin "key7.spt",1,1,true
        IncBin "lock7.spt",1,2,true
ADDR_SPRITE_KEY_8        
        IncBin "key8.spt",1,1,true
        IncBin "pezD.spt",1,4,true
        IncBin "pezU.spt",1,4,true
        IncBin "flecha.spt",1,1,true
        IncBin "lock8.spt",1,2,true
ADDR_SPRITE_KEY_9
        IncBin "key9.spt",1,1,true
        IncBin "lock9.spt",1,2,true
ADDR_SPRITE_KEY_10
        IncBin "key10.spt",1,1,true
        IncBin "lock10_2.spt",1,2,true
        IncBin "Lock10.spt",1,1,true

        IncAsm "screens.asm"

