glabel func_80933554
/* 06F84 80933554 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 06F88 80933558 AFBF001C */  sw      $ra, 0x001C($sp)
/* 06F8C 8093355C AFB00018 */  sw      $s0, 0x0018($sp)
/* 06F90 80933560 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 06F94 80933564 3C018093 */  lui     $at, %hi(D_8093746C)       ## $at = 80930000
/* 06F98 80933568 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 06F9C 8093356C 000FC080 */  sll     $t8, $t7,  2
/* 06FA0 80933570 00380821 */  addu    $at, $at, $t8
/* 06FA4 80933574 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 06FA8 80933578 AC2E746C */  sw      $t6, %lo(D_8093746C)($at)
/* 06FAC 8093357C 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 06FB0 80933580 3C058093 */  lui     $a1, %hi(D_80937864)       ## $a1 = 80930000
/* 06FB4 80933584 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 06FB8 80933588 00194080 */  sll     $t0, $t9,  2
/* 06FBC 8093358C 00A82821 */  addu    $a1, $a1, $t0
/* 06FC0 80933590 8CA57864 */  lw      $a1, %lo(D_80937864)($a1)
/* 06FC4 80933594 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 06FC8 80933598 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 06FCC 8093359C 92090196 */  lbu     $t1, 0x0196($s0)           ## 00000196
/* 06FD0 809335A0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 06FD4 809335A4 A2000195 */  sb      $zero, 0x0195($s0)         ## 00000195
/* 06FD8 809335A8 15210002 */  bne     $t1, $at, .L809335B4
/* 06FDC 809335AC A2000114 */  sb      $zero, 0x0114($s0)         ## 00000114
/* 06FE0 809335B0 A2000196 */  sb      $zero, 0x0196($s0)         ## 00000196
.L809335B4:
/* 06FE4 809335B4 8E05011C */  lw      $a1, 0x011C($s0)           ## 0000011C
/* 06FE8 809335B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06FEC 809335BC 0C00B6EC */  jal     func_8002DBB0
/* 06FF0 809335C0 24A503C8 */  addiu   $a1, $a1, 0x03C8           ## $a1 = 000003C8
/* 06FF4 809335C4 8E05011C */  lw      $a1, 0x011C($s0)           ## 0000011C
/* 06FF8 809335C8 E60003C4 */  swc1    $f0, 0x03C4($s0)           ## 000003C4
/* 06FFC 809335CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07000 809335D0 0C00B6B0 */  jal     func_8002DAC0
/* 07004 809335D4 24A503C8 */  addiu   $a1, $a1, 0x03C8           ## $a1 = 000003C8
/* 07008 809335D8 A60201A4 */  sh      $v0, 0x01A4($s0)           ## 000001A4
/* 0700C 809335DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07010 809335E0 0C24CF3B */  jal     func_80933CEC
/* 07014 809335E4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 07018 809335E8 3C0A8093 */  lui     $t2, %hi(func_80933608)    ## $t2 = 80930000
/* 0701C 809335EC 254A3608 */  addiu   $t2, $t2, %lo(func_80933608) ## $t2 = 80933608
/* 07020 809335F0 AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
/* 07024 809335F4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 07028 809335F8 8FB00018 */  lw      $s0, 0x0018($sp)
/* 0702C 809335FC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 07030 80933600 03E00008 */  jr      $ra
/* 07034 80933604 00000000 */  nop
