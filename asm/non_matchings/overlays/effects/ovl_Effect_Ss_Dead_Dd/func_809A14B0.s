glabel func_809A14B0
/* 0004D0 809A14B0 AFA40000 */  sw    $a0, ($sp)
/* 0004D4 809A14B4 AFA50004 */  sw    $a1, 4($sp)
/* 0004D8 809A14B8 84CE0040 */  lh    $t6, 0x40($a2)
/* 0004DC 809A14BC 84CF0052 */  lh    $t7, 0x52($a2)
/* 0004E0 809A14C0 01CFC021 */  addu  $t8, $t6, $t7
/* 0004E4 809A14C4 A4D80040 */  sh    $t8, 0x40($a2)
/* 0004E8 809A14C8 84D90040 */  lh    $t9, 0x40($a2)
/* 0004EC 809A14CC 07230003 */  bgezl $t9, .L809A14DC
/* 0004F0 809A14D0 84C80056 */   lh    $t0, 0x56($a2)
/* 0004F4 809A14D4 A4C00040 */  sh    $zero, 0x40($a2)
/* 0004F8 809A14D8 84C80056 */  lh    $t0, 0x56($a2)
.L809A14DC:
/* 0004FC 809A14DC 5100000D */  beql  $t0, $zero, .L809A1514
/* 000500 809A14E0 84C2004A */   lh    $v0, 0x4a($a2)
/* 000504 809A14E4 84C9004A */  lh    $t1, 0x4a($a2)
/* 000508 809A14E8 84CA0054 */  lh    $t2, 0x54($a2)
/* 00050C 809A14EC 240D00FF */  li    $t5, 255
/* 000510 809A14F0 012A5821 */  addu  $t3, $t1, $t2
/* 000514 809A14F4 A4CB004A */  sh    $t3, 0x4a($a2)
/* 000518 809A14F8 84CC004A */  lh    $t4, 0x4a($a2)
/* 00051C 809A14FC 29810100 */  slti  $at, $t4, 0x100
/* 000520 809A1500 1420000B */  bnez  $at, .L809A1530
/* 000524 809A1504 00000000 */   nop   
/* 000528 809A1508 03E00008 */  jr    $ra
/* 00052C 809A150C A4CD004A */   sh    $t5, 0x4a($a2)
/* 000530 809A1510 84C2004A */  lh    $v0, 0x4a($a2)
.L809A1514:
/* 000534 809A1514 84C30054 */  lh    $v1, 0x54($a2)
/* 000538 809A1518 0043082A */  slt   $at, $v0, $v1
/* 00053C 809A151C 10200003 */  beqz  $at, .L809A152C
/* 000540 809A1520 00437023 */   subu  $t6, $v0, $v1
/* 000544 809A1524 03E00008 */  jr    $ra
/* 000548 809A1528 A4C0004A */   sh    $zero, 0x4a($a2)
.L809A152C:
/* 00054C 809A152C A4CE004A */  sh    $t6, 0x4a($a2)
.L809A1530:
/* 000550 809A1530 03E00008 */  jr    $ra
/* 000554 809A1534 00000000 */   nop   
/* 000558 809A1538 00000000 */  nop
/* 00055C 809A153C 00000000 */  nop
