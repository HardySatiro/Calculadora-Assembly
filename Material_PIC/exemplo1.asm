;****************************** Programa modelo ******************************
;*******                       Nome do programa                    ***********
;*****************************************************************************

;*********************  Defini��o do processador *****************************

	#include p16F877.inc 
	__config _HS_OSC & _WDT_OFF & _LVP_OFF & _PWRTE_ON 

;************************** Mem�ria de programa ******************************
 ORG     0 

RESET 
 nop             
 goto   START 
;***************************** Interrup��o **********************************
 ORG 4 
;*************************** Inicio do programa ******************************

START 

 bsf     STATUS,RP0  ;vai para o Bank 1
;*************************** Declara��o de vari�veis ******************************   
 DELAY 	 EQU 0x20
 VEZES 	 EQU 0x21
 BS EQU 0X24
 X EQU 0X25
 Y EQU 0X26
 I EQU 0X27
;*************************** Configura��es ******************************
 movlw   b'00000000' ; Seta PORTA como sa�da
 movwf   TRISA       
 movlw   b'00000000' ; Seta PORTD como sa�da
 movwf   TRISD  
 MOVLW   b'00001111'
 MOVWF   TRISB     
 MOVLW   b'00000000'
 MOVWF   TRISE
 bcf   STATUS,RP0    ;vai para o Bank 0
;*************************** Programa principal ******************************
 
MOVLW 0x20
MOVWF PORTA

MOVLW b'00000000'
MOVWF PORTD

 MOVLW b'00000001'
 MOVWF PORTE
          
INICIO

	
	MOVLW B'11101111'; RB4 COM 0, RESTO TUDO 1
	MOVWF PORTB
	BTFSS PORTB, 0; S1 -> BOT�O 0
	CALL APITA_0
	BTFSS PORTB, 1; S1 -> BOT�O 0
	CALL APITA_1
	BTFSS PORTB, 2; S1 -> BOT�O 0
	CALL APITA_2
	BTFSS PORTB, 3; S1 -> BOT�O 0
	CALL APITA_3
	MOVLW B'11011111'; RB4 COM 0, RESTO TUDO 1
	MOVWF PORTB
	BTFSS PORTB, 0; S1 -> BOT�O 0
	CALL APITA_4
	BTFSS PORTB, 1; S1 -> BOT�O 0
	CALL APITA_5
	BTFSS PORTB, 2; S1 -> BOT�O 0
	CALL APITA_6
	BTFSS PORTB, 3; S1 -> BOT�O 0
	CALL APITA_7
	MOVLW B'10111111'; RB4 COM 0, RESTO TUDO 1
	MOVWF PORTB
	BTFSS PORTB, 0; S1 -> BOT�O 0
	CALL APITA_8
	BTFSS PORTB, 1; S1 -> BOT�O 0
	CALL APITA_9
	BTFSS PORTB, 2; S1 -> BOT�O 0
	GOTO SOMA
	BTFSS PORTB, 3; S1 -> BOT�O 0
	GOTO SUB

  goto INICIO   
	


APITA_0
	MOVLW 0x3F
	MOVWF  PORTD
	MOVLW D'0' 
	MOVWF X	
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO

return

APITA_1
	MOVLW 0x06
	MOVWF  PORTD
	MOVLW D'1'
	MOVWF X	
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO
	
return

APITA_2
	MOVLW 0x5B
	MOVWF  PORTD
	MOVLW D'2'
	MOVWF X	
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO

return

APITA_3
	MOVLW 0x4F
	MOVWF  PORTD
	MOVLW D'3' 
	MOVWF X	
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO

return

APITA_4
	MOVLW 0x66
	MOVWF  PORTD
	MOVF D'4'
	MOVWF X	
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO

return

APITA_5
	MOVLW 0x6D
	MOVWF  PORTD	
	MOVF D'5' 
	MOVWF X
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO

return

APITA_6
	MOVLW 0x7D
	MOVWF  PORTD
	MOVLW D'6'
	MOVWF X	
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO

return

APITA_7
	MOVLW 0x07
	MOVWF  PORTD
	MOVLW D'7'
	MOVWF X	
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO
return

APITA_8
	MOVLW 0x7F
	MOVWF  PORTD
	MOVLW D'8'
	MOVWF X	
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO
return

APITA_9
	MOVLW 0x67
	MOVWF  PORTD
	MOVLW D'9'
	MOVWF X	
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO
return

VERIFICA
	;verificar com o valor 5
	;x = COMPARACAO - 5
	;x==0 se verdade chama ESCREVE_DISPLAY5

	MOVLW D'0'
	MOVWF W
	SUBWF I,W ;COMPARACAO - W, e o resultado foi colocado no W
	BTFSC STATUS,Z ;� zero? se zero Z==1, n�o pula a proxima linha por causa do BTFSC
	CALL ESCREVE_DISPLAY0

	MOVLW D'1'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY1

	MOVLW D'2'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY2

	MOVLW D'3'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY3

	MOVLW D'4'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY4

	MOVLW D'5'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY5

	MOVLW D'6'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY6

	MOVLW D'7'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY7

	MOVLW D'8'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY8

	MOVLW D'9'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY9

	MOVLW D'10'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY10

	MOVLW D'11'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY11

	MOVLW D'12'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY12

	MOVLW D'13'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY13

	MOVLW D'14'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY14

	MOVLW D'15'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY15

	MOVLW D'16'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY16

	MOVLW D'17'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY17

	MOVLW D'18'
	MOVWF W
	SUBWF I,W
	BTFSC STATUS,Z
	CALL ESCREVE_DISPLAY18

return




BOTAO2

	MOVLW B'11101111'; RB4 COM 0, RESTO TUDO 1
	MOVWF PORTB
	BTFSS PORTB, 0; S1 -> BOT�O 0
	CALL APITA_00
	BTFSS PORTB, 1; S1 -> BOT�O 0
	CALL APITA_11
	BTFSS PORTB, 2; S1 -> BOT�O 0
	CALL APITA_22
	BTFSS PORTB, 3; S1 -> BOT�O 0
	CALL APITA_33
	MOVLW B'11011111'; RB4 COM 0, RESTO TUDO 1
	MOVWF PORTB
	BTFSS PORTB, 0; S1 -> BOT�O 0
	CALL APITA_44
	BTFSS PORTB, 1; S1 -> BOT�O 0
	CALL APITA_55
	BTFSS PORTB, 2; S1 -> BOT�O 0
	CALL APITA_66
	BTFSS PORTB, 3; S1 -> BOT�O 0
	CALL APITA_77
	MOVLW B'10111111'; RB4 COM 0, RESTO TUDO 1
	MOVWF PORTB
	BTFSS PORTB, 0; S1 -> BOT�O 0
	CALL APITA_88
	BTFSS PORTB, 1; S1 -> BOT�O 0
	CALL APITA_99

	GOTO SOMA2

return

APITA_00
	MOVLW 0x3F
	MOVWF  PORTD
	MOVLW D'0'
	MOVWF Y	
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO

return

APITA_11
	MOVLW 0x06
	MOVWF  PORTD
	MOVLW D'1'
	MOVWF Y		
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO
	
return

APITA_22
	MOVLW 0x5B
	MOVWF  PORTD
	MOVLW D'2'
	MOVWF Y		
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO

return

APITA_33
	MOVLW 0x4F
	MOVWF  PORTD
	MOVLW D'3'
	MOVWF Y		
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO

return

APITA_44
	MOVLW 0x66
	MOVWF  PORTD
	MOVLW D'4'
	MOVWF Y		
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO

return

APITA_55
	MOVLW 0x6D
	MOVWF  PORTD	
	MOVLW D'5'
	MOVWF Y	
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO

return

APITA_66
	MOVLW 0x7D
	MOVWF  PORTD
	MOVLW D'6'
	MOVWF Y		
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO

return

APITA_77
	MOVLW 0x07
	MOVWF  PORTD
	MOVLW D'7'
	MOVWF Y		
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO
return

APITA_88
	MOVLW 0x7F
	MOVWF  PORTD
	MOVLW D'8'
	MOVWF Y		
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO
return

APITA_99
	MOVLW 0x67
	MOVWF  PORTD
	MOVLW D'9'
	MOVWF Y		
	movlw b'00000000'
	movwf PORTE
	call PERDE_TEMPO
	call PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL PERDE_TEMPO
	CALL SILENCIO

return

	
SOMA

	GOTO BOTAO2
	CALL ESCREVEA

return 

SOMA2
	
	MOVF X, W
	ADDWF Y,W
	MOVWF I
	;CALL VERIFICA
	CALL ESCREVEB
	
return


SUB

	GOTO BOTAO2
	CALL ESCREVEA

return 


SUB2
	
	MOVF X, W
	SUBWF Y,W
	MOVWF I
	;CALL VERIFICA
	CALL ESCREVEB
	
return


ESCREVEA
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x77
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x77
	MOVWF PORTD
	CALL PERDE_TEMPO

return

ESCREVEB
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x7C
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x7C
	MOVWF PORTD
	CALL PERDE_TEMPO

return


ESCREVE_DISPLAY0
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x3F
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x3F
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY0


ESCREVE_DISPLAY1
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x3F
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x06
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY1


ESCREVE_DISPLAY2
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x3F
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x5B
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY2


ESCREVE_DISPLAY3
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x3F
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x4F
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY3


ESCREVE_DISPLAY4
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x3F
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x66
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY4


ESCREVE_DISPLAY5
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x3F
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x6D
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY5


ESCREVE_DISPLAY6
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x3F
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x7D
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY6



ESCREVE_DISPLAY7
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x3F
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x07
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY7


ESCREVE_DISPLAY8
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x3F
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x7F
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY8


ESCREVE_DISPLAY9
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x3F
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x67
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY9


ESCREVE_DISPLAY10
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x06
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x3F
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY10


ESCREVE_DISPLAY11
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x06
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x06
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY11


ESCREVE_DISPLAY12
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x06
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x5B
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY12


ESCREVE_DISPLAY13
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x06
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x4F
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY13



ESCREVE_DISPLAY14
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x06
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x66
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY14


ESCREVE_DISPLAY15
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x06
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x6D
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY15


ESCREVE_DISPLAY16
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x06
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x7D
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY16


ESCREVE_DISPLAY17
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x06
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x07
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY17


ESCREVE_DISPLAY18
	;dezena
	MOVLW b'00100000'
	MOVWF PORTA
	MOVLW 0x06
	MOVWF PORTD
	CALL PERDE_TEMPO

	;unidade
	MOVLW b'00010000'
	MOVWF PORTA
	MOVLW 0x7F
	MOVWF PORTD
	CALL PERDE_TEMPO

GOTO ESCREVE_DISPLAY18









PERDE_TEMPO
 MOVLW d'1'
 MOVWF VEZES
LOOP_VEZES
 MOVLW d'1'
 MOVWF DELAY
 CALL DELAY_US
 DECFSZ VEZES,1
 GOTO LOOP_VEZES
 RETURN
DELAY_US
 NOP
 NOP
 DECFSZ DELAY,1
 GOTO DELAY_US
 RETURN 

SILENCIO
	movlw b'00000001'
	movwf PORTE

return 



 end
