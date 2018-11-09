

.include "source/constants.s"

.section .textoverlay10, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    addiu   $sp, $sp, 0xfe28
    lui     $t6, 0x801d
    lw      $t6, -0x1c64($t6)
    sw      $ra, 0x74($sp)
    sw      $fp, 0x70($sp)
    sw      $s7, 0x6c($sp)
    sw      $s6, 0x68($sp)
    sw      $s5, 0x64($sp)
    sw      $s4, 0x60($sp)
    sw      $s3, 0x5c($sp)
    sw      $s2, 0x58($sp)
    sw      $s1, 0x54($sp)
    sw      $s0, 0x50($sp)
    sdc1    $24, 0x48($29)
    sdc1    $22, 0x40($29)
    beqz    $t6, branch_0x802c585c
    sdc1    $20, 0x38($29)
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x3e
    bne     $t7, $at, branch_0x802c585c
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
branch_0x802c585c:
    lui     $t8, 0x801d
    lw      $t8, -0x1c60($t8)
    lui     $t9, 0x802c
    bnez    $t8, branch_0x802c5930
    nop
    lw      $t9, 0x7040($t9)
    lui     $s0, 0x802c
    addiu   $s0, $s0, 0x74f8
    sll     $t0, $t9, 2
    addu    $t1, $s0, $t0
    lw      $t2, 0x0($t1)
    addiu   $s1, $zero, 0xe
    lui     $t4, 0x801d
    multu   $t2, $s1
    addiu   $t4, $t4, 0xaff8
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x7548
    addiu   $a2, $zero, 0xb
    mflo    $t3
    addu    $a0, $t3, $t4
    jal     Function_0x802c6fd4
    nop
    lui     $t8, 0x802c
    lw      $t8, 0x7040($t8)
    lui     $t5, %hi(Unknown_0x800d465c)
    lw      $t5, %lo(Unknown_0x800d465c)($t5)
    sll     $t9, $t8, 2
    addu    $t0, $s0, $t9
    lw      $a0, 0x0($t0)
    sll     $t6, $t5, 2
    subu    $t6, $t6, $t5
    multu   $a0, $s1
    sll     $t6, $t6, 3
    subu    $t6, $t6, $t5
    sll     $t6, $t6, 3
    lui     $t2, %hi(String_DriverNames)
    addu    $t6, $t6, $t5
    sll     $t6, $t6, 2
    addiu   $t2, $t2, %lo(String_DriverNames)
    lui     $t7, %hi(Unknown_0x801923f0_GameStruct)
    subu    $t6, $t6, $t5
    mflo    $t1
    addu    $v1, $t1, $t2
    sll     $t6, $t6, 3
    addiu   $t7, $t7, %lo(Unknown_0x801923f0_GameStruct)
    addu    $v0, $t6, $t7
    lb      $t3, 0xb($v1)
    lb      $t4, 0xc($v1)
    lb      $t5, 0xd($v1)
    sw      $a0, 0xb68($v0)
    sw      $t3, 0xb6c($v0)
    sw      $t4, 0xb70($v0)
    sw      $t5, 0xb74($v0)
branch_0x802c5930:
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x7044
    lw      $v1, 0x0($a1)
    lui     $s5, 0x802c
    addiu   $s5, $s5, 0x7564
    bnez    $v1, branch_0x802c5a08
    lui     $s2, 0x802c
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7048
    lw      $v0, 0x0($a0)
    lui     $at, 0x4080
    mtc1    $at, $zero
    mtc1    $v0, $a0
    lui     $at, 0x437f
    mtc1    $at, $t0
    cvt.s.w $f6, $f4
    addiu   $t7, $zero, 0x1
    lui     $at, 0x4f00
    mul.s   $f10, $f6, $f8
    div.s   $f16, $f10, $f0
    cfc1    $t6, $ra
    ctc1    $t7, $ra
    nop
    cvt.w.s $f18, $f16
    cfc1    $t7, $ra
    nop
    andi    $t7, $t7, 0x78
    beqzl   $t7, branch_0x802c59ec
    mfc1    $t7, $s2
    mtc1    $at, $s2
    addiu   $t7, $zero, 0x1
    sub.s   $f18, $f16, $f18
    ctc1    $t7, $ra
    nop
    cvt.w.s $f18, $f18
    cfc1    $t7, $ra
    nop
    andi    $t7, $t7, 0x78
    bnez    $t7, branch_0x802c59e0
    nop
    mfc1    $t7, $s2
    lui     $at, 0x8000
    b       branch_0x802c59f8
    or      $t7, $t7, $at
branch_0x802c59e0:
    b       branch_0x802c59f8
    addiu   $t7, $zero, 0xffff

Function_0x802c59e8: # 0x802c59e8
    mfc1    $t7, $s2
branch_0x802c59ec:
    nop
    bltz    $t7, branch_0x802c59e0
    nop
branch_0x802c59f8:
    ctc1    $t6, $ra
    lui     $at, 0x802c
    b       branch_0x802c5ac4
    sw      $t7, 0x7534($at)
branch_0x802c5a08:
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7048
    lw      $v0, 0x0($a0)
    lui     $at, 0x4080
    mtc1    $at, $zero
    mtc1    $v0, $a0
    lui     $at, 0x437f
    mtc1    $at, $t2
    cvt.s.w $f6, $f4
    addiu   $t9, $zero, 0x1
    lui     $at, 0x4f00
    sub.s   $f8, $f0, $f6
    mul.s   $f16, $f8, $f10
    div.s   $f18, $f16, $f0
    cfc1    $t8, $ra
    ctc1    $t9, $ra
    nop
    cvt.w.s $f4, $f18
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    beqzl   $t9, branch_0x802c5aac
    mfc1    $t9, $a0
    mtc1    $at, $a0
    addiu   $t9, $zero, 0x1
    sub.s   $f4, $f18, $f4
    ctc1    $t9, $ra
    nop
    cvt.w.s $f4, $f4
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    bnez    $t9, branch_0x802c5aa0
    nop
    mfc1    $t9, $a0
    lui     $at, 0x8000
    b       branch_0x802c5ab8
    or      $t9, $t9, $at
branch_0x802c5aa0:
    b       branch_0x802c5ab8
    addiu   $t9, $zero, 0xffff

.globl Function_0x802c5aa8
Function_0x802c5aa8: # 0x802c5aa8
    mfc1    $t9, $a0
branch_0x802c5aac:
    nop
    bltz    $t9, branch_0x802c5aa0
    nop
branch_0x802c5ab8:
    ctc1    $t8, $ra
    lui     $at, 0x802c
    sw      $t9, 0x7534($at)
branch_0x802c5ac4:
    addiu   $t0, $v0, 0x1
    slti    $at, $t0, 0x4
    bnez    $at, branch_0x802c5ae0
    sw      $t0, 0x0($a0)
    xori    $t2, $v1, 0x1
    sw      $zero, 0x0($a0)
    sw      $t2, 0x0($a1)
branch_0x802c5ae0:
    lw      $t3, 0x0($s5)
    addiu   $s2, $s2, 0x7568
    sw      $zero, 0x0($s2)
    blez    $t3, branch_0x802c5b4c
    or      $s1, $zero, $zero
    lui     $s0, 0x802c
    lui     $s4, 0x8022
    addiu   $s4, $s4, 0x6b84
    addiu   $s0, $s0, 0x7548
    addiu   $s3, $zero, 0xff
branch_0x802c5b08:
    addiu   $a0, $zero, 0x2
    jal     Function_0x801e988c
    lb      $a1, 0x0($s0)
    bne     $v0, $s3, branch_0x802c5b24
    addiu   $s1, $s1, 0x1
    b       branch_0x802c5b2c
    addiu   $v1, $zero, 0xc
branch_0x802c5b24:
    addu    $t4, $s4, $v0
    lbu     $v1, 0x0($t4)
branch_0x802c5b2c:
    lw      $t7, 0x0($s5)
    lw      $t5, 0x0($s2)
    addiu   $s0, $s0, 0x1
    slt     $at, $s1, $t7
    addu    $t6, $t5, $v1
    bnez    $at, branch_0x802c5b08
    sw      $t6, 0x0($s2)
    or      $s1, $zero, $zero
branch_0x802c5b4c:
    lui     $at, 0x3f80
    mtc1    $at, $t8
    lui     $at, 0x4180
    mtc1    $at, $a2
    mtc1    $zero, $s6
    lui     $at, 0x4580
    lui     $a0, 0x801d
    lw      $a0, -0x1ca8($a0)
    mtc1    $at, $t0
    lui     $a1, 0x802c
    mfc1    $a3, $t8
    addiu   $a1, $a1, 0x7530
    lui     $a2, 0x4204
    swc1    $f6, 0x10($sp)
    swc1    $f22, 0x18($sp)
    swc1    $f22, 0x1c($sp)
    addiu   $a0, $a0, 0xa40
    jal     Function_0x80048180
    swc1    $f8, 0x14($sp)
    lui     $at, 0x802c
    lwc1    $f10, 0x750c($at)
    mfc1    $a1, $s6
    mfc1    $a2, $s6
    mfc1    $a3, $t8
    addiu   $a0, $sp, 0xc0
    swc1    $f22, 0x10($sp)
    swc1    $f24, 0x14($sp)
    swc1    $f22, 0x18($sp)
    swc1    $f22, 0x1c($sp)
    swc1    $f22, 0x20($sp)
    swc1    $f22, 0x24($sp)
    jal     Function_0x80048a28
    swc1    $f10, 0x28($sp)
    lui     $at, 0x43fa
    lui     $s6, 0x802c
    lui     $s0, 0x8015
    mtc1    $at, $s4
    addiu   $s0, $s0, 0x40b0
    addiu   $s6, $s6, 0x7050
    or      $s2, $zero, $zero
    addiu   $fp, $zero, 0x4
    addiu   $s7, $sp, 0x80
    addiu   $s5, $sp, 0x104
    addiu   $s4, $sp, 0x184
    addiu   $s3, $sp, 0x144
branch_0x802c5c00:
    lui     $t8, 0x802c
    lw      $t8, 0x7040($t8)
    mfc1    $a3, $s4
    or      $a0, $s7, $zero
    bne     $s1, $t8, branch_0x802c5c68
    or      $a1, $s3, $zero
    lw      $v0, 0x0($s6)
    bgez    $v0, branch_0x802c5c30
    andi    $t9, $v0, 0xfff
    beqz    $t9, branch_0x802c5c30
    nop
    addiu   $t9, $t9, 0xf000
branch_0x802c5c30:
    addiu   $t0, $t9, 0x400
    andi    $t1, $t0, 0xfff
    sll     $t2, $t1, 2
    addu    $t3, $s0, $t2
    lwc1    $f16, 0x0($t3)
    andi    $t4, $t9, 0xfff
    sll     $t5, $t4, 2
    addu    $t6, $s0, $t5
    lwc1    $f18, 0x0($t6)
    mul.s   $f0, $f16, $f20
    nop
    mul.s   $f2, $f18, $f20
    b       branch_0x802c5c80
    nop
branch_0x802c5c68:
    lwc1    $f4, 0x1800($s0)
    lwc1    $f6, 0x800($s0)
    mul.s   $f0, $f4, $f20
    nop
    mul.s   $f2, $f6, $f20
    nop
branch_0x802c5c80:
    mfc1    $a2, $zero
    swc1    $f2, 0x10($sp)
    swc1    $f22, 0x14($sp)
    swc1    $f22, 0x18($sp)
    swc1    $f22, 0x1c($sp)
    swc1    $f22, 0x20($sp)
    swc1    $f24, 0x24($sp)
    jal     Function_0x80048468
    swc1    $f22, 0x28($sp)
    addiu   $a0, $sp, 0xc0
    jal     Function_0x80047e18
    or      $a1, $s4, $zero
    or      $a0, $s3, $zero
    or      $a1, $s4, $zero
    jal     Function_0x80049e58
    or      $a2, $s5, $zero
    lui     $t7, 0x801d
    lw      $t7, -0x1ca8($t7)
    or      $a0, $s5, $zero
    addu    $a1, $t7, $s2
    jal     Function_0x80047e80
    addiu   $a1, $a1, 0xa80
    addiu   $s1, $s1, 0x1
    bne     $s1, $fp, branch_0x802c5c00
    addiu   $s2, $s2, 0x40
    lw      $t8, 0x0($s6)
    addiu   $t9, $t8, 0x30
    slti    $at, $t9, 0x1000
    bnez    $at, branch_0x802c5d00
    sw      $t9, 0x0($s6)
    addiu   $t0, $t9, 0xf000
    sw      $t0, 0x0($s6)
branch_0x802c5d00:
    lw      $ra, 0x74($sp)
    ldc1    $20, 0x38($29)
    ldc1    $22, 0x40($29)
    ldc1    $24, 0x48($29)
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
    addiu   $sp, $sp, 0x1d8


.globl Function_10_0x802c5d3c
Function_10_0x802c5d3c: # 0x802c5d3c
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c5d7c
    lui     $t7, 0x800e
    sw      $zero, 0x0($v0)
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x3e
    bne     $t7, $at, branch_0x802c5d7c
    nop
    jal     Function_0x800939e4
    nop
    b       branch_0x802c5eac
    lw      $ra, 0x14($sp)
branch_0x802c5d7c:
    lui     $at, 0x800e
    or      $v0, $a0, $zero
    sw      $zero, -0x5754($at)
    addiu   $a0, $a0, 0x8
    lui     $t8, 0xe700
    or      $v1, $a0, $zero
    sw      $t8, 0x0($v0)
    sw      $zero, 0x4($v0)
    addiu   $a0, $a0, 0x8
    lui     $t9, 0xed02
    lui     $t0, 0x4d
    ori     $t0, $t0, 0xc36c
    ori     $t9, $t9, 0x50
    or      $a1, $a0, $zero
    sw      $t9, 0x0($v1)
    sw      $t0, 0x4($v1)
    addiu   $a0, $a0, 0x8
    lui     $t1, 0x103
    lui     $t2, 0x700
    addiu   $t2, $t2, 0x0
    ori     $t1, $t1, 0x40
    or      $a2, $a0, $zero
    sw      $t1, 0x0($a1)
    sw      $t2, 0x4($a1)
    addiu   $a0, $a0, 0x8
    lui     $t3, 0x102
    lui     $t4, 0x200
    addiu   $t4, $t4, 0xa40
    ori     $t3, $t3, 0x40
    or      $a3, $a0, $zero
    lui     $t6, 0x107
    sw      $t3, 0x0($a2)
    sw      $t4, 0x4($a2)
    addiu   $t6, $t6, 0xf550
    lui     $t5, 0x600
    sw      $t5, 0x0($a3)
    sw      $t6, 0x4($a3)
    jal     Function_0x8009302c
    addiu   $a0, $a0, 0x8
    lui     $t8, 0xed02
    lui     $t9, 0x4d
    lui     $t7, 0xe700
    ori     $t9, $t9, 0xc36c
    ori     $t8, $t8, 0x50
    sw      $t7, 0x0($v0)
    sw      $zero, 0x4($v0)
    sw      $t8, 0x8($v0)
    sw      $t9, 0xc($v0)
    jal     Function_0x802c63e4
    addiu   $a0, $v0, 0x10
    lui     $t1, 0x806
    addiu   $t1, $t1, 0x2290
    lui     $t0, 0x600
    sw      $t0, 0x0($v0)
    sw      $t1, 0x4($v0)
    lui     $t2, 0x800e
    lw      $t2, -0x575c($t2)
    addiu   $at, $zero, 0x3e
    addiu   $a0, $v0, 0x8
    bne     $t2, $at, branch_0x802c5e80
    lui     $t3, 0x8023
    jal     Function_0x802c5eb8
    sw      $a0, 0x18($sp)
    b       branch_0x802c5ea4
    lw      $a0, 0x18($sp)
branch_0x802c5e80:
    lh      $t3, -0x782a($t3)
    addiu   $at, $zero, 0x1
    bnel    $t3, $at, branch_0x802c5ea8
    or      $v0, $a0, $zero
    jal     Function_0x8007c2bc
    sw      $a0, 0x18($sp)
    jal     Function_0x801ec094_ChangeStateTo3c
    nop
    lw      $a0, 0x18($sp)
branch_0x802c5ea4:
    or      $v0, $a0, $zero
branch_0x802c5ea8:
    lw      $ra, 0x14($sp)
branch_0x802c5eac:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5eb8
Function_0x802c5eb8: # 0x802c5eb8
    lui     $v1, 0x801d
    lhu     $v1, -0x1c46($v1)
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x14($sp)
    andi    $t6, $v1, 0xb000
    beqz    $t6, branch_0x802c5f98
    or      $t2, $zero, $zero
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe3a0
    lw      $v0, 0x0($a1)
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7538
    beqz    $v0, branch_0x802c5f04
    addiu   $t7, $zero, 0x1
    addiu   $at, $zero, 0x1
    beq     $v0, $at, branch_0x802c5f2c
    andi    $t9, $v1, 0xa000
    b       branch_0x802c5f80
    nop
branch_0x802c5f04:
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x753c
    addiu   $t2, $zero, 0x1
    sw      $t7, 0x0($a1)
    sw      $zero, 0x0($v0)
    sw      $zero, 0x0($a0)
    jal     Function_0x802c6d58
    sw      $t2, 0x1c($sp)
    b       branch_0x802c5f80
    lw      $t2, 0x1c($sp)
branch_0x802c5f2c:
    lui     $at, 0x802c
    addiu   $t2, $zero, 0x1
    beqz    $t9, branch_0x802c5f4c
    sw      $zero, 0x756c($at)
    jal     Function_0x802c6adc
    sw      $t2, 0x1c($sp)
    b       branch_0x802c5f64
    lw      $t2, 0x1c($sp)
branch_0x802c5f4c:
    andi    $t4, $v1, 0x1000
    beqz    $t4, branch_0x802c5f64
    nop
    jal     Function_0x802c6e00
    sw      $t2, 0x1c($sp)
    lw      $t2, 0x1c($sp)
branch_0x802c5f64:
    lui     $t5, 0x802c
    lw      $t5, 0x756c($t5)
    beqz    $t5, branch_0x802c5f80
    nop
    jal     Function_0x802c6f4c
    sw      $t2, 0x1c($sp)
    lw      $t2, 0x1c($sp)
branch_0x802c5f80:
    beqz    $t2, branch_0x802c63d4
    addiu   $a0, $zero, 0x11
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c63d8
    lw      $ra, 0x14($sp)
branch_0x802c5f98:
    andi    $t6, $v1, 0x4000
    beqz    $t6, branch_0x802c6008
    andi    $t7, $v1, 0x800
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe3a0
    lw      $v0, 0x0($a1)
    addiu   $at, $zero, 0x1
    beqzl   $v0, branch_0x802c5fd0
    addiu   $t2, $zero, 0x1
    beql    $v0, $at, branch_0x802c5fe4
    addiu   $t2, $zero, 0x1
    b       branch_0x802c5ff0
    nop

Function_0x802c5fcc: # 0x802c5fcc
    addiu   $t2, $zero, 0x1
branch_0x802c5fd0:
    jal     Function_0x802c6f4c
    sw      $t2, 0x1c($sp)
    b       branch_0x802c5ff0
    lw      $t2, 0x1c($sp)

.globl Function_0x802c5fe0
Function_0x802c5fe0: # 0x802c5fe0
    addiu   $t2, $zero, 0x1
branch_0x802c5fe4:
    jal     Function_0x802c6da8
    sw      $t2, 0x1c($sp)
    lw      $t2, 0x1c($sp)
branch_0x802c5ff0:
    beqz    $t2, branch_0x802c63d4
    addiu   $a0, $zero, 0x16
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c63d8
    lw      $ra, 0x14($sp)
branch_0x802c6008:
    beqz    $t7, branch_0x802c60f0
    andi    $t4, $v1, 0x400
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe3a0
    lw      $t8, 0x0($a1)
    addiu   $at, $zero, 0x1
    lui     $v0, 0x802c
    bne     $t8, $at, branch_0x802c60d8
    addiu   $v0, $v0, 0x753c
    lw      $t0, 0x0($v0)
    lui     $t3, 0x802c
    addiu   $t3, $t3, 0x7540
    addiu   $t9, $t0, 0xffff
    sw      $t0, 0x0($t3)
    addiu   $t2, $zero, 0x1
    sw      $t9, 0x0($v0)
    bgez    $t9, branch_0x802c6058
    or      $t0, $t9, $zero
    addiu   $t0, $zero, 0x5
    sw      $t0, 0x0($v0)
branch_0x802c6058:
    sll     $a3, $t0, 3
    lui     $a1, 0x802c
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7538
    addiu   $a1, $a1, 0x7054
    subu    $a3, $a3, $t0
    addiu   $a2, $zero, 0x1c
branch_0x802c6074:
    lw      $v1, 0x0($a0)
    addu    $v0, $a3, $v1
    multu   $v0, $a2
    addiu   $t8, $v1, 0xffff
    mflo    $t4
    addu    $t5, $a1, $t4
    lbu     $t6, 0x0($t5)
    andi    $t7, $t6, 0x1
    bnezl   $t7, branch_0x802c60a8
    lw      $t9, 0x0($t3)
    b       branch_0x802c6074
    sw      $t8, 0x0($a0)

.globl Function_0x802c60a4
Function_0x802c60a4: # 0x802c60a4
    lw      $t9, 0x0($t3)
branch_0x802c60a8:
    addiu   $at, $zero, 0x4
    bne     $t9, $at, branch_0x802c60d8
    addiu   $at, $zero, 0x3
    bne     $t0, $at, branch_0x802c60d8
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x704c
    lw      $v0, 0x0($a2)
    addiu   $a1, $zero, 0xffff
    beq     $a1, $v0, branch_0x802c60d8
    nop
    sw      $v0, 0x0($a0)
    sw      $a1, 0x0($a2)
branch_0x802c60d8:
    beqz    $t2, branch_0x802c63d4
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c63d8
    lw      $ra, 0x14($sp)
branch_0x802c60f0:
    beqz    $t4, branch_0x802c61f0
    andi    $t9, $v1, 0x200
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe3a0
    lw      $t5, 0x0($a1)
    addiu   $at, $zero, 0x1
    lui     $v0, 0x802c
    bne     $t5, $at, branch_0x802c61d8
    addiu   $v0, $v0, 0x753c
    lw      $t0, 0x0($v0)
    lui     $t3, 0x802c
    addiu   $t3, $t3, 0x7540
    addiu   $t6, $t0, 0x1
    slti    $at, $t6, 0x6
    sw      $t0, 0x0($t3)
    addiu   $t2, $zero, 0x1
    sw      $t6, 0x0($v0)
    bnez    $at, branch_0x802c6144
    or      $t0, $t6, $zero
    sw      $zero, 0x0($v0)
    or      $t0, $zero, $zero
branch_0x802c6144:
    lw      $t7, 0x0($t3)
    addiu   $at, $zero, 0x3
    sll     $a3, $t0, 3
    bne     $t7, $at, branch_0x802c6178
    subu    $a3, $a3, $t0
    addiu   $at, $zero, 0x4
    bne     $t0, $at, branch_0x802c6178
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7538
    lw      $t8, 0x0($a0)
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x704c
    sw      $t8, 0x0($a2)
branch_0x802c6178:
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7538
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x7054
    lw      $v1, 0x0($a0)
    addiu   $t1, $zero, 0x5
    addiu   $a2, $zero, 0x1c
branch_0x802c6194:
    addu    $v0, $a3, $v1
    multu   $v0, $a2
    addiu   $t7, $v1, 0x1
    addiu   $t8, $v1, 0xffff
    mflo    $t9
    addu    $t4, $a1, $t9
    lbu     $t5, 0x0($t4)
    andi    $t6, $t5, 0x1
    bnez    $t6, branch_0x802c61d8
    nop
    bnel    $t1, $t0, branch_0x802c61d0
    sw      $t8, 0x0($a0)
    b       branch_0x802c61d0
    sw      $t7, 0x0($a0)

.globl Function_0x802c61cc
Function_0x802c61cc: # 0x802c61cc
    sw      $t8, 0x0($a0)
branch_0x802c61d0:
    b       branch_0x802c6194
    lw      $v1, 0x0($a0)
branch_0x802c61d8:
    beqz    $t2, branch_0x802c63d4
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c63d8
    lw      $ra, 0x14($sp)
branch_0x802c61f0:
    beqz    $t9, branch_0x802c62e4
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe3a0
    lw      $v0, 0x0($a1)
    addiu   $t8, $zero, 0x200
    lui     $at, 0x802c
    beqz    $v0, branch_0x802c6224
    nop
    addiu   $at, $zero, 0x1
    beq     $v0, $at, branch_0x802c6250
    addiu   $a1, $zero, 0xffff
    b       branch_0x802c62cc
    nop
branch_0x802c6224:
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x7040
    lw      $t4, 0x0($v0)
    addiu   $t2, $zero, 0x1
    addiu   $t7, $zero, 0x3
    addiu   $t5, $t4, 0xffff
    bgez    $t5, branch_0x802c6248
    sw      $t5, 0x0($v0)
    sw      $t7, 0x0($v0)
branch_0x802c6248:
    b       branch_0x802c62cc
    sw      $t8, 0x7050($at)
branch_0x802c6250:
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x704c
    sw      $a1, 0x0($a2)
    lui     $a3, 0x802c
    lw      $a3, 0x753c($a3)
    lui     $a1, 0x802c
    lui     $v1, 0x802c
    sll     $t9, $a3, 3
    lui     $a0, 0x802c
    subu    $t9, $t9, $a3
    addiu   $t2, $zero, 0x1
    or      $a3, $t9, $zero
    addiu   $a0, $a0, 0x7538
    lw      $v1, 0x7538($v1)
    addiu   $a1, $a1, 0x7054
    addiu   $a2, $zero, 0x1c
    addiu   $t0, $zero, 0x6
    addiu   $t4, $v1, 0xffff
branch_0x802c6298:
    sw      $t4, 0x0($a0)
    bgez    $t4, branch_0x802c62ac
    or      $v1, $t4, $zero
    sw      $t0, 0x0($a0)
    or      $v1, $t0, $zero
branch_0x802c62ac:
    addu    $v0, $a3, $v1
    multu   $v0, $a2
    mflo    $t5
    addu    $t6, $a1, $t5
    lbu     $t7, 0x0($t6)
    andi    $t8, $t7, 0x1
    beqzl   $t8, branch_0x802c6298
    addiu   $t4, $v1, 0xffff
branch_0x802c62cc:
    beqz    $t2, branch_0x802c63d4
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c63d8
    lw      $ra, 0x14($sp)
branch_0x802c62e4:
    andi    $t9, $v1, 0x100
    beqz    $t9, branch_0x802c63d4
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe3a0
    lw      $v0, 0x0($a1)
    addiu   $at, $zero, 0x1
    addiu   $t7, $zero, 0x200
    beqz    $v0, branch_0x802c6318
    nop
    beq     $v0, $at, branch_0x802c6348
    addiu   $a1, $zero, 0xffff
    b       branch_0x802c63c4
    nop
branch_0x802c6318:
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x7040
    lw      $t4, 0x0($v0)
    addiu   $t2, $zero, 0x1
    addiu   $t5, $t4, 0x1
    slti    $at, $t5, 0x4
    bnez    $at, branch_0x802c633c
    sw      $t5, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x802c633c:
    lui     $at, 0x802c
    b       branch_0x802c63c4
    sw      $t7, 0x7050($at)
branch_0x802c6348:
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x704c
    sw      $a1, 0x0($a2)
    lui     $a3, 0x802c
    lw      $a3, 0x753c($a3)
    lui     $a1, 0x802c
    lui     $v1, 0x802c
    sll     $t8, $a3, 3
    lui     $a0, 0x802c
    subu    $t8, $t8, $a3
    addiu   $t2, $zero, 0x1
    or      $a3, $t8, $zero
    addiu   $a0, $a0, 0x7538
    lw      $v1, 0x7538($v1)
    addiu   $a1, $a1, 0x7054
    addiu   $a2, $zero, 0x1c
    addiu   $t9, $v1, 0x1
branch_0x802c638c:
    slti    $at, $t9, 0x7
    sw      $t9, 0x0($a0)
    bnez    $at, branch_0x802c63a4
    or      $v1, $t9, $zero
    sw      $zero, 0x0($a0)
    or      $v1, $zero, $zero
branch_0x802c63a4:
    addu    $v0, $a3, $v1
    multu   $v0, $a2
    mflo    $t4
    addu    $t5, $a1, $t4
    lbu     $t6, 0x0($t5)
    andi    $t7, $t6, 0x1
    beqzl   $t7, branch_0x802c638c
    addiu   $t9, $v1, 0x1
branch_0x802c63c4:
    beqz    $t2, branch_0x802c63d4
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c63d4:
    lw      $ra, 0x14($sp)
branch_0x802c63d8:
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x802c63e4
Function_0x802c63e4: # 0x802c63e4
    addiu   $sp, $sp, 0xffa8
    sw      $s0, 0x40($sp)
    sw      $ra, 0x54($sp)
    sw      $s4, 0x50($sp)
    sw      $s3, 0x4c($sp)
    sw      $s2, 0x48($sp)
    sw      $s1, 0x44($sp)
    lui     $t6, 0x806
    lui     $s0, 0x600
    addiu   $t6, $t6, 0x1e50
    sw      $t6, 0x4($a0)
    sw      $s0, 0x0($a0)
    addiu   $v1, $a0, 0x8
    lui     $t7, 0x107
    addiu   $t7, $t7, 0xf628
    sw      $t7, 0x4($v1)
    sw      $s0, 0x0($v1)
    addiu   $t8, $zero, 0x109
    addiu   $t9, $zero, 0x17
    addiu   $a0, $v1, 0x8
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1b
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x16
    addiu   $t1, $zero, 0x82
    addiu   $t2, $zero, 0x10
    sw      $t2, 0x14($sp)
    sw      $t1, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1b
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x60
    addiu   $t3, $zero, 0x43
    addiu   $t4, $zero, 0xe
    sw      $t4, 0x14($sp)
    sw      $t3, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x21
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xb0
    addiu   $t5, $zero, 0x32
    addiu   $t6, $zero, 0xe
    sw      $t6, 0x14($sp)
    sw      $t5, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x65
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xb0
    addiu   $t7, $zero, 0x43
    addiu   $t8, $zero, 0xe
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x21
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xc0
    addiu   $t9, $zero, 0x21
    addiu   $t1, $zero, 0xe
    sw      $t1, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x76
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xc0
    lui     $t2, 0x806
    addiu   $t2, $t2, 0x1fb0
    lui     $t3, 0xb400
    sw      $t2, 0x4($v0)
    sw      $s0, 0x0($v0)
    sw      $t3, 0x8($v0)
    lui     $t4, 0x802c
    lhu     $t4, 0x7530($t4)
    lui     $s1, 0x102
    lui     $t5, 0x103
    lui     $t6, 0x700
    lui     $t7, 0x107
    lui     $t8, 0x806
    lui     $t9, 0x700
    ori     $s1, $s1, 0x40
    lui     $s2, 0x801d
    addiu   $t6, $t6, 0xa40
    ori     $t5, $t5, 0x40
    addiu   $t7, $t7, 0xf488
    addiu   $t8, $t8, 0x1f70
    addiu   $t9, $t9, 0xa80
    addiu   $s2, $s2, 0xe358
    sw      $t5, 0x10($v0)
    sw      $t6, 0x14($v0)
    sw      $t7, 0x1c($v0)
    sw      $s0, 0x18($v0)
    sw      $t8, 0x24($v0)
    sw      $s0, 0x20($v0)
    sw      $t9, 0x2c($v0)
    sw      $s1, 0x28($v0)
    sw      $t4, 0xc($v0)
    lw      $t1, 0x0($s2)
    addiu   $a0, $v0, 0x30
    or      $a1, $zero, $zero
    addiu   $t2, $t1, 0xc80
    sw      $t2, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    lui     $t3, 0x806
    lui     $t4, 0x700
    addiu   $t3, $t3, 0x1f80
    addiu   $t4, $t4, 0xac0
    sw      $t3, 0x4($v0)
    sw      $s0, 0x0($v0)
    sw      $t4, 0xc($v0)
    sw      $s1, 0x8($v0)
    lw      $t5, 0x0($s2)
    addiu   $a0, $v0, 0x10
    addiu   $a1, $zero, 0x2
    addiu   $t6, $t5, 0xd40
    sw      $t6, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    lui     $t7, 0x806
    lui     $t8, 0x700
    addiu   $t7, $t7, 0x1f90
    addiu   $t8, $t8, 0xb00
    sw      $t7, 0x4($v0)
    sw      $s0, 0x0($v0)
    sw      $t8, 0xc($v0)
    sw      $s1, 0x8($v0)
    lw      $t9, 0x0($s2)
    addiu   $a0, $v0, 0x10
    addiu   $a1, $zero, 0x3
    addiu   $t1, $t9, 0xe00
    sw      $t1, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    lui     $t2, 0x806
    lui     $t3, 0x700
    addiu   $t2, $t2, 0x1fa0
    addiu   $t3, $t3, 0xb40
    sw      $t2, 0x4($v0)
    sw      $s0, 0x0($v0)
    sw      $t3, 0xc($v0)
    sw      $s1, 0x8($v0)
    lw      $t4, 0x0($s2)
    addiu   $a0, $v0, 0x10
    addiu   $a1, $zero, 0x1
    addiu   $t5, $t4, 0xec0
    sw      $t5, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    lui     $t6, 0x806
    addiu   $t6, $t6, 0x1ec0
    lui     $t7, 0xfa00
    sw      $t6, 0x4($v0)
    sw      $s0, 0x0($v0)
    sw      $t7, 0x8($v0)
    lui     $v1, 0x802c
    lw      $v1, 0x7534($v1)
    lui     $at, 0xff
    lui     $s1, 0x802c
    andi    $t8, $v1, 0xff
    sll     $t9, $t8, 24
    or      $t1, $t9, $at
    sll     $t2, $t8, 8
    or      $t3, $t1, $t2
    ori     $t4, $t3, 0xff
    addiu   $s1, $s1, 0x7040
    sw      $t4, 0xc($v0)
    lw      $t5, 0x0($s1)
    lui     $t0, 0x802c
    addiu   $t0, $t0, 0x74f0
    sll     $t6, $t5, 1
    addu    $t7, $t0, $t6
    lh      $t8, 0x0($t7)
    lui     $at, 0xe400
    addiu   $a0, $v0, 0x28
    addiu   $t9, $t8, 0x47
    sll     $t1, $t9, 2
    andi    $t2, $t1, 0xfff
    sll     $t3, $t2, 12
    or      $t4, $t3, $at
    ori     $t5, $t4, 0x160
    sw      $t5, 0x10($v0)
    lw      $t6, 0x0($s1)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    sll     $t7, $t6, 1
    addu    $t8, $t0, $t7
    lh      $t9, 0x0($t8)
    lui     $t8, 0x400
    ori     $t8, $t8, 0x400
    addiu   $t1, $t9, 0x8
    sll     $t2, $t1, 2
    andi    $t3, $t2, 0xfff
    sll     $t4, $t3, 12
    ori     $t5, $t4, 0xc0
    lui     $t7, 0xb200
    lui     $t6, 0xb300
    sw      $t6, 0x18($v0)
    sw      $t7, 0x20($v0)
    sw      $t5, 0x14($v0)
    sw      $t8, 0x24($v0)
    sw      $zero, 0x1c($v0)
    addiu   $t8, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x10($sp)
    sw      $t9, 0x34($sp)
    sw      $t1, 0x14($sp)
    sw      $t2, 0x18($sp)
    sw      $t3, 0x1c($sp)
    sw      $t4, 0x20($sp)
    sw      $t6, 0x28($sp)
    sw      $t7, 0x2c($sp)
    sw      $t5, 0x24($sp)
    sw      $t8, 0x30($sp)
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    addiu   $t1, $zero, 0x18
    sw      $t1, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x6
    addiu   $a3, $zero, 0x43
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lw      $t2, 0x0($s1)
    lui     $t4, 0x802c
    lui     $t6, 0x801d
    sll     $t3, $t2, 2
    addu    $t4, $t4, $t3
    lw      $t4, 0x74f8($t4)
    addiu   $t6, $t6, 0xaff8
    addiu   $t7, $zero, 0xcb
    sll     $t5, $t4, 3
    subu    $t5, $t5, $t4
    sll     $t5, $t5, 1
    addu    $a2, $t5, $t6
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e95e0
    addiu   $a3, $zero, 0xb4
    lui     $a2, 0x802c
    addiu   $t8, $zero, 0x62
    sw      $t8, 0x10($sp)
    addiu   $a2, $a2, 0x7548
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e95e0
    addiu   $a3, $zero, 0x1f
    lui     $s0, 0x802c
    or      $s2, $v0, $zero
    addiu   $s0, $s0, 0x7054
    or      $s1, $zero, $zero
    addiu   $s4, $zero, 0x1
    addiu   $s3, $zero, 0x7
branch_0x802c6820:
    lbu     $v0, 0x0($s0)
    lui     $t1, 0x801d
    andi    $t9, $v0, 0x2
    beqzl   $t9, branch_0x802c6914
    addiu   $s1, $s1, 0x1
    lw      $t1, -0x1c60($t1)
    andi    $t5, $v0, 0x8
    bne     $s4, $t1, branch_0x802c6868
    nop
    lui     $t2, 0x802c
    lw      $t2, 0x753c($t2)
    lui     $t4, 0x802c
    lw      $t4, 0x7538($t4)
    multu   $t2, $s3
    mflo    $t3
    addu    $v1, $t3, $t4
    beql    $s1, $v1, branch_0x802c6914
    addiu   $s1, $s1, 0x1
branch_0x802c6868:
    beqz    $t5, branch_0x802c687c
    andi    $t3, $v0, 0x4
    lh      $a3, 0x4($s0)
    b       branch_0x802c68d4
    lh      $t0, 0x6($s0)
branch_0x802c687c:
    div     $zero, $s1, $s3
    lh      $t6, 0x4($s0)
    lh      $t9, 0x6($s0)
    mfhi    $t7
    mflo    $t1
    sll     $t8, $t7, 4
    sll     $t2, $t1, 4
    addu    $t8, $t8, $t7
    subu    $t2, $t2, $t1
    addu    $a3, $t6, $t8
    addu    $t0, $t9, $t2
    addiu   $a3, $a3, 0x21
    bnez    $s3, branch_0x802c68b8
    nop
    break   0x7
branch_0x802c68b8:
    addiu   $at, $zero, 0xffff
    bne     $s3, $at, branch_0x802c68d0
    lui     $at, 0x8000
    bne     $s1, $at, branch_0x802c68d0
    nop
    break   0x6
branch_0x802c68d0:
    addiu   $t0, $t0, 0x74
branch_0x802c68d4:
    beqz    $t3, branch_0x802c68fc
    or      $a0, $s2, $zero
    lw      $a2, 0x18($s0)
    sw      $zero, 0x14($sp)
    sw      $t0, 0x10($sp)
    or      $a0, $s2, $zero
    jal     Function_0x801e3c40_DrawCourseNames
    or      $a1, $zero, $zero
    b       branch_0x802c6910
    or      $s2, $v0, $zero
branch_0x802c68fc:
    lhu     $a1, 0x2($s0)
    sw      $t0, 0x10($sp)
    jal     Function_0x801e95e0
    addiu   $a2, $s0, 0xc
    or      $s2, $v0, $zero
branch_0x802c6910:
    addiu   $s1, $s1, 0x1
branch_0x802c6914:
    addiu   $at, $zero, 0x2a
    bne     $s1, $at, branch_0x802c6820
    addiu   $s0, $s0, 0x1c
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    sw      $t3, 0x30($sp)
    sw      $t2, 0x2c($sp)
    sw      $t9, 0x28($sp)
    sw      $t1, 0x24($sp)
    sw      $t8, 0x20($sp)
    sw      $t6, 0x1c($sp)
    sw      $t7, 0x18($sp)
    sw      $t5, 0x14($sp)
    sw      $t4, 0x10($sp)
    sw      $t4, 0x34($sp)
    or      $a0, $s2, $zero
    addiu   $a1, $zero, 0x6
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lui     $v1, 0x801d
    lw      $v1, -0x1c60($v1)
    or      $s2, $v0, $zero
    lui     $t5, 0x802c
    bne     $s4, $v1, branch_0x802c6a88
    nop
    lw      $t5, 0x753c($t5)
    lui     $t6, 0x802c
    lw      $t6, 0x7538($t6)
    multu   $t5, $s3
    lui     $t1, 0x802c
    addiu   $t1, $t1, 0x7054
    or      $a1, $zero, $zero
    mflo    $t7
    addu    $v1, $t7, $t6
    sll     $t8, $v1, 3
    subu    $t8, $t8, $v1
    sll     $t8, $t8, 2
    addu    $v0, $t8, $t1
    lbu     $a0, 0x0($v0)
    addiu   $a2, $v0, 0xc
    andi    $t9, $a0, 0x8
    beqz    $t9, branch_0x802c69ec
    andi    $t8, $a0, 0x4
    lh      $a3, 0x4($v0)
    b       branch_0x802c6a44
    lh      $t0, 0x6($v0)
branch_0x802c69ec:
    div     $zero, $v1, $s3
    lh      $t2, 0x4($v0)
    lh      $t5, 0x6($v0)
    mfhi    $t3
    mflo    $t7
    sll     $t4, $t3, 4
    sll     $t6, $t7, 4
    addu    $t4, $t4, $t3
    subu    $t6, $t6, $t7
    addu    $a3, $t2, $t4
    addu    $t0, $t5, $t6
    addiu   $a3, $a3, 0x21
    bnez    $s3, branch_0x802c6a28
    nop
    break   0x7
branch_0x802c6a28:
    addiu   $at, $zero, 0xffff
    bne     $s3, $at, branch_0x802c6a40
    lui     $at, 0x8000
    bne     $v1, $at, branch_0x802c6a40
    nop
    break   0x6
branch_0x802c6a40:
    addiu   $t0, $t0, 0x74
branch_0x802c6a44:
    beqz    $t8, branch_0x802c6a70
    or      $a0, $s2, $zero
    or      $a0, $s2, $zero
    lw      $a2, 0x18($v0)
    sw      $t0, 0x10($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lui     $v1, 0x801d
    lw      $v1, -0x1c60($v1)
    b       branch_0x802c6a88
    or      $s2, $v0, $zero
branch_0x802c6a70:
    lhu     $a1, 0x2($v0)
    jal     Function_0x801e95e0
    sw      $t0, 0x10($sp)
    lui     $v1, 0x801d
    lw      $v1, -0x1c60($v1)
    or      $s2, $v0, $zero
branch_0x802c6a88:
    bne     $s4, $v1, branch_0x802c6ab8
    or      $a0, $s2, $zero
    lui     $a3, 0x802c
    lw      $a3, 0x7568($a3)
    lui     $a2, 0x802c
    addiu   $t1, $zero, 0x62
    sw      $t1, 0x10($sp)
    addiu   $a2, $a2, 0x7508
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e95e0
    addiu   $a3, $a3, 0x1f
    or      $s2, $v0, $zero
branch_0x802c6ab8:
    lw      $ra, 0x54($sp)
    or      $v0, $s2, $zero
    lw      $s2, 0x48($sp)
    lw      $s0, 0x40($sp)
    lw      $s1, 0x44($sp)
    lw      $s3, 0x4c($sp)
    lw      $s4, 0x50($sp)
    jr      $ra
    addiu   $sp, $sp, 0x58


Function_0x802c6adc: # 0x802c6adc
    lui     $t6, 0x802c
    lw      $t6, 0x753c($t6)
    lui     $t8, 0x802c
    lw      $t8, 0x7538($t8)
    sll     $t7, $t6, 3
    subu    $t7, $t7, $t6
    addu    $v0, $t7, $t8
    sll     $t9, $v0, 3
    subu    $t9, $t9, $v0
    lui     $t0, 0x802c
    addiu   $t0, $t0, 0x7054
    sll     $t9, $t9, 2
    addu    $a3, $t9, $t0
    lbu     $t1, 0x1($a3)
    addiu   $sp, $sp, 0xffc8
    sw      $ra, 0x14($sp)
    sltiu   $at, $t1, 0x8
    beqz    $at, branch_0x802c6d48
    sll     $t1, $t1, 2
    lui     $at, 0x802c
    addu    $at, $at, $t1
    lw      $t1, 0x7510($at)
    jr      $t1
    nop

.globl Function_0x802c6b3c
Function_0x802c6b3c: # 0x802c6b3c
    addiu   $v1, $zero, 0x1
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7548
    sw      $v1, 0x30($sp)
    jal     Function_0x80093f70
    sw      $a3, 0x1c($sp)
    slti    $at, $v0, 0xa
    lw      $v1, 0x30($sp)
    bnez    $at, branch_0x802c6b6c
    lw      $a3, 0x1c($sp)
    b       branch_0x802c6b98
    or      $v1, $zero, $zero
branch_0x802c6b6c:
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7548
    addiu   $a1, $zero, 0x2
    sw      $v1, 0x30($sp)
    jal     Function_0x802c6eb8
    sw      $a3, 0x1c($sp)
    slti    $at, $v0, 0x77
    lw      $v1, 0x30($sp)
    bnez    $at, branch_0x802c6b98
    lw      $a3, 0x1c($sp)
    or      $v1, $zero, $zero
branch_0x802c6b98:
    beqz    $v1, branch_0x802c6d48
    lui     $a0, 0x802c
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x7558
    addiu   $a0, $a0, 0x7548
    addiu   $a2, $zero, 0xb
    jal     Function_0x802c6fd4
    sw      $a3, 0x1c($sp)
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x7564
    lw      $a1, 0x0($a2)
    lui     $t2, 0x802c
    lw      $a3, 0x1c($sp)
    addiu   $a0, $a1, 0x1
    slti    $at, $a0, 0xb
    beqz    $at, branch_0x802c6c0c
    addiu   $t2, $t2, 0x7548
    lui     $t3, 0x802c
    addiu   $t3, $t3, 0x7558
    addu    $v0, $a0, $t3
    addu    $v1, $a0, $t2
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7563
branch_0x802c6bf4:
    lb      $t4, -0x1($v0)
    addiu   $v0, $v0, 0x1
    sltu    $at, $v0, $a0
    addiu   $v1, $v1, 0x1
    bnez    $at, branch_0x802c6bf4
    sb      $t4, -0x1($v1)
branch_0x802c6c0c:
    lbu     $t5, 0x1($a3)
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7548
    addiu   $at, $zero, 0x3
    bne     $t5, $at, branch_0x802c6c30
    addu    $v0, $a0, $a1
    addiu   $t6, $zero, 0x20
    b       branch_0x802c6c38
    sb      $t6, 0x0($v0)
branch_0x802c6c30:
    lb      $t7, 0xc($a3)
    sb      $t7, 0x0($v0)
branch_0x802c6c38:
    jal     Function_0x802c6eb8
    addiu   $a1, $zero, 0x2
    lui     $a2, 0x802c
    slti    $at, $v0, 0x7c
    bnez    $at, branch_0x802c6c70
    addiu   $a2, $a2, 0x7564
    lui     $a0, 0x802c
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x7548
    addiu   $a0, $a0, 0x7558
    jal     Function_0x802c6fd4
    addiu   $a2, $zero, 0xb
    b       branch_0x802c6d4c
    lw      $ra, 0x14($sp)
branch_0x802c6c70:
    lw      $a1, 0x0($a2)
    lui     $t8, 0x802c
    addu    $t8, $t8, $a1
    lb      $t8, 0x7558($t8)
    addiu   $t9, $a1, 0x1
    bnezl   $t8, branch_0x802c6d4c
    lw      $ra, 0x14($sp)
    b       branch_0x802c6d48
    sw      $t9, 0x0($a2)

.globl Function_0x802c6c94
Function_0x802c6c94: # 0x802c6c94
    jal     Function_0x802c6d58
    nop
    b       branch_0x802c6d4c
    lw      $ra, 0x14($sp)

.globl Function_0x802c6ca4
Function_0x802c6ca4: # 0x802c6ca4
    jal     Function_0x802c6da8
    nop
    b       branch_0x802c6d4c
    lw      $ra, 0x14($sp)

.globl Function_0x802c6cb4
Function_0x802c6cb4: # 0x802c6cb4
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x7564
    lw      $a1, 0x0($a2)
    lui     $t0, 0x802c
    addu    $t0, $t0, $a1
    lb      $t0, 0x7548($t0)
    slti    $at, $a1, 0xa
    beqzl   $t0, branch_0x802c6d4c
    lw      $ra, 0x14($sp)
    beqz    $at, branch_0x802c6d48
    addiu   $t1, $a1, 0x1
    b       branch_0x802c6d48
    sw      $t1, 0x0($a2)

.globl Function_0x802c6ce8
Function_0x802c6ce8: # 0x802c6ce8
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x7564
    lw      $a1, 0x0($a2)
    blez    $a1, branch_0x802c6d48
    addiu   $t2, $a1, 0xffff
    b       branch_0x802c6d48
    sw      $t2, 0x0($a2)

.globl Function_0x802c6d04
Function_0x802c6d04: # 0x802c6d04
    lui     $t3, 0x802c
    lw      $t3, 0x7040($t3)
    lui     $t5, 0x802c
    lui     $t7, %hi(String_DriverNames)
    sll     $t4, $t3, 2
    addu    $t5, $t5, $t4
    lw      $t5, 0x74f8($t5)
    addiu   $t7, $t7, %lo(String_DriverNames)
    sll     $t6, $t5, 3
    subu    $t6, $t6, $t5
    sll     $t6, $t6, 1
    jal     Function_0x802c6e68
    addu    $a0, $t6, $t7
    b       branch_0x802c6d4c
    lw      $ra, 0x14($sp)

.globl Function_0x802c6d40
Function_0x802c6d40: # 0x802c6d40
    jal     Function_0x802c6e00
    nop
branch_0x802c6d48:
    lw      $ra, 0x14($sp)
branch_0x802c6d4c:
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop

.globl Function_0x802c6d58
Function_0x802c6d58: # 0x802c6d58
    lui     $at, 0x802c
    sw      $zero, 0x7564($at)
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x7549
    lui     $at, 0x802c
    sb      $zero, 0x7548($at)
    sb      $zero, 0x1($v1)
    sb      $zero, 0x0($v1)
    addiu   $v1, $v1, 0x2
    addiu   $v0, $zero, 0x3
    addiu   $a0, $zero, 0xb
branch_0x802c6d84:
    addiu   $v0, $v0, 0x4
    sb      $zero, 0x0($v1)
    sb      $zero, 0x1($v1)
    sb      $zero, 0x2($v1)
    sb      $zero, 0x3($v1)
    bne     $v0, $a0, branch_0x802c6d84
    addiu   $v1, $v1, 0x4
    jr      $ra
    nop

.globl Function_0x802c6da8
Function_0x802c6da8: # 0x802c6da8
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x7564
    lw      $v0, 0x0($a2)
    lui     $a3, 0x802c
    addiu   $a3, $a3, 0x7548
    blez    $v0, branch_0x802c6df8
    addu    $v1, $a3, $v0
    addiu   $t6, $v0, 0xffff
    sw      $t6, 0x0($a2)
    lb      $a1, 0x0($v1)
    addu    $a0, $a3, $t6
    beqzl   $a1, branch_0x802c6df8
    sb      $zero, 0x0($a0)
    sb      $a1, 0x0($a0)
branch_0x802c6de0:
    lb      $a1, 0x1($v1)
    addiu   $a0, $a0, 0x1
    addiu   $v1, $v1, 0x1
    bnezl   $a1, branch_0x802c6de0
    sb      $a1, 0x0($a0)
    sb      $zero, 0x0($a0)
branch_0x802c6df8:
    jr      $ra
    nop

.globl Function_0x802c6e00
Function_0x802c6e00: # 0x802c6e00
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7548
    lb      $t6, 0x0($a0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c6e50
    lui     $t7, 0x802c
    lw      $t7, 0x7040($t7)
    lui     $t9, 0x802c
    lui     $t1, 0x801d
    sll     $t8, $t7, 2
    addu    $t9, $t9, $t8
    lw      $t9, 0x74f8($t9)
    addiu   $t1, $t1, 0xaff8
    addiu   $a2, $zero, 0xb
    sll     $t0, $t9, 3
    subu    $t0, $t0, $t9
    sll     $t0, $t0, 1
    jal     Function_0x802c6fd4
    addu    $a1, $t0, $t1
branch_0x802c6e50:
    lw      $ra, 0x14($sp)
    addiu   $t2, $zero, 0x1
    lui     $at, 0x802c
    sw      $t2, 0x756c($at)
    jr      $ra
    addiu   $sp, $sp, 0x18

.globl Function_0x802c6e68
Function_0x802c6e68: # 0x802c6e68
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x7548
    jal     Function_0x802c6fd4
    addiu   $a2, $zero, 0xb
    lui     $a0, 0x802c
    jal     Function_0x80093f70
    addiu   $a0, $a0, 0x7548
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x7564
    slti    $at, $v0, 0x9
    bnez    $at, branch_0x802c6ea8
    sw      $v0, 0x0($v1)
    addiu   $t7, $zero, 0x9
    sw      $t7, 0x0($v1)
branch_0x802c6ea8:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c6eb8
Function_0x802c6eb8: # 0x802c6eb8
    addiu   $sp, $sp, 0xffd0
    sw      $ra, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    lb      $t6, 0x0($a0)
    or      $s4, $a1, $zero
    or      $s1, $zero, $zero
    beqz    $t6, branch_0x802c6f28
    or      $s0, $a0, $zero
    lui     $s3, 0x8022
    addiu   $s3, $s3, 0x6b84
    lb      $a1, 0x0($a0)
    addiu   $s2, $zero, 0xff
branch_0x802c6ef8:
    jal     Function_0x801e988c
    or      $a0, $s4, $zero
    bne     $v0, $s2, branch_0x802c6f10
    addu    $t7, $s3, $v0
    b       branch_0x802c6f14
    addiu   $v1, $zero, 0xc
branch_0x802c6f10:
    lbu     $v1, 0x0($t7)
branch_0x802c6f14:
    lb      $a1, 0x1($s0)
    addu    $s1, $s1, $v1
    addiu   $s0, $s0, 0x1
    bnez    $a1, branch_0x802c6ef8
    nop
branch_0x802c6f28:
    lw      $ra, 0x2c($sp)
    or      $v0, $s1, $zero
    lw      $s1, 0x1c($sp)
    lw      $s0, 0x18($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x30

.globl Function_0x802c6f4c
Function_0x802c6f4c: # 0x802c6f4c
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa8a4
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x3f
    sw      $t6, -0x1c6c($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c70($at)
    sw      $t7, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0xa
    sw      $t8, -0x1c68($at)
    lui     $at, 0x801d
    addiu   $t9, $zero, 0x1
    sw      $t9, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    addiu   $sp, $sp, 0xffe8
    sw      $zero, -0x5764($at)
    sw      $ra, 0x14($sp)
    lui     $at, %hi(Unknown_0x800d439c)
    addiu   $t0, $zero, 0x3
    sw      $t0, %lo(Unknown_0x800d439c)($at)
    addiu   $a0, $zero, 0x1
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c6fd4
Function_0x802c6fd4: # 0x802c6fd4
    blez    $a2, branch_0x802c7038
    or      $v0, $zero, $zero
    andi    $a3, $a2, 0x3
    beqz    $a3, branch_0x802c7008
    or      $v1, $a3, $zero
branch_0x802c6fe8:
    lb      $t6, 0x0($a0)
    addiu   $v0, $v0, 0x1
    addiu   $a1, $a1, 0x1
    addiu   $a0, $a0, 0x1
    bne     $v1, $v0, branch_0x802c6fe8
    sb      $t6, -0x1($a1)
    beq     $v0, $a2, branch_0x802c7038
    nop
branch_0x802c7008:
    lb      $t7, 0x0($a0)
    addiu   $v0, $v0, 0x4
    addiu   $a1, $a1, 0x4
    sb      $t7, -0x4($a1)
    lb      $t8, 0x1($a0)
    addiu   $a0, $a0, 0x4
    sb      $t8, -0x3($a1)
    lb      $t9, -0x2($a0)
    sb      $t9, -0x2($a1)
    lb      $t0, -0x1($a0)
    bne     $v0, $a2, branch_0x802c7008
    sb      $t0, -0x1($a1)
branch_0x802c7038:
    jr      $ra
    nop

.incbin "./roms/Wave Race 64 (USA).z64", 0x1c5fa0, ROM_0x1c6490 - 0x1c5fa0
