.include "hdr.asm"
.accu 16
.index 16
.16bit
.define __main_locals 8

.section ".text_0x0" superfree

main:
; sub sp,#__main_locals
.ifgr __main_locals 0
tsa
sec
sbc #__main_locals
tas
.endif
; load 0
; type 16 reg 0xf0 extra 0x410389
; ld2 #0,tcc__r0
lda.w #0
sta.b tcc__r0
; store r 0x0 fr 0xf2 ft 0x10 fc 0xfffffffe
; st2 tcc__r0, [sp,-2]
; stack adjust: fc + disp - loc 2
lda.b tcc__r0
sta -2 + __main_locals + 1,s
; load 0
; type 16 reg 0xf0 extra 0x410389
; ld2 #0,tcc__r0
lda.w #0
sta.b tcc__r0
; store r 0x0 fr 0xf2 ft 0x10 fc 0xfffffffc
; st2 tcc__r0, [sp,-4]
; stack adjust: fc + disp - loc 2
lda.b tcc__r0
sta -4 + __main_locals + 1,s
; call r 0x2f0
jsr.l consoleInit
; push4 imm r 0x12f0
pea.w :snesfont
pea.w snesfont + 0
; push1 imm r 0xf0
sep #$20
lda #1
pha
rep #$20
; push1 imm r 0xf0
sep #$20
lda #0
pha
rep #$20
; call r 0x2f0
jsr.l consoleInitText
; add sp, #6
tsa
clc
adc #6
tas
; load 0
; type 132 reg 0x12f0 extra 0x0
; ld4 #patterns_end + 0, tcc__r0 (type 0x84)
lda.w #:patterns_end
sta.b tcc__r0h
lda.w #patterns_end + 0
sta.b tcc__r0
; load 1
; type 132 reg 0x12f0 extra 0x0
; ld4 #patterns + 0, tcc__r1 (type 0x84)
lda.w #:patterns
sta.b tcc__r1h
lda.w #patterns + 0
sta.b tcc__r1
; gen_opi len 4 op -
; sbc tcc__r1 (0x1), tcc__r0 (0x0) (fr type 0x84 c 0 r type 0x11)
; length xxy 4 vtop->type 0x84
sec
lda.b tcc__r0
sbc.b tcc__r1
sta.b tcc__r0
; push2 imm r 0xf0
pea.w 16384
; push2 imm r 0xf0
pea.w 16
; push2 imm r 0xf0
pea.w 32
; ldpush before load type 0x10 reg 0x0
; ldpush2 (type 0x10 reg 0x0) tcc__r0
pei (tcc__r0)
; push1 imm r 0xf0
sep #$20
lda #0
pha
rep #$20
; push4 imm r 0x12f0
pea.w :palette
pea.w palette + 0
; push4 imm r 0x12f0
pea.w :patterns
pea.w patterns + 0
; push1 imm r 0xf0
sep #$20
lda #1
pha
rep #$20
; call r 0x2f0
jsr.l bgInitTileSet
; add sp, #18
tsa
clc
adc #18
tas
; load 0
; type 132 reg 0x12f0 extra 0x0
; ld4 #map_end + 0, tcc__r0 (type 0x84)
lda.w #:map_end
sta.b tcc__r0h
lda.w #map_end + 0
sta.b tcc__r0
; load 1
; type 132 reg 0x12f0 extra 0x0
; ld4 #map + 0, tcc__r1 (type 0x84)
lda.w #:map
sta.b tcc__r1h
lda.w #map + 0
sta.b tcc__r1
; gen_opi len 4 op -
; sbc tcc__r1 (0x1), tcc__r0 (0x0) (fr type 0x84 c 0 r type 0x4)
; length xxy 4 vtop->type 0x84
sec
lda.b tcc__r0
sbc.b tcc__r1
sta.b tcc__r0
; push2 imm r 0xf0
pea.w 4096
; push1 imm r 0xf0
sep #$20
lda #3
pha
rep #$20
; ldpush before load type 0x10 reg 0x0
; ldpush2 (type 0x10 reg 0x0) tcc__r0
pei (tcc__r0)
; push4 imm r 0x12f0
pea.w :map
pea.w map + 0
; push1 imm r 0xf0
sep #$20
lda #1
pha
rep #$20
; call r 0x2f0
jsr.l bgInitMapSet
; add sp, #10
tsa
clc
adc #10
tas
; push1 imm r 0xf0
sep #$20
lda #0
pha
rep #$20
; push1 imm r 0xf0
sep #$20
lda #1
pha
rep #$20
; call r 0x2f0
jsr.l setMode
; add sp, #2
pla
; push1 imm r 0xf0
sep #$20
lda #2
pha
rep #$20
; call r 0x2f0
jsr.l bgSetDisable
; add sp, #1
tsa
clc
adc #1
tas
; call r 0x2f0
jsr.l setScreenOn
__local_5:
; gtst inv 1 t 0 v 240 r 2817 ind 2817
; uncond jump: nop
; gtst finished; t 0
; load 0
; type 16 reg 0xf0 extra 0x0
; ld2 #0,tcc__r0
lda.w #0
sta.b tcc__r0
; store r 0x0 fr 0x1f2 ft 0x10 fc 0xfffffff8
; st2 tcc__r0, [sp,-8]
; stack adjust: fc + disp - loc 2
lda.b tcc__r0
sta -8 + __main_locals + 1,s
; call r 0x2f0
jsr.l scanPads
; load 0
; type 16 reg 0x3f0 extra 0x0
; ld2 [pad_keys + 0], tcc__r0
lda.l pad_keys + 0
sta.b tcc__r0
; store r 0x0 fr 0x1f2 ft 0x10 fc 0xfffffffa
; st2 tcc__r0, [sp,-6]
; stack adjust: fc + disp - loc 4
lda.b tcc__r0
sta -6 + __main_locals + 1,s
; load 0
; type 16 reg 0x1f2 extra 0x0
; ld2 [sp,-6],tcc__r0
; stack adjust: fc + disp - loc 4
lda -6 + __main_locals + 1,s
sta.b tcc__r0
; gjmp_addr 0 at 3534
jmp.w __local_0
; gsym_addr t 3572 a 0 ind 3572
; gjmp_addr 0 at 3604
jmp.w __local_1
; gsym_addr t 3642 a 0 ind 3642
__local_0:
; gsym_addr t 3572 a 3674 ind 3674
; gen_opi len 2 op 0x94
; cmpr(n)eq tcc__r0, #128
ldx #1
lda.b tcc__r0
sec
sbc #128
tay
beq +
dex
+
stx.b tcc__r5
; gtst inv 1 t 0 v 5 r 3823 ind 3823
; gsym_addr t 0 a 3860 ind 3860
; tcc__r5 to compare reg
lda.b tcc__r5 ; DON'T OPTIMIZE
; gtst inv 1 t 0 v 243 r 3948 ind 3948
; cmp op 0x95 inv 1 v 243 r 3948
; cmp ne
bne +
; gsym_addr t 0 a 4035 ind 4035
brl __local_2
+
; gtst finished; t 3948
__local_1:
; gsym_addr t 3642 a 4107 ind 4107
; call r 0x2f0
jsr.l consoleInit
; push4 imm r 0x12f0
pea.w :snesfont
pea.w snesfont + 0
; push1 imm r 0xf0
sep #$20
lda #1
pha
rep #$20
; push1 imm r 0xf0
sep #$20
lda #0
pha
rep #$20
; call r 0x2f0
jsr.l consoleInitText
; add sp, #6
tsa
clc
adc #6
tas
; load 0
; type 132 reg 0x12f0 extra 0x0
; ld4 #patterns_end + 0, tcc__r0 (type 0x84)
lda.w #:patterns_end
sta.b tcc__r0h
lda.w #patterns_end + 0
sta.b tcc__r0
; load 1
; type 132 reg 0x12f0 extra 0x0
; ld4 #patterns + 0, tcc__r1 (type 0x84)
lda.w #:patterns
sta.b tcc__r1h
lda.w #patterns + 0
sta.b tcc__r1
; gen_opi len 4 op -
; sbc tcc__r1 (0x1), tcc__r0 (0x0) (fr type 0x84 c 0 r type 0x11)
; length xxy 4 vtop->type 0x84
sec
lda.b tcc__r0
sbc.b tcc__r1
sta.b tcc__r0
; push2 imm r 0xf0
pea.w 16384
; push2 imm r 0xf0
pea.w 16
; push2 imm r 0xf0
pea.w 32
; ldpush before load type 0x10 reg 0x0
; ldpush2 (type 0x10 reg 0x0) tcc__r0
pei (tcc__r0)
; push1 imm r 0xf0
sep #$20
lda #0
pha
rep #$20
; push4 imm r 0x12f0
pea.w :palette
pea.w palette + 0
; push4 imm r 0x12f0
pea.w :patterns
pea.w patterns + 0
; push1 imm r 0xf0
sep #$20
lda #1
pha
rep #$20
; call r 0x2f0
jsr.l bgInitTileSet
; add sp, #18
tsa
clc
adc #18
tas
; load 0
; type 132 reg 0x12f0 extra 0x0
; ld4 #map_end + 0, tcc__r0 (type 0x84)
lda.w #:map_end
sta.b tcc__r0h
lda.w #map_end + 0
sta.b tcc__r0
; load 1
; type 132 reg 0x12f0 extra 0x0
; ld4 #map + 0, tcc__r1 (type 0x84)
lda.w #:map
sta.b tcc__r1h
lda.w #map + 0
sta.b tcc__r1
; gen_opi len 4 op -
; sbc tcc__r1 (0x1), tcc__r0 (0x0) (fr type 0x84 c 0 r type 0x4)
; length xxy 4 vtop->type 0x84
sec
lda.b tcc__r0
sbc.b tcc__r1
sta.b tcc__r0
; push2 imm r 0xf0
pea.w 4096
; push1 imm r 0xf0
sep #$20
lda #3
pha
rep #$20
; ldpush before load type 0x10 reg 0x0
; ldpush2 (type 0x10 reg 0x0) tcc__r0
pei (tcc__r0)
; push4 imm r 0x12f0
pea.w :map
pea.w map + 0
; push1 imm r 0xf0
sep #$20
lda #1
pha
rep #$20
; call r 0x2f0
jsr.l bgInitMapSet
; add sp, #10
tsa
clc
adc #10
tas
; push1 imm r 0xf0
sep #$20
lda #0
pha
rep #$20
; push1 imm r 0xf0
sep #$20
lda #1
pha
rep #$20
; call r 0x2f0
jsr.l setMode
; add sp, #2
pla
; push1 imm r 0xf0
sep #$20
lda #2
pha
rep #$20
; call r 0x2f0
jsr.l bgSetDisable
; add sp, #1
tsa
clc
adc #1
tas
; call r 0x2f0
jsr.l setScreenOn
; call r 0x2f0
jsr.l WaitForVBlank
; load 0
; type 16 reg 0x1f2 extra 0x0
; ld2 [sp,-4],tcc__r0
; stack adjust: fc + disp - loc 6
lda -4 + __main_locals + 1,s
sta.b tcc__r0
; gen_opi len 2 op +
; adc tcc__r240 (0xf0), tcc__r0 (0x0) (fr type 0x10 c -4 r type 0x10)
; length xxy 2 vtop->type 0x10
clc
lda.b tcc__r0
adc.w #240
sta.b tcc__r0
; store r 0x0 fr 0x1f2 ft 0x10 fc 0xfffffffc
; st2 tcc__r0, [sp,-4]
; stack adjust: fc + disp - loc 6
lda.b tcc__r0
sta -4 + __main_locals + 1,s
; load 0
; type 16 reg 0xf0 extra 0x0
; ld2 #1,tcc__r0
lda.w #1
sta.b tcc__r0
; store r 0x0 fr 0x1f2 ft 0x10 fc 0xfffffff8
; st2 tcc__r0, [sp,-8]
; stack adjust: fc + disp - loc 2
lda.b tcc__r0
sta -8 + __main_locals + 1,s
; gjmp_addr 0 at 7088
jmp.w __local_3
; gsym_addr t 7126 a 0 ind 7126
__local_2:
; gsym_addr t 3948 a 7158 ind 7158
__local_3:
; gsym_addr t 7126 a 7193 ind 7193
; gtst inv 1 t 0 v 242 r 7228 ind 7228
; load 0
; type 16 reg 0x1f2 extra 0x0
; ld2 [sp,-8],tcc__r0
; stack adjust: fc + disp - loc 2
lda -8 + __main_locals + 1,s
sta.b tcc__r0
; gsym_addr t 0 a 7405 ind 7405
; tcc__r0 to compare reg
lda.b tcc__r0 ; DON'T OPTIMIZE
; gtst inv 1 t 0 v 243 r 7493 ind 7493
; cmp op 0x95 inv 1 v 243 r 7493
; cmp ne
bne +
; gsym_addr t 0 a 7580 ind 7580
brl __local_4
+
; gtst finished; t 7493
; ldpush before load type 0x10 reg 0x1f2
; load 0
; type 16 reg 0x1f2 extra 0x0
; ld2 [sp,-4],tcc__r0
; stack adjust: fc + disp - loc 6
lda -4 + __main_locals + 1,s
sta.b tcc__r0
; ldpush2 (type 0x10 reg 0x0) tcc__r0
pei (tcc__r0)
; ldpush before load type 0x10 reg 0x1f2
; load 0
; type 16 reg 0x1f2 extra 0x0
; ld2 [sp,-2],tcc__r0
; stack adjust: fc + disp - loc 10
lda 0 + __main_locals + 1,s
sta.b tcc__r0
; ldpush2 (type 0x10 reg 0x0) tcc__r0
pei (tcc__r0)
; push1 imm r 0xf0
sep #$20
lda #1
pha
rep #$20
; call r 0x2f0
jsr.l bgSetScroll
; add sp, #5
tsa
clc
adc #5
tas
__local_4:
; gsym_addr t 7493 a 8227 ind 8227
; call r 0x2f0
jsr.l WaitForVBlank
; gjmp_addr 2817 at 8297
jmp.w __local_5
; gsym_addr t 8338 a 2817 ind 8338
; gsym_addr t 0 a 8373 ind 8373
; gsym_addr t 0 a 2817 ind 8405
; load 0
; type 0 reg 0xf0 extra 0x0
; ld2 #0,tcc__r0
lda.w #0
sta.b tcc__r0
; gjmp_addr 0 at 8514
jmp.w __local_6
; gsym_addr t 8552 a 0 ind 8552
__local_6:
; gsym_addr t 8552 a 8584 ind 8584
; add sp, #__main_locals
.ifgr __main_locals 0
tsa
clc
adc #__main_locals
tas
.endif
rtl
.ends
.ramsection "ram.data" bank $7f slot 3
__local_dummy.data dsb 1

.ends

.section ".data" superfree

__local_dummy.data: .db 0
.ends

.section ".rodata" superfree

__local_dummy.rodata: .db 0
.ends

.ramsection ".bss" bank $7e slot 2
__local_dummybss dsb 1
.ends
