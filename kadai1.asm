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
LOOP    MOVLW   B'01010101' ; 偶数番目のLEDを4個点灯する
        MOVWF   PORTB       ; Wの値をPORTBへ転送する
        CALL    WAIT        ; 少し待つ
        MOVLW   B'10101010' ; 奇数番目のLEDを4個点灯する
        MOVWF   PORTB       ; Wの値をPORTBへ転送する
        CALL    WAIT        ; 少し待つ
        GOTO    LOOP        ; くり返す
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
