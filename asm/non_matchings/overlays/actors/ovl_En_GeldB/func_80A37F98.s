.late_rodata
glabel D_80A3A258
    .float 0.05

.text
glabel func_80A37F98
/* 02C88 80A37F98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02C8C 80A37F9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02C90 80A37FA0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02C94 80A37FA4 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 02C98 80A37FA8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 02C9C 80A37FAC 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 02CA0 80A37FB0 51C00005 */  beql    $t6, $zero, .L80A37FC8     
/* 02CA4 80A37FB4 304F0001 */  andi    $t7, $v0, 0x0001           ## $t7 = 00000000
/* 02CA8 80A37FB8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02CAC 80A37FBC 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 02CB0 80A37FC0 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 02CB4 80A37FC4 304F0001 */  andi    $t7, $v0, 0x0001           ## $t7 = 00000000
.L80A37FC8:
/* 02CB8 80A37FC8 51E0000D */  beql    $t7, $zero, .L80A38000     
/* 02CBC 80A37FCC 90F80114 */  lbu     $t8, 0x0114($a3)           ## 00000114
/* 02CC0 80A37FD0 C4E00068 */  lwc1    $f0, 0x0068($a3)           ## 00000068
/* 02CC4 80A37FD4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02CC8 80A37FD8 3C0180A4 */  lui     $at, %hi(D_80A3A258)       ## $at = 80A40000
/* 02CCC 80A37FDC 4606003C */  c.lt.s  $f0, $f6                   
/* 02CD0 80A37FE0 00000000 */  nop
/* 02CD4 80A37FE4 45020005 */  bc1fl   .L80A37FFC                 
/* 02CD8 80A37FE8 A4E00318 */  sh      $zero, 0x0318($a3)         ## 00000318
/* 02CDC 80A37FEC C428A258 */  lwc1    $f8, %lo(D_80A3A258)($at)  
/* 02CE0 80A37FF0 46080280 */  add.s   $f10, $f0, $f8             
/* 02CE4 80A37FF4 E4EA0068 */  swc1    $f10, 0x0068($a3)          ## 00000068
/* 02CE8 80A37FF8 A4E00318 */  sh      $zero, 0x0318($a3)         ## 00000318
.L80A37FFC:
/* 02CEC 80A37FFC 90F80114 */  lbu     $t8, 0x0114($a3)           ## 00000114
.L80A38000:
/* 02CF0 80A38000 57000011 */  bnel    $t8, $zero, .L80A38048     
/* 02CF4 80A38004 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02CF8 80A38008 94F90088 */  lhu     $t9, 0x0088($a3)           ## 00000088
/* 02CFC 80A3800C 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 02D00 80A38010 5100000D */  beql    $t0, $zero, .L80A38048     
/* 02D04 80A38014 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D08 80A38018 90E900AF */  lbu     $t1, 0x00AF($a3)           ## 000000AF
/* 02D0C 80A3801C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02D10 80A38020 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 02D14 80A38024 15200005 */  bne     $t1, $zero, .L80A3803C     
/* 02D18 80A38028 00000000 */  nop
/* 02D1C 80A3802C 0C28E41F */  jal     func_80A3907C              
/* 02D20 80A38030 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 02D24 80A38034 10000004 */  beq     $zero, $zero, .L80A38048   
/* 02D28 80A38038 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A3803C:
/* 02D2C 80A3803C 0C28D567 */  jal     func_80A3559C              
/* 02D30 80A38040 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02D34 80A38044 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A38048:
/* 02D38 80A38048 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02D3C 80A3804C 03E00008 */  jr      $ra                        
/* 02D40 80A38050 00000000 */  nop
