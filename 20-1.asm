; da65 V2.17 - Debian 2.17-1
; Created:    2020-04-19 15:24:12
; Input file: 20-1.bin
; Page:       1


        .setcpu "6502"

	.SEGMENT "PBI1"

; ----------------------------------------------------------------------------
L0000           := $0000

DUNIT		:= $0301
DCOMND		:= $0302
DBUF		:= $0304
DBYT		:= $0308
HW0		:= $D100

; ----------------------------------------------------------------------------
        jmp     LDA6A                           ; D800 4C 6A DA                 Lj.

; ----------------------------------------------------------------------------
        .byte   $80                             ; D803 80                       .
	.byte	$58

        jmp     LDA76                           ; i/o vector

; ----------------------------------------------------------------------------
        jmp     LDA69                           ; interrupt vector

; ----------------------------------------------------------------------------
	.byte	$91
	.byte	$77

	.addr	LDA69-1
	.addr	LDA69-1
	.addr	LDA69-1
	.addr	LDA69-1
	.addr	LDA69-1
	.addr	LDA69-1

        jmp     LD9D3                           ; init vector

; ----------------------------------------------------------------------------
        brk                                     ; D81C 00                       .
LD81D:  brk                                     ; D81D 00                       .
        brk                                     ; D81E 00                       .
        brk                                     ; D81F 00                       .
        brk                                     ; D820 00                       .
	.byte	$01,$00
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
	.byte	$06,$00
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
LD89D:	.byte	$00,$20,$00,$00,$01
	.byte	$00
LD8A3:	.byte	$01,$03,$48,$70,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$01,$03,$48,$70,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$01,$03,$94,$F0,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$01,$03,$A8,$70,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$01,$03,$E1,$70,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$01,$03,$94,$F0,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$01,$03,$94,$F0,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$01,$03,$94,$F0,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
LD923:	.byte	$01,$03,$4C,$80,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$01,$03,$4C,$80,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$01,$03,$99,$00,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$01,$03,$AC,$80,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$01,$03,$E5,$80,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$01,$03,$99,$00,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$01,$03,$99,$00,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$01,$03,$99,$00,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
LD9A3:	.byte	$28,$03,$00,$12,$00,$00,$00,$80,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$28,$03,$00,$12,$00,$04,$01,$00,$40,$00,$00,$00
	.byte	$00,$00,$00,$00
	.byte	$28,$03,$00,$1A,$00,$04,$00,$80,$40,$00,$00,$00
	.byte	$00,$00,$00,$00

; ----------------------------------------------------------------------------
LD9D3:  lda     #$FF                            ; D9D3 A9 FF                    ..
        sta     $D10C                           ; D9D5 8D 0C D1                 ...
        lda     #$FB                            ; D9D8 A9 FB                    ..
        sta     HW0
        lda     #$06                            ; D9DD A9 06                    ..
        sta     $D102                           ; D9DF 8D 02 D1                 ...
        lda     #$00                            ; D9E2 A9 00                    ..
        sta     $D10B                           ; D9E4 8D 0B D1                 ...
        lda     #$7F                            ; D9E7 A9 7F                    ..
        sta     $D10E                           ; D9E9 8D 0E D1                 ...
        lda     #$FF                            ; D9EC A9 FF                    ..
        sta     HW0
        sta     $4A                             ; D9F1 85 4A                    .J
LD9F3:  ldy     #$FF                            ; D9F3 A0 FF                    ..
LD9F5:  lda     HW0
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
        lda     DUNIT
        lsr     a                               ; DA6F 4A                       J
        bcs     LDAC9                           ; DA70 B0 57                    .W
        ldx     #$00                            ; DA72 A2 00                    ..
        beq     LDAC9                           ; DA74 F0 53                    .S
LDA76:  lda     $0300                           ; DA76 AD 00 03                 ...
        and     #$FE                            ; DA79 29 FE                    ).
        cmp     #$30                            ; DA7B C9 30                    .0
        bne     LDAC5                           ; DA7D D0 46                    .F
        ldx     #$00                            ; DA7F A2 00                    ..
        ldy     DUNIT
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
        lda     DCOMND
        cmp     #'R'
        beq     LDAA3                           ; DA9D F0 04                    ..
        cmp     #'S'
        bne     LDABC                           ; DAA1 D0 19                    ..
LDAA3:  lda     #$03                            ; DAA3 A9 03                    ..
        sta     DUNIT
        bne     LDAC9                           ; DAA8 D0 1F                    ..
LDAAA:  lda     $D209                           ; DAAA AD 09 D2                 ...
        cmp     #$11                            ; DAAD C9 11                    ..
        bne     LDAC9                           ; DAAF D0 18                    ..
        lda     DCOMND
        cmp     #'R'
        beq     LDAC0                           ; DAB6 F0 08                    ..
        cmp     #'S'
        beq     LDAC0                           ; DABA F0 04                    ..
LDABC:  lda     #$8B                            ; DABC A9 8B                    ..
        sec                                     ; DABE 38                       8
        rts                                     ; DABF 60                       `

; ----------------------------------------------------------------------------
LDAC0:  lda     #$02                            ; DAC0 A9 02                    ..
        sta     DUNIT
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
LDB04:  lda     DCOMND
        cmp     #'R'
        bne     LDB12                           ; DB09 D0 07                    ..
        ldy     #$00                            ; DB0B A0 00                    ..
        lda     #$08                            ; DB0D A9 08                    ..
        jmp     LDBDC                           ; DB0F 4C DC DB                 L..

; ----------------------------------------------------------------------------
LDB12:  cmp     #'P'
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
LDB25:  cmp     #'W'
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
        lda     DUNIT
        cmp     #$01                            ; DB49 C9 01                    ..
        beq     LDB6C                           ; DB4B F0 1F                    ..
        lda     $D107                           ; DB4D AD 07 D1                 ...
        and     #$40                            ; DB50 29 40                    )@
        lsr     a                               ; DB52 4A                       J
        lsr     a                               ; DB53 4A                       J
        lsr     a                               ; DB54 4A                       J
        sta     $4A                             ; DB55 85 4A                    .J
        lda     DUNIT
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
LDB79:  cmp     #'!'
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
LDB9E:  cmp     #'"'
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
LDBB7:  cmp     #'N'
        bne     LDBC7                           ; DBB9 D0 0C                    ..
        ldy     DUNIT
        dey                                     ; DBBE 88                       .
        beq     LDBC4                           ; DBBF F0 03                    ..
        jmp     LDE3E                           ; DBC1 4C 3E DE                 L>.

; ----------------------------------------------------------------------------
LDBC4:  jmp     LDE16                           ; DBC4 4C 16 DE                 L..

; ----------------------------------------------------------------------------
LDBC7:  cmp     #'O'
        bne     LDBD9                           ; DBC9 D0 0E                    ..
        ldy     DUNIT
        dey                                     ; DBCE 88                       .
        beq     LDBD6                           ; DBCF F0 05                    ..
        lda     #$8B                            ; NAK
        rts                                     ; DBD3 60                       `

; ----------------------------------------------------------------------------
        bne     LDBD9                           ; DBD4 D0 03                    ..
LDBD6:  jmp     LDDE5                           ; DBD6 4C E5 DD                 L..

; ----------------------------------------------------------------------------
LDBD9:  lda     #$8B                            ; NAK
        rts                                     ; DBDB 60                       `

; ----------------------------------------------------------------------------
LDBDC:  pha                                     ; DBDC 48                       H
        lda     DBUF
        sta     $F9                             ; DBE0 85 F9                    ..
        lda     DBUF+1
        sta     $FA                             ; DBE5 85 FA                    ..
        lda     DBYT
        sta     $F2                             ; DBEA 85 F2                    ..
        lda     DUNIT
        and     #$01                            ; DBEF 29 01                    ).
        eor     #$01                            ; DBF1 49 01                    I.
        sta     $4A                             ; DBF3 85 4A                    .J
        asl     a                               ; DBF5 0A                       .
        asl     a                               ; DBF6 0A                       .
        asl     a                               ; DBF7 0A                       .
        asl     a                               ; DBF8 0A                       .
        asl     a                               ; DBF9 0A                       .
        sta     $E5                             ; DBFA 85 E5                    ..
        lda     DUNIT
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
LDC54:  lda     HW0
        pha                                     ; DC57 48                       H
        and     #$FB                            ; DC58 29 FB                    ).
        sta     HW0
        pla                                     ; DC5D 68                       h
        sta     HW0
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
        lda     HW0
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
        lda     HW0
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
; wait for bit 5
LDD49:  lda     HW0
        and     #$20                            ; DD4C 29 20                    ) 
        bne     LDD49                           ; DD4E D0 F9                    ..
        rts                                     ; DD50 60                       `

; ----------------------------------------------------------------------------
; wait for bit 5 with timeout
LDD51:  ldx     #$00
        ldy     #$00
:	lda     HW0
        and     #$20
        beq     :+
        dex
        bne     :-
        dey
        bne     :-
        lda     #$8A                            ; timeout
:	rts

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
LDDD8:  lda     HW0
        and     #$01                            ; DDDB 29 01                    ).
        beq     LDDD8                           ; DDDD F0 F9                    ..
        lda     #$FF                            ; DDDF A9 FF                    ..
        sta     $D103                           ; DDE1 8D 03 D1                 ...
        rts                                     ; DDE4 60                       `

; ----------------------------------------------------------------------------
LDDE5:  lda     DBUF
        sta     $F9                             ; DDE8 85 F9                    ..
        lda     DBUF+1
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
LDE16:  lda     DBUF
        sta     $F9                             ; DE19 85 F9                    ..
        lda     DBUF+1
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
LDE3E:  lda     DBUF
        sta     $F9                             ; DE41 85 F9                    ..
        lda     DBUF+1
        sta     $FA                             ; DE46 85 FA                    ..
        lda     $D107                           ; DE48 AD 07 D1                 ...
        and     #$07                            ; DE4B 29 07                    ).
        asl     a                               ; DE4D 0A                       .
        asl     a                               ; DE4E 0A                       .
        asl     a                               ; DE4F 0A                       .
        asl     a                               ; DE50 0A                       .
        tax                                     ; DE51 AA                       .
        ldy     #$00                            ; DE52 A0 00                    ..
        lda     DUNIT
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
LDE76:  lda     DUNIT
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
LDE8F:  lda     HW0
        and     #$08                            ; DE92 29 08                    ).
        bne     LDE99                           ; DE94 D0 03                    ..
        lda     #$A3                            ; DE96 A9 A3                    ..
        rts                                     ; DE98 60                       `

; ----------------------------------------------------------------------------
LDE99:  lda     #$FE                            ; DE99 A9 FE                    ..
        sta     $D101                           ; DE9B 8D 01 D1                 ...
        jsr     LDDD8                           ; DE9E 20 D8 DD                  ..
        lda     HW0
        pha                                     ; DEA4 48                       H
        and     #$FD                            ; DEA5 29 FD                    ).
        sta     HW0
        ldx     #$FF                            ; DEAA A2 FF                    ..
        pla                                     ; DEAC 68                       h
        sta     HW0
LDEB0:  lda     HW0
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
LDEC6:  lda     HW0
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

	.res	247, $FF

