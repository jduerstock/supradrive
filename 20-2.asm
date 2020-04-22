; da65 V2.17 - Debian 2.17-1
; Created:    2020-04-19 15:24:19
; Input file: 20-2.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L2020           := $2020
L494A           := $494A
L5553           := $5553
L5942           := $5942
LD7E7           := $D7E7
LD7E9           := $D7E9
LD7EB           := $D7EB
LD7ED           := $D7ED
LD7EF           := $D7EF
LD7F1           := $D7F1
LE01D           := $E01D
LE031           := $E031
LE035           := $E035
; ----------------------------------------------------------------------------
        jmp     LD862                           ; D800 4C 62 D8                 Lb.

; ----------------------------------------------------------------------------
        .byte   $80                             ; D803 80                       .
        .byte   $FF                             ; D804 FF                       .
        jmp     LD852                           ; D805 4C 52 D8                 LR.

; ----------------------------------------------------------------------------
        jmp     LD851                           ; D808 4C 51 D8                 LQ.

; ----------------------------------------------------------------------------
        sta     ($70),y                         ; D80B 91 70                    .p
        bvc     LD7E7                           ; D80D 50 D8                    P.
        bvc     LD7E9                           ; D80F 50 D8                    P.
        bvc     LD7EB                           ; D811 50 D8                    P.
        bvc     LD7ED                           ; D813 50 D8                    P.
        bvc     LD7EF                           ; D815 50 D8                    P.
        bvc     LD7F1                           ; D817 50 D8                    P.
        jmp     LD81D                           ; D819 4C 1D D8                 L..

; ----------------------------------------------------------------------------
        brk                                     ; D81C 00                       .
LD81D:  lda     #$FF                            ; D81D A9 FF                    ..
        sta     $D10C                           ; D81F 8D 0C D1                 ...
        lda     #$06                            ; D822 A9 06                    ..
        sta     $D102                           ; D824 8D 02 D1                 ...
        lda     #$7F                            ; D827 A9 7F                    ..
        sta     $D10E                           ; D829 8D 0E D1                 ...
        lda     $D100                           ; D82C AD 00 D1                 ...
        and     #$40                            ; D82F 29 40                    )@
        beq     LD834                           ; D831 F0 01                    ..
        rts                                     ; D833 60                       `

; ----------------------------------------------------------------------------
LD834:  lda     $0248                           ; D834 AD 48 02                 .H.
        ldx     #$00                            ; D837 A2 00                    ..
LD839:  lsr     a                               ; D839 4A                       J
        inx                                     ; D83A E8                       .
        bcc     LD839                           ; D83B 90 FC                    ..
        lda     #$00                            ; D83D A9 00                    ..
LD83F:  rol     a                               ; D83F 2A                       *
        dex                                     ; D840 CA                       .
        bne     LD83F                           ; D841 D0 FC                    ..
        ora     $0247                           ; D843 0D 47 02                 .G.
        sta     $0247                           ; D846 8D 47 02                 .G.
        lda     $D107                           ; D849 AD 07 D1                 ...
        ora     #$10                            ; D84C 09 10                    ..
        sta     $D107                           ; D84E 8D 07 D1                 ...
LD851:  rts                                     ; D851 60                       `

; ----------------------------------------------------------------------------
LD852:  lda     $0300                           ; D852 AD 00 03                 ...
        cmp     #$40                            ; D855 C9 40                    .@
        bne     LD860                           ; D857 D0 07                    ..
        lda     $0301                           ; D859 AD 01 03                 ...
        cmp     #$01                            ; D85C C9 01                    ..
        beq     LD862                           ; D85E F0 02                    ..
LD860:  clc                                     ; D860 18                       .
        rts                                     ; D861 60                       `

; ----------------------------------------------------------------------------
LD862:  lda     $0302                           ; D862 AD 02 03                 ...
        cmp     #$53                            ; D865 C9 53                    .S
        bne     LD86C                           ; D867 D0 03                    ..
        jmp     LD8D5                           ; D869 4C D5 D8                 L..

; ----------------------------------------------------------------------------
LD86C:  cmp     #$57                            ; D86C C9 57                    .W
        beq     LD874                           ; D86E F0 04                    ..
        lda     #$8B                            ; D870 A9 8B                    ..
        sec                                     ; D872 38                       8
        rts                                     ; D873 60                       `

; ----------------------------------------------------------------------------
LD874:  ldy     #$03                            ; D874 A0 03                    ..
LD876:  lda     ($E0),y                         ; D876 B1 E0                    ..
        pha                                     ; D878 48                       H
        dey                                     ; D879 88                       .
        bne     LD876                           ; D87A D0 FA                    ..
        jsr     LD898                           ; D87C 20 98 D8                  ..
        sta     $4A                             ; D87F 85 4A                    .J
        ldx     #$03                            ; D881 A2 03                    ..
        ldy     #$00                            ; D883 A0 00                    ..
LD885:  pla                                     ; D885 68                       h
        sta     ($E0),y                         ; D886 91 E0                    ..
        iny                                     ; D888 C8                       .
        dex                                     ; D889 CA                       .
        bne     LD885                           ; D88A D0 F9                    ..
        lda     $4A                             ; D88C A5 4A                    .J
LD88E:  tay                                     ; D88E A8                       .
        iny                                     ; D88F C8                       .
        beq     LD895                           ; D890 F0 03                    ..
        tya                                     ; D892 98                       .
        sec                                     ; D893 38                       8
        rts                                     ; D894 60                       `

; ----------------------------------------------------------------------------
LD895:  tya                                     ; D895 98                       .
        clc                                     ; D896 18                       .
        rts                                     ; D897 60                       `

; ----------------------------------------------------------------------------
LD898:  jsr     LD91F                           ; D898 20 1F D9                  ..
        bpl     LD89E                           ; D89B 10 01                    ..
        rts                                     ; D89D 60                       `

; ----------------------------------------------------------------------------
LD89E:  lda     #$FF                            ; D89E A9 FF                    ..
        sta     $D103                           ; D8A0 8D 03 D1                 ...
        lda     $0304                           ; D8A3 AD 04 03                 ...
        sta     $E0                             ; D8A6 85 E0                    ..
        lda     $0305                           ; D8A8 AD 05 03                 ...
        sta     $E1                             ; D8AB 85 E1                    ..
        ldx     $0308                           ; D8AD AE 08 03                 ...
        ldy     #$00                            ; D8B0 A0 00                    ..
LD8B2:  lda     ($E0),y                         ; D8B2 B1 E0                    ..
        cmp     #$9B                            ; D8B4 C9 9B                    ..
        bne     LD8BE                           ; D8B6 D0 06                    ..
        jsr     LD908                           ; D8B8 20 08 D9                  ..
        jmp     LD8C5                           ; D8BB 4C C5 D8                 L..

; ----------------------------------------------------------------------------
LD8BE:  cmp     #$0D                            ; D8BE C9 0D                    ..
        bne     LD8C5                           ; D8C0 D0 03                    ..
        jsr     LD90A                           ; D8C2 20 0A D9                  ..
LD8C5:  sta     $D10F                           ; D8C5 8D 0F D1                 ...
        jsr     LD8F3                           ; D8C8 20 F3 D8                  ..
        iny                                     ; D8CB C8                       .
        dex                                     ; D8CC CA                       .
        bne     LD8B2                           ; D8CD D0 E3                    ..
        lda     #$00                            ; D8CF A9 00                    ..
        sta     $D103                           ; D8D1 8D 03 D1                 ...
        rts                                     ; D8D4 60                       `

; ----------------------------------------------------------------------------
LD8D5:  jsr     LD91F                           ; D8D5 20 1F D9                  ..
        bpl     LD8DD                           ; D8D8 10 03                    ..
        jmp     LD88E                           ; D8DA 4C 8E D8                 L..

; ----------------------------------------------------------------------------
LD8DD:  lda     #$00                            ; D8DD A9 00                    ..
        sta     $02EA                           ; D8DF 8D EA 02                 ...
        lda     #$4E                            ; D8E2 A9 4E                    .N
        sta     $02EB                           ; D8E4 8D EB 02                 ...
        lda     #$01                            ; D8E7 A9 01                    ..
        sta     $02EC                           ; D8E9 8D EC 02                 ...
        lda     #$00                            ; D8EC A9 00                    ..
        sta     $02ED                           ; D8EE 8D ED 02                 ...
        sec                                     ; D8F1 38                       8
        rts                                     ; D8F2 60                       `

; ----------------------------------------------------------------------------
LD8F3:  lda     #$20                            ; D8F3 A9 20                    . 
        eor     $D10C                           ; D8F5 4D 0C D1                 M..
        sta     $D10C                           ; D8F8 8D 0C D1                 ...
        eor     #$20                            ; D8FB 49 20                    I 
        sta     $D10C                           ; D8FD 8D 0C D1                 ...
LD900:  lda     $D100                           ; D900 AD 00 D1                 ...
        and     #$40                            ; D903 29 40                    )@
        bne     LD900                           ; D905 D0 F9                    ..
        rts                                     ; D907 60                       `

; ----------------------------------------------------------------------------
LD908:  ldx     #$01                            ; D908 A2 01                    ..
LD90A:  lda     $D107                           ; D90A AD 07 D1                 ...
        and     #$10                            ; D90D 29 10                    ).
        bne     LD914                           ; D90F D0 03                    ..
        lda     #$0D                            ; D911 A9 0D                    ..
        rts                                     ; D913 60                       `

; ----------------------------------------------------------------------------
LD914:  lda     #$0D                            ; D914 A9 0D                    ..
        sta     $D10F                           ; D916 8D 0F D1                 ...
        jsr     LD8F3                           ; D919 20 F3 D8                  ..
        lda     #$0A                            ; D91C A9 0A                    ..
        rts                                     ; D91E 60                       `

; ----------------------------------------------------------------------------
LD91F:  lda     $D100                           ; D91F AD 00 D1                 ...
        tax                                     ; D922 AA                       .
        and     #$80                            ; D923 29 80                    ).
        bne     LD92A                           ; D925 D0 03                    ..
        lda     #$FF                            ; D927 A9 FF                    ..
        rts                                     ; D929 60                       `

; ----------------------------------------------------------------------------
LD92A:  txa                                     ; D92A 8A                       .
        and     #$40                            ; D92B 29 40                    )@
        beq     LD943                           ; D92D F0 14                    ..
        lda     #$00                            ; D92F A9 00                    ..
        sta     $14                             ; D931 85 14                    ..
LD933:  lda     $D100                           ; D933 AD 00 D1                 ...
        and     #$40                            ; D936 29 40                    )@
        beq     LD943                           ; D938 F0 09                    ..
        lda     $14                             ; D93A A5 14                    ..
        cmp     #$3C                            ; D93C C9 3C                    .<
        bmi     LD933                           ; D93E 30 F3                    0.
        lda     #$89                            ; D940 A9 89                    ..
        rts                                     ; D942 60                       `

; ----------------------------------------------------------------------------
LD943:  lda     $D10D                           ; D943 AD 0D D1                 ...
        and     #$10                            ; D946 29 10                    ).
        beq     LD94D                           ; D948 F0 03                    ..
        lda     #$8A                            ; D94A A9 8A                    ..
        rts                                     ; D94C 60                       `

; ----------------------------------------------------------------------------
LD94D:  txa                                     ; D94D 8A                       .
        eor     #$01                            ; D94E 49 01                    I.
        and     #$01                            ; D950 29 01                    ).
        beq     LD957                           ; D952 F0 03                    ..
        lda     #$8A                            ; D954 A9 8A                    ..
        rts                                     ; D956 60                       `

; ----------------------------------------------------------------------------
LD957:  lda     #$00                            ; D957 A9 00                    ..
        rts                                     ; D959 60                       `

; ----------------------------------------------------------------------------
        .byte   $FF                             ; D95A FF                       .
        .byte   $FF                             ; D95B FF                       .
        .byte   $FF                             ; D95C FF                       .
        .byte   $FF                             ; D95D FF                       .
        .byte   $FF                             ; D95E FF                       .
        .byte   $FF                             ; D95F FF                       .
        .byte   $FF                             ; D960 FF                       .
        .byte   $FF                             ; D961 FF                       .
        .byte   $FF                             ; D962 FF                       .
        .byte   $FF                             ; D963 FF                       .
        .byte   $FF                             ; D964 FF                       .
        .byte   $FF                             ; D965 FF                       .
        .byte   $FF                             ; D966 FF                       .
        .byte   $FF                             ; D967 FF                       .
        .byte   $FF                             ; D968 FF                       .
        .byte   $FF                             ; D969 FF                       .
        .byte   $FF                             ; D96A FF                       .
        .byte   $FF                             ; D96B FF                       .
        .byte   $FF                             ; D96C FF                       .
        .byte   $FF                             ; D96D FF                       .
        .byte   $FF                             ; D96E FF                       .
        .byte   $FF                             ; D96F FF                       .
        .byte   $FF                             ; D970 FF                       .
        .byte   $FF                             ; D971 FF                       .
        .byte   $FF                             ; D972 FF                       .
        .byte   $FF                             ; D973 FF                       .
        .byte   $FF                             ; D974 FF                       .
        .byte   $FF                             ; D975 FF                       .
        .byte   $FF                             ; D976 FF                       .
        .byte   $FF                             ; D977 FF                       .
        .byte   $FF                             ; D978 FF                       .
        .byte   $FF                             ; D979 FF                       .
        .byte   $FF                             ; D97A FF                       .
        .byte   $FF                             ; D97B FF                       .
        .byte   $FF                             ; D97C FF                       .
        .byte   $FF                             ; D97D FF                       .
        .byte   $FF                             ; D97E FF                       .
        .byte   $FF                             ; D97F FF                       .
        .byte   $FF                             ; D980 FF                       .
        .byte   $FF                             ; D981 FF                       .
        .byte   $FF                             ; D982 FF                       .
        .byte   $FF                             ; D983 FF                       .
        .byte   $FF                             ; D984 FF                       .
        .byte   $FF                             ; D985 FF                       .
        .byte   $FF                             ; D986 FF                       .
        .byte   $FF                             ; D987 FF                       .
        .byte   $FF                             ; D988 FF                       .
        .byte   $FF                             ; D989 FF                       .
        .byte   $FF                             ; D98A FF                       .
        .byte   $FF                             ; D98B FF                       .
        .byte   $FF                             ; D98C FF                       .
        .byte   $FF                             ; D98D FF                       .
        .byte   $FF                             ; D98E FF                       .
        .byte   $FF                             ; D98F FF                       .
        .byte   $FF                             ; D990 FF                       .
        .byte   $FF                             ; D991 FF                       .
        .byte   $FF                             ; D992 FF                       .
        .byte   $FF                             ; D993 FF                       .
        .byte   $FF                             ; D994 FF                       .
        .byte   $FF                             ; D995 FF                       .
        .byte   $FF                             ; D996 FF                       .
        .byte   $FF                             ; D997 FF                       .
        .byte   $FF                             ; D998 FF                       .
        .byte   $FF                             ; D999 FF                       .
        .byte   $FF                             ; D99A FF                       .
        .byte   $FF                             ; D99B FF                       .
        .byte   $FF                             ; D99C FF                       .
        .byte   $FF                             ; D99D FF                       .
        .byte   $FF                             ; D99E FF                       .
        .byte   $FF                             ; D99F FF                       .
        .byte   $FF                             ; D9A0 FF                       .
        .byte   $FF                             ; D9A1 FF                       .
        .byte   $FF                             ; D9A2 FF                       .
        .byte   $FF                             ; D9A3 FF                       .
        .byte   $FF                             ; D9A4 FF                       .
        .byte   $FF                             ; D9A5 FF                       .
        .byte   $FF                             ; D9A6 FF                       .
        .byte   $FF                             ; D9A7 FF                       .
        .byte   $FF                             ; D9A8 FF                       .
        .byte   $FF                             ; D9A9 FF                       .
        .byte   $FF                             ; D9AA FF                       .
        .byte   $FF                             ; D9AB FF                       .
        .byte   $FF                             ; D9AC FF                       .
        .byte   $FF                             ; D9AD FF                       .
        .byte   $FF                             ; D9AE FF                       .
        .byte   $FF                             ; D9AF FF                       .
        .byte   $FF                             ; D9B0 FF                       .
        .byte   $FF                             ; D9B1 FF                       .
        .byte   $FF                             ; D9B2 FF                       .
        .byte   $FF                             ; D9B3 FF                       .
        .byte   $FF                             ; D9B4 FF                       .
        .byte   $FF                             ; D9B5 FF                       .
        .byte   $FF                             ; D9B6 FF                       .
        .byte   $FF                             ; D9B7 FF                       .
        .byte   $FF                             ; D9B8 FF                       .
        .byte   $FF                             ; D9B9 FF                       .
        .byte   $FF                             ; D9BA FF                       .
        .byte   $FF                             ; D9BB FF                       .
        .byte   $FF                             ; D9BC FF                       .
        .byte   $FF                             ; D9BD FF                       .
        .byte   $FF                             ; D9BE FF                       .
        .byte   $FF                             ; D9BF FF                       .
        .byte   $FF                             ; D9C0 FF                       .
        .byte   $FF                             ; D9C1 FF                       .
        .byte   $FF                             ; D9C2 FF                       .
        .byte   $FF                             ; D9C3 FF                       .
        .byte   $FF                             ; D9C4 FF                       .
        .byte   $FF                             ; D9C5 FF                       .
        .byte   $FF                             ; D9C6 FF                       .
        .byte   $FF                             ; D9C7 FF                       .
        .byte   $FF                             ; D9C8 FF                       .
        .byte   $FF                             ; D9C9 FF                       .
        .byte   $FF                             ; D9CA FF                       .
        .byte   $FF                             ; D9CB FF                       .
        .byte   $FF                             ; D9CC FF                       .
        .byte   $FF                             ; D9CD FF                       .
        .byte   $FF                             ; D9CE FF                       .
        .byte   $FF                             ; D9CF FF                       .
        .byte   $FF                             ; D9D0 FF                       .
        .byte   $FF                             ; D9D1 FF                       .
        .byte   $FF                             ; D9D2 FF                       .
        .byte   $FF                             ; D9D3 FF                       .
        .byte   $FF                             ; D9D4 FF                       .
        .byte   $FF                             ; D9D5 FF                       .
        .byte   $FF                             ; D9D6 FF                       .
        .byte   $FF                             ; D9D7 FF                       .
        .byte   $FF                             ; D9D8 FF                       .
        .byte   $FF                             ; D9D9 FF                       .
        .byte   $FF                             ; D9DA FF                       .
        .byte   $FF                             ; D9DB FF                       .
        .byte   $FF                             ; D9DC FF                       .
        .byte   $FF                             ; D9DD FF                       .
        .byte   $FF                             ; D9DE FF                       .
        .byte   $FF                             ; D9DF FF                       .
        .byte   $FF                             ; D9E0 FF                       .
        .byte   $FF                             ; D9E1 FF                       .
        .byte   $FF                             ; D9E2 FF                       .
        .byte   $FF                             ; D9E3 FF                       .
        .byte   $FF                             ; D9E4 FF                       .
        .byte   $FF                             ; D9E5 FF                       .
        .byte   $FF                             ; D9E6 FF                       .
        .byte   $FF                             ; D9E7 FF                       .
        .byte   $FF                             ; D9E8 FF                       .
        .byte   $FF                             ; D9E9 FF                       .
        .byte   $FF                             ; D9EA FF                       .
        .byte   $FF                             ; D9EB FF                       .
        .byte   $FF                             ; D9EC FF                       .
        .byte   $FF                             ; D9ED FF                       .
        .byte   $FF                             ; D9EE FF                       .
        .byte   $FF                             ; D9EF FF                       .
        .byte   $FF                             ; D9F0 FF                       .
        .byte   $FF                             ; D9F1 FF                       .
        .byte   $FF                             ; D9F2 FF                       .
        .byte   $FF                             ; D9F3 FF                       .
        .byte   $FF                             ; D9F4 FF                       .
        .byte   $FF                             ; D9F5 FF                       .
        .byte   $FF                             ; D9F6 FF                       .
        .byte   $FF                             ; D9F7 FF                       .
        .byte   $FF                             ; D9F8 FF                       .
        .byte   $FF                             ; D9F9 FF                       .
        .byte   $FF                             ; D9FA FF                       .
        .byte   $FF                             ; D9FB FF                       .
        .byte   $FF                             ; D9FC FF                       .
        .byte   $FF                             ; D9FD FF                       .
        .byte   $FF                             ; D9FE FF                       .
        .byte   $FF                             ; D9FF FF                       .
        .byte   $FF                             ; DA00 FF                       .
        .byte   $FF                             ; DA01 FF                       .
        .byte   $FF                             ; DA02 FF                       .
        .byte   $FF                             ; DA03 FF                       .
        .byte   $FF                             ; DA04 FF                       .
        .byte   $FF                             ; DA05 FF                       .
        .byte   $FF                             ; DA06 FF                       .
        .byte   $FF                             ; DA07 FF                       .
        .byte   $FF                             ; DA08 FF                       .
        .byte   $FF                             ; DA09 FF                       .
        .byte   $FF                             ; DA0A FF                       .
        .byte   $FF                             ; DA0B FF                       .
        .byte   $FF                             ; DA0C FF                       .
        .byte   $FF                             ; DA0D FF                       .
        .byte   $FF                             ; DA0E FF                       .
        .byte   $FF                             ; DA0F FF                       .
        .byte   $FF                             ; DA10 FF                       .
        .byte   $FF                             ; DA11 FF                       .
        .byte   $FF                             ; DA12 FF                       .
        .byte   $FF                             ; DA13 FF                       .
        .byte   $FF                             ; DA14 FF                       .
        .byte   $FF                             ; DA15 FF                       .
        .byte   $FF                             ; DA16 FF                       .
        .byte   $FF                             ; DA17 FF                       .
        .byte   $FF                             ; DA18 FF                       .
        .byte   $FF                             ; DA19 FF                       .
        .byte   $FF                             ; DA1A FF                       .
        .byte   $FF                             ; DA1B FF                       .
        .byte   $FF                             ; DA1C FF                       .
        .byte   $FF                             ; DA1D FF                       .
        .byte   $FF                             ; DA1E FF                       .
        .byte   $FF                             ; DA1F FF                       .
        .byte   $FF                             ; DA20 FF                       .
        .byte   $FF                             ; DA21 FF                       .
        .byte   $FF                             ; DA22 FF                       .
        .byte   $FF                             ; DA23 FF                       .
        .byte   $FF                             ; DA24 FF                       .
        .byte   $FF                             ; DA25 FF                       .
        .byte   $FF                             ; DA26 FF                       .
        .byte   $FF                             ; DA27 FF                       .
        .byte   $FF                             ; DA28 FF                       .
        .byte   $FF                             ; DA29 FF                       .
        .byte   $FF                             ; DA2A FF                       .
        .byte   $FF                             ; DA2B FF                       .
        .byte   $FF                             ; DA2C FF                       .
        .byte   $FF                             ; DA2D FF                       .
        .byte   $FF                             ; DA2E FF                       .
        .byte   $FF                             ; DA2F FF                       .
        .byte   $FF                             ; DA30 FF                       .
        .byte   $FF                             ; DA31 FF                       .
        .byte   $FF                             ; DA32 FF                       .
        .byte   $FF                             ; DA33 FF                       .
        .byte   $FF                             ; DA34 FF                       .
        .byte   $FF                             ; DA35 FF                       .
        .byte   $FF                             ; DA36 FF                       .
        .byte   $FF                             ; DA37 FF                       .
        .byte   $FF                             ; DA38 FF                       .
        .byte   $FF                             ; DA39 FF                       .
        .byte   $FF                             ; DA3A FF                       .
        .byte   $FF                             ; DA3B FF                       .
        .byte   $FF                             ; DA3C FF                       .
        .byte   $FF                             ; DA3D FF                       .
        .byte   $FF                             ; DA3E FF                       .
        .byte   $FF                             ; DA3F FF                       .
        .byte   $FF                             ; DA40 FF                       .
        .byte   $FF                             ; DA41 FF                       .
        .byte   $FF                             ; DA42 FF                       .
        .byte   $FF                             ; DA43 FF                       .
        .byte   $FF                             ; DA44 FF                       .
        .byte   $FF                             ; DA45 FF                       .
        .byte   $FF                             ; DA46 FF                       .
        .byte   $FF                             ; DA47 FF                       .
        .byte   $FF                             ; DA48 FF                       .
        .byte   $FF                             ; DA49 FF                       .
        .byte   $FF                             ; DA4A FF                       .
        .byte   $FF                             ; DA4B FF                       .
        .byte   $FF                             ; DA4C FF                       .
        .byte   $FF                             ; DA4D FF                       .
        .byte   $FF                             ; DA4E FF                       .
        .byte   $FF                             ; DA4F FF                       .
        .byte   $FF                             ; DA50 FF                       .
        .byte   $FF                             ; DA51 FF                       .
        .byte   $FF                             ; DA52 FF                       .
        .byte   $FF                             ; DA53 FF                       .
        .byte   $FF                             ; DA54 FF                       .
        .byte   $FF                             ; DA55 FF                       .
        .byte   $FF                             ; DA56 FF                       .
        .byte   $FF                             ; DA57 FF                       .
        .byte   $FF                             ; DA58 FF                       .
        .byte   $FF                             ; DA59 FF                       .
        .byte   $FF                             ; DA5A FF                       .
        .byte   $FF                             ; DA5B FF                       .
        .byte   $FF                             ; DA5C FF                       .
        .byte   $FF                             ; DA5D FF                       .
        .byte   $FF                             ; DA5E FF                       .
        .byte   $FF                             ; DA5F FF                       .
        .byte   $FF                             ; DA60 FF                       .
        .byte   $FF                             ; DA61 FF                       .
        .byte   $FF                             ; DA62 FF                       .
        .byte   $FF                             ; DA63 FF                       .
        .byte   $FF                             ; DA64 FF                       .
        .byte   $FF                             ; DA65 FF                       .
        .byte   $FF                             ; DA66 FF                       .
        .byte   $FF                             ; DA67 FF                       .
        .byte   $FF                             ; DA68 FF                       .
        .byte   $FF                             ; DA69 FF                       .
        .byte   $FF                             ; DA6A FF                       .
        .byte   $FF                             ; DA6B FF                       .
        .byte   $FF                             ; DA6C FF                       .
        .byte   $FF                             ; DA6D FF                       .
        .byte   $FF                             ; DA6E FF                       .
        .byte   $FF                             ; DA6F FF                       .
        .byte   $FF                             ; DA70 FF                       .
        .byte   $FF                             ; DA71 FF                       .
        .byte   $FF                             ; DA72 FF                       .
        .byte   $FF                             ; DA73 FF                       .
        .byte   $FF                             ; DA74 FF                       .
        .byte   $FF                             ; DA75 FF                       .
        .byte   $FF                             ; DA76 FF                       .
        .byte   $FF                             ; DA77 FF                       .
        .byte   $FF                             ; DA78 FF                       .
        .byte   $FF                             ; DA79 FF                       .
        .byte   $FF                             ; DA7A FF                       .
        .byte   $FF                             ; DA7B FF                       .
        .byte   $FF                             ; DA7C FF                       .
        .byte   $FF                             ; DA7D FF                       .
        .byte   $FF                             ; DA7E FF                       .
        .byte   $FF                             ; DA7F FF                       .
        .byte   $FF                             ; DA80 FF                       .
        .byte   $FF                             ; DA81 FF                       .
        .byte   $FF                             ; DA82 FF                       .
        .byte   $FF                             ; DA83 FF                       .
        .byte   $FF                             ; DA84 FF                       .
        .byte   $FF                             ; DA85 FF                       .
        .byte   $FF                             ; DA86 FF                       .
        .byte   $FF                             ; DA87 FF                       .
        .byte   $FF                             ; DA88 FF                       .
        .byte   $FF                             ; DA89 FF                       .
        .byte   $FF                             ; DA8A FF                       .
        .byte   $FF                             ; DA8B FF                       .
        .byte   $FF                             ; DA8C FF                       .
        .byte   $FF                             ; DA8D FF                       .
        .byte   $FF                             ; DA8E FF                       .
        .byte   $FF                             ; DA8F FF                       .
        .byte   $FF                             ; DA90 FF                       .
        .byte   $FF                             ; DA91 FF                       .
        .byte   $FF                             ; DA92 FF                       .
        .byte   $FF                             ; DA93 FF                       .
        .byte   $FF                             ; DA94 FF                       .
        .byte   $FF                             ; DA95 FF                       .
        .byte   $FF                             ; DA96 FF                       .
        .byte   $FF                             ; DA97 FF                       .
        .byte   $FF                             ; DA98 FF                       .
        .byte   $FF                             ; DA99 FF                       .
        .byte   $FF                             ; DA9A FF                       .
        .byte   $FF                             ; DA9B FF                       .
        .byte   $FF                             ; DA9C FF                       .
        .byte   $FF                             ; DA9D FF                       .
        .byte   $FF                             ; DA9E FF                       .
        .byte   $FF                             ; DA9F FF                       .
        .byte   $FF                             ; DAA0 FF                       .
        .byte   $FF                             ; DAA1 FF                       .
        .byte   $FF                             ; DAA2 FF                       .
        .byte   $FF                             ; DAA3 FF                       .
        .byte   $FF                             ; DAA4 FF                       .
        .byte   $FF                             ; DAA5 FF                       .
        .byte   $FF                             ; DAA6 FF                       .
        .byte   $FF                             ; DAA7 FF                       .
        .byte   $FF                             ; DAA8 FF                       .
        .byte   $FF                             ; DAA9 FF                       .
        .byte   $FF                             ; DAAA FF                       .
        .byte   $FF                             ; DAAB FF                       .
        .byte   $FF                             ; DAAC FF                       .
        .byte   $FF                             ; DAAD FF                       .
        .byte   $FF                             ; DAAE FF                       .
        .byte   $FF                             ; DAAF FF                       .
        .byte   $FF                             ; DAB0 FF                       .
        .byte   $FF                             ; DAB1 FF                       .
        .byte   $FF                             ; DAB2 FF                       .
        .byte   $FF                             ; DAB3 FF                       .
        .byte   $FF                             ; DAB4 FF                       .
        .byte   $FF                             ; DAB5 FF                       .
        .byte   $FF                             ; DAB6 FF                       .
        .byte   $FF                             ; DAB7 FF                       .
        .byte   $FF                             ; DAB8 FF                       .
        .byte   $FF                             ; DAB9 FF                       .
        .byte   $FF                             ; DABA FF                       .
        .byte   $FF                             ; DABB FF                       .
        .byte   $FF                             ; DABC FF                       .
        .byte   $FF                             ; DABD FF                       .
        .byte   $FF                             ; DABE FF                       .
        .byte   $FF                             ; DABF FF                       .
        .byte   $FF                             ; DAC0 FF                       .
        .byte   $FF                             ; DAC1 FF                       .
        .byte   $FF                             ; DAC2 FF                       .
        .byte   $FF                             ; DAC3 FF                       .
        .byte   $FF                             ; DAC4 FF                       .
        .byte   $FF                             ; DAC5 FF                       .
        .byte   $FF                             ; DAC6 FF                       .
        .byte   $FF                             ; DAC7 FF                       .
        .byte   $FF                             ; DAC8 FF                       .
        .byte   $FF                             ; DAC9 FF                       .
        .byte   $FF                             ; DACA FF                       .
        .byte   $FF                             ; DACB FF                       .
        .byte   $FF                             ; DACC FF                       .
        .byte   $FF                             ; DACD FF                       .
        .byte   $FF                             ; DACE FF                       .
        .byte   $FF                             ; DACF FF                       .
        .byte   $FF                             ; DAD0 FF                       .
        .byte   $FF                             ; DAD1 FF                       .
        .byte   $FF                             ; DAD2 FF                       .
        .byte   $FF                             ; DAD3 FF                       .
        .byte   $FF                             ; DAD4 FF                       .
        .byte   $FF                             ; DAD5 FF                       .
        .byte   $FF                             ; DAD6 FF                       .
        .byte   $FF                             ; DAD7 FF                       .
        .byte   $FF                             ; DAD8 FF                       .
        .byte   $FF                             ; DAD9 FF                       .
        .byte   $FF                             ; DADA FF                       .
        .byte   $FF                             ; DADB FF                       .
        .byte   $FF                             ; DADC FF                       .
        .byte   $FF                             ; DADD FF                       .
        .byte   $FF                             ; DADE FF                       .
        .byte   $FF                             ; DADF FF                       .
        .byte   $FF                             ; DAE0 FF                       .
        .byte   $FF                             ; DAE1 FF                       .
        .byte   $FF                             ; DAE2 FF                       .
        .byte   $FF                             ; DAE3 FF                       .
        .byte   $FF                             ; DAE4 FF                       .
        .byte   $FF                             ; DAE5 FF                       .
        .byte   $FF                             ; DAE6 FF                       .
        .byte   $FF                             ; DAE7 FF                       .
        .byte   $FF                             ; DAE8 FF                       .
        .byte   $FF                             ; DAE9 FF                       .
        .byte   $FF                             ; DAEA FF                       .
        .byte   $FF                             ; DAEB FF                       .
        .byte   $FF                             ; DAEC FF                       .
        .byte   $FF                             ; DAED FF                       .
        .byte   $FF                             ; DAEE FF                       .
        .byte   $FF                             ; DAEF FF                       .
        .byte   $FF                             ; DAF0 FF                       .
        .byte   $FF                             ; DAF1 FF                       .
        .byte   $FF                             ; DAF2 FF                       .
        .byte   $FF                             ; DAF3 FF                       .
        .byte   $FF                             ; DAF4 FF                       .
        .byte   $FF                             ; DAF5 FF                       .
        .byte   $FF                             ; DAF6 FF                       .
        .byte   $FF                             ; DAF7 FF                       .
        .byte   $FF                             ; DAF8 FF                       .
        .byte   $FF                             ; DAF9 FF                       .
        .byte   $FF                             ; DAFA FF                       .
        .byte   $FF                             ; DAFB FF                       .
        .byte   $FF                             ; DAFC FF                       .
        .byte   $FF                             ; DAFD FF                       .
        .byte   $FF                             ; DAFE FF                       .
        .byte   $FF                             ; DAFF FF                       .
        .byte   $FF                             ; DB00 FF                       .
        .byte   $FF                             ; DB01 FF                       .
        .byte   $FF                             ; DB02 FF                       .
        .byte   $FF                             ; DB03 FF                       .
        .byte   $FF                             ; DB04 FF                       .
        .byte   $FF                             ; DB05 FF                       .
        .byte   $FF                             ; DB06 FF                       .
        .byte   $FF                             ; DB07 FF                       .
        .byte   $FF                             ; DB08 FF                       .
        .byte   $FF                             ; DB09 FF                       .
        .byte   $FF                             ; DB0A FF                       .
        .byte   $FF                             ; DB0B FF                       .
        .byte   $FF                             ; DB0C FF                       .
        .byte   $FF                             ; DB0D FF                       .
        .byte   $FF                             ; DB0E FF                       .
        .byte   $FF                             ; DB0F FF                       .
        .byte   $FF                             ; DB10 FF                       .
        .byte   $FF                             ; DB11 FF                       .
        .byte   $FF                             ; DB12 FF                       .
        .byte   $FF                             ; DB13 FF                       .
        .byte   $FF                             ; DB14 FF                       .
        .byte   $FF                             ; DB15 FF                       .
        .byte   $FF                             ; DB16 FF                       .
        .byte   $FF                             ; DB17 FF                       .
        .byte   $FF                             ; DB18 FF                       .
        .byte   $FF                             ; DB19 FF                       .
        .byte   $FF                             ; DB1A FF                       .
        .byte   $FF                             ; DB1B FF                       .
        .byte   $FF                             ; DB1C FF                       .
        .byte   $FF                             ; DB1D FF                       .
        .byte   $FF                             ; DB1E FF                       .
        .byte   $FF                             ; DB1F FF                       .
        .byte   $FF                             ; DB20 FF                       .
        .byte   $FF                             ; DB21 FF                       .
        .byte   $FF                             ; DB22 FF                       .
        .byte   $FF                             ; DB23 FF                       .
        .byte   $FF                             ; DB24 FF                       .
        .byte   $FF                             ; DB25 FF                       .
        .byte   $FF                             ; DB26 FF                       .
        .byte   $FF                             ; DB27 FF                       .
        .byte   $FF                             ; DB28 FF                       .
        .byte   $FF                             ; DB29 FF                       .
        .byte   $FF                             ; DB2A FF                       .
        .byte   $FF                             ; DB2B FF                       .
        .byte   $FF                             ; DB2C FF                       .
        .byte   $FF                             ; DB2D FF                       .
        .byte   $FF                             ; DB2E FF                       .
        .byte   $FF                             ; DB2F FF                       .
        .byte   $FF                             ; DB30 FF                       .
        .byte   $FF                             ; DB31 FF                       .
        .byte   $FF                             ; DB32 FF                       .
        .byte   $FF                             ; DB33 FF                       .
        .byte   $FF                             ; DB34 FF                       .
        .byte   $FF                             ; DB35 FF                       .
        .byte   $FF                             ; DB36 FF                       .
        .byte   $FF                             ; DB37 FF                       .
        .byte   $FF                             ; DB38 FF                       .
        .byte   $FF                             ; DB39 FF                       .
        .byte   $FF                             ; DB3A FF                       .
        .byte   $FF                             ; DB3B FF                       .
        .byte   $FF                             ; DB3C FF                       .
        .byte   $FF                             ; DB3D FF                       .
        .byte   $FF                             ; DB3E FF                       .
        .byte   $FF                             ; DB3F FF                       .
        .byte   $FF                             ; DB40 FF                       .
        .byte   $FF                             ; DB41 FF                       .
        .byte   $FF                             ; DB42 FF                       .
        .byte   $FF                             ; DB43 FF                       .
        .byte   $FF                             ; DB44 FF                       .
        .byte   $FF                             ; DB45 FF                       .
        .byte   $FF                             ; DB46 FF                       .
        .byte   $FF                             ; DB47 FF                       .
        .byte   $FF                             ; DB48 FF                       .
        .byte   $FF                             ; DB49 FF                       .
        .byte   $FF                             ; DB4A FF                       .
        .byte   $FF                             ; DB4B FF                       .
        .byte   $FF                             ; DB4C FF                       .
        .byte   $FF                             ; DB4D FF                       .
        .byte   $FF                             ; DB4E FF                       .
        .byte   $FF                             ; DB4F FF                       .
        .byte   $FF                             ; DB50 FF                       .
        .byte   $FF                             ; DB51 FF                       .
        .byte   $FF                             ; DB52 FF                       .
        .byte   $FF                             ; DB53 FF                       .
        .byte   $FF                             ; DB54 FF                       .
        .byte   $FF                             ; DB55 FF                       .
        .byte   $FF                             ; DB56 FF                       .
        .byte   $FF                             ; DB57 FF                       .
        .byte   $FF                             ; DB58 FF                       .
        .byte   $FF                             ; DB59 FF                       .
        .byte   $FF                             ; DB5A FF                       .
        .byte   $FF                             ; DB5B FF                       .
        .byte   $FF                             ; DB5C FF                       .
        .byte   $FF                             ; DB5D FF                       .
        .byte   $FF                             ; DB5E FF                       .
        .byte   $FF                             ; DB5F FF                       .
        .byte   $FF                             ; DB60 FF                       .
        .byte   $FF                             ; DB61 FF                       .
        .byte   $FF                             ; DB62 FF                       .
        .byte   $FF                             ; DB63 FF                       .
        .byte   $FF                             ; DB64 FF                       .
        .byte   $FF                             ; DB65 FF                       .
        .byte   $FF                             ; DB66 FF                       .
        .byte   $FF                             ; DB67 FF                       .
        .byte   $FF                             ; DB68 FF                       .
        .byte   $FF                             ; DB69 FF                       .
        .byte   $FF                             ; DB6A FF                       .
        .byte   $FF                             ; DB6B FF                       .
        .byte   $FF                             ; DB6C FF                       .
        .byte   $FF                             ; DB6D FF                       .
        .byte   $FF                             ; DB6E FF                       .
        .byte   $FF                             ; DB6F FF                       .
        .byte   $FF                             ; DB70 FF                       .
        .byte   $FF                             ; DB71 FF                       .
        .byte   $FF                             ; DB72 FF                       .
        .byte   $FF                             ; DB73 FF                       .
        .byte   $FF                             ; DB74 FF                       .
        .byte   $FF                             ; DB75 FF                       .
        .byte   $FF                             ; DB76 FF                       .
        .byte   $FF                             ; DB77 FF                       .
        .byte   $FF                             ; DB78 FF                       .
        .byte   $FF                             ; DB79 FF                       .
        .byte   $FF                             ; DB7A FF                       .
        .byte   $FF                             ; DB7B FF                       .
        .byte   $FF                             ; DB7C FF                       .
        .byte   $FF                             ; DB7D FF                       .
        .byte   $FF                             ; DB7E FF                       .
        .byte   $FF                             ; DB7F FF                       .
        .byte   $FF                             ; DB80 FF                       .
        .byte   $FF                             ; DB81 FF                       .
        .byte   $FF                             ; DB82 FF                       .
        .byte   $FF                             ; DB83 FF                       .
        .byte   $FF                             ; DB84 FF                       .
        .byte   $FF                             ; DB85 FF                       .
        .byte   $FF                             ; DB86 FF                       .
        .byte   $FF                             ; DB87 FF                       .
        .byte   $FF                             ; DB88 FF                       .
        .byte   $FF                             ; DB89 FF                       .
        .byte   $FF                             ; DB8A FF                       .
        .byte   $FF                             ; DB8B FF                       .
        .byte   $FF                             ; DB8C FF                       .
        .byte   $FF                             ; DB8D FF                       .
        .byte   $FF                             ; DB8E FF                       .
        .byte   $FF                             ; DB8F FF                       .
        .byte   $FF                             ; DB90 FF                       .
        .byte   $FF                             ; DB91 FF                       .
        .byte   $FF                             ; DB92 FF                       .
        .byte   $FF                             ; DB93 FF                       .
        .byte   $FF                             ; DB94 FF                       .
        .byte   $FF                             ; DB95 FF                       .
        .byte   $FF                             ; DB96 FF                       .
        .byte   $FF                             ; DB97 FF                       .
        .byte   $FF                             ; DB98 FF                       .
        .byte   $FF                             ; DB99 FF                       .
        .byte   $FF                             ; DB9A FF                       .
        .byte   $FF                             ; DB9B FF                       .
        .byte   $FF                             ; DB9C FF                       .
        .byte   $FF                             ; DB9D FF                       .
        .byte   $FF                             ; DB9E FF                       .
        .byte   $FF                             ; DB9F FF                       .
        .byte   $FF                             ; DBA0 FF                       .
        .byte   $FF                             ; DBA1 FF                       .
        .byte   $FF                             ; DBA2 FF                       .
        .byte   $FF                             ; DBA3 FF                       .
        .byte   $FF                             ; DBA4 FF                       .
        .byte   $FF                             ; DBA5 FF                       .
        .byte   $FF                             ; DBA6 FF                       .
        .byte   $FF                             ; DBA7 FF                       .
        .byte   $FF                             ; DBA8 FF                       .
        .byte   $FF                             ; DBA9 FF                       .
        .byte   $FF                             ; DBAA FF                       .
        .byte   $FF                             ; DBAB FF                       .
        .byte   $FF                             ; DBAC FF                       .
        .byte   $FF                             ; DBAD FF                       .
        .byte   $FF                             ; DBAE FF                       .
        .byte   $FF                             ; DBAF FF                       .
        .byte   $FF                             ; DBB0 FF                       .
        .byte   $FF                             ; DBB1 FF                       .
        .byte   $FF                             ; DBB2 FF                       .
        .byte   $FF                             ; DBB3 FF                       .
        .byte   $FF                             ; DBB4 FF                       .
        .byte   $FF                             ; DBB5 FF                       .
        .byte   $FF                             ; DBB6 FF                       .
        .byte   $FF                             ; DBB7 FF                       .
        .byte   $FF                             ; DBB8 FF                       .
        .byte   $FF                             ; DBB9 FF                       .
        .byte   $FF                             ; DBBA FF                       .
        .byte   $FF                             ; DBBB FF                       .
        .byte   $FF                             ; DBBC FF                       .
        .byte   $FF                             ; DBBD FF                       .
        .byte   $FF                             ; DBBE FF                       .
        .byte   $FF                             ; DBBF FF                       .
        .byte   $FF                             ; DBC0 FF                       .
        .byte   $FF                             ; DBC1 FF                       .
        .byte   $FF                             ; DBC2 FF                       .
        .byte   $FF                             ; DBC3 FF                       .
        .byte   $FF                             ; DBC4 FF                       .
        .byte   $FF                             ; DBC5 FF                       .
        .byte   $FF                             ; DBC6 FF                       .
        .byte   $FF                             ; DBC7 FF                       .
        .byte   $FF                             ; DBC8 FF                       .
        .byte   $FF                             ; DBC9 FF                       .
        .byte   $FF                             ; DBCA FF                       .
        .byte   $FF                             ; DBCB FF                       .
        .byte   $FF                             ; DBCC FF                       .
        .byte   $FF                             ; DBCD FF                       .
        .byte   $FF                             ; DBCE FF                       .
        .byte   $FF                             ; DBCF FF                       .
        .byte   $FF                             ; DBD0 FF                       .
        .byte   $FF                             ; DBD1 FF                       .
        .byte   $FF                             ; DBD2 FF                       .
        .byte   $FF                             ; DBD3 FF                       .
        .byte   $FF                             ; DBD4 FF                       .
        .byte   $FF                             ; DBD5 FF                       .
        .byte   $FF                             ; DBD6 FF                       .
        .byte   $FF                             ; DBD7 FF                       .
        .byte   $FF                             ; DBD8 FF                       .
        .byte   $FF                             ; DBD9 FF                       .
        .byte   $FF                             ; DBDA FF                       .
        .byte   $FF                             ; DBDB FF                       .
        .byte   $FF                             ; DBDC FF                       .
        .byte   $FF                             ; DBDD FF                       .
        .byte   $FF                             ; DBDE FF                       .
        .byte   $FF                             ; DBDF FF                       .
        .byte   $FF                             ; DBE0 FF                       .
        .byte   $FF                             ; DBE1 FF                       .
        .byte   $FF                             ; DBE2 FF                       .
        .byte   $FF                             ; DBE3 FF                       .
        .byte   $FF                             ; DBE4 FF                       .
        .byte   $FF                             ; DBE5 FF                       .
        .byte   $FF                             ; DBE6 FF                       .
        .byte   $FF                             ; DBE7 FF                       .
        .byte   $FF                             ; DBE8 FF                       .
        .byte   $FF                             ; DBE9 FF                       .
        .byte   $FF                             ; DBEA FF                       .
        .byte   $FF                             ; DBEB FF                       .
        .byte   $FF                             ; DBEC FF                       .
        .byte   $FF                             ; DBED FF                       .
        .byte   $FF                             ; DBEE FF                       .
        .byte   $FF                             ; DBEF FF                       .
        .byte   $FF                             ; DBF0 FF                       .
        .byte   $FF                             ; DBF1 FF                       .
        .byte   $FF                             ; DBF2 FF                       .
        .byte   $FF                             ; DBF3 FF                       .
        .byte   $FF                             ; DBF4 FF                       .
        .byte   $FF                             ; DBF5 FF                       .
        .byte   $FF                             ; DBF6 FF                       .
        .byte   $FF                             ; DBF7 FF                       .
        .byte   $FF                             ; DBF8 FF                       .
        .byte   $FF                             ; DBF9 FF                       .
        .byte   $FF                             ; DBFA FF                       .
        .byte   $FF                             ; DBFB FF                       .
        .byte   $FF                             ; DBFC FF                       .
        .byte   $FF                             ; DBFD FF                       .
        .byte   $FF                             ; DBFE FF                       .
        .byte   $FF                             ; DBFF FF                       .
        .byte   $FF                             ; DC00 FF                       .
        .byte   $FF                             ; DC01 FF                       .
        .byte   $FF                             ; DC02 FF                       .
        .byte   $FF                             ; DC03 FF                       .
        .byte   $FF                             ; DC04 FF                       .
        .byte   $FF                             ; DC05 FF                       .
        .byte   $FF                             ; DC06 FF                       .
        .byte   $FF                             ; DC07 FF                       .
        .byte   $FF                             ; DC08 FF                       .
        .byte   $FF                             ; DC09 FF                       .
        .byte   $FF                             ; DC0A FF                       .
        .byte   $FF                             ; DC0B FF                       .
        .byte   $FF                             ; DC0C FF                       .
        .byte   $FF                             ; DC0D FF                       .
        .byte   $FF                             ; DC0E FF                       .
        .byte   $FF                             ; DC0F FF                       .
        .byte   $FF                             ; DC10 FF                       .
        .byte   $FF                             ; DC11 FF                       .
        .byte   $FF                             ; DC12 FF                       .
        .byte   $FF                             ; DC13 FF                       .
        .byte   $FF                             ; DC14 FF                       .
        .byte   $FF                             ; DC15 FF                       .
        .byte   $FF                             ; DC16 FF                       .
        .byte   $FF                             ; DC17 FF                       .
        .byte   $FF                             ; DC18 FF                       .
        .byte   $FF                             ; DC19 FF                       .
        .byte   $FF                             ; DC1A FF                       .
        .byte   $FF                             ; DC1B FF                       .
        .byte   $FF                             ; DC1C FF                       .
        .byte   $FF                             ; DC1D FF                       .
        .byte   $FF                             ; DC1E FF                       .
        .byte   $FF                             ; DC1F FF                       .
        .byte   $FF                             ; DC20 FF                       .
        .byte   $FF                             ; DC21 FF                       .
        .byte   $FF                             ; DC22 FF                       .
        .byte   $FF                             ; DC23 FF                       .
        .byte   $FF                             ; DC24 FF                       .
        .byte   $FF                             ; DC25 FF                       .
        .byte   $FF                             ; DC26 FF                       .
        .byte   $FF                             ; DC27 FF                       .
        .byte   $FF                             ; DC28 FF                       .
        .byte   $FF                             ; DC29 FF                       .
        .byte   $FF                             ; DC2A FF                       .
        .byte   $FF                             ; DC2B FF                       .
        .byte   $FF                             ; DC2C FF                       .
        .byte   $FF                             ; DC2D FF                       .
        .byte   $FF                             ; DC2E FF                       .
        .byte   $FF                             ; DC2F FF                       .
        .byte   $FF                             ; DC30 FF                       .
        .byte   $FF                             ; DC31 FF                       .
        .byte   $FF                             ; DC32 FF                       .
        .byte   $FF                             ; DC33 FF                       .
        .byte   $FF                             ; DC34 FF                       .
        .byte   $FF                             ; DC35 FF                       .
        .byte   $FF                             ; DC36 FF                       .
        .byte   $FF                             ; DC37 FF                       .
        .byte   $FF                             ; DC38 FF                       .
        .byte   $FF                             ; DC39 FF                       .
        .byte   $FF                             ; DC3A FF                       .
        .byte   $FF                             ; DC3B FF                       .
        .byte   $FF                             ; DC3C FF                       .
        .byte   $FF                             ; DC3D FF                       .
        .byte   $FF                             ; DC3E FF                       .
        .byte   $FF                             ; DC3F FF                       .
        .byte   $FF                             ; DC40 FF                       .
        .byte   $FF                             ; DC41 FF                       .
        .byte   $FF                             ; DC42 FF                       .
        .byte   $FF                             ; DC43 FF                       .
        .byte   $FF                             ; DC44 FF                       .
        .byte   $FF                             ; DC45 FF                       .
        .byte   $FF                             ; DC46 FF                       .
        .byte   $FF                             ; DC47 FF                       .
        .byte   $FF                             ; DC48 FF                       .
        .byte   $FF                             ; DC49 FF                       .
        .byte   $FF                             ; DC4A FF                       .
        .byte   $FF                             ; DC4B FF                       .
        .byte   $FF                             ; DC4C FF                       .
        .byte   $FF                             ; DC4D FF                       .
        .byte   $FF                             ; DC4E FF                       .
        .byte   $FF                             ; DC4F FF                       .
        .byte   $FF                             ; DC50 FF                       .
        .byte   $FF                             ; DC51 FF                       .
        .byte   $FF                             ; DC52 FF                       .
        .byte   $FF                             ; DC53 FF                       .
        .byte   $FF                             ; DC54 FF                       .
        .byte   $FF                             ; DC55 FF                       .
        .byte   $FF                             ; DC56 FF                       .
        .byte   $FF                             ; DC57 FF                       .
        .byte   $FF                             ; DC58 FF                       .
        .byte   $FF                             ; DC59 FF                       .
        .byte   $FF                             ; DC5A FF                       .
        .byte   $FF                             ; DC5B FF                       .
        .byte   $FF                             ; DC5C FF                       .
        .byte   $FF                             ; DC5D FF                       .
        .byte   $FF                             ; DC5E FF                       .
        .byte   $FF                             ; DC5F FF                       .
        .byte   $FF                             ; DC60 FF                       .
        .byte   $FF                             ; DC61 FF                       .
        .byte   $FF                             ; DC62 FF                       .
        .byte   $FF                             ; DC63 FF                       .
        .byte   $FF                             ; DC64 FF                       .
        .byte   $FF                             ; DC65 FF                       .
        .byte   $FF                             ; DC66 FF                       .
        .byte   $FF                             ; DC67 FF                       .
        .byte   $FF                             ; DC68 FF                       .
        .byte   $FF                             ; DC69 FF                       .
        .byte   $FF                             ; DC6A FF                       .
        .byte   $FF                             ; DC6B FF                       .
        .byte   $FF                             ; DC6C FF                       .
        .byte   $FF                             ; DC6D FF                       .
        .byte   $FF                             ; DC6E FF                       .
        .byte   $FF                             ; DC6F FF                       .
        .byte   $FF                             ; DC70 FF                       .
        .byte   $FF                             ; DC71 FF                       .
        .byte   $FF                             ; DC72 FF                       .
        .byte   $FF                             ; DC73 FF                       .
        .byte   $FF                             ; DC74 FF                       .
        .byte   $FF                             ; DC75 FF                       .
        .byte   $FF                             ; DC76 FF                       .
        .byte   $FF                             ; DC77 FF                       .
        .byte   $FF                             ; DC78 FF                       .
        .byte   $FF                             ; DC79 FF                       .
        .byte   $FF                             ; DC7A FF                       .
        .byte   $FF                             ; DC7B FF                       .
        .byte   $FF                             ; DC7C FF                       .
        .byte   $FF                             ; DC7D FF                       .
        .byte   $FF                             ; DC7E FF                       .
        .byte   $FF                             ; DC7F FF                       .
        .byte   $FF                             ; DC80 FF                       .
        .byte   $FF                             ; DC81 FF                       .
        .byte   $FF                             ; DC82 FF                       .
        .byte   $FF                             ; DC83 FF                       .
        .byte   $FF                             ; DC84 FF                       .
        .byte   $FF                             ; DC85 FF                       .
        .byte   $FF                             ; DC86 FF                       .
        .byte   $FF                             ; DC87 FF                       .
        .byte   $FF                             ; DC88 FF                       .
        .byte   $FF                             ; DC89 FF                       .
        .byte   $FF                             ; DC8A FF                       .
        .byte   $FF                             ; DC8B FF                       .
        .byte   $FF                             ; DC8C FF                       .
        .byte   $FF                             ; DC8D FF                       .
        .byte   $FF                             ; DC8E FF                       .
        .byte   $FF                             ; DC8F FF                       .
        .byte   $FF                             ; DC90 FF                       .
        .byte   $FF                             ; DC91 FF                       .
        .byte   $FF                             ; DC92 FF                       .
        .byte   $FF                             ; DC93 FF                       .
        .byte   $FF                             ; DC94 FF                       .
        .byte   $FF                             ; DC95 FF                       .
        .byte   $FF                             ; DC96 FF                       .
        .byte   $FF                             ; DC97 FF                       .
        .byte   $FF                             ; DC98 FF                       .
        .byte   $FF                             ; DC99 FF                       .
        .byte   $FF                             ; DC9A FF                       .
        .byte   $FF                             ; DC9B FF                       .
        .byte   $FF                             ; DC9C FF                       .
        .byte   $FF                             ; DC9D FF                       .
        .byte   $FF                             ; DC9E FF                       .
        .byte   $FF                             ; DC9F FF                       .
        .byte   $FF                             ; DCA0 FF                       .
        .byte   $FF                             ; DCA1 FF                       .
        .byte   $FF                             ; DCA2 FF                       .
        .byte   $FF                             ; DCA3 FF                       .
        .byte   $FF                             ; DCA4 FF                       .
        .byte   $FF                             ; DCA5 FF                       .
        .byte   $FF                             ; DCA6 FF                       .
        .byte   $FF                             ; DCA7 FF                       .
        .byte   $FF                             ; DCA8 FF                       .
        .byte   $FF                             ; DCA9 FF                       .
        .byte   $FF                             ; DCAA FF                       .
        .byte   $FF                             ; DCAB FF                       .
        .byte   $FF                             ; DCAC FF                       .
        .byte   $FF                             ; DCAD FF                       .
        .byte   $FF                             ; DCAE FF                       .
        .byte   $FF                             ; DCAF FF                       .
        .byte   $FF                             ; DCB0 FF                       .
        .byte   $FF                             ; DCB1 FF                       .
        .byte   $FF                             ; DCB2 FF                       .
        .byte   $FF                             ; DCB3 FF                       .
        .byte   $FF                             ; DCB4 FF                       .
        .byte   $FF                             ; DCB5 FF                       .
        .byte   $FF                             ; DCB6 FF                       .
        .byte   $FF                             ; DCB7 FF                       .
        .byte   $FF                             ; DCB8 FF                       .
        .byte   $FF                             ; DCB9 FF                       .
        .byte   $FF                             ; DCBA FF                       .
        .byte   $FF                             ; DCBB FF                       .
        .byte   $FF                             ; DCBC FF                       .
        .byte   $FF                             ; DCBD FF                       .
        .byte   $FF                             ; DCBE FF                       .
        .byte   $FF                             ; DCBF FF                       .
        .byte   $FF                             ; DCC0 FF                       .
        .byte   $FF                             ; DCC1 FF                       .
        .byte   $FF                             ; DCC2 FF                       .
        .byte   $FF                             ; DCC3 FF                       .
        .byte   $FF                             ; DCC4 FF                       .
        .byte   $FF                             ; DCC5 FF                       .
        .byte   $FF                             ; DCC6 FF                       .
        .byte   $FF                             ; DCC7 FF                       .
        .byte   $FF                             ; DCC8 FF                       .
        .byte   $FF                             ; DCC9 FF                       .
        .byte   $FF                             ; DCCA FF                       .
        .byte   $FF                             ; DCCB FF                       .
        .byte   $FF                             ; DCCC FF                       .
        .byte   $FF                             ; DCCD FF                       .
        .byte   $FF                             ; DCCE FF                       .
        .byte   $FF                             ; DCCF FF                       .
        .byte   $FF                             ; DCD0 FF                       .
        .byte   $FF                             ; DCD1 FF                       .
        .byte   $FF                             ; DCD2 FF                       .
        .byte   $FF                             ; DCD3 FF                       .
        .byte   $FF                             ; DCD4 FF                       .
        .byte   $FF                             ; DCD5 FF                       .
        .byte   $FF                             ; DCD6 FF                       .
        .byte   $FF                             ; DCD7 FF                       .
        .byte   $FF                             ; DCD8 FF                       .
        .byte   $FF                             ; DCD9 FF                       .
        .byte   $FF                             ; DCDA FF                       .
        .byte   $FF                             ; DCDB FF                       .
        .byte   $FF                             ; DCDC FF                       .
        .byte   $FF                             ; DCDD FF                       .
        .byte   $FF                             ; DCDE FF                       .
        .byte   $FF                             ; DCDF FF                       .
        .byte   $FF                             ; DCE0 FF                       .
        .byte   $FF                             ; DCE1 FF                       .
        .byte   $FF                             ; DCE2 FF                       .
        .byte   $FF                             ; DCE3 FF                       .
        .byte   $FF                             ; DCE4 FF                       .
        .byte   $FF                             ; DCE5 FF                       .
        .byte   $FF                             ; DCE6 FF                       .
        .byte   $FF                             ; DCE7 FF                       .
        .byte   $FF                             ; DCE8 FF                       .
        .byte   $FF                             ; DCE9 FF                       .
        .byte   $FF                             ; DCEA FF                       .
        .byte   $FF                             ; DCEB FF                       .
        .byte   $FF                             ; DCEC FF                       .
        .byte   $FF                             ; DCED FF                       .
        .byte   $FF                             ; DCEE FF                       .
        .byte   $FF                             ; DCEF FF                       .
        .byte   $FF                             ; DCF0 FF                       .
        .byte   $FF                             ; DCF1 FF                       .
        .byte   $FF                             ; DCF2 FF                       .
        .byte   $FF                             ; DCF3 FF                       .
        .byte   $FF                             ; DCF4 FF                       .
        .byte   $FF                             ; DCF5 FF                       .
        .byte   $FF                             ; DCF6 FF                       .
        .byte   $FF                             ; DCF7 FF                       .
        .byte   $FF                             ; DCF8 FF                       .
        .byte   $FF                             ; DCF9 FF                       .
        .byte   $FF                             ; DCFA FF                       .
        .byte   $FF                             ; DCFB FF                       .
        .byte   $FF                             ; DCFC FF                       .
        .byte   $FF                             ; DCFD FF                       .
        .byte   $FF                             ; DCFE FF                       .
        .byte   $FF                             ; DCFF FF                       .
        .byte   $FF                             ; DD00 FF                       .
        .byte   $FF                             ; DD01 FF                       .
        .byte   $FF                             ; DD02 FF                       .
        .byte   $FF                             ; DD03 FF                       .
        .byte   $FF                             ; DD04 FF                       .
        .byte   $FF                             ; DD05 FF                       .
        .byte   $FF                             ; DD06 FF                       .
        .byte   $FF                             ; DD07 FF                       .
        .byte   $FF                             ; DD08 FF                       .
        .byte   $FF                             ; DD09 FF                       .
        .byte   $FF                             ; DD0A FF                       .
        .byte   $FF                             ; DD0B FF                       .
        .byte   $FF                             ; DD0C FF                       .
        .byte   $FF                             ; DD0D FF                       .
        .byte   $FF                             ; DD0E FF                       .
        .byte   $FF                             ; DD0F FF                       .
        .byte   $FF                             ; DD10 FF                       .
        .byte   $FF                             ; DD11 FF                       .
        .byte   $FF                             ; DD12 FF                       .
        .byte   $FF                             ; DD13 FF                       .
        .byte   $FF                             ; DD14 FF                       .
        .byte   $FF                             ; DD15 FF                       .
        .byte   $FF                             ; DD16 FF                       .
        .byte   $FF                             ; DD17 FF                       .
        .byte   $FF                             ; DD18 FF                       .
        .byte   $FF                             ; DD19 FF                       .
        .byte   $FF                             ; DD1A FF                       .
        .byte   $FF                             ; DD1B FF                       .
        .byte   $FF                             ; DD1C FF                       .
        .byte   $FF                             ; DD1D FF                       .
        .byte   $FF                             ; DD1E FF                       .
        .byte   $FF                             ; DD1F FF                       .
        .byte   $FF                             ; DD20 FF                       .
        .byte   $FF                             ; DD21 FF                       .
        .byte   $FF                             ; DD22 FF                       .
        .byte   $FF                             ; DD23 FF                       .
        .byte   $FF                             ; DD24 FF                       .
        .byte   $FF                             ; DD25 FF                       .
        .byte   $FF                             ; DD26 FF                       .
        .byte   $FF                             ; DD27 FF                       .
        .byte   $FF                             ; DD28 FF                       .
        .byte   $FF                             ; DD29 FF                       .
        .byte   $FF                             ; DD2A FF                       .
        .byte   $FF                             ; DD2B FF                       .
        .byte   $FF                             ; DD2C FF                       .
        .byte   $FF                             ; DD2D FF                       .
        .byte   $FF                             ; DD2E FF                       .
        .byte   $FF                             ; DD2F FF                       .
        .byte   $FF                             ; DD30 FF                       .
        .byte   $FF                             ; DD31 FF                       .
        .byte   $FF                             ; DD32 FF                       .
        .byte   $FF                             ; DD33 FF                       .
        .byte   $FF                             ; DD34 FF                       .
        .byte   $FF                             ; DD35 FF                       .
        .byte   $FF                             ; DD36 FF                       .
        .byte   $FF                             ; DD37 FF                       .
        .byte   $FF                             ; DD38 FF                       .
        .byte   $FF                             ; DD39 FF                       .
        .byte   $FF                             ; DD3A FF                       .
        .byte   $FF                             ; DD3B FF                       .
        .byte   $FF                             ; DD3C FF                       .
        .byte   $FF                             ; DD3D FF                       .
        .byte   $FF                             ; DD3E FF                       .
        .byte   $FF                             ; DD3F FF                       .
        .byte   $FF                             ; DD40 FF                       .
        .byte   $FF                             ; DD41 FF                       .
        .byte   $FF                             ; DD42 FF                       .
        .byte   $FF                             ; DD43 FF                       .
        .byte   $FF                             ; DD44 FF                       .
        .byte   $FF                             ; DD45 FF                       .
        .byte   $FF                             ; DD46 FF                       .
        .byte   $FF                             ; DD47 FF                       .
        .byte   $FF                             ; DD48 FF                       .
        .byte   $FF                             ; DD49 FF                       .
        .byte   $FF                             ; DD4A FF                       .
        .byte   $FF                             ; DD4B FF                       .
        .byte   $FF                             ; DD4C FF                       .
        .byte   $FF                             ; DD4D FF                       .
        .byte   $FF                             ; DD4E FF                       .
        .byte   $FF                             ; DD4F FF                       .
        .byte   $FF                             ; DD50 FF                       .
        .byte   $FF                             ; DD51 FF                       .
        .byte   $FF                             ; DD52 FF                       .
        .byte   $FF                             ; DD53 FF                       .
        .byte   $FF                             ; DD54 FF                       .
        .byte   $FF                             ; DD55 FF                       .
        .byte   $FF                             ; DD56 FF                       .
        .byte   $FF                             ; DD57 FF                       .
        .byte   $FF                             ; DD58 FF                       .
        .byte   $FF                             ; DD59 FF                       .
        .byte   $FF                             ; DD5A FF                       .
        .byte   $FF                             ; DD5B FF                       .
        .byte   $FF                             ; DD5C FF                       .
        .byte   $FF                             ; DD5D FF                       .
        .byte   $FF                             ; DD5E FF                       .
        .byte   $FF                             ; DD5F FF                       .
        .byte   $FF                             ; DD60 FF                       .
        .byte   $FF                             ; DD61 FF                       .
        .byte   $FF                             ; DD62 FF                       .
        .byte   $FF                             ; DD63 FF                       .
        .byte   $FF                             ; DD64 FF                       .
        .byte   $FF                             ; DD65 FF                       .
        .byte   $FF                             ; DD66 FF                       .
        .byte   $FF                             ; DD67 FF                       .
        .byte   $FF                             ; DD68 FF                       .
        .byte   $FF                             ; DD69 FF                       .
        .byte   $FF                             ; DD6A FF                       .
        .byte   $FF                             ; DD6B FF                       .
        .byte   $FF                             ; DD6C FF                       .
        .byte   $FF                             ; DD6D FF                       .
        .byte   $FF                             ; DD6E FF                       .
        .byte   $FF                             ; DD6F FF                       .
        .byte   $FF                             ; DD70 FF                       .
        .byte   $FF                             ; DD71 FF                       .
        .byte   $FF                             ; DD72 FF                       .
        .byte   $FF                             ; DD73 FF                       .
        .byte   $FF                             ; DD74 FF                       .
        .byte   $FF                             ; DD75 FF                       .
        .byte   $FF                             ; DD76 FF                       .
        .byte   $FF                             ; DD77 FF                       .
        .byte   $FF                             ; DD78 FF                       .
        .byte   $FF                             ; DD79 FF                       .
        .byte   $FF                             ; DD7A FF                       .
        .byte   $FF                             ; DD7B FF                       .
        .byte   $FF                             ; DD7C FF                       .
        .byte   $FF                             ; DD7D FF                       .
        .byte   $FF                             ; DD7E FF                       .
        .byte   $FF                             ; DD7F FF                       .
        .byte   $FF                             ; DD80 FF                       .
        .byte   $FF                             ; DD81 FF                       .
        .byte   $FF                             ; DD82 FF                       .
        .byte   $FF                             ; DD83 FF                       .
        .byte   $FF                             ; DD84 FF                       .
        .byte   $FF                             ; DD85 FF                       .
        .byte   $FF                             ; DD86 FF                       .
        .byte   $FF                             ; DD87 FF                       .
        .byte   $FF                             ; DD88 FF                       .
        .byte   $FF                             ; DD89 FF                       .
        .byte   $FF                             ; DD8A FF                       .
        .byte   $FF                             ; DD8B FF                       .
        .byte   $FF                             ; DD8C FF                       .
        .byte   $FF                             ; DD8D FF                       .
        .byte   $FF                             ; DD8E FF                       .
        .byte   $FF                             ; DD8F FF                       .
        .byte   $FF                             ; DD90 FF                       .
        .byte   $FF                             ; DD91 FF                       .
        .byte   $FF                             ; DD92 FF                       .
        .byte   $FF                             ; DD93 FF                       .
        .byte   $FF                             ; DD94 FF                       .
        .byte   $FF                             ; DD95 FF                       .
        .byte   $FF                             ; DD96 FF                       .
        .byte   $FF                             ; DD97 FF                       .
        .byte   $FF                             ; DD98 FF                       .
        .byte   $FF                             ; DD99 FF                       .
        .byte   $FF                             ; DD9A FF                       .
        .byte   $FF                             ; DD9B FF                       .
        .byte   $FF                             ; DD9C FF                       .
        .byte   $FF                             ; DD9D FF                       .
        .byte   $FF                             ; DD9E FF                       .
        .byte   $FF                             ; DD9F FF                       .
        .byte   $FF                             ; DDA0 FF                       .
        .byte   $FF                             ; DDA1 FF                       .
        .byte   $FF                             ; DDA2 FF                       .
        .byte   $FF                             ; DDA3 FF                       .
        .byte   $FF                             ; DDA4 FF                       .
        .byte   $FF                             ; DDA5 FF                       .
        .byte   $FF                             ; DDA6 FF                       .
        .byte   $FF                             ; DDA7 FF                       .
        .byte   $FF                             ; DDA8 FF                       .
        .byte   $FF                             ; DDA9 FF                       .
        .byte   $FF                             ; DDAA FF                       .
        .byte   $FF                             ; DDAB FF                       .
        .byte   $FF                             ; DDAC FF                       .
        .byte   $FF                             ; DDAD FF                       .
        .byte   $FF                             ; DDAE FF                       .
        .byte   $FF                             ; DDAF FF                       .
        .byte   $FF                             ; DDB0 FF                       .
        .byte   $FF                             ; DDB1 FF                       .
        .byte   $FF                             ; DDB2 FF                       .
        .byte   $FF                             ; DDB3 FF                       .
        .byte   $FF                             ; DDB4 FF                       .
        .byte   $FF                             ; DDB5 FF                       .
        .byte   $FF                             ; DDB6 FF                       .
        .byte   $FF                             ; DDB7 FF                       .
        .byte   $FF                             ; DDB8 FF                       .
        .byte   $FF                             ; DDB9 FF                       .
        .byte   $FF                             ; DDBA FF                       .
        .byte   $FF                             ; DDBB FF                       .
        .byte   $FF                             ; DDBC FF                       .
        .byte   $FF                             ; DDBD FF                       .
        .byte   $FF                             ; DDBE FF                       .
        .byte   $FF                             ; DDBF FF                       .
        .byte   $FF                             ; DDC0 FF                       .
        .byte   $FF                             ; DDC1 FF                       .
        .byte   $FF                             ; DDC2 FF                       .
        .byte   $FF                             ; DDC3 FF                       .
        .byte   $FF                             ; DDC4 FF                       .
        .byte   $FF                             ; DDC5 FF                       .
        .byte   $FF                             ; DDC6 FF                       .
        .byte   $FF                             ; DDC7 FF                       .
        .byte   $FF                             ; DDC8 FF                       .
        .byte   $FF                             ; DDC9 FF                       .
        .byte   $FF                             ; DDCA FF                       .
        .byte   $FF                             ; DDCB FF                       .
        .byte   $FF                             ; DDCC FF                       .
        .byte   $FF                             ; DDCD FF                       .
        .byte   $FF                             ; DDCE FF                       .
        .byte   $FF                             ; DDCF FF                       .
        .byte   $FF                             ; DDD0 FF                       .
        .byte   $FF                             ; DDD1 FF                       .
        .byte   $FF                             ; DDD2 FF                       .
        .byte   $FF                             ; DDD3 FF                       .
        .byte   $FF                             ; DDD4 FF                       .
        .byte   $FF                             ; DDD5 FF                       .
        .byte   $FF                             ; DDD6 FF                       .
        .byte   $FF                             ; DDD7 FF                       .
        .byte   $FF                             ; DDD8 FF                       .
        .byte   $FF                             ; DDD9 FF                       .
        .byte   $FF                             ; DDDA FF                       .
        .byte   $FF                             ; DDDB FF                       .
        .byte   $FF                             ; DDDC FF                       .
        .byte   $FF                             ; DDDD FF                       .
        .byte   $FF                             ; DDDE FF                       .
        .byte   $FF                             ; DDDF FF                       .
        .byte   $FF                             ; DDE0 FF                       .
        .byte   $FF                             ; DDE1 FF                       .
        .byte   $FF                             ; DDE2 FF                       .
        .byte   $FF                             ; DDE3 FF                       .
        .byte   $FF                             ; DDE4 FF                       .
        .byte   $FF                             ; DDE5 FF                       .
        .byte   $FF                             ; DDE6 FF                       .
        .byte   $FF                             ; DDE7 FF                       .
        .byte   $FF                             ; DDE8 FF                       .
        .byte   $FF                             ; DDE9 FF                       .
        .byte   $FF                             ; DDEA FF                       .
        .byte   $FF                             ; DDEB FF                       .
        .byte   $FF                             ; DDEC FF                       .
        .byte   $FF                             ; DDED FF                       .
        .byte   $FF                             ; DDEE FF                       .
        .byte   $FF                             ; DDEF FF                       .
        .byte   $FF                             ; DDF0 FF                       .
        .byte   $FF                             ; DDF1 FF                       .
        .byte   $FF                             ; DDF2 FF                       .
        .byte   $FF                             ; DDF3 FF                       .
        .byte   $FF                             ; DDF4 FF                       .
        .byte   $FF                             ; DDF5 FF                       .
        .byte   $FF                             ; DDF6 FF                       .
        .byte   $FF                             ; DDF7 FF                       .
        .byte   $FF                             ; DDF8 FF                       .
        .byte   $FF                             ; DDF9 FF                       .
        .byte   $FF                             ; DDFA FF                       .
        .byte   $FF                             ; DDFB FF                       .
        .byte   $FF                             ; DDFC FF                       .
        .byte   $FF                             ; DDFD FF                       .
        .byte   $FF                             ; DDFE FF                       .
        .byte   $FF                             ; DDFF FF                       .
        .byte   $FF                             ; DE00 FF                       .
        .byte   $FF                             ; DE01 FF                       .
        .byte   $FF                             ; DE02 FF                       .
        .byte   $FF                             ; DE03 FF                       .
        .byte   $FF                             ; DE04 FF                       .
        .byte   $FF                             ; DE05 FF                       .
        .byte   $FF                             ; DE06 FF                       .
        .byte   $FF                             ; DE07 FF                       .
        .byte   $FF                             ; DE08 FF                       .
        .byte   $FF                             ; DE09 FF                       .
        .byte   $FF                             ; DE0A FF                       .
        .byte   $FF                             ; DE0B FF                       .
        .byte   $FF                             ; DE0C FF                       .
        .byte   $FF                             ; DE0D FF                       .
        .byte   $FF                             ; DE0E FF                       .
        .byte   $FF                             ; DE0F FF                       .
        .byte   $FF                             ; DE10 FF                       .
        .byte   $FF                             ; DE11 FF                       .
        .byte   $FF                             ; DE12 FF                       .
        .byte   $FF                             ; DE13 FF                       .
        .byte   $FF                             ; DE14 FF                       .
        .byte   $FF                             ; DE15 FF                       .
        .byte   $FF                             ; DE16 FF                       .
        .byte   $FF                             ; DE17 FF                       .
        .byte   $FF                             ; DE18 FF                       .
        .byte   $FF                             ; DE19 FF                       .
        .byte   $FF                             ; DE1A FF                       .
        .byte   $FF                             ; DE1B FF                       .
        .byte   $FF                             ; DE1C FF                       .
        .byte   $FF                             ; DE1D FF                       .
        .byte   $FF                             ; DE1E FF                       .
        .byte   $FF                             ; DE1F FF                       .
        .byte   $FF                             ; DE20 FF                       .
        .byte   $FF                             ; DE21 FF                       .
        .byte   $FF                             ; DE22 FF                       .
        .byte   $FF                             ; DE23 FF                       .
        .byte   $FF                             ; DE24 FF                       .
        .byte   $FF                             ; DE25 FF                       .
        .byte   $FF                             ; DE26 FF                       .
        .byte   $FF                             ; DE27 FF                       .
        .byte   $FF                             ; DE28 FF                       .
        .byte   $FF                             ; DE29 FF                       .
        .byte   $FF                             ; DE2A FF                       .
        .byte   $FF                             ; DE2B FF                       .
        .byte   $FF                             ; DE2C FF                       .
        .byte   $FF                             ; DE2D FF                       .
        .byte   $FF                             ; DE2E FF                       .
        .byte   $FF                             ; DE2F FF                       .
        .byte   $FF                             ; DE30 FF                       .
        .byte   $FF                             ; DE31 FF                       .
        .byte   $FF                             ; DE32 FF                       .
        .byte   $FF                             ; DE33 FF                       .
        .byte   $FF                             ; DE34 FF                       .
        .byte   $FF                             ; DE35 FF                       .
        .byte   $FF                             ; DE36 FF                       .
        .byte   $FF                             ; DE37 FF                       .
        .byte   $FF                             ; DE38 FF                       .
        .byte   $FF                             ; DE39 FF                       .
        .byte   $FF                             ; DE3A FF                       .
        .byte   $FF                             ; DE3B FF                       .
        .byte   $FF                             ; DE3C FF                       .
        .byte   $FF                             ; DE3D FF                       .
        .byte   $FF                             ; DE3E FF                       .
        .byte   $FF                             ; DE3F FF                       .
        .byte   $FF                             ; DE40 FF                       .
        .byte   $FF                             ; DE41 FF                       .
        .byte   $FF                             ; DE42 FF                       .
        .byte   $FF                             ; DE43 FF                       .
        .byte   $FF                             ; DE44 FF                       .
        .byte   $FF                             ; DE45 FF                       .
        .byte   $FF                             ; DE46 FF                       .
        .byte   $FF                             ; DE47 FF                       .
        .byte   $FF                             ; DE48 FF                       .
        .byte   $FF                             ; DE49 FF                       .
        .byte   $FF                             ; DE4A FF                       .
        .byte   $FF                             ; DE4B FF                       .
        .byte   $FF                             ; DE4C FF                       .
        .byte   $FF                             ; DE4D FF                       .
        .byte   $FF                             ; DE4E FF                       .
        .byte   $FF                             ; DE4F FF                       .
        .byte   $FF                             ; DE50 FF                       .
        .byte   $FF                             ; DE51 FF                       .
        .byte   $FF                             ; DE52 FF                       .
        .byte   $FF                             ; DE53 FF                       .
        .byte   $FF                             ; DE54 FF                       .
        .byte   $FF                             ; DE55 FF                       .
        .byte   $FF                             ; DE56 FF                       .
        .byte   $FF                             ; DE57 FF                       .
        .byte   $FF                             ; DE58 FF                       .
        .byte   $FF                             ; DE59 FF                       .
        .byte   $FF                             ; DE5A FF                       .
        .byte   $FF                             ; DE5B FF                       .
        .byte   $FF                             ; DE5C FF                       .
        .byte   $FF                             ; DE5D FF                       .
        .byte   $FF                             ; DE5E FF                       .
        .byte   $FF                             ; DE5F FF                       .
        .byte   $FF                             ; DE60 FF                       .
        .byte   $FF                             ; DE61 FF                       .
        .byte   $FF                             ; DE62 FF                       .
        .byte   $FF                             ; DE63 FF                       .
        .byte   $FF                             ; DE64 FF                       .
        .byte   $FF                             ; DE65 FF                       .
        .byte   $FF                             ; DE66 FF                       .
        .byte   $FF                             ; DE67 FF                       .
        .byte   $FF                             ; DE68 FF                       .
        .byte   $FF                             ; DE69 FF                       .
        .byte   $FF                             ; DE6A FF                       .
        .byte   $FF                             ; DE6B FF                       .
        .byte   $FF                             ; DE6C FF                       .
        .byte   $FF                             ; DE6D FF                       .
        .byte   $FF                             ; DE6E FF                       .
        .byte   $FF                             ; DE6F FF                       .
        .byte   $FF                             ; DE70 FF                       .
        .byte   $FF                             ; DE71 FF                       .
        .byte   $FF                             ; DE72 FF                       .
        .byte   $FF                             ; DE73 FF                       .
        .byte   $FF                             ; DE74 FF                       .
        .byte   $FF                             ; DE75 FF                       .
        .byte   $FF                             ; DE76 FF                       .
        .byte   $FF                             ; DE77 FF                       .
        .byte   $FF                             ; DE78 FF                       .
        .byte   $FF                             ; DE79 FF                       .
        .byte   $FF                             ; DE7A FF                       .
        .byte   $FF                             ; DE7B FF                       .
        .byte   $FF                             ; DE7C FF                       .
        .byte   $FF                             ; DE7D FF                       .
        .byte   $FF                             ; DE7E FF                       .
        .byte   $FF                             ; DE7F FF                       .
        .byte   $FF                             ; DE80 FF                       .
        .byte   $FF                             ; DE81 FF                       .
        .byte   $FF                             ; DE82 FF                       .
        .byte   $FF                             ; DE83 FF                       .
        .byte   $FF                             ; DE84 FF                       .
        .byte   $FF                             ; DE85 FF                       .
        .byte   $FF                             ; DE86 FF                       .
        .byte   $FF                             ; DE87 FF                       .
        .byte   $FF                             ; DE88 FF                       .
        .byte   $FF                             ; DE89 FF                       .
        .byte   $FF                             ; DE8A FF                       .
        .byte   $FF                             ; DE8B FF                       .
        .byte   $FF                             ; DE8C FF                       .
        .byte   $FF                             ; DE8D FF                       .
        .byte   $FF                             ; DE8E FF                       .
        .byte   $FF                             ; DE8F FF                       .
        .byte   $FF                             ; DE90 FF                       .
        .byte   $FF                             ; DE91 FF                       .
        .byte   $FF                             ; DE92 FF                       .
        .byte   $FF                             ; DE93 FF                       .
        .byte   $FF                             ; DE94 FF                       .
        .byte   $FF                             ; DE95 FF                       .
        .byte   $FF                             ; DE96 FF                       .
        .byte   $FF                             ; DE97 FF                       .
        .byte   $FF                             ; DE98 FF                       .
        .byte   $FF                             ; DE99 FF                       .
        .byte   $FF                             ; DE9A FF                       .
        .byte   $FF                             ; DE9B FF                       .
        .byte   $FF                             ; DE9C FF                       .
        .byte   $FF                             ; DE9D FF                       .
        .byte   $FF                             ; DE9E FF                       .
        .byte   $FF                             ; DE9F FF                       .
        .byte   $FF                             ; DEA0 FF                       .
        .byte   $FF                             ; DEA1 FF                       .
        .byte   $FF                             ; DEA2 FF                       .
        .byte   $FF                             ; DEA3 FF                       .
        .byte   $FF                             ; DEA4 FF                       .
        .byte   $FF                             ; DEA5 FF                       .
        .byte   $FF                             ; DEA6 FF                       .
        .byte   $FF                             ; DEA7 FF                       .
        .byte   $FF                             ; DEA8 FF                       .
        .byte   $FF                             ; DEA9 FF                       .
        .byte   $FF                             ; DEAA FF                       .
        .byte   $FF                             ; DEAB FF                       .
        .byte   $FF                             ; DEAC FF                       .
        .byte   $FF                             ; DEAD FF                       .
        .byte   $FF                             ; DEAE FF                       .
        .byte   $FF                             ; DEAF FF                       .
        .byte   $FF                             ; DEB0 FF                       .
        .byte   $FF                             ; DEB1 FF                       .
        .byte   $FF                             ; DEB2 FF                       .
        .byte   $FF                             ; DEB3 FF                       .
        .byte   $FF                             ; DEB4 FF                       .
        .byte   $FF                             ; DEB5 FF                       .
        .byte   $FF                             ; DEB6 FF                       .
        .byte   $FF                             ; DEB7 FF                       .
        .byte   $FF                             ; DEB8 FF                       .
        .byte   $FF                             ; DEB9 FF                       .
        .byte   $FF                             ; DEBA FF                       .
        .byte   $FF                             ; DEBB FF                       .
        .byte   $FF                             ; DEBC FF                       .
        .byte   $FF                             ; DEBD FF                       .
        .byte   $FF                             ; DEBE FF                       .
        .byte   $FF                             ; DEBF FF                       .
        .byte   $FF                             ; DEC0 FF                       .
        .byte   $FF                             ; DEC1 FF                       .
        .byte   $FF                             ; DEC2 FF                       .
        .byte   $FF                             ; DEC3 FF                       .
        .byte   $FF                             ; DEC4 FF                       .
        .byte   $FF                             ; DEC5 FF                       .
        .byte   $FF                             ; DEC6 FF                       .
        .byte   $FF                             ; DEC7 FF                       .
        .byte   $FF                             ; DEC8 FF                       .
        .byte   $FF                             ; DEC9 FF                       .
        .byte   $FF                             ; DECA FF                       .
        .byte   $FF                             ; DECB FF                       .
        .byte   $FF                             ; DECC FF                       .
        .byte   $FF                             ; DECD FF                       .
        .byte   $FF                             ; DECE FF                       .
        .byte   $FF                             ; DECF FF                       .
        .byte   $FF                             ; DED0 FF                       .
        .byte   $FF                             ; DED1 FF                       .
        .byte   $FF                             ; DED2 FF                       .
        .byte   $FF                             ; DED3 FF                       .
        .byte   $FF                             ; DED4 FF                       .
        .byte   $FF                             ; DED5 FF                       .
        .byte   $FF                             ; DED6 FF                       .
        .byte   $FF                             ; DED7 FF                       .
        .byte   $FF                             ; DED8 FF                       .
        .byte   $FF                             ; DED9 FF                       .
        .byte   $FF                             ; DEDA FF                       .
        .byte   $FF                             ; DEDB FF                       .
        .byte   $FF                             ; DEDC FF                       .
        .byte   $FF                             ; DEDD FF                       .
        .byte   $FF                             ; DEDE FF                       .
        .byte   $FF                             ; DEDF FF                       .
        .byte   $FF                             ; DEE0 FF                       .
        .byte   $FF                             ; DEE1 FF                       .
        .byte   $FF                             ; DEE2 FF                       .
        .byte   $FF                             ; DEE3 FF                       .
        .byte   $FF                             ; DEE4 FF                       .
        .byte   $FF                             ; DEE5 FF                       .
        .byte   $FF                             ; DEE6 FF                       .
        .byte   $FF                             ; DEE7 FF                       .
        .byte   $FF                             ; DEE8 FF                       .
        .byte   $FF                             ; DEE9 FF                       .
        .byte   $FF                             ; DEEA FF                       .
        .byte   $FF                             ; DEEB FF                       .
        .byte   $FF                             ; DEEC FF                       .
        .byte   $FF                             ; DEED FF                       .
        .byte   $FF                             ; DEEE FF                       .
        .byte   $FF                             ; DEEF FF                       .
        .byte   $FF                             ; DEF0 FF                       .
        .byte   $FF                             ; DEF1 FF                       .
        .byte   $FF                             ; DEF2 FF                       .
        .byte   $FF                             ; DEF3 FF                       .
        .byte   $FF                             ; DEF4 FF                       .
        .byte   $FF                             ; DEF5 FF                       .
        .byte   $FF                             ; DEF6 FF                       .
        .byte   $FF                             ; DEF7 FF                       .
        .byte   $FF                             ; DEF8 FF                       .
        .byte   $FF                             ; DEF9 FF                       .
        .byte   $FF                             ; DEFA FF                       .
        .byte   $FF                             ; DEFB FF                       .
        .byte   $FF                             ; DEFC FF                       .
        .byte   $FF                             ; DEFD FF                       .
        .byte   $FF                             ; DEFE FF                       .
        .byte   $FF                             ; DEFF FF                       .
        .byte   $FF                             ; DF00 FF                       .
        .byte   $FF                             ; DF01 FF                       .
        .byte   $FF                             ; DF02 FF                       .
        .byte   $FF                             ; DF03 FF                       .
        .byte   $FF                             ; DF04 FF                       .
        .byte   $FF                             ; DF05 FF                       .
        .byte   $FF                             ; DF06 FF                       .
        .byte   $FF                             ; DF07 FF                       .
        .byte   $FF                             ; DF08 FF                       .
        .byte   $FF                             ; DF09 FF                       .
        .byte   $FF                             ; DF0A FF                       .
        .byte   $FF                             ; DF0B FF                       .
        .byte   $FF                             ; DF0C FF                       .
        .byte   $FF                             ; DF0D FF                       .
        .byte   $FF                             ; DF0E FF                       .
        .byte   $FF                             ; DF0F FF                       .
        .byte   $FF                             ; DF10 FF                       .
        .byte   $FF                             ; DF11 FF                       .
        .byte   $FF                             ; DF12 FF                       .
        .byte   $FF                             ; DF13 FF                       .
        .byte   $FF                             ; DF14 FF                       .
        .byte   $FF                             ; DF15 FF                       .
        .byte   $FF                             ; DF16 FF                       .
        .byte   $FF                             ; DF17 FF                       .
        .byte   $FF                             ; DF18 FF                       .
        .byte   $FF                             ; DF19 FF                       .
        .byte   $FF                             ; DF1A FF                       .
        .byte   $FF                             ; DF1B FF                       .
        .byte   $FF                             ; DF1C FF                       .
        .byte   $FF                             ; DF1D FF                       .
        .byte   $FF                             ; DF1E FF                       .
        .byte   $FF                             ; DF1F FF                       .
        .byte   $FF                             ; DF20 FF                       .
        .byte   $FF                             ; DF21 FF                       .
        .byte   $FF                             ; DF22 FF                       .
        .byte   $FF                             ; DF23 FF                       .
        .byte   $FF                             ; DF24 FF                       .
        .byte   $FF                             ; DF25 FF                       .
        .byte   $FF                             ; DF26 FF                       .
        .byte   $FF                             ; DF27 FF                       .
        .byte   $FF                             ; DF28 FF                       .
        .byte   $FF                             ; DF29 FF                       .
        .byte   $FF                             ; DF2A FF                       .
        .byte   $FF                             ; DF2B FF                       .
        .byte   $FF                             ; DF2C FF                       .
        .byte   $FF                             ; DF2D FF                       .
        .byte   $FF                             ; DF2E FF                       .
        .byte   $FF                             ; DF2F FF                       .
        .byte   $FF                             ; DF30 FF                       .
        .byte   $FF                             ; DF31 FF                       .
        .byte   $FF                             ; DF32 FF                       .
        .byte   $FF                             ; DF33 FF                       .
        .byte   $FF                             ; DF34 FF                       .
        .byte   $FF                             ; DF35 FF                       .
        .byte   $FF                             ; DF36 FF                       .
        .byte   $FF                             ; DF37 FF                       .
        .byte   $FF                             ; DF38 FF                       .
        .byte   $FF                             ; DF39 FF                       .
        .byte   $FF                             ; DF3A FF                       .
        .byte   $FF                             ; DF3B FF                       .
        .byte   $FF                             ; DF3C FF                       .
        .byte   $FF                             ; DF3D FF                       .
        .byte   $FF                             ; DF3E FF                       .
        .byte   $FF                             ; DF3F FF                       .
        .byte   $FF                             ; DF40 FF                       .
        .byte   $FF                             ; DF41 FF                       .
        .byte   $FF                             ; DF42 FF                       .
        .byte   $FF                             ; DF43 FF                       .
        .byte   $FF                             ; DF44 FF                       .
        .byte   $FF                             ; DF45 FF                       .
        .byte   $FF                             ; DF46 FF                       .
        .byte   $FF                             ; DF47 FF                       .
        .byte   $FF                             ; DF48 FF                       .
        .byte   $FF                             ; DF49 FF                       .
        .byte   $FF                             ; DF4A FF                       .
        .byte   $FF                             ; DF4B FF                       .
        .byte   $FF                             ; DF4C FF                       .
        .byte   $FF                             ; DF4D FF                       .
        .byte   $FF                             ; DF4E FF                       .
        .byte   $FF                             ; DF4F FF                       .
        .byte   $FF                             ; DF50 FF                       .
        .byte   $FF                             ; DF51 FF                       .
        .byte   $FF                             ; DF52 FF                       .
        .byte   $FF                             ; DF53 FF                       .
        .byte   $FF                             ; DF54 FF                       .
        .byte   $FF                             ; DF55 FF                       .
        .byte   $FF                             ; DF56 FF                       .
        .byte   $FF                             ; DF57 FF                       .
        .byte   $FF                             ; DF58 FF                       .
        .byte   $FF                             ; DF59 FF                       .
        .byte   $FF                             ; DF5A FF                       .
        .byte   $FF                             ; DF5B FF                       .
        .byte   $FF                             ; DF5C FF                       .
        .byte   $FF                             ; DF5D FF                       .
        .byte   $FF                             ; DF5E FF                       .
        .byte   $FF                             ; DF5F FF                       .
        .byte   $FF                             ; DF60 FF                       .
        .byte   $FF                             ; DF61 FF                       .
        .byte   $FF                             ; DF62 FF                       .
        .byte   $FF                             ; DF63 FF                       .
        .byte   $FF                             ; DF64 FF                       .
        .byte   $FF                             ; DF65 FF                       .
        .byte   $FF                             ; DF66 FF                       .
        .byte   $FF                             ; DF67 FF                       .
        .byte   $FF                             ; DF68 FF                       .
        .byte   $FF                             ; DF69 FF                       .
        .byte   $FF                             ; DF6A FF                       .
        .byte   $FF                             ; DF6B FF                       .
        .byte   $FF                             ; DF6C FF                       .
        .byte   $FF                             ; DF6D FF                       .
        .byte   $FF                             ; DF6E FF                       .
        .byte   $FF                             ; DF6F FF                       .
        .byte   $FF                             ; DF70 FF                       .
        .byte   $FF                             ; DF71 FF                       .
        .byte   $FF                             ; DF72 FF                       .
        .byte   $FF                             ; DF73 FF                       .
        .byte   $FF                             ; DF74 FF                       .
        .byte   $FF                             ; DF75 FF                       .
        .byte   $FF                             ; DF76 FF                       .
        .byte   $FF                             ; DF77 FF                       .
        .byte   $FF                             ; DF78 FF                       .
        .byte   $FF                             ; DF79 FF                       .
        .byte   $FF                             ; DF7A FF                       .
        .byte   $FF                             ; DF7B FF                       .
        .byte   $FF                             ; DF7C FF                       .
        .byte   $FF                             ; DF7D FF                       .
        .byte   $FF                             ; DF7E FF                       .
        .byte   $FF                             ; DF7F FF                       .
        .byte   $FF                             ; DF80 FF                       .
        .byte   $FF                             ; DF81 FF                       .
        .byte   $FF                             ; DF82 FF                       .
        .byte   $FF                             ; DF83 FF                       .
        .byte   $FF                             ; DF84 FF                       .
        .byte   $FF                             ; DF85 FF                       .
        .byte   $FF                             ; DF86 FF                       .
        .byte   $FF                             ; DF87 FF                       .
        .byte   $FF                             ; DF88 FF                       .
        .byte   $FF                             ; DF89 FF                       .
        .byte   $FF                             ; DF8A FF                       .
        .byte   $FF                             ; DF8B FF                       .
        .byte   $FF                             ; DF8C FF                       .
        .byte   $FF                             ; DF8D FF                       .
        .byte   $FF                             ; DF8E FF                       .
        .byte   $FF                             ; DF8F FF                       .
        .byte   $FF                             ; DF90 FF                       .
        .byte   $FF                             ; DF91 FF                       .
        .byte   $FF                             ; DF92 FF                       .
        .byte   $FF                             ; DF93 FF                       .
        .byte   $FF                             ; DF94 FF                       .
        .byte   $FF                             ; DF95 FF                       .
        .byte   $FF                             ; DF96 FF                       .
        .byte   $FF                             ; DF97 FF                       .
        .byte   $FF                             ; DF98 FF                       .
        .byte   $FF                             ; DF99 FF                       .
        .byte   $FF                             ; DF9A FF                       .
        .byte   $FF                             ; DF9B FF                       .
        .byte   $FF                             ; DF9C FF                       .
        .byte   $FF                             ; DF9D FF                       .
        .byte   $FF                             ; DF9E FF                       .
        .byte   $FF                             ; DF9F FF                       .
        .byte   $FF                             ; DFA0 FF                       .
        .byte   $FF                             ; DFA1 FF                       .
        .byte   $FF                             ; DFA2 FF                       .
        .byte   $FF                             ; DFA3 FF                       .
        .byte   $FF                             ; DFA4 FF                       .
        .byte   $FF                             ; DFA5 FF                       .
        .byte   $FF                             ; DFA6 FF                       .
        .byte   $FF                             ; DFA7 FF                       .
        .byte   $FF                             ; DFA8 FF                       .
        .byte   $FF                             ; DFA9 FF                       .
        .byte   $FF                             ; DFAA FF                       .
        .byte   $FF                             ; DFAB FF                       .
        .byte   $FF                             ; DFAC FF                       .
        .byte   $FF                             ; DFAD FF                       .
        .byte   $FF                             ; DFAE FF                       .
        .byte   $FF                             ; DFAF FF                       .
        .byte   $FF                             ; DFB0 FF                       .
        .byte   $FF                             ; DFB1 FF                       .
        .byte   $FF                             ; DFB2 FF                       .
        .byte   $FF                             ; DFB3 FF                       .
        .byte   $FF                             ; DFB4 FF                       .
        .byte   $FF                             ; DFB5 FF                       .
        .byte   $FF                             ; DFB6 FF                       .
        .byte   $FF                             ; DFB7 FF                       .
        .byte   $FF                             ; DFB8 FF                       .
        .byte   $FF                             ; DFB9 FF                       .
        .byte   $FF                             ; DFBA FF                       .
        .byte   $FF                             ; DFBB FF                       .
        .byte   $FF                             ; DFBC FF                       .
        .byte   $FF                             ; DFBD FF                       .
        .byte   $FF                             ; DFBE FF                       .
        .byte   $FF                             ; DFBF FF                       .
        .byte   $43                             ; DFC0 43                       C
        .byte   $4F                             ; DFC1 4F                       O
        bvc     LE01D                           ; DFC2 50 59                    PY
        .byte   $52                             ; DFC4 52                       R
        eor     #$47                            ; DFC5 49 47                    IG
        pha                                     ; DFC7 48                       H
        .byte   $54                             ; DFC8 54                       T
        jsr     L5942                           ; DFC9 20 42 59                  BY
        jsr     L494A                           ; DFCC 20 4A 49                  JI
        eor     $5720                           ; DFCF 4D 20 57                 M W
        pha                                     ; DFD2 48                       H
        eor     #$54                            ; DFD3 49 54                    IT
        eor     $20                             ; DFD5 45 20                    E 
        eor     ($4E,x)                         ; DFD7 41 4E                    AN
        .byte   $44                             ; DFD9 44                       D
        jsr     L5553                           ; DFDA 20 53 55                  SU
        bvc     LE031                           ; DFDD 50 52                    PR
        eor     ($20,x)                         ; DFDF 41 20                    A 
        .byte   $43                             ; DFE1 43                       C
        .byte   $4F                             ; DFE2 4F                       O
        .byte   $52                             ; DFE3 52                       R
        bvc     LE035                           ; DFE4 50 4F                    PO
        .byte   $52                             ; DFE6 52                       R
        eor     ($54,x)                         ; DFE7 41 54                    AT
        eor     #$4F                            ; DFE9 49 4F                    IO
        lsr     $2820                           ; DFEB 4E 20 28                 N (
        .byte   $63                             ; DFEE 63                       c
        and     #$31                            ; DFEF 29 31                    )1
        and     $3538,y                         ; DFF1 39 38 35                 985
        jsr     L2020                           ; DFF4 20 20 20                    
        jsr     L2020                           ; DFF7 20 20 20                    
        bmi     LE035                           ; DFFA 30 39                    09
        .byte   $32                             ; DFFC 32                       2
        .byte   $33                             ; DFFD 33                       3
        sec                                     ; DFFE 38                       8
        .byte   $35                             ; DFFF 35                       5
