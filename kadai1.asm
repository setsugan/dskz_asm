        LIST    P=16F84A,R=DEC
STATUS  EQU     3
RP0     EQU     5
PORTB   EQU     6
TRISB   EQU     H'86'
        CLRF    PORTB       ; ledをぜんぶけしとく
        BSF     STATUS,RP0  ; ぺーじを１にする
        CLRF    TRISB       ; ledをぜんぶ出力モードにする
        BCF     STATUS,RP0  ; ぺーじを０にする
LOOP    MOVLW   B'10101010' ; 奇数番目をひからせる
        MOVWF   PORTB       ; PORTBへ転送
        MOVLW   B'01010101' ; 偶数番目をひからせる
        MOVWF   PORTB       ; PORTBへ転送
        GOTO    LOOP        ; くるくる
        END