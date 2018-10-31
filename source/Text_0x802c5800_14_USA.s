

.include "source/constants.s"

.section .textoverlay14, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c5840
    lui     $t7, 0x800e
    sw      $zero, 0x0($v0)
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x46
    bne     $t7, $at, branch_0x802c5840
    nop
    jal     0x800939e4
    nop
    b       branch_0x802c5894
    lw      $ra, 0x14($sp)
branch_0x802c5840:
    lui     $at, 0x800e
    jal     Function_0x802c58a0
    sw      $zero, -0x5754($at)
    lui     $t8, 0x800e
    lw      $t8, -0x575c($t8)
    addiu   $at, $zero, 0x46
    sw      $v0, 0x18($sp)
    bne     $t8, $at, branch_0x802c5874
    lui     $t9, 0x8023
    jal     Function_0x802c5f6c
    nop
    b       branch_0x802c5890
    lw      $v0, 0x18($sp)
branch_0x802c5874:
    lh      $t9, -0x782a($t9)
    addiu   $at, $zero, 0x1
    bnel    $t9, $at, branch_0x802c5890
    lw      $v0, 0x18($sp)
    jal     0x801ec094
    nop
    lw      $v0, 0x18($sp)
branch_0x802c5890:
    lw      $ra, 0x14($sp)
branch_0x802c5894:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c58a0
Function_0x802c58a0: # 0x802c58a0
    addiu   $sp, $sp, 0xff98
    sw      $s4, 0x50($sp)
    sw      $s0, 0x40($sp)
    sw      $ra, 0x64($sp)
    sw      $fp, 0x60($sp)
    sw      $s7, 0x5c($sp)
    sw      $s6, 0x58($sp)
    sw      $s5, 0x54($sp)
    sw      $s3, 0x4c($sp)
    sw      $s2, 0x48($sp)
    sw      $s1, 0x44($sp)
    addiu   $s4, $a0, 0x8
    lui     $t6, 0x103
    lui     $t7, 0x700
    addiu   $t7, $t7, 0x0
    ori     $t6, $t6, 0x40
    or      $v1, $s4, $zero
    sw      $t6, 0x0($a0)
    sw      $t7, 0x4($a0)
    addiu   $s4, $s4, 0x8
    lui     $t8, 0x102
    lui     $t9, 0x200
    addiu   $t9, $t9, 0xa40
    ori     $t8, $t8, 0x40
    or      $a1, $s4, $zero
    sw      $t8, 0x0($v1)
    sw      $t9, 0x4($v1)
    addiu   $s4, $s4, 0x8
    lui     $t0, 0x107
    lui     $a3, 0x600
    addiu   $t0, $t0, 0xf550
    or      $a2, $s4, $zero
    sw      $t0, 0x4($a1)
    sw      $a3, 0x0($a1)
    lui     $t1, 0x107
    addiu   $t1, $t1, 0xf628
    sw      $t1, 0x4($a2)
    sw      $a3, 0x0($a2)
    addiu   $s4, $s4, 0x8
    addiu   $s0, $zero, 0x1c
branch_0x802c5940:
    addiu   $t2, $zero, 0x56
    addiu   $t3, $zero, 0x10
    sw      $t3, 0x14($sp)
    sw      $t2, 0x10($sp)
    or      $a0, $s4, $zero
    or      $a1, $zero, $zero
    or      $a2, $s0, $zero
    jal     0x800940d8
    addiu   $a3, $zero, 0x3a
    addiu   $s0, $s0, 0x59
    slti    $at, $s0, 0x127
    bnez    $at, branch_0x802c5940
    or      $s4, $v0, $zero
    or      $s1, $zero, $zero
    addiu   $fp, $zero, 0x85
    addiu   $s6, $zero, 0x5
branch_0x802c5980:
    div     $zero, $s1, $s6
    mflo    $t4
    addiu   $t6, $zero, 0x83
    addiu   $t7, $zero, 0x10
    multu   $t4, $fp
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $s4, $zero
    or      $a1, $zero, $zero
    bnez    $s6, branch_0x802c59b0
    nop
    break   0x7
branch_0x802c59b0:
    addiu   $at, $zero, 0xffff
    bne     $s6, $at, branch_0x802c59c8
    lui     $at, 0x8000
    bne     $s1, $at, branch_0x802c59c8
    nop
    break   0x6
branch_0x802c59c8:
    mflo    $a2
    addiu   $a2, $a2, 0x1c
    nop
    div     $zero, $s1, $s6
    mfhi    $a3
    sll     $t5, $a3, 3
    addu    $t5, $t5, $a3
    sll     $t5, $t5, 1
    bnez    $s6, branch_0x802c59f4
    nop
    break   0x7
branch_0x802c59f4:
    addiu   $at, $zero, 0xffff
    bne     $s6, $at, branch_0x802c5a0c
    lui     $at, 0x8000
    bne     $s1, $at, branch_0x802c5a0c
    nop
    break   0x6
branch_0x802c5a0c:
    addiu   $a3, $t5, 0x55
    jal     0x800940d8
    nop
    addiu   $s1, $s1, 0x1
    slti    $at, $s1, 0x9
    bnez    $at, branch_0x802c5980
    or      $s4, $v0, $zero
    addiu   $t8, $zero, 0x5a
    addiu   $t9, $zero, 0x10
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a0, $s4, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x42
    jal     0x800940d8
    addiu   $a3, $zero, 0xb5
    addiu   $t0, $zero, 0x5a
    addiu   $t1, $zero, 0x10
    sw      $t1, 0x14($sp)
    sw      $t0, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xa4
    jal     0x800940d8
    addiu   $a3, $zero, 0xb5
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
    jal     0x801e91f4
    addiu   $a3, $zero, 0xff
    addiu   $t2, $zero, 0x1d
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x11
    addiu   $a3, $zero, 0x20
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $t3, $zero, 0xce
    sw      $t3, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x4
    addiu   $a2, $zero, 0xc
    addiu   $a3, $zero, 0x57
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $t4, $zero, 0xce
    sw      $t4, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x4
    addiu   $a2, $zero, 0xd
    addiu   $a3, $zero, 0xa9
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    lui     $s2, 0x802c
    lui     $s3, 0x802c
    lui     $s5, 0x802c
    or      $s4, $v0, $zero
    addiu   $s5, $s5, 0x6460
    addiu   $s3, $s3, 0x6480
    addiu   $s2, $s2, 0x646c
    or      $s1, $zero, $zero
    or      $s0, $zero, $zero
branch_0x802c5b58:
    lw      $t5, 0x0($s5)
    or      $a0, $s4, $zero
    addiu   $a2, $zero, 0xff
    bne     $s1, $t5, branch_0x802c5b74
    addiu   $a3, $zero, 0xff
    b       branch_0x802c5b78
    addiu   $a1, $zero, 0x6
branch_0x802c5b74:
    or      $a1, $zero, $zero
branch_0x802c5b78:
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    sw      $t5, 0x34($sp)
    sw      $t4, 0x30($sp)
    sw      $t3, 0x2c($sp)
    sw      $t2, 0x28($sp)
    sw      $t1, 0x24($sp)
    sw      $t0, 0x20($sp)
    sw      $t9, 0x1c($sp)
    sw      $t8, 0x18($sp)
    sw      $t7, 0x14($sp)
    jal     0x801e91f4
    sw      $t6, 0x10($sp)
    lw      $t6, 0x0($s3)
    addiu   $t7, $zero, 0x3d
    sw      $t7, 0x10($sp)
    addu    $a3, $t6, $s0
    addiu   $a3, $a3, 0x34
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    lw      $a2, 0x0($s2)
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $s1, $s1, 0x1
    slti    $at, $s1, 0x3
    addiu   $s0, $s0, 0x59
    addiu   $s2, $s2, 0x4
    addiu   $s3, $s3, 0x4
    bnez    $at, branch_0x802c5b58
    or      $s4, $v0, $zero
    lui     $s0, 0x800e
    lui     $s7, 0x801d
    lui     $s3, 0x800e
    lui     $s2, 0x802c
    addiu   $s2, $s2, 0x6464
    addiu   $s3, $s3, 0xa790
    addiu   $s7, $s7, 0xe3a0
    addiu   $s0, $s0, 0xa858
    or      $s1, $zero, $zero
branch_0x802c5c34:
    lw      $t8, 0x0($s7)
    or      $a0, $s4, $zero
    addiu   $a2, $zero, 0x80
    bnez    $t8, branch_0x802c5c74
    addiu   $a3, $zero, 0x80
    lw      $t9, 0x0($s5)
    bnez    $t9, branch_0x802c5c6c
    nop
    bnez    $s1, branch_0x802c5c64
    nop
    b       branch_0x802c5cc4
    addiu   $a1, $zero, 0x7
branch_0x802c5c64:
    b       branch_0x802c5cc4
    or      $a1, $zero, $zero
branch_0x802c5c6c:
    b       branch_0x802c5cc4
    or      $a1, $zero, $zero
branch_0x802c5c74:
    lw      $t0, 0x0($s5)
    bnezl   $t0, branch_0x802c5cb0
    lw      $t2, 0x0($s2)
    bnezl   $s1, branch_0x802c5c94
    lw      $t1, 0x0($s2)
    b       branch_0x802c5cc4
    addiu   $a1, $zero, 0x7

.globl Function_0x802c5c90
Function_0x802c5c90: # 0x802c5c90
    lw      $t1, 0x0($s2)
branch_0x802c5c94:
    bne     $s1, $t1, branch_0x802c5ca4
    nop
    b       branch_0x802c5cc4
    addiu   $a1, $zero, 0x6
branch_0x802c5ca4:
    b       branch_0x802c5cc4
    or      $a1, $zero, $zero

.globl Function_0x802c5cac
Function_0x802c5cac: # 0x802c5cac
    lw      $t2, 0x0($s2)
branch_0x802c5cb0:
    or      $a1, $zero, $zero
    bne     $s1, $t2, branch_0x802c5cc4
    nop
    b       branch_0x802c5cc4
    addiu   $a1, $zero, 0x6
branch_0x802c5cc4:
    addiu   $t3, $zero, 0x80
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    sw      $t2, 0x34($sp)
    sw      $t1, 0x30($sp)
    sw      $t0, 0x2c($sp)
    sw      $t9, 0x28($sp)
    sw      $t8, 0x24($sp)
    sw      $t7, 0x20($sp)
    sw      $t6, 0x1c($sp)
    sw      $t5, 0x18($sp)
    sw      $t4, 0x14($sp)
    jal     0x801e91f4
    sw      $t3, 0x10($sp)
    div     $zero, $s1, $s6
    mflo    $t6
    lw      $v1, 0x0($s0)
    lui     $t5, 0x802c
    multu   $t6, $fp
    sll     $t3, $v1, 2
    addu    $t5, $t5, $t3
    lw      $t5, 0x648c($t5)
    addu    $t4, $s3, $t3
    lw      $a2, 0x0($t4)
    sw      $zero, 0x14($sp)
    or      $v1, $t3, $zero
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    mflo    $t7
    addu    $a3, $t5, $t7
    bnez    $s6, branch_0x802c5d64
    nop
    break   0x7
branch_0x802c5d64:
    addiu   $at, $zero, 0xffff
    bne     $s6, $at, branch_0x802c5d7c
    lui     $at, 0x8000
    bne     $s1, $at, branch_0x802c5d7c
    nop
    break   0x6
branch_0x802c5d7c:
    div     $zero, $s1, $s6
    mfhi    $t8
    sll     $t9, $t8, 3
    addu    $t9, $t9, $t8
    sll     $t9, $t9, 1
    addiu   $t0, $t9, 0x58
    sw      $t0, 0x10($sp)
    addiu   $a3, $a3, 0x37
    bnez    $s6, branch_0x802c5da8
    nop
    break   0x7
branch_0x802c5da8:
    addiu   $at, $zero, 0xffff
    bne     $s6, $at, branch_0x802c5dc0
    lui     $at, 0x8000
    bne     $s1, $at, branch_0x802c5dc0
    nop
    break   0x6
branch_0x802c5dc0:
    jal     0x801e3c40
    nop
    addiu   $s1, $s1, 0x1
    slti    $at, $s1, 0x9
    addiu   $s0, $s0, 0x4
    bnez    $at, branch_0x802c5c34
    or      $s4, $v0, $zero
    lui     $s0, 0x802c
    lui     $s5, 0x802c
    addiu   $s5, $s5, 0x6468
    addiu   $s0, $s0, 0x6478
    or      $s1, $zero, $zero
    addiu   $s2, $zero, 0x52
    addiu   $s3, $zero, 0x2
branch_0x802c5df8:
    lw      $t1, 0x0($s7)
    or      $a0, $s4, $zero
    addiu   $a2, $zero, 0x80
    bne     $s3, $t1, branch_0x802c5e28
    addiu   $a3, $zero, 0x80
    lw      $t2, 0x0($s5)
    bne     $s1, $t2, branch_0x802c5e20
    nop
    b       branch_0x802c5e2c
    addiu   $a1, $zero, 0x6
branch_0x802c5e20:
    b       branch_0x802c5e2c
    or      $a1, $zero, $zero
branch_0x802c5e28:
    addiu   $a1, $zero, 0x7
branch_0x802c5e2c:
    addiu   $t3, $zero, 0x80
    addiu   $t4, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    sw      $t2, 0x34($sp)
    sw      $t1, 0x30($sp)
    sw      $t0, 0x2c($sp)
    sw      $t9, 0x28($sp)
    sw      $t8, 0x24($sp)
    sw      $t7, 0x20($sp)
    sw      $t5, 0x1c($sp)
    sw      $t6, 0x18($sp)
    sw      $t4, 0x14($sp)
    jal     0x801e91f4
    sw      $t3, 0x10($sp)
    addiu   $t3, $zero, 0xb8
    sw      $t3, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    lw      $a2, 0x0($s0)
    or      $a3, $s2, $zero
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $s1, $s1, 0x1
    addiu   $s0, $s0, 0x4
    addiu   $s2, $s2, 0x61
    bne     $s1, $s3, branch_0x802c5df8
    or      $s4, $v0, $zero
    lw      $ra, 0x64($sp)
    lw      $s0, 0x40($sp)
    lw      $s1, 0x44($sp)
    lw      $s2, 0x48($sp)
    lw      $s3, 0x4c($sp)
    lw      $s4, 0x50($sp)
    lw      $s5, 0x54($sp)
    lw      $s6, 0x58($sp)
    lw      $s7, 0x5c($sp)
    lw      $fp, 0x60($sp)
    jr      $ra
    addiu   $sp, $sp, 0x68

Function_0x802c5ee4: # 0x802c5ee4
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa8a4
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x47
    sw      $t6, -0x1c6c($at)
    lui     $at, 0x801d
    sw      $a0, -0x1c70($at)
    sw      $t7, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0x10
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
    lui     $at, 0x800d
    addiu   $t0, $zero, 0x2
    sw      $t0, 0x439c($at)
    addiu   $a0, $zero, 0x1
    addiu   $a1, $zero, 0x4
    jal     0x801e6d10
    or      $a2, $zero, $zero
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

Function_0x802c5f6c: # 0x802c5f6c
    lui     $v0, 0x801d
    lhu     $v0, -0x1c46($v0)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    andi    $t6, $v0, 0xb000
    beqz    $t6, branch_0x802c6100
    or      $a2, $zero, $zero
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe3a0
    lw      $v0, 0x0($a1)
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x6460
    beqz    $v0, branch_0x802c5fc0
    addiu   $a3, $zero, 0x1
    beq     $v0, $a3, branch_0x802c601c
    addiu   $t7, $zero, 0x2
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c6044
    nop
    b       branch_0x802c60cc
    nop
branch_0x802c5fc0:
    lw      $v0, 0x0($a0)
    addiu   $at, $zero, 0x2
    addiu   $a2, $zero, 0x1
    bne     $v0, $at, branch_0x802c5fe8
    addiu   $a0, $zero, 0x3c
    jal     Function_0x802c5ee4
    sw      $a2, 0x1c($sp)
    lw      $a2, 0x1c($sp)
    b       branch_0x802c60cc
    addiu   $a3, $zero, 0x1
branch_0x802c5fe8:
    bnez    $v0, branch_0x802c6008
    lui     $v1, 0x802c
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6464
    addiu   $a3, $zero, 0x1
    sw      $a3, 0x0($v1)
    b       branch_0x802c60cc
    sw      $a3, 0x0($a1)
branch_0x802c6008:
    addiu   $v1, $v1, 0x6464
    addiu   $a3, $zero, 0x1
    sw      $zero, 0x0($v1)
    b       branch_0x802c60cc
    sw      $a3, 0x0($a1)
branch_0x802c601c:
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6468
    sw      $t7, 0x0($a1)
    sw      $a3, 0x0($v0)
    addiu   $a0, $zero, 0x3
    jal     0x800c3c0c
    sw      $a2, 0x1c($sp)
    lw      $a2, 0x1c($sp)
    b       branch_0x802c60cc
    addiu   $a3, $zero, 0x1
branch_0x802c6044:
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6468
    lw      $t8, 0x0($v0)
    or      $a2, $a3, $zero
    sw      $a3, 0x0($a1)
    bnez    $t8, branch_0x802c60cc
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x6460
    lw      $t9, 0x0($a0)
    lui     $v1, 0x802c
    addiu   $a2, $zero, 0x2
    bnez    $t9, branch_0x802c60a8
    addiu   $v1, $v1, 0x6464
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6464
    lw      $t0, 0x0($v1)
    lui     $a0, 0x800e
    sw      $a2, 0x1c($sp)
    sll     $t1, $t0, 2
    addu    $a0, $a0, $t1
    jal     0x8007c5a4
    lw      $a0, -0x57a8($a0)
    lw      $a2, 0x1c($sp)
    b       branch_0x802c60cc
    addiu   $a3, $zero, 0x1
branch_0x802c60a8:
    lw      $t2, 0x0($v1)
    lui     $a0, 0x800e
    sw      $a2, 0x1c($sp)
    sll     $t3, $t2, 2
    addu    $a0, $a0, $t3
    jal     0x8007c974
    lw      $a0, -0x57a8($a0)
    lw      $a2, 0x1c($sp)
    addiu   $a3, $zero, 0x1
branch_0x802c60cc:
    bne     $a2, $a3, branch_0x802c60e8
    addiu   $at, $zero, 0x2
    addiu   $a0, $zero, 0x11
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6454
    lw      $ra, 0x14($sp)
branch_0x802c60e8:
    bne     $a2, $at, branch_0x802c6450
    addiu   $a0, $zero, 0x37
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6454
    lw      $ra, 0x14($sp)
branch_0x802c6100:
    andi    $t4, $v0, 0x4000
    beqz    $t4, branch_0x802c6180
    andi    $t5, $v0, 0x800
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe3a0
    lw      $v0, 0x0($a1)
    addiu   $a3, $zero, 0x1
    addiu   $a0, $zero, 0x3c
    beqzl   $v0, branch_0x802c6144
    addiu   $a2, $zero, 0x1
    beq     $v0, $a3, branch_0x802c6154
    addiu   $at, $zero, 0x2
    beql    $v0, $at, branch_0x802c6164
    or      $a2, $a3, $zero
    b       branch_0x802c6168
    nop

.globl Function_0x802c6140
Function_0x802c6140: # 0x802c6140
    addiu   $a2, $zero, 0x1
branch_0x802c6144:
    jal     Function_0x802c5ee4
    sw      $a2, 0x1c($sp)
    b       branch_0x802c6168
    lw      $a2, 0x1c($sp)
branch_0x802c6154:
    addiu   $a2, $zero, 0x1
    b       branch_0x802c6168
    sw      $zero, 0x0($a1)

.globl Function_0x802c6160
Function_0x802c6160: # 0x802c6160
    or      $a2, $a3, $zero
branch_0x802c6164:
    sw      $a3, 0x0($a1)
branch_0x802c6168:
    beqz    $a2, branch_0x802c6450
    addiu   $a0, $zero, 0x16
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6454
    lw      $ra, 0x14($sp)
branch_0x802c6180:
    beqz    $t5, branch_0x802c6200
    andi    $t4, $v0, 0x400
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe3a0
    lw      $t6, 0x0($a1)
    addiu   $a3, $zero, 0x1
    lui     $v1, 0x802c
    bne     $a3, $t6, branch_0x802c61e8
    addiu   $v1, $v1, 0x6464
    lui     $a0, 0x802c
    lw      $t7, 0x0($v1)
    addiu   $a0, $a0, 0x6460
    lw      $t9, 0x0($a0)
    addiu   $t8, $t7, 0xffff
    addiu   $a2, $zero, 0x1
    bnez    $t9, branch_0x802c61d4
    sw      $t8, 0x0($v1)
    bgtz    $t8, branch_0x802c61e8
    addiu   $t1, $zero, 0x8
    b       branch_0x802c61e8
    sw      $t1, 0x0($v1)
branch_0x802c61d4:
    lw      $t2, 0x0($v1)
    addiu   $t3, $zero, 0x8
    bgez    $t2, branch_0x802c61e8
    nop
    sw      $t3, 0x0($v1)
branch_0x802c61e8:
    beqz    $a2, branch_0x802c6450
    addiu   $a0, $zero, 0x10
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6454
    lw      $ra, 0x14($sp)
branch_0x802c6200:
    beqz    $t4, branch_0x802c6284
    andi    $t1, $v0, 0x200
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe3a0
    lw      $t5, 0x0($a1)
    addiu   $a3, $zero, 0x1
    lui     $v1, 0x802c
    bne     $a3, $t5, branch_0x802c626c
    addiu   $v1, $v1, 0x6464
    lui     $a0, 0x802c
    lw      $t6, 0x0($v1)
    addiu   $a0, $a0, 0x6460
    lw      $t8, 0x0($a0)
    addiu   $t7, $t6, 0x1
    or      $a2, $a3, $zero
    bnez    $t8, branch_0x802c6258
    sw      $t7, 0x0($v1)
    slti    $at, $t7, 0x9
    bnez    $at, branch_0x802c626c
    nop
    b       branch_0x802c626c
    sw      $a3, 0x0($v1)
branch_0x802c6258:
    lw      $t0, 0x0($v1)
    slti    $at, $t0, 0x9
    bnez    $at, branch_0x802c626c
    nop
    sw      $zero, 0x0($v1)
branch_0x802c626c:
    beqz    $a2, branch_0x802c6450
    addiu   $a0, $zero, 0x10
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6454
    lw      $ra, 0x14($sp)
branch_0x802c6284:
    beqz    $t1, branch_0x802c636c
    andi    $t3, $v0, 0x100
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe3a0
    lw      $v0, 0x0($a1)
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x6460
    beqz    $v0, branch_0x802c62c4
    addiu   $a3, $zero, 0x1
    beq     $v0, $a3, branch_0x802c62e4
    lui     $a0, 0x802c
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c6334
    nop
    b       branch_0x802c6354
    nop
branch_0x802c62c4:
    lw      $t2, 0x0($a0)
    addiu   $a2, $zero, 0x1
    addiu   $t5, $zero, 0x2
    addiu   $t3, $t2, 0xffff
    bgez    $t3, branch_0x802c6354
    sw      $t3, 0x0($a0)
    b       branch_0x802c6354
    sw      $t5, 0x0($a0)
branch_0x802c62e4:
    addiu   $a0, $a0, 0x6460
    lw      $t6, 0x0($a0)
    lui     $v1, 0x802c
    addiu   $a2, $zero, 0x1
    bnez    $t6, branch_0x802c6308
    addiu   $v1, $v1, 0x6464
    lw      $t7, 0x0($v1)
    addiu   $at, $zero, 0x5
    beq     $t7, $at, branch_0x802c6354
branch_0x802c6308:
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6464
    lw      $v0, 0x0($v1)
    addiu   $at, $zero, 0x4
    beq     $v0, $at, branch_0x802c6354
    addiu   $t8, $v0, 0xfffb
    bgez    $t8, branch_0x802c6354
    sw      $t8, 0x0($v1)
    addiu   $t9, $t8, 0xa
    b       branch_0x802c6354
    sw      $t9, 0x0($v1)
branch_0x802c6334:
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6468
    lw      $t0, 0x0($v0)
    or      $a2, $a3, $zero
    addiu   $t1, $t0, 0xffff
    bgez    $t1, branch_0x802c6354
    sw      $t1, 0x0($v0)
    sw      $a3, 0x0($v0)
branch_0x802c6354:
    beqz    $a2, branch_0x802c6450
    addiu   $a0, $zero, 0x10
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6454
    lw      $ra, 0x14($sp)
branch_0x802c636c:
    beqz    $t3, branch_0x802c6450
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe3a0
    lw      $v0, 0x0($a1)
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x6460
    beqz    $v0, branch_0x802c63a8
    addiu   $a3, $zero, 0x1
    beq     $v0, $a3, branch_0x802c63c8
    lui     $a0, 0x802c
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c641c
    nop
    b       branch_0x802c6440
    nop
branch_0x802c63a8:
    lw      $t4, 0x0($a0)
    addiu   $at, $zero, 0x3
    addiu   $a2, $zero, 0x1
    addiu   $t5, $t4, 0x1
    bne     $t5, $at, branch_0x802c6440
    sw      $t5, 0x0($a0)
    b       branch_0x802c6440
    sw      $zero, 0x0($a0)
branch_0x802c63c8:
    addiu   $a0, $a0, 0x6460
    lw      $t7, 0x0($a0)
    lui     $v1, 0x802c
    addiu   $a2, $zero, 0x1
    bnez    $t7, branch_0x802c63ec
    addiu   $v1, $v1, 0x6464
    lw      $t8, 0x0($v1)
    addiu   $at, $zero, 0x5
    beq     $t8, $at, branch_0x802c6440
branch_0x802c63ec:
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6464
    lw      $v0, 0x0($v1)
    addiu   $at, $zero, 0x4
    beq     $v0, $at, branch_0x802c6440
    addiu   $t9, $v0, 0x5
    slti    $at, $t9, 0x9
    bnez    $at, branch_0x802c6440
    sw      $t9, 0x0($v1)
    addiu   $t0, $t9, 0xfff6
    b       branch_0x802c6440
    sw      $t0, 0x0($v1)
branch_0x802c641c:
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6468
    lw      $t1, 0x0($v0)
    addiu   $a2, $zero, 0x1
    addiu   $t2, $t1, 0x1
    slti    $at, $t2, 0x2
    bnez    $at, branch_0x802c6440
    sw      $t2, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x802c6440:
    beqz    $a2, branch_0x802c6450
    addiu   $a0, $zero, 0x10
    jal     0x800c3594
    or      $a1, $zero, $zero
branch_0x802c6450:
    lw      $ra, 0x14($sp)
branch_0x802c6454:
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.incbin "./roms/Wave Race 64 (USA).z64", 0x1cb860, 0x1cb8b0 - 0x1cb860
