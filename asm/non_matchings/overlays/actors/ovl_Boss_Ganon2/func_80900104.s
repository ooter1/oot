glabel func_80900104
/* 031C4 80900104 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 031C8 80900108 AFB00018 */  sw      $s0, 0x0018($sp)
/* 031CC 8090010C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 031D0 80900110 AFBF001C */  sw      $ra, 0x001C($sp)
/* 031D4 80900114 2487014C */  addiu   $a3, $a0, 0x014C           ## $a3 = 0000014C
/* 031D8 80900118 AFA5002C */  sw      $a1, 0x002C($sp)
/* 031DC 8090011C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 0000014C
/* 031E0 80900120 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 031E4 80900124 AFA70020 */  sw      $a3, 0x0020($sp)
/* 031E8 80900128 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 031EC 8090012C 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 031F0 80900130 0C01E123 */  jal     Math_SmoothDownscaleMaxF

/* 031F4 80900134 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 031F8 80900138 860201AC */  lh      $v0, 0x01AC($s0)           ## 000001AC
/* 031FC 8090013C 8FA70020 */  lw      $a3, 0x0020($sp)
/* 03200 80900140 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 03204 80900144 10400007 */  beq     $v0, $zero, .L80900164
/* 03208 80900148 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0320C 8090014C 10410014 */  beq     $v0, $at, .L809001A0
/* 03210 80900150 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 03214 80900154 10410023 */  beq     $v0, $at, .L809001E4
/* 03218 80900158 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0321C 8090015C 10000028 */  beq     $zero, $zero, .L80900200
/* 03220 80900160 8FBF001C */  lw      $ra, 0x001C($sp)
.L80900164:
/* 03224 80900164 8E050194 */  lw      $a1, 0x0194($s0)           ## 00000194
/* 03228 80900168 0C0295B2 */  jal     func_800A56C8
/* 0322C 8090016C AFA70020 */  sw      $a3, 0x0020($sp)
/* 03230 80900170 10400022 */  beq     $v0, $zero, .L809001FC
/* 03234 80900174 8FA70020 */  lw      $a3, 0x0020($sp)
/* 03238 80900178 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0323C 8090017C 3C050602 */  lui     $a1, 0x0602                ## $a1 = 06020000
/* 03240 80900180 A60E01AC */  sh      $t6, 0x01AC($s0)           ## 000001AC
/* 03244 80900184 24A56AF4 */  addiu   $a1, $a1, 0x6AF4           ## $a1 = 06026AF4
/* 03248 80900188 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0324C 8090018C 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 03250 80900190 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 03254 80900194 240F0050 */  addiu   $t7, $zero, 0x0050         ## $t7 = 00000050
/* 03258 80900198 10000018 */  beq     $zero, $zero, .L809001FC
/* 0325C 8090019C A60F01A2 */  sh      $t7, 0x01A2($s0)           ## 000001A2
.L809001A0:
/* 03260 809001A0 861801A2 */  lh      $t8, 0x01A2($s0)           ## 000001A2
/* 03264 809001A4 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 03268 809001A8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0326C 809001AC 17000013 */  bne     $t8, $zero, .L809001FC
/* 03270 809001B0 3C050602 */  lui     $a1, 0x0602                ## $a1 = 06020000
/* 03274 809001B4 A61901AC */  sh      $t9, 0x01AC($s0)           ## 000001AC
/* 03278 809001B8 24A57824 */  addiu   $a1, $a1, 0x7824           ## $a1 = 06027824
/* 0327C 809001BC 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 03280 809001C0 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 03284 809001C4 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 03288 809001C8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0328C 809001CC 24847824 */  addiu   $a0, $a0, 0x7824           ## $a0 = 06027824
/* 03290 809001D0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03294 809001D4 00000000 */  nop
/* 03298 809001D8 468021A0 */  cvt.s.w $f6, $f4
/* 0329C 809001DC 10000007 */  beq     $zero, $zero, .L809001FC
/* 032A0 809001E0 E6060194 */  swc1    $f6, 0x0194($s0)           ## 00000194
.L809001E4:
/* 032A4 809001E4 0C0295B2 */  jal     func_800A56C8
/* 032A8 809001E8 8E050194 */  lw      $a1, 0x0194($s0)           ## 00000194
/* 032AC 809001EC 10400003 */  beq     $v0, $zero, .L809001FC
/* 032B0 809001F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 032B4 809001F4 0C2400B3 */  jal     func_809002CC
/* 032B8 809001F8 8FA5002C */  lw      $a1, 0x002C($sp)
.L809001FC:
/* 032BC 809001FC 8FBF001C */  lw      $ra, 0x001C($sp)
.L80900200:
/* 032C0 80900200 8FB00018 */  lw      $s0, 0x0018($sp)
/* 032C4 80900204 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 032C8 80900208 03E00008 */  jr      $ra
/* 032CC 8090020C 00000000 */  nop
