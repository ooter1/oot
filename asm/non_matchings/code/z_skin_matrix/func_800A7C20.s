glabel func_800A7C20
/* B1EDC0 800A7C20 848E0000 */  lh    $t6, ($a0)
/* B1EDC4 800A7C24 448E2000 */  mtc1  $t6, $f4
/* B1EDC8 800A7C28 00000000 */  nop   
/* B1EDCC 800A7C2C 468021A0 */  cvt.s.w $f6, $f4
/* B1EDD0 800A7C30 E4A60000 */  swc1  $f6, ($a1)
/* B1EDD4 800A7C34 848F0002 */  lh    $t7, 2($a0)
/* B1EDD8 800A7C38 448F4000 */  mtc1  $t7, $f8
/* B1EDDC 800A7C3C 00000000 */  nop   
/* B1EDE0 800A7C40 468042A0 */  cvt.s.w $f10, $f8
/* B1EDE4 800A7C44 E4AA0004 */  swc1  $f10, 4($a1)
/* B1EDE8 800A7C48 84980004 */  lh    $t8, 4($a0)
/* B1EDEC 800A7C4C 44988000 */  mtc1  $t8, $f16
/* B1EDF0 800A7C50 00000000 */  nop   
/* B1EDF4 800A7C54 468084A0 */  cvt.s.w $f18, $f16
/* B1EDF8 800A7C58 03E00008 */  jr    $ra
/* B1EDFC 800A7C5C E4B20008 */   swc1  $f18, 8($a1)

