glabel func_80B7A10C
/* 1076C 80B7A10C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 10770 80B7A110 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 10774 80B7A114 AFA60008 */  sw      $a2, 0x0008($sp)           
/* 10778 80B7A118 14A10007 */  bne     $a1, $at, .L80B7A138       
/* 1077C 80B7A11C AFA7000C */  sw      $a3, 0x000C($sp)           
/* 10780 80B7A120 8FA20010 */  lw      $v0, 0x0010($sp)           
/* 10784 80B7A124 8FAF0014 */  lw      $t7, 0x0014($sp)           
/* 10788 80B7A128 844E0000 */  lh      $t6, 0x0000($v0)           ## 00000000
/* 1078C 80B7A12C 85F80164 */  lh      $t8, 0x0164($t7)           ## 00000164
/* 10790 80B7A130 01D8C823 */  subu    $t9, $t6, $t8              
/* 10794 80B7A134 A4590000 */  sh      $t9, 0x0000($v0)           ## 00000000
.L80B7A138:
/* 10798 80B7A138 03E00008 */  jr      $ra                        
/* 1079C 80B7A13C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
