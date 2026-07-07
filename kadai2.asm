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
LOOP    MOVLW   B'00000001' ; 0番目のLEDだけ点灯して調べる
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'00000010' ; 1番目のLEDだけ点灯して調べる
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'00000100' ; 2番目のLEDだけ点灯して調べる
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'00001000' ; 3番目のLEDだけ点灯して調べる
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'00010000' ; 4番目のLEDだけ点灯して調べる
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'00100000' ; 5番目のLEDだけ点灯して調べる
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'01000000' ; 6番目のLEDだけ点灯して調べる
        MOVWF   PORTB
        CALL    WAIT
        MOVLW   B'10000000' ; 7番目のLEDだけ点灯して調べる
        MOVWF   PORTB
        CALL    WAIT
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
