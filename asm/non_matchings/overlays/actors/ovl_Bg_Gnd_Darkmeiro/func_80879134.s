glabel func_80879134
/* 00504 80879134 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00508 80879138 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0050C 8087913C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00510 80879140 84820166 */  lh      $v0, 0x0166($a0)           ## 00000166
/* 00514 80879144 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00518 80879148 18400002 */  blez    $v0, .L80879154            
/* 0051C 8087914C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00520 80879150 A48E0166 */  sh      $t6, 0x0166($a0)           ## 00000166
.L80879154:
/* 00524 80879154 84C5001C */  lh      $a1, 0x001C($a2)           ## 0000001C
/* 00528 80879158 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0052C 8087915C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00530 80879160 00052A03 */  sra     $a1, $a1,  8               
/* 00534 80879164 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00538 80879168 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0053C 8087916C 10400003 */  beq     $v0, $zero, .L8087917C     
/* 00540 80879170 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00544 80879174 240F0040 */  addiu   $t7, $zero, 0x0040         ## $t7 = 00000040
/* 00548 80879178 A4CF0166 */  sh      $t7, 0x0166($a2)           ## 00000166
.L8087917C:
/* 0054C 8087917C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00550 80879180 0C21E30C */  jal     func_80878C30              
/* 00554 80879184 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00558 80879188 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0055C 8087918C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00560 80879190 03E00008 */  jr      $ra                        
/* 00564 80879194 00000000 */  nop
