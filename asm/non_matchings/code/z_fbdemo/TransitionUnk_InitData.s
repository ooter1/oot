glabel TransitionUnk_InitData
/* B28E9C 800B1CFC 8C830004 */  lw    $v1, 4($a0)
/* B28EA0 800B1D00 00001025 */  move  $v0, $zero
/* B28EA4 800B1D04 24630001 */  addiu $v1, $v1, 1
/* B28EA8 800B1D08 1860002A */  blez  $v1, .L800B1DB4
/* B28EAC 800B1D0C 00000000 */   nop
/* B28EB0 800B1D10 8C860000 */  lw    $a2, ($a0)
/* B28EB4 800B1D14 24C60001 */  addiu $a2, $a2, 1
.L800B1D18:
/* B28EB8 800B1D18 18C00022 */  blez  $a2, .L800B1DA4
/* B28EBC 800B1D1C 00002825 */   move  $a1, $zero
/* B28EC0 800B1D20 00027140 */  sll   $t6, $v0, 5
/* B28EC4 800B1D24 448E2000 */  mtc1  $t6, $f4
/* B28EC8 800B1D28 00001825 */  move  $v1, $zero
/* B28ECC 800B1D2C 00003825 */  move  $a3, $zero
/* B28ED0 800B1D30 46802020 */  cvt.s.w $f0, $f4
.L800B1D34:
/* B28ED4 800B1D34 00460019 */  multu $v0, $a2
/* B28ED8 800B1D38 44873000 */  mtc1  $a3, $f6
/* B28EDC 800B1D3C 8C8F000C */  lw    $t7, 0xc($a0)
/* B28EE0 800B1D40 24A50001 */  addiu $a1, $a1, 1
/* B28EE4 800B1D44 46803220 */  cvt.s.w $f8, $f6
/* B28EE8 800B1D48 01E3C021 */  addu  $t8, $t7, $v1
/* B28EEC 800B1D4C 24E70020 */  addiu $a3, $a3, 0x20
/* B28EF0 800B1D50 0000C812 */  mflo  $t9
/* B28EF4 800B1D54 001940C0 */  sll   $t0, $t9, 3
/* B28EF8 800B1D58 03084821 */  addu  $t1, $t8, $t0
/* B28EFC 800B1D5C E5280000 */  swc1  $f8, ($t1)
/* B28F00 800B1D60 8C8C0000 */  lw    $t4, ($a0)
/* B28F04 800B1D64 8C8A000C */  lw    $t2, 0xc($a0)
/* B28F08 800B1D68 258D0001 */  addiu $t5, $t4, 1
/* B28F0C 800B1D6C 004D0019 */  multu $v0, $t5
/* B28F10 800B1D70 01435821 */  addu  $t3, $t2, $v1
/* B28F14 800B1D74 24630008 */  addiu $v1, $v1, 8
/* B28F18 800B1D78 00007012 */  mflo  $t6
/* B28F1C 800B1D7C 000E78C0 */  sll   $t7, $t6, 3
/* B28F20 800B1D80 016FC821 */  addu  $t9, $t3, $t7
/* B28F24 800B1D84 E7200004 */  swc1  $f0, 4($t9)
/* B28F28 800B1D88 8C860000 */  lw    $a2, ($a0)
/* B28F2C 800B1D8C 24C60001 */  addiu $a2, $a2, 1
/* B28F30 800B1D90 00A6082A */  slt   $at, $a1, $a2
/* B28F34 800B1D94 1420FFE7 */  bnez  $at, .L800B1D34
/* B28F38 800B1D98 00000000 */   nop
/* B28F3C 800B1D9C 8C830004 */  lw    $v1, 4($a0)
/* B28F40 800B1DA0 24630001 */  addiu $v1, $v1, 1
.L800B1DA4:
/* B28F44 800B1DA4 24420001 */  addiu $v0, $v0, 1
/* B28F48 800B1DA8 0043082A */  slt   $at, $v0, $v1
/* B28F4C 800B1DAC 1420FFDA */  bnez  $at, .L800B1D18
/* B28F50 800B1DB0 00000000 */   nop
.L800B1DB4:
/* B28F54 800B1DB4 03E00008 */  jr    $ra
/* B28F58 800B1DB8 00000000 */   nop

