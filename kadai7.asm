        LIST    P=16F84A,R=DEC
STATUS  EQU     3
RP0     EQU     5
PORTB   EQU     6
TRISB   EQU     H'86'
        CLRF    PORTB       ; ledをぜんぶけしとく
        BSF     STATUS,RP0  ; ぺーじを１にする
        CLRF    TRISB       ; PORTBを全部出力にする
        BCF     STATUS,RP0  ; ぺーじを０にする