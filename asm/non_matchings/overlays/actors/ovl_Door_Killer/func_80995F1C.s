glabel func_80995F1C
/* 012CC 80995F1C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 012D0 80995F20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012D4 80995F24 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 012D8 80995F28 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 012DC 80995F2C 9482021A */  lhu     $v0, 0x021A($a0)           ## 0000021A
/* 012E0 80995F30 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 012E4 80995F34 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000000
/* 012E8 80995F38 28410014 */  slti    $at, $v0, 0x0014           
/* 012EC 80995F3C 10200004 */  beq     $at, $zero, .L80995F50     
/* 012F0 80995F40 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = FFFFFFFF
/* 012F4 80995F44 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 012F8 80995F48 55C0000B */  bnel    $t6, $zero, .L80995F78     
/* 012FC 80995F4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80995F50:
/* 01300 80995F50 0C265790 */  jal     func_80995E40              
/* 01304 80995F54 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 01308 80995F58 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 0130C 80995F5C 3C058099 */  lui     $a1, %hi(D_80996048)       ## $a1 = 80990000
/* 01310 80995F60 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01314 80995F64 00037880 */  sll     $t7, $v1,  2               
/* 01318 80995F68 00AF2821 */  addu    $a1, $a1, $t7              
/* 0131C 80995F6C 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 01320 80995F70 8CA56048 */  lw      $a1, %lo(D_80996048)($a1)  
/* 01324 80995F74 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80995F78:
/* 01328 80995F78 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0132C 80995F7C 03E00008 */  jr      $ra                        
/* 01330 80995F80 00000000 */  nop
/* 01334 80995F84 00000000 */  nop
/* 01338 80995F88 00000000 */  nop
/* 0133C 80995F8C 00000000 */  nop
