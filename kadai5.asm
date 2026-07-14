			LIST    P=16F84A,R=DEC
STATUS  	EQU     3
RP0     	EQU     5
PORTB   	EQU     6
TRISB   	EQU     H'86'
COUNTER1	EQU		H'10'
    	    CLRF    PORTB       	; ledをぜんぶけしとく
    	    BSF     STATUS,RP0  	; ぺーじを１にする
			CLRF    TRISB       	; PORTBを全部出力にする
			BCF     STATUS,RP0  	; ぺーじを０にする
LOOP		MOVLW	155				; Wレジスタに255を設定
			MOVWF	COUNTER1		; カウンタ用変数に155を転送
			MOVLW   B'00000001' 	; 0だけひょうじ
        	MOVWF   PORTB
DELAY		GOTO	$+1				; 01
			GOTO	$+1				; 02
			GOTO	$+1				; 03
			GOTO	$+1				; 04
			GOTO	$+1				; 05
			GOTO	$+1				; 06
			GOTO	$+1				; 07
			GOTO	$+1				; 08
			GOTO	$+1				; 09
			GOTO	$+1				; 10
			GOTO	$+1				; 01
			GOTO	$+1				; 02
			GOTO	$+1				; 03
			GOTO	$+1				; 04
			GOTO	$+1				; 05
			GOTO	$+1				; 06
			GOTO	$+1				; 07
			GOTO	$+1				; 08
			GOTO	$+1				; 09
			GOTO	$+1				; 10
			GOTO	$+1				; 01
			GOTO	$+1				; 02
			GOTO	$+1				; 03
			GOTO	$+1				; 04
			GOTO	$+1				; 05
			GOTO	$+1				; 06
			GOTO	$+1				; 07
			GOTO	$+1				; 08
			GOTO	$+1				; 09
			GOTO	$+1				; 10
			GOTO	$+1				; 01
			GOTO	$+1				; 02
			GOTO	$+1				; 03
			GOTO	$+1				; 04
			GOTO	$+1				; 05
			GOTO	$+1				; 06
			GOTO	$+1				; 07
			GOTO	$+1				; 08
			GOTO	$+1				; 09
			GOTO	$+1				; 10
			GOTO	$+1				; 01
			GOTO	$+1				; 02
			GOTO	$+1				; 03
			GOTO	$+1				; 04
			GOTO	$+1				; 05
			GOTO	$+1				; 06
			GOTO	$+1				; 07
			GOTO	$+1				; 08
			GOTO	$+1				; 09
			GOTO	$+1				; 10
			DECFSZ	COUNTER1, 1		; るーぷの終了判断
			GOTO	DELAY
			MOVLW	155				; Wレジスタに155を設定
			MOVWF	COUNTER1		; カウンタ用変数に155を転送
			MOVLW   B'00000000' 	; 0だけひょうじ
        	MOVWF   PORTB
DELAY2		GOTO	$+1				; 01
			GOTO	$+1				; 02
			GOTO	$+1				; 03
			GOTO	$+1				; 04
			GOTO	$+1				; 05
			GOTO	$+1				; 06
			GOTO	$+1				; 07
			GOTO	$+1				; 08
			GOTO	$+1				; 09
			GOTO	$+1				; 10
			GOTO	$+1				; 01
			GOTO	$+1				; 02
			GOTO	$+1				; 03
			GOTO	$+1				; 04
			GOTO	$+1				; 05
			GOTO	$+1				; 06
			GOTO	$+1				; 07
			GOTO	$+1				; 08
			GOTO	$+1				; 09
			GOTO	$+1				; 10
			GOTO	$+1				; 01
			GOTO	$+1				; 02
			GOTO	$+1				; 03
			GOTO	$+1				; 04
			GOTO	$+1				; 05
			GOTO	$+1				; 06
			GOTO	$+1				; 07
			GOTO	$+1				; 08
			GOTO	$+1				; 09
			GOTO	$+1				; 10
			GOTO	$+1				; 01
			GOTO	$+1				; 02
			GOTO	$+1				; 03
			GOTO	$+1				; 04
			GOTO	$+1				; 05
			GOTO	$+1				; 06
			GOTO	$+1				; 07
			GOTO	$+1				; 08
			GOTO	$+1				; 09
			GOTO	$+1				; 10
			GOTO	$+1				; 01
			GOTO	$+1				; 02
			GOTO	$+1				; 03
			GOTO	$+1				; 04
			GOTO	$+1				; 05
			GOTO	$+1				; 06
			GOTO	$+1				; 07
			GOTO	$+1				; 08
			GOTO	$+1				; 09
			GOTO	$+1				; 10
			DECFSZ	COUNTER1, 1		; るーぷの終了判断
			GOTO	DELAY2
			GOTO	LOOP					; くるくる
			END