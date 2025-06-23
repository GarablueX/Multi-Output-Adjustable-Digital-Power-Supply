
_main:

;MyProject.c,15 :: 		void main() {
;MyProject.c,16 :: 		ADCON1 = 0x07;
	MOVLW      7
	MOVWF      ADCON1+0
;MyProject.c,17 :: 		TRISA = 11111111;
	MOVLW      199
	MOVWF      TRISA+0
;MyProject.c,18 :: 		TRISB = 00000000;
	CLRF       TRISB+0
;MyProject.c,19 :: 		TRISC = 00000000;
	CLRF       TRISC+0
;MyProject.c,20 :: 		portb=0;
	CLRF       PORTB+0
;MyProject.c,21 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;MyProject.c,22 :: 		Lcd_Out(1,1,"the Circuit is ready to use");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,23 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;MyProject.c,24 :: 		while (1) {
L_main1:
;MyProject.c,25 :: 		if (porta.b0==1){
	BTFSS      PORTA+0, 0
	GOTO       L_main3
;MyProject.c,26 :: 		portb.b0=1;
	BSF        PORTB+0, 0
;MyProject.c,27 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,28 :: 		Lcd_Out(1, 1, "Output: 12V");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,29 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;MyProject.c,30 :: 		}
	GOTO       L_main5
L_main3:
;MyProject.c,31 :: 		else if(porta.b1==1){
	BTFSS      PORTA+0, 1
	GOTO       L_main6
;MyProject.c,32 :: 		portb.b1=1;
	BSF        PORTB+0, 1
;MyProject.c,33 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,34 :: 		Lcd_Out(1, 1, "Output: 9V");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,35 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;MyProject.c,36 :: 		}
	GOTO       L_main8
L_main6:
;MyProject.c,37 :: 		else if(porta.b2==1){
	BTFSS      PORTA+0, 2
	GOTO       L_main9
;MyProject.c,39 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,40 :: 		Lcd_Out(1, 1, "Output: 5V");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,41 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;MyProject.c,42 :: 		}
	GOTO       L_main11
L_main9:
;MyProject.c,46 :: 		else if(porta.b3==1){
	BTFSS      PORTA+0, 3
	GOTO       L_main12
;MyProject.c,47 :: 		portb.b3=1;
	BSF        PORTB+0, 3
;MyProject.c,48 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,49 :: 		Lcd_Out(1, 1, "Output: 3,3V");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,50 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
	NOP
;MyProject.c,51 :: 		}
	GOTO       L_main14
L_main12:
;MyProject.c,53 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,54 :: 		Lcd_Out(1,1,"the Circuit is ready to use");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,55 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
	NOP
	NOP
;MyProject.c,57 :: 		}
L_main14:
L_main11:
L_main8:
L_main5:
;MyProject.c,58 :: 		}
	GOTO       L_main1
;MyProject.c,59 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
