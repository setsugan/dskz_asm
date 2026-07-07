        LIST    P=16F84A,R=DEC
STATUS  EQU     3
RP0     EQU     5
PORTB   EQU     6
TRISB   EQU     H'86'
CNT1    EQU     H'0C'
CNT2    EQU     H'0D'
        CLRF    PORTB       ; LEDを全部消す
        BSF     STATUS,RP0  ; バンク1に切り替える
        CLRF    TRISB       ; PORTBを全部出力にする
        BCF     STATUS,RP0  ; バンク0に戻す
LOOP    MOVLW   B'00111111' ; 0を表示する
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'00000110' ; 1を表示する
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'01011011' ; 2を表示する
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'01001111' ; 3を表示する
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'01100110' ; 4を表示する
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'01101101' ; 5を表示する
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'01111101' ; 6を表示する
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'00000111' ; 7を表示する
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'01111111' ; 8を表示する
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'01101111' ; 9を表示する
        MOVWF   PORTB
        CALL    WAIT
        GOTO    LOOP        ; 0から9をくり返す
WAIT    MOVLW   255         ; 待ち時間を作る
        MOVWF   CNT1
W1      MOVLW   255
        MOVWF   CNT2
W2      DECFSZ  CNT2,F
        GOTO    W2
        DECFSZ  CNT1,F
        GOTO    W1
        RETURN
        END
