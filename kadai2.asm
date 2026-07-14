        LIST    P=16F84A,R=DEC 
STATUS  EQU     3               
RP0     EQU     5               
PORTB   EQU     6               
TRISB   EQU     H'86'           
        CLRF    PORTB           ; ledをぜんぶけしとく
        BSF     STATUS,RP0      ; ぺーじを１にする
        CLRF    TRISB           ; ledをぜんぶ出力モードにする
        BCF     STATUS,RP0      ; ぺーじを０にする
        MOVLW   B'00000001'     ; led 0
        MOVWF   PORTB           ; PORTBへ転送
        MOVLW   B'00000011'     ; led 1
        MOVWF   PORTB           ; PORTBへ転送
        MOVLW   B'00000111'     ; led 2
        MOVWF   PORTB           ; PORTBへ転送
        MOVLW   B'00001111'     ; led 3
        MOVWF   PORTB           ; PORTBへ転送
        MOVLW   B'00011111'     ; led 4
        MOVWF   PORTB           ; PORTBへ転送
        MOVLW   B'00100000'     ; led 5
        MOVWF   PORTB           ; PORTBへ転送
        MOVLW   B'01000000'     ; led 6
        MOVWF   PORTB           ; PORTBへ転送
        MOVLW   B'10000000'     ; led 7
        MOVWF   PORTB           ; PORTBへ転送
LOOP    GOTO    LOOP            
        END                     
