        LIST    P=16F84A,R=DEC
STATUS  EQU     3
RP0     EQU     5
PORTB   EQU     6
TRISB   EQU     H'86'
        CLRF    PORTB       ; LEDの初期化
        BSF     STATUS,RP0  ; ページ1にする
        CLRF    TRISB       ; すべて出力に設定
        BCF     STATUS,RP0  ; ページ0にする
        BSF     PORTB,0     ; LED ON
LOOP    GOTO    LOOP        ; 無限ループ
        END