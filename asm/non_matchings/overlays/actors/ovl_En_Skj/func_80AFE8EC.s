glabel func_80AFE8EC
/* 0063C 80AFE8EC C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 00640 80AFE8F0 C4A60024 */  lwc1    $f6, 0x0024($a1)           ## 00000024
/* 00644 80AFE8F4 C488002C */  lwc1    $f8, 0x002C($a0)           ## 0000002C
/* 00648 80AFE8F8 C4AA002C */  lwc1    $f10, 0x002C($a1)          ## 0000002C
/* 0064C 80AFE8FC 46062001 */  sub.s   $f0, $f4, $f6              
/* 00650 80AFE900 3C014429 */  lui     $at, 0x4429                ## $at = 44290000
/* 00654 80AFE904 C4900028 */  lwc1    $f16, 0x0028($a0)          ## 00000028
/* 00658 80AFE908 460A4081 */  sub.s   $f2, $f8, $f10             
/* 0065C 80AFE90C 46000102 */  mul.s   $f4, $f0, $f0              
/* 00660 80AFE910 44815000 */  mtc1    $at, $f10                  ## $f10 = 676.00
/* 00664 80AFE914 C4B20028 */  lwc1    $f18, 0x0028($a1)          ## 00000028
/* 00668 80AFE918 46021182 */  mul.s   $f6, $f2, $f2              
/* 0066C 80AFE91C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00670 80AFE920 46128301 */  sub.s   $f12, $f16, $f18           
/* 00674 80AFE924 46062200 */  add.s   $f8, $f4, $f6              
/* 00678 80AFE928 460A403E */  c.le.s  $f8, $f10                  
/* 0067C 80AFE92C 00000000 */  nop
/* 00680 80AFE930 45000002 */  bc1f    .L80AFE93C                 
/* 00684 80AFE934 00000000 */  nop
/* 00688 80AFE938 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AFE93C:
/* 0068C 80AFE93C 10400008 */  beq     $v0, $zero, .L80AFE960     
/* 00690 80AFE940 00000000 */  nop
/* 00694 80AFE944 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00698 80AFE948 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0069C 80AFE94C 460C803E */  c.le.s  $f16, $f12                 
/* 006A0 80AFE950 00000000 */  nop
/* 006A4 80AFE954 45000002 */  bc1f    .L80AFE960                 
/* 006A8 80AFE958 00000000 */  nop
/* 006AC 80AFE95C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AFE960:
/* 006B0 80AFE960 03E00008 */  jr      $ra                        
/* 006B4 80AFE964 00000000 */  nop
