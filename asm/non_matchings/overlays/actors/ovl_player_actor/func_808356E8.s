glabel func_808356E8
/* 034D8 808356E8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 034DC 808356EC AFBF001C */  sw      $ra, 0x001C($sp)
/* 034E0 808356F0 AFB10018 */  sw      $s1, 0x0018($sp)
/* 034E4 808356F4 AFB00014 */  sw      $s0, 0x0014($sp)
/* 034E8 808356F8 8C8E03AC */  lw      $t6, 0x03AC($a0)           ## 000003AC
/* 034EC 808356FC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 034F0 80835700 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 034F4 80835704 15C00004 */  bne     $t6, $zero, .L80835718
/* 034F8 80835708 AFAE0024 */  sw      $t6, 0x0024($sp)
/* 034FC 8083570C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 03500 80835710 0C20D191 */  jal     func_80834644
/* 03504 80835714 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
.L80835718:
/* 03508 80835718 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0350C 8083571C 0C20D1D6 */  jal     func_80834758
/* 03510 80835720 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03514 80835724 50400004 */  beql    $v0, $zero, .L80835738
/* 03518 80835728 8E18067C */  lw      $t8, 0x067C($s0)           ## 0000067C
/* 0351C 8083572C 10000029 */  beq     $zero, $zero, .L808357D4
/* 03520 80835730 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 03524 80835734 8E18067C */  lw      $t8, 0x067C($s0)           ## 0000067C
.L80835738:
/* 03528 80835738 260506C8 */  addiu   $a1, $s0, 0x06C8           ## $a1 = 000006C8
/* 0352C 8083573C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03530 80835740 33190800 */  andi    $t9, $t8, 0x0800           ## $t9 = 00000000
/* 03534 80835744 13200021 */  beq     $t9, $zero, .L808357CC
/* 03538 80835748 00000000 */  nop
/* 0353C 8083574C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03540 80835750 0C028EF0 */  jal     func_800A3BC0
/* 03544 80835754 AFA50020 */  sw      $a1, 0x0020($sp)
/* 03548 80835758 10400005 */  beq     $v0, $zero, .L80835770
/* 0354C 8083575C 8FA50020 */  lw      $a1, 0x0020($sp)
/* 03550 80835760 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 03554 80835764 24C62E10 */  addiu   $a2, $a2, 0x2E10           ## $a2 = 04002E10
/* 03558 80835768 0C029050 */  jal     SkelAnime_ChangeLinkAnimDefaultRepeat
/* 0355C 8083576C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80835770:
/* 03560 80835770 8FA80024 */  lw      $t0, 0x0024($sp)
/* 03564 80835774 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 03568 80835778 85090000 */  lh      $t1, 0x0000($t0)           ## 00000000
/* 0356C 8083577C 15210011 */  bne     $t1, $at, .L808357C4
/* 03570 80835780 00000000 */  nop
/* 03574 80835784 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 03578 80835788 C6060060 */  lwc1    $f6, 0x0060($s0)           ## 00000060
/* 0357C 8083578C 4604303E */  c.le.s  $f6, $f4
/* 03580 80835790 00000000 */  nop
/* 03584 80835794 4500000B */  bc1f    .L808357C4
/* 03588 80835798 00000000 */  nop
/* 0358C 8083579C C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 03590 808357A0 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 03594 808357A4 44814000 */  mtc1    $at, $f8                   ## $f8 = -2.00
/* 03598 808357A8 4600848D */  trunc.w.s $f18, $f16
/* 0359C 808357AC 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 035A0 808357B0 44815000 */  mtc1    $at, $f10                  ## $f10 = -0.50
/* 035A4 808357B4 E6080070 */  swc1    $f8, 0x0070($s0)           ## 00000070
/* 035A8 808357B8 440B9000 */  mfc1    $t3, $f18
/* 035AC 808357BC E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 035B0 808357C0 A60B0894 */  sh      $t3, 0x0894($s0)           ## 00000894
.L808357C4:
/* 035B4 808357C4 10000003 */  beq     $zero, $zero, .L808357D4
/* 035B8 808357C8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808357CC:
/* 035BC 808357CC 0C20D217 */  jal     func_8083485C
/* 035C0 808357D0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L808357D4:
/* 035C4 808357D4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 035C8 808357D8 8FB00014 */  lw      $s0, 0x0014($sp)
/* 035CC 808357DC 8FB10018 */  lw      $s1, 0x0018($sp)
/* 035D0 808357E0 03E00008 */  jr      $ra
/* 035D4 808357E4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
