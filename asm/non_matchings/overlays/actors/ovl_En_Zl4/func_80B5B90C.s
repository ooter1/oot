glabel func_80B5B90C
/* 0015C 80B5B90C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00160 80B5B910 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00164 80B5B914 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00168 80B5B918 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 0016C 80B5B91C 24050016 */  addiu   $a1, $zero, 0x0016         ## $a1 = 00000016
/* 00170 80B5B920 10400003 */  beq     $v0, $zero, .L80B5B930     
/* 00174 80B5B924 3043FFFF */  andi    $v1, $v0, 0xFFFF           ## $v1 = 00000000
/* 00178 80B5B928 1000001D */  beq     $zero, $zero, .L80B5B9A0   
/* 0017C 80B5B92C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80B5B930:
/* 00180 80B5B930 3C048012 */  lui     $a0, %hi(gBitFlags)
/* 00184 80B5B934 24847120 */  addiu   $a0, %lo(gBitFlags)
/* 00188 80B5B938 3C038016 */  lui     $v1, %hi(gSaveContext+0xa4)
/* 0018C 80B5B93C 8C63E704 */  lw      $v1, %lo(gSaveContext+0xa4)($v1)
/* 00190 80B5B940 8C8E0048 */  lw      $t6, 0x0048($a0)           ## 80127168
/* 00194 80B5B944 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00198 80B5B948 01C37824 */  and     $t7, $t6, $v1              
/* 0019C 80B5B94C 51E00003 */  beql    $t7, $zero, .L80B5B95C     
/* 001A0 80B5B950 8C98004C */  lw      $t8, 0x004C($a0)           ## 8012716C
/* 001A4 80B5B954 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 001A8 80B5B958 8C98004C */  lw      $t8, 0x004C($a0)           ## 8012716C
.L80B5B95C:
/* 001AC 80B5B95C 0303C824 */  and     $t9, $t8, $v1              
/* 001B0 80B5B960 53200004 */  beql    $t9, $zero, .L80B5B974     
/* 001B4 80B5B964 8C880050 */  lw      $t0, 0x0050($a0)           ## 80127170
/* 001B8 80B5B968 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000002
/* 001BC 80B5B96C 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00000002
/* 001C0 80B5B970 8C880050 */  lw      $t0, 0x0050($a0)           ## 80127170
.L80B5B974:
/* 001C4 80B5B974 01034824 */  and     $t1, $t0, $v1              
/* 001C8 80B5B978 11200003 */  beq     $t1, $zero, .L80B5B988     
/* 001CC 80B5B97C 2403703C */  addiu   $v1, $zero, 0x703C         ## $v1 = 0000703C
/* 001D0 80B5B980 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000003
/* 001D4 80B5B984 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00000003
.L80B5B988:
/* 001D8 80B5B988 28410002 */  slti    $at, $v0, 0x0002           
/* 001DC 80B5B98C 14200003 */  bne     $at, $zero, .L80B5B99C     
/* 001E0 80B5B990 00000000 */  nop
/* 001E4 80B5B994 10000001 */  beq     $zero, $zero, .L80B5B99C   
/* 001E8 80B5B998 2403703D */  addiu   $v1, $zero, 0x703D         ## $v1 = 0000703D
.L80B5B99C:
/* 001EC 80B5B99C 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000703D
.L80B5B9A0:
/* 001F0 80B5B9A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001F4 80B5B9A4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001F8 80B5B9A8 03E00008 */  jr      $ra                        
/* 001FC 80B5B9AC 00000000 */  nop
