.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_8082AB90
 .word 0x00000000
glabel D_8082AB94
 .word 0x00000000
glabel D_8082AB98
 .word 0x00FF0000
glabel D_8082AB9C
 .word 0x00FF0000
glabel D_8082ABA0
 .word 0x00000000
glabel D_8082ABA4
 .word 0x00000000
glabel D_8082ABA8
 .word 0x00000000
glabel D_8082ABAC
 .word 0xC0800000, 0x40800000, 0x40800000, 0x40800000, 0x40800000, 0xC0800000, 0xC0800000, 0xC0800000
glabel D_8082ABCC
 .word 0xC0800000, 0xC0800000, 0xC0800000, 0x40800000, 0x40800000, 0x40800000, 0x40800000, 0xC0800000
glabel D_8082ABEC
 .word 0x00010003, 0x00020000, 0x00030001, 0x00000002
glabel D_8082ABFC
 .word 0x01090900, 0x00090109, 0x09000009, 0x01090100, 0x00090909, 0x09090001
glabel D_8082AC14
 .word 0x00010000, 0x09010900, 0x00090000, 0x09090000
glabel D_8082AC24
 .word 0x01090900, 0x00090109, 0x09090000, 0x00090109, 0x01000009, 0x09090909, 0x09090909, 0x09090909, 0x09010101, 0x01010101, 0x01010101, 0x01000000, 0x00000000, 0x00000000, 0x00000001, 0x00000109, 0x00090000, 0x09000001, 0x01010000, 0x00090909, 0x01000009, 0x09000000
glabel D_8082AC7C
 .word 0x0F1F0F1F, 0x1F1F1F1F, 0x0707030F, 0x070F0FFF, 0xFFFF1F0F, 0x030F0000
glabel D_8082AC94
 .word 0x0805C1C0, 0x0805C240, 0x0805C2C0, 0x0805C340
glabel D_8082ACA4
 .word 0x00FF00FF, 0x00FF00FF, 0x00FF0000, 0x000000FF, 0x00320000
glabel D_8082ACB8
 .word 0x0D006880, 0x0D006D80, 0x0D006C80, 0x0D007200, 0x0D007700, 0x0D007600
glabel D_8082ACD0
 .word 0x0C002000, 0x0C002980, 0x0C003300
glabel D_8082ACDC
 .word 0x0D007B80
glabel D_8082ACE0
 .word 0x0D007E80, 0x0D008080, 0x0D008380, 0x0D007F80, 0x0D008280
glabel D_8082ACF4
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00FF00FF, 0x00000000, 0x00000000, 0x00000000, 0x000000FF, 0x00FF0000, 0x000000FF, 0x00320000, 0x00000000, 0x00000000, 0x00000000, 0x00FF0032
glabel D_8082AD3C
 .word 0x00140000
glabel D_8082AD40
 .word 0x00000000
glabel D_8082AD44
 .word 0x00000000
glabel D_8082AD48
 .word 0x00000000
glabel D_8082AD4C
 .word 0x00000000
glabel D_8082AD50
 .word 0x00000000
glabel D_8082AD54
 .word 0x0D003C00, 0x0D003C00, 0x0D003C00
glabel D_8082AD60
 .word 0x0D003F80, 0x0D004180, 0x0D004100
glabel D_8082AD6C
 .word 0x0D004380, 0x0D004700, 0x0D004580
glabel D_8082AD78
 .word 0x0D006080, 0x0D006580, 0x0D006480, 0x0D004880, 0x0D004D80, 0x0D004C80, 0x0D005080, 0x0D005580, 0x0D005480, 0x0D005880, 0x0D005D80, 0x0D005C80
glabel D_8082ADA8
 .word 0x0D005080, 0x0D005580, 0x0D005480, 0x0D005880, 0x0D005D80, 0x0D005C80, 0x0D006080, 0x0D006580, 0x0D006480, 0x0D004880, 0x0D004D80, 0x0D004C80
glabel D_8082ADD8
 .word 0x00380058, 0x00500000
glabel D_8082ADE0
 .word 0x00400058, 0x00480000
glabel D_8082ADE8
 .word 0x00500068, 0x00700000
glabel D_8082ADF0
 .word 0x00B400D2, 0x00FF00DC, 0x00640064, 0x009600DC
glabel D_8082AE00
 .word 0x00140000
glabel D_8082AE04
 .word 0x00000000, 0x000A0010, 0x00100011, 0x000C000D, 0x00120011, 0x00110013, 0x000D0015, 0x00140015, 0x000E000F, 0x000F000F, 0x000B000E
glabel D_8082AE30
 .word 0x00150014, 0x00130012, 0x000B000E, 0x000A000F, 0x0010000D, 0x000C0011
glabel D_8082AE48
 .word 0x0A46460A, 0x0A5A5A0A, 0x508C8C50, 0x50787850, 0x508C8C50, 0x326E6E32
glabel D_8082AE60
 .word 0x32646432, 0x32646432, 0x283C3C28, 0x50787850, 0x283C3C28, 0x326E6E32
glabel D_8082AE78
 .word 0x50828250, 0x283C3C28, 0x1E3C3C1E, 0x32464632, 0x1E3C3C1E, 0x326E6E32
glabel D_8082AE90
 .word 0x00000000
glabel D_8082AE94
 .word 0x00000000
glabel D_8082AE98
 .word 0xFFDC000C, 0xFFEE0046, 0x00460046, 0xFFA8FFA8, 0xFFA8FFA8, 0xFFA8FFA8, 0xFFA8FFA8, 0xFF96FFC2, 0xFFD80000
glabel D_8082AEBC
 .word 0x00000000
glabel D_8082AEC0
 .word 0x002FFFCF, 0xFFEFFFF1, 0xFFF70018, 0x002B000E, 0x00090026, 0x00520047, 0xFFB4FFA9, 0xFF94FFCA, 0xFFA3FFBD, 0xFFC8FFDF, 0xFFF60001, 0x000E0018, 0x0023003A, 0x004A0059, 0x0000FFC6, 0x0013001C
glabel D_8082AF00
 .word 0xFFB4FFC6, 0x000AFFC6, 0x000A0000
glabel D_8082AF0C
 .word 0x00000000
glabel D_8082AF10
 .word 0x00000000
glabel D_8082AF14
 .word 0x00300030, 0x00600018, 0x00180018, 0x00180018, 0x00180018, 0x00180018, 0x00180018, 0x00100010, 0x00180000
glabel D_8082AF38
 .word 0x00000000
glabel D_8082AF3C
 .word 0x00980030, 0x00300030, 0x00300000
glabel D_8082AF48
 .word 0x00000000
glabel D_8082AF4C
 .word 0x00000000
glabel D_8082AF50
 .word 0x001C001C, 0x002E001C, 0xFFFEFFE0, 0x00320024, 0x00160008, 0xFFFAFFEC, 0xFFDEFFD0, 0x00120012, 0x00320000
glabel D_8082AF74
 .word 0x00000000
glabel D_8082AF78
 .word 0x000F0028, 0x000B002D, 0x00340025, 0x00240039, 0x00360021, 0x001F002D, 0x0020002A, 0x0031FFF6, 0x001F001B, 0x000FFFCF, 0x00080026, 0x0007002F, 0x001E0001, 0xFFF70019, 0x00000001, 0xFFE0FFE6
glabel D_8082AFB8
 .word 0x0024000A, 0x000AFFFA, 0xFFFA0000
glabel D_8082AFC4
 .word 0x00000000
glabel D_8082AFC8
 .word 0x00000000
glabel D_8082AFCC
 .word 0x00550055, 0x00100018, 0x00180018, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00180000
glabel D_8082AFF0
 .word 0x00000000
glabel D_8082AFF4
 .word 0x00100030, 0x00300010, 0x00100000
glabel D_8082B000
 .word D_8082AE90
.word D_8082AE94
.word D_8082AE98
.word D_8082AEBC
.word D_8082AEC0
.word D_8082AF00
glabel D_8082B018
 .word D_8082AF0C
.word D_8082AF10
.word D_8082AF14
.word D_8082AF38
.word D_8082AAEC
.word D_8082AF3C
glabel D_8082B030
 .word D_8082AF48
.word D_8082AF4C
.word D_8082AF50
.word D_8082AF74
.word D_8082AF78
.word D_8082AFB8
glabel D_8082B048
 .word D_8082AFC4
.word D_8082AFC8
.word D_8082AFCC
.word D_8082AFF0
glabel D_8082B058
 .word D_8082AB2C
.word D_8082AFF4
glabel D_8082B060
 .word 0xFFC6000B, 0x001E001E, 0x000F0026, 0xFFC2003C, 0x003DFFB2, 0xFED4FFAA, 0xFFBFFED4, 0xFED4FFEB, 0x000E000D, 0x0014FFDE, 0xFED40000
glabel D_8082B08C
 .word 0x00590014, 0x000E0023, 0x00200011, 0x00320010, 0x00150014, 0xFFFF0020, 0x0010FFFF, 0xFFFF0013, 0x00130015, 0x00100014, 0xFFFF0000
glabel D_8082B0B8
 .word 0x0001000F, 0x00140009, 0xFFE2FFEF, 0xFFDE000F, 0x001E0001, 0xFED4002A, 0x0007FED4, 0xFED40018, 0x00240035, 0x0025FFF3, 0xFED40000
glabel D_8082B0E4
 .word 0x0024000F, 0x00100017, 0x00170010, 0x0018000D, 0x00110012, 0x00010019, 0x000D0001, 0x0001000D, 0x0015000F, 0x000D000C, 0x00010000
glabel D_8082B110
 .word 0x00000000
glabel D_8082B114
 .word 0x00010000
glabel D_8082B118
 .word 0x00000000
glabel D_8082B11C
 .word 0x00000004, 0x0008000C, 0x00180020, 0x00380000
glabel D_8082B12C
 .word 0xFF8E000C, 0x002C004C
glabel D_8082B134
 .word 0x0105090D
glabel D_8082B138
 .word 0x004A004A, 0x002E0012, 0x0012002E, 0xFF94FFA6, 0xFFB8FFCA, 0xFFDCFFEE, 0xFF94FFA6, 0xFFB8FFCA, 0xFFDCFFEE, 0x0014002E, 0x0048FF92, 0xFFAAFF92, 0xFFCAFF9E, 0xFFAAFFB6, 0xFFC2FFCE, 0xFFDAFFE6, 0xFFF2FF9E, 0xFFAAFFB6, 0xFFC2FFCE, 0xFFDAFFE6, 0xFFF2FFA8, 0xFFAFFFB8, 0xFFA6FFAD, 0xFFB60000
glabel D_8082B198
 .word 0x00260006, 0xFFF40006, 0x00260038, 0xFFECFFEC, 0xFFECFFEC, 0xFFECFFEC, 0x00020002, 0x00020002, 0x00020002, 0xFFD2FFD2, 0xFFD2003A, 0x003A0022, 0x003AFFCC, 0xFFCCFFCC, 0xFFCCFFCC, 0xFFCCFFCC, 0xFFCCFFCC, 0xFFCCFFCC, 0xFFCCFFCC, 0xFFCCFFCC, 0xFFCC0022, 0x00220022, 0x00240024, 0x00240000
glabel D_8082B1F8
 .word 0x00180018, 0x00180018, 0x00180018, 0x00180018, 0x00180018, 0x00180018, 0x00180018, 0x00180018, 0x00180018, 0x00180018, 0x00180018, 0x00180018, 0x00300010, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00100000
glabel D_8082B258
 .word 0x00000000
glabel D_8082B25C
 .word 0x000A0000
glabel D_8082B260
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000
