        LIST    P=16F84A,R=DEC
STATUS  EQU     3
RP0     EQU     5
PORTB   EQU     6
TRISB   EQU     H'86'
        CLRF    PORTB       ; ledをぜんぶけしとく
        BSF     STATUS,RP0  ; ぺーじを１にする
        CLRF    TRISB       ; PORTBを全部出力にする
        BCF     STATUS,RP0  ; ぺーじを０にする
LOOP    MOVLW   B'00111111' ; 0を表示する
        MOVWF   PORTB
        MOVLW   B'00000110' ; 1を表示する
        MOVWF   PORTB
        MOVLW   B'01011011' ; 2を表示する
        MOVWF   PORTB
        MOVLW   B'01001111' ; 3を表示する
        MOVWF   PORTB
        MOVLW   B'01100110' ; 4を表示する
        MOVWF   PORTB
        MOVLW   B'01101101' ; 5を表示する
        MOVWF   PORTB
        MOVLW   B'01111101' ; 6を表示する
        MOVWF   PORTB
        MOVLW   B'00100111' ; 7を表示する
        MOVWF   PORTB
        MOVLW   B'01111111' ; 8を表示する
        MOVWF   PORTB
        MOVLW   B'01101111' ; 9を表示する
        MOVWF   PORTB
        GOTO    LOOP
        END