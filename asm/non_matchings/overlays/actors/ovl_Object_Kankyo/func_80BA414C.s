.rdata
glabel D_80BA5A88
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5AA0
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5AB8
    .asciz "../z_object_kankyo.c"
    .balign 4

.late_rodata
glabel D_80BA5CA4
    .float 0.049999997

glabel D_80BA5CA8
    .float 0.01

glabel D_80BA5CAC
    .float 0.01

glabel D_80BA5CB0
    .float 0.05

.text
glabel func_80BA414C
/* 016AC 80BA414C 27BDFEE8 */  addiu   $sp, $sp, 0xFEE8           ## $sp = FFFFFEE8
/* 016B0 80BA4150 3C0F80BA */  lui     $t7, %hi(D_80BA5984)       ## $t7 = 80BA0000
/* 016B4 80BA4154 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 016B8 80BA4158 AFB50058 */  sw      $s5, 0x0058($sp)           
/* 016BC 80BA415C AFB40054 */  sw      $s4, 0x0054($sp)           
/* 016C0 80BA4160 AFB30050 */  sw      $s3, 0x0050($sp)           
/* 016C4 80BA4164 AFB2004C */  sw      $s2, 0x004C($sp)           
/* 016C8 80BA4168 AFB10048 */  sw      $s1, 0x0048($sp)           
/* 016CC 80BA416C AFB00044 */  sw      $s0, 0x0044($sp)           
/* 016D0 80BA4170 F7BE0038 */  sdc1    $f30, 0x0038($sp)          
/* 016D4 80BA4174 F7BC0030 */  sdc1    $f28, 0x0030($sp)          
/* 016D8 80BA4178 F7BA0028 */  sdc1    $f26, 0x0028($sp)          
/* 016DC 80BA417C F7B80020 */  sdc1    $f24, 0x0020($sp)          
/* 016E0 80BA4180 F7B60018 */  sdc1    $f22, 0x0018($sp)          
/* 016E4 80BA4184 F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 016E8 80BA4188 25EF5984 */  addiu   $t7, $t7, %lo(D_80BA5984)  ## $t7 = 80BA5984
/* 016EC 80BA418C 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80BA5984
/* 016F0 80BA4190 27AE00E0 */  addiu   $t6, $sp, 0x00E0           ## $t6 = FFFFFFC8
/* 016F4 80BA4194 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80BA5988
/* 016F8 80BA4198 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFC8
/* 016FC 80BA419C 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80BA598C
/* 01700 80BA41A0 3C0980BA */  lui     $t1, %hi(D_80BA5990)       ## $t1 = 80BA0000
/* 01704 80BA41A4 25295990 */  addiu   $t1, $t1, %lo(D_80BA5990)  ## $t1 = 80BA5990
/* 01708 80BA41A8 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFCC
/* 0170C 80BA41AC ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFD0
/* 01710 80BA41B0 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80BA5990
/* 01714 80BA41B4 27A800D4 */  addiu   $t0, $sp, 0x00D4           ## $t0 = FFFFFFBC
/* 01718 80BA41B8 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80BA5994
/* 0171C 80BA41BC AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFBC
/* 01720 80BA41C0 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80BA5998
/* 01724 80BA41C4 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFC0
/* 01728 80BA41C8 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0172C 80BA41CC AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFC4
/* 01730 80BA41D0 8CAC0790 */  lw      $t4, 0x0790($a1)           ## 00000790
/* 01734 80BA41D4 3C0680BA */  lui     $a2, %hi(D_80BA5A88)       ## $a2 = 80BA0000
/* 01738 80BA41D8 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 0173C 80BA41DC 858D014C */  lh      $t5, 0x014C($t4)           ## 0000014C
/* 01740 80BA41E0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01744 80BA41E4 24C65A88 */  addiu   $a2, $a2, %lo(D_80BA5A88)  ## $a2 = 80BA5A88
/* 01748 80BA41E8 31AE0100 */  andi    $t6, $t5, 0x0100           ## $t6 = 00000000
/* 0174C 80BA41EC 15C001BA */  bne     $t6, $zero, .L80BA48D8     
/* 01750 80BA41F0 27A400B4 */  addiu   $a0, $sp, 0x00B4           ## $a0 = FFFFFF9C
/* 01754 80BA41F4 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01758 80BA41F8 240703BE */  addiu   $a3, $zero, 0x03BE         ## $a3 = 000003BE
/* 0175C 80BA41FC 0C031AB1 */  jal     Graph_OpenDisps              
/* 01760 80BA4200 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 01764 80BA4204 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01768 80BA4208 02611821 */  addu    $v1, $s3, $at              
/* 0176C 80BA420C 90620B14 */  lbu     $v0, 0x0B14($v1)           ## 00000B14
/* 01770 80BA4210 90640B15 */  lbu     $a0, 0x0B15($v1)           ## 00000B15
/* 01774 80BA4214 3C15E700 */  lui     $s5, 0xE700                ## $s5 = E7000000
/* 01778 80BA4218 0044082A */  slt     $at, $v0, $a0              
/* 0177C 80BA421C 5020000A */  beql    $at, $zero, .L80BA4248     
/* 01780 80BA4220 0082082A */  slt     $at, $a0, $v0              
/* 01784 80BA4224 8E6F009C */  lw      $t7, 0x009C($s3)           ## 0000009C
/* 01788 80BA4228 24590002 */  addiu   $t9, $v0, 0x0002           ## $t9 = 00000002
/* 0178C 80BA422C 31F8000F */  andi    $t8, $t7, 0x000F           ## $t8 = 00000000
/* 01790 80BA4230 1700000E */  bne     $t8, $zero, .L80BA426C     
/* 01794 80BA4234 00000000 */  nop
/* 01798 80BA4238 A0790B14 */  sb      $t9, 0x0B14($v1)           ## 00000B14
/* 0179C 80BA423C 1000000B */  beq     $zero, $zero, .L80BA426C   
/* 017A0 80BA4240 332200FF */  andi    $v0, $t9, 0x00FF           ## $v0 = 00000002
/* 017A4 80BA4244 0082082A */  slt     $at, $a0, $v0              
.L80BA4248:
/* 017A8 80BA4248 10200008 */  beq     $at, $zero, .L80BA426C     
/* 017AC 80BA424C 00000000 */  nop
/* 017B0 80BA4250 8E68009C */  lw      $t0, 0x009C($s3)           ## 0000009C
/* 017B4 80BA4254 244AFFFE */  addiu   $t2, $v0, 0xFFFE           ## $t2 = 00000000
/* 017B8 80BA4258 3109000F */  andi    $t1, $t0, 0x000F           ## $t1 = 00000000
/* 017BC 80BA425C 15200003 */  bne     $t1, $zero, .L80BA426C     
/* 017C0 80BA4260 00000000 */  nop
/* 017C4 80BA4264 A06A0B14 */  sb      $t2, 0x0B14($v1)           ## 00000B14
/* 017C8 80BA4268 314200FF */  andi    $v0, $t2, 0x00FF           ## $v0 = 00000000
.L80BA426C:
/* 017CC 80BA426C 18400194 */  blez    $v0, .L80BA48C0            
/* 017D0 80BA4270 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 017D4 80BA4274 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 017D8 80BA4278 02015821 */  addu    $t3, $s0, $at              
/* 017DC 80BA427C 3C020405 */  lui     $v0, 0x0405                ## $v0 = 04050000
/* 017E0 80BA4280 24422DB0 */  addiu   $v0, $v0, 0x2DB0           ## $v0 = 04052DB0
/* 017E4 80BA4284 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 017E8 80BA4288 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 017EC 80BA428C 0041C824 */  and     $t9, $v0, $at              
/* 017F0 80BA4290 00026100 */  sll     $t4, $v0,  4               
/* 017F4 80BA4294 000C6F02 */  srl     $t5, $t4, 28               
/* 017F8 80BA4298 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 017FC 80BA429C 3C0F8016 */  lui     $t7, %hi(gSegments)
/* 01800 80BA42A0 25EF6FA8 */  addiu   $t7, %lo(gSegments)
/* 01804 80BA42A4 000D7080 */  sll     $t6, $t5,  2               
/* 01808 80BA42A8 3C080100 */  lui     $t0, 0x0100                ## $t0 = 01000000
/* 0180C 80BA42AC 3C090401 */  lui     $t1, 0x0401                ## $t1 = 04010000
/* 01810 80BA42B0 25290050 */  addiu   $t1, $t1, 0x0050           ## $t1 = 04010050
/* 01814 80BA42B4 25080000 */  addiu   $t0, $t0, 0x0000           ## $t0 = 01000000
/* 01818 80BA42B8 01CFC021 */  addu    $t8, $t6, $t7              
/* 0181C 80BA42BC 4481F000 */  mtc1    $at, $f30                  ## $f30 = 80.00
/* 01820 80BA42C0 4481E000 */  mtc1    $at, $f28                  ## $f28 = 80.00
/* 01824 80BA42C4 AFB8007C */  sw      $t8, 0x007C($sp)           
/* 01828 80BA42C8 AFA80074 */  sw      $t0, 0x0074($sp)           
/* 0182C 80BA42CC AFA90070 */  sw      $t1, 0x0070($sp)           
/* 01830 80BA42D0 AFB90078 */  sw      $t9, 0x0078($sp)           
/* 01834 80BA42D4 AFAB0084 */  sw      $t3, 0x0084($sp)           
/* 01838 80BA42D8 00145080 */  sll     $t2, $s4,  2               
.L80BA42DC:
/* 0183C 80BA42DC 01545021 */  addu    $t2, $t2, $s4              
/* 01840 80BA42E0 000A5080 */  sll     $t2, $t2,  2               
/* 01844 80BA42E4 01545021 */  addu    $t2, $t2, $s4              
/* 01848 80BA42E8 000A5080 */  sll     $t2, $t2,  2               
/* 0184C 80BA42EC 022A8021 */  addu    $s0, $s1, $t2              
/* 01850 80BA42F0 9202014C */  lbu     $v0, 0x014C($s0)           ## 0000014C
/* 01854 80BA42F4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01858 80BA42F8 50400010 */  beql    $v0, $zero, .L80BA433C     
/* 0185C 80BA42FC C67200E0 */  lwc1    $f18, 0x00E0($s3)          ## 000000E0
/* 01860 80BA4300 10410061 */  beq     $v0, $at, .L80BA4488       
/* 01864 80BA4304 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01868 80BA4308 5041010B */  beql    $v0, $at, .L80BA4738       
/* 0186C 80BA430C C6040154 */  lwc1    $f4, 0x0154($s0)           ## 00000154
/* 01870 80BA4310 C6040154 */  lwc1    $f4, 0x0154($s0)           ## 00000154
/* 01874 80BA4314 C606016C */  lwc1    $f6, 0x016C($s0)           ## 0000016C
/* 01878 80BA4318 C6080158 */  lwc1    $f8, 0x0158($s0)           ## 00000158
/* 0187C 80BA431C C60A0170 */  lwc1    $f10, 0x0170($s0)          ## 00000170
/* 01880 80BA4320 46062380 */  add.s   $f14, $f4, $f6             
/* 01884 80BA4324 C6060168 */  lwc1    $f6, 0x0168($s0)           ## 00000168
/* 01888 80BA4328 C6040150 */  lwc1    $f4, 0x0150($s0)           ## 00000150
/* 0188C 80BA432C 460A4080 */  add.s   $f2, $f8, $f10             
/* 01890 80BA4330 1000010A */  beq     $zero, $zero, .L80BA475C   
/* 01894 80BA4334 46062300 */  add.s   $f12, $f4, $f6             
/* 01898 80BA4338 C67200E0 */  lwc1    $f18, 0x00E0($s3)          ## 000000E0
.L80BA433C:
/* 0189C 80BA433C C66800EC */  lwc1    $f8, 0x00EC($s3)           ## 000000EC
/* 018A0 80BA4340 C66A00F0 */  lwc1    $f10, 0x00F0($s3)          ## 000000F0
/* 018A4 80BA4344 C66400E4 */  lwc1    $f4, 0x00E4($s3)           ## 000000E4
/* 018A8 80BA4348 46124081 */  sub.s   $f2, $f8, $f18             
/* 018AC 80BA434C C66800E8 */  lwc1    $f8, 0x00E8($s3)           ## 000000E8
/* 018B0 80BA4350 C66600F4 */  lwc1    $f6, 0x00F4($s3)           ## 000000F4
/* 018B4 80BA4354 46045301 */  sub.s   $f12, $f10, $f4            
/* 018B8 80BA4358 46021282 */  mul.s   $f10, $f2, $f2             
/* 018BC 80BA435C 46083381 */  sub.s   $f14, $f6, $f8             
/* 018C0 80BA4360 460C6102 */  mul.s   $f4, $f12, $f12            
/* 018C4 80BA4364 46045180 */  add.s   $f6, $f10, $f4             
/* 018C8 80BA4368 460E7202 */  mul.s   $f8, $f14, $f14            
/* 018CC 80BA436C 46083000 */  add.s   $f0, $f6, $f8              
/* 018D0 80BA4370 46000004 */  sqrt.s  $f0, $f0                   
/* 018D4 80BA4374 46001283 */  div.s   $f10, $f2, $f0             
/* 018D8 80BA4378 46007403 */  div.s   $f16, $f14, $f0            
/* 018DC 80BA437C 461E5102 */  mul.s   $f4, $f10, $f30            
/* 018E0 80BA4380 46006283 */  div.s   $f10, $f12, $f0            
/* 018E4 80BA4384 46049180 */  add.s   $f6, $f18, $f4             
/* 018E8 80BA4388 E6060168 */  swc1    $f6, 0x0168($s0)           ## 00000168
/* 018EC 80BA438C C66800E4 */  lwc1    $f8, 0x00E4($s3)           ## 000000E4
/* 018F0 80BA4390 461E5102 */  mul.s   $f4, $f10, $f30            
/* 018F4 80BA4394 46044180 */  add.s   $f6, $f8, $f4              
/* 018F8 80BA4398 461E8202 */  mul.s   $f8, $f16, $f30            
/* 018FC 80BA439C E606016C */  swc1    $f6, 0x016C($s0)           ## 0000016C
/* 01900 80BA43A0 C66A00E8 */  lwc1    $f10, 0x00E8($s3)          ## 000000E8
/* 01904 80BA43A4 46085100 */  add.s   $f4, $f10, $f8             
/* 01908 80BA43A8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0190C 80BA43AC E6040170 */  swc1    $f4, 0x0170($s0)           ## 00000170
/* 01910 80BA43B0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01914 80BA43B4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 0.50
/* 01918 80BA43B8 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 0191C 80BA43BC 4481C000 */  mtc1    $at, $f24                  ## $f24 = 160.00
/* 01920 80BA43C0 46140181 */  sub.s   $f6, $f0, $f20             
/* 01924 80BA43C4 E61E0154 */  swc1    $f30, 0x0154($s0)          ## 00000154
/* 01928 80BA43C8 46183282 */  mul.s   $f10, $f6, $f24            
/* 0192C 80BA43CC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01930 80BA43D0 E60A0150 */  swc1    $f10, 0x0150($s0)          ## 00000150
/* 01934 80BA43D4 46140201 */  sub.s   $f8, $f0, $f20             
/* 01938 80BA43D8 C6060154 */  lwc1    $f6, 0x0154($s0)           ## 00000154
/* 0193C 80BA43DC C60A016C */  lwc1    $f10, 0x016C($s0)          ## 0000016C
/* 01940 80BA43E0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01944 80BA43E4 46184102 */  mul.s   $f4, $f8, $f24             
/* 01948 80BA43E8 460A3200 */  add.s   $f8, $f6, $f10             
/* 0194C 80BA43EC 4481B000 */  mtc1    $at, $f22                  ## $f22 = 50.00
/* 01950 80BA43F0 00000000 */  nop
/* 01954 80BA43F4 4616403C */  c.lt.s  $f8, $f22                  
/* 01958 80BA43F8 E6040158 */  swc1    $f4, 0x0158($s0)           ## 00000158
/* 0195C 80BA43FC 45000002 */  bc1f    .L80BA4408                 
/* 01960 80BA4400 00000000 */  nop
/* 01964 80BA4404 E616016C */  swc1    $f22, 0x016C($s0)          ## 0000016C
.L80BA4408:
/* 01968 80BA4408 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0196C 80BA440C 00000000 */  nop
/* 01970 80BA4410 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01974 80BA4414 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 01978 80BA4418 00000000 */  nop
/* 0197C 80BA441C 46040182 */  mul.s   $f6, $f0, $f4              
/* 01980 80BA4420 46143280 */  add.s   $f10, $f6, $f20            
/* 01984 80BA4424 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01988 80BA4428 E60A0180 */  swc1    $f10, 0x0180($s0)          ## 00000180
/* 0198C 80BA442C 3C0143B4 */  lui     $at, 0x43B4                ## $at = 43B40000
/* 01990 80BA4430 44814000 */  mtc1    $at, $f8                   ## $f8 = 360.00
/* 01994 80BA4434 00000000 */  nop
/* 01998 80BA4438 46080102 */  mul.s   $f4, $f0, $f8              
/* 0199C 80BA443C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 019A0 80BA4440 E6040174 */  swc1    $f4, 0x0174($s0)           ## 00000174
/* 019A4 80BA4444 3C0143B4 */  lui     $at, 0x43B4                ## $at = 43B40000
/* 019A8 80BA4448 44813000 */  mtc1    $at, $f6                   ## $f6 = 360.00
/* 019AC 80BA444C C6080154 */  lwc1    $f8, 0x0154($s0)           ## 00000154
/* 019B0 80BA4450 C604016C */  lwc1    $f4, 0x016C($s0)           ## 0000016C
/* 019B4 80BA4454 46060282 */  mul.s   $f10, $f0, $f6             
/* 019B8 80BA4458 920B014C */  lbu     $t3, 0x014C($s0)           ## 0000014C
/* 019BC 80BA445C 46044380 */  add.s   $f14, $f8, $f4             
/* 019C0 80BA4460 C6040168 */  lwc1    $f4, 0x0168($s0)           ## 00000168
/* 019C4 80BA4464 C6080150 */  lwc1    $f8, 0x0150($s0)           ## 00000150
/* 019C8 80BA4468 C6060158 */  lwc1    $f6, 0x0158($s0)           ## 00000158
/* 019CC 80BA446C 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 019D0 80BA4470 E60A017C */  swc1    $f10, 0x017C($s0)          ## 0000017C
/* 019D4 80BA4474 C60A0170 */  lwc1    $f10, 0x0170($s0)          ## 00000170
/* 019D8 80BA4478 A20C014C */  sb      $t4, 0x014C($s0)           ## 0000014C
/* 019DC 80BA447C 46044300 */  add.s   $f12, $f8, $f4             
/* 019E0 80BA4480 100000B6 */  beq     $zero, $zero, .L80BA475C   
/* 019E4 80BA4484 460A3080 */  add.s   $f2, $f6, $f10             
.L80BA4488:
/* 019E8 80BA4488 C67200E0 */  lwc1    $f18, 0x00E0($s3)          ## 000000E0
/* 019EC 80BA448C C66600EC */  lwc1    $f6, 0x00EC($s3)           ## 000000EC
/* 019F0 80BA4490 C67400E4 */  lwc1    $f20, 0x00E4($s3)          ## 000000E4
/* 019F4 80BA4494 C66A00F0 */  lwc1    $f10, 0x00F0($s3)          ## 000000F0
/* 019F8 80BA4498 46123081 */  sub.s   $f2, $f6, $f18             
/* 019FC 80BA449C C67000E8 */  lwc1    $f16, 0x00E8($s3)          ## 000000E8
/* 01A00 80BA44A0 C66800F4 */  lwc1    $f8, 0x00F4($s3)           ## 000000F4
/* 01A04 80BA44A4 46145301 */  sub.s   $f12, $f10, $f20           
/* 01A08 80BA44A8 46021102 */  mul.s   $f4, $f2, $f2              
/* 01A0C 80BA44AC 46104381 */  sub.s   $f14, $f8, $f16            
/* 01A10 80BA44B0 460C6182 */  mul.s   $f6, $f12, $f12            
/* 01A14 80BA44B4 4600E607 */  neg.s   $f24, $f28                 
/* 01A18 80BA44B8 460E7202 */  mul.s   $f8, $f14, $f14            
/* 01A1C 80BA44BC 46062280 */  add.s   $f10, $f4, $f6             
/* 01A20 80BA44C0 46085000 */  add.s   $f0, $f10, $f8             
/* 01A24 80BA44C4 46000004 */  sqrt.s  $f0, $f0                   
/* 01A28 80BA44C8 46001103 */  div.s   $f4, $f2, $f0              
/* 01A2C 80BA44CC 46006283 */  div.s   $f10, $f12, $f0            
/* 01A30 80BA44D0 461E2182 */  mul.s   $f6, $f4, $f30             
/* 01A34 80BA44D4 46069680 */  add.s   $f26, $f18, $f6            
/* 01A38 80BA44D8 461E5202 */  mul.s   $f8, $f10, $f30            
/* 01A3C 80BA44DC 46007183 */  div.s   $f6, $f14, $f0             
/* 01A40 80BA44E0 4608A100 */  add.s   $f4, $f20, $f8             
/* 01A44 80BA44E4 E7A400F0 */  swc1    $f4, 0x00F0($sp)           
/* 01A48 80BA44E8 461E3282 */  mul.s   $f10, $f6, $f30            
/* 01A4C 80BA44EC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01A50 80BA44F0 460A8580 */  add.s   $f22, $f16, $f10           
/* 01A54 80BA44F4 3C0180BA */  lui     $at, %hi(D_80BA5CA4)       ## $at = 80BA0000
/* 01A58 80BA44F8 C4345CA4 */  lwc1    $f20, %lo(D_80BA5CA4)($at) 
/* 01A5C 80BA44FC C6080174 */  lwc1    $f8, 0x0174($s0)           ## 00000174
/* 01A60 80BA4500 4600A102 */  mul.s   $f4, $f20, $f0             
/* 01A64 80BA4504 46044180 */  add.s   $f6, $f8, $f4              
/* 01A68 80BA4508 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01A6C 80BA450C E6060174 */  swc1    $f6, 0x0174($s0)           ## 00000174
/* 01A70 80BA4510 4600A202 */  mul.s   $f8, $f20, $f0             
/* 01A74 80BA4514 C60A017C */  lwc1    $f10, 0x017C($s0)          ## 0000017C
/* 01A78 80BA4518 3C0180BA */  lui     $at, %hi(D_80BA5CA8)       ## $at = 80BA0000
/* 01A7C 80BA451C C6060174 */  lwc1    $f6, 0x0174($s0)           ## 00000174
/* 01A80 80BA4520 46085100 */  add.s   $f4, $f10, $f8             
/* 01A84 80BA4524 E604017C */  swc1    $f4, 0x017C($s0)           ## 0000017C
/* 01A88 80BA4528 C42A5CA8 */  lwc1    $f10, %lo(D_80BA5CA8)($at) 
/* 01A8C 80BA452C 460A3302 */  mul.s   $f12, $f6, $f10            
/* 01A90 80BA4530 0C0400A4 */  jal     sinf
              
/* 01A94 80BA4534 00000000 */  nop
/* 01A98 80BA4538 C6080150 */  lwc1    $f8, 0x0150($s0)           ## 00000150
/* 01A9C 80BA453C 3C0180BA */  lui     $at, %hi(D_80BA5CAC)       ## $at = 80BA0000
/* 01AA0 80BA4540 C606017C */  lwc1    $f6, 0x017C($s0)           ## 0000017C
/* 01AA4 80BA4544 46004100 */  add.s   $f4, $f8, $f0              
/* 01AA8 80BA4548 E6040150 */  swc1    $f4, 0x0150($s0)           ## 00000150
/* 01AAC 80BA454C C42A5CAC */  lwc1    $f10, %lo(D_80BA5CAC)($at) 
/* 01AB0 80BA4550 460A3302 */  mul.s   $f12, $f6, $f10            
/* 01AB4 80BA4554 0C041184 */  jal     cosf
              
/* 01AB8 80BA4558 00000000 */  nop
/* 01ABC 80BA455C C6080158 */  lwc1    $f8, 0x0158($s0)           ## 00000158
/* 01AC0 80BA4560 C6060154 */  lwc1    $f6, 0x0154($s0)           ## 00000154
/* 01AC4 80BA4564 C60A0180 */  lwc1    $f10, 0x0180($s0)          ## 00000180
/* 01AC8 80BA4568 46004100 */  add.s   $f4, $f8, $f0              
/* 01ACC 80BA456C 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 01AD0 80BA4570 460A3201 */  sub.s   $f8, $f6, $f10             
/* 01AD4 80BA4574 E6040158 */  swc1    $f4, 0x0158($s0)           ## 00000158
/* 01AD8 80BA4578 C606016C */  lwc1    $f6, 0x016C($s0)           ## 0000016C
/* 01ADC 80BA457C E6080154 */  swc1    $f8, 0x0154($s0)           ## 00000154
/* 01AE0 80BA4580 C6040154 */  lwc1    $f4, 0x0154($s0)           ## 00000154
/* 01AE4 80BA4584 C62A0028 */  lwc1    $f10, 0x0028($s1)          ## 00000028
/* 01AE8 80BA4588 46062380 */  add.s   $f14, $f4, $f6             
/* 01AEC 80BA458C 460A703C */  c.lt.s  $f14, $f10                 
/* 01AF0 80BA4590 00000000 */  nop
/* 01AF4 80BA4594 4503000A */  bc1tl   .L80BA45C0                 
/* 01AF8 80BA4598 920D014C */  lbu     $t5, 0x014C($s0)           ## 0000014C
/* 01AFC 80BA459C C66800E4 */  lwc1    $f8, 0x00E4($s3)           ## 000000E4
/* 01B00 80BA45A0 44812000 */  mtc1    $at, $f4                   ## $f4 = 150.00
/* 01B04 80BA45A4 00000000 */  nop
/* 01B08 80BA45A8 46044181 */  sub.s   $f6, $f8, $f4              
/* 01B0C 80BA45AC 4606703C */  c.lt.s  $f14, $f6                  
/* 01B10 80BA45B0 00000000 */  nop
/* 01B14 80BA45B4 45020005 */  bc1fl   .L80BA45CC                 
/* 01B18 80BA45B8 C60A0150 */  lwc1    $f10, 0x0150($s0)          ## 00000150
/* 01B1C 80BA45BC 920D014C */  lbu     $t5, 0x014C($s0)           ## 0000014C
.L80BA45C0:
/* 01B20 80BA45C0 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 01B24 80BA45C4 A20E014C */  sb      $t6, 0x014C($s0)           ## 0000014C
/* 01B28 80BA45C8 C60A0150 */  lwc1    $f10, 0x0150($s0)          ## 00000150
.L80BA45CC:
/* 01B2C 80BA45CC C6080168 */  lwc1    $f8, 0x0168($s0)           ## 00000168
/* 01B30 80BA45D0 46085100 */  add.s   $f4, $f10, $f8             
/* 01B34 80BA45D4 461A2301 */  sub.s   $f12, $f4, $f26            
/* 01B38 80BA45D8 460CE03C */  c.lt.s  $f28, $f12                 
/* 01B3C 80BA45DC 00000000 */  nop
/* 01B40 80BA45E0 4503001F */  bc1tl   .L80BA4660                 
/* 01B44 80BA45E4 460CE03C */  c.lt.s  $f28, $f12                 
/* 01B48 80BA45E8 4618603C */  c.lt.s  $f12, $f24                 
/* 01B4C 80BA45EC 00000000 */  nop
/* 01B50 80BA45F0 4503001B */  bc1tl   .L80BA4660                 
/* 01B54 80BA45F4 460CE03C */  c.lt.s  $f28, $f12                 
/* 01B58 80BA45F8 C6060154 */  lwc1    $f6, 0x0154($s0)           ## 00000154
/* 01B5C 80BA45FC C60A016C */  lwc1    $f10, 0x016C($s0)          ## 0000016C
/* 01B60 80BA4600 C7A400F0 */  lwc1    $f4, 0x00F0($sp)           
/* 01B64 80BA4604 460A3200 */  add.s   $f8, $f6, $f10             
/* 01B68 80BA4608 46044001 */  sub.s   $f0, $f8, $f4              
/* 01B6C 80BA460C 4600E03C */  c.lt.s  $f28, $f0                  
/* 01B70 80BA4610 00000000 */  nop
/* 01B74 80BA4614 45030012 */  bc1tl   .L80BA4660                 
/* 01B78 80BA4618 460CE03C */  c.lt.s  $f28, $f12                 
/* 01B7C 80BA461C 4618003C */  c.lt.s  $f0, $f24                  
/* 01B80 80BA4620 00000000 */  nop
/* 01B84 80BA4624 4503000E */  bc1tl   .L80BA4660                 
/* 01B88 80BA4628 460CE03C */  c.lt.s  $f28, $f12                 
/* 01B8C 80BA462C C6060158 */  lwc1    $f6, 0x0158($s0)           ## 00000158
/* 01B90 80BA4630 C60A0170 */  lwc1    $f10, 0x0170($s0)          ## 00000170
/* 01B94 80BA4634 460A3080 */  add.s   $f2, $f6, $f10             
/* 01B98 80BA4638 46161001 */  sub.s   $f0, $f2, $f22             
/* 01B9C 80BA463C 4600E03C */  c.lt.s  $f28, $f0                  
/* 01BA0 80BA4640 00000000 */  nop
/* 01BA4 80BA4644 45030006 */  bc1tl   .L80BA4660                 
/* 01BA8 80BA4648 460CE03C */  c.lt.s  $f28, $f12                 
/* 01BAC 80BA464C 4618003C */  c.lt.s  $f0, $f24                  
/* 01BB0 80BA4650 00000000 */  nop
/* 01BB4 80BA4654 45020031 */  bc1fl   .L80BA471C                 
/* 01BB8 80BA4658 C6040154 */  lwc1    $f4, 0x0154($s0)           ## 00000154
/* 01BBC 80BA465C 460CE03C */  c.lt.s  $f28, $f12                 
.L80BA4660:
/* 01BC0 80BA4660 00000000 */  nop
/* 01BC4 80BA4664 4502000A */  bc1fl   .L80BA4690                 
/* 01BC8 80BA4668 4618603C */  c.lt.s  $f12, $f24                 
/* 01BCC 80BA466C 461CD201 */  sub.s   $f8, $f26, $f28            
/* 01BD0 80BA4670 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01BD4 80BA4674 E6080168 */  swc1    $f8, 0x0168($s0)           ## 00000168
/* 01BD8 80BA4678 E6040150 */  swc1    $f4, 0x0150($s0)           ## 00000150
/* 01BDC 80BA467C C6060150 */  lwc1    $f6, 0x0150($s0)           ## 00000150
/* 01BE0 80BA4680 C60A0168 */  lwc1    $f10, 0x0168($s0)          ## 00000168
/* 01BE4 80BA4684 460A3200 */  add.s   $f8, $f6, $f10             
/* 01BE8 80BA4688 461A4301 */  sub.s   $f12, $f8, $f26            
/* 01BEC 80BA468C 4618603C */  c.lt.s  $f12, $f24                 
.L80BA4690:
/* 01BF0 80BA4690 00000000 */  nop
/* 01BF4 80BA4694 45020006 */  bc1fl   .L80BA46B0                 
/* 01BF8 80BA4698 C60A0158 */  lwc1    $f10, 0x0158($s0)          ## 00000158
/* 01BFC 80BA469C 461CD100 */  add.s   $f4, $f26, $f28            
/* 01C00 80BA46A0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01C04 80BA46A4 E6040168 */  swc1    $f4, 0x0168($s0)           ## 00000168
/* 01C08 80BA46A8 E6060150 */  swc1    $f6, 0x0150($s0)           ## 00000150
/* 01C0C 80BA46AC C60A0158 */  lwc1    $f10, 0x0158($s0)          ## 00000158
.L80BA46B0:
/* 01C10 80BA46B0 C6080170 */  lwc1    $f8, 0x0170($s0)           ## 00000170
/* 01C14 80BA46B4 46085080 */  add.s   $f2, $f10, $f8             
/* 01C18 80BA46B8 46161001 */  sub.s   $f0, $f2, $f22             
/* 01C1C 80BA46BC 4600E03C */  c.lt.s  $f28, $f0                  
/* 01C20 80BA46C0 00000000 */  nop
/* 01C24 80BA46C4 4502000A */  bc1fl   .L80BA46F0                 
/* 01C28 80BA46C8 4618003C */  c.lt.s  $f0, $f24                  
/* 01C2C 80BA46CC 461CB101 */  sub.s   $f4, $f22, $f28            
/* 01C30 80BA46D0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01C34 80BA46D4 E6040170 */  swc1    $f4, 0x0170($s0)           ## 00000170
/* 01C38 80BA46D8 E6060158 */  swc1    $f6, 0x0158($s0)           ## 00000158
/* 01C3C 80BA46DC C60A0158 */  lwc1    $f10, 0x0158($s0)          ## 00000158
/* 01C40 80BA46E0 C6080170 */  lwc1    $f8, 0x0170($s0)           ## 00000170
/* 01C44 80BA46E4 46085080 */  add.s   $f2, $f10, $f8             
/* 01C48 80BA46E8 46161001 */  sub.s   $f0, $f2, $f22             
/* 01C4C 80BA46EC 4618003C */  c.lt.s  $f0, $f24                  
.L80BA46F0:
/* 01C50 80BA46F0 00000000 */  nop
/* 01C54 80BA46F4 45020009 */  bc1fl   .L80BA471C                 
/* 01C58 80BA46F8 C6040154 */  lwc1    $f4, 0x0154($s0)           ## 00000154
/* 01C5C 80BA46FC 461CB100 */  add.s   $f4, $f22, $f28            
/* 01C60 80BA4700 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01C64 80BA4704 E6040170 */  swc1    $f4, 0x0170($s0)           ## 00000170
/* 01C68 80BA4708 E6060158 */  swc1    $f6, 0x0158($s0)           ## 00000158
/* 01C6C 80BA470C C60A0158 */  lwc1    $f10, 0x0158($s0)          ## 00000158
/* 01C70 80BA4710 C6080170 */  lwc1    $f8, 0x0170($s0)           ## 00000170
/* 01C74 80BA4714 46085080 */  add.s   $f2, $f10, $f8             
/* 01C78 80BA4718 C6040154 */  lwc1    $f4, 0x0154($s0)           ## 00000154
.L80BA471C:
/* 01C7C 80BA471C C606016C */  lwc1    $f6, 0x016C($s0)           ## 0000016C
/* 01C80 80BA4720 C60A0150 */  lwc1    $f10, 0x0150($s0)          ## 00000150
/* 01C84 80BA4724 C6080168 */  lwc1    $f8, 0x0168($s0)           ## 00000168
/* 01C88 80BA4728 46062380 */  add.s   $f14, $f4, $f6             
/* 01C8C 80BA472C 1000000B */  beq     $zero, $zero, .L80BA475C   
/* 01C90 80BA4730 46085300 */  add.s   $f12, $f10, $f8            
/* 01C94 80BA4734 C6040154 */  lwc1    $f4, 0x0154($s0)           ## 00000154
.L80BA4738:
/* 01C98 80BA4738 C606016C */  lwc1    $f6, 0x016C($s0)           ## 0000016C
/* 01C9C 80BA473C C60A0158 */  lwc1    $f10, 0x0158($s0)          ## 00000158
/* 01CA0 80BA4740 C6080170 */  lwc1    $f8, 0x0170($s0)           ## 00000170
/* 01CA4 80BA4744 46062380 */  add.s   $f14, $f4, $f6             
/* 01CA8 80BA4748 C6060168 */  lwc1    $f6, 0x0168($s0)           ## 00000168
/* 01CAC 80BA474C C6040150 */  lwc1    $f4, 0x0150($s0)           ## 00000150
/* 01CB0 80BA4750 A200014C */  sb      $zero, 0x014C($s0)         ## 0000014C
/* 01CB4 80BA4754 46085080 */  add.s   $f2, $f10, $f8             
/* 01CB8 80BA4758 46062300 */  add.s   $f12, $f4, $f6             
.L80BA475C:
/* 01CBC 80BA475C 44061000 */  mfc1    $a2, $f2                   
/* 01CC0 80BA4760 0C034261 */  jal     Matrix_Translate              
/* 01CC4 80BA4764 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01CC8 80BA4768 3C0180BA */  lui     $at, %hi(D_80BA5CB0)       ## $at = 80BA0000
/* 01CCC 80BA476C C42E5CB0 */  lwc1    $f14, %lo(D_80BA5CB0)($at) 
/* 01CD0 80BA4770 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01CD4 80BA4774 44067000 */  mfc1    $a2, $f14                  
/* 01CD8 80BA4778 0C0342A3 */  jal     Matrix_Scale              
/* 01CDC 80BA477C 46007306 */  mov.s   $f12, $f14                 
/* 01CE0 80BA4780 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 01CE4 80BA4784 3C04C8C8 */  lui     $a0, 0xC8C8                ## $a0 = C8C80000
/* 01CE8 80BA4788 3484C8B4 */  ori     $a0, $a0, 0xC8B4           ## $a0 = C8C8C8B4
/* 01CEC 80BA478C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01CF0 80BA4790 AE4F02D0 */  sw      $t7, 0x02D0($s2)           ## 000002D0
/* 01CF4 80BA4794 AC550000 */  sw      $s5, 0x0000($v0)           ## 00000000
/* 01CF8 80BA4798 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 01CFC 80BA479C 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 01D00 80BA47A0 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 01D04 80BA47A4 3C09FB00 */  lui     $t1, 0xFB00                ## $t1 = FB000000
/* 01D08 80BA47A8 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01D0C 80BA47AC AE5802D0 */  sw      $t8, 0x02D0($s2)           ## 000002D0
/* 01D10 80BA47B0 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01D14 80BA47B4 AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 01D18 80BA47B8 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 01D1C 80BA47BC 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 01D20 80BA47C0 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 01D24 80BA47C4 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 01D28 80BA47C8 AE4802D0 */  sw      $t0, 0x02D0($s2)           ## 000002D0
/* 01D2C 80BA47CC AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 01D30 80BA47D0 AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 01D34 80BA47D4 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 01D38 80BA47D8 3C0580BA */  lui     $a1, %hi(D_80BA5AA0)       ## $a1 = 80BA0000
/* 01D3C 80BA47DC 24A55AA0 */  addiu   $a1, $a1, %lo(D_80BA5AA0)  ## $a1 = 80BA5AA0
/* 01D40 80BA47E0 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 01D44 80BA47E4 AE4A02D0 */  sw      $t2, 0x02D0($s2)           ## 000002D0
/* 01D48 80BA47E8 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 01D4C 80BA47EC 8E640000 */  lw      $a0, 0x0000($s3)           ## 00000000
/* 01D50 80BA47F0 24060453 */  addiu   $a2, $zero, 0x0453         ## $a2 = 00000453
/* 01D54 80BA47F4 0C0346A2 */  jal     Matrix_NewMtx              
/* 01D58 80BA47F8 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 01D5C 80BA47FC AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 01D60 80BA4800 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 01D64 80BA4804 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 01D68 80BA4808 35AD0020 */  ori     $t5, $t5, 0x0020           ## $t5 = DB060020
/* 01D6C 80BA480C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01D70 80BA4810 AE4C02D0 */  sw      $t4, 0x02D0($s2)           ## 000002D0
/* 01D74 80BA4814 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01D78 80BA4818 8FAE007C */  lw      $t6, 0x007C($sp)           
/* 01D7C 80BA481C 8FB80078 */  lw      $t8, 0x0078($sp)           
/* 01D80 80BA4820 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01D84 80BA4824 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 01D88 80BA4828 01F8C821 */  addu    $t9, $t7, $t8              
/* 01D8C 80BA482C 03214021 */  addu    $t0, $t9, $at              
/* 01D90 80BA4830 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 01D94 80BA4834 0C025314 */  jal     func_80094C50              
/* 01D98 80BA4838 8E640000 */  lw      $a0, 0x0000($s3)           ## 00000000
/* 01D9C 80BA483C 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 01DA0 80BA4840 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 01DA4 80BA4844 354A0001 */  ori     $t2, $t2, 0x0001           ## $t2 = DA380001
/* 01DA8 80BA4848 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 01DAC 80BA484C AE4902D0 */  sw      $t1, 0x02D0($s2)           ## 000002D0
/* 01DB0 80BA4850 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 01DB4 80BA4854 8FAB0074 */  lw      $t3, 0x0074($sp)           
/* 01DB8 80BA4858 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 01DBC 80BA485C 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 01DC0 80BA4860 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 01DC4 80BA4864 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 01DC8 80BA4868 0014A400 */  sll     $s4, $s4, 16               
/* 01DCC 80BA486C 0014A403 */  sra     $s4, $s4, 16               
/* 01DD0 80BA4870 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01DD4 80BA4874 AE4C02D0 */  sw      $t4, 0x02D0($s2)           ## 000002D0
/* 01DD8 80BA4878 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 01DDC 80BA487C AC550000 */  sw      $s5, 0x0000($v0)           ## 00000000
/* 01DE0 80BA4880 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 01DE4 80BA4884 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 01DE8 80BA4888 AE4D02D0 */  sw      $t5, 0x02D0($s2)           ## 000002D0
/* 01DEC 80BA488C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 01DF0 80BA4890 8FAF0070 */  lw      $t7, 0x0070($sp)           
/* 01DF4 80BA4894 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01DF8 80BA4898 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 01DFC 80BA489C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01E00 80BA48A0 AE5802D0 */  sw      $t8, 0x02D0($s2)           ## 000002D0
/* 01E04 80BA48A4 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 01E08 80BA48A8 AC550000 */  sw      $s5, 0x0000($v0)           ## 00000000
/* 01E0C 80BA48AC 8FB90084 */  lw      $t9, 0x0084($sp)           
/* 01E10 80BA48B0 93280B14 */  lbu     $t0, 0x0B14($t9)           ## 00000B14
/* 01E14 80BA48B4 0288082A */  slt     $at, $s4, $t0              
/* 01E18 80BA48B8 5420FE88 */  bnel    $at, $zero, .L80BA42DC     
/* 01E1C 80BA48BC 00145080 */  sll     $t2, $s4,  2               
.L80BA48C0:
/* 01E20 80BA48C0 3C0680BA */  lui     $a2, %hi(D_80BA5AB8)       ## $a2 = 80BA0000
/* 01E24 80BA48C4 24C65AB8 */  addiu   $a2, $a2, %lo(D_80BA5AB8)  ## $a2 = 80BA5AB8
/* 01E28 80BA48C8 27A400B4 */  addiu   $a0, $sp, 0x00B4           ## $a0 = FFFFFF9C
/* 01E2C 80BA48CC 8E650000 */  lw      $a1, 0x0000($s3)           ## 00000000
/* 01E30 80BA48D0 0C031AD5 */  jal     Graph_CloseDisps              
/* 01E34 80BA48D4 24070467 */  addiu   $a3, $zero, 0x0467         ## $a3 = 00000467
.L80BA48D8:
/* 01E38 80BA48D8 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 01E3C 80BA48DC D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 01E40 80BA48E0 D7B60018 */  ldc1    $f22, 0x0018($sp)          
/* 01E44 80BA48E4 D7B80020 */  ldc1    $f24, 0x0020($sp)          
/* 01E48 80BA48E8 D7BA0028 */  ldc1    $f26, 0x0028($sp)          
/* 01E4C 80BA48EC D7BC0030 */  ldc1    $f28, 0x0030($sp)          
/* 01E50 80BA48F0 D7BE0038 */  ldc1    $f30, 0x0038($sp)          
/* 01E54 80BA48F4 8FB00044 */  lw      $s0, 0x0044($sp)           
/* 01E58 80BA48F8 8FB10048 */  lw      $s1, 0x0048($sp)           
/* 01E5C 80BA48FC 8FB2004C */  lw      $s2, 0x004C($sp)           
/* 01E60 80BA4900 8FB30050 */  lw      $s3, 0x0050($sp)           
/* 01E64 80BA4904 8FB40054 */  lw      $s4, 0x0054($sp)           
/* 01E68 80BA4908 8FB50058 */  lw      $s5, 0x0058($sp)           
/* 01E6C 80BA490C 03E00008 */  jr      $ra                        
/* 01E70 80BA4910 27BD0118 */  addiu   $sp, $sp, 0x0118           ## $sp = 00000000
