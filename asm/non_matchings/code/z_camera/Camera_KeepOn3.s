.rdata
glabel D_80139294
    .asciz "\x1b[43;30mcamera: warning: talk: target is not valid, change parallel\n\x1b[m"
    .balign 4

glabel D_801392DC
    .asciz "camera: talk: BG&collision check %d time(s)\n"
    .balign 4

.late_rodata
glabel D_8013A0CC
    .float 0.01

glabel D_8013A0D0
    .float 182.04167

glabel D_8013A0D4
    .float 0.6

glabel D_8013A0D8
    .float 0.001

.text
glabel Camera_KeepOn3
/* AC4B84 8004D9E4 27BDFF18 */  addiu $sp, $sp, -0xe8
/* AC4B88 8004D9E8 AFB30028 */  sw    $s3, 0x28($sp)
/* AC4B8C 8004D9EC 00809825 */  move  $s3, $a0
/* AC4B90 8004D9F0 AFBF002C */  sw    $ra, 0x2c($sp)
/* AC4B94 8004D9F4 AFB20024 */  sw    $s2, 0x24($sp)
/* AC4B98 8004D9F8 AFB10020 */  sw    $s1, 0x20($sp)
/* AC4B9C 8004D9FC AFB0001C */  sw    $s0, 0x1c($sp)
/* AC4BA0 8004DA00 0C00B721 */  jal   Player_GetCameraYOffset
/* AC4BA4 8004DA04 8C840090 */   lw    $a0, 0x90($a0)
/* AC4BA8 8004DA08 E7A00058 */  swc1  $f0, 0x58($sp)
/* AC4BAC 8004DA0C 8E6200A8 */  lw    $v0, 0xa8($s3)
/* AC4BB0 8004DA10 10400004 */  beqz  $v0, .L8004DA24
/* AC4BB4 8004DA14 00000000 */   nop
/* AC4BB8 8004DA18 8C4E0130 */  lw    $t6, 0x130($v0)
/* AC4BBC 8004DA1C 55C0000C */  bnezl $t6, .L8004DA50
/* AC4BC0 8004DA20 8663015E */   lh    $v1, 0x15e($s3)
.L8004DA24:
/* AC4BC4 8004DA24 14400003 */  bnez  $v0, .L8004DA34
/* AC4BC8 8004DA28 3C048014 */   lui   $a0, %hi(D_80139294) # $a0, 0x8014
/* AC4BCC 8004DA2C 0C00084C */  jal   osSyncPrintf
/* AC4BD0 8004DA30 24849294 */   addiu $a0, %lo(D_80139294) # addiu $a0, $a0, -0x6d6c
.L8004DA34:
/* AC4BD4 8004DA34 AE6000A8 */  sw    $zero, 0xa8($s3)
/* AC4BD8 8004DA38 02602025 */  move  $a0, $s3
/* AC4BDC 8004DA3C 0C016911 */  jal   func_8005A444
/* AC4BE0 8004DA40 24050001 */   li    $a1, 1
/* AC4BE4 8004DA44 1000027F */  b     .L8004E444
/* AC4BE8 8004DA48 24020001 */   li    $v0, 1
/* AC4BEC 8004DA4C 8663015E */  lh    $v1, 0x15e($s3)
.L8004DA50:
/* AC4BF0 8004DA50 2401000A */  li    $at, 10
/* AC4BF4 8004DA54 50600006 */  beql  $v1, $zero, .L8004DA70
/* AC4BF8 8004DA58 8E64008C */   lw    $a0, 0x8c($s3)
/* AC4BFC 8004DA5C 10610003 */  beq   $v1, $at, .L8004DA6C
/* AC4C00 8004DA60 24010014 */   li    $at, 20
/* AC4C04 8004DA64 54610012 */  bnel  $v1, $at, .L8004DAB0
/* AC4C08 8004DA68 866D014C */   lh    $t5, 0x14c($s3)
.L8004DA6C:
/* AC4C0C 8004DA6C 8E64008C */  lw    $a0, 0x8c($s3)
.L8004DA70:
/* AC4C10 8004DA70 8C8F01DC */  lw    $t7, 0x1dc($a0)
/* AC4C14 8004DA74 55E0000A */  bnezl $t7, .L8004DAA0
/* AC4C18 8004DA78 866B014C */   lh    $t3, 0x14c($s3)
/* AC4C1C 8004DA7C 8678014C */  lh    $t8, 0x14c($s3)
/* AC4C20 8004DA80 86690164 */  lh    $t1, 0x164($s3)
/* AC4C24 8004DA84 24020001 */  li    $v0, 1
/* AC4C28 8004DA88 37190020 */  ori   $t9, $t8, 0x20
/* AC4C2C 8004DA8C A679014C */  sh    $t9, 0x14c($s3)
/* AC4C30 8004DA90 352A0050 */  ori   $t2, $t1, 0x50
/* AC4C34 8004DA94 1000026B */  b     .L8004E444
/* AC4C38 8004DA98 AC8A01DC */   sw    $t2, 0x1dc($a0)
/* AC4C3C 8004DA9C 866B014C */  lh    $t3, 0x14c($s3)
.L8004DAA0:
/* AC4C40 8004DAA0 8663015E */  lh    $v1, 0x15e($s3)
/* AC4C44 8004DAA4 316CFFDF */  andi  $t4, $t3, 0xffdf
/* AC4C48 8004DAA8 A66C014C */  sh    $t4, 0x14c($s3)
/* AC4C4C 8004DAAC 866D014C */  lh    $t5, 0x14c($s3)
.L8004DAB0:
/* AC4C50 8004DAB0 2401000A */  li    $at, 10
/* AC4C54 8004DAB4 31AEFFEF */  andi  $t6, $t5, 0xffef
/* AC4C58 8004DAB8 10600008 */  beqz  $v1, .L8004DADC
/* AC4C5C 8004DABC A66E014C */   sh    $t6, 0x14c($s3)
/* AC4C60 8004DAC0 10610006 */  beq   $v1, $at, .L8004DADC
/* AC4C64 8004DAC4 24010014 */   li    $at, 20
/* AC4C68 8004DAC8 10610004 */  beq   $v1, $at, .L8004DADC
/* AC4C6C 8004DACC 3C0F8016 */   lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AC4C70 8004DAD0 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AC4C74 8004DAD4 85E20314 */  lh    $v0, 0x314($t7)
/* AC4C78 8004DAD8 10400058 */  beqz  $v0, .L8004DC3C
.L8004DADC:
/* AC4C7C 8004DADC 3C0D8016 */   lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* AC4C80 8004DAE0 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* AC4C84 8004DAE4 3C018014 */  lui   $at, %hi(D_8013A0CC)
/* AC4C88 8004DAE8 C42EA0CC */  lwc1  $f14, %lo(D_8013A0CC)($at)
/* AC4C8C 8004DAEC 85AE01F0 */  lh    $t6, 0x1f0($t5)
/* AC4C90 8004DAF0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC4C94 8004DAF4 44814000 */  mtc1  $at, $f8
/* AC4C98 8004DAF8 448E2000 */  mtc1  $t6, $f4
/* AC4C9C 8004DAFC 3C014288 */  li    $at, 0x42880000 # 0.000000
/* AC4CA0 8004DB00 86780142 */  lh    $t8, 0x142($s3)
/* AC4CA4 8004DB04 468021A0 */  cvt.s.w $f6, $f4
/* AC4CA8 8004DB08 44812000 */  mtc1  $at, $f4
/* AC4CAC 8004DB0C 3C098012 */  lui   $t1, %hi(sCameraSettings)
/* AC4CB0 8004DB10 0018C8C0 */  sll   $t9, $t8, 3
/* AC4CB4 8004DB14 866A0144 */  lh    $t2, 0x144($s3)
/* AC4CB8 8004DB18 01394821 */  addu  $t1, $t1, $t9
/* AC4CBC 8004DB1C 460E3082 */  mul.s $f2, $f6, $f14
/* AC4CC0 8004DB20 46002183 */  div.s $f6, $f4, $f0
/* AC4CC4 8004DB24 8D29D068 */  lw    $t1, %lo(sCameraSettings+4)($t1)
/* AC4CC8 8004DB28 000A58C0 */  sll   $t3, $t2, 3
/* AC4CCC 8004DB2C 012B6021 */  addu  $t4, $t1, $t3
/* AC4CD0 8004DB30 8D820004 */  lw    $v0, 4($t4)
/* AC4CD4 8004DB34 46024280 */  add.s $f10, $f8, $f2
/* AC4CD8 8004DB38 844F0000 */  lh    $t7, ($v0)
/* AC4CDC 8004DB3C 2442002C */  addiu $v0, $v0, 0x2c
/* AC4CE0 8004DB40 448F2000 */  mtc1  $t7, $f4
/* AC4CE4 8004DB44 46061202 */  mul.s $f8, $f2, $f6
/* AC4CE8 8004DB48 468021A0 */  cvt.s.w $f6, $f4
/* AC4CEC 8004DB4C 46085301 */  sub.s $f12, $f10, $f8
/* AC4CF0 8004DB50 460E3282 */  mul.s $f10, $f6, $f14
/* AC4CF4 8004DB54 00000000 */  nop
/* AC4CF8 8004DB58 46005202 */  mul.s $f8, $f10, $f0
/* AC4CFC 8004DB5C 00000000 */  nop
/* AC4D00 8004DB60 460C4102 */  mul.s $f4, $f8, $f12
/* AC4D04 8004DB64 E6640000 */  swc1  $f4, ($s3)
/* AC4D08 8004DB68 8458FFD8 */  lh    $t8, -0x28($v0)
/* AC4D0C 8004DB6C 44983000 */  mtc1  $t8, $f6
/* AC4D10 8004DB70 00000000 */  nop
/* AC4D14 8004DB74 468032A0 */  cvt.s.w $f10, $f6
/* AC4D18 8004DB78 E66A0004 */  swc1  $f10, 4($s3)
/* AC4D1C 8004DB7C 8459FFDC */  lh    $t9, -0x24($v0)
/* AC4D20 8004DB80 44994000 */  mtc1  $t9, $f8
/* AC4D24 8004DB84 00000000 */  nop
/* AC4D28 8004DB88 46804120 */  cvt.s.w $f4, $f8
/* AC4D2C 8004DB8C E6640008 */  swc1  $f4, 8($s3)
/* AC4D30 8004DB90 844AFFE0 */  lh    $t2, -0x20($v0)
/* AC4D34 8004DB94 448A3000 */  mtc1  $t2, $f6
/* AC4D38 8004DB98 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AC4D3C 8004DB9C 468032A0 */  cvt.s.w $f10, $f6
/* AC4D40 8004DBA0 E66A000C */  swc1  $f10, 0xc($s3)
/* AC4D44 8004DBA4 8449FFE4 */  lh    $t1, -0x1c($v0)
/* AC4D48 8004DBA8 44894000 */  mtc1  $t1, $f8
/* AC4D4C 8004DBAC 00000000 */  nop
/* AC4D50 8004DBB0 46804120 */  cvt.s.w $f4, $f8
/* AC4D54 8004DBB4 E6640010 */  swc1  $f4, 0x10($s3)
/* AC4D58 8004DBB8 844BFFE8 */  lh    $t3, -0x18($v0)
/* AC4D5C 8004DBBC 448B3000 */  mtc1  $t3, $f6
/* AC4D60 8004DBC0 00000000 */  nop
/* AC4D64 8004DBC4 468032A0 */  cvt.s.w $f10, $f6
/* AC4D68 8004DBC8 E66A0014 */  swc1  $f10, 0x14($s3)
/* AC4D6C 8004DBCC 844CFFEC */  lh    $t4, -0x14($v0)
/* AC4D70 8004DBD0 448C4000 */  mtc1  $t4, $f8
/* AC4D74 8004DBD4 00000000 */  nop
/* AC4D78 8004DBD8 46804120 */  cvt.s.w $f4, $f8
/* AC4D7C 8004DBDC E6640018 */  swc1  $f4, 0x18($s3)
/* AC4D80 8004DBE0 844DFFF0 */  lh    $t5, -0x10($v0)
/* AC4D84 8004DBE4 448D3000 */  mtc1  $t5, $f6
/* AC4D88 8004DBE8 00000000 */  nop
/* AC4D8C 8004DBEC 468032A0 */  cvt.s.w $f10, $f6
/* AC4D90 8004DBF0 460E5202 */  mul.s $f8, $f10, $f14
/* AC4D94 8004DBF4 E668001C */  swc1  $f8, 0x1c($s3)
/* AC4D98 8004DBF8 844EFFF4 */  lh    $t6, -0xc($v0)
/* AC4D9C 8004DBFC 448E2000 */  mtc1  $t6, $f4
/* AC4DA0 8004DC00 00000000 */  nop
/* AC4DA4 8004DC04 468021A0 */  cvt.s.w $f6, $f4
/* AC4DA8 8004DC08 E6660020 */  swc1  $f6, 0x20($s3)
/* AC4DAC 8004DC0C 844FFFF8 */  lh    $t7, -8($v0)
/* AC4DB0 8004DC10 448F5000 */  mtc1  $t7, $f10
/* AC4DB4 8004DC14 00000000 */  nop
/* AC4DB8 8004DC18 46805220 */  cvt.s.w $f8, $f10
/* AC4DBC 8004DC1C 460E4102 */  mul.s $f4, $f8, $f14
/* AC4DC0 8004DC20 E6640024 */  swc1  $f4, 0x24($s3)
/* AC4DC4 8004DC24 8458FFFC */  lh    $t8, -4($v0)
/* AC4DC8 8004DC28 A6780028 */  sh    $t8, 0x28($s3)
/* AC4DCC 8004DC2C 84590000 */  lh    $t9, ($v0)
/* AC4DD0 8004DC30 A679002A */  sh    $t9, 0x2a($s3)
/* AC4DD4 8004DC34 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AC4DD8 8004DC38 85420314 */  lh    $v0, 0x314($t2)
.L8004DC3C:
/* AC4DDC 8004DC3C 50400004 */  beql  $v0, $zero, .L8004DC50
/* AC4DE0 8004DC40 C7A60058 */   lwc1  $f6, 0x58($sp)
/* AC4DE4 8004DC44 0C011495 */  jal   Camera_CopyPREGToModeValues
/* AC4DE8 8004DC48 02602025 */   move  $a0, $s3
/* AC4DEC 8004DC4C C7A60058 */  lwc1  $f6, 0x58($sp)
.L8004DC50:
/* AC4DF0 8004DC50 C66A0000 */  lwc1  $f10, ($s3)
/* AC4DF4 8004DC54 26700050 */  addiu $s0, $s3, 0x50
/* AC4DF8 8004DC58 2666005C */  addiu $a2, $s3, 0x5c
/* AC4DFC 8004DC5C 460A3200 */  add.s $f8, $f6, $f10
/* AC4E00 8004DC60 AFA60048 */  sw    $a2, 0x48($sp)
/* AC4E04 8004DC64 02002825 */  move  $a1, $s0
/* AC4E08 8004DC68 27A40094 */  addiu $a0, $sp, 0x94
/* AC4E0C 8004DC6C 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* AC4E10 8004DC70 E7A80058 */   swc1  $f8, 0x58($sp)
/* AC4E14 8004DC74 26720074 */  addiu $s2, $s3, 0x74
/* AC4E18 8004DC78 02403025 */  move  $a2, $s2
/* AC4E1C 8004DC7C 27A4008C */  addiu $a0, $sp, 0x8c
/* AC4E20 8004DC80 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* AC4E24 8004DC84 02002825 */   move  $a1, $s0
/* AC4E28 8004DC88 267100AC */  addiu $s1, $s3, 0xac
/* AC4E2C 8004DC8C 02202025 */  move  $a0, $s1
/* AC4E30 8004DC90 0C00BBB9 */  jal   func_8002EEE4
/* AC4E34 8004DC94 8E6500A8 */   lw    $a1, 0xa8($s3)
/* AC4E38 8004DC98 27A4006C */  addiu $a0, $sp, 0x6c
/* AC4E3C 8004DC9C 0C00BBB9 */  jal   func_8002EEE4
/* AC4E40 8004DCA0 8E650090 */   lw    $a1, 0x90($s3)
/* AC4E44 8004DCA4 26680094 */  addiu $t0, $s3, 0x94
/* AC4E48 8004DCA8 8D0B0000 */  lw    $t3, ($t0)
/* AC4E4C 8004DCAC 27A500D0 */  addiu $a1, $sp, 0xd0
/* AC4E50 8004DCB0 27A400A4 */  addiu $a0, $sp, 0xa4
/* AC4E54 8004DCB4 ACAB0000 */  sw    $t3, ($a1)
/* AC4E58 8004DCB8 8D090004 */  lw    $t1, 4($t0)
/* AC4E5C 8004DCBC 02203025 */  move  $a2, $s1
/* AC4E60 8004DCC0 ACA90004 */  sw    $t1, 4($a1)
/* AC4E64 8004DCC4 8D0B0008 */  lw    $t3, 8($t0)
/* AC4E68 8004DCC8 ACAB0008 */  sw    $t3, 8($a1)
/* AC4E6C 8004DCCC C7A400D4 */  lwc1  $f4, 0xd4($sp)
/* AC4E70 8004DCD0 C7A60058 */  lwc1  $f6, 0x58($sp)
/* AC4E74 8004DCD4 AFA8003C */  sw    $t0, 0x3c($sp)
/* AC4E78 8004DCD8 46062280 */  add.s $f10, $f4, $f6
/* AC4E7C 8004DCDC 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* AC4E80 8004DCE0 E7AA00D4 */   swc1  $f10, 0xd4($sp)
/* AC4E84 8004DCE4 866C002A */  lh    $t4, 0x2a($s3)
/* AC4E88 8004DCE8 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC4E8C 8004DCEC 27A500D0 */  addiu $a1, $sp, 0xd0
/* AC4E90 8004DCF0 AC2CD3A0 */  sw    $t4, %lo(D_8011D3A0)($at)
/* AC4E94 8004DCF4 8663015E */  lh    $v1, 0x15e($s3)
/* AC4E98 8004DCF8 8FA8003C */  lw    $t0, 0x3c($sp)
/* AC4E9C 8004DCFC 2401000A */  li    $at, 10
/* AC4EA0 8004DD00 50600006 */  beql  $v1, $zero, .L8004DD1C
/* AC4EA4 8004DD04 8E6D00A8 */   lw    $t5, 0xa8($s3)
/* AC4EA8 8004DD08 10610003 */  beq   $v1, $at, .L8004DD18
/* AC4EAC 8004DD0C 24010014 */   li    $at, 20
/* AC4EB0 8004DD10 1461012F */  bne   $v1, $at, .L8004E1D0
/* AC4EB4 8004DD14 2662002C */   addiu $v0, $s3, 0x2c
.L8004DD18:
/* AC4EB8 8004DD18 8E6D00A8 */  lw    $t5, 0xa8($s3)
.L8004DD1C:
/* AC4EBC 8004DD1C 2667002C */  addiu $a3, $s3, 0x2c
/* AC4EC0 8004DD20 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC4EC4 8004DD24 AFAD00AC */  sw    $t5, 0xac($sp)
/* AC4EC8 8004DD28 8E6E0090 */  lw    $t6, 0x90($s3)
/* AC4ECC 8004DD2C AFAE00B0 */  sw    $t6, 0xb0($sp)
/* AC4ED0 8004DD30 866F015E */  lh    $t7, 0x15e($s3)
/* AC4ED4 8004DD34 8E7900A8 */  lw    $t9, 0xa8($s3)
/* AC4ED8 8004DD38 25F80001 */  addiu $t8, $t7, 1
/* AC4EDC 8004DD3C A678015E */  sh    $t8, 0x15e($s3)
/* AC4EE0 8004DD40 ACF9000C */  sw    $t9, 0xc($a3)
/* AC4EE4 8004DD44 C7A800A4 */  lwc1  $f8, 0xa4($sp)
/* AC4EE8 8004DD48 C6600008 */  lwc1  $f0, 8($s3)
/* AC4EEC 8004DD4C C7A400A4 */  lwc1  $f4, 0xa4($sp)
/* AC4EF0 8004DD50 4608003C */  c.lt.s $f0, $f8
/* AC4EF4 8004DD54 00000000 */  nop
/* AC4EF8 8004DD58 45020005 */  bc1fl .L8004DD70
/* AC4EFC 8004DD5C 46002303 */   div.s $f12, $f4, $f0
/* AC4F00 8004DD60 44816000 */  mtc1  $at, $f12
/* AC4F04 8004DD64 10000002 */  b     .L8004DD70
/* AC4F08 8004DD68 00000000 */   nop
/* AC4F0C 8004DD6C 46002303 */  div.s $f12, $f4, $f0
.L8004DD70:
/* AC4F10 8004DD70 3C018014 */  lui   $at, %hi(D_8013A0D0)
/* AC4F14 8004DD74 C430A0D0 */  lwc1  $f16, %lo(D_8013A0D0)($at)
/* AC4F18 8004DD78 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC4F1C 8004DD7C 44819000 */  mtc1  $at, $f18
/* AC4F20 8004DD80 866A0028 */  lh    $t2, 0x28($s3)
/* AC4F24 8004DD84 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC4F28 8004DD88 44813000 */  mtc1  $at, $f6
/* AC4F2C 8004DD8C A4EA001C */  sh    $t2, 0x1c($a3)
/* AC4F30 8004DD90 84E9001C */  lh    $t1, 0x1c($a3)
/* AC4F34 8004DD94 460C3281 */  sub.s $f10, $f6, $f12
/* AC4F38 8004DD98 C7A800A4 */  lwc1  $f8, 0xa4($sp)
/* AC4F3C 8004DD9C 44893000 */  mtc1  $t1, $f6
/* AC4F40 8004DDA0 87AB00A8 */  lh    $t3, 0xa8($sp)
/* AC4F44 8004DDA4 46085102 */  mul.s $f4, $f10, $f8
/* AC4F48 8004DDA8 87A300AA */  lh    $v1, 0xaa($sp)
/* AC4F4C 8004DDAC 87AD0092 */  lh    $t5, 0x92($sp)
/* AC4F50 8004DDB0 006D7023 */  subu  $t6, $v1, $t5
/* AC4F54 8004DDB4 468032A0 */  cvt.s.w $f10, $f6
/* AC4F58 8004DDB8 000EC400 */  sll   $t8, $t6, 0x10
/* AC4F5C 8004DDBC 0018CC03 */  sra   $t9, $t8, 0x10
/* AC4F60 8004DDC0 460A2203 */  div.s $f8, $f4, $f10
/* AC4F64 8004DDC4 E7A800BC */  swc1  $f8, 0xbc($sp)
/* AC4F68 8004DDC8 C6660018 */  lwc1  $f6, 0x18($s3)
/* AC4F6C 8004DDCC C6600014 */  lwc1  $f0, 0x14($s3)
/* AC4F70 8004DDD0 448B4000 */  mtc1  $t3, $f8
/* AC4F74 8004DDD4 46003101 */  sub.s $f4, $f6, $f0
/* AC4F78 8004DDD8 468041A0 */  cvt.s.w $f6, $f8
/* AC4F7C 8004DDDC 460C2282 */  mul.s $f10, $f4, $f12
/* AC4F80 8004DDE0 C664001C */  lwc1  $f4, 0x1c($s3)
/* AC4F84 8004DDE4 460A0380 */  add.s $f14, $f0, $f10
/* AC4F88 8004DDE8 46043282 */  mul.s $f10, $f6, $f4
/* AC4F8C 8004DDEC 00000000 */  nop
/* AC4F90 8004DDF0 46107102 */  mul.s $f4, $f14, $f16
/* AC4F94 8004DDF4 46005207 */  neg.s $f8, $f10
/* AC4F98 8004DDF8 4600418D */  trunc.w.s $f6, $f8
/* AC4F9C 8004DDFC 46122280 */  add.s $f10, $f4, $f18
/* AC4FA0 8004DE00 440F3000 */  mfc1  $t7, $f6
/* AC4FA4 8004DE04 4600520D */  trunc.w.s $f8, $f10
/* AC4FA8 8004DE08 44094000 */  mfc1  $t1, $f8
/* AC4FAC 8004DE0C 00000000 */  nop
/* AC4FB0 8004DE10 012F5821 */  addu  $t3, $t1, $t7
/* AC4FB4 8004DE14 A7AB00A0 */  sh    $t3, 0xa0($sp)
/* AC4FB8 8004DE18 C6660010 */  lwc1  $f6, 0x10($s3)
/* AC4FBC 8004DE1C C662000C */  lwc1  $f2, 0xc($s3)
/* AC4FC0 8004DE20 8662002A */  lh    $v0, 0x2a($s3)
/* AC4FC4 8004DE24 46023101 */  sub.s $f4, $f6, $f2
/* AC4FC8 8004DE28 304C0010 */  andi  $t4, $v0, 0x10
/* AC4FCC 8004DE2C 30490020 */  andi  $t1, $v0, 0x20
/* AC4FD0 8004DE30 460C2282 */  mul.s $f10, $f4, $f12
/* AC4FD4 8004DE34 11800013 */  beqz  $t4, .L8004DE84
/* AC4FD8 8004DE38 460A1380 */   add.s $f14, $f2, $f10
/* AC4FDC 8004DE3C 07210009 */  bgez  $t9, .L8004DE64
/* AC4FE0 8004DE40 00000000 */   nop
/* AC4FE4 8004DE44 46107202 */  mul.s $f8, $f14, $f16
/* AC4FE8 8004DE48 46124180 */  add.s $f6, $f8, $f18
/* AC4FEC 8004DE4C 4600310D */  trunc.w.s $f4, $f6
/* AC4FF0 8004DE50 440B2000 */  mfc1  $t3, $f4
/* AC4FF4 8004DE54 00000000 */  nop
/* AC4FF8 8004DE58 006B6021 */  addu  $t4, $v1, $t3
/* AC4FFC 8004DE5C 10000054 */  b     .L8004DFB0
/* AC5000 8004DE60 A7AC00A2 */   sh    $t4, 0xa2($sp)
.L8004DE64:
/* AC5004 8004DE64 46107282 */  mul.s $f10, $f14, $f16
/* AC5008 8004DE68 46125200 */  add.s $f8, $f10, $f18
/* AC500C 8004DE6C 4600418D */  trunc.w.s $f6, $f8
/* AC5010 8004DE70 44193000 */  mfc1  $t9, $f6
/* AC5014 8004DE74 00000000 */  nop
/* AC5018 8004DE78 00795023 */  subu  $t2, $v1, $t9
/* AC501C 8004DE7C 1000004C */  b     .L8004DFB0
/* AC5020 8004DE80 A7AA00A2 */   sh    $t2, 0xa2($sp)
.L8004DE84:
/* AC5024 8004DE84 1120001A */  beqz  $t1, .L8004DEF0
/* AC5028 8004DE88 87A300AA */   lh    $v1, 0xaa($sp)
/* AC502C 8004DE8C 87A300AA */  lh    $v1, 0xaa($sp)
/* AC5030 8004DE90 87AF0092 */  lh    $t7, 0x92($sp)
/* AC5034 8004DE94 006F5823 */  subu  $t3, $v1, $t7
/* AC5038 8004DE98 000B6400 */  sll   $t4, $t3, 0x10
/* AC503C 8004DE9C 000C6C03 */  sra   $t5, $t4, 0x10
/* AC5040 8004DEA0 05A1000A */  bgez  $t5, .L8004DECC
/* AC5044 8004DEA4 00000000 */   nop
/* AC5048 8004DEA8 46107102 */  mul.s $f4, $f14, $f16
/* AC504C 8004DEAC 24798001 */  addiu $t9, $v1, -0x7fff
/* AC5050 8004DEB0 46122280 */  add.s $f10, $f4, $f18
/* AC5054 8004DEB4 4600520D */  trunc.w.s $f8, $f10
/* AC5058 8004DEB8 440B4000 */  mfc1  $t3, $f8
/* AC505C 8004DEBC 00000000 */  nop
/* AC5060 8004DEC0 032B6023 */  subu  $t4, $t9, $t3
/* AC5064 8004DEC4 1000003A */  b     .L8004DFB0
/* AC5068 8004DEC8 A7AC00A2 */   sh    $t4, 0xa2($sp)
.L8004DECC:
/* AC506C 8004DECC 46107182 */  mul.s $f6, $f14, $f16
/* AC5070 8004DED0 24788001 */  addiu $t8, $v1, -0x7fff
/* AC5074 8004DED4 46123100 */  add.s $f4, $f6, $f18
/* AC5078 8004DED8 4600228D */  trunc.w.s $f10, $f4
/* AC507C 8004DEDC 44195000 */  mfc1  $t9, $f10
/* AC5080 8004DEE0 00000000 */  nop
/* AC5084 8004DEE4 03195821 */  addu  $t3, $t8, $t9
/* AC5088 8004DEE8 10000031 */  b     .L8004DFB0
/* AC508C 8004DEEC A7AB00A2 */   sh    $t3, 0xa2($sp)
.L8004DEF0:
/* AC5090 8004DEF0 87AC0092 */  lh    $t4, 0x92($sp)
/* AC5094 8004DEF4 006C1023 */  subu  $v0, $v1, $t4
/* AC5098 8004DEF8 00021400 */  sll   $v0, $v0, 0x10
/* AC509C 8004DEFC 00021403 */  sra   $v0, $v0, 0x10
/* AC50A0 8004DF00 04400003 */  bltz  $v0, .L8004DF10
/* AC50A4 8004DF04 00022023 */   negu  $a0, $v0
/* AC50A8 8004DF08 10000001 */  b     .L8004DF10
/* AC50AC 8004DF0C 00402025 */   move  $a0, $v0
.L8004DF10:
/* AC50B0 8004DF10 28813FFF */  slti  $at, $a0, 0x3fff
/* AC50B4 8004DF14 10200013 */  beqz  $at, .L8004DF64
/* AC50B8 8004DF18 00000000 */   nop
/* AC50BC 8004DF1C 04410009 */  bgez  $v0, .L8004DF44
/* AC50C0 8004DF20 00000000 */   nop
/* AC50C4 8004DF24 46107202 */  mul.s $f8, $f14, $f16
/* AC50C8 8004DF28 46124180 */  add.s $f6, $f8, $f18
/* AC50CC 8004DF2C 4600310D */  trunc.w.s $f4, $f6
/* AC50D0 8004DF30 44092000 */  mfc1  $t1, $f4
/* AC50D4 8004DF34 00000000 */  nop
/* AC50D8 8004DF38 00697821 */  addu  $t7, $v1, $t1
/* AC50DC 8004DF3C 1000001C */  b     .L8004DFB0
/* AC50E0 8004DF40 A7AF00A2 */   sh    $t7, 0xa2($sp)
.L8004DF44:
/* AC50E4 8004DF44 46107282 */  mul.s $f10, $f14, $f16
/* AC50E8 8004DF48 46125200 */  add.s $f8, $f10, $f18
/* AC50EC 8004DF4C 4600418D */  trunc.w.s $f6, $f8
/* AC50F0 8004DF50 440C3000 */  mfc1  $t4, $f6
/* AC50F4 8004DF54 00000000 */  nop
/* AC50F8 8004DF58 006C6823 */  subu  $t5, $v1, $t4
/* AC50FC 8004DF5C 10000014 */  b     .L8004DFB0
/* AC5100 8004DF60 A7AD00A2 */   sh    $t5, 0xa2($sp)
.L8004DF64:
/* AC5104 8004DF64 0441000A */  bgez  $v0, .L8004DF90
/* AC5108 8004DF68 00000000 */   nop
/* AC510C 8004DF6C 46107102 */  mul.s $f4, $f14, $f16
/* AC5110 8004DF70 24698001 */  addiu $t1, $v1, -0x7fff
/* AC5114 8004DF74 46122280 */  add.s $f10, $f4, $f18
/* AC5118 8004DF78 4600520D */  trunc.w.s $f8, $f10
/* AC511C 8004DF7C 440B4000 */  mfc1  $t3, $f8
/* AC5120 8004DF80 00000000 */  nop
/* AC5124 8004DF84 012B6023 */  subu  $t4, $t1, $t3
/* AC5128 8004DF88 10000009 */  b     .L8004DFB0
/* AC512C 8004DF8C A7AC00A2 */   sh    $t4, 0xa2($sp)
.L8004DF90:
/* AC5130 8004DF90 46107182 */  mul.s $f6, $f14, $f16
/* AC5134 8004DF94 246A8001 */  addiu $t2, $v1, -0x7fff
/* AC5138 8004DF98 46123100 */  add.s $f4, $f6, $f18
/* AC513C 8004DF9C 4600228D */  trunc.w.s $f10, $f4
/* AC5140 8004DFA0 44095000 */  mfc1  $t1, $f10
/* AC5144 8004DFA4 00000000 */  nop
/* AC5148 8004DFA8 01495821 */  addu  $t3, $t2, $t1
/* AC514C 8004DFAC A7AB00A2 */  sh    $t3, 0xa2($sp)
.L8004DFB0:
/* AC5150 8004DFB0 3C018014 */  lui   $at, %hi(D_8013A0D4)
/* AC5154 8004DFB4 C420A0D4 */  lwc1  $f0, %lo(D_8013A0D4)($at)
/* AC5158 8004DFB8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC515C 8004DFBC 44813000 */  mtc1  $at, $f6
/* AC5160 8004DFC0 C7AE00A4 */  lwc1  $f14, 0xa4($sp)
/* AC5164 8004DFC4 87AC00A2 */  lh    $t4, 0xa2($sp)
/* AC5168 8004DFC8 46003101 */  sub.s $f4, $f6, $f0
/* AC516C 8004DFCC C7A600BC */  lwc1  $f6, 0xbc($sp)
/* AC5170 8004DFD0 87AD00A0 */  lh    $t5, 0xa0($sp)
/* AC5174 8004DFD4 A7AC0080 */  sh    $t4, 0x80($sp)
/* AC5178 8004DFD8 46047282 */  mul.s $f10, $f14, $f4
/* AC517C 8004DFDC A7AD0082 */  sh    $t5, 0x82($sp)
/* AC5180 8004DFE0 24F10010 */  addiu $s1, $a3, 0x10
/* AC5184 8004DFE4 46003202 */  mul.s $f8, $f6, $f0
/* AC5188 8004DFE8 02202025 */  move  $a0, $s1
/* AC518C 8004DFEC 27A600A4 */  addiu $a2, $sp, 0xa4
/* AC5190 8004DFF0 460A4100 */  add.s $f4, $f8, $f10
/* AC5194 8004DFF4 E7A400A4 */  swc1  $f4, 0xa4($sp)
/* AC5198 8004DFF8 8D0F0000 */  lw    $t7, ($t0)
/* AC519C 8004DFFC ACAF0000 */  sw    $t7, ($a1)
/* AC51A0 8004E000 8D0E0004 */  lw    $t6, 4($t0)
/* AC51A4 8004E004 ACAE0004 */  sw    $t6, 4($a1)
/* AC51A8 8004E008 8D0F0008 */  lw    $t7, 8($t0)
/* AC51AC 8004E00C ACAF0008 */  sw    $t7, 8($a1)
/* AC51B0 8004E010 C7A600D4 */  lwc1  $f6, 0xd4($sp)
/* AC51B4 8004E014 C7A80058 */  lwc1  $f8, 0x58($sp)
/* AC51B8 8004E018 AFA70038 */  sw    $a3, 0x38($sp)
/* AC51BC 8004E01C E7AE00B8 */  swc1  $f14, 0xb8($sp)
/* AC51C0 8004E020 46083280 */  add.s $f10, $f6, $f8
/* AC51C4 8004E024 0C010F0A */  jal   func_80043C28
/* AC51C8 8004E028 E7AA00D4 */   swc1  $f10, 0xd4($sp)
/* AC51CC 8004E02C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC51D0 8004E030 C7AE00B8 */  lwc1  $f14, 0xb8($sp)
/* AC51D4 8004E034 44813000 */  mtc1  $at, $f6
/* AC51D8 8004E038 2418000E */  li    $t8, 14
/* AC51DC 8004E03C AFB80084 */  sw    $t8, 0x84($sp)
/* AC51E0 8004E040 46067202 */  mul.s $f8, $f14, $f6
/* AC51E4 8004E044 E7AE00A4 */  swc1  $f14, 0xa4($sp)
/* AC51E8 8004E048 C6640004 */  lwc1  $f4, 4($s3)
/* AC51EC 8004E04C C7A6008C */  lwc1  $f6, 0x8c($sp)
/* AC51F0 8004E050 27B200C4 */  addiu $s2, $sp, 0xc4
/* AC51F4 8004E054 00008025 */  move  $s0, $zero
/* AC51F8 8004E058 02402025 */  move  $a0, $s2
/* AC51FC 8004E05C 46082280 */  add.s $f10, $f4, $f8
/* AC5200 8004E060 02202825 */  move  $a1, $s1
/* AC5204 8004E064 27A6009C */  addiu $a2, $sp, 0x9c
/* AC5208 8004E068 46065101 */  sub.s $f4, $f10, $f6
/* AC520C 8004E06C 46062200 */  add.s $f8, $f4, $f6
/* AC5210 8004E070 0C010F0A */  jal   func_80043C28
/* AC5214 8004E074 E7A8009C */   swc1  $f8, 0x9c($sp)
/* AC5218 8004E078 8679002A */  lh    $t9, 0x2a($s3)
/* AC521C 8004E07C 332A0080 */  andi  $t2, $t9, 0x80
/* AC5220 8004E080 15400028 */  bnez  $t2, .L8004E124
/* AC5224 8004E084 00000000 */   nop
/* AC5228 8004E088 8E64008C */  lw    $a0, 0x8c($s3)
.L8004E08C:
/* AC522C 8004E08C 3C010001 */  lui   $at, (0x00011E60 >> 16) # lui $at, 1
/* AC5230 8004E090 34211E60 */  ori   $at, (0x00011E60 & 0xFFFF) # ori $at, $at, 0x1e60
/* AC5234 8004E094 27A900AC */  addiu $t1, $sp, 0xac
/* AC5238 8004E098 240B0002 */  li    $t3, 2
/* AC523C 8004E09C AFAB0014 */  sw    $t3, 0x14($sp)
/* AC5240 8004E0A0 AFA90010 */  sw    $t1, 0x10($sp)
/* AC5244 8004E0A4 02203025 */  move  $a2, $s1
/* AC5248 8004E0A8 02403825 */  move  $a3, $s2
/* AC524C 8004E0AC 0C0189AC */  jal   func_800626B0
/* AC5250 8004E0B0 00812821 */   addu  $a1, $a0, $at
/* AC5254 8004E0B4 14400005 */  bnez  $v0, .L8004E0CC
/* AC5258 8004E0B8 02602025 */   move  $a0, $s3
/* AC525C 8004E0BC 02202825 */  move  $a1, $s1
/* AC5260 8004E0C0 0C010FCD */  jal   func_80043F34
/* AC5264 8004E0C4 02403025 */   move  $a2, $s2
/* AC5268 8004E0C8 10400016 */  beqz  $v0, .L8004E124
.L8004E0CC:
/* AC526C 8004E0CC 00101040 */   sll   $v0, $s0, 1
/* AC5270 8004E0D0 3C0C8012 */  lui   $t4, %hi(D_8011D3B0)
/* AC5274 8004E0D4 3C0F8012 */  lui   $t7, %hi(D_8011D3CC)
/* AC5278 8004E0D8 01826021 */  addu  $t4, $t4, $v0
/* AC527C 8004E0DC 01E27821 */  addu  $t7, $t7, $v0
/* AC5280 8004E0E0 858CD3B0 */  lh    $t4, %lo(D_8011D3B0)($t4)
/* AC5284 8004E0E4 87AD0080 */  lh    $t5, 0x80($sp)
/* AC5288 8004E0E8 85EFD3CC */  lh    $t7, %lo(D_8011D3CC)($t7)
/* AC528C 8004E0EC 87B80082 */  lh    $t8, 0x82($sp)
/* AC5290 8004E0F0 018D7021 */  addu  $t6, $t4, $t5
/* AC5294 8004E0F4 A7AE00A2 */  sh    $t6, 0xa2($sp)
/* AC5298 8004E0F8 01F8C821 */  addu  $t9, $t7, $t8
/* AC529C 8004E0FC A7B900A0 */  sh    $t9, 0xa0($sp)
/* AC52A0 8004E100 02402025 */  move  $a0, $s2
/* AC52A4 8004E104 02202825 */  move  $a1, $s1
/* AC52A8 8004E108 0C010F0A */  jal   func_80043C28
/* AC52AC 8004E10C 27A6009C */   addiu $a2, $sp, 0x9c
/* AC52B0 8004E110 8FAA0084 */  lw    $t2, 0x84($sp)
/* AC52B4 8004E114 26100001 */  addiu $s0, $s0, 1
/* AC52B8 8004E118 020A082A */  slt   $at, $s0, $t2
/* AC52BC 8004E11C 5420FFDB */  bnezl $at, .L8004E08C
/* AC52C0 8004E120 8E64008C */   lw    $a0, 0x8c($s3)
.L8004E124:
/* AC52C4 8004E124 3C048014 */  lui   $a0, %hi(D_801392DC)
/* AC52C8 8004E128 248492DC */  addiu $a0, %lo(D_801392DC) # addiu $a0, $a0, -0x6d24
/* AC52CC 8004E12C 0C00084C */  jal   osSyncPrintf
/* AC52D0 8004E130 02002825 */   move  $a1, $s0
/* AC52D4 8004E134 8669014C */  lh    $t1, 0x14c($s3)
/* AC52D8 8004E138 8FA50038 */  lw    $a1, 0x38($sp)
/* AC52DC 8004E13C 24020001 */  li    $v0, 1
/* AC52E0 8004E140 312BFFF3 */  andi  $t3, $t1, 0xfff3
/* AC52E4 8004E144 A66B014C */  sh    $t3, 0x14c($s3)
/* AC52E8 8004E148 84A3001C */  lh    $v1, 0x1c($a1)
/* AC52EC 8004E14C 87AE0092 */  lh    $t6, 0x92($sp)
/* AC52F0 8004E150 87AD00A2 */  lh    $t5, 0xa2($sp)
/* AC52F4 8004E154 246C0001 */  addiu $t4, $v1, 1
/* AC52F8 8004E158 01830019 */  multu $t4, $v1
/* AC52FC 8004E15C 01AE7823 */  subu  $t7, $t5, $t6
/* AC5300 8004E160 000FC400 */  sll   $t8, $t7, 0x10
/* AC5304 8004E164 0018CC03 */  sra   $t9, $t8, 0x10
/* AC5308 8004E168 44992000 */  mtc1  $t9, $f4
/* AC530C 8004E16C 00000000 */  nop
/* AC5310 8004E170 468021A0 */  cvt.s.w $f6, $f4
/* AC5314 8004E174 00002012 */  mflo  $a0
/* AC5318 8004E178 00042043 */  sra   $a0, $a0, 1
/* AC531C 8004E17C 44845000 */  mtc1  $a0, $f10
/* AC5320 8004E180 00000000 */  nop
/* AC5324 8004E184 46805020 */  cvt.s.w $f0, $f10
/* AC5328 8004E188 46003203 */  div.s $f8, $f6, $f0
/* AC532C 8004E18C E4A80004 */  swc1  $f8, 4($a1)
/* AC5330 8004E190 87A90090 */  lh    $t1, 0x90($sp)
/* AC5334 8004E194 87AA00A0 */  lh    $t2, 0xa0($sp)
/* AC5338 8004E198 01495823 */  subu  $t3, $t2, $t1
/* AC533C 8004E19C 000B6400 */  sll   $t4, $t3, 0x10
/* AC5340 8004E1A0 000C6C03 */  sra   $t5, $t4, 0x10
/* AC5344 8004E1A4 448D5000 */  mtc1  $t5, $f10
/* AC5348 8004E1A8 00000000 */  nop
/* AC534C 8004E1AC 46805120 */  cvt.s.w $f4, $f10
/* AC5350 8004E1B0 46002183 */  div.s $f6, $f4, $f0
/* AC5354 8004E1B4 E4A60008 */  swc1  $f6, 8($a1)
/* AC5358 8004E1B8 C7AA008C */  lwc1  $f10, 0x8c($sp)
/* AC535C 8004E1BC C7A8009C */  lwc1  $f8, 0x9c($sp)
/* AC5360 8004E1C0 460A4101 */  sub.s $f4, $f8, $f10
/* AC5364 8004E1C4 46002183 */  div.s $f6, $f4, $f0
/* AC5368 8004E1C8 1000009E */  b     .L8004E444
/* AC536C 8004E1CC E4A60000 */   swc1  $f6, ($a1)
.L8004E1D0:
/* AC5370 8004E1D0 8443001C */  lh    $v1, 0x1c($v0)
/* AC5374 8004E1D4 50600064 */  beql  $v1, $zero, .L8004E368
/* AC5378 8004E1D8 866B014C */   lh    $t3, 0x14c($s3)
/* AC537C 8004E1DC 44832000 */  mtc1  $v1, $f4
/* AC5380 8004E1E0 C6000000 */  lwc1  $f0, ($s0)
/* AC5384 8004E1E4 C4480010 */  lwc1  $f8, 0x10($v0)
/* AC5388 8004E1E8 468021A0 */  cvt.s.w $f6, $f4
/* AC538C 8004E1EC C6020004 */  lwc1  $f2, 4($s0)
/* AC5390 8004E1F0 C60C0008 */  lwc1  $f12, 8($s0)
/* AC5394 8004E1F4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC5398 8004E1F8 02402025 */  move  $a0, $s2
/* AC539C 8004E1FC 46004281 */  sub.s $f10, $f8, $f0
/* AC53A0 8004E200 02002825 */  move  $a1, $s0
/* AC53A4 8004E204 27A6009C */  addiu $a2, $sp, 0x9c
/* AC53A8 8004E208 46065203 */  div.s $f8, $f10, $f6
/* AC53AC 8004E20C 46080100 */  add.s $f4, $f0, $f8
/* AC53B0 8004E210 E6040000 */  swc1  $f4, ($s0)
/* AC53B4 8004E214 844E001C */  lh    $t6, 0x1c($v0)
/* AC53B8 8004E218 C44A0014 */  lwc1  $f10, 0x14($v0)
/* AC53BC 8004E21C 448E4000 */  mtc1  $t6, $f8
/* AC53C0 8004E220 46025181 */  sub.s $f6, $f10, $f2
/* AC53C4 8004E224 46804120 */  cvt.s.w $f4, $f8
/* AC53C8 8004E228 46043283 */  div.s $f10, $f6, $f4
/* AC53CC 8004E22C 460A1200 */  add.s $f8, $f2, $f10
/* AC53D0 8004E230 E6080004 */  swc1  $f8, 4($s0)
/* AC53D4 8004E234 844F001C */  lh    $t7, 0x1c($v0)
/* AC53D8 8004E238 C4460018 */  lwc1  $f6, 0x18($v0)
/* AC53DC 8004E23C 448F5000 */  mtc1  $t7, $f10
/* AC53E0 8004E240 460C3101 */  sub.s $f4, $f6, $f12
/* AC53E4 8004E244 46805220 */  cvt.s.w $f8, $f10
/* AC53E8 8004E248 46082183 */  div.s $f6, $f4, $f8
/* AC53EC 8004E24C 46066280 */  add.s $f10, $f12, $f6
/* AC53F0 8004E250 E60A0008 */  swc1  $f10, 8($s0)
/* AC53F4 8004E254 8458001C */  lh    $t8, 0x1c($v0)
/* AC53F8 8004E258 C4440000 */  lwc1  $f4, ($v0)
/* AC53FC 8004E25C 87AD0092 */  lh    $t5, 0x92($sp)
/* AC5400 8004E260 44984000 */  mtc1  $t8, $f8
/* AC5404 8004E264 87AB0090 */  lh    $t3, 0x90($sp)
/* AC5408 8004E268 468041A0 */  cvt.s.w $f6, $f8
/* AC540C 8004E26C C7A8008C */  lwc1  $f8, 0x8c($sp)
/* AC5410 8004E270 46062282 */  mul.s $f10, $f4, $f6
/* AC5414 8004E274 44813000 */  mtc1  $at, $f6
/* AC5418 8004E278 46085100 */  add.s $f4, $f10, $f8
/* AC541C 8004E27C 46062280 */  add.s $f10, $f4, $f6
/* AC5420 8004E280 E7AA009C */  swc1  $f10, 0x9c($sp)
/* AC5424 8004E284 8459001C */  lh    $t9, 0x1c($v0)
/* AC5428 8004E288 C4480004 */  lwc1  $f8, 4($v0)
/* AC542C 8004E28C 44992000 */  mtc1  $t9, $f4
/* AC5430 8004E290 00000000 */  nop
/* AC5434 8004E294 468021A0 */  cvt.s.w $f6, $f4
/* AC5438 8004E298 46064282 */  mul.s $f10, $f8, $f6
/* AC543C 8004E29C 4600510D */  trunc.w.s $f4, $f10
/* AC5440 8004E2A0 440C2000 */  mfc1  $t4, $f4
/* AC5444 8004E2A4 00000000 */  nop
/* AC5448 8004E2A8 01AC7021 */  addu  $t6, $t5, $t4
/* AC544C 8004E2AC A7AE00A2 */  sh    $t6, 0xa2($sp)
/* AC5450 8004E2B0 844F001C */  lh    $t7, 0x1c($v0)
/* AC5454 8004E2B4 C4480008 */  lwc1  $f8, 8($v0)
/* AC5458 8004E2B8 AFA20038 */  sw    $v0, 0x38($sp)
/* AC545C 8004E2BC 448F3000 */  mtc1  $t7, $f6
/* AC5460 8004E2C0 00000000 */  nop
/* AC5464 8004E2C4 468032A0 */  cvt.s.w $f10, $f6
/* AC5468 8004E2C8 460A4102 */  mul.s $f4, $f8, $f10
/* AC546C 8004E2CC 4600218D */  trunc.w.s $f6, $f4
/* AC5470 8004E2D0 44093000 */  mfc1  $t1, $f6
/* AC5474 8004E2D4 00000000 */  nop
/* AC5478 8004E2D8 01696821 */  addu  $t5, $t3, $t1
/* AC547C 8004E2DC 0C010F0A */  jal   func_80043C28
/* AC5480 8004E2E0 A7AD00A0 */   sh    $t5, 0xa0($sp)
/* AC5484 8004E2E4 8FAC0048 */  lw    $t4, 0x48($sp)
/* AC5488 8004E2E8 8E4F0000 */  lw    $t7, ($s2)
/* AC548C 8004E2EC 3C063F00 */  lui   $a2, 0x3f00
/* AC5490 8004E2F0 3C073F80 */  lui   $a3, 0x3f80
/* AC5494 8004E2F4 AD8F0000 */  sw    $t7, ($t4)
/* AC5498 8004E2F8 8E4E0004 */  lw    $t6, 4($s2)
/* AC549C 8004E2FC AD8E0004 */  sw    $t6, 4($t4)
/* AC54A0 8004E300 8E4F0008 */  lw    $t7, 8($s2)
/* AC54A4 8004E304 AD8F0008 */  sw    $t7, 8($t4)
/* AC54A8 8004E308 C66E00FC */  lwc1  $f14, 0xfc($s3)
/* AC54AC 8004E30C 0C010E27 */  jal   func_8004389C
/* AC54B0 8004E310 C66C0020 */   lwc1  $f12, 0x20($s3)
/* AC54B4 8004E314 E66000FC */  swc1  $f0, 0xfc($s3)
/* AC54B8 8004E318 00002025 */  move  $a0, $zero
/* AC54BC 8004E31C 8665015A */  lh    $a1, 0x15a($s3)
/* AC54C0 8004E320 3C063F00 */  lui   $a2, 0x3f00
/* AC54C4 8004E324 0C010E47 */  jal   func_8004391C
/* AC54C8 8004E328 2407000A */   li    $a3, 10
/* AC54CC 8004E32C A662015A */  sh    $v0, 0x15a($s3)
/* AC54D0 8004E330 02602025 */  move  $a0, $s3
/* AC54D4 8004E334 0C011429 */  jal   func_800450A4
/* AC54D8 8004E338 8E650024 */   lw    $a1, 0x24($s3)
/* AC54DC 8004E33C E6600100 */  swc1  $f0, 0x100($s3)
/* AC54E0 8004E340 8FA60048 */  lw    $a2, 0x48($sp)
/* AC54E4 8004E344 02602025 */  move  $a0, $s3
/* AC54E8 8004E348 0C010FCD */  jal   func_80043F34
/* AC54EC 8004E34C 02002825 */   move  $a1, $s0
/* AC54F0 8004E350 8FB80038 */  lw    $t8, 0x38($sp)
/* AC54F4 8004E354 8719001C */  lh    $t9, 0x1c($t8)
/* AC54F8 8004E358 272AFFFF */  addiu $t2, $t9, -1
/* AC54FC 8004E35C 10000004 */  b     .L8004E370
/* AC5500 8004E360 A70A001C */   sh    $t2, 0x1c($t8)
/* AC5504 8004E364 866B014C */  lh    $t3, 0x14c($s3)
.L8004E368:
/* AC5508 8004E368 35690410 */  ori   $t1, $t3, 0x410
/* AC550C 8004E36C A669014C */  sh    $t1, 0x14c($s3)
.L8004E370:
/* AC5510 8004E370 866D014C */  lh    $t5, 0x14c($s3)
/* AC5514 8004E374 3C018012 */  lui   $at, %hi(D_8011D3A0)
/* AC5518 8004E378 02602025 */  move  $a0, $s3
/* AC551C 8004E37C 31AC0008 */  andi  $t4, $t5, 8
/* AC5520 8004E380 51800030 */  beql  $t4, $zero, .L8004E444
/* AC5524 8004E384 24020001 */   li    $v0, 1
/* AC5528 8004E388 0C010ED8 */  jal   func_80043B60
/* AC552C 8004E38C AC20D3A0 */   sw    $zero, %lo(D_8011D3A0)($at)
/* AC5530 8004E390 44804000 */  mtc1  $zero, $f8
/* AC5534 8004E394 3C018014 */  lui   $at, %hi(D_8013A0D8)
/* AC5538 8004E398 C66400D8 */  lwc1  $f4, 0xd8($s3)
/* AC553C 8004E39C E6680100 */  swc1  $f8, 0x100($s3)
/* AC5540 8004E3A0 C42AA0D8 */  lwc1  $f10, %lo(D_8013A0D8)($at)
/* AC5544 8004E3A4 3C0E8016 */  lui   $t6, %hi(D_8015BD7C) # $t6, 0x8016
/* AC5548 8004E3A8 4604503C */  c.lt.s $f10, $f4
/* AC554C 8004E3AC 00000000 */  nop
/* AC5550 8004E3B0 4503001E */  bc1tl .L8004E42C
/* AC5554 8004E3B4 866E014C */   lh    $t6, 0x14c($s3)
/* AC5558 8004E3B8 8DCEBD7C */  lw    $t6, %lo(D_8015BD7C)($t6)
/* AC555C 8004E3BC 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* AC5560 8004E3C0 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* AC5564 8004E3C4 95C20020 */  lhu   $v0, 0x20($t6)
/* AC5568 8004E3C8 00417827 */  nor   $t7, $v0, $at
/* AC556C 8004E3CC 11E00016 */  beqz  $t7, .L8004E428
/* AC5570 8004E3D0 2401BFFF */   li    $at, -16385
/* AC5574 8004E3D4 0041C827 */  nor   $t9, $v0, $at
/* AC5578 8004E3D8 13200013 */  beqz  $t9, .L8004E428
/* AC557C 8004E3DC 2401FFFD */   li    $at, -3
/* AC5580 8004E3E0 00415027 */  nor   $t2, $v0, $at
/* AC5584 8004E3E4 11400010 */  beqz  $t2, .L8004E428
/* AC5588 8004E3E8 2401FFFB */   li    $at, -5
/* AC558C 8004E3EC 0041C027 */  nor   $t8, $v0, $at
/* AC5590 8004E3F0 1300000D */  beqz  $t8, .L8004E428
/* AC5594 8004E3F4 2401FFF7 */   li    $at, -9
/* AC5598 8004E3F8 00415827 */  nor   $t3, $v0, $at
/* AC559C 8004E3FC 1160000A */  beqz  $t3, .L8004E428
/* AC55A0 8004E400 2401FFFE */   li    $at, -2
/* AC55A4 8004E404 00414827 */  nor   $t1, $v0, $at
/* AC55A8 8004E408 11200007 */  beqz  $t1, .L8004E428
/* AC55AC 8004E40C 2401FFEF */   li    $at, -17
/* AC55B0 8004E410 00416827 */  nor   $t5, $v0, $at
/* AC55B4 8004E414 11A00004 */  beqz  $t5, .L8004E428
/* AC55B8 8004E418 2401DFFF */   li    $at, -8193
/* AC55BC 8004E41C 00416027 */  nor   $t4, $v0, $at
/* AC55C0 8004E420 55800008 */  bnezl $t4, .L8004E444
/* AC55C4 8004E424 24020001 */   li    $v0, 1
.L8004E428:
/* AC55C8 8004E428 866E014C */  lh    $t6, 0x14c($s3)
.L8004E42C:
/* AC55CC 8004E42C 35CF0004 */  ori   $t7, $t6, 4
/* AC55D0 8004E430 A66F014C */  sh    $t7, 0x14c($s3)
/* AC55D4 8004E434 8679014C */  lh    $t9, 0x14c($s3)
/* AC55D8 8004E438 332AFFF7 */  andi  $t2, $t9, 0xfff7
/* AC55DC 8004E43C A66A014C */  sh    $t2, 0x14c($s3)
/* AC55E0 8004E440 24020001 */  li    $v0, 1
.L8004E444:
/* AC55E4 8004E444 8FBF002C */  lw    $ra, 0x2c($sp)
/* AC55E8 8004E448 8FB0001C */  lw    $s0, 0x1c($sp)
/* AC55EC 8004E44C 8FB10020 */  lw    $s1, 0x20($sp)
/* AC55F0 8004E450 8FB20024 */  lw    $s2, 0x24($sp)
/* AC55F4 8004E454 8FB30028 */  lw    $s3, 0x28($sp)
/* AC55F8 8004E458 03E00008 */  jr    $ra
/* AC55FC 8004E45C 27BD00E8 */   addiu $sp, $sp, 0xe8
