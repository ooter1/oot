glabel func_809834D8
/* 001D8 809834D8 14800003 */  bne     $a0, $zero, .L809834E8     
/* 001DC 809834DC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001E0 809834E0 03E00008 */  jr      $ra                        
/* 001E4 809834E4 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L809834E8:
/* 001E8 809834E8 14810003 */  bne     $a0, $at, .L809834F8       
/* 001EC 809834EC 24030007 */  addiu   $v1, $zero, 0x0007         ## $v1 = 00000007
/* 001F0 809834F0 03E00008 */  jr      $ra                        
/* 001F4 809834F4 24020006 */  addiu   $v0, $zero, 0x0006         ## $v0 = 00000006
.L809834F8:
/* 001F8 809834F8 03E00008 */  jr      $ra                        
/* 001FC 809834FC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000007
