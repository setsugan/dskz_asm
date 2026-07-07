        LIST    P=16F84A,R=DEC
STATUS  EQU     3
RP0     EQU     5
PORTB   EQU     6
TRISB   EQU     H'86'
        CLRF    PORTB       ; LEDを全部消す
        BSF     STATUS,RP0  ; バンク1に切り替える
        CLRF    TRISB       ; PORTBを全部出力にする
        BCF     STATUS,RP0  ; バンク0に戻す
        MOVLW   B'00111111' ; 0表示なので0,1,2,3,4,5番目を点灯
        MOVWF   PORTB       ; PORTBへ転送して7segに0を出す
LOOP    GOTO    LOOP        ; そのまま表示し続ける
        END
