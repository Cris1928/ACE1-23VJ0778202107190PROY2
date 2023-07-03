NADA        equ      00
JUGADOR     equ      01
PARED       equ      02
CAJA        equ      03
OBJETIVO    equ      04
SUELO       equ      05
EN_OBJETIVO equ      06
CAJA_OBJETIVO equ   07
.MODEL SMALL
.RADIX 16
.STACK
.DATA

dim_sprite_caja_objetivo   db   08, 08
data_sprite_caja_objetivo  db  31,21,21,21,21,21,21,31
                  	       db  21,1F,1F,21,21,21,21,21
                           db  21,1F,21,21,21,21,21,21
                           db  21,21,21,10,10,10,21,21
                           db  10,10,10,10,1E,10,10,10
                           db  1E,1E,1E,10,10,10,1E,1E
                           db  1E,1E,1E,1E,1E,1E,1E,1E
                           db  31,1E,1E,1E,1E,1E,1E,31


dim_sprite_jug    db   08, 08

data_sprite_jug   db   31, 10, 10, 31, 31, 31, 31, 10
                  db   31, 31, 2c, 2b, 31, 31, 31, 2b
                  db   31, 31, 31, 2c, 2c, 2c, 2c, 2b
                  db   2b, 2b, 31, 2c, 10, 2c, 2c, 10
                  db   2b, 2b, 31, 28, 2c, 2c, 2c, 2b
                  db   31, 2b, 31, 2c, 2b, 2b, 2b, 31
                  db   31, 2b, 2c, 2b, 2c, 2b, 2c, 31
                  db   31, 31, 2c, 2b, 2b, 2b, 2b, 31



dim_sprite_jug_eq   db   08, 08
data_sprite_jug_eq   db   31, 10, 10, 31, 31, 31, 31, 10
                     db   31, 28, 2c, 2b, 31, 31, 28, 2b
                     db   31, 31, 28, 2c, 2c, 2c, 2c, 2b
                     db   2b, 2b, 31, 2c, 10, 2c, 2c, 10
                     db   2b, 2b, 31, 28, 2c, 2c, 2c, 2b
                     db   31, 2b, 31, 2c, 2b, 2b, 2b, 31
                     db   31, 2b, 2c, 2b, 2c, 2b, 2c, 31
                     db   31, 31, 2c, 2b, 2b, 2b, 2b, 31


			
dim_sprite_flcha  db   08, 08
data_sprite_flcha   db   00, 00, 03, 00, 00, 00, 00, 00
                    db   00, 00, 03, 03, 00, 00, 00, 00
                    db   03, 03, 03, 03, 03, 00, 00, 00
                    db   03, 03, 03, 03, 03, 03, 00, 00
                    db   03, 03, 03, 03, 03, 03, 00, 00
                    db   03, 03, 03, 03, 03, 00, 00, 00
                    db   00, 00, 03, 03, 00, 00, 00, 00
                    db   00, 00, 03, 00, 00, 00, 00, 00
dim_sprite_vacio  db   08, 08
data_sprite_vacio db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
dim_sprite_suelo  db   08, 08
data_sprite_suelo db   31, 2, 31, 2D, 31, 31, 31, 31
                  db   31, 31, 2, 31, 31, 2, 31, 31
                  db   31, 2, 31, 31, 2, 2D, 31, 31
                  db   31, 31, 31, 31, 31, 31, 31, 31
                  db   2, 31, 2D, 31, 31, 31, 2D, 31
                  db   31, 31, 31, 31, 2D, 2, 31, 31
                  db   31, 31, 31, 31, 31, 31, 2, 31
                  db   2, 31, 31, 2D, 2, 2,2D , 31


dim_sprite_pared  db   08, 08




data_sprite_pared db   4D, 35, 34, 65, 34, 35, 4D, 4D
             	  db   35, 34, 65, 62, 65, 34, 35, 4D
                  db   34, 65, 62, 1E, 62, 65, 34, 4D
                  db   65, 62, 1E, 1F, 1E, 62, 65, 4D
                  db   34, 65, 62, 1E, 62, 65, 34, 4D
                  db   35, 34, 65, 62, 65, 34, 35, 4D
                  db   4D, 35, 34, 65, 34, 35, 4D, 4D
                  db   4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D




dim_sprite_caja   db   08, 08
data_sprite_caja  db  31,28,28,28,28,28,28,31
                  db  28,1F,1F,28,28,28,28,28
                  db  28,1F,28,28,28,28,28,28
                  db  28,28,28,10,10,10,28,28
                  db  10,10,10,10,1E,10,10,10
                  db  1E,1E,1E,10,10,10,1E,1E
                  db  1E,1E,1E,1E,1E,1E,1E,1E
                  db  31,1E,1E,1E,1E,1E,1E,31


dim_sprite_obj    db   08, 08
data_sprite_obj   db  31,31,31,31,31,31,31,31
                  db  31,28,31,31,31,31,28,31
                  db  31,31,28,31,31,28,31,31
                  db  31,31,31,28,28,31,31,31
                  db  31,31,31,28,28,31,31,31
                  db  31,31,28,31,31,28,31,31
                  db  31,28,31,31,31,31,28,31
                  db  31,31,31,31,31,31,31,31
mapa              db   3e8 dup (0)

 nivel_nombre    db    21 dup (0)
buffer_nivel  db  20, 00
nueva_lin  db    0a,"$"
derecha db "Derecha: FLECHA DERECHA$"
abajo db "Abajo: FLECHA ABAJO$"
izquierda db "Izquierda: FLECHA IZQUIERDA$"
arriba db "Arriba: FLECHA ARRIBA$"

c_controles db "Cambiar controles$"
regresar db "Regresar$"

continuar db "Continuar$"
salir_juego db "Salir$"

ganaste db "¡GANASTE!$"

suma_caja db 0
suma_caja2 db 0
suma_caja3 db 0

cajas_nv00 db 03

cajas_nv10 db 6

cajas_nv01 db 3

puntos_juego   db    00000
bufferr db 3   ; Buffer para almacenar el número convertido a cadena

iniciar_juego db "INICIAR JUEGO$"
cargar_nivel  db "CARGAR NIVEL$"
configuracion db "CONFIGURACION$"
puntajes      db "PUNTAJES ALTOS$"
salir         db "SALIR$"
iniciales     db "Cristian Gomez - 202107190$"
clase     db "Arquitectura en computadores 1$"
;; JUEGO
xJugador      db 0
yJugador      db 0
yAux 		db 0
xAux 		db 0
puntos        dw 0
;; MENÚS
opcion        db 0
opcion2	   db 0
maximo        db 0
xFlecha       dw 0
yFlecha       dw 0
;; CONTROLES
control_arriba    db  48
control_abajo     db  50
control_izquierda db  4b
control_derecha   db  4d
F2 			  db  3c
;; NIVELES
nivel_x           db  "NIV.00",00
nivel_y           db  "NIV.01",00
nivel_z		   db  "NIV.10",00
handle_nivel      dw  0000
linea             db  100 dup (0)
elemento_actual   db  0
xElemento         db  0
yElemento         db  0
nivel_actual        db  0
;; TOKENS
tk_pared      db  05,"pared"
tk_suelo      db  05,"suelo"
tk_jugador    db  07,"jugador"
tk_caja       db  04,"caja"
tk_objetivo   db  08,"objetivo"
tk_en_objetivo db  0c,"en_objetivo"
tk_caja_objetivo db 0c,"caja_objetivo"
tk_coma       db  01,","
;;
numero        db  5 dup (30)
numero2        db  05 dup (30)
.CODE
.STARTUP
inicio:
	

	;	mov AX,[puntos_juego]
	;	call numAcadena


	;	mov DX, offset numero
	;	mov AH, 09
	;	int 21

;call inner_loop

		;; MODO VIDEO ;;
		mov AH, 00
		mov AL, 13
		int 10
		jmp pantalla_ini

pepe:		
		;;;;;;;;;;;;;;;;
		call menu_principal
		mov AL, [opcion]
		;; > INICIAR JUEGO
		cmp AL, 0
		je cargar_nivel_00
		
		;; > CARGAR NIVEL
		cmp AL, 1
		je pedir_de_nuevo_nivel
		;; > CONFIGURACION
		cmp AL, 3
		je config
		;; > PUNTAJES ALTOS
		;; > SALIR
		cmp AL, 4
		je fin
		;;;;;;;;;;;;;;;;
ciclo_juego:
	;	mov AX,[puntos_juego]
	;	call numAcadena

		mov DL, 3
		mov DH, 16
		mov BH, 00
		mov AH, 02
;	;	mov bl, 0eh
		int 10
;		;; <<-- posicionar el cursor
;		push DX
;		mov DX, offset numero2
;		mov AH, 09
;		int 21
;		pop DX

    mov al, puntos_juego
    add al, '0'  ; Convertir a carácter ASCII

    ; Imprimir la variable en pantalla
    mov ah, 0Eh  ; Función de impresión en pantalla
    mov bh, 0    ; Página 0
    mov bl, 1Fh  ; Color de texto blanco sobre fondo azul
    int 10h


    ;add dl, 1
    ;cmp dl, 80
    ;jge next_line

	;	mov DL, 4
	;	mov DH, 16
	;	mov BH, 00
	;	mov AH, 02
	;	int 10

	;mov ah, 0Eh  ; Función de impresión en pantalla
    ;mov bh, 0    ; Página 0
    ;mov bl, 1Fh  ; Color de texto blanco sobre fondo azul
    ;int 10h



	

		call pintar_mapa
		call entrada_juego
		jmp ciclo_juego

		;;;;;;;;;;;;;;;;

cargar_un_nivel:
;.		mov AL, 00
;.		mov DX, offset nivel_x
;.		mov AH, 3d
;.		int 21
;.		jc inicio
;.		mov [handle_nivel], AX
		
	;	mov DI, offset mapa
	;	mov CX, 3e8
	;	mov AL, 00
	;  	call memset

		jmp vaciar_mapa
vaciar_mapa:
		mov DI, offset mapa
		mov CX, 3e8
		mov AL, 00
	  	call memset
		jmp ciclo_lineas

		;;
ciclo_lineas:
		mov BX, [handle_nivel]
		call siguiente_linea
		cmp DL, 0ff      ;; fin-del-archivo?
		je fin_parseo
		cmp DH, 00      ;; línea-con-algo?
		je ciclo_lineas
		;;;;;;;;;;;;;;;;;;;;;;;
		;; lógica del parseo ;;
		;;;;;;;;;;;;;;;;;;;;;;;
		;; al principio del buffer de la línea está: pared, caja, jugador, suelo, objetivo
		mov DI, offset linea
		push DI
		mov SI, offset tk_pared
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_pared
		pop DI
		push DI
		mov SI, offset tk_caja
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_caja
		pop DI
		push DI
		mov SI, offset tk_suelo
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_suelo
		pop DI
		push DI

		mov SI, offset tk_en_objetivo
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales tk_caja_objetivo
		je esta_objetivo
		pop DI
		push DI

		mov SI, offset tk_caja_objetivo
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales 
		je esta_caja_objetivo
		pop DI
		push DI

		mov SI, offset tk_objetivo
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_objetivo
		pop DI
		push DI
		mov SI, offset tk_jugador
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_jugador
		pop DI
		jmp ciclo_lineas
es_pared:
		mov AL, PARED
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_caja:
		mov AL, CAJA
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_suelo:
		mov AL, SUELO
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_objetivo:
		mov AL, OBJETIVO
		mov [elemento_actual], AL
		jmp continuar_parseo0
esta_objetivo:
		mov AL, EN_OBJETIVO
		mov [elemento_actual], AL
		jmp continuar_parseo0
esta_caja_objetivo:
		mov AL, CAJA_OBJETIVO
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_jugador:
		mov AL, JUGADOR
		mov [elemento_actual], AL
		jmp continuar_parseo0
		;; ignorar espacios
continuar_parseo0:
		pop SI         ; ignorara valor inicial de DI
		mov AL, [DI]
		cmp AL, 20
		jne ciclo_lineas
		call ignorar_espacios
		;; obtener una cadena numérica
		call leer_cadena_numerica
		push DI
		mov DI, offset numero
		call cadenaAnum
		mov [xElemento], AL
		pop DI
		;; ignorar espacios
		mov AL, [DI]
		cmp AL, 20
		je continuar_parseo1
		cmp AL, ','
		je continuar_parseo2
		jmp ciclo_lineas
continuar_parseo1:
		;; ignorar espacios
		call ignorar_espacios
continuar_parseo2:
		;; obtener una coma
		mov SI, offset tk_coma
		call cadena_igual
		cmp DL, 0ff
		jne ciclo_lineas
		;; ignorar espacios
		mov AL, [DI]
		cmp AL, 20
		jne ciclo_lineas
		call ignorar_espacios
		;; obtener una cadena numérica
		call leer_cadena_numerica
		push DI
		mov DI, offset numero
		call cadenaAnum
		mov [yElemento], AL
		pop DI
		;; ignorar_espacios
		mov AL, [DI]
		cmp AL, 20
		jne ver_final_de_linea
		call ignorar_espacios
		;; ver si es el final de la cadena
ver_final_de_linea:
		mov AL, [DI]
		cmp AL, 00
		jne ciclo_lineas
		;; usar la información
		;;
		mov DL, [elemento_actual]
		mov AH, [xElemento]
		mov AL, [yElemento]
		call colocar_en_mapa
		mov AL, JUGADOR
		cmp AL, [elemento_actual]
		je guardar_coordenadas_jugador
		jmp ciclo_lineas
guardar_coordenadas_jugador:
		mov AH, [xElemento]
		mov AL, [yElemento]
		mov [xJugador], AH
		mov [yJugador], AL
		jmp ciclo_lineas
		;;;;;;;;;;;;;;;;;;;;;;;
fin_parseo:
		;; cerrar archivo
		mov AH, 3e
		mov BX, [handle_nivel]
		int 21
		;;

		
		int 03
		jmp ciclo_juego
		jmp fin

;; pintar_pixel - pintar un pixel
;; ENTRADA:
;;     AX --> x pixel
;;     BX --> y pixel
;;     CL --> color
;; SALIDA: pintar pixel
;; AX + 320*BX
pintar_pixel:
		push AX
		push BX
		push CX
		push DX
		push DI
		push SI
		push DS
		mov DX, 0a000
		mov DS, DX
		;; (
		;; 	posicionarse en X
		mov SI, AX
		mov AX, 140
		mul BX
		add AX, SI
		mov DI, AX
		;;
		mov [DI], CL  ;; pintar
		;; )
		pop DS
		pop SI
		pop DI
		pop DX
		pop CX
		pop BX
		pop AX
		ret

;; pintar_sprite - pinta un sprite
;; Entrada:
;;    - DI: offset del sprite
;;    - SI: offset de las dimensiones
;;    - AX: x sprite 320x200
;;    - BX: y sprite 320x200
pintar_sprite:
		push DI
		push SI
		push AX
		push BX
		push CX
		inc SI
		mov DH, [SI]  ;; vertical
		dec SI        ;; dirección de tam horizontal
		;;
inicio_pintar_fila:
		cmp DH, 00
		je fin_pintar_sprite
		push AX
		mov DL, [SI]
pintar_fila:
		cmp DL, 00
		je pintar_siguiente_fila
		mov CL, [DI]
		call pintar_pixel
		inc AX
		inc DI
		dec DL
		jmp pintar_fila
pintar_siguiente_fila:
		pop AX
		inc BX
		dec DH
		jmp inicio_pintar_fila
fin_pintar_sprite:
		pop CX
		pop BX
		pop AX
		pop SI
		pop DI
		ret

;; delay - subrutina de retardo
delay:
		push SI
		push DI
		mov SI, 0200
cicloA:
		mov DI, 0130
		dec SI
		cmp SI, 0000
		je fin_delay
cicloB:
		dec DI
		cmp DI, 0000
		je cicloA
		jmp cicloB
fin_delay:
		pop DI
		pop SI
		ret
		

;; clear_pantalla - limpia la pantalla
;; ..
;; ..
clear_pantalla:
		mov CX, 19  ;; 25
		mov BX, 00
clear_v:
		push CX
		mov CX, 28  ;; 40
		mov AX, 00
clear_h:
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		add AX, 08
		loop clear_h
		add BX, 08
		pop CX
		loop clear_v
		ret


pantalla_ini:
		call clear_pantalla
		mov DL, 6
		mov DH, 01
		mov BH, 00
		mov AH, 02
		
		int 10
		;; <<-- posicionar el cursor clase
		
		push DX
		mov DX, offset iniciales
		mov AH, 09
		int 21
		
		pop DX


		add DH, 03
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset clase
		mov AH, 09
		int 21
		pop DX



		call inner_loop



		jmp pepe





config:
call menu_confg
mov DL,[opcion]
cmp DL, 0
je ciclo_juego
cmp DL, 1
je menu_principal


delay_loop:
    mov dx, 0FFFFh

inner_loop:
    dec dx
    jnz inner_loop

    inc cx
    cmp cx, 183h
    jl delay_loop

	jmp pepe



menu_confg:
		call clear_pantalla
		mov AL, 0
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AL, 5
		mov [maximo], AL
		mov AX, 50
		mov BX, 28
		mov [xFlecha], AX
		mov [yFlecha], BX
		mov DL, 0c
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset derecha
		mov AH, 09
		int 21
		pop DX
		;;;; volver al menu principal
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset abajo
		mov AH, 09
		int 21
		pop DX


		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset arriba
		mov AH, 09
		int 21
		pop DX

		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset izquierda
		mov AH, 09
		int 21
		pop DX

		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset c_controles
		mov AH, 09
		int 21
		pop DX


		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset regresar
		mov AH, 09
		int 21
		pop DX

		call pintar_flecha
		jmp entrada_menu_principal

		;; leer tecla
pantalla_win:
		call clear_pantalla
		mov DL, 6
		mov DH, 01
		mov BH, 00
		mov AH, 02
		
		int 10
		;; <<-- posicionar el cursor clase
		
		push DX
		mov DX, offset ganaste
		mov AH, 09
		int 21
		
		pop DX

		call inner_loop
		jmp pepe


pausa:
call menu_pausa
mov DL,[opcion]
cmp DL, 0
je ciclo_juego
cmp DL, 1
je menu_principal

menu_pausa:
		call clear_pantalla
		mov AL, 0
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AL, 5
		mov [maximo], AL
		mov AX, 50
		mov BX, 28
		mov [xFlecha], AX
		mov [yFlecha], BX
		mov DL, 0c
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset continuar
		mov AH, 09
		int 21
		pop DX
		;;;; volver al menu principal
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset salir_juego
		mov AH, 09
		int 21
		pop DX
		call pintar_flecha
		jmp entrada_menu_principal

		;; leer tecla




pedir_de_nuevo_nivel:
		call clear_pantalla
		mov DI, offset nivel_nombre
		mov CX, 0005
		call memset


	
		mov DX, offset buffer_nivel
		mov AH, 0a
		int 21
		;;; verificar que el tamaño del codigo no sea mayor a 5
		mov DI, offset buffer_nivel
		inc DI
		mov AL, [DI]
		cmp AL, 00
		je  pedir_de_nuevo_nivel
		cmp AL, 32 ; si es mayor a 20, pedir de nuevo
		jb  aceptar_tamanio
		mov DX, offset nueva_lin
		mov AH, 09
		int 21




		jmp pedir_de_nuevo_nivel

aceptar_tamanio:
		mov SI, offset nivel_nombre
		mov DI, offset buffer_nivel
		inc DI
		mov CH, 00
		mov CL, [DI]
		inc DI
duplicar_nombre:
		mov AL, [DI]
		mov [SI], AL
		inc SI
		inc DI
		loop duplicar_nombre
		mov DX, offset nueva_lin
		mov AH, 09
		int 21
buscar_archivo:
		mov CX, 26
		mov DX, offset nivel_nombre
		mov AH, 40
		int 21
cargar_un_nivel_x:
		mov AL, 00
		mov DX, offset nivel_nombre
		mov AH, 3d
		int 21
		jc inicio
		mov [handle_nivel], AX
		jmp ciclo_lineas



		
;; menu_principal - menu principal
;; ..
;; SALIDA
;;    - [opcion] -> código numérico de la opción elegida
menu_principal:
	;	mov DI, mapa
	;	mov CX, 0005
	;	call memset

		call clear_pantalla
		mov AL, 0
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AL, 5
		mov [maximo], AL
		mov AX, 50
		mov BX, 28
		mov [xFlecha], AX
		mov [yFlecha], BX
		;; IMPRIMIR OPCIONES ;;
		;;;; INICIAR JUEGO
		mov DL, 0c
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset iniciar_juego
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CARGAR NIVEL
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset cargar_nivel
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; PUNTAJES ALTOS
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset puntajes
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CONFIGURACION
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset configuracion
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; SALIR
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset salir
		mov AH, 09
		int 21
		pop DX
		;;;;
		call pintar_flecha
		;;;;
		;; LEER TECLA
		;;;;
entrada_menu_principal:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_principal
		cmp AH, 50
		je sumar_opcion_menu_principal
		cmp AH, 3b  ;; le doy F1
		je fin_menu_principal
		jmp entrada_menu_principal
restar_opcion_menu_principal:
		mov AL, [opcion]
		dec AL
		cmp AL, 0ff
		je volver_a_cero
		mov [opcion], AL
		jmp mover_flecha_menu_principal
sumar_opcion_menu_principal:
		mov AL, [opcion]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximo
		mov [opcion], AL
		jmp mover_flecha_menu_principal
volver_a_cero:
		mov AL, 0
		mov [opcion], AL
		jmp mover_flecha_menu_principal
volver_a_maximo:
		mov AL, [maximo]
		dec AL
		mov [opcion], AL
		jmp mover_flecha_menu_principal
mover_flecha_menu_principal:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 50
		mov BX, 28
		mov CL, [opcion]
ciclo_ubicar_flecha_menu_principal:
		cmp CL, 0
		je pintar_flecha_menu_principal
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_principal
pintar_flecha_menu_principal:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_principal
		;;
fin_menu_principal:
		ret

;; pintar_flecha - pinta una flecha
pintar_flecha:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_flcha
		mov DI, offset data_sprite_flcha
		call pintar_sprite
		ret

;; adaptar_coordenada - 40x25->320x200
;; ENTRADA:
;;    AH -> x 40x25
;;    AL -> y 40x25
;; SALIDA:
;;    AX -> x 320x200
;;    BX -> y 320x200
adaptar_coordenada:
		mov DL, 08
		mov CX, AX
		mul DL
		mov BX, AX
		;;
		mov AL, CH
		mul DL
		ret
sumar_caja_nivel00_arriba:
		mov DL, [suma_caja]
		inc DL 
		mov [suma_caja], DL
		cmp DL, [cajas_nv00]
		je cargar_nivel_01
		jmp mover_jugador_arr
		ret

sumar_caja_nivel00_derecha:
		mov DL, [suma_caja]
		inc DL 
		mov [suma_caja], DL
		cmp DL, [cajas_nv00]
		je cargar_nivel_01
		jmp mover_jugador_der
		ret

sumar_caja_nivel00_izquierda:
		mov DL, [suma_caja]
		inc DL 
		mov [suma_caja], DL
		cmp DL, [cajas_nv00]
		je cargar_nivel_01
		jmp mover_jugador_izq
		ret

sumar_caja_nivel00_abajo:
		mov DL, [suma_caja]
		inc DL 
		mov [suma_caja], DL
		cmp DL, [cajas_nv00]
		je cargar_nivel_01
		jmp mover_jugador_aba
		ret
		
cargar_nivel_00:
		mov AL, 0
		mov [suma_caja], AL

		mov AL, [nivel_actual]
		mov AL, 0
		mov [nivel_actual], AL
		mov AL, 00
		mov DX, offset nivel_x 
		mov AH, 3d
		int 21
		jc inicio
		mov [handle_nivel], AX
		jmp cargar_un_nivel



cargar_nivel_01:
mov AL, 6
mov		[cajas_nv00], AL
mov AL, [nivel_actual]
mov AL,1
mov [nivel_actual], AL
mov AL, 00
mov DX, offset nivel_y
mov AH, 3d 
int 21
jc inicio
mov [handle_nivel], AX
jmp cargar_un_nivel

		
sumar_caja_nivel01_arriba:
		mov DL, [suma_caja2]
		inc DL 
		mov [suma_caja2], DL
		cmp DL, [cajas_nv01]
		je cargar_nivel_10
		jmp mover_jugador_arr
		ret

sumar_caja_nivel01_abajo:
		mov DL, [suma_caja2]
		inc DL 
		mov [suma_caja2], DL
		cmp DL, [cajas_nv01]
		je cargar_nivel_10
		jmp mover_jugador_aba
		ret

sumar_caja_nivel01_izquierda:
		mov DL, [suma_caja2]
		inc DL 
		mov [suma_caja2], DL
		cmp DL, [cajas_nv01]
		je cargar_nivel_10
		jmp mover_jugador_izq
		ret
sumar_caja_nivel01_derecha:
		mov DL, [suma_caja2]
		inc DL 
		mov [suma_caja2], DL
		cmp DL, [cajas_nv01]
		je cargar_nivel_10
		jmp mover_jugador_der
		ret

cargar_nivel_10:
mov AL, 6
mov		[cajas_nv00], AL
mov AL, [nivel_actual]
mov AL,2
mov [nivel_actual], AL
mov AL, 00
mov DX, offset nivel_z
mov AH, 3d 
int 21
jc inicio
mov [handle_nivel], AX
jmp cargar_un_nivel

sumar_caja_nivel10_derecha:
		mov DL, [suma_caja3]
		inc DL 
		mov [suma_caja3], DL
		cmp DL, [cajas_nv10]
		je pantalla_win
		jmp mover_jugador_der
		ret
sumar_caja_nivel10_izquierda:
		mov DL, [suma_caja3]
		inc DL 
		mov [suma_caja3], DL
		cmp DL, [cajas_nv10]
		je pantalla_win
		jmp mover_jugador_izq
		ret

sumar_caja_nivel10_arriba:
		mov DL, [suma_caja3]
		inc DL 
		mov [suma_caja3], DL
		cmp DL, [cajas_nv10]
		je pantalla_win
		jmp mover_jugador_arr
		ret
		
sumar_caja_nivel10_abajo:
		mov DL, [suma_caja3]
		inc DL 
		mov [suma_caja3], DL
		cmp DL, [cajas_nv10]
		je pantalla_win
		jmp mover_jugador_aba
		ret		
;; colocar_en_mapa - coloca un elemento en el mapa
;; ENTRADA:
;;    - DL -> código numérico del elemento
;;    - AH -> x
;;    - AL -> y
;; ...
colocar_en_mapa:
		mov CX, AX     ;;;   AH -> x -> CH
		mov BL, 28
		mul BL   ;; AL * BL  = AX
		mov CL, CH
		mov CH, 00     ;;; CX el valor de X completo
		add AX, CX
		mov DI, offset mapa
		add DI, AX
		mov [DI], DL
		ret


;; obtener_de_mapa - obtiene un elemento en el mapa
;; ENTRADA:
;;    - AH -> x
;;    - AL -> y
;; SALIDA:
;;    - DL -> código numérico del elemento
obtener_de_mapa:
		mov CX, AX
		mov BL, 28
		mul BL
		mov CL, CH
		mov CH, 00
		add AX, CX
		mov DI, offset mapa
		add DI, AX
		mov DL, [DI]
		ret


;; pintar_mapa - pinta los elementos del mapa
;; ENTRADA:
;; SALIDA:
pintar_mapa:
		mov AL, 00   ;; fila
		;;
ciclo_v:
		cmp AL, 19
		je fin_pintar_mapa
		mov AH, 00   ;; columna
		;;
ciclo_h:
		cmp AH, 28
		je continuar_v
		push AX
		call obtener_de_mapa
		pop AX
		;;
                cmp DL, NADA
		je pintar_vacio_mapa
		;;
                cmp DL, JUGADOR
		je pintar_jugador_mapa
		;;
                cmp DL, PARED
		je pintar_pared_mapa
		;;
                cmp DL, CAJA
		je pintar_caja_mapa
		;;
                cmp DL, OBJETIVO
		je pintar_objetivo_mapa
		;;
                cmp DL, SUELO
		je pintar_suelo_mapa
		;;
                cmp DL, EN_OBJETIVO
		je pintar_en_objetivo_mapa	
		;;
		        cmp DL, CAJA_OBJETIVO
		je pintar_en_caja_objetivo_mapa
		;;
		jmp continuar_h
pintar_vacio_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_suelo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_suelo
		mov DI, offset data_sprite_suelo
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_jugador_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_jug
		mov DI, offset data_sprite_jug
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_pared_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_pared
		mov DI, offset data_sprite_pared
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_caja_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_caja
		mov DI, offset data_sprite_caja
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_objetivo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_obj
		mov DI, offset data_sprite_obj
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_en_objetivo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_jug_eq
		mov DI, offset data_sprite_jug_eq
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_en_caja_objetivo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_caja_objetivo
		mov DI, offset data_sprite_caja_objetivo
		call pintar_sprite
		pop AX
		jmp continuar_h
continuar_h:
		inc AH
		jmp ciclo_h
continuar_v:
		inc AL
		jmp ciclo_v
fin_pintar_mapa:
		ret


;; mapa_quemado - mapa de prueba
mapa_quemado:
		mov DL, SUELO
		mov AH, 2
		mov AL, 2
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 2
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 2
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 2
		mov AL, 4
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 4
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 4
		call colocar_en_mapa
		;;
		mov DL, JUGADOR
		mov AH, [xJugador]
		mov AL, [yJugador]
		call colocar_en_mapa
		;;
		mov DL, CAJA
		mov AH, 2
		mov AL, 3
		call colocar_en_mapa
		;;
		mov DL, OBJETIVO
		mov AH, 4
		mov AL, 2
		call colocar_en_mapa
		;;
		mov DL, PARED
		mov AH, 1
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 2
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 3
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 4
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 3
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 3
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 4
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 4
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 5
		call colocar_en_mapa

		mov DL, PARED
		mov AH, 2
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 3
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 4
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 5
		call colocar_en_mapa
		ret


;; entrada_juego - manejo de las entradas del juego
entrada_juego:
		mov AH, 01
		int 16
		jz fin_entrada_juego  ;; nada en el buffer de entrada
		mov AH, 00
		int 16
		;; AH <- scan code
		cmp AH, [control_arriba]
		je mover_jugador_arr
		cmp AH, [control_abajo]
		je mover_jugador_aba
		cmp AH, [control_izquierda]
		je mover_jugador_izq
		cmp AH, [control_derecha]
		je mover_jugador_der
		cmp AH,[F2]
		je pausa
		cmp AH, 3c
		ret
mover_jugador_arr:
		inc puntos_juego
		
		mov AH, [xJugador]; ah <- posicion del jugador
		mov AL, [yJugador]; AL <- posicion del jugador


		push AX ; guardar posicion de arriba
		call obtener_de_mapa; DL <- elemento en mapa
		pop AX; restaurar posicion de arriba
		cmp DL, EN_OBJETIVO
		je en_objetivo_arriba

		dec AL ; posicion de arriba
		push AX ; guardar posicion de arriba
		call obtener_de_mapa; DL <- elemento en mapa
		pop AX; restaurar posicion de arriba
		;; DL <- elemento en mapa
		cmp DL, PARED; aqui hay pared 
		je hay_pared_arriba ; saltar a hay_pared_arriba	

		cmp DL, CAJA
		je hay_caja_arriba

		cmp DL, OBJETIVO
		je hay_objetivo_arriba
		
		cmp DL, CAJA_OBJETIVO
		je quitar_pokemaster_arriba

		mov [yJugador], AL ; no hay pared, mover jugador
		;;
		mov DL, JUGADOR ; poner jugador en mapa
		push AX ; guardar posicion del jugador
		call colocar_en_mapa ; poner jugador en mapa
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, SUELO ; poner suelo en mapa
		inc AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		ret ; terminar
hay_pared_arriba:
		ret
hay_caja_arriba:
		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
	
		dec AL
		dec AL
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador
;POKE MASTER

		cmp DL, OBJETIVO
		je poke_master_arriba

		cmp DL, PARED
		je hay_pared_arriba

		mov [yElemento], AL ; no hay pared, mover jugador
		;;
		mov DL, CAJA ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa
		;-----------------cambio1 empieza-----------------
		;mov AL, [yJugador-1] ; AL <- yJugado
        ;mov [yElemento], AL ; no hay pared, mover jugador
		;mov DL,CAJA; poner jugador en mapa
		;push AX ; guardar posicion del jugador
		;call colocar_en_mapa ; poner jugador en mapa
		; -----------------cambio1 termina-----------------
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, SUELO ; poner suelo en mapa
		inc AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		jmp mover_jugador_arr
		ret ; terminar


poke_master_arriba:
		;inc suma_caja
		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
		dec AL
		dec AL
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador
;POKE MASTER
		mov [yElemento], AL ; no hay pared, mover jugador
		;;
		mov DL, CAJA_OBJETIVO ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa
		;-----------------cambio1 empieza-----------------
		;mov AL, [yJugador-1] ; AL <- yJugado
        ;mov [yElemento], AL ; no hay pared, mover jugador
		;mov DL,CAJA; poner jugador en mapa
		;push AX ; guardar posicion del jugador
		;call colocar_en_mapa ; poner jugador en mapa
		; -----------------cambio1 termina-----------------
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, SUELO ; poner suelo en mapa
		inc AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		
		mov DL, [nivel_actual]
		cmp DL, 0
		je sumar_caja_nivel00_arriba
		cmp DL, 1
		je sumar_caja_nivel01_arriba
		cmp DL, 2
		je sumar_caja_nivel10_arriba

		jmp mover_jugador_arr
		ret ; terminar

quitar_pokemaster_arriba:
		dec suma_caja
		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
		dec AL
		dec AL
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador
;POKE MASTER
		mov [yElemento], AL ; no hay pared, mover jugador
		;;
		mov DL, CAJA ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa
		;-----------------cambio1 empieza-----------------
		;mov AL, [yJugador-1] ; AL <- yJugado
        ;mov [yElemento], AL ; no hay pared, mover jugador
		;mov DL,CAJA; poner jugador en mapa
		;push AX ; guardar posicion del jugador
		;call colocar_en_mapa ; poner jugador en mapa
		; -----------------cambio1 termina-----------------
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, OBJETIVO ; poner suelo en mapa
		inc AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		jmp mover_jugador_arr
		ret ; terminar



hay_objetivo_arriba:
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AL
		push AX
		call obtener_de_mapa
		pop AX
		mov [yJugador], AL ; no hay pared, mover jugador
		;;
		mov DL, EN_OBJETIVO ; poner jugador en mapa
		push AX ; guardar posicion del jugador
		call colocar_en_mapa ; poner jugador en mapa
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, SUELO ; poner suelo en mapa
		inc AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		ret ; terminar

en_objetivo_arriba:
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AL
		push AX
		call obtener_de_mapa
		pop AX

		cmp DL, CAJA
		je quitar_pokemaster_arriba2

		mov [yJugador], AL ; no hay pared, mover jugador
		;;
		mov DL, JUGADOR ; poner jugador en mapa
		push AX ; guardar posicion del jugador
		call colocar_en_mapa ; poner jugador en mapa
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, OBJETIVO ; poner suelo en mapa
		inc AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		ret ; terminar
quitar_pokemaster_arriba2:
		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
	
		dec AL
		dec AL
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador

		cmp DL, OBJETIVO
		je poke_master_arriba2

		mov [yElemento], AL ; no hay pared, mover jugador
		;;
		mov DL, CAJA ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa

		pop AX ; restaurar posicion del jugador
		;;
		mov DL, OBJETIVO ; poner suelo en mapa
		inc AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		jmp mover_jugador_arr
		ret ; terminar

poke_master_arriba2:
		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
	
		dec AL
		dec AL
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador


		mov [yElemento], AL ; no hay pared, mover jugador
		;;
		mov DL, CAJA_OBJETIVO ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa

		pop AX ; restaurar posicion del jugador
		;;
		mov DL, SUELO ; poner suelo en mapa
		inc AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		jmp mover_jugador_arr
		ret ; terminar


mover_jugador_aba:
		inc puntos_juego
		
		mov AH, [xJugador]
		mov AL, [yJugador]

		push AX ; guardar posicion de arriba
		call obtener_de_mapa; DL <- elemento en mapa
		pop AX; restaurar posicion de arriba
		cmp DL, EN_OBJETIVO
		je en_objetivo_abajo


		inc AL
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_abajo

		cmp DL, CAJA
		je hay_caja_abajo

		cmp DL, OBJETIVO
		je hay_objetivo_abajo

		cmp DL, CAJA_OBJETIVO
		je quitar_pokemaster_abajo

		mov [yJugador], AL
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		dec AL
		call colocar_en_mapa
		ret
hay_pared_abajo:
		ret
hay_caja_abajo:
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AL
		inc AL
		push AX
		call obtener_de_mapa
		pop AX
;POKE MASTER
		cmp DL, OBJETIVO
		je poke_master_abajo
		cmp DL, PARED
		je hay_pared_abajo


		mov [yElemento], AL
		;;
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		dec AL
		call colocar_en_mapa
		jmp mover_jugador_aba
		ret

poke_master_abajo:
		;inc suma_caja


		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
		inc AL
		inc AL
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador
;POKE MASTER
		mov [yElemento], AL ; no hay pared, mover jugador
		;;
		mov DL, CAJA_OBJETIVO ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa
		;-----------------cambio1 empieza-----------------
		;mov AL, [yJugador-1] ; AL <- yJugado
        ;mov [yElemento], AL ; no hay pared, mover jugador
		;mov DL,CAJA; poner jugador en mapa
		;push AX ; guardar posicion del jugador
		;call colocar_en_mapa ; poner jugador en mapa
		; -----------------cambio1 termina-----------------
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, SUELO ; poner suelo en mapa
		dec AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		
		mov DL, [nivel_actual]
		cmp DL, 0
		je sumar_caja_nivel00_abajo
		cmp DL, 1
		je sumar_caja_nivel01_abajo
		cmp DL, 2
		je sumar_caja_nivel10_abajo

		jmp mover_jugador_aba
		ret ; terminar

quitar_pokemaster_abajo:
		dec suma_caja
		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
		inc AL
		inc AL
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador
;POKE MASTER
		mov [yElemento], AL ; no hay pared, mover jugador
		;;
		mov DL, CAJA ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa
		;-----------------cambio1 empieza-----------------
		;mov AL, [yJugador-1] ; AL <- yJugado
        ;mov [yElemento], AL ; no hay pared, mover jugador
		;mov DL,CAJA; poner jugador en mapa
		;push AX ; guardar posicion del jugador
		;call colocar_en_mapa ; poner jugador en mapa
		; -----------------cambio1 termina-----------------
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, OBJETIVO ; poner suelo en mapa
		dec AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		jmp mover_jugador_aba
		ret ; terminar



hay_objetivo_abajo:
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AL
		push AX
		call obtener_de_mapa
		pop AX
		mov [yJugador], AL ; no hay pared, mover jugador
		;;
		mov DL, EN_OBJETIVO ; poner jugador en mapa
		push AX ; guardar posicion del jugador
		call colocar_en_mapa ; poner jugador en mapa
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, SUELO ; poner suelo en mapa
		dec AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		ret ; terminar


en_objetivo_abajo:
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AL
		push AX
		call obtener_de_mapa
		pop AX

		cmp DL, CAJA
		je quitar_pokemaster_aba2

		mov [yJugador], AL ; no hay pared, mover jugador
		;;
		mov DL, JUGADOR ; poner jugador en mapa
		push AX ; guardar posicion del jugador
		call colocar_en_mapa ; poner jugador en mapa
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, OBJETIVO ; poner suelo en mapa
		dec AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		ret ; terminar


quitar_pokemaster_aba2:
		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
	
		inc AL
		inc AL
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador

		cmp DL, OBJETIVO
		je poke_master_abajo2

		mov [yElemento], AL ; no hay pared, mover jugador
		;;
		mov DL, CAJA ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa

		pop AX ; restaurar posicion del jugador
		;;
		mov DL, OBJETIVO ; poner suelo en mapa
		dec AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		jmp mover_jugador_aba
		ret ; terminar

poke_master_abajo2:
		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
	
		inc AL
		inc AL
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador


		mov [yElemento], AL ; no hay pared, mover jugador
		;;
		mov DL, CAJA_OBJETIVO ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa

		pop AX ; restaurar posicion del jugador
		;;
		mov DL, SUELO ; poner suelo en mapa
		dec AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		jmp mover_jugador_aba
		ret ; terminar


	
mover_jugador_izq:
        inc puntos_juego
		
		mov AH, [xJugador]
		mov AL, [yJugador]

		push AX ; guardar posicion de arriba
		call obtener_de_mapa; DL <- elemento en mapa
		pop AX; restaurar posicion de arriba
		cmp DL, EN_OBJETIVO
		je en_objetivo_izquierda

		dec AH
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_izquierda
		cmp DL, CAJA
		je hay_caja_izquierda


		cmp DL, OBJETIVO
		je hay_objetivo_izquierda


		cmp DL, CAJA_OBJETIVO
		je quitar_pokemaster_izq


		mov [xJugador], AH
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		inc AH
		call colocar_en_mapa
		ret
hay_pared_izquierda:
		ret
hay_caja_izquierda:
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AH
		dec AH
		push AX

		call obtener_de_mapa
		pop AX

;POKE MASTER

		cmp DL, OBJETIVO
		je poke_master_izq

		cmp DL, PARED
		je hay_pared_izquierda

		mov [xElemento], AH
		;;
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		inc AH
		call colocar_en_mapa
		jmp mover_jugador_izq
		ret


poke_master_izq:
		;inc suma_caja



		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
		dec AH
		dec AH
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador
;POKE MASTER
		mov [xElemento], AH ; no hay pared, mover jugador
		;;
		mov DL, CAJA_OBJETIVO ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa
		;-----------------cambio1 empieza-----------------
		;mov AL, [yJugador-1] ; AL <- yJugado
        ;mov [yElemento], AL ; no hay pared, mover jugador
		;mov DL,CAJA; poner jugador en mapa
		;push AX ; guardar posicion del jugador
		;call colocar_en_mapa ; poner jugador en mapa
		; -----------------cambio1 termina-----------------
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, SUELO ; poner suelo en mapa
		inc AH ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		mov DL, [nivel_actual]
		cmp DL, 0
		je sumar_caja_nivel00_izquierda
		cmp DL, 1
		je sumar_caja_nivel01_izquierda
		cmp DL, 2
		je sumar_caja_nivel10_izquierda
		jmp mover_jugador_izq
		ret ; terminar


quitar_pokemaster_izq:
		dec suma_caja
		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
		dec AH
		dec AH
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador
;POKE MASTER
		mov [xElemento], AH ; no hay pared, mover jugador
		;;
		mov DL, CAJA ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa

		pop AX ; restaurar posicion del jugador
		;;
		mov DL, OBJETIVO ; poner suelo en mapa
		inc AH ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		jmp mover_jugador_izq
		ret ; terminar




hay_objetivo_izquierda:
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AH
		push AX
		call obtener_de_mapa
		pop AX
		mov [xJugador], AH ; no hay pared, mover jugador
		;;
		mov DL, EN_OBJETIVO ; poner jugador en mapa
		push AX ; guardar posicion del jugador
		call colocar_en_mapa ; poner jugador en mapa
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, SUELO ; poner suelo en mapa
		inc AH ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		ret ; terminar

en_objetivo_izquierda:
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AH
		push AX
		call obtener_de_mapa
		pop AX

		cmp DL, CAJA
		je quitar_pokemaster_izq2

		mov [xJugador], AH ; no hay pared, mover jugador
		;;
		mov DL, JUGADOR ; poner jugador en mapa
		push AX ; guardar posicion del jugador
		call colocar_en_mapa ; poner jugador en mapa
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, OBJETIVO ; poner suelo en mapa
		inc AH ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		ret ; terminar

quitar_pokemaster_izq2:
		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
	
		dec AH
		dec AH
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador

		cmp DL, OBJETIVO
		je poke_master_izq2

		mov [xElemento], AH ; no hay pared, mover jugador
		;;
		mov DL, CAJA ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa

		pop AX ; restaurar posicion del jugador
		;;
		mov DL, OBJETIVO ; poner suelo en mapa
		inc AH ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		jmp mover_jugador_izq
		ret ; terminar
poke_master_izq2:
		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
	
		dec AH
		dec AH
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador


		mov [xElemento], AH ; no hay pared, mover jugador
		;;
		mov DL, CAJA_OBJETIVO ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa

		pop AX ; restaurar posicion del jugador
		;;
		mov DL, SUELO ; poner suelo en mapa
		inc AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		jmp mover_jugador_izq
		ret ; terminar

mover_jugador_der:
		inc puntos_juego
		
		mov AH, [xJugador]
		mov AL, [yJugador]


		push AX ; guardar posicion de arriba
		call obtener_de_mapa; DL <- elemento en mapa
		pop AX; restaurar posicion de arriba
		cmp DL, EN_OBJETIVO
		je en_objetivo_derecha

		inc AH
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_derecha
		cmp DL, CAJA
		je hay_caja_derecha
		cmp DL, OBJETIVO
		je hay_objetivo_derecha

		cmp DL, CAJA_OBJETIVO
		je quitar_pokemaster_der

		mov [xJugador], AH
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		dec AH
		call colocar_en_mapa
		ret
hay_pared_derecha:
		ret

hay_caja_derecha:
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AH
		inc AH
		push AX
		call obtener_de_mapa
		pop AX

;POKE MASTER
		cmp DL, OBJETIVO
		je poke_master_der

		cmp DL, PARED
		je hay_pared_derecha

		mov [xElemento], AH
		;;
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		;;
		mov DL, SUELO
		dec AH
		call colocar_en_mapa
		jmp mover_jugador_der
		ret
poke_master_der:
	;	inc suma_caja




		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
		inc AH
		inc AH
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador
;POKE MASTER
		mov [xElemento], AH ; no hay pared, mover jugador
		;;
		mov DL, CAJA_OBJETIVO ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa
		;-----------------cambio1 empieza-----------------
		;mov AL, [yJugador-1] ; AL <- yJugado
        ;mov [yElemento], AL ; no hay pared, mover jugador
		;mov DL,CAJA; poner jugador en mapa
		;push AX ; guardar posicion del jugador
		;call colocar_en_mapa ; poner jugador en mapa
		; -----------------cambio1 termina-----------------
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, SUELO ; poner suelo en mapa
		dec AH ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa

		mov DL, [nivel_actual]
		cmp DL, 0
		je sumar_caja_nivel00_derecha
		cmp DL, 1
		je sumar_caja_nivel01_derecha
		cmp DL, 2
		je sumar_caja_nivel10_derecha


		jmp mover_jugador_der
		ret ; terminar



quitar_pokemaster_der:
		dec suma_caja
		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
		inc AH
		inc AH
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador
;POKE MASTER
		mov [xElemento], AH ; no hay pared, mover jugador
		;;
		mov DL, CAJA ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa

		pop AX ; restaurar posicion del jugador
		;;
		mov DL, OBJETIVO ; poner suelo en mapa
		dec AH ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		jmp mover_jugador_der
		ret ; terminar



hay_objetivo_derecha:
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AH
		push AX
		call obtener_de_mapa
		pop AX
		mov [xJugador], AH ; no hay pared, mover jugador
		;;
		mov DL, EN_OBJETIVO ; poner jugador en mapa
		push AX ; guardar posicion del jugador
		call colocar_en_mapa ; poner jugador en mapa
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, SUELO ; poner suelo en mapa
		dec AH ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		ret ; terminar
en_objetivo_derecha:
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AH
		push AX
		call obtener_de_mapa
		pop AX

		cmp DL, CAJA
		je quitar_pokemaster_der2


		mov [xJugador], AH ; no hay pared, mover jugador
		;;
		mov DL, JUGADOR ; poner jugador en mapa
		push AX ; guardar posicion del jugador
		call colocar_en_mapa ; poner jugador en mapa
		pop AX ; restaurar posicion del jugador
		;;
		mov DL, OBJETIVO ; poner suelo en mapa
		dec AH ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		ret ; terminar
quitar_pokemaster_der2:
		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
	
		inc AH
		inc AH
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador

		cmp DL, OBJETIVO
		je poke_master_der2

		mov [xElemento], AH ; no hay pared, mover jugador
		;;
		mov DL, CAJA ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa

		pop AX ; restaurar posicion del jugador
		;;
		mov DL, OBJETIVO ; poner suelo en mapa
		dec AH ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		jmp mover_jugador_der
		ret ; terminar

poke_master_der2:
		mov AH, [xJugador] ; AH <- xJugador
		mov AL, [yJugador] ; AL <- yJugador
	
		inc AH
		inc AH
		push AX; guardar posicion del jugador
		call obtener_de_mapa ; obtener elemento en mapa
		pop AX ; restaurar posicion del jugador


		mov [xElemento], AH ; no hay pared, mover jugador
		;;
		mov DL, CAJA_OBJETIVO ; poner jugador en mapa
	
		push AX ; guardar posicion del jugador
		
		call colocar_en_mapa ; poner jugador en mapa

		pop AX ; restaurar posicion del jugador
		;;
		mov DL, SUELO ; poner suelo en mapa
		dec AL ; posicion de suelo
		call colocar_en_mapa ; poner suelo en mapa
		jmp mover_jugador_der
		ret ; terminar

fin_entrada_juego:
		ret


;; siguiente_linea - extrae la siguiente línea del archivo referenciado por el handle en BX
;; ENTRADA:
;;    - BX: handle
;; SALIDA:
;;    - [linea]: contenido de la línea que se extrajo, finalizada en 00 (nul0)
;;    - DL: si el archivo llegó a su fin
;;    - DH: la cantidad de caracteres en la línea
siguiente_linea:
		mov SI, 0000
		mov DI, offset linea
		;;
ciclo_sig_linea:
		mov AH, 3f
		mov CX, 0001
		mov DX, DI
		int 21
		cmp AX, 0000
		je fin_siguiente_linea
		mov AL, [DI]
		cmp AL, 0a
		je quitar_nl_y_fin
		inc SI
		inc DI
		jmp ciclo_sig_linea
quitar_nl_y_fin:
		mov AL, 00
		mov [DI], AL
		mov DX, SI
		mov DH, DL
		mov DL, 00    ;; no ha finalizado el archivo
		ret
fin_siguiente_linea:
		mov DL, 0ff   ;; ya finalizó el archivo
		ret


;; cadena_igual - verifica que dos cadenas sean iguales
;; ENTRADA:
;;    - SI: cadena 1, con su tamaño en el primer byte
;;    - DI: cadena 2
;; SALIDA:
;;    - DL: 0ff si son iguales, 00 si no lo son
cadena_igual:
		mov CH, 00
		mov CL, [SI]
		inc SI
ciclo_cadena_igual:
		mov AL, [SI]
		cmp AL, [DI]
		jne fin_cadena_igual
		inc SI
		inc DI
		loop ciclo_cadena_igual
cadenas_son_iguales:
		mov DL, 0ff
		ret
fin_cadena_igual:
		mov DL, 00
		ret

mover_Caja:
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AL
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_arriba
		mov [yJugador], AL
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		inc AL
		call colocar_en_mapa
		ret

;; ignorar_espacios - ignora una sucesión de espacios
;; ENTRADA:
;;    - DI: offset de una cadena cuyo primer byte se supone es un espacio
;; ...
ignorar_espacios:
ciclo_ignorar:
		mov AL, [DI]
		cmp AL, 20
		jne fin_ignorar
		inc DI
		jmp ciclo_ignorar
fin_ignorar:
		ret


;; memset - memset
;; ENTRADA:
;;    - DI: offset del inicio de la cadena de bytes
;;    - CX: cantidad de bytes
;;    - AL: valor que se pondrá en cada byte
memset:
		push DI
ciclo_memset:
		
		mov [DI], AL
		inc DI
		loop ciclo_memset
		pop DI
		ret


;; leer_cadena_numerica - lee una cadena que debería estar compuesta solo de números
;; ENTRADA:
;;    - DI: offset del inicio de la cadena numérica
;; SALIDA:
;;    - [numero]: el contenido de la cadena numérica
leer_cadena_numerica:
		mov SI, DI
		;;
		mov DI, offset numero
		mov CX, 0005
		mov AL, 30
		call memset
		;;
		mov DI, SI
		mov CX, 0000
ciclo_ubicar_ultimo:
		mov AL, [DI]
		cmp AL, 30
		jb copiar_cadena_numerica
		cmp AL, 39
		ja copiar_cadena_numerica
		inc DI
		inc CX
		jmp ciclo_ubicar_ultimo
copiar_cadena_numerica:
		push DI   ;;   <----
		dec DI
		;;
		mov SI, offset numero
		add SI, 0004
ciclo_copiar_num:
		mov AL, [DI]
		mov [SI], AL
		dec DI
		dec SI
		loop ciclo_copiar_num
		pop DI
		ret

;; cadenaAnum
;; ENTRADA:
;;    DI -> dirección a una cadena numérica
;; SALIDA:
;;    AX -> número convertido
;;;;
cadenaAnum:
		mov AX, 0000    ; inicializar la salida
		mov CX, 0005    ; inicializar contador
		;;
seguir_convirtiendo:
		mov BL, [DI]
		cmp BL, 00
		je retorno_cadenaAnum
		sub BL, 30      ; BL es el valor numérico del caracter
		mov DX, 000a
		mul DX          ; AX * DX -> DX:AX
		mov BH, 00
		add AX, BX 
		inc DI          ; puntero en la cadena
		loop seguir_convirtiendo
retorno_cadenaAnum:
		ret



numAcadena:
		mov CX, 0005
		mov DI, offset numero
ciclo_poner30s:
		mov BL, 30
		mov [DI], BL
		inc DI
		loop ciclo_poner30s
		;; tenemos '0' en toda la cadena
		mov CX, AX    ; inicializar contador
		mov DI, offset numero
		add DI, 0004
		;;
ciclo_convertirAcadena:
		mov BL, [DI]
		inc BL
		mov [DI], BL
		cmp BL, 3a
		je aumentar_siguiente_digito_primera_vez
		loop ciclo_convertirAcadena
		jmp retorno_convertirAcadena
aumentar_siguiente_digito_primera_vez:
		push DI
aumentar_siguiente_digito:
		mov BL, 30     ; poner en '0' el actual
		mov [DI], BL
		dec DI         ; puntero a la cadena
		mov BL, [DI]
		inc BL
		mov [DI], BL
		cmp BL, 3a
		je aumentar_siguiente_digito
		pop DI         ; se recupera DI
		loop ciclo_convertirAcadena
retorno_convertirAcadena:
		ret





fin:
.EXIT
END
