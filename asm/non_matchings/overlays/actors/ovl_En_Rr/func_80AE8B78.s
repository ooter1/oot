.late_rodata
glabel D_80AEA8A0
    .float 2500.0

.text
glabel func_80AE8B78
/* 00738 80AE8B78 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0073C 80AE8B7C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00740 80AE8B80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00744 80AE8B84 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 00748 80AE8B88 A0800370 */  sb      $zero, 0x0370($a0)         ## 00000370
/* 0074C 80AE8B8C A48E01EA */  sh      $t6, 0x01EA($a0)           ## 000001EA
/* 00750 80AE8B90 3C0180AF */  lui     $at, %hi(D_80AEA8A0)       ## $at = 80AF0000
/* 00754 80AE8B94 E4800364 */  swc1    $f0, 0x0364($a0)           ## 00000364
/* 00758 80AE8B98 C424A8A0 */  lwc1    $f4, %lo(D_80AEA8A0)($at)  
/* 0075C 80AE8B9C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00760 80AE8BA0 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 00764 80AE8BA4 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00768 80AE8BA8 00037980 */  sll     $t7, $v1,  6               
/* 0076C 80AE8BAC 008F1021 */  addu    $v0, $a0, $t7              
/* 00770 80AE8BB0 E4800218 */  swc1    $f0, 0x0218($a0)           ## 00000218
/* 00774 80AE8BB4 E4800220 */  swc1    $f0, 0x0220($a0)           ## 00000220
/* 00778 80AE8BB8 E4800250 */  swc1    $f0, 0x0250($a0)           ## 00000250
/* 0077C 80AE8BBC E4800258 */  swc1    $f0, 0x0258($a0)           ## 00000258
/* 00780 80AE8BC0 E4800228 */  swc1    $f0, 0x0228($a0)           ## 00000228
/* 00784 80AE8BC4 E48401FC */  swc1    $f4, 0x01FC($a0)           ## 000001FC
/* 00788 80AE8BC8 E4820240 */  swc1    $f2, 0x0240($a0)           ## 00000240
/* 0078C 80AE8BCC E4820238 */  swc1    $f2, 0x0238($a0)           ## 00000238
/* 00790 80AE8BD0 3C1880AF */  lui     $t8, %hi(func_80AE9880)    ## $t8 = 80AF0000
/* 00794 80AE8BD4 27189880 */  addiu   $t8, $t8, %lo(func_80AE9880) ## $t8 = 80AE9880
/* 00798 80AE8BD8 E4400310 */  swc1    $f0, 0x0310($v0)           ## 00000310
/* 0079C 80AE8BDC E4400318 */  swc1    $f0, 0x0318($v0)           ## 00000318
/* 007A0 80AE8BE0 E44002E8 */  swc1    $f0, 0x02E8($v0)           ## 000002E8
/* 007A4 80AE8BE4 E44002D0 */  swc1    $f0, 0x02D0($v0)           ## 000002D0
/* 007A8 80AE8BE8 E44002D8 */  swc1    $f0, 0x02D8($v0)           ## 000002D8
/* 007AC 80AE8BEC E44002A8 */  swc1    $f0, 0x02A8($v0)           ## 000002A8
/* 007B0 80AE8BF0 E4400290 */  swc1    $f0, 0x0290($v0)           ## 00000290
/* 007B4 80AE8BF4 E4400298 */  swc1    $f0, 0x0298($v0)           ## 00000298
/* 007B8 80AE8BF8 E4400268 */  swc1    $f0, 0x0268($v0)           ## 00000268
/* 007BC 80AE8BFC E4400228 */  swc1    $f0, 0x0228($v0)           ## 00000228
/* 007C0 80AE8C00 E4400250 */  swc1    $f0, 0x0250($v0)           ## 00000250
/* 007C4 80AE8C04 E4400258 */  swc1    $f0, 0x0258($v0)           ## 00000258
/* 007C8 80AE8C08 E44202F8 */  swc1    $f2, 0x02F8($v0)           ## 000002F8
/* 007CC 80AE8C0C E4420300 */  swc1    $f2, 0x0300($v0)           ## 00000300
/* 007D0 80AE8C10 E44202B8 */  swc1    $f2, 0x02B8($v0)           ## 000002B8
/* 007D4 80AE8C14 E44202C0 */  swc1    $f2, 0x02C0($v0)           ## 000002C0
/* 007D8 80AE8C18 E4420278 */  swc1    $f2, 0x0278($v0)           ## 00000278
/* 007DC 80AE8C1C E4420280 */  swc1    $f2, 0x0280($v0)           ## 00000280
/* 007E0 80AE8C20 E4420238 */  swc1    $f2, 0x0238($v0)           ## 00000238
/* 007E4 80AE8C24 E4420240 */  swc1    $f2, 0x0240($v0)           ## 00000240
/* 007E8 80AE8C28 AC98014C */  sw      $t8, 0x014C($a0)           ## 0000014C
/* 007EC 80AE8C2C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 007F0 80AE8C30 24053995 */  addiu   $a1, $zero, 0x3995         ## $a1 = 00003995
/* 007F4 80AE8C34 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007F8 80AE8C38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007FC 80AE8C3C 03E00008 */  jr      $ra                        
/* 00800 80AE8C40 00000000 */  nop
