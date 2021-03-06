.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Wood02_InitVars
 .word 0x00770600, 0x00000000, 0x007C0000, 0x000001A4
.word EnWood02_Init
.word EnWood02_Destroy
.word EnWood02_Update
.word EnWood02_Draw
glabel D_80B3BF00
 .word 0x0D000D39, 0x10010000, 0x05000000, 0x00000000, 0x00000000, 0x0FC0074A, 0x00000000, 0x00010100, 0x0012003C, 0x00000000, 0x00000000
glabel D_80B3BF2C
 .word 0x4430C000, 0x44034000, 0x43FF0000, 0x43FA0000, 0x440D8000, 0x430D0000
glabel D_80B3BF44
 .byte 0x1F, 0xFF, 0x4C, 0x9E, 0x77, 0xF5, 0xA5, 0xC9, 0xD6, 0xC3
glabel D_80B3BF4E
 .byte 0xA0, 0x00
glabel D_80B3BF50
 .word 0x304C15E0
glabel D_80B3BF54
 .word 0x060078D0, 0x06007CA0, 0x060080D0, 0x06000090, 0x06000340, 0x06000340, 0x06000700
glabel D_80B3BF70
 .word 0x06007968, 0x06007D38, 0x060081A8, 0x00000000, 0x00000000, 0x00000000, 0x06007AD0, 0x06007E20, 0x06008350, 0x06000160, 0x06000440, 0x06000700

