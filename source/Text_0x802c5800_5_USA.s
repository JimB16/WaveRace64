

.include "source/constants.s"

.section .textoverlay5, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    lui     $t6, 0x801d
    lw      $t6, -0x1c64($t6)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c5838
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x34
    bne     $t7, $at, branch_0x802c5838
    nop
    jal     Function_0x8009486c
    nop
    jal     Function_0x802c5a98
    nop
branch_0x802c5838:
    jal     Function_0x802c5850
    nop
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5850
Function_0x802c5850: # 0x802c5850
    addiu   $sp, $sp, 0xfe40
    sw      $s2, 0x40($sp)
    lui     $t6, 0x802c
    lui     $at, 0x4180
    lh      $t6, 0x7a00($t6)
    mtc1    $at, $a0
    lui     $s2, 0x801d
    mtc1    $zero, $zero
    addiu   $s2, $s2, 0xe358
    sw      $fp, 0x58($sp)
    lui     $at, 0x4580
    mtc1    $at, $a2
    lw      $a0, 0x0($s2)
    lui     $fp, 0x802c
    addiu   $t7, $zero, 0x28
    addiu   $fp, $fp, 0x7b04
    sw      $ra, 0x5c($sp)
    lui     $a1, 0x802c
    subu    $t8, $t7, $t6
    sw      $s7, 0x54($sp)
    sw      $s6, 0x50($sp)
    sw      $s5, 0x4c($sp)
    sw      $s4, 0x48($sp)
    sw      $s3, 0x44($sp)
    sw      $s1, 0x3c($sp)
    sw      $s0, 0x38($sp)
    sh      $t8, 0x0($fp)
    addiu   $a1, $a1, 0x7b06
    lui     $a2, 0x4204
    lui     $a3, 0x3f80
    swc1    $f4, 0x10($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    addiu   $a0, $a0, 0xa40
    jal     Function_0x80048180
    swc1    $f6, 0x14($sp)
    mtc1    $zero, $zero
    lui     $at, 0x3f80
    mtc1    $at, $v0
    lui     $at, 0x802c
    lwc1    $f8, 0x7a5c($at)
    addiu   $s0, $sp, 0xb0
    mfc1    $a1, $zero
    mfc1    $a2, $zero
    mfc1    $a3, $v0
    or      $a0, $s0, $zero
    swc1    $f0, 0x10($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    swc1    $f0, 0x20($sp)
    swc1    $f0, 0x24($sp)
    swc1    $f2, 0x14($sp)
    jal     Function_0x80048a28
    swc1    $f8, 0x28($sp)
    lui     $v0, 0x8015
    addiu   $v0, $v0, 0x40b0
    lui     $at, 0x43fa
    mtc1    $at, $t6
    lwc1    $f10, 0x1000($v0)
    lwc1    $f16, 0x0($v0)
    mtc1    $zero, $zero
    mul.s   $f2, $f10, $f14
    lui     $at, 0x3f80
    mtc1    $at, $s2
    mul.s   $f12, $f16, $f14
    addiu   $s1, $sp, 0x134
    or      $a1, $s1, $zero
    addiu   $a0, $sp, 0x70
    mfc1    $a2, $v0
    addiu   $a3, $zero, 0x0
    swc1    $f0, 0x14($sp)
    swc1    $f12, 0x10($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    swc1    $f0, 0x20($sp)
    swc1    $f0, 0x28($sp)
    jal     Function_0x80048468
    swc1    $f18, 0x24($sp)
    addiu   $s3, $sp, 0x174
    or      $a1, $s3, $zero
    jal     Function_0x80047e18
    or      $a0, $s0, $zero
    addiu   $s7, $sp, 0xf4
    or      $a2, $s7, $zero
    or      $a0, $s1, $zero
    jal     Function_0x80049e58
    or      $a1, $s3, $zero
    lui     $s5, 0x802c
    addiu   $s5, $s5, 0x7a08
    or      $s1, $zero, $zero
    or      $s3, $zero, $zero
    or      $s0, $zero, $zero
    addiu   $s4, $zero, 0x58
    addiu   $s6, $zero, 0x4
branch_0x802c59c8:
    lw      $t9, 0x0($s2)
    or      $a0, $s7, $zero
    addu    $a1, $t9, $s3
    jal     Function_0x80047e80
    addiu   $a1, $a1, 0xa80
    lw      $t0, 0x0($s2)
    lw      $at, 0x0($s5)
    andi    $t4, $s1, 0x1
    addu    $t1, $t0, $s0
    sw      $at, 0x1280($t1)
    lw      $t3, 0x4($s5)
    addiu   $s1, $s1, 0x1
    addiu   $s3, $s3, 0x40
    sw      $t3, 0x1284($t1)
    lw      $at, 0x8($s5)
    lui     $t0, 0x802c
    sw      $at, 0x1288($t1)
    lw      $t3, 0xc($s5)
    beqz    $t4, branch_0x802c5a34
    sw      $t3, 0x128c($t1)
    lh      $t5, 0x0($fp)
    lw      $t8, 0x0($s2)
    addiu   $t7, $t5, 0x42
    sll     $t6, $t7, 2
    addu    $t9, $t8, $s0
    b       branch_0x802c5a4c
    sh      $t6, 0x1288($t9)
branch_0x802c5a34:
    lh      $t0, 0x7a00($t0)
    lw      $t3, 0x0($s2)
    addiu   $t2, $t0, 0x42
    sll     $t1, $t2, 2
    addu    $t4, $t3, $s0
    sh      $t1, 0x1288($t4)
branch_0x802c5a4c:
    lw      $t7, 0x0($s2)
    sll     $t5, $s4, 2
    addiu   $s4, $s4, 0x20
    addu    $t8, $t7, $s0
    addiu   $s0, $s0, 0x10
    bne     $s1, $s6, branch_0x802c59c8
    sh      $t5, 0x128a($t8)
    lw      $ra, 0x5c($sp)
    lw      $s0, 0x38($sp)
    lw      $s1, 0x3c($sp)
    lw      $s2, 0x40($sp)
    lw      $s3, 0x44($sp)
    lw      $s4, 0x48($sp)
    lw      $s5, 0x4c($sp)
    lw      $s6, 0x50($sp)
    lw      $s7, 0x54($sp)
    lw      $fp, 0x58($sp)
    jr      $ra
    addiu   $sp, $sp, 0x1c0

.globl Function_0x802c5a98
Function_0x802c5a98: # 0x802c5a98
    lui     $v0, 0x801d
    lui     $a0, 0x801d
    lw      $v0, -0x4f68($v0)
    lw      $a0, -0x4f6c($a0)
    lui     $a2, %hi(Unknown_0x800d465c)
    lw      $a2, %lo(Unknown_0x800d465c)($a2)
    sll     $t7, $v0, 4
    sll     $t8, $a0, 1
    addu    $t9, $t7, $t8
    lui     $v1, 0x800f
    lui     $t1, 0x801d
    sll     $t0, $a2, 2
    addu    $v1, $v1, $t9
    addu    $t1, $t1, $t0
    lh      $v1, -0x56e4($v1)
    lw      $t1, -0x4f60($t1)
    lui     $a1, 0x802c
    sll     $t6, $v0, 2
    addiu   $sp, $sp, 0xffe8
    addu    $a1, $a1, $t6
    slt     $at, $t1, $v1
    sw      $ra, 0x14($sp)
    bnez    $at, branch_0x802c5bd4
    lw      $a1, 0x7a2c($a1)
    slt     $at, $a0, $a1
    bnez    $at, branch_0x802c5bb8
    addiu   $t4, $zero, 0x1e
    bnezl   $v0, branch_0x802c5b28
    addiu   $at, $zero, 0x1
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xafe0
    lb      $t2, 0x0($v0)
    ori     $t3, $t2, 0x1
    b       branch_0x802c5b98
    sb      $t3, 0x0($v0)

Function_0x802c5b24: # 0x802c5b24
    addiu   $at, $zero, 0x1
branch_0x802c5b28:
    bnel    $v0, $at, branch_0x802c5b4c
    addiu   $at, $zero, 0x2
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xafe0
    lb      $t4, 0x0($v0)
    ori     $t5, $t4, 0x2
    b       branch_0x802c5b98
    sb      $t5, 0x0($v0)

Function_0x802c5b48: # 0x802c5b48
    addiu   $at, $zero, 0x2
branch_0x802c5b4c:
    bne     $v0, $at, branch_0x802c5b98
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xafe0
    sll     $t8, $a2, 3
    lb      $t6, 0x0($v0)
    subu    $t8, $t8, $a2
    sll     $t8, $t8, 4
    subu    $t8, $t8, $a2
    sll     $t8, $t8, 3
    lui     $t9, 0x801c
    ori     $t7, $t6, 0x4
    sb      $t7, 0x0($v0)
    addu    $t9, $t9, $t8
    lw      $t9, 0x29d0($t9)
    bnez    $t9, branch_0x802c5b98
    nop
    lb      $t0, 0x0($v0)
    ori     $t1, $t0, 0x8
    sb      $t1, 0x0($v0)
branch_0x802c5b98:
    lui     $v0, 0x802c
    addiu   $t2, $zero, 0x66
    lui     $at, 0x802c
    addiu   $v0, $v0, 0x7b00
    sw      $t2, 0x7b08($at)
    addiu   $t3, $zero, 0x2
    b       branch_0x802c5bec
    sw      $t3, 0x0($v0)
branch_0x802c5bb8:
    lui     $v0, 0x802c
    lui     $at, 0x802c
    addiu   $v0, $v0, 0x7b00
    sw      $t4, 0x7b08($at)
    addiu   $t5, $zero, 0x1
    b       branch_0x802c5bec
    sw      $t5, 0x0($v0)
branch_0x802c5bd4:
    lui     $v0, 0x802c
    addiu   $t6, $zero, 0x5a
    lui     $at, 0x802c
    addiu   $v0, $v0, 0x7b00
    sw      $t6, 0x7b08($at)
    sw      $zero, 0x0($v0)
branch_0x802c5bec:
    lw      $t7, 0x0($v0)
    addiu   $a1, $zero, 0x1
    beqz    $t7, branch_0x802c5c04
    nop
    b       branch_0x802c5c04
    or      $a1, $zero, $zero
branch_0x802c5c04:
    jal     Function_0x800c1f94
    addiu   $a0, $zero, 0x3
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

Function_0x802c5c1c: # 0x802c5c1c
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c5c68
    sw      $a0, 0x18($sp)
    sw      $zero, 0x0($v0)
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x34
    bne     $t7, $at, branch_0x802c5c68
    nop
    jal     osViBlack
    or      $a0, $zero, $zero
    jal     Function_0x800939e4
    lw      $a0, 0x18($sp)
    b       branch_0x802c5db4
    lw      $ra, 0x14($sp)
branch_0x802c5c68:
    jal     Function_0x80093d18
    lw      $a0, 0x18($sp)
    lui     $at, 0x800e
    lui     $a1, %hi(TrackNr_0x800d7ef0)
    sw      $zero, -0x5754($at)
    lw      $a1, %lo(TrackNr_0x800d7ef0)($a1)
    jal     Function_0x80094758
    or      $a0, $v0, $zero
    jal     Function_0x8008f914
    or      $a0, $v0, $zero
    jal     Function_0x80090cf8_DrawWaterBG
    or      $a0, $v0, $zero
    jal     Function_0x802c5dc0
    or      $a0, $v0, $zero
    lui     $t8, 0x800e
    lw      $t8, -0x575c($t8)
    addiu   $at, $zero, 0x34
    sw      $v0, 0x18($sp)
    bne     $t8, $at, branch_0x802c5cc8
    lui     $t9, 0x8023
    jal     Function_0x802c6cc4
    nop
    b       branch_0x802c5d90
    nop
branch_0x802c5cc8:
    lh      $t9, -0x782a($t9)
    addiu   $at, $zero, 0x1
    lui     $v0, 0x801d
    bne     $t9, $at, branch_0x802c5d90
    nop
    lw      $v0, -0x1c70($v0)
    addiu   $at, $zero, 0x66
    bnel    $v0, $at, branch_0x802c5d00
    addiu   $at, $zero, 0x1e
    jal     Function_0x801ec928_ChangeStateTo66
    nop
    b       branch_0x802c5d90
    nop

.globl Function_0x802c5cfc
Function_0x802c5cfc: # 0x802c5cfc
    addiu   $at, $zero, 0x1e
branch_0x802c5d00:
    bne     $v0, $at, branch_0x802c5d88
    lui     $a0, 0x801d
    addiu   $a0, $a0, 0xb094
    lw      $t0, 0x0($a0)
    lui     $t2, 0x800e
    lui     $a1, 0x801d
    addiu   $t1, $t0, 0x1
    sw      $t1, 0x0($a0)
    lh      $t2, -0x5718($t2)
    lui     $t4, 0x801d
    beqz    $t2, branch_0x802c5d50
    nop
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xafe8
    lw      $t3, 0xc($a1)
    slt     $at, $t3, $t1
    beqz    $at, branch_0x802c5d78
    nop
    b       branch_0x802c5d78
    sw      $t1, 0xc($a1)
branch_0x802c5d50:
    lw      $t4, -0x4f68($t4)
    addiu   $a1, $a1, 0xafe8
    lw      $v0, 0x0($a0)
    sll     $t5, $t4, 2
    addu    $v1, $a1, $t5
    lw      $t6, 0x0($v1)
    slt     $at, $t6, $v0
    beqz    $at, branch_0x802c5d78
    nop
    sw      $v0, 0x0($v1)
branch_0x802c5d78:
    jal     Function_0x801eb6ac_ChangeStateTo1e
    nop
    b       branch_0x802c5d90
    nop
branch_0x802c5d88:
    jal     Function_0x801eaf10_ChangeStateTo2
    nop
branch_0x802c5d90:
    lui     $t7, 0x801d
    lw      $t7, -0x1c68($t7)
    addiu   $at, $zero, 0x9
    beql    $t7, $at, branch_0x802c5db0
    lw      $v0, 0x18($sp)
    jal     Function_0x8007c434
    nop
    lw      $v0, 0x18($sp)
branch_0x802c5db0:
    lw      $ra, 0x14($sp)
branch_0x802c5db4:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5dc0
Function_0x802c5dc0: # 0x802c5dc0
    addiu   $sp, $sp, 0xfee0
    lui     $t6, 0x801d
    lw      $t6, -0x1c60($t6)
    sw      $s6, 0x68($sp)
    or      $s6, $a0, $zero
    addiu   $t7, $t6, 0xfffc
    sltiu   $at, $t7, 0x5
    sw      $ra, 0x74($sp)
    sw      $fp, 0x70($sp)
    sw      $s7, 0x6c($sp)
    sw      $s5, 0x64($sp)
    sw      $s4, 0x60($sp)
    sw      $s3, 0x5c($sp)
    sw      $s2, 0x58($sp)
    sw      $s1, 0x54($sp)
    beqz    $at, branch_0x802c5e30
    sw      $s0, 0x50($sp)
    sll     $t7, $t7, 2
    lui     $at, 0x802c
    addu    $at, $at, $t7
    lw      $t7, 0x7a60($at)
    jr      $t7
    nop

.globl Function_0x802c5e1c
Function_0x802c5e1c: # 0x802c5e1c
    addiu   $t8, $zero, 0x1
    sw      $t8, 0x114($sp)
    addiu   $v1, $zero, 0xd
    b       branch_0x802c5e3c
    addiu   $t0, $zero, 0xf4
branch_0x802c5e30:
    sw      $zero, 0x114($sp)
    addiu   $v1, $zero, 0x24
    addiu   $t0, $zero, 0xbf
branch_0x802c5e3c:
    lw      $t9, 0x114($sp)
    or      $v0, $s6, $zero
    addiu   $a0, $s6, 0x8
    bnez    $t9, branch_0x802c5e58
    lui     $t1, 0x600
    b       branch_0x802c5e5c
    or      $s1, $zero, $zero
branch_0x802c5e58:
    addiu   $s1, $zero, 0x2
branch_0x802c5e5c:
    lui     $t2, 0x107
    addiu   $t2, $t2, 0xf628
    sw      $t2, 0x4($v0)
    sw      $t1, 0x0($v0)
    lui     $t3, 0x802c
    lh      $t3, 0x7a00($t3)
    addiu   $t4, $zero, 0x18
    sw      $t4, 0x14($sp)
    addu    $a2, $t3, $v1
    addiu   $a2, $a2, 0x8
    sw      $t0, 0x10($sp)
    or      $a1, $s1, $zero
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x19
    lui     $a2, 0x802c
    lh      $a2, 0x7b04($a2)
    addiu   $t5, $zero, 0x109
    addiu   $t6, $zero, 0x10
    sw      $t6, 0x14($sp)
    sw      $t5, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $s1, $zero
    addiu   $a3, $zero, 0x34
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x8
    lui     $a2, 0x802c
    lh      $a2, 0x7a00($a2)
    addiu   $t7, $zero, 0x109
    addiu   $t8, $zero, 0x10
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $s1, $zero
    addiu   $a3, $zero, 0xc7
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x8
    or      $s6, $v0, $zero
    sw      $zero, 0x11c($sp)
    addiu   $s0, $zero, 0x47
branch_0x802c5ef8:
    lw      $t9, 0x11c($sp)
    or      $a0, $s6, $zero
    or      $a1, $s1, $zero
    andi    $t1, $t9, 0x1
    beqz    $t1, branch_0x802c5f1c
    or      $a3, $s0, $zero
    lui     $s7, 0x802c
    b       branch_0x802c5f24
    lh      $s7, 0x7b04($s7)
branch_0x802c5f1c:
    lui     $s7, 0x802c
    lh      $s7, 0x7a00($s7)
branch_0x802c5f24:
    addiu   $t2, $zero, 0x109
    addiu   $t3, $zero, 0x1c
    sw      $t3, 0x14($sp)
    sw      $t2, 0x10($sp)
    jal     Function_0x800940d8
    addiu   $a2, $s7, 0x8
    lw      $v1, 0x11c($sp)
    addiu   $s0, $s0, 0x20
    or      $s6, $v0, $zero
    addiu   $v1, $v1, 0x1
    slti    $at, $v1, 0x4
    bnez    $at, branch_0x802c5ef8
    sw      $v1, 0x11c($sp)
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    sw      $zero, 0xe8($sp)
    sw      $t3, 0x30($sp)
    sw      $t2, 0x2c($sp)
    sw      $t1, 0x28($sp)
    sw      $t9, 0x24($sp)
    sw      $t8, 0x20($sp)
    sw      $t7, 0x1c($sp)
    sw      $t6, 0x18($sp)
    sw      $t5, 0x14($sp)
    sw      $t4, 0x10($sp)
    sw      $t4, 0x34($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lw      $t5, 0x114($sp)
    or      $s6, $v0, $zero
    or      $a0, $s6, $zero
    bnez    $t5, branch_0x802c6028
    addiu   $a1, $zero, 0x2
    lui     $a3, 0x802c
    lh      $a3, 0x7a00($a3)
    addiu   $t6, $zero, 0x1c
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x14
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x35
    lui     $a3, 0x802c
    lh      $a3, 0x7a00($a3)
    addiu   $t7, $zero, 0xca
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x4f
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x18
    b       branch_0x802c6074
    or      $s6, $v0, $zero
branch_0x802c6028:
    lui     $a3, 0x802c
    lh      $a3, 0x7a00($a3)
    addiu   $t8, $zero, 0x1c
    sw      $t8, 0x10($sp)
    addiu   $a2, $zero, 0x15
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x29
    lui     $a3, 0x802c
    lh      $a3, 0x7a00($a3)
    addiu   $t9, $zero, 0xca
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x6
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x18
    or      $s6, $v0, $zero
branch_0x802c6074:
    lui     $a3, 0x802c
    lh      $a3, 0x7b04($a3)
    addiu   $t1, $zero, 0x37
    sw      $t1, 0x10($sp)
    or      $a0, $s6, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1f
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0xd
    lui     $a3, 0x802c
    lh      $a3, 0x7b04($a3)
    addiu   $t2, $zero, 0x37
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x20
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x6d
    lui     $a3, 0x802c
    lh      $a3, 0x7b04($a3)
    addiu   $t3, $zero, 0x37
    sw      $t3, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x3a
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0xd7
    addiu   $t4, $zero, 0xff
    sw      $t4, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    or      $a2, $zero, $zero
    jal     Function_0x801e7bd4
    or      $a3, $zero, $zero
    or      $s6, $v0, $zero
    sw      $zero, 0x11c($sp)
    addiu   $s0, $zero, 0x4a
    addiu   $s1, $zero, 0x5f
branch_0x802c6118:
    lw      $t5, 0x11c($sp)
    lui     $s7, 0x802c
    or      $a0, $s6, $zero
    andi    $t6, $t5, 0x1
    beqz    $t6, branch_0x802c613c
    or      $a2, $s0, $zero
    lui     $s7, 0x802c
    b       branch_0x802c6140
    lh      $s7, 0x7b04($s7)
branch_0x802c613c:
    lh      $s7, 0x7a00($s7)
branch_0x802c6140:
    addiu   $a1, $s7, 0x2a
    addiu   $a3, $s7, 0x56
    jal     Function_0x801e7d38
    sw      $s1, 0x10($sp)
    lw      $v1, 0x11c($sp)
    addiu   $s0, $s0, 0x20
    addiu   $s1, $s1, 0x20
    addiu   $v1, $v1, 0x1
    slti    $at, $v1, 0x4
    sw      $v1, 0x11c($sp)
    bnez    $at, branch_0x802c6118
    or      $s6, $v0, $zero
    addiu   $s6, $v0, 0x8
    lui     $t7, 0xe700
    sw      $t7, 0x0($v0)
    sw      $zero, 0x4($v0)
    or      $a0, $s6, $zero
    lui     $t8, 0xed02
    lui     $t9, 0x4d
    ori     $t9, $t9, 0x8368
    ori     $t8, $t8, 0x50
    sw      $t8, 0x0($a0)
    sw      $t9, 0x4($a0)
    addiu   $t1, $zero, 0x1
    addiu   $t2, $zero, 0x1
    addiu   $t3, $zero, 0x1
    addiu   $t4, $zero, 0x4b
    addiu   $s6, $s6, 0x8
    sw      $t3, 0xfc($sp)
    sw      $t2, 0x104($sp)
    sw      $t1, 0x100($sp)
    sw      $t4, 0x84($sp)
    sw      $zero, 0x90($sp)
    sw      $zero, 0x11c($sp)
    addiu   $fp, $zero, 0x58
    addiu   $s5, $sp, 0xb8
branch_0x802c61d0:
    lw      $t5, 0x11c($sp)
    lui     $s7, 0x802c
    lw      $t7, 0x114($sp)
    andi    $t6, $t5, 0x1
    beqz    $t6, branch_0x802c61f4
    lw      $t5, 0x90($sp)
    lui     $s7, 0x802c
    b       branch_0x802c61f8
    lh      $s7, 0x7b04($s7)
branch_0x802c61f4:
    lh      $s7, 0x7a00($s7)
branch_0x802c61f8:
    bnez    $t7, branch_0x802c636c
    lw      $t6, 0x11c($sp)
    lw      $t1, 0x11c($sp)
    lw      $t8, 0x90($sp)
    lui     $t9, 0x801d
    addiu   $t9, $t9, 0xe478
    beqz    $t1, branch_0x802c6278
    addu    $s0, $t8, $t9
    lw      $t2, 0x104($sp)
    lui     $t4, 0x801d
    lw      $t4, -0x4f6c($t4)
    addiu   $t3, $t2, 0x1
    lw      $t2, -0x4($s0)
    lw      $t7, 0x0($s0)
    lui     $t6, 0x801d
    addiu   $t6, $t6, 0xb0b0
    sll     $t5, $t4, 4
    addu    $v0, $t5, $t6
    sll     $t4, $t2, 2
    sll     $t8, $t7, 2
    addu    $t9, $v0, $t8
    addu    $t5, $v0, $t4
    lw      $t6, 0x0($t5)
    lw      $t1, 0x0($t9)
    sw      $t3, 0x104($sp)
    lw      $t7, 0x100($sp)
    beql    $t1, $t6, branch_0x802c6278
    sw      $t7, 0xfc($sp)
    sw      $t3, 0x100($sp)
    b       branch_0x802c6278
    sw      $t3, 0xfc($sp)

.globl Function_0x802c6274
Function_0x802c6274: # 0x802c6274
    sw      $t7, 0xfc($sp)
branch_0x802c6278:
    lw      $t8, 0x0($s0)
    lui     $t2, 0x801c
    lui     $a1, 0x802c
    sll     $t9, $t8, 3
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 4
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 3
    addu    $t2, $t2, $t9
    lw      $t2, 0x2984($t2)
    addiu   $t4, $zero, 0x6
    addiu   $a1, $a1, 0x7a48
    beqz    $t2, branch_0x802c62d4
    addiu   $a0, $sp, 0xc4
    lui     $a1, 0x802c
    lui     $a2, 0x802c
    sw      $t4, 0xe8($sp)
    addiu   $a2, $a2, 0x7a44
    addiu   $a1, $a1, 0x7a40
    jal     Function_0x800c9f70
    addiu   $a0, $sp, 0xc4
    b       branch_0x802c62e0
    lw      $v0, 0x0($s0)
branch_0x802c62d4:
    jal     Function_0x800c9f70
    lw      $a2, 0x104($sp)
    lw      $v0, 0x0($s0)
branch_0x802c62e0:
    lui     $t5, 0x800e
    lui     $t7, 0x801d
    sll     $v1, $v0, 2
    addu    $t5, $t5, $v1
    lw      $t5, -0x58d0($t5)
    lw      $t7, -0x4f6c($t7)
    lui     $t2, %hi(Unknown_0x800d465c)
    sll     $t1, $t5, 3
    lw      $t2, %lo(Unknown_0x800d465c)($t2)
    lui     $t6, 0x801d
    subu    $t1, $t1, $t5
    sll     $t8, $t7, 4
    sll     $t1, $t1, 1
    addiu   $t6, $t6, 0xaff8
    addu    $t9, $t8, $v1
    lui     $a2, 0x801d
    addu    $t3, $t1, $t6
    addu    $a2, $a2, $t9
    sw      $t3, 0xd0($sp)
    beq     $t2, $v0, branch_0x802c6344
    lw      $a2, -0x4f50($a2)
    or      $s2, $zero, $zero
    or      $s3, $zero, $zero
    b       branch_0x802c6498
    or      $s4, $zero, $zero
branch_0x802c6344:
    lui     $t4, 0x801c
    lw      $t4, 0x23b0($t4)
    addiu   $at, $zero, 0x1
    addiu   $s2, $zero, 0x6
    beq     $t4, $at, branch_0x802c6364
    addiu   $s4, $zero, 0x6
    b       branch_0x802c6498
    addiu   $s3, $zero, 0x6
branch_0x802c6364:
    b       branch_0x802c6498
    addiu   $s3, $zero, 0x4
branch_0x802c636c:
    lui     $t1, 0x800e
    addiu   $t1, $t1, 0xa75c
    beqz    $t6, branch_0x802c63cc
    addu    $s3, $t5, $t1
    lw      $t8, 0x0($s3)
    lw      $t5, -0x4($s3)
    lw      $t3, 0x104($sp)
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xb0a0
    sll     $t9, $t8, 2
    sll     $t1, $t5, 2
    addu    $t6, $v0, $t1
    addu    $t2, $v0, $t9
    addiu   $t7, $t3, 0x1
    lw      $t3, 0x0($t6)
    lw      $t4, 0x0($t2)
    sw      $t7, 0x104($sp)
    lw      $t8, 0x100($sp)
    beql    $t4, $t3, branch_0x802c63cc
    sw      $t8, 0xfc($sp)
    sw      $t7, 0x100($sp)
    b       branch_0x802c63cc
    sw      $t7, 0xfc($sp)

.globl Function_0x802c63c8
Function_0x802c63c8: # 0x802c63c8
    sw      $t8, 0xfc($sp)
branch_0x802c63cc:
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x7a4c
    addiu   $a0, $sp, 0xc4
    jal     Function_0x800c9f70
    lw      $a2, 0xfc($sp)
    lw      $a0, 0x0($s3)
    lui     $t9, 0x800e
    lui     $a1, %hi(Unknown_0x800d465c)
    sll     $v1, $a0, 2
    addu    $t9, $t9, $v1
    lw      $t9, -0x58d0($t9)
    lw      $a1, %lo(Unknown_0x800d465c)($a1)
    lui     $t5, 0x801d
    sll     $t2, $t9, 3
    subu    $t2, $t2, $t9
    sll     $t2, $t2, 1
    addiu   $t5, $t5, 0xaff8
    lui     $a2, 0x801d
    addu    $t1, $t2, $t5
    addu    $a2, $a2, $v1
    sw      $t1, 0xd0($sp)
    beq     $a1, $a0, branch_0x802c6434
    lw      $a2, -0x4f60($a2)
    or      $s2, $zero, $zero
    b       branch_0x802c6454
    or      $s3, $zero, $zero
branch_0x802c6434:
    lui     $t6, 0x801c
    lw      $t6, 0x23b0($t6)
    addiu   $at, $zero, 0x1
    addiu   $s2, $zero, 0x6
    beq     $t6, $at, branch_0x802c6454
    addiu   $s3, $zero, 0x7
    b       branch_0x802c6454
    addiu   $s3, $zero, 0x6
branch_0x802c6454:
    lui     $t4, 0x801d
    lw      $t4, -0x1c60($t4)
    slti    $at, $t4, 0x6
    beqz    $at, branch_0x802c6470
    nop
    b       branch_0x802c6498
    or      $s4, $zero, $zero
branch_0x802c6470:
    beq     $a1, $a0, branch_0x802c6480
    lui     $t3, 0x802c
    b       branch_0x802c6498
    or      $s4, $zero, $zero
branch_0x802c6480:
    lw      $t3, 0x7b00($t3)
    addiu   $s4, $zero, 0x4
    beqz    $t3, branch_0x802c6498
    nop
    b       branch_0x802c6498
    addiu   $s4, $zero, 0x6
branch_0x802c6498:
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x7a50
    or      $a0, $s5, $zero
    jal     Function_0x800c9f70
    sw      $a2, 0xf0($sp)
    addiu   $a0, $zero, 0xa
    lw      $a2, 0xf0($sp)
    lw      $t2, 0xe8($sp)
    or      $a1, $zero, $zero
    div     $zero, $a2, $a0
    mflo    $t7
    addu    $a3, $s7, $t2
    bnez    $a0, branch_0x802c64d4
    nop
    break   0x7
branch_0x802c64d4:
    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x802c64ec
    lui     $at, 0x8000
    bne     $a2, $at, branch_0x802c64ec
    nop
    break   0x6
branch_0x802c64ec:
    div     $zero, $t7, $a0
    mfhi    $v1
    addiu   $a2, $sp, 0xc4
    bnez    $a0, branch_0x802c6504
    nop
    break   0x7
branch_0x802c6504:
    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x802c651c
    lui     $at, 0x8000
    bne     $t7, $at, branch_0x802c651c
    nop
    break   0x6
branch_0x802c651c:
    or      $a0, $s6, $zero
    beqz    $v1, branch_0x802c6540
    addiu   $a3, $a3, 0xd
    lui     $t8, 0x8022
    addu    $t8, $t8, $v1
    lbu     $t8, 0x6b30($t8)
    addiu   $t9, $zero, 0xe4
    b       branch_0x802c6544
    subu    $s1, $t9, $t8
branch_0x802c6540:
    addiu   $s1, $zero, 0xe4
branch_0x802c6544:
    lw      $t5, 0x84($sp)
    addiu   $t1, $zero, 0xff
    addiu   $t6, $zero, 0xff
    sw      $t5, 0x10($sp)
    addiu   $t5, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t2, $zero, 0xff
    sw      $t2, 0x34($sp)
    sw      $t8, 0x30($sp)
    sw      $t9, 0x2c($sp)
    sw      $t7, 0x28($sp)
    sw      $t3, 0x24($sp)
    sw      $t4, 0x20($sp)
    sw      $t4, 0x44($sp)
    sw      $t5, 0x38($sp)
    sw      $t6, 0x1c($sp)
    sw      $t6, 0x40($sp)
    sw      $t1, 0x18($sp)
    sw      $t1, 0x3c($sp)
    jal     Function_0x801e9084_PrintString
    sw      $s2, 0x14($sp)
    lw      $t3, 0x84($sp)
    addiu   $s0, $s7, 0x5c
    addiu   $t7, $zero, 0xff
    sw      $t3, 0x10($sp)
    addiu   $t3, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t4, $zero, 0xff
    sw      $t4, 0x34($sp)
    sw      $t6, 0x30($sp)
    sw      $t1, 0x2c($sp)
    sw      $t5, 0x28($sp)
    sw      $t2, 0x24($sp)
    sw      $t8, 0x20($sp)
    sw      $t8, 0x44($sp)
    sw      $t9, 0x1c($sp)
    sw      $t9, 0x40($sp)
    sw      $t3, 0x38($sp)
    sw      $t7, 0x18($sp)
    sw      $t7, 0x3c($sp)
    or      $a3, $s0, $zero
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    lw      $a2, 0xd0($sp)
    jal     Function_0x801e9084_PrintString
    sw      $zero, 0x14($sp)
    lw      $t2, 0x84($sp)
    addu    $a3, $s7, $s1
    addiu   $t5, $zero, 0xff
    sw      $t2, 0x10($sp)
    addiu   $t2, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x34($sp)
    sw      $t9, 0x30($sp)
    sw      $t7, 0x2c($sp)
    sw      $t3, 0x28($sp)
    sw      $t4, 0x24($sp)
    sw      $t6, 0x20($sp)
    sw      $t6, 0x44($sp)
    sw      $t1, 0x1c($sp)
    sw      $t1, 0x40($sp)
    sw      $t2, 0x38($sp)
    sw      $t5, 0x18($sp)
    sw      $t5, 0x3c($sp)
    addiu   $a3, $a3, 0x8
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    or      $a2, $s5, $zero
    jal     Function_0x801e9084_PrintString
    sw      $s4, 0x14($sp)
    lw      $t4, 0x114($sp)
    or      $s6, $v0, $zero
    or      $a0, $s6, $zero
    bnez    $t4, branch_0x802c67e0
    or      $a1, $s4, $zero
    lw      $t3, 0x90($sp)
    lui     $t7, 0x801d
    lui     $t8, %hi(Unknown_0x801c2698_RaceStruct)
    addu    $t7, $t7, $t3
    lw      $t7, -0x1b88($t7)
    addiu   $t8, $t8, %lo(Unknown_0x801c2698_RaceStruct)
    or      $a0, $s6, $zero
    sll     $t9, $t7, 3
    subu    $t9, $t9, $t7
    sll     $t9, $t9, 4
    subu    $t9, $t9, $t7
    sll     $t9, $t9, 3
    addu    $v0, $t9, $t8
    lw      $t2, RaceStruct_2ec($v0)
    addiu   $a1, $zero, 0x1
    or      $a3, $s0, $zero
    beqz    $t2, branch_0x802c6778
    addiu   $t1, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t2, $zero, 0xff
    sw      $t2, 0x30($sp)
    sw      $t8, 0x2c($sp)
    sw      $t9, 0x28($sp)
    sw      $t7, 0x24($sp)
    sw      $t3, 0x20($sp)
    sw      $t4, 0x1c($sp)
    sw      $t6, 0x18($sp)
    sw      $t1, 0x14($sp)
    sw      $t5, 0x10($sp)
    sw      $t5, 0x34($sp)
    or      $a0, $s6, $zero
    or      $a1, $s2, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1b
    or      $a3, $s0, $zero
    sw      $fp, 0x10($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    b       branch_0x802c6988
    or      $s6, $v0, $zero
branch_0x802c6778:
    addiu   $t6, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t5, $zero, 0xff
    sw      $t5, 0x40($sp)
    sw      $t2, 0x3c($sp)
    sw      $t8, 0x38($sp)
    sw      $t9, 0x34($sp)
    sw      $t7, 0x30($sp)
    sw      $t3, 0x2c($sp)
    sw      $t4, 0x28($sp)
    sw      $t6, 0x24($sp)
    lw      $a2, RaceStruct_19c($v0)
    sw      $fp, 0x10($sp)
    sw      $s3, 0x14($sp)
    sw      $t1, 0x18($sp)
    sw      $zero, 0x1c($sp)
    sw      $zero, 0x20($sp)
    jal     Function_0x801e87e4_PrintTime
    sw      $t1, 0x44($sp)
    b       branch_0x802c6988
    or      $s6, $v0, $zero
branch_0x802c67e0:
    addiu   $t6, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    sw      $t1, 0x30($sp)
    sw      $t5, 0x2c($sp)
    sw      $t2, 0x28($sp)
    sw      $t8, 0x24($sp)
    sw      $t9, 0x20($sp)
    sw      $t7, 0x1c($sp)
    sw      $t3, 0x18($sp)
    sw      $t4, 0x14($sp)
    sw      $t6, 0x10($sp)
    sw      $t6, 0x34($sp)
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x18
    or      $a3, $s0, $zero
    sw      $fp, 0x10($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lui     $t4, 0x801d
    lw      $t4, -0x4f68($t4)
    or      $s6, $v0, $zero
    or      $v0, $zero, $zero
    bnez    $t4, branch_0x802c6874
    lui     $v1, 0x801d
    b       branch_0x802c6874
    addiu   $v0, $zero, 0x1
branch_0x802c6874:
    lw      $v1, -0x4f6c($v1)
    or      $s0, $v0, $zero
    lw      $t3, 0x90($sp)
    slt     $at, $v1, $v0
    bnez    $at, branch_0x802c6988
    lui     $t7, 0x800e
    subu    $t2, $v0, $v0
    sll     $t5, $t2, 2
    subu    $t5, $t5, $t2
    sll     $t5, $t5, 2
    lui     $t8, 0x801d
    addiu   $t8, $t8, 0xb0b0
    addu    $s2, $s7, $t5
    addiu   $t7, $t7, 0xa75c
    sll     $t9, $v0, 4
    addu    $s1, $t9, $t8
    addu    $s3, $t3, $t7
    addiu   $s2, $s2, 0x84
branch_0x802c68bc:
    lw      $t1, 0x0($s3)
    or      $a0, $s5, $zero
    lui     $a1, 0x802c
    sll     $t6, $t1, 2
    addu    $t4, $s1, $t6
    beq     $s0, $v1, branch_0x802c68f0
    lw      $a2, 0x0($t4)
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x7a54
    jal     Function_0x800c9f70
    or      $a0, $s5, $zero
    b       branch_0x802c68fc
    addiu   $t3, $zero, 0xff
branch_0x802c68f0:
    jal     Function_0x800c9f70
    addiu   $a1, $a1, 0x7a58
    addiu   $t3, $zero, 0xff
branch_0x802c68fc:
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t4, $zero, 0xff
    sw      $t4, 0x38($sp)
    sw      $t6, 0x34($sp)
    sw      $t1, 0x30($sp)
    sw      $t5, 0x2c($sp)
    sw      $t2, 0x28($sp)
    sw      $t8, 0x24($sp)
    sw      $t9, 0x20($sp)
    sw      $t9, 0x44($sp)
    sw      $t7, 0x1c($sp)
    sw      $t7, 0x40($sp)
    sw      $t3, 0x18($sp)
    sw      $t3, 0x3c($sp)
    or      $a0, $s6, $zero
    addiu   $a1, $zero, 0x1
    or      $a2, $s5, $zero
    or      $a3, $s2, $zero
    sw      $fp, 0x10($sp)
    jal     Function_0x801e9084_PrintString
    sw      $s4, 0x14($sp)
    lui     $v1, 0x801d
    lw      $v1, -0x4f6c($v1)
    addiu   $s0, $s0, 0x1
    addiu   $s1, $s1, 0x10
    slt     $at, $v1, $s0
    addiu   $s2, $s2, 0xc
    beqz    $at, branch_0x802c68bc
    or      $s6, $v0, $zero
branch_0x802c6988:
    lw      $t8, 0x11c($sp)
    lw      $t5, 0x90($sp)
    lw      $t6, 0x84($sp)
    addiu   $t2, $t8, 0x1
    slti    $at, $t2, 0x4
    addiu   $t1, $t5, 0x4
    addiu   $t4, $t6, 0x20
    sw      $t4, 0x84($sp)
    sw      $t1, 0x90($sp)
    sw      $t2, 0x11c($sp)
    bnez    $at, branch_0x802c61d0
    addiu   $fp, $fp, 0x20
    lw      $t3, 0x114($sp)
    lui     $t6, 0x801d
    or      $a0, $s6, $zero
    bnez    $t3, branch_0x802c6a88
    addiu   $a2, $zero, 0xff
    lui     $t7, 0x802c
    lw      $t7, 0x7b00($t7)
    or      $a0, $s6, $zero
    addiu   $a2, $zero, 0xff
    beqz    $t7, branch_0x802c69ec
    addiu   $a3, $zero, 0xff
    b       branch_0x802c69f0
    or      $s2, $zero, $zero
branch_0x802c69ec:
    addiu   $s2, $zero, 0x4
branch_0x802c69f0:
    addiu   $t9, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x30($sp)
    sw      $t3, 0x2c($sp)
    sw      $t2, 0x28($sp)
    sw      $t4, 0x24($sp)
    sw      $t6, 0x20($sp)
    sw      $t1, 0x1c($sp)
    sw      $t5, 0x18($sp)
    sw      $t8, 0x14($sp)
    sw      $t9, 0x10($sp)
    sw      $t9, 0x34($sp)
    jal     Function_0x801e91f4_changePalette
    or      $a1, $s2, $zero
    lui     $t8, 0x801d
    lw      $t8, -0x1b9c($t8)
    lui     $a3, 0x802c
    lh      $a3, 0x7a00($a3)
    lui     $a2, 0x802c
    sll     $t5, $t8, 2
    addu    $a2, $a2, $t5
    addiu   $t1, $zero, 0xca
    sw      $t1, 0x10($sp)
    lw      $a2, 0x7a18($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0xa0
    b       branch_0x802c6b5c
    lui     $t6, 0xb400
branch_0x802c6a88:
    lw      $t6, -0x1c60($t6)
    addiu   $a3, $zero, 0xff
    addiu   $t2, $zero, 0xff
    slti    $at, $t6, 0x6
    beqz    $at, branch_0x802c6aa8
    addiu   $t3, $zero, 0xff
    b       branch_0x802c6ac4
    or      $s2, $zero, $zero
branch_0x802c6aa8:
    lui     $t4, 0x802c
    lw      $t4, 0x7b00($t4)
    addiu   $s2, $zero, 0x4
    beqz    $t4, branch_0x802c6ac4
    nop
    b       branch_0x802c6ac4
    addiu   $s2, $zero, 0x6
branch_0x802c6ac4:
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t4, $zero, 0xff
    sw      $t4, 0x30($sp)
    sw      $t6, 0x2c($sp)
    sw      $t1, 0x28($sp)
    sw      $t5, 0x24($sp)
    sw      $t8, 0x20($sp)
    sw      $t9, 0x1c($sp)
    sw      $t7, 0x18($sp)
    or      $a1, $s2, $zero
    sw      $t2, 0x10($sp)
    sw      $t3, 0x14($sp)
    jal     Function_0x801e91f4_changePalette
    sw      $t2, 0x34($sp)
    lui     $t3, 0x801d
    lui     $t9, 0x801d
    lw      $t9, -0x4f6c($t9)
    lw      $t3, -0x4f68($t3)
    lui     $a3, 0x802c
    sll     $t8, $t9, 1
    sll     $t7, $t3, 4
    lh      $a3, 0x7a00($a3)
    addu    $t5, $t7, $t8
    lui     $a2, 0x800f
    addu    $a2, $a2, $t5
    addiu   $t1, $zero, 0xc9
    sw      $t1, 0x10($sp)
    lh      $a2, -0x56e4($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801ead94
    addiu   $a3, $a3, 0xf2
    lui     $t6, 0xb400
branch_0x802c6b5c:
    sw      $t6, 0x0($v0)
    lui     $t4, 0x802c
    lhu     $t4, 0x7b06($t4)
    addiu   $s6, $v0, 0x8
    or      $a0, $s6, $zero
    lui     $t2, 0x103
    lui     $t3, 0x700
    sw      $t4, 0x4($v0)
    addiu   $t3, $t3, 0xa40
    ori     $t2, $t2, 0x40
    addiu   $s6, $s6, 0x8
    sw      $t2, 0x0($a0)
    sw      $t3, 0x4($a0)
    or      $a1, $s6, $zero
    lui     $t7, 0x107
    addiu   $t7, $t7, 0xf488
    lui     $t9, 0x600
    sw      $t9, 0x0($a1)
    sw      $t7, 0x4($a1)
    lui     $s1, 0x700
    lui     $s2, 0x700
    lui     $s7, 0x801d
    lui     $s5, 0x800e
    lui     $s4, 0x102
    lui     $s3, 0x380
    addiu   $s6, $s6, 0x8
    ori     $s3, $s3, 0x10
    ori     $s4, $s4, 0x40
    addiu   $s5, $s5, 0xa75c
    addiu   $s7, $s7, 0xe358
    addiu   $s2, $s2, 0xa80
    addiu   $s1, $s1, 0x1280
    sw      $zero, 0x90($sp)
    or      $s0, $zero, $zero
    addiu   $fp, $zero, 0x300
branch_0x802c6be8:
    or      $v0, $s6, $zero
    addiu   $s6, $s6, 0x8
    sw      $s3, 0x0($v0)
    sw      $s1, 0x4($v0)
    or      $v1, $s6, $zero
    sw      $s4, 0x0($v1)
    sw      $s2, 0x4($v1)
    lw      $t8, 0x114($sp)
    addiu   $s6, $s6, 0x8
    addiu   $at, $zero, 0x1
    bne     $t8, $at, branch_0x802c6c38
    or      $a0, $s6, $zero
    lw      $t5, 0x90($sp)
    lui     $a1, 0x800e
    addu    $t1, $s5, $t5
    lw      $t6, 0x0($t1)
    sll     $t4, $t6, 2
    addu    $a1, $a1, $t4
    b       branch_0x802c6c58
    lw      $a1, -0x58d0($a1)
branch_0x802c6c38:
    lw      $t2, 0x90($sp)
    lui     $t3, 0x801d
    lui     $a1, 0x800e
    addu    $t3, $t3, $t2
    lw      $t3, -0x1b88($t3)
    sll     $t9, $t3, 2
    addu    $a1, $a1, $t9
    lw      $a1, -0x58d0($a1)
branch_0x802c6c58:
    lw      $t7, 0x0($s7)
    or      $a2, $zero, $zero
    or      $a3, $zero, $zero
    addu    $t8, $t7, $s0
    addiu   $t5, $t8, 0xc80
    jal     Function_0x801e4d48
    sw      $t5, 0x10($sp)
    lw      $t1, 0x90($sp)
    addiu   $s0, $s0, 0xc0
    addiu   $s1, $s1, 0x10
    addiu   $t6, $t1, 0x4
    sw      $t6, 0x90($sp)
    addiu   $s2, $s2, 0x40
    bne     $s0, $fp, branch_0x802c6be8
    or      $s6, $v0, $zero
    lw      $ra, 0x74($sp)
    lw      $s0, 0x50($sp)
    lw      $s1, 0x54($sp)
    lw      $s2, 0x58($sp)
    lw      $s3, 0x5c($sp)
    lw      $s4, 0x60($sp)
    lw      $s5, 0x64($sp)
    lw      $s6, 0x68($sp)
    lw      $s7, 0x6c($sp)
    lw      $fp, 0x70($sp)
    jr      $ra
    addiu   $sp, $sp, 0x120

.globl Function_0x802c6cc4
Function_0x802c6cc4: # 0x802c6cc4
    lui     $a2, 0x801d
    addiu   $a2, $a2, 0xe3a0
    lw      $t6, 0x0($a2)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    sltiu   $at, $t6, 0x8
    beqz    $at, branch_0x802c6f5c
    sw      $zero, 0x1c($sp)
    sll     $t6, $t6, 2
    lui     $at, 0x802c
    addu    $at, $at, $t6
    lw      $t6, 0x7a74($at)
    jr      $t6
    nop

.globl Function_0x802c6cfc
Function_0x802c6cfc: # 0x802c6cfc
    lui     $t7, 0x8023
    lh      $t7, -0x782a($t7)
    addiu   $v1, $zero, 0x1
    bnel    $v1, $t7, branch_0x802c6f60
    lw      $t3, 0x1c($sp)
    sw      $v1, 0x0($a2)
    b       branch_0x802c6f5c
    sw      $v1, 0x1c($sp)

.globl Function_0x802c6d1c
Function_0x802c6d1c: # 0x802c6d1c
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x7a00
    lh      $t8, 0x0($v0)
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3a4
    addiu   $t9, $t8, 0xffec
    sh      $t9, 0x0($v0)
    lh      $t0, 0x0($v0)
    addiu   $t1, $zero, 0x2
    addiu   $t2, $zero, 0x14
    slti    $at, $t0, 0x14
    beqzl   $at, branch_0x802c6f60
    lw      $t3, 0x1c($sp)
    sw      $t1, 0x0($a2)
    sh      $t2, 0x0($v0)
    b       branch_0x802c6f5c
    sw      $zero, 0x0($v1)

.globl Function_0x802c6d60
Function_0x802c6d60: # 0x802c6d60
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3a4
    lw      $v0, 0x0($v1)
    lui     $t4, 0x801d
    slti    $at, $v0, 0x3c
    beqz    $at, branch_0x802c6d84
    addiu   $t3, $v0, 0x1
    sw      $t3, 0x0($v1)
    or      $v0, $t3, $zero
branch_0x802c6d84:
    slti    $at, $v0, 0x1f
    bnezl   $at, branch_0x802c6f60
    lw      $t3, 0x1c($sp)
    lhu     $t4, -0x1c46($t4)
    addiu   $t6, $zero, 0x3
    addiu   $t7, $zero, 0x1
    andi    $t5, $t4, 0xb000
    beqzl   $t5, branch_0x802c6f60
    lw      $t3, 0x1c($sp)
    sw      $t6, 0x0($a2)
    b       branch_0x802c6f5c
    sw      $t7, 0x1c($sp)

.globl Function_0x802c6db4
Function_0x802c6db4: # 0x802c6db4
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x7a00
    lh      $t8, 0x0($v0)
    addiu   $t1, $zero, 0x4
    addiu   $t2, $zero, 0xfef7
    addiu   $t9, $t8, 0xffec
    sh      $t9, 0x0($v0)
    lh      $t0, 0x0($v0)
    addiu   $t3, $zero, 0x1
    slti    $at, $t0, 0xfef7
    beqzl   $at, branch_0x802c6f60
    lw      $t3, 0x1c($sp)
    sw      $t1, 0x0($a2)
    sh      $t2, 0x0($v0)
    b       branch_0x802c6f5c
    sw      $t3, 0x1c($sp)

.globl Function_0x802c6df4
Function_0x802c6df4: # 0x802c6df4
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x7a00
    lh      $t4, 0x0($v0)
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x7b0c
    addiu   $t5, $t4, 0x14
    sh      $t5, 0x0($v0)
    lh      $t6, 0x0($v0)
    addiu   $t7, $zero, 0x5
    addiu   $t8, $zero, 0x14
    slti    $at, $t6, 0x15
    bnezl   $at, branch_0x802c6f60
    lw      $t3, 0x1c($sp)
    sw      $t7, 0x0($a2)
    sh      $t8, 0x0($v0)
    b       branch_0x802c6f5c
    sw      $zero, 0x0($v1)

.globl Function_0x802c6e38
Function_0x802c6e38: # 0x802c6e38
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x7b0c
    lw      $v0, 0x0($v1)
    lui     $t0, 0x802c
    slti    $at, $v0, 0x10
    beqz    $at, branch_0x802c6e5c
    addiu   $t9, $v0, 0x1
    sw      $t9, 0x0($v1)
    or      $v0, $t9, $zero
branch_0x802c6e5c:
    addiu   $at, $zero, 0x6
    bnel    $v0, $at, branch_0x802c6e94
    slti    $at, $v0, 0x6
    lw      $t0, 0x7b00($t0)
    addiu   $v1, $zero, 0x1
    bnel    $v1, $t0, branch_0x802c6e94
    slti    $at, $v0, 0x6
    jal     Function_0x800c3bec
    nop
    lui     $a2, 0x801d
    lui     $v0, 0x802c
    lw      $v0, 0x7b0c($v0)
    addiu   $a2, $a2, 0xe3a0
    slti    $at, $v0, 0x6
branch_0x802c6e94:
    bnez    $at, branch_0x802c6f5c
    lui     $t1, 0x801d
    lhu     $t1, -0x1c46($t1)
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3a4
    andi    $t2, $t1, 0xb000
    beqz    $t2, branch_0x802c6f5c
    addiu   $t3, $zero, 0x6
    sw      $t3, 0x0($a2)
    sw      $zero, 0x0($v1)
    addiu   $a0, $zero, 0x11
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6f60
    lw      $t3, 0x1c($sp)

Function_0x802c6ed0: # 0x802c6ed0
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3a4
    lw      $t4, 0x0($v1)
    lui     $a0, 0x802c
    addiu   $t5, $t4, 0x1
    slti    $at, $t5, 0x1e
    bnez    $at, branch_0x802c6f5c
    sw      $t5, 0x0($v1)
    lw      $a0, 0x7b08($a0)
    addiu   $at, $zero, 0x5a
    addiu   $t7, $zero, 0x7
    beq     $a0, $at, branch_0x802c6f14
    addiu   $t8, $zero, 0x1
    jal     Function_0x802c6f84
    nop
    b       branch_0x802c6f60
    lw      $t3, 0x1c($sp)
branch_0x802c6f14:
    sw      $t7, 0x0($a2)
    sw      $t8, 0x1c($sp)
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x5
    b       branch_0x802c6f60
    lw      $t3, 0x1c($sp)

.globl Function_0x802c6f2c
Function_0x802c6f2c: # 0x802c6f2c
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x7a00
    lh      $t9, 0x0($v0)
    addiu   $t2, $zero, 0x140
    addiu   $t0, $t9, 0x14
    sh      $t0, 0x0($v0)
    lh      $t1, 0x0($v0)
    slti    $at, $t1, 0x141
    bnezl   $at, branch_0x802c6f60
    lw      $t3, 0x1c($sp)
    jal     Function_0x801ec6d4_ChangeStateTo5a
    sh      $t2, 0x0($v0)
branch_0x802c6f5c:
    lw      $t3, 0x1c($sp)
branch_0x802c6f60:
    addiu   $a0, $zero, 0x31
    beqzl   $t3, branch_0x802c6f78
    lw      $ra, 0x14($sp)
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    lw      $ra, 0x14($sp)
branch_0x802c6f78:
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x802c6f84
Function_0x802c6f84: # 0x802c6f84
    lui     $v1, 0x800e
    addiu   $v1, $v1, 0xa8a4
    lw      $t6, 0x0($v1)
    lui     $at, 0x801d
    lui     $a3, 0x801d
    sw      $t6, -0x1c6c($at)
    addiu   $a3, $a3, 0xe390
    addiu   $t7, $zero, 0x35
    sw      $a0, 0x0($a3)
    sw      $t7, 0x0($v1)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0x9
    sw      $t8, -0x1c68($at)
    lui     $at, 0x801d
    addiu   $t9, $zero, 0x1
    sw      $t9, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $at, %hi(Unknown_0x800d439c)
    addiu   $t0, $zero, 0x2
    sw      $t0, %lo(Unknown_0x800d439c)($at)
    lw      $v0, 0x0($a3)
    addiu   $sp, $sp, 0xffe8
    addiu   $at, $zero, 0x66
    bne     $v0, $at, branch_0x802c700c
    sw      $ra, 0x14($sp)
    addiu   $a0, $zero, 0x1
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    b       branch_0x802c703c
    nop
branch_0x802c700c:
    addiu   $at, $zero, 0x1e
    bne     $v0, $at, branch_0x802c7030
    addiu   $a0, $zero, 0x5
    addiu   $a0, $zero, 0x5
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    b       branch_0x802c703c
    nop
branch_0x802c7030:
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
branch_0x802c703c:
    lui     $v0, 0x801d
    lw      $v0, -0x1c70($v0)
    addiu   $at, $zero, 0x66
    bnel    $v0, $at, branch_0x802c7064
    addiu   $at, $zero, 0x1e
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0xb
    b       branch_0x802c7078
    lw      $ra, 0x14($sp)

Function_0x802c7060: # 0x802c7060
    addiu   $at, $zero, 0x1e
branch_0x802c7064:
    bnel    $v0, $at, branch_0x802c7078
    lw      $ra, 0x14($sp)
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x2
    lw      $ra, 0x14($sp)
branch_0x802c7078:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c7084
Function_0x802c7084: # 0x802c7084
    nop
    nop
    nop
    addiu   $sp, $sp, 0xff68
    lui     $t6, 0x801d
    lw      $t6, -0x1c64($t6)
    sw      $ra, 0x6c($sp)
    sw      $s5, 0x68($sp)
    sw      $s4, 0x64($sp)
    sw      $s3, 0x60($sp)
    sw      $s2, 0x5c($sp)
    sw      $s1, 0x58($sp)
    sw      $s0, 0x54($sp)
    sdc1    $26, 0x48($29)
    sdc1    $24, 0x40($29)
    sdc1    $22, 0x38($29)
    beqz    $t6, branch_0x802c729c
    sdc1    $20, 0x30($29)
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x5a
    lui     $t8, %hi(Unknown_0x800d465c)
    bne     $t7, $at, branch_0x802c729c
    lui     $t4, 0x801d
    lw      $t8, %lo(Unknown_0x800d465c)($t8)
    lui     $t5, 0x801d
    lui     $t7, 0x801d
    sll     $t9, $t8, 2
    addu    $t4, $t4, $t9
    lw      $t4, -0x4f60($t4)
    lw      $t7, -0x4f6c($t7)
    lw      $t5, -0x4f68($t5)
    lui     $at, 0x802c
    sw      $t4, 0x7b30($at)
    sll     $t8, $t7, 1
    sll     $t6, $t5, 4
    addu    $t9, $t6, $t8
    lui     $t4, 0x800f
    addu    $t4, $t4, $t9
    lh      $t4, -0x56e4($t4)
    lui     $at, 0x802c
    lui     $s3, 0x802c
    lui     $s5, 0x802c
    lui     $s4, 0x802c
    addiu   $s4, $s4, 0x7b80
    addiu   $s5, $s5, 0x7b40
    addiu   $s3, $s3, 0x7b38
    sw      $t4, 0x7b34($at)
branch_0x802c7144:
    lui     $t5, 0x802c
    addiu   $t5, $t5, 0x7b80
    bne     $s4, $t5, branch_0x802c7168
    lui     $a0, 0x80b
    lui     $a0, 0x80b
    jal     Function_0x80093e28
    addiu   $a0, $a0, 0xe28
    b       branch_0x802c7174
    sw      $v0, 0x0($s3)
branch_0x802c7168:
    jal     Function_0x80093e28
    addiu   $a0, $a0, 0x1550
    sw      $v0, 0x0($s3)
branch_0x802c7174:
    or      $s1, $zero, $zero
    or      $s2, $zero, $zero
    or      $s0, $s5, $zero
branch_0x802c7180:
    lw      $t7, 0x0($s3)
    addu    $t6, $t7, $s2
    jal     Function_0x80093e28
    lw      $a0, 0x8($t6)
    addiu   $s1, $s1, 0x1
    slti    $at, $s1, 0x8
    addiu   $s2, $s2, 0x4
    addiu   $s0, $s0, 0x4
    bnez    $at, branch_0x802c7180
    sw      $v0, -0x4($s0)
    lw      $t8, 0x0($s3)
    jal     Function_0x80093e28
    lw      $a0, 0x4($t8)
    lui     $t9, 0x802c
    addiu   $t9, $t9, 0x7b88
    addiu   $s4, $s4, 0x4
    sltu    $at, $s4, $t9
    addiu   $s3, $s3, 0x4
    addiu   $s5, $s5, 0x20
    bnez    $at, branch_0x802c7144
    sw      $v0, -0x4($s4)
    lui     $t0, 0x802c
    lui     $t3, 0x802c
    addiu   $t3, $t3, 0x7b8c
    addiu   $t0, $t0, 0x7b90
    sw      $zero, 0x0($t0)
    sw      $zero, 0x0($t3)
    lui     $v0, 0x801d
    lw      $v0, -0x4f6c($v0)
    mtc1    $zero, $k0
    or      $a0, $zero, $zero
    addiu   $v0, $v0, 0x1
    blez    $v0, branch_0x802c7274
    lui     $t5, 0x801d
    lw      $t5, -0x4f68($t5)
    lui     $t6, 0x800f
    addiu   $t6, $t6, 0xa974
    lui     $t2, 0x801c
    lui     $t1, 0x801c
    sll     $t7, $t5, 4
    addu    $a1, $t7, $t6
    addiu   $t1, $t1, 0x23c0
    addiu   $t2, $t2, 0x23f0
    sll     $a3, $v0, 1
    addiu   $a2, $zero, 0x1
branch_0x802c7234:
    lh      $v0, 0x0($a1)
    addiu   $a0, $a0, 0x2
    slt     $at, $a0, $a3
    sll     $v1, $v0, 2
    addu    $t8, $t1, $v1
    lw      $t9, 0x0($t8)
    addu    $t4, $t2, $v1
    beqzl   $t9, branch_0x802c7260
    lw      $t5, 0x0($t4)
    sw      $a2, 0x0($t3)
    lw      $t5, 0x0($t4)
branch_0x802c7260:
    beqz    $t5, branch_0x802c726c
    nop
    sw      $a2, 0x0($t0)
branch_0x802c726c:
    bnez    $at, branch_0x802c7234
    addiu   $a1, $a1, 0x2
branch_0x802c7274:
    lui     $v0, 0x802c
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x7b30
    addiu   $v0, $v0, 0x7b10
branch_0x802c7284:
    addiu   $v0, $v0, 0x10
    swc1    $f26, -0x10($v0)
    swc1    $f26, -0xc($v0)
    swc1    $f26, -0x8($v0)
    bne     $v0, $v1, branch_0x802c7284
    swc1    $f26, -0x4($v0)
branch_0x802c729c:
    lui     $v0, 0x802c
    lw      $v0, 0x7ac8($v0)
    mtc1    $zero, $k0
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c72c8
    or      $s2, $zero, $zero
    addiu   $at, $zero, 0x3
    beql    $v0, $at, branch_0x802c72cc
    or      $v0, $zero, $zero
    b       branch_0x802c72cc
    addiu   $v0, $zero, 0x1
branch_0x802c72c8:
    or      $v0, $zero, $zero
branch_0x802c72cc:
    lui     $t6, 0x802c
    lui     $t9, 0x802c
    lui     $at, 0x4120
    addiu   $t9, $t9, 0x7b80
    addiu   $t6, $t6, 0x7b40
    sll     $t7, $v0, 5
    sll     $t8, $v0, 2
    lui     $s1, 0x802c
    mtc1    $at, $t8
    addiu   $s1, $s1, 0x7aa0
    addu    $s5, $t8, $t9
    addu    $s4, $t7, $t6
    or      $s3, $zero, $zero
branch_0x802c7300:
    lw      $a0, 0x0($s1)
    lw      $v0, 0x0($s4)
    lw      $s0, 0x0($s5)
    sll     $t4, $a0, 1
    addu    $v0, $v0, $t4
    lh      $v1, 0x0($v0)
    lui     $t9, 0x802c
    addiu   $t9, $t9, 0x7b10
    sll     $t5, $v1, 2
    subu    $t5, $t5, $v1
    sll     $t5, $t5, 2
    addu    $s0, $s0, $t5
    lh      $t6, 0x2($s0)
    lh      $t7, 0x0($s0)
    lh      $t8, 0x4($s0)
    mtc1    $t6, $t0
    mtc1    $t7, $a0
    mtc1    $t8, $s0
    cvt.s.w $f10, $f8
    addu    $v0, $s2, $t9
    cvt.s.w $f6, $f4
    div.s   $f0, $f10, $f24
    cvt.s.w $f18, $f16
    div.s   $f20, $f6, $f24
    c.le.s $f26, $f0
    nop
    bc1f    branch_0x802c73b0
    div.s   $f22, $f18, $f24
    mtc1    $zero, $a0
    lwc1    $f6, 0x0($v0)
    c.eq.s $f4, $f6
    nop
    bc1fl   branch_0x802c73b4
    lb      $t8, 0x9($s0)
    blez    $a0, branch_0x802c73b0
    lui     $at, 0x3f80
    mtc1    $at, $t0
    mov.s   $f12, $f20
    mov.s   $f14, $f22
    addiu   $a2, $zero, 0x32
    swc1    $f0, 0x74($sp)
    jal     Function_0x8004ef54
    swc1    $f8, 0x0($v0)
    lwc1    $f0, 0x74($sp)
branch_0x802c73b0:
    lb      $t8, 0x9($s0)
branch_0x802c73b4:
    lb      $t5, 0x6($s0)
    lb      $t7, 0x7($s0)
    mtc1    $t8, $a0
    mtc1    $t5, $t2
    lb      $t6, 0x8($s0)
    cvt.s.w $f6, $f4
    mtc1    $t7, $s0
    lui     $t4, 0x801d
    lw      $t4, -0x1ca8($t4)
    mtc1    $t6, $s2
    cvt.s.w $f10, $f10
    swc1    $f6, 0x10($sp)
    lb      $t9, 0xa($s0)
    addu    $a0, $t4, $s3
    lui     $at, 0x802c
    mtc1    $t9, $t0
    mfc1    $a1, $t2
    cvt.s.w $f16, $f16
    lwc1    $f4, 0x7ae0($at)
    addiu   $a0, $a0, 0x1380
    cvt.s.w $f10, $f8
    mfc1    $a2, $s0
    cvt.s.w $f18, $f18
    swc1    $f10, 0x14($sp)
    lb      $t4, 0xb($s0)
    swc1    $f22, 0x24($sp)
    swc1    $f0, 0x20($sp)
    mtc1    $t4, $s0
    mfc1    $a3, $s2
    swc1    $f20, 0x1c($sp)
    cvt.s.w $f18, $f16
    swc1    $f4, 0x28($sp)
    jal     Function_0x801e49c0
    swc1    $f18, 0x18($sp)
    addiu   $s3, $s3, 0x40
    addiu   $at, $zero, 0x200
    addiu   $s2, $s2, 0x4
    bne     $s3, $at, branch_0x802c7300
    addiu   $s4, $s4, 0x4
    lw      $ra, 0x6c($sp)
    ldc1    $20, 0x30($29)
    ldc1    $22, 0x38($29)
    ldc1    $24, 0x40($29)
    ldc1    $26, 0x48($29)
    lw      $s0, 0x54($sp)
    lw      $s1, 0x58($sp)
    lw      $s2, 0x5c($sp)
    lw      $s3, 0x60($sp)
    lw      $s4, 0x64($sp)
    lw      $s5, 0x68($sp)
    jr      $ra
    addiu   $sp, $sp, 0x98


.globl Function_5_0x802c7484
Function_5_0x802c7484: # 0x802c7484
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c74a4
    nop
    sw      $zero, 0x0($v0)
branch_0x802c74a4:
    jal     Function_0x80093d18
    nop
    lui     $at, 0x800e
    lui     $a1, %hi(TrackNr_0x800d7ef0)
    sw      $zero, -0x5754($at)
    lw      $a1, %lo(TrackNr_0x800d7ef0)($a1)
    jal     Function_0x80094758
    or      $a0, $v0, $zero
    jal     Function_0x8008f914
    or      $a0, $v0, $zero
    lui     $v1, 0x802c
    lw      $v1, 0x7ac8($v1)
    addiu   $at, $zero, 0x2
    or      $a0, $v0, $zero
    beq     $v1, $at, branch_0x802c74f4
    addiu   $at, $zero, 0x3
    beq     $v1, $at, branch_0x802c74f4
    addiu   $at, $zero, 0x4
    bnel    $v1, $at, branch_0x802c7504
    or      $v0, $a0, $zero
branch_0x802c74f4:
    jal     Function_0x802c7594
    nop
    or      $a0, $v0, $zero
    or      $v0, $a0, $zero
branch_0x802c7504:
    lui     $t7, 0x102
    lui     $t8, 0x8012
    addiu   $t8, $t8, 0xf580
    ori     $t7, $t7, 0x40
    sw      $t7, 0x0($v0)
    sw      $t8, 0x4($v0)
    lui     $a1, %hi(TrackNr_0x800d7ef0)
    addiu   $a0, $a0, 0x8
    jal     Function_0x800947e4
    lw      $a1, %lo(TrackNr_0x800d7ef0)($a1)
    jal     Function_0x80090cf8_DrawWaterBG
    or      $a0, $v0, $zero
    jal     Function_0x802c7698
    or      $a0, $v0, $zero
    lui     $t9, 0x800e
    lw      $t9, -0x575c($t9)
    addiu   $at, $zero, 0x5a
    or      $a0, $v0, $zero
    bne     $t9, $at, branch_0x802c7564
    lui     $t0, 0x8023
    jal     Function_0x802c781c
    sw      $v0, 0x18($sp)
    b       branch_0x802c7580
    lw      $a0, 0x18($sp)
branch_0x802c7564:
    lh      $t0, -0x782a($t0)
    addiu   $at, $zero, 0x1
    bnel    $t0, $at, branch_0x802c7584
    lw      $ra, 0x14($sp)
    jal     Function_0x801eaf10_ChangeStateTo2
    sw      $a0, 0x18($sp)
    lw      $a0, 0x18($sp)
branch_0x802c7580:
    lw      $ra, 0x14($sp)
branch_0x802c7584:
    addiu   $sp, $sp, 0x18
    or      $v0, $a0, $zero
    jr      $ra
    nop

.globl Function_0x802c7594
Function_0x802c7594: # 0x802c7594
    or      $v0, $a0, $zero
    lui     $t6, 0x107
    lui     $t2, 0x600
    addiu   $t6, $t6, 0xf6c0
    lui     $a1, 0x700
    lui     $a2, 0x802c
    lui     $a3, 0x700
    lui     $t0, 0x700
    lui     $t1, 0x700
    lui     $t4, 0x700
    lui     $t3, 0x102
    sw      $t6, 0x4($v0)
    sw      $t2, 0x0($v0)
    addiu   $a0, $a0, 0x8
    ori     $t3, $t3, 0x40
    addiu   $t4, $t4, 0x1640
    addiu   $t1, $t1, 0x1440
    addiu   $t0, $t0, 0x1400
    addiu   $a3, $a3, 0x13c0
    addiu   $a2, $a2, 0x7aa8
    addiu   $a1, $a1, 0x1380
branch_0x802c75e8:
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $t3, 0x0($v0)
    sw      $a1, 0x4($v0)
    or      $v1, $a0, $zero
    sw      $t2, 0x0($v1)
    lw      $t7, 0x0($a2)
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    sw      $t7, 0x4($v1)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $a3, 0x4($v0)
    sw      $t3, 0x0($v0)
    sw      $t2, 0x0($v1)
    lw      $t8, 0x4($a2)
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    sw      $t8, 0x4($v1)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $t0, 0x4($v0)
    sw      $t3, 0x0($v0)
    sw      $t2, 0x0($v1)
    lw      $t9, 0x8($a2)
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    sw      $t9, 0x4($v1)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $t1, 0x4($v0)
    sw      $t3, 0x0($v0)
    sw      $t2, 0x0($v1)
    lw      $t5, 0xc($a2)
    addiu   $t1, $t1, 0x100
    addiu   $a0, $a0, 0x8
    addiu   $t0, $t0, 0x100
    addiu   $a3, $a3, 0x100
    addiu   $a1, $a1, 0x100
    addiu   $a2, $a2, 0x10
    bne     $t1, $t4, branch_0x802c75e8
    sw      $t5, 0x4($v1)
    jr      $ra
    or      $v0, $a0, $zero

.globl Function_0x802c7698
Function_0x802c7698: # 0x802c7698
    addiu   $sp, $sp, 0xffc0
    sw      $ra, 0x3c($sp)
    or      $v0, $a0, $zero
    lui     $t7, 0x107
    addiu   $t7, $t7, 0xf628
    lui     $t6, 0x600
    sw      $t6, 0x0($v0)
    sw      $t7, 0x4($v0)
    lui     $a2, 0x802c
    addiu   $t8, $zero, 0xd0
    addiu   $t9, $zero, 0xf
    addiu   $a0, $a0, 0x8
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    lw      $a2, 0x7acc($a2)
    or      $a1, $zero, $zero
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x91
    lui     $a2, 0x802c
    addiu   $t0, $zero, 0xd0
    addiu   $t1, $zero, 0xf
    sw      $t1, 0x14($sp)
    sw      $t0, 0x10($sp)
    lw      $a2, 0x7ad0($a2)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xa6
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    sw      $t1, 0x34($sp)
    sw      $t0, 0x30($sp)
    sw      $t9, 0x2c($sp)
    sw      $t8, 0x28($sp)
    sw      $t7, 0x24($sp)
    sw      $t6, 0x20($sp)
    sw      $t5, 0x1c($sp)
    sw      $t4, 0x18($sp)
    sw      $t3, 0x14($sp)
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lui     $a3, 0x802c
    lw      $a3, 0x7acc($a3)
    addiu   $t2, $zero, 0x93
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x6
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0xa
    lui     $a3, 0x802c
    lw      $a3, 0x7ad0($a3)
    addiu   $t3, $zero, 0xa8
    sw      $t3, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x7
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0xa
    lui     $a3, 0x802c
    lw      $a3, 0x7acc($a3)
    lui     $a2, 0x802c
    addiu   $t4, $zero, 0x93
    sw      $t4, 0x10($sp)
    lw      $a2, 0x7b34($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801ead94
    addiu   $a3, $a3, 0xba
    lui     $a3, 0x802c
    lw      $a3, 0x7ad0($a3)
    lui     $a2, 0x802c
    addiu   $t5, $zero, 0xa8
    sw      $t5, 0x10($sp)
    lw      $a2, 0x7b30($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801ead94
    addiu   $a3, $a3, 0xba
    lw      $ra, 0x3c($sp)
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop

.globl Function_0x802c781c
Function_0x802c781c: # 0x802c781c
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7ac8
    lw      $t6, 0x0($a0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    sltiu   $at, $t6, 0x5
    beqz    $at, branch_0x802c79cc
    sll     $t6, $t6, 2
    lui     $at, 0x802c
    addu    $at, $at, $t6
    lw      $t6, 0x7ae4($at)
    jr      $t6
    nop

.globl Function_0x802c7850
Function_0x802c7850: # 0x802c7850
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x7acc
    lw      $t7, 0x0($a1)
    addiu   $t0, $zero, 0x1
    addiu   $t1, $zero, 0x38
    addiu   $t8, $t7, 0xffe2
    slti    $at, $t8, 0x38
    beqz    $at, branch_0x802c79cc
    sw      $t8, 0x0($a1)
    sw      $t0, 0x0($a0)
    b       branch_0x802c79cc
    sw      $t1, 0x0($a1)

.globl Function_0x802c7880
Function_0x802c7880: # 0x802c7880
    addiu   $t2, $zero, 0x2
    b       branch_0x802c79cc
    sw      $t2, 0x0($a0)

.globl Function_0x802c788c
Function_0x802c788c: # 0x802c788c
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x7aa0
    lw      $t3, 0x0($v1)
    lui     $t5, 0x802c
    addiu   $t8, $zero, 0x3
    addiu   $t4, $t3, 0x1
    sw      $t4, 0x0($v1)
    lw      $t5, 0x7b38($t5)
    addiu   $t7, $t4, 0xffff
    lh      $t6, 0x0($t5)
    bne     $t4, $t6, branch_0x802c79cc
    nop
    sw      $t7, 0x0($v1)
    b       branch_0x802c79cc
    sw      $t8, 0x0($a0)

.globl Function_0x802c78c8
Function_0x802c78c8: # 0x802c78c8
    lui     $t9, 0x801d
    lhu     $t9, -0x1c46($t9)
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x7b88
    andi    $t0, $t9, 0xb000
    beqz    $t0, branch_0x802c79cc
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x7aa0
    addiu   $t1, $zero, 0x4
    sw      $t1, 0x0($a0)
    sw      $zero, 0x0($v1)
    b       branch_0x802c79cc
    sw      $zero, 0x0($v0)

.globl Function_0x802c78fc
Function_0x802c78fc: # 0x802c78fc
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x7acc
    lw      $t2, 0x0($a1)
    or      $a0, $zero, $zero
    lui     $v1, 0x802c
    addiu   $t3, $t2, 0xffe2
    slti    $at, $t3, 0xff30
    beqz    $at, branch_0x802c792c
    sw      $t3, 0x0($a1)
    addiu   $t5, $zero, 0xff30
    addiu   $a0, $zero, 0x1
    sw      $t5, 0x0($a1)
branch_0x802c792c:
    addiu   $v1, $v1, 0x7aa0
    lw      $t6, 0x0($v1)
    lui     $t8, 0x802c
    lui     $v0, 0x802c
    addiu   $t7, $t6, 0x1
    sw      $t7, 0x0($v1)
    lw      $t8, 0x7b3c($t8)
    addiu   $t0, $t7, 0xffff
    addiu   $v0, $v0, 0x7b88
    lh      $t9, 0x0($t8)
    addiu   $at, $zero, 0x2
    lui     $t4, 0x802c
    bne     $t7, $t9, branch_0x802c796c
    nop
    addiu   $a0, $a0, 0x1
    sw      $t0, 0x0($v1)
branch_0x802c796c:
    bne     $a0, $at, branch_0x802c7980
    nop
    lw      $t1, 0x0($v0)
    addiu   $t2, $t1, 0x1
    sw      $t2, 0x0($v0)
branch_0x802c7980:
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x7b88
    lw      $t3, 0x0($v0)
    slti    $at, $t3, 0x4
    bnez    $at, branch_0x802c79cc
    nop
    lw      $t4, 0x7b8c($t4)
    lui     $t5, 0x802c
    bnez    $t4, branch_0x802c79b4
    nop
    lw      $t5, 0x7b90($t5)
    beqz    $t5, branch_0x802c79c4
    nop
branch_0x802c79b4:
    jal     Function_0x801ec758_ChangeStateTo64
    nop
    b       branch_0x802c79cc
    nop
branch_0x802c79c4:
    jal     Function_0x801ec5c0_ChangeStateTo50
    nop
branch_0x802c79cc:
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x7acc
    lw      $t6, 0x0($a1)
    lw      $ra, 0x14($sp)
    addiu   $t7, $zero, 0x70
    lui     $at, 0x802c
    subu    $t8, $t7, $t6
    sw      $t8, 0x7ad0($at)
    jr      $ra
    addiu   $sp, $sp, 0x18

.globl Function_0x802c79f4
Function_0x802c79f4: # 0x802c79f4
    jr      $ra
    nop

.incbin "./roms/Wave Race 64 (USA).z64", 0x1c1f0c, ROM_0x1c2010 - 0x1c1f0c
