; da65 V2.17 - Debian 2.17-1
; Created:    2020-04-19 15:24:12
; Input file: 20-1.bin
; Page:       1


        .setcpu "6502"

	.SEGMENT "PBI1"

; ----------------------------------------------------------------------------
L0000           := $0000
L0080           := $0080
; ----------------------------------------------------------------------------
        jmp     LDA6A                           ; D800 4C 6A DA                 Lj.

; ----------------------------------------------------------------------------
        .byte   $80                             ; D803 80                       .
        cli                                     ; D804 58                       X
        jmp     LDA76                           ; D805 4C 76 DA                 Lv.

; ----------------------------------------------------------------------------
        jmp     LDA69                           ; D808 4C 69 DA                 Li.

; ----------------------------------------------------------------------------
        sta     ($77),y                         ; D80B 91 77                    .w
        pla                                     ; D80D 68                       h
        .byte   $DA                             ; D80E DA                       .
        pla                                     ; D80F 68                       h
        .byte   $DA                             ; D810 DA                       .
        pla                                     ; D811 68                       h
        .byte   $DA                             ; D812 DA                       .
        pla                                     ; D813 68                       h
        .byte   $DA                             ; D814 DA                       .
        pla                                     ; D815 68                       h
        .byte   $DA                             ; D816 DA                       .
        pla                                     ; D817 68                       h
        .byte   $DA                             ; D818 DA                       .
        jmp     LD9D3                           ; D819 4C D3 D9                 L..

; ----------------------------------------------------------------------------
        brk                                     ; D81C 00                       .
LD81D:  brk                                     ; D81D 00                       .
        brk                                     ; D81E 00                       .
        brk                                     ; D81F 00                       .
        brk                                     ; D820 00                       .
        ora     (L0000,x)                       ; D821 01 00                    ..
        brk                                     ; D823 00                       .
        sta     $04,y                           ; D824 99 04 00                 ...
        .byte   $80                             ; D827 80                       .
        brk                                     ; D828 00                       .
        sta     $0B,y                           ; D829 99 0B 00                 ...
        brk                                     ; D82C 00                       .
        brk                                     ; D82D 00                       .
        brk                                     ; D82E 00                       .
        brk                                     ; D82F 00                       .
        brk                                     ; D830 00                       .
        ora     ($07,x)                         ; D831 01 07                    ..
        ora     ($32,x)                         ; D833 01 32                    .2
        .byte   $02                             ; D835 02                       .
        brk                                     ; D836 00                       .
        .byte   $80                             ; D837 80                       .
        brk                                     ; D838 00                       .
        brk                                     ; D839 00                       .
        .byte   $0B                             ; D83A 0B                       .
        brk                                     ; D83B 00                       .
        brk                                     ; D83C 00                       .
        brk                                     ; D83D 00                       .
        brk                                     ; D83E 00                       .
        brk                                     ; D83F 00                       .
        brk                                     ; D840 00                       .
        ora     ($07,x)                         ; D841 01 07                    ..
        ora     ($32,x)                         ; D843 01 32                    .2
        .byte   $04                             ; D845 04                       .
        brk                                     ; D846 00                       .
        .byte   $80                             ; D847 80                       .
        brk                                     ; D848 00                       .
        brk                                     ; D849 00                       .
        .byte   $0B                             ; D84A 0B                       .
        brk                                     ; D84B 00                       .
        brk                                     ; D84C 00                       .
        brk                                     ; D84D 00                       .
        brk                                     ; D84E 00                       .
        brk                                     ; D84F 00                       .
        brk                                     ; D850 00                       .
        ora     ($07,x)                         ; D851 01 07                    ..
        brk                                     ; D853 00                       .
        inc     $06                             ; D854 E6 06                    ..
        brk                                     ; D856 00                       .
        .byte   $80                             ; D857 80                       .
        brk                                     ; D858 00                       .
        brk                                     ; D859 00                       .
        .byte   $0B                             ; D85A 0B                       .
        brk                                     ; D85B 00                       .
        brk                                     ; D85C 00                       .
        brk                                     ; D85D 00                       .
        brk                                     ; D85E 00                       .
        brk                                     ; D85F 00                       .
        brk                                     ; D860 00                       .
        ora     ($07,x)                         ; D861 01 07                    ..
        ora     ($32,x)                         ; D863 01 32                    .2
        asl     L0000                           ; D865 06 00                    ..
        .byte   $80                             ; D867 80                       .
        brk                                     ; D868 00                       .
        brk                                     ; D869 00                       .
        .byte   $0B                             ; D86A 0B                       .
        brk                                     ; D86B 00                       .
        brk                                     ; D86C 00                       .
        brk                                     ; D86D 00                       .
        brk                                     ; D86E 00                       .
        brk                                     ; D86F 00                       .
        brk                                     ; D870 00                       .
        ora     ($07,x)                         ; D871 01 07                    ..
        ora     ($32,x)                         ; D873 01 32                    .2
        .byte   $04                             ; D875 04                       .
        brk                                     ; D876 00                       .
        .byte   $80                             ; D877 80                       .
        brk                                     ; D878 00                       .
        brk                                     ; D879 00                       .
        .byte   $0B                             ; D87A 0B                       .
        brk                                     ; D87B 00                       .
        brk                                     ; D87C 00                       .
        brk                                     ; D87D 00                       .
        brk                                     ; D87E 00                       .
        brk                                     ; D87F 00                       .
        brk                                     ; D880 00                       .
        ora     ($07,x)                         ; D881 01 07                    ..
        ora     ($32,x)                         ; D883 01 32                    .2
        .byte   $04                             ; D885 04                       .
        brk                                     ; D886 00                       .
        .byte   $80                             ; D887 80                       .
        brk                                     ; D888 00                       .
        brk                                     ; D889 00                       .
        .byte   $0B                             ; D88A 0B                       .
        brk                                     ; D88B 00                       .
        brk                                     ; D88C 00                       .
        brk                                     ; D88D 00                       .
        brk                                     ; D88E 00                       .
        brk                                     ; D88F 00                       .
        brk                                     ; D890 00                       .
        ora     ($07,x)                         ; D891 01 07                    ..
        ora     ($32,x)                         ; D893 01 32                    .2
        .byte   $04                             ; D895 04                       .
        brk                                     ; D896 00                       .
        .byte   $80                             ; D897 80                       .
        brk                                     ; D898 00                       .
        brk                                     ; D899 00                       .
        .byte   $0B                             ; D89A 0B                       .
        brk                                     ; D89B 00                       .
        brk                                     ; D89C 00                       .
LD89D:  brk                                     ; D89D 00                       .
        jsr     L0000                           ; D89E 20 00 00                  ..
        ora     (L0000,x)                       ; D8A1 01 00                    ..
LD8A3:  ora     ($03,x)                         ; D8A3 01 03                    ..
        pha                                     ; D8A5 48                       H
        bvs     LD8A8                           ; D8A6 70 00                    p.
LD8A8:  .byte   $04                             ; D8A8 04                       .
        ora     (L0000,x)                       ; D8A9 01 00                    ..
        rti                                     ; D8AB 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D8AC 00                       .
        brk                                     ; D8AD 00                       .
        brk                                     ; D8AE 00                       .
        brk                                     ; D8AF 00                       .
        brk                                     ; D8B0 00                       .
        brk                                     ; D8B1 00                       .
        brk                                     ; D8B2 00                       .
        ora     ($03,x)                         ; D8B3 01 03                    ..
        pha                                     ; D8B5 48                       H
        bvs     LD8B8                           ; D8B6 70 00                    p.
LD8B8:  .byte   $04                             ; D8B8 04                       .
        ora     (L0000,x)                       ; D8B9 01 00                    ..
        rti                                     ; D8BB 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D8BC 00                       .
        brk                                     ; D8BD 00                       .
        brk                                     ; D8BE 00                       .
        brk                                     ; D8BF 00                       .
        brk                                     ; D8C0 00                       .
        brk                                     ; D8C1 00                       .
        brk                                     ; D8C2 00                       .
        ora     ($03,x)                         ; D8C3 01 03                    ..
        sty     $F0,x                           ; D8C5 94 F0                    ..
        brk                                     ; D8C7 00                       .
        .byte   $04                             ; D8C8 04                       .
        ora     (L0000,x)                       ; D8C9 01 00                    ..
        rti                                     ; D8CB 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D8CC 00                       .
        brk                                     ; D8CD 00                       .
        brk                                     ; D8CE 00                       .
        brk                                     ; D8CF 00                       .
        brk                                     ; D8D0 00                       .
        brk                                     ; D8D1 00                       .
        brk                                     ; D8D2 00                       .
        ora     ($03,x)                         ; D8D3 01 03                    ..
        tay                                     ; D8D5 A8                       .
        bvs     LD8D8                           ; D8D6 70 00                    p.
LD8D8:  .byte   $04                             ; D8D8 04                       .
        ora     (L0000,x)                       ; D8D9 01 00                    ..
        rti                                     ; D8DB 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D8DC 00                       .
        brk                                     ; D8DD 00                       .
        brk                                     ; D8DE 00                       .
        brk                                     ; D8DF 00                       .
        brk                                     ; D8E0 00                       .
        brk                                     ; D8E1 00                       .
        brk                                     ; D8E2 00                       .
        ora     ($03,x)                         ; D8E3 01 03                    ..
        sbc     ($70,x)                         ; D8E5 E1 70                    .p
        brk                                     ; D8E7 00                       .
        .byte   $04                             ; D8E8 04                       .
        ora     (L0000,x)                       ; D8E9 01 00                    ..
        rti                                     ; D8EB 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D8EC 00                       .
        brk                                     ; D8ED 00                       .
        brk                                     ; D8EE 00                       .
        brk                                     ; D8EF 00                       .
        brk                                     ; D8F0 00                       .
        brk                                     ; D8F1 00                       .
        brk                                     ; D8F2 00                       .
        ora     ($03,x)                         ; D8F3 01 03                    ..
        sty     $F0,x                           ; D8F5 94 F0                    ..
        brk                                     ; D8F7 00                       .
        .byte   $04                             ; D8F8 04                       .
        ora     (L0000,x)                       ; D8F9 01 00                    ..
        rti                                     ; D8FB 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D8FC 00                       .
        brk                                     ; D8FD 00                       .
        brk                                     ; D8FE 00                       .
        brk                                     ; D8FF 00                       .
        brk                                     ; D900 00                       .
        brk                                     ; D901 00                       .
        brk                                     ; D902 00                       .
        ora     ($03,x)                         ; D903 01 03                    ..
        sty     $F0,x                           ; D905 94 F0                    ..
        brk                                     ; D907 00                       .
        .byte   $04                             ; D908 04                       .
        ora     (L0000,x)                       ; D909 01 00                    ..
        rti                                     ; D90B 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D90C 00                       .
        brk                                     ; D90D 00                       .
        brk                                     ; D90E 00                       .
        brk                                     ; D90F 00                       .
        brk                                     ; D910 00                       .
        brk                                     ; D911 00                       .
        brk                                     ; D912 00                       .
        ora     ($03,x)                         ; D913 01 03                    ..
        sty     $F0,x                           ; D915 94 F0                    ..
        brk                                     ; D917 00                       .
        .byte   $04                             ; D918 04                       .
        ora     (L0000,x)                       ; D919 01 00                    ..
        rti                                     ; D91B 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D91C 00                       .
        brk                                     ; D91D 00                       .
        brk                                     ; D91E 00                       .
        brk                                     ; D91F 00                       .
        brk                                     ; D920 00                       .
        brk                                     ; D921 00                       .
        brk                                     ; D922 00                       .
LD923:  ora     ($03,x)                         ; D923 01 03                    ..
        jmp     L0080                           ; D925 4C 80 00                 L..

; ----------------------------------------------------------------------------
        .byte   $04                             ; D928 04                       .
        ora     (L0000,x)                       ; D929 01 00                    ..
        rti                                     ; D92B 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D92C 00                       .
        brk                                     ; D92D 00                       .
        brk                                     ; D92E 00                       .
        brk                                     ; D92F 00                       .
        brk                                     ; D930 00                       .
        brk                                     ; D931 00                       .
        brk                                     ; D932 00                       .
        ora     ($03,x)                         ; D933 01 03                    ..
        jmp     L0080                           ; D935 4C 80 00                 L..

; ----------------------------------------------------------------------------
        .byte   $04                             ; D938 04                       .
        ora     (L0000,x)                       ; D939 01 00                    ..
        rti                                     ; D93B 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D93C 00                       .
        brk                                     ; D93D 00                       .
        brk                                     ; D93E 00                       .
        brk                                     ; D93F 00                       .
        brk                                     ; D940 00                       .
        brk                                     ; D941 00                       .
        brk                                     ; D942 00                       .
        ora     ($03,x)                         ; D943 01 03                    ..
        sta     L0000,y                         ; D945 99 00 00                 ...
        .byte   $04                             ; D948 04                       .
        ora     (L0000,x)                       ; D949 01 00                    ..
        rti                                     ; D94B 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D94C 00                       .
        brk                                     ; D94D 00                       .
        brk                                     ; D94E 00                       .
        brk                                     ; D94F 00                       .
        brk                                     ; D950 00                       .
        brk                                     ; D951 00                       .
        brk                                     ; D952 00                       .
        ora     ($03,x)                         ; D953 01 03                    ..
        ldy     a:L0080                         ; D955 AC 80 00                 ...
        .byte   $04                             ; D958 04                       .
        ora     (L0000,x)                       ; D959 01 00                    ..
        rti                                     ; D95B 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D95C 00                       .
        brk                                     ; D95D 00                       .
        brk                                     ; D95E 00                       .
        brk                                     ; D95F 00                       .
        brk                                     ; D960 00                       .
        brk                                     ; D961 00                       .
        brk                                     ; D962 00                       .
        ora     ($03,x)                         ; D963 01 03                    ..
        sbc     L0080                           ; D965 E5 80                    ..
        brk                                     ; D967 00                       .
        .byte   $04                             ; D968 04                       .
        ora     (L0000,x)                       ; D969 01 00                    ..
        rti                                     ; D96B 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D96C 00                       .
        brk                                     ; D96D 00                       .
        brk                                     ; D96E 00                       .
        brk                                     ; D96F 00                       .
        brk                                     ; D970 00                       .
        brk                                     ; D971 00                       .
        brk                                     ; D972 00                       .
        ora     ($03,x)                         ; D973 01 03                    ..
        sta     L0000,y                         ; D975 99 00 00                 ...
        .byte   $04                             ; D978 04                       .
        ora     (L0000,x)                       ; D979 01 00                    ..
        rti                                     ; D97B 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D97C 00                       .
        brk                                     ; D97D 00                       .
        brk                                     ; D97E 00                       .
        brk                                     ; D97F 00                       .
        brk                                     ; D980 00                       .
        brk                                     ; D981 00                       .
        brk                                     ; D982 00                       .
        ora     ($03,x)                         ; D983 01 03                    ..
        sta     L0000,y                         ; D985 99 00 00                 ...
        .byte   $04                             ; D988 04                       .
        ora     (L0000,x)                       ; D989 01 00                    ..
        rti                                     ; D98B 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D98C 00                       .
        brk                                     ; D98D 00                       .
        brk                                     ; D98E 00                       .
        brk                                     ; D98F 00                       .
        brk                                     ; D990 00                       .
        brk                                     ; D991 00                       .
        brk                                     ; D992 00                       .
        ora     ($03,x)                         ; D993 01 03                    ..
        sta     L0000,y                         ; D995 99 00 00                 ...
        .byte   $04                             ; D998 04                       .
        ora     (L0000,x)                       ; D999 01 00                    ..
        rti                                     ; D99B 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D99C 00                       .
        brk                                     ; D99D 00                       .
        brk                                     ; D99E 00                       .
        brk                                     ; D99F 00                       .
        brk                                     ; D9A0 00                       .
        brk                                     ; D9A1 00                       .
        brk                                     ; D9A2 00                       .
LD9A3:  plp                                     ; D9A3 28                       (
        .byte   $03                             ; D9A4 03                       .
        brk                                     ; D9A5 00                       .
        .byte   $12                             ; D9A6 12                       .
        brk                                     ; D9A7 00                       .
        brk                                     ; D9A8 00                       .
        brk                                     ; D9A9 00                       .
        .byte   $80                             ; D9AA 80                       .
        rti                                     ; D9AB 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D9AC 00                       .
        brk                                     ; D9AD 00                       .
        brk                                     ; D9AE 00                       .
        brk                                     ; D9AF 00                       .
        brk                                     ; D9B0 00                       .
        brk                                     ; D9B1 00                       .
        brk                                     ; D9B2 00                       .
        plp                                     ; D9B3 28                       (
        .byte   $03                             ; D9B4 03                       .
        brk                                     ; D9B5 00                       .
        .byte   $12                             ; D9B6 12                       .
        brk                                     ; D9B7 00                       .
        .byte   $04                             ; D9B8 04                       .
        ora     (L0000,x)                       ; D9B9 01 00                    ..
        rti                                     ; D9BB 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D9BC 00                       .
        brk                                     ; D9BD 00                       .
        brk                                     ; D9BE 00                       .
        brk                                     ; D9BF 00                       .
        brk                                     ; D9C0 00                       .
        brk                                     ; D9C1 00                       .
        brk                                     ; D9C2 00                       .
        plp                                     ; D9C3 28                       (
        .byte   $03                             ; D9C4 03                       .
        brk                                     ; D9C5 00                       .
        .byte   $1A                             ; D9C6 1A                       .
        brk                                     ; D9C7 00                       .
        .byte   $04                             ; D9C8 04                       .
        brk                                     ; D9C9 00                       .
        .byte   $80                             ; D9CA 80                       .
        rti                                     ; D9CB 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; D9CC 00                       .
        brk                                     ; D9CD 00                       .
        brk                                     ; D9CE 00                       .
        brk                                     ; D9CF 00                       .
        brk                                     ; D9D0 00                       .
        brk                                     ; D9D1 00                       .
        brk                                     ; D9D2 00                       .
LD9D3:  lda     #$FF                            ; D9D3 A9 FF                    ..
        sta     $D10C                           ; D9D5 8D 0C D1                 ...
        lda     #$FB                            ; D9D8 A9 FB                    ..
        sta     $D100                           ; D9DA 8D 00 D1                 ...
        lda     #$06                            ; D9DD A9 06                    ..
        sta     $D102                           ; D9DF 8D 02 D1                 ...
        lda     #$00                            ; D9E2 A9 00                    ..
        sta     $D10B                           ; D9E4 8D 0B D1                 ...
        lda     #$7F                            ; D9E7 A9 7F                    ..
        sta     $D10E                           ; D9E9 8D 0E D1                 ...
        lda     #$FF                            ; D9EC A9 FF                    ..
        sta     $D100                           ; D9EE 8D 00 D1                 ...
        sta     $4A                             ; D9F1 85 4A                    .J
LD9F3:  ldy     #$FF                            ; D9F3 A0 FF                    ..
LD9F5:  lda     $D100                           ; D9F5 AD 00 D1                 ...
        and     #$08                            ; D9F8 29 08                    ).
        bne     LDA00                           ; D9FA D0 04                    ..
        dey                                     ; D9FC 88                       .
        beq     LD9F5                           ; D9FD F0 F6                    ..
        rts                                     ; D9FF 60                       `

; ----------------------------------------------------------------------------
LDA00:  jsr     LDE8F                           ; DA00 20 8F DE                  ..
        beq     LDA09                           ; DA03 F0 04                    ..
        jsr     LDDD2                           ; DA05 20 D2 DD                  ..
        rts                                     ; DA08 60                       `

; ----------------------------------------------------------------------------
LDA09:  lda     #$F9                            ; DA09 A9 F9                    ..
        sta     $D10C                           ; DA0B 8D 0C D1                 ...
        ldy     #$00                            ; DA0E A0 00                    ..
        ldx     #$05                            ; DA10 A2 05                    ..
LDA12:  lda     LD81D,y                         ; DA12 B9 1D D8                 ...
        eor     #$FF                            ; DA15 49 FF                    I.
        sta     $D101                           ; DA17 8D 01 D1                 ...
        jsr     LDD49                           ; DA1A 20 49 DD                  I.
        iny                                     ; DA1D C8                       .
        dex                                     ; DA1E CA                       .
        bpl     LDA12                           ; DA1F 10 F1                    ..
        jsr     LDD49                           ; DA21 20 49 DD                  I.
        jsr     LDDD2                           ; DA24 20 D2 DD                  ..
        lda     $D101                           ; DA27 AD 01 D1                 ...
        pha                                     ; DA2A 48                       H
        jsr     LDD49                           ; DA2B 20 49 DD                  I.
        lda     $D101                           ; DA2E AD 01 D1                 ...
        pla                                     ; DA31 68                       h
        and     #$02                            ; DA32 29 02                    ).
        pha                                     ; DA34 48                       H
        lda     #$FF                            ; DA35 A9 FF                    ..
        sta     $D10C                           ; DA37 8D 0C D1                 ...
        pla                                     ; DA3A 68                       h
        bne     LDA42                           ; DA3B D0 05                    ..
        dec     $4A                             ; DA3D C6 4A                    .J
        bne     LD9F3                           ; DA3F D0 B2                    ..
        rts                                     ; DA41 60                       `

; ----------------------------------------------------------------------------
LDA42:  lda     $08                             ; DA42 A5 08                    ..
        bne     LDA4B                           ; DA44 D0 05                    ..
        lda     #$20                            ; DA46 A9 20                    . 
        sta     $D107                           ; DA48 8D 07 D1                 ...
LDA4B:  jsr     LDD65                           ; DA4B 20 65 DD                  e.
        jsr     LDC54                           ; DA4E 20 54 DC                  T.
        beq     LDA54                           ; DA51 F0 01                    ..
        rts                                     ; DA53 60                       `

; ----------------------------------------------------------------------------
LDA54:  lda     $0248                           ; DA54 AD 48 02                 .H.
        ldx     #$00                            ; DA57 A2 00                    ..
LDA59:  lsr     a                               ; DA59 4A                       J
        inx                                     ; DA5A E8                       .
        bcc     LDA59                           ; DA5B 90 FC                    ..
        lda     #$00                            ; DA5D A9 00                    ..
LDA5F:  rol     a                               ; DA5F 2A                       *
        dex                                     ; DA60 CA                       .
        bne     LDA5F                           ; DA61 D0 FC                    ..
        ora     $0247                           ; DA63 0D 47 02                 .G.
        sta     $0247                           ; DA66 8D 47 02                 .G.
LDA69:  rts                                     ; DA69 60                       `

; ----------------------------------------------------------------------------
LDA6A:  ldx     #$FF                            ; DA6A A2 FF                    ..
        lda     $0301                           ; DA6C AD 01 03                 ...
        lsr     a                               ; DA6F 4A                       J
        bcs     LDAC9                           ; DA70 B0 57                    .W
        ldx     #$00                            ; DA72 A2 00                    ..
        beq     LDAC9                           ; DA74 F0 53                    .S
LDA76:  lda     $0300                           ; DA76 AD 00 03                 ...
        and     #$FE                            ; DA79 29 FE                    ).
        cmp     #$30                            ; DA7B C9 30                    .0
        bne     LDAC5                           ; DA7D D0 46                    .F
        ldx     #$00                            ; DA7F A2 00                    ..
        ldy     $0301                           ; DA81 AC 01 03                 ...
        cpy     #$03                            ; DA84 C0 03                    ..
        beq     LDA6A                           ; DA86 F0 E2                    ..
        cpy     #$04                            ; DA88 C0 04                    ..
        beq     LDA6A                           ; DA8A F0 DE                    ..
        dey                                     ; DA8C 88                       .
        bne     LDAC5                           ; DA8D D0 36                    .6
        lda     $D01F                           ; DA8F AD 1F D0                 ...
        and     #$02                            ; DA92 29 02                    ).
        bne     LDAAA                           ; DA94 D0 14                    ..
        ldx     #$FF                            ; DA96 A2 FF                    ..
        lda     $0302                           ; DA98 AD 02 03                 ...
        cmp     #$52                            ; DA9B C9 52                    .R
        beq     LDAA3                           ; DA9D F0 04                    ..
        cmp     #$53                            ; DA9F C9 53                    .S
        bne     LDABC                           ; DAA1 D0 19                    ..
LDAA3:  lda     #$03                            ; DAA3 A9 03                    ..
        sta     $0301                           ; DAA5 8D 01 03                 ...
        bne     LDAC9                           ; DAA8 D0 1F                    ..
LDAAA:  lda     $D209                           ; DAAA AD 09 D2                 ...
        cmp     #$11                            ; DAAD C9 11                    ..
        bne     LDAC9                           ; DAAF D0 18                    ..
        lda     $0302                           ; DAB1 AD 02 03                 ...
        cmp     #$52                            ; DAB4 C9 52                    .R
        beq     LDAC0                           ; DAB6 F0 08                    ..
        cmp     #$53                            ; DAB8 C9 53                    .S
        beq     LDAC0                           ; DABA F0 04                    ..
LDABC:  lda     #$8B                            ; DABC A9 8B                    ..
        sec                                     ; DABE 38                       8
        rts                                     ; DABF 60                       `

; ----------------------------------------------------------------------------
LDAC0:  lda     #$02                            ; DAC0 A9 02                    ..
        sta     $0301                           ; DAC2 8D 01 03                 ...
LDAC5:  lda     #$A0                            ; DAC5 A9 A0                    ..
        clc                                     ; DAC7 18                       .
        rts                                     ; DAC8 60                       `

; ----------------------------------------------------------------------------
LDAC9:  stx     $4A                             ; DAC9 86 4A                    .J
        lda     #$FF                            ; DACB A9 FF                    ..
        sta     $D10C                           ; DACD 8D 0C D1                 ...
        ldx     #$16                            ; DAD0 A2 16                    ..
LDAD2:  lda     $E4,x                           ; DAD2 B5 E4                    ..
        pha                                     ; DAD4 48                       H
        dex                                     ; DAD5 CA                       .
        bpl     LDAD2                           ; DAD6 10 FA                    ..
        jsr     LDD65                           ; DAD8 20 65 DD                  e.
        lda     $4A                             ; DADB A5 4A                    .J
        sta     $F7                             ; DADD 85 F7                    ..
        lda     #$00                            ; DADF A9 00                    ..
        sta     $F8                             ; DAE1 85 F8                    ..
        jsr     LDB04                           ; DAE3 20 04 DB                  ..
        beq     LDAF5                           ; DAE6 F0 0D                    ..
        jsr     LDC54                           ; DAE8 20 54 DC                  T.
        bne     LDAF2                           ; DAEB D0 05                    ..
        jsr     LDB04                           ; DAED 20 04 DB                  ..
        beq     LDAF5                           ; DAF0 F0 03                    ..
LDAF2:  tay                                     ; DAF2 A8                       .
        bne     LDAF7                           ; DAF3 D0 02                    ..
LDAF5:  ldy     #$01                            ; DAF5 A0 01                    ..
LDAF7:  ldx     #$00                            ; DAF7 A2 00                    ..
LDAF9:  pla                                     ; DAF9 68                       h
        sta     $E4,x                           ; DAFA 95 E4                    ..
        inx                                     ; DAFC E8                       .
        cpx     #$17                            ; DAFD E0 17                    ..
        bne     LDAF9                           ; DAFF D0 F8                    ..
        tya                                     ; DB01 98                       .
        sec                                     ; DB02 38                       8
        rts                                     ; DB03 60                       `

; ----------------------------------------------------------------------------
LDB04:  lda     $0302                           ; DB04 AD 02 03                 ...
        cmp     #$52                            ; DB07 C9 52                    .R
        bne     LDB12                           ; DB09 D0 07                    ..
        ldy     #$00                            ; DB0B A0 00                    ..
        lda     #$08                            ; DB0D A9 08                    ..
        jmp     LDBDC                           ; DB0F 4C DC DB                 L..

; ----------------------------------------------------------------------------
LDB12:  cmp     #$50                            ; DB12 C9 50                    .P
        bne     LDB25                           ; DB14 D0 0F                    ..
        jsr     LDE76                           ; DB16 20 76 DE                  v.
        bcc     LDB1E                           ; DB19 90 03                    ..
        lda     #$A8                            ; DB1B A9 A8                    ..
        rts                                     ; DB1D 60                       `

; ----------------------------------------------------------------------------
LDB1E:  ldy     #$FF                            ; DB1E A0 FF                    ..
        lda     #$0A                            ; DB20 A9 0A                    ..
        jmp     LDBDC                           ; DB22 4C DC DB                 L..

; ----------------------------------------------------------------------------
LDB25:  cmp     #$57                            ; DB25 C9 57                    .W
        bne     LDB38                           ; DB27 D0 0F                    ..
        jsr     LDE76                           ; DB29 20 76 DE                  v.
        bcc     LDB31                           ; DB2C 90 03                    ..
        lda     #$A8                            ; DB2E A9 A8                    ..
        rts                                     ; DB30 60                       `

; ----------------------------------------------------------------------------
LDB31:  ldy     #$FF                            ; DB31 A0 FF                    ..
        lda     #$0A                            ; DB33 A9 0A                    ..
        jmp     LDBDC                           ; DB35 4C DC DB                 L..

; ----------------------------------------------------------------------------
LDB38:  cmp     #$53                            ; DB38 C9 53                    .S
        bne     LDB79                           ; DB3A D0 3D                    .=
        lda     #$E0                            ; DB3C A9 E0                    ..
        sta     $02EC                           ; DB3E 8D EC 02                 ...
        lda     #$FF                            ; DB41 A9 FF                    ..
        sta     $02EB                           ; DB43 8D EB 02                 ...
        lda     $0301                           ; DB46 AD 01 03                 ...
        cmp     #$01                            ; DB49 C9 01                    ..
        beq     LDB6C                           ; DB4B F0 1F                    ..
        lda     $D107                           ; DB4D AD 07 D1                 ...
        and     #$40                            ; DB50 29 40                    )@
        lsr     a                               ; DB52 4A                       J
        lsr     a                               ; DB53 4A                       J
        lsr     a                               ; DB54 4A                       J
        sta     $4A                             ; DB55 85 4A                    .J
        lda     $0301                           ; DB57 AD 01 03                 ...
        lsr     a                               ; DB5A 4A                       J
        bcs     LDB66                           ; DB5B B0 09                    ..
        jsr     LDED1                           ; DB5D 20 D1 DE                  ..
        beq     LDB66                           ; DB60 F0 04                    ..
        lda     #$07                            ; DB62 A9 07                    ..
        bne     LDB73                           ; DB64 D0 0D                    ..
LDB66:  lda     $4A                             ; DB66 A5 4A                    .J
        ora     #$70                            ; DB68 09 70                    .p
        bne     LDB73                           ; DB6A D0 07                    ..
LDB6C:  lda     $D107                           ; DB6C AD 07 D1                 ...
        and     #$A8                            ; DB6F 29 A8                    ).
        ora     #$50                            ; DB71 09 50                    .P
LDB73:  sta     $02EA                           ; DB73 8D EA 02                 ...
        lda     #$00                            ; DB76 A9 00                    ..
        rts                                     ; DB78 60                       `

; ----------------------------------------------------------------------------
LDB79:  cmp     #$21                            ; DB79 C9 21                    .!
        bne     LDB9E                           ; DB7B D0 21                    .!
        jsr     LDE76                           ; DB7D 20 76 DE                  v.
        bcc     LDB85                           ; DB80 90 03                    ..
        lda     #$A8                            ; DB82 A9 A8                    ..
        rts                                     ; DB84 60                       `

; ----------------------------------------------------------------------------
LDB85:  lda     $0309                           ; DB85 AD 09 03                 ...
        asl     a                               ; DB88 0A                       .
        asl     a                               ; DB89 0A                       .
        asl     a                               ; DB8A 0A                       .
        asl     a                               ; DB8B 0A                       .
        asl     a                               ; DB8C 0A                       .
        and     #$7F                            ; DB8D 29 7F                    ).
        sta     $4A                             ; DB8F 85 4A                    .J
        lda     $D107                           ; DB91 AD 07 D1                 ...
        and     #$5F                            ; DB94 29 5F                    )_
        ora     $4A                             ; DB96 05 4A                    .J
        sta     $D107                           ; DB98 8D 07 D1                 ...
        lda     #$00                            ; DB9B A9 00                    ..
        rts                                     ; DB9D 60                       `

; ----------------------------------------------------------------------------
LDB9E:  cmp     #$22                            ; DB9E C9 22                    ."
        bne     LDBB7                           ; DBA0 D0 15                    ..
        jsr     LDE76                           ; DBA2 20 76 DE                  v.
        bcc     LDBAA                           ; DBA5 90 03                    ..
        lda     #$A8                            ; DBA7 A9 A8                    ..
        rts                                     ; DBA9 60                       `

; ----------------------------------------------------------------------------
LDBAA:  lda     $D107                           ; DBAA AD 07 D1                 ...
        and     #$5F                            ; DBAD 29 5F                    )_
        ora     #$80                            ; DBAF 09 80                    ..
        sta     $D107                           ; DBB1 8D 07 D1                 ...
        lda     #$00                            ; DBB4 A9 00                    ..
        rts                                     ; DBB6 60                       `

; ----------------------------------------------------------------------------
LDBB7:  cmp     #$4E                            ; DBB7 C9 4E                    .N
        bne     LDBC7                           ; DBB9 D0 0C                    ..
        ldy     $0301                           ; DBBB AC 01 03                 ...
        dey                                     ; DBBE 88                       .
        beq     LDBC4                           ; DBBF F0 03                    ..
        jmp     LDE3E                           ; DBC1 4C 3E DE                 L>.

; ----------------------------------------------------------------------------
LDBC4:  jmp     LDE16                           ; DBC4 4C 16 DE                 L..

; ----------------------------------------------------------------------------
LDBC7:  cmp     #$4F                            ; DBC7 C9 4F                    .O
        bne     LDBD9                           ; DBC9 D0 0E                    ..
        ldy     $0301                           ; DBCB AC 01 03                 ...
        dey                                     ; DBCE 88                       .
        beq     LDBD6                           ; DBCF F0 05                    ..
        lda     #$8B                            ; DBD1 A9 8B                    ..
        rts                                     ; DBD3 60                       `

; ----------------------------------------------------------------------------
        bne     LDBD9                           ; DBD4 D0 03                    ..
LDBD6:  jmp     LDDE5                           ; DBD6 4C E5 DD                 L..

; ----------------------------------------------------------------------------
LDBD9:  lda     #$8B                            ; DBD9 A9 8B                    ..
        rts                                     ; DBDB 60                       `

; ----------------------------------------------------------------------------
LDBDC:  pha                                     ; DBDC 48                       H
        lda     $0304                           ; DBDD AD 04 03                 ...
        sta     $F9                             ; DBE0 85 F9                    ..
        lda     $0305                           ; DBE2 AD 05 03                 ...
        sta     $FA                             ; DBE5 85 FA                    ..
        lda     $0308                           ; DBE7 AD 08 03                 ...
        sta     $F2                             ; DBEA 85 F2                    ..
        lda     $0301                           ; DBEC AD 01 03                 ...
        and     #$01                            ; DBEF 29 01                    ).
        eor     #$01                            ; DBF1 49 01                    I.
        sta     $4A                             ; DBF3 85 4A                    .J
        asl     a                               ; DBF5 0A                       .
        asl     a                               ; DBF6 0A                       .
        asl     a                               ; DBF7 0A                       .
        asl     a                               ; DBF8 0A                       .
        asl     a                               ; DBF9 0A                       .
        sta     $E5                             ; DBFA 85 E5                    ..
        lda     $0301                           ; DBFC AD 01 03                 ...
        lsr     a                               ; DBFF 4A                       J
        bcs     LDC0F                           ; DC00 B0 0D                    ..
        ldx     $030A                           ; DC02 AE 0A 03                 ...
        lda     $030B                           ; DC05 AD 0B 03                 ...
        stx     $E7                             ; DC08 86 E7                    ..
        sta     $E6                             ; DC0A 85 E6                    ..
        jmp     LDC4A                           ; DC0C 4C 4A DC                 LJ.

; ----------------------------------------------------------------------------
LDC0F:  lda     $F7                             ; DC0F A5 F7                    ..
        beq     LDC24                           ; DC11 F0 11                    ..
        clc                                     ; DC13 18                       .
        lda     #$11                            ; DC14 A9 11                    ..
        adc     $030A                           ; DC16 6D 0A 03                 m..
        sta     $E7                             ; DC19 85 E7                    ..
        lda     #$04                            ; DC1B A9 04                    ..
        adc     $030B                           ; DC1D 6D 0B 03                 m..
        sta     $E6                             ; DC20 85 E6                    ..
        bne     LDC4A                           ; DC22 D0 26                    .&
LDC24:  lda     $030B                           ; DC24 AD 0B 03                 ...
        cmp     #$04                            ; DC27 C9 04                    ..
        bmi     LDC37                           ; DC29 30 0C                    0.
        bne     LDC34                           ; DC2B D0 07                    ..
        lda     $030A                           ; DC2D AD 0A 03                 ...
        cmp     #$12                            ; DC30 C9 12                    ..
        bmi     LDC37                           ; DC32 30 03                    0.
LDC34:  lda     #$AB                            ; DC34 A9 AB                    ..
        rts                                     ; DC36 60                       `

; ----------------------------------------------------------------------------
LDC37:  ldx     $030A                           ; DC37 AE 0A 03                 ...
        stx     $E7                             ; DC3A 86 E7                    ..
        lda     $030B                           ; DC3C AD 0B 03                 ...
        sta     $E6                             ; DC3F 85 E6                    ..
        bne     LDC4A                           ; DC41 D0 07                    ..
        dex                                     ; DC43 CA                       .
        bne     LDC4A                           ; DC44 D0 04                    ..
        lda     #$FF                            ; DC46 A9 FF                    ..
        sta     $F8                             ; DC48 85 F8                    ..
LDC4A:  lda     #$01                            ; DC4A A9 01                    ..
        sta     $E8                             ; DC4C 85 E8                    ..
        pla                                     ; DC4E 68                       h
        ldx     #$00                            ; DC4F A2 00                    ..
        jmp     LDC9B                           ; DC51 4C 9B DC                 L..

; ----------------------------------------------------------------------------
LDC54:  lda     $D100                           ; DC54 AD 00 D1                 ...
        pha                                     ; DC57 48                       H
        and     #$FB                            ; DC58 29 FB                    ).
        sta     $D100                           ; DC5A 8D 00 D1                 ...
        pla                                     ; DC5D 68                       h
        sta     $D100                           ; DC5E 8D 00 D1                 ...
        lda     #$00                            ; DC61 A9 00                    ..
        sta     $E5                             ; DC63 85 E5                    ..
        sta     $E6                             ; DC65 85 E6                    ..
        sta     $E7                             ; DC67 85 E7                    ..
        lda     #$00                            ; DC69 A9 00                    ..
        sta     $FA                             ; DC6B 85 FA                    ..
        lda     #$4A                            ; DC6D A9 4A                    .J
        sta     $F9                             ; DC6F 85 F9                    ..
        lda     #$01                            ; DC71 A9 01                    ..
        sta     $F2                             ; DC73 85 F2                    ..
        sta     $E8                             ; DC75 85 E8                    ..
        lda     #$08                            ; DC77 A9 08                    ..
        ldy     #$00                            ; DC79 A0 00                    ..
        ldx     #$00                            ; DC7B A2 00                    ..
        jsr     LDC9B                           ; DC7D 20 9B DC                  ..
        beq     LDC85                           ; DC80 F0 03                    ..
        lda     #$A3                            ; DC82 A9 A3                    ..
        rts                                     ; DC84 60                       `

; ----------------------------------------------------------------------------
LDC85:  lda     $4A                             ; DC85 A5 4A                    .J
        and     #$07                            ; DC87 29 07                    ).
        sta     $4A                             ; DC89 85 4A                    .J
        lda     $D107                           ; DC8B AD 07 D1                 ...
        and     #$F8                            ; DC8E 29 F8                    ).
        ora     $4A                             ; DC90 05 4A                    .J
        sta     $D107                           ; DC92 8D 07 D1                 ...
        ldy     #$FF                            ; DC95 A0 FF                    ..
        ldx     #$06                            ; DC97 A2 06                    ..
        lda     #$0C                            ; DC99 A9 0C                    ..
LDC9B:  jsr     LDCA6                           ; DC9B 20 A6 DC                  ..
        pha                                     ; DC9E 48                       H
        lda     #$FF                            ; DC9F A9 FF                    ..
        sta     $D10C                           ; DCA1 8D 0C D1                 ...
        pla                                     ; DCA4 68                       h
        rts                                     ; DCA5 60                       `

; ----------------------------------------------------------------------------
LDCA6:  sty     $F4                             ; DCA6 84 F4                    ..
        sta     $E4                             ; DCA8 85 E4                    ..
        stx     $F5                             ; DCAA 86 F5                    ..
        jsr     LDE8F                           ; DCAC 20 8F DE                  ..
        beq     LDCB2                           ; DCAF F0 01                    ..
        rts                                     ; DCB1 60                       `

; ----------------------------------------------------------------------------
LDCB2:  lda     #$F9                            ; DCB2 A9 F9                    ..
        sta     $D10C                           ; DCB4 8D 0C D1                 ...
        jsr     LDD33                           ; DCB7 20 33 DD                  3.
        jsr     LDD49                           ; DCBA 20 49 DD                  I.
        lda     $D100                           ; DCBD AD 00 D1                 ...
        and     #$10                            ; DCC0 29 10                    ).
        beq     LDCE2                           ; DCC2 F0 1E                    ..
        ldy     $F5                             ; DCC4 A4 F5                    ..
        beq     LDCCD                           ; DCC6 F0 05                    ..
        jsr     LDD2C                           ; DCC8 20 2C DD                  ,.
        beq     LDCD5                           ; DCCB F0 08                    ..
LDCCD:  jsr     LDCFC                           ; DCCD 20 FC DC                  ..
        beq     LDCD5                           ; DCD0 F0 03                    ..
        lda     #$A3                            ; DCD2 A9 A3                    ..
        rts                                     ; DCD4 60                       `

; ----------------------------------------------------------------------------
LDCD5:  jsr     LDD49                           ; DCD5 20 49 DD                  I.
        lda     $D100                           ; DCD8 AD 00 D1                 ...
        and     #$10                            ; DCDB 29 10                    ).
        beq     LDCE2                           ; DCDD F0 03                    ..
        lda     #$A3                            ; DCDF A9 A3                    ..
        rts                                     ; DCE1 60                       `

; ----------------------------------------------------------------------------
LDCE2:  lda     $D101                           ; DCE2 AD 01 D1                 ...
        eor     #$FF                            ; DCE5 49 FF                    I.
        sta     $F6                             ; DCE7 85 F6                    ..
        jsr     LDD51                           ; DCE9 20 51 DD                  Q.
        beq     LDCEF                           ; DCEC F0 01                    ..
        rts                                     ; DCEE 60                       `

; ----------------------------------------------------------------------------
LDCEF:  lda     $D101                           ; DCEF AD 01 D1                 ...
        lda     $F6                             ; DCF2 A5 F6                    ..
        and     #$02                            ; DCF4 29 02                    ).
        bne     LDCF9                           ; DCF6 D0 01                    ..
        rts                                     ; DCF8 60                       `

; ----------------------------------------------------------------------------
LDCF9:  lda     #$FE                            ; DCF9 A9 FE                    ..
        rts                                     ; DCFB 60                       `

; ----------------------------------------------------------------------------
LDCFC:  jsr     LDD7E                           ; DCFC 20 7E DD                  ~.
        pha                                     ; DCFF 48                       H
        lda     $F4                             ; DD00 A5 F4                    ..
        bpl     LDD07                           ; DD02 10 03                    ..
        jsr     LDDD8                           ; DD04 20 D8 DD                  ..
LDD07:  ldy     #$00                            ; DD07 A0 00                    ..
        ldx     $F2                             ; DD09 A6 F2                    ..
LDD0B:  jsr     LDD49                           ; DD0B 20 49 DD                  I.
        lda     $F4                             ; DD0E A5 F4                    ..
        bpl     LDD1A                           ; DD10 10 08                    ..
        clc                                     ; DD12 18                       .
        lda     ($F9),y                         ; DD13 B1 F9                    ..
        sta     $D101                           ; DD15 8D 01 D1                 ...
        bcc     LDD1F                           ; DD18 90 05                    ..
LDD1A:  lda     $D101                           ; DD1A AD 01 D1                 ...
        sta     ($F9),y                         ; DD1D 91 F9                    ..
LDD1F:  iny                                     ; DD1F C8                       .
        dex                                     ; DD20 CA                       .
        bne     LDD0B                           ; DD21 D0 E8                    ..
        pla                                     ; DD23 68                       h
        beq     LDD29                           ; DD24 F0 03                    ..
        jmp     LDD9A                           ; DD26 4C 9A DD                 L..

; ----------------------------------------------------------------------------
LDD29:  jmp     LDDD2                           ; DD29 4C D2 DD                 L..

; ----------------------------------------------------------------------------
LDD2C:  jsr     LDDD8                           ; DD2C 20 D8 DD                  ..
        ldx     #$07                            ; DD2F A2 07                    ..
        bne     LDD37                           ; DD31 D0 04                    ..
LDD33:  ldx     #$05                            ; DD33 A2 05                    ..
        ldy     #$00                            ; DD35 A0 00                    ..
LDD37:  lda     $E4,y                           ; DD37 B9 E4 00                 ...
        eor     #$FF                            ; DD3A 49 FF                    I.
        sta     $D101                           ; DD3C 8D 01 D1                 ...
        jsr     LDD49                           ; DD3F 20 49 DD                  I.
        iny                                     ; DD42 C8                       .
        dex                                     ; DD43 CA                       .
        bpl     LDD37                           ; DD44 10 F1                    ..
        jmp     LDDD2                           ; DD46 4C D2 DD                 L..

; ----------------------------------------------------------------------------
LDD49:  lda     $D100                           ; DD49 AD 00 D1                 ...
        and     #$20                            ; DD4C 29 20                    ) 
        bne     LDD49                           ; DD4E D0 F9                    ..
        rts                                     ; DD50 60                       `

; ----------------------------------------------------------------------------
LDD51:  ldx     #$00                            ; DD51 A2 00                    ..
        ldy     #$00                            ; DD53 A0 00                    ..
LDD55:  lda     $D100                           ; DD55 AD 00 D1                 ...
        and     #$20                            ; DD58 29 20                    ) 
        beq     LDD64                           ; DD5A F0 08                    ..
        dex                                     ; DD5C CA                       .
        bne     LDD55                           ; DD5D D0 F6                    ..
        dey                                     ; DD5F 88                       .
        bne     LDD55                           ; DD60 D0 F3                    ..
        lda     #$8A                            ; DD62 A9 8A                    ..
LDD64:  rts                                     ; DD64 60                       `

; ----------------------------------------------------------------------------
LDD65:  ldx     #$0D                            ; DD65 A2 0D                    ..
        lda     $D107                           ; DD67 AD 07 D1                 ...
        and     #$07                            ; DD6A 29 07                    ).
        asl     a                               ; DD6C 0A                       .
        asl     a                               ; DD6D 0A                       .
        asl     a                               ; DD6E 0A                       .
        asl     a                               ; DD6F 0A                       .
        clc                                     ; DD70 18                       .
        adc     #$0D                            ; DD71 69 0D                    i.
        tay                                     ; DD73 A8                       .
LDD74:  lda     LD81D,y                         ; DD74 B9 1D D8                 ...
        sta     $E4,x                           ; DD77 95 E4                    ..
        dey                                     ; DD79 88                       .
        dex                                     ; DD7A CA                       .
        bpl     LDD74                           ; DD7B 10 F7                    ..
        rts                                     ; DD7D 60                       `

; ----------------------------------------------------------------------------
LDD7E:  lda     $F2                             ; DD7E A5 F2                    ..
        beq     LDD97                           ; DD80 F0 15                    ..
        lda     $E4                             ; DD82 A5 E4                    ..
        cmp     #$08                            ; DD84 C9 08                    ..
        beq     LDD8C                           ; DD86 F0 04                    ..
        cmp     #$0A                            ; DD88 C9 0A                    ..
        bne     LDD97                           ; DD8A D0 0B                    ..
LDD8C:  lda     #$00                            ; DD8C A9 00                    ..
        sec                                     ; DD8E 38                       8
        sbc     $F2                             ; DD8F E5 F2                    ..
        sta     $F3                             ; DD91 85 F3                    ..
        lda     #$FF                            ; DD93 A9 FF                    ..
        bne     LDD99                           ; DD95 D0 02                    ..
LDD97:  lda     #$00                            ; DD97 A9 00                    ..
LDD99:  rts                                     ; DD99 60                       `

; ----------------------------------------------------------------------------
LDD9A:  ldx     $F3                             ; DD9A A6 F3                    ..
        ldy     #$6C                            ; DD9C A0 6C                    .l
        lda     $F8                             ; DD9E A5 F8                    ..
        beq     LDDC0                           ; DDA0 F0 1E                    ..
        jsr     LDD49                           ; DDA2 20 49 DD                  I.
        lda     $F4                             ; DDA5 A5 F4                    ..
        bpl     LDDB4                           ; DDA7 10 0B                    ..
        lda     $D107                           ; DDA9 AD 07 D1                 ...
        and     #$A0                            ; DDAC 29 A0                    ).
        sta     $D101                           ; DDAE 8D 01 D1                 ...
        dex                                     ; DDB1 CA                       .
        bne     LDDC0                           ; DDB2 D0 0C                    ..
LDDB4:  lda     $D107                           ; DDB4 AD 07 D1                 ...
        and     #$5F                            ; DDB7 29 5F                    )_
        ora     $D101                           ; DDB9 0D 01 D1                 ...
        sta     $D107                           ; DDBC 8D 07 D1                 ...
        dex                                     ; DDBF CA                       .
LDDC0:  jsr     LDD49                           ; DDC0 20 49 DD                  I.
        lda     $F4                             ; DDC3 A5 F4                    ..
        bpl     LDDCC                           ; DDC5 10 05                    ..
        sty     $D101                           ; DDC7 8C 01 D1                 ...
        bmi     LDDCF                           ; DDCA 30 03                    0.
LDDCC:  lda     $D101                           ; DDCC AD 01 D1                 ...
LDDCF:  dex                                     ; DDCF CA                       .
        bne     LDDC0                           ; DDD0 D0 EE                    ..
LDDD2:  lda     #$00                            ; DDD2 A9 00                    ..
        sta     $D103                           ; DDD4 8D 03 D1                 ...
        rts                                     ; DDD7 60                       `

; ----------------------------------------------------------------------------
LDDD8:  lda     $D100                           ; DDD8 AD 00 D1                 ...
        and     #$01                            ; DDDB 29 01                    ).
        beq     LDDD8                           ; DDDD F0 F9                    ..
        lda     #$FF                            ; DDDF A9 FF                    ..
        sta     $D103                           ; DDE1 8D 03 D1                 ...
        rts                                     ; DDE4 60                       `

; ----------------------------------------------------------------------------
LDDE5:  lda     $0304                           ; DDE5 AD 04 03                 ...
        sta     $F9                             ; DDE8 85 F9                    ..
        lda     $0305                           ; DDEA AD 05 03                 ...
        sta     $FA                             ; DDED 85 FA                    ..
        ldy     #$07                            ; DDEF A0 07                    ..
        lda     ($F9),y                         ; DDF1 B1 F9                    ..
        eor     #$80                            ; DDF3 49 80                    I.
        lsr     a                               ; DDF5 4A                       J
        lsr     a                               ; DDF6 4A                       J
        tax                                     ; DDF7 AA                       .
        ldy     #$05                            ; DDF8 A0 05                    ..
        lda     ($F9),y                         ; DDFA B1 F9                    ..
        beq     LDE04                           ; DDFC F0 06                    ..
        txa                                     ; DDFE 8A                       .
        bne     LDE04                           ; DDFF D0 03                    ..
        ora     #$80                            ; DE01 09 80                    ..
        tax                                     ; DE03 AA                       .
LDE04:  lda     $D107                           ; DE04 AD 07 D1                 ...
        and     #$5F                            ; DE07 29 5F                    )_
        sta     $D107                           ; DE09 8D 07 D1                 ...
        txa                                     ; DE0C 8A                       .
        ora     $D107                           ; DE0D 0D 07 D1                 ...
        sta     $D107                           ; DE10 8D 07 D1                 ...
        lda     #$00                            ; DE13 A9 00                    ..
        rts                                     ; DE15 60                       `

; ----------------------------------------------------------------------------
LDE16:  lda     $0304                           ; DE16 AD 04 03                 ...
        sta     $F9                             ; DE19 85 F9                    ..
        lda     $0305                           ; DE1B AD 05 03                 ...
        sta     $FA                             ; DE1E 85 FA                    ..
        lda     $D107                           ; DE20 AD 07 D1                 ...
        and     #$A0                            ; DE23 29 A0                    ).
        bpl     LDE2C                           ; DE25 10 05                    ..
        clc                                     ; DE27 18                       .
        adc     #$20                            ; DE28 69 20                    i 
        and     #$60                            ; DE2A 29 60                    )`
LDE2C:  lsr     a                               ; DE2C 4A                       J
        tax                                     ; DE2D AA                       .
        ldy     #$00                            ; DE2E A0 00                    ..
LDE30:  lda     LD9A3,x                         ; DE30 BD A3 D9                 ...
        sta     ($F9),y                         ; DE33 91 F9                    ..
        inx                                     ; DE35 E8                       .
        iny                                     ; DE36 C8                       .
        cpy     #$0C                            ; DE37 C0 0C                    ..
        bne     LDE30                           ; DE39 D0 F5                    ..
        lda     #$00                            ; DE3B A9 00                    ..
        rts                                     ; DE3D 60                       `

; ----------------------------------------------------------------------------
LDE3E:  lda     $0304                           ; DE3E AD 04 03                 ...
        sta     $F9                             ; DE41 85 F9                    ..
        lda     $0305                           ; DE43 AD 05 03                 ...
        sta     $FA                             ; DE46 85 FA                    ..
        lda     $D107                           ; DE48 AD 07 D1                 ...
        and     #$07                            ; DE4B 29 07                    ).
        asl     a                               ; DE4D 0A                       .
        asl     a                               ; DE4E 0A                       .
        asl     a                               ; DE4F 0A                       .
        asl     a                               ; DE50 0A                       .
        tax                                     ; DE51 AA                       .
        ldy     #$00                            ; DE52 A0 00                    ..
        lda     $0301                           ; DE54 AD 01 03                 ...
        lsr     a                               ; DE57 4A                       J
        bcc     LDE68                           ; DE58 90 0E                    ..
LDE5A:  lda     LD8A3,x                         ; DE5A BD A3 D8                 ...
        sta     ($F9),y                         ; DE5D 91 F9                    ..
        inx                                     ; DE5F E8                       .
        iny                                     ; DE60 C8                       .
        cpy     #$0C                            ; DE61 C0 0C                    ..
        bne     LDE5A                           ; DE63 D0 F5                    ..
        lda     #$00                            ; DE65 A9 00                    ..
        rts                                     ; DE67 60                       `

; ----------------------------------------------------------------------------
LDE68:  lda     LD923,x                         ; DE68 BD 23 D9                 .#.
        sta     ($F9),y                         ; DE6B 91 F9                    ..
        inx                                     ; DE6D E8                       .
        iny                                     ; DE6E C8                       .
        cpy     #$0C                            ; DE6F C0 0C                    ..
        bne     LDE68                           ; DE71 D0 F5                    ..
        lda     #$00                            ; DE73 A9 00                    ..
        rts                                     ; DE75 60                       `

; ----------------------------------------------------------------------------
LDE76:  lda     $0301                           ; DE76 AD 01 03                 ...
        cmp     #$01                            ; DE79 C9 01                    ..
        beq     LDE87                           ; DE7B F0 0A                    ..
        lda     $D107                           ; DE7D AD 07 D1                 ...
        lsr     a                               ; DE80 4A                       J
        lsr     a                               ; DE81 4A                       J
        lsr     a                               ; DE82 4A                       J
        jmp     LDE8A                           ; DE83 4C 8A DE                 L..

; ----------------------------------------------------------------------------
        rts                                     ; DE86 60                       `

; ----------------------------------------------------------------------------
LDE87:  lda     $D107                           ; DE87 AD 07 D1                 ...
LDE8A:  lsr     a                               ; DE8A 4A                       J
        lsr     a                               ; DE8B 4A                       J
        lsr     a                               ; DE8C 4A                       J
        lsr     a                               ; DE8D 4A                       J
        rts                                     ; DE8E 60                       `

; ----------------------------------------------------------------------------
LDE8F:  lda     $D100                           ; DE8F AD 00 D1                 ...
        and     #$08                            ; DE92 29 08                    ).
        bne     LDE99                           ; DE94 D0 03                    ..
        lda     #$A3                            ; DE96 A9 A3                    ..
        rts                                     ; DE98 60                       `

; ----------------------------------------------------------------------------
LDE99:  lda     #$FE                            ; DE99 A9 FE                    ..
        sta     $D101                           ; DE9B 8D 01 D1                 ...
        jsr     LDDD8                           ; DE9E 20 D8 DD                  ..
        lda     $D100                           ; DEA1 AD 00 D1                 ...
        pha                                     ; DEA4 48                       H
        and     #$FD                            ; DEA5 29 FD                    ).
        sta     $D100                           ; DEA7 8D 00 D1                 ...
        ldx     #$FF                            ; DEAA A2 FF                    ..
        pla                                     ; DEAC 68                       h
        sta     $D100                           ; DEAD 8D 00 D1                 ...
LDEB0:  lda     $D100                           ; DEB0 AD 00 D1                 ...
        and     #$08                            ; DEB3 29 08                    ).
        beq     LDEC0                           ; DEB5 F0 09                    ..
        dex                                     ; DEB7 CA                       .
        bne     LDEB0                           ; DEB8 D0 F6                    ..
        jsr     LDDD2                           ; DEBA 20 D2 DD                  ..
        lda     #$A3                            ; DEBD A9 A3                    ..
        rts                                     ; DEBF 60                       `

; ----------------------------------------------------------------------------
LDEC0:  jsr     LDD51                           ; DEC0 20 51 DD                  Q.
        beq     LDEC6                           ; DEC3 F0 01                    ..
        rts                                     ; DEC5 60                       `

; ----------------------------------------------------------------------------
LDEC6:  lda     $D100                           ; DEC6 AD 00 D1                 ...
        and     #$10                            ; DEC9 29 10                    ).
        bne     LDECE                           ; DECB D0 01                    ..
        rts                                     ; DECD 60                       `

; ----------------------------------------------------------------------------
LDECE:  lda     #$A3                            ; DECE A9 A3                    ..
        rts                                     ; DED0 60                       `

; ----------------------------------------------------------------------------
LDED1:  jsr     LDE8F                           ; DED1 20 8F DE                  ..
        beq     LDED7                           ; DED4 F0 01                    ..
        rts                                     ; DED6 60                       `

; ----------------------------------------------------------------------------
LDED7:  lda     #$F9                            ; DED7 A9 F9                    ..
        sta     $D10C                           ; DED9 8D 0C D1                 ...
        ldy     #$00                            ; DEDC A0 00                    ..
        ldx     #$05                            ; DEDE A2 05                    ..
LDEE0:  lda     LD89D,y                         ; DEE0 B9 9D D8                 ...
        eor     #$FF                            ; DEE3 49 FF                    I.
        sta     $D101                           ; DEE5 8D 01 D1                 ...
        jsr     LDD49                           ; DEE8 20 49 DD                  I.
        iny                                     ; DEEB C8                       .
        dex                                     ; DEEC CA                       .
        bpl     LDEE0                           ; DEED 10 F1                    ..
        jsr     LDD49                           ; DEEF 20 49 DD                  I.
        lda     $D101                           ; DEF2 AD 01 D1                 ...
        pha                                     ; DEF5 48                       H
        jsr     LDD49                           ; DEF6 20 49 DD                  I.
        lda     $D101                           ; DEF9 AD 01 D1                 ...
        pla                                     ; DEFC 68                       h
        and     #$02                            ; DEFD 29 02                    ).
        eor     #$02                            ; DEFF 49 02                    I.
        pha                                     ; DF01 48                       H
        lda     #$FF                            ; DF02 A9 FF                    ..
        sta     $D10C                           ; DF04 8D 0C D1                 ...
        pla                                     ; DF07 68                       h
        rts                                     ; DF08 60                       `

; ----------------------------------------------------------------------------
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
        .byte   $FF                             ; DFC0 FF                       .
        .byte   $FF                             ; DFC1 FF                       .
        .byte   $FF                             ; DFC2 FF                       .
        .byte   $FF                             ; DFC3 FF                       .
        .byte   $FF                             ; DFC4 FF                       .
        .byte   $FF                             ; DFC5 FF                       .
        .byte   $FF                             ; DFC6 FF                       .
        .byte   $FF                             ; DFC7 FF                       .
        .byte   $FF                             ; DFC8 FF                       .
        .byte   $FF                             ; DFC9 FF                       .
        .byte   $FF                             ; DFCA FF                       .
        .byte   $FF                             ; DFCB FF                       .
        .byte   $FF                             ; DFCC FF                       .
        .byte   $FF                             ; DFCD FF                       .
        .byte   $FF                             ; DFCE FF                       .
        .byte   $FF                             ; DFCF FF                       .
        .byte   $FF                             ; DFD0 FF                       .
        .byte   $FF                             ; DFD1 FF                       .
        .byte   $FF                             ; DFD2 FF                       .
        .byte   $FF                             ; DFD3 FF                       .
        .byte   $FF                             ; DFD4 FF                       .
        .byte   $FF                             ; DFD5 FF                       .
        .byte   $FF                             ; DFD6 FF                       .
        .byte   $FF                             ; DFD7 FF                       .
        .byte   $FF                             ; DFD8 FF                       .
        .byte   $FF                             ; DFD9 FF                       .
        .byte   $FF                             ; DFDA FF                       .
        .byte   $FF                             ; DFDB FF                       .
        .byte   $FF                             ; DFDC FF                       .
        .byte   $FF                             ; DFDD FF                       .
        .byte   $FF                             ; DFDE FF                       .
        .byte   $FF                             ; DFDF FF                       .
        .byte   $FF                             ; DFE0 FF                       .
        .byte   $FF                             ; DFE1 FF                       .
        .byte   $FF                             ; DFE2 FF                       .
        .byte   $FF                             ; DFE3 FF                       .
        .byte   $FF                             ; DFE4 FF                       .
        .byte   $FF                             ; DFE5 FF                       .
        .byte   $FF                             ; DFE6 FF                       .
        .byte   $FF                             ; DFE7 FF                       .
        .byte   $FF                             ; DFE8 FF                       .
        .byte   $FF                             ; DFE9 FF                       .
        .byte   $FF                             ; DFEA FF                       .
        .byte   $FF                             ; DFEB FF                       .
        .byte   $FF                             ; DFEC FF                       .
        .byte   $FF                             ; DFED FF                       .
        .byte   $FF                             ; DFEE FF                       .
        .byte   $FF                             ; DFEF FF                       .
        .byte   $FF                             ; DFF0 FF                       .
        .byte   $FF                             ; DFF1 FF                       .
        .byte   $FF                             ; DFF2 FF                       .
        .byte   $FF                             ; DFF3 FF                       .
        .byte   $FF                             ; DFF4 FF                       .
        .byte   $FF                             ; DFF5 FF                       .
        .byte   $FF                             ; DFF6 FF                       .
        .byte   $FF                             ; DFF7 FF                       .
        .byte   $FF                             ; DFF8 FF                       .
        .byte   $FF                             ; DFF9 FF                       .
        .byte   $FF                             ; DFFA FF                       .
        .byte   $FF                             ; DFFB FF                       .
        .byte   $FF                             ; DFFC FF                       .
        .byte   $FF                             ; DFFD FF                       .
        .byte   $FF                             ; DFFE FF                       .
        .byte   $FF                             ; DFFF FF                       .
