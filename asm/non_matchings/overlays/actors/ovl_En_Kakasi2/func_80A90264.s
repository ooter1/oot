.rdata
glabel D_80A90B48
    .asciz "\x1b[32m☆☆☆☆☆ SAVE 終了 ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

glabel D_80A90B74
    .asciz "\x1b[32m☆☆☆☆☆ SAVE 終了 ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

.text
glabel func_80A90264
/* 00254 80A90264 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00258 80A90268 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0025C 80A9026C AFB10028 */  sw      $s1, 0x0028($sp)
/* 00260 80A90270 AFB00024 */  sw      $s0, 0x0024($sp)
/* 00264 80A90274 848E0194 */  lh      $t6, 0x0194($a0)           ## 00000194
/* 00268 80A90278 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 0026C 80A9027C 3C188016 */  lui     $t8, %hi(gGameInfo)
/* 00270 80A90280 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00274 80A90284 A48F0194 */  sh      $t7, 0x0194($a0)           ## 00000194
/* 00278 80A90288 8F18FA90 */  lw      $t8, %lo(gGameInfo)($t8)
/* 0027C 80A9028C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00280 80A90290 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00284 80A90294 871912D6 */  lh      $t9, 0x12D6($t8)           ## 801612D6
/* 00288 80A90298 5320003F */  beql    $t9, $zero, .L80A90398
/* 0028C 80A9029C C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 00290 80A902A0 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00294 80A902A4 C486019C */  lwc1    $f6, 0x019C($a0)           ## 0000019C
/* 00298 80A902A8 4606203C */  c.lt.s  $f4, $f6
/* 0029C 80A902AC 00000000 */  nop
/* 002A0 80A902B0 45020039 */  bc1fl   .L80A90398
/* 002A4 80A902B4 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 002A8 80A902B8 C4480028 */  lwc1    $f8, 0x0028($v0)           ## 00000028
/* 002AC 80A902BC C48A0028 */  lwc1    $f10, 0x0028($a0)          ## 00000028
/* 002B0 80A902C0 C49001A0 */  lwc1    $f16, 0x01A0($a0)          ## 000001A0
/* 002B4 80A902C4 3C0880A9 */  lui     $t0, %hi(func_80A90948)    ## $t0 = 80A90000
/* 002B8 80A902C8 460A4001 */  sub.s   $f0, $f8, $f10
/* 002BC 80A902CC 25080948 */  addiu   $t0, $t0, %lo(func_80A90948) ## $t0 = 80A90948
/* 002C0 80A902D0 46000005 */  abs.s   $f0, $f0
/* 002C4 80A902D4 4610003C */  c.lt.s  $f0, $f16
/* 002C8 80A902D8 00000000 */  nop
/* 002CC 80A902DC 4502002E */  bc1fl   .L80A90398
/* 002D0 80A902E0 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 002D4 80A902E4 AC880134 */  sw      $t0, 0x0134($a0)           ## 00000134
/* 002D8 80A902E8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002DC 80A902EC 260501AC */  addiu   $a1, $s0, 0x01AC           ## $a1 = 000001AC
/* 002E0 80A902F0 0C0170D9 */  jal     Collider_InitCylinder

/* 002E4 80A902F4 AFA50030 */  sw      $a1, 0x0030($sp)
/* 002E8 80A902F8 3C0780A9 */  lui     $a3, %hi(D_80A909A0)       ## $a3 = 80A90000
/* 002EC 80A902FC 8FA50030 */  lw      $a1, 0x0030($sp)
/* 002F0 80A90300 24E709A0 */  addiu   $a3, $a3, %lo(D_80A909A0)  ## $a3 = 80A909A0
/* 002F4 80A90304 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002F8 80A90308 0C01712B */  jal     Collider_SetCylinder

/* 002FC 80A9030C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00300 80A90310 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00304 80A90314 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00308 80A90318 24E70214 */  addiu   $a3, $a3, 0x0214           ## $a3 = 06000214
/* 0030C 80A9031C 24C665B0 */  addiu   $a2, $a2, 0x65B0           ## $a2 = 060065B0
/* 00310 80A90320 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00314 80A90324 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 00318 80A90328 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0031C 80A9032C AFA00014 */  sw      $zero, 0x0014($sp)
/* 00320 80A90330 0C0291BE */  jal     SkelAnime_InitSV
/* 00324 80A90334 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00328 80A90338 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0032C 80A9033C 0C020120 */  jal     func_80080480
/* 00330 80A90340 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00334 80A90344 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 00338 80A90348 3C010800 */  lui     $at, 0x0800                ## $at = 08000000
/* 0033C 80A9034C 34210001 */  ori     $at, $at, 0x0001           ## $at = 08000001
/* 00340 80A90350 01215025 */  or      $t2, $t1, $at              ## $t2 = 08000001
/* 00344 80A90354 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 00348 80A90358 0C01E221 */  jal     func_80078884
/* 0034C 80A9035C 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 00350 80A90360 86050196 */  lh      $a1, 0x0196($s0)           ## 00000196
/* 00354 80A90364 04A00004 */  bltz    $a1, .L80A90378
/* 00358 80A90368 00000000 */  nop
/* 0035C 80A9036C 0C00B2DD */  jal     Flags_SetSwitch

/* 00360 80A90370 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00364 80A90374 86050196 */  lh      $a1, 0x0196($s0)           ## 00000196
.L80A90378:
/* 00368 80A90378 3C0480A9 */  lui     $a0, %hi(D_80A90B48)       ## $a0 = 80A90000
/* 0036C 80A9037C 0C00084C */  jal     osSyncPrintf

/* 00370 80A90380 24840B48 */  addiu   $a0, $a0, %lo(D_80A90B48)  ## $a0 = 80A90B48
/* 00374 80A90384 3C0B80A9 */  lui     $t3, %hi(func_80A904D8)    ## $t3 = 80A90000
/* 00378 80A90388 256B04D8 */  addiu   $t3, $t3, %lo(func_80A904D8) ## $t3 = 80A904D8
/* 0037C 80A9038C 1000004D */  beq     $zero, $zero, .L80A904C4
/* 00380 80A90390 AE0B014C */  sw      $t3, 0x014C($s0)           ## 0000014C
/* 00384 80A90394 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
.L80A90398:
/* 00388 80A90398 C604019C */  lwc1    $f4, 0x019C($s0)           ## 0000019C
/* 0038C 80A9039C 4604903C */  c.lt.s  $f18, $f4
/* 00390 80A903A0 00000000 */  nop
/* 00394 80A903A4 45020048 */  bc1fl   .L80A904C8
/* 00398 80A903A8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0039C 80A903AC C4460028 */  lwc1    $f6, 0x0028($v0)           ## 00000028
/* 003A0 80A903B0 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 003A4 80A903B4 C60A01A0 */  lwc1    $f10, 0x01A0($s0)          ## 000001A0
/* 003A8 80A903B8 3C0C8016 */  lui     $t4, %hi(gSaveContext+0xee6)
/* 003AC 80A903BC 46083001 */  sub.s   $f0, $f6, $f8
/* 003B0 80A903C0 46000005 */  abs.s   $f0, $f0
/* 003B4 80A903C4 460A003C */  c.lt.s  $f0, $f10
/* 003B8 80A903C8 00000000 */  nop
/* 003BC 80A903CC 4502003E */  bc1fl   .L80A904C8
/* 003C0 80A903D0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 003C4 80A903D4 958CF546 */  lhu     $t4, %lo(gSaveContext+0xee6)($t4)
/* 003C8 80A903D8 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 003CC 80A903DC 01D17021 */  addu    $t6, $t6, $s1
/* 003D0 80A903E0 318D1000 */  andi    $t5, $t4, 0x1000           ## $t5 = 00000000
/* 003D4 80A903E4 51A00038 */  beql    $t5, $zero, .L80A904C8
/* 003D8 80A903E8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 003DC 80A903EC A6000194 */  sh      $zero, 0x0194($s0)         ## 00000194
/* 003E0 80A903F0 95CE04C6 */  lhu     $t6, 0x04C6($t6)           ## 000104C6
/* 003E4 80A903F4 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 003E8 80A903F8 55C10033 */  bnel    $t6, $at, .L80A904C8
/* 003EC 80A903FC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 003F0 80A90400 86050196 */  lh      $a1, 0x0196($s0)           ## 00000196
/* 003F4 80A90404 04A00004 */  bltz    $a1, .L80A90418
/* 003F8 80A90408 00000000 */  nop
/* 003FC 80A9040C 0C00B2DD */  jal     Flags_SetSwitch

/* 00400 80A90410 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00404 80A90414 86050196 */  lh      $a1, 0x0196($s0)           ## 00000196
.L80A90418:
/* 00408 80A90418 3C0480A9 */  lui     $a0, %hi(D_80A90B74)       ## $a0 = 80A90000
/* 0040C 80A9041C 0C00084C */  jal     osSyncPrintf

/* 00410 80A90420 24840B74 */  addiu   $a0, $a0, %lo(D_80A90B74)  ## $a0 = 80A90B74
/* 00414 80A90424 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00418 80A90428 00310821 */  addu    $at, $at, $s1
/* 0041C 80A9042C 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 00420 80A90430 3C1880A9 */  lui     $t8, %hi(func_80A90948)    ## $t8 = 80A90000
/* 00424 80A90434 A42F04C6 */  sh      $t7, 0x04C6($at)           ## 000104C6
/* 00428 80A90438 27180948 */  addiu   $t8, $t8, %lo(func_80A90948) ## $t8 = 80A90948
/* 0042C 80A9043C AE180134 */  sw      $t8, 0x0134($s0)           ## 00000134
/* 00430 80A90440 260501AC */  addiu   $a1, $s0, 0x01AC           ## $a1 = 000001AC
/* 00434 80A90444 AFA50030 */  sw      $a1, 0x0030($sp)
/* 00438 80A90448 0C0170D9 */  jal     Collider_InitCylinder

/* 0043C 80A9044C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00440 80A90450 3C0780A9 */  lui     $a3, %hi(D_80A909A0)       ## $a3 = 80A90000
/* 00444 80A90454 8FA50030 */  lw      $a1, 0x0030($sp)
/* 00448 80A90458 24E709A0 */  addiu   $a3, $a3, %lo(D_80A909A0)  ## $a3 = 80A909A0
/* 0044C 80A9045C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00450 80A90460 0C01712B */  jal     Collider_SetCylinder

/* 00454 80A90464 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00458 80A90468 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0045C 80A9046C 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00460 80A90470 24E70214 */  addiu   $a3, $a3, 0x0214           ## $a3 = 06000214
/* 00464 80A90474 24C665B0 */  addiu   $a2, $a2, 0x65B0           ## $a2 = 060065B0
/* 00468 80A90478 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0046C 80A9047C 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 00470 80A90480 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00474 80A90484 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00478 80A90488 0C0291BE */  jal     SkelAnime_InitSV
/* 0047C 80A9048C AFA00018 */  sw      $zero, 0x0018($sp)
/* 00480 80A90490 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00484 80A90494 0C020120 */  jal     func_80080480
/* 00488 80A90498 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0048C 80A9049C 0C01E221 */  jal     func_80078884
/* 00490 80A904A0 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 00494 80A904A4 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 00498 80A904A8 3C010800 */  lui     $at, 0x0800                ## $at = 08000000
/* 0049C 80A904AC 34210001 */  ori     $at, $at, 0x0001           ## $at = 08000001
/* 004A0 80A904B0 3C0980A9 */  lui     $t1, %hi(func_80A904D8)    ## $t1 = 80A90000
/* 004A4 80A904B4 252904D8 */  addiu   $t1, $t1, %lo(func_80A904D8) ## $t1 = 80A904D8
/* 004A8 80A904B8 03214025 */  or      $t0, $t9, $at              ## $t0 = 08000001
/* 004AC 80A904BC AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
/* 004B0 80A904C0 AE09014C */  sw      $t1, 0x014C($s0)           ## 0000014C
.L80A904C4:
/* 004B4 80A904C4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A904C8:
/* 004B8 80A904C8 8FB00024 */  lw      $s0, 0x0024($sp)
/* 004BC 80A904CC 8FB10028 */  lw      $s1, 0x0028($sp)
/* 004C0 80A904D0 03E00008 */  jr      $ra
/* 004C4 80A904D4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
