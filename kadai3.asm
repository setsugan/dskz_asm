        LIST    P=16F84A,R=DEC
STATUS  EQU     3       
RP0     EQU     5
PORTB   EQU     6
TRISB   EQU     H'86'
        CLRF    PORTB       ; ledをぜんぶけしとく
        BSF     STATUS,RP0  ; ぺーじを１にする
        CLRF    TRISB       ; ledをぜんぶ出力モードにする
        BCF     STATUS,RP0  ; ぺーじを０にする
        MOVLW   B'00111111' ; 0表示（6bit目がまんなかのセグメントと仮定）
        MOVWF   PORTB       ; PORTBへ転送
LOOP    GOTO    LOOP        ; くるくる
        END
