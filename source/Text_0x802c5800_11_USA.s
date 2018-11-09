

.include "source/constants.s"

.section .textoverlay11, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    addiu   $sp, $sp, 0xfe28
    lui     $t6, 0x801d
    lw      $t6, -0x1c64($t6)
    sw      $ra, 0x5c($sp)
    sw      $fp, 0x58($sp)
    sw      $s7, 0x54($sp)
    sw      $s6, 0x50($sp)
    sw      $s5, 0x4c($sp)
    sw      $s4, 0x48($sp)
    sw      $s3, 0x44($sp)
    sw      $s2, 0x40($sp)
    sw      $s1, 0x3c($sp)
    beqz    $t6, branch_0x802c5908
    sw      $s0, 0x38($sp)
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x42
    lui     $t8, 0x801d
    bne     $t7, $at, branch_0x802c5908
    lui     $t2, 0x801d
    lb      $t8, -0x5020($t8)
    addiu   $v0, $zero, 0x1
    lui     $at, 0x802d
    andi    $t9, $t8, 0x8
    beqz    $t9, branch_0x802c586c
    addiu   $v1, $zero, 0x140
    sw      $v0, -0x7e4c($at)
branch_0x802c586c:
    lw      $t2, -0x1c6c($t2)
    addiu   $at, $zero, 0x65
    addiu   $v0, $zero, 0x1
    bne     $t2, $at, branch_0x802c5908
    lui     $a0, 0x802d
    lui     $at, 0x802d
    sw      $v0, -0x7e5c($at)
    lui     $at, 0x802d
    sw      $v0, -0x7f40($at)
    lui     $at, 0x802d
    sw      $zero, -0x7f3c($at)
    lui     $at, 0x802d
    addiu   $a0, $a0, 0x80e4
    sw      $v0, -0x7f38($at)
    sw      $zero, 0x0($a0)
    sw      $zero, 0x4($a0)
    sw      $v0, 0x8($a0)
    sw      $v0, 0xc($a0)
    sw      $v1, 0x10($a0)
    sw      $zero, 0x14($a0)
    sw      $v0, 0x18($a0)
    sw      $v0, 0x1c($a0)
    lui     $t3, 0x800e
    lh      $t3, -0x5718($t3)
    lui     $a1, 0x802d
    addiu   $t4, $zero, 0x3
    beqz    $t3, branch_0x802c58e8
    addiu   $a1, $a1, 0x8104
    addiu   $t5, $zero, 0x3
    sw      $t4, 0xc($a0)
    sw      $t5, 0x1c($a0)
branch_0x802c58e8:
    sw      $zero, 0x0($a1)
    sw      $zero, 0x4($a1)
    sw      $v0, 0x8($a1)
    sw      $v0, 0xc($a1)
    sw      $v1, 0x10($a1)
    sw      $zero, 0x14($a1)
    sw      $v0, 0x18($a1)
    sw      $zero, 0x1c($a1)
branch_0x802c5908:
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x80dc
    lw      $v1, 0x0($a2)
    addiu   $v0, $zero, 0x1
    lui     $a0, 0x802d
    lui     $a1, 0x802d
    addiu   $a1, $a1, 0x8104
    addiu   $a0, $a0, 0x80e4
    beqz    $v1, branch_0x802c5a80
    or      $t1, $v0, $zero
    bne     $v0, $v1, branch_0x802c5954
    addiu   $t1, $zero, 0x2
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x80cc
    lw      $t6, 0x0($t0)
    or      $v0, $zero, $zero
    addiu   $t7, $t6, 0x1e
    b       branch_0x802c59cc
    sw      $t7, 0x0($t0)
branch_0x802c5954:
    addiu   $at, $zero, 0x2
    bne     $v1, $at, branch_0x802c5980
    lui     $t8, 0x802d
    lw      $t8, -0x7f34($t8)
    lui     $at, 0x802d
    lui     $t0, 0x802d
    addiu   $t9, $t8, 0xffe2
    or      $v0, $zero, $zero
    sw      $t9, -0x7f34($at)
    b       branch_0x802c59cc
    addiu   $t0, $t0, 0x80cc
branch_0x802c5980:
    addiu   $at, $zero, 0x3
    bne     $v1, $at, branch_0x802c59b0
    addiu   $v0, $zero, 0x1
    lui     $t2, 0x802d
    lw      $t2, -0x7f30($t2)
    lui     $at, 0x802d
    lui     $t0, 0x802d
    addiu   $t3, $t2, 0xffe2
    addiu   $v0, $zero, 0x1
    sw      $t3, -0x7f30($at)
    b       branch_0x802c59cc
    addiu   $t0, $t0, 0x80cc
branch_0x802c59b0:
    lui     $t4, 0x802d
    lw      $t4, -0x7f30($t4)
    lui     $at, 0x802d
    lui     $t0, 0x802d
    addiu   $t5, $t4, 0x1e
    sw      $t5, -0x7f30($at)
    addiu   $t0, $t0, 0x80cc
branch_0x802c59cc:
    bnez    $v0, branch_0x802c59f4
    or      $v1, $zero, $zero
    lw      $v0, 0x0($t0)
    slti    $at, $v0, 0xfec1
    bnez    $at, branch_0x802c59ec
    slti    $at, $v0, 0x140
    bnez    $at, branch_0x802c5a14
    nop
branch_0x802c59ec:
    b       branch_0x802c5a14
    addiu   $v1, $zero, 0x1
branch_0x802c59f4:
    lui     $v0, 0x802d
    lw      $v0, -0x7f30($v0)
    slti    $at, $v0, 0xff11
    bnez    $at, branch_0x802c5a10
    slti    $at, $v0, 0xf0
    bnez    $at, branch_0x802c5a14
    nop
branch_0x802c5a10:
    addiu   $v1, $zero, 0x1
branch_0x802c5a14:
    beqz    $v1, branch_0x802c5a3c
    lui     $v0, 0x802d
    lui     $at, 0x802d
    sw      $zero, -0x7f30($at)
    lw      $t6, 0x18($a0)
    lw      $t7, 0x1c($a0)
    sw      $zero, 0x0($t0)
    sw      $zero, 0x0($a2)
    sw      $t6, 0x8($a0)
    sw      $t7, 0xc($a0)
branch_0x802c5a3c:
    addiu   $v0, $v0, 0x80e0
    lw      $t8, 0x0($v0)
    beqzl   $t8, branch_0x802c5a84
    lui     $at, 0x4180
    lw      $t9, 0x0($t0)
    lui     $t2, 0x802d
    lw      $t2, -0x7f30($t2)
    lui     $at, 0x802d
    sw      $t9, -0x7f2c($at)
    lui     $at, 0x802d
    sw      $t2, -0x7f28($at)
    lw      $t3, 0x0($a2)
    lw      $t4, 0x8($a0)
    lw      $t5, 0x18($a0)
    sw      $t3, 0x0($v0)
    sw      $t4, 0x8($a1)
    sw      $t5, 0x18($a1)
branch_0x802c5a80:
    lui     $at, 0x4180
branch_0x802c5a84:
    mtc1    $at, $a0
    lui     $s3, 0x801d
    mtc1    $zero, $zero
    addiu   $s3, $s3, 0xe358
    lui     $at, 0x4580
    mtc1    $at, $a2
    lw      $a0, 0x0($s3)
    lui     $a1, 0x802d
    addiu   $a1, $a1, 0x8280
    lui     $a2, 0x4204
    lui     $a3, 0x3f80
    sw      $t1, 0x1c0($sp)
    swc1    $f4, 0x10($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    addiu   $a0, $a0, 0xa40
    jal     Function_0x80048180
    swc1    $f6, 0x14($sp)
    mtc1    $zero, $zero
    lui     $at, 0x3f80
    mtc1    $at, $v0
    lui     $at, 0x802d
    lwc1    $f8, -0x7de4($at)
    addiu   $s0, $sp, 0xb8
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
    mtc1    $zero, $zero
    lui     $at, 0x3f80
    mtc1    $at, $t2
    addiu   $s1, $sp, 0x138
    mfc1    $a3, $zero
    or      $a1, $s1, $zero
    addiu   $a0, $sp, 0x78
    lui     $a2, 0x43fa
    swc1    $f0, 0x10($sp)
    swc1    $f0, 0x14($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    swc1    $f0, 0x20($sp)
    swc1    $f0, 0x28($sp)
    jal     Function_0x80048468
    swc1    $f10, 0x24($sp)
    addiu   $s2, $sp, 0x178
    or      $a1, $s2, $zero
    jal     Function_0x80047e18
    or      $a0, $s0, $zero
    addiu   $s7, $sp, 0xf8
    or      $a2, $s7, $zero
    or      $a0, $s1, $zero
    jal     Function_0x80049e58
    or      $a1, $s2, $zero
    lw      $t6, 0x1c0($sp)
    sw      $zero, 0x1d0($sp)
    blez    $t6, branch_0x802c5cf4
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x80e4
    lui     $fp, 0x802d
    addiu   $fp, $fp, 0x8128
    sw      $a2, 0x70($sp)
    or      $s5, $zero, $zero
branch_0x802c5b9c:
    lw      $a2, 0x70($sp)
    lui     $t7, 0x802d
    lw      $t7, -0x7f34($t7)
    lw      $v0, 0x0($a2)
    lui     $t8, 0x802d
    lw      $t8, -0x7f30($t8)
    addu    $v1, $v0, $t7
    addiu   $s6, $v1, 0x4c
    addu    $a3, $v0, $t8
    sll     $t9, $s6, 2
    sw      $s5, 0x1cc($sp)
    or      $s6, $t9, $zero
    addiu   $s2, $a3, 0x8a
    sw      $a3, 0x1c4($sp)
    or      $s4, $zero, $zero
    or      $s1, $zero, $zero
    sll     $s0, $s5, 4
branch_0x802c5be0:
    lw      $t2, 0x0($s3)
    sll     $t3, $s5, 6
    or      $a0, $s7, $zero
    addu    $t4, $t2, $t3
    addu    $a1, $t4, $s1
    jal     Function_0x80047e80
    addiu   $a1, $a1, 0xa80
    lw      $t5, 0x0($s3)
    lw      $at, 0x0($fp)
    addiu   $s4, $s4, 0x1
    addu    $t6, $t5, $s0
    sw      $at, 0x1280($t6)
    lw      $t9, 0x4($fp)
    sll     $t4, $s2, 2
    addiu   $s2, $s2, 0x12
    sw      $t9, 0x1284($t6)
    lw      $at, 0x8($fp)
    addiu   $s1, $s1, 0x40
    sw      $at, 0x1288($t6)
    lw      $t9, 0xc($fp)
    addiu   $at, $zero, 0x3
    sw      $t9, 0x128c($t6)
    lw      $t2, 0x0($s3)
    addu    $t3, $t2, $s0
    sh      $s6, 0x1288($t3)
    lw      $t5, 0x0($s3)
    addu    $t8, $t5, $s0
    addiu   $s0, $s0, 0x10
    bne     $s4, $at, branch_0x802c5be0
    sh      $t4, 0x128a($t8)
    lw      $t7, 0x0($s3)
    sll     $t6, $s5, 6
    or      $a0, $s7, $zero
    addu    $t9, $t7, $t6
    addu    $a1, $t9, $s1
    jal     Function_0x80047e80
    addiu   $a1, $a1, 0xa80
    lw      $t2, 0x1cc($sp)
    lw      $t5, 0x0($s3)
    lw      $at, 0x0($fp)
    addu    $v0, $t2, $s4
    sll     $t3, $v0, 4
    addu    $t4, $t5, $t3
    sw      $at, 0x1280($t4)
    lw      $t7, 0x4($fp)
    or      $v0, $t3, $zero
    addiu   $s5, $s5, 0x4
    sw      $t7, 0x1284($t4)
    lw      $at, 0x8($fp)
    sw      $at, 0x1288($t4)
    lw      $t7, 0xc($fp)
    sw      $t7, 0x128c($t4)
    lw      $t6, 0x0($s3)
    addu    $t9, $t6, $t3
    sh      $s6, 0x1288($t9)
    lw      $t2, 0x1c4($sp)
    lw      $t8, 0x0($s3)
    addiu   $t3, $t2, 0xce
    sll     $t5, $t3, 2
    addu    $t4, $t8, $v0
    sh      $t5, 0x128a($t4)
    lw      $t9, 0x70($sp)
    lw      $t7, 0x1d0($sp)
    lw      $t3, 0x1c0($sp)
    addiu   $t2, $t9, 0x10
    addiu   $t6, $t7, 0x1
    sw      $t6, 0x1d0($sp)
    bne     $t6, $t3, branch_0x802c5b9c
    sw      $t2, 0x70($sp)
branch_0x802c5cf4:
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
    addiu   $sp, $sp, 0x1d8


.globl Function_11_0x802c5d24
Function_11_0x802c5d24: # 0x802c5d24
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe0
    sw      $s0, 0x18($sp)
    or      $s0, $a0, $zero
    beqz    $t6, branch_0x802c5d6c
    sw      $ra, 0x1c($sp)
    sw      $zero, 0x0($v0)
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x42
    bne     $t7, $at, branch_0x802c5d6c
    nop
    jal     Function_0x800939e4
    nop
    b       branch_0x802c5e4c
    lw      $ra, 0x1c($sp)
branch_0x802c5d6c:
    lui     $at, 0x800e
    sw      $zero, -0x5754($at)
    or      $v0, $s0, $zero
    addiu   $v1, $s0, 0x8
    lui     $t8, 0xe700
    lui     $t9, 0xed02
    lui     $t0, 0x4d
    sw      $t8, 0x0($v0)
    sw      $zero, 0x4($v0)
    ori     $t0, $t0, 0xc36c
    ori     $t9, $t9, 0x50
    sw      $t9, 0x0($v1)
    sw      $t0, 0x4($v1)
    jal     Function_0x802c6750
    addiu   $a0, $v1, 0x8
    lui     $t1, 0x800e
    lw      $t1, -0x575c($t1)
    addiu   $at, $zero, 0x42
    or      $s0, $v0, $zero
    bne     $t1, $at, branch_0x802c5de0
    lui     $t3, 0x8023
    lui     $t2, 0x802d
    lw      $t2, -0x7f24($t2)
    bnezl   $t2, branch_0x802c5e48
    or      $v0, $s0, $zero
    jal     Function_0x802c5e5c
    nop
    b       branch_0x802c5e48
    or      $v0, $s0, $zero
branch_0x802c5de0:
    lh      $t3, -0x782a($t3)
    addiu   $at, $zero, 0x1
    lui     $v0, 0x801d
    bnel    $t3, $at, branch_0x802c5e48
    or      $v0, $s0, $zero
    lw      $v0, -0x1c70($v0)
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c5e2c
    addiu   $at, $zero, 0x3c
    beq     $v0, $at, branch_0x802c5e1c
    addiu   $at, $zero, 0x50
    beq     $v0, $at, branch_0x802c5e3c
    nop
    b       branch_0x802c5e48
    or      $v0, $s0, $zero
branch_0x802c5e1c:
    jal     Function_0x801ec094_ChangeStateTo3c
    nop
    b       branch_0x802c5e48
    or      $v0, $s0, $zero
branch_0x802c5e2c:
    jal     Function_0x801eaf10_ChangeStateTo2
    nop
    b       branch_0x802c5e48
    or      $v0, $s0, $zero
branch_0x802c5e3c:
    jal     Function_0x801ec5c0_ChangeStateTo50
    nop
    or      $v0, $s0, $zero
branch_0x802c5e48:
    lw      $ra, 0x1c($sp)
branch_0x802c5e4c:
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

Function_0x802c5e5c: # 0x802c5e5c
    lui     $v0, 0x801d
    lhu     $v0, -0x1c46($v0)
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    andi    $t6, $v0, 0xb000
    beqz    $t6, branch_0x802c600c
    sw      $zero, 0x24($sp)
    lui     $t2, 0x802d
    addiu   $t2, $t2, 0x80e4
    lw      $t7, 0x8($t2)
    addiu   $at, $zero, 0xa
    lui     $v1, 0x802d
    bne     $t7, $at, branch_0x802c5fb4
    addiu   $v1, $v1, 0x81a4
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x80c0
    lw      $v0, 0x0($a0)
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x80c4
    beqz    $v0, branch_0x802c5ec0
    addiu   $t1, $zero, 0x1
    beq     $v0, $t1, branch_0x802c5f14
    lui     $v1, 0x802d
    b       branch_0x802c5ff4
    lw      $t4, 0x24($sp)
branch_0x802c5ec0:
    lw      $v0, 0x0($v1)
    addiu   $t8, $zero, 0x1
    sw      $t8, 0x24($sp)
    bnez    $v0, branch_0x802c5ee8
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x80c8
    addiu   $t1, $zero, 0x1
    sw      $t1, 0x0($t0)
    b       branch_0x802c5ff0
    sw      $t1, 0x0($a0)
branch_0x802c5ee8:
    addiu   $t1, $zero, 0x1
    bne     $t1, $v0, branch_0x802c5f04
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x80c8
    sw      $zero, 0x0($t0)
    b       branch_0x802c5ff0
    sw      $t1, 0x0($a0)
branch_0x802c5f04:
    jal     Function_0x802c802c
    addiu   $a0, $zero, 0x3c
    b       branch_0x802c5ff4
    lw      $t4, 0x24($sp)
branch_0x802c5f14:
    lui     $t0, 0x802d
    addiu   $t3, $zero, 0x2
    lui     $at, 0x802d
    addiu   $t0, $t0, 0x80c8
    sw      $t3, -0x7f24($at)
    lw      $t4, 0x0($t0)
    addiu   $v1, $v1, 0x80c4
    lw      $t6, 0x0($v1)
    lui     $a3, 0x800e
    sll     $t5, $t4, 2
    addiu   $t9, $zero, 0x1
    addu    $a3, $a3, $t5
    sw      $t9, 0x24($sp)
    bnez    $t6, branch_0x802c5f58
    lw      $a3, -0x57a8($a3)
    b       branch_0x802c5f5c
    addiu   $v0, $zero, 0x1
branch_0x802c5f58:
    addiu   $v0, $zero, 0x2
branch_0x802c5f5c:
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x80f4
    addiu   $a1, $zero, 0x140
    or      $a2, $zero, $zero
    sw      $v0, 0x10($sp)
    jal     Function_0x802c7194
    sw      $a3, 0x20($sp)
    addiu   $t7, $zero, 0x2
    lui     $at, 0x802d
    lui     $a0, 0x802d
    lw      $a3, 0x20($sp)
    sw      $t7, -0x7f20($at)
    addiu   $a0, $a0, 0x8114
    addiu   $a1, $zero, 0x140
    or      $a2, $zero, $zero
    jal     Function_0x802c7194
    sw      $zero, 0x10($sp)
    addiu   $a0, $zero, 0x2a
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c5ff4
    lw      $t4, 0x24($sp)
branch_0x802c5fb4:
    lw      $t8, 0x0($v1)
    lui     $t3, 0x800e
    beqzl   $t8, branch_0x802c5ff4
    lw      $t4, 0x24($sp)
    lw      $t3, -0x5878($t3)
    addiu   $t9, $zero, 0x1
    sw      $t9, 0x24($sp)
    beqz    $t3, branch_0x802c5fe8
    nop
    jal     Function_0x802c802c
    addiu   $a0, $zero, 0x2
    b       branch_0x802c5ff4
    lw      $t4, 0x24($sp)
branch_0x802c5fe8:
    jal     Function_0x802c802c
    addiu   $a0, $zero, 0x50
branch_0x802c5ff0:
    lw      $t4, 0x24($sp)
branch_0x802c5ff4:
    beqz    $t4, branch_0x802c6740
    addiu   $a0, $zero, 0x11
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6744
    lw      $ra, 0x1c($sp)
branch_0x802c600c:
    andi    $t5, $v0, 0x4000
    beqz    $t5, branch_0x802c6118
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x81a4
    lw      $t6, 0x0($v1)
    lui     $t2, 0x802d
    addiu   $t2, $t2, 0x80e4
    bnez    $t6, branch_0x802c6118
    nop
    lw      $t7, 0x8($t2)
    addiu   $at, $zero, 0xa
    lui     $a0, 0x802d
    bne     $t7, $at, branch_0x802c6084
    addiu   $a0, $a0, 0x80f4
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x80c0
    lw      $v0, 0x0($a0)
    addiu   $t1, $zero, 0x1
    beqz    $v0, branch_0x802c606c
    nop
    beq     $v0, $t1, branch_0x802c607c
    nop
    b       branch_0x802c6108
    addiu   $a0, $zero, 0x16
branch_0x802c606c:
    jal     Function_0x802c802c
    addiu   $a0, $zero, 0x3c
    b       branch_0x802c6108
    addiu   $a0, $zero, 0x16
branch_0x802c607c:
    b       branch_0x802c6104
    sw      $zero, 0x0($a0)
branch_0x802c6084:
    lw      $v1, 0xc($t2)
    addiu   $t1, $zero, 0x1
    addiu   $a1, $zero, 0xfec0
    beq     $t1, $v1, branch_0x802c60a0
    or      $a2, $zero, $zero
    addiu   $at, $zero, 0x3
    bne     $v1, $at, branch_0x802c60b0
branch_0x802c60a0:
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x80c4
    b       branch_0x802c60bc
    sw      $zero, 0x0($v1)
branch_0x802c60b0:
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x80c4
    sw      $t1, 0x0($v1)
branch_0x802c60bc:
    lui     $at, 0x802d
    sw      $t1, -0x7f24($at)
    addiu   $a3, $zero, 0xa
    jal     Function_0x802c7194
    sw      $zero, 0x10($sp)
    addiu   $t1, $zero, 0x1
    lui     $at, 0x802d
    lui     $a0, 0x802d
    sw      $t1, -0x7f20($at)
    addiu   $a0, $a0, 0x8114
    addiu   $a1, $zero, 0xfec0
    or      $a2, $zero, $zero
    addiu   $a3, $zero, 0xa
    jal     Function_0x802c7194
    sw      $zero, 0x10($sp)
    addiu   $a0, $zero, 0x2a
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c6104:
    addiu   $a0, $zero, 0x16
branch_0x802c6108:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6744
    lw      $ra, 0x1c($sp)
branch_0x802c6118:
    lui     $v1, 0x802d
    andi    $t8, $v0, 0x800
    beqz    $t8, branch_0x802c6278
    addiu   $v1, $v1, 0x81a4
    lui     $t2, 0x802d
    addiu   $t2, $t2, 0x80e4
    lw      $t9, 0x8($t2)
    addiu   $at, $zero, 0xa
    lui     $t0, 0x802d
    bne     $t9, $at, branch_0x802c61ac
    addiu   $t0, $t0, 0x80c8
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x80c0
    lw      $t3, 0x0($a0)
    addiu   $t1, $zero, 0x1
    lui     $v1, 0x802d
    bne     $t1, $t3, branch_0x802c6258
    addiu   $v1, $v1, 0x80c4
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x80c8
    lw      $t5, 0x0($t0)
    lw      $t7, 0x0($v1)
    addiu   $t4, $zero, 0x1
    addiu   $t6, $t5, 0xffff
    sw      $t4, 0x24($sp)
    bnez    $t7, branch_0x802c618c
    sw      $t6, 0x0($t0)
    b       branch_0x802c6190
    addiu   $v0, $zero, 0x1
branch_0x802c618c:
    or      $v0, $zero, $zero
branch_0x802c6190:
    lw      $t8, 0x0($t0)
    addiu   $t9, $zero, 0x8
    slt     $at, $t8, $v0
    beqzl   $at, branch_0x802c625c
    lw      $t3, 0x24($sp)
    b       branch_0x802c6258
    sw      $t9, 0x0($t0)
branch_0x802c61ac:
    lw      $t3, 0x0($t0)
    lw      $v1, 0xc($t2)
    addiu   $at, $zero, 0x2
    addiu   $t4, $t3, 0xffff
    bne     $v1, $at, branch_0x802c61d8
    sw      $t4, 0x0($t0)
    bgez    $t4, branch_0x802c61ec
    or      $v0, $t4, $zero
    addiu   $v0, $zero, 0x8
    b       branch_0x802c61ec
    sw      $v0, 0x0($t0)
branch_0x802c61d8:
    lw      $v0, 0x0($t0)
    bgtzl   $v0, branch_0x802c61f0
    sll     $t7, $v0, 2
    addiu   $v0, $zero, 0x8
    sw      $v0, 0x0($t0)
branch_0x802c61ec:
    sll     $t7, $v0, 2
branch_0x802c61f0:
    lui     $a3, 0x800e
    addu    $a3, $a3, $t7
    lw      $a3, -0x57a8($a3)
    addiu   $t8, $zero, 0x4
    lui     $at, 0x802d
    lui     $a0, 0x802d
    sw      $t8, -0x7f24($at)
    addiu   $a0, $a0, 0x80f4
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff10
    sw      $v1, 0x10($sp)
    jal     Function_0x802c7194
    sw      $a3, 0x20($sp)
    addiu   $t9, $zero, 0x4
    lui     $at, 0x802d
    lui     $a0, 0x802d
    lw      $a3, 0x20($sp)
    sw      $t9, -0x7f20($at)
    addiu   $a0, $a0, 0x8114
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff10
    jal     Function_0x802c7194
    sw      $zero, 0x10($sp)
    addiu   $a0, $zero, 0x2a
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c6258:
    lw      $t3, 0x24($sp)
branch_0x802c625c:
    addiu   $a0, $zero, 0x10
    beqzl   $t3, branch_0x802c6744
    lw      $ra, 0x1c($sp)
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6744
    lw      $ra, 0x1c($sp)
branch_0x802c6278:
    andi    $t4, $v0, 0x400
    beqz    $t4, branch_0x802c63cc
    andi    $t6, $v0, 0x200
    lui     $t2, 0x802d
    addiu   $t2, $t2, 0x80e4
    lw      $t5, 0x8($t2)
    addiu   $at, $zero, 0xa
    lui     $t0, 0x802d
    bne     $t5, $at, branch_0x802c6304
    addiu   $t0, $t0, 0x80c8
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x80c0
    lw      $t6, 0x0($a0)
    addiu   $t1, $zero, 0x1
    lui     $v1, 0x802d
    bne     $t1, $t6, branch_0x802c63ac
    addiu   $v1, $v1, 0x80c4
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x80c8
    lw      $t8, 0x0($t0)
    lw      $t3, 0x0($v1)
    addiu   $t7, $zero, 0x1
    addiu   $t9, $t8, 0x1
    sw      $t7, 0x24($sp)
    bnez    $t3, branch_0x802c62e8
    sw      $t9, 0x0($t0)
    b       branch_0x802c62ec
    addiu   $v0, $zero, 0x1
branch_0x802c62e8:
    or      $v0, $zero, $zero
branch_0x802c62ec:
    lw      $t4, 0x0($t0)
    slti    $at, $t4, 0x9
    bnezl   $at, branch_0x802c63b0
    lw      $t5, 0x24($sp)
    b       branch_0x802c63ac
    sw      $v0, 0x0($t0)
branch_0x802c6304:
    lw      $t5, 0x0($t0)
    lui     $a3, 0x800e
    addiu   $t9, $zero, 0x3
    addiu   $v0, $t5, 0x1
    slti    $at, $v0, 0x9
    bnez    $at, branch_0x802c6344
    sw      $v0, 0x0($t0)
    lw      $t7, 0xc($t2)
    addiu   $at, $zero, 0x2
    addiu   $v0, $zero, 0x1
    bnel    $t7, $at, branch_0x802c6344
    sw      $v0, 0x0($t0)
    sw      $zero, 0x0($t0)
    b       branch_0x802c6344
    or      $v0, $zero, $zero

.globl Function_0x802c6340
Function_0x802c6340: # 0x802c6340
    sw      $v0, 0x0($t0)
branch_0x802c6344:
    sll     $t8, $v0, 2
    lui     $at, 0x802d
    addu    $a3, $a3, $t8
    sw      $t9, -0x7f24($at)
    lw      $a3, -0x57a8($a3)
    lw      $t3, 0xc($t2)
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x80f4
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xf0
    sw      $a3, 0x20($sp)
    jal     Function_0x802c7194
    sw      $t3, 0x10($sp)
    addiu   $t4, $zero, 0x3
    lui     $at, 0x802d
    lui     $a0, 0x802d
    lw      $a3, 0x20($sp)
    sw      $t4, -0x7f20($at)
    addiu   $a0, $a0, 0x8114
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xf0
    jal     Function_0x802c7194
    sw      $zero, 0x10($sp)
    addiu   $a0, $zero, 0x2a
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c63ac:
    lw      $t5, 0x24($sp)
branch_0x802c63b0:
    addiu   $a0, $zero, 0x10
    beqzl   $t5, branch_0x802c6744
    lw      $ra, 0x1c($sp)
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6744
    lw      $ra, 0x1c($sp)
branch_0x802c63cc:
    beqz    $t6, branch_0x802c658c
    andi    $t3, $v0, 0x100
    lw      $t7, 0x0($v1)
    lui     $t2, 0x802d
    addiu   $t2, $t2, 0x80e4
    bnez    $t7, branch_0x802c658c
    nop
    lw      $v0, 0x8($t2)
    addiu   $at, $zero, 0xa
    beqzl   $v0, branch_0x802c6570
    lw      $t9, 0x24($sp)
    bne     $v0, $at, branch_0x802c649c
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x80c0
    lw      $v0, 0x0($a0)
    addiu   $t8, $zero, 0x1
    sw      $t8, 0x24($sp)
    beqz    $v0, branch_0x802c642c
    lui     $v1, 0x802d
    addiu   $t1, $zero, 0x1
    beq     $v0, $t1, branch_0x802c644c
    lui     $v1, 0x802d
    b       branch_0x802c6570
    lw      $t9, 0x24($sp)
branch_0x802c642c:
    addiu   $v1, $v1, 0x80c4
    lw      $t9, 0x0($v1)
    addiu   $t5, $zero, 0x2
    addiu   $t3, $t9, 0xffff
    bgez    $t3, branch_0x802c656c
    sw      $t3, 0x0($v1)
    b       branch_0x802c656c
    sw      $t5, 0x0($v1)
branch_0x802c644c:
    addiu   $v1, $v1, 0x80c4
    lw      $t6, 0x0($v1)
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x80c8
    bnez    $t6, branch_0x802c6470
    nop
    lw      $t7, 0x0($t0)
    addiu   $at, $zero, 0x5
    beq     $t7, $at, branch_0x802c656c
branch_0x802c6470:
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x80c8
    lw      $v0, 0x0($t0)
    addiu   $at, $zero, 0x4
    beq     $v0, $at, branch_0x802c656c
    addiu   $t8, $v0, 0xfffb
    bgez    $t8, branch_0x802c656c
    sw      $t8, 0x0($t0)
    addiu   $t9, $t8, 0xa
    b       branch_0x802c656c
    sw      $t9, 0x0($t0)
branch_0x802c649c:
    lw      $v1, 0xc($t2)
    addiu   $at, $zero, 0x2
    lui     $t0, 0x802d
    bne     $v1, $at, branch_0x802c6510
    addiu   $t1, $zero, 0x1
    addiu   $t1, $zero, 0x1
    lui     $at, 0x802d
    bne     $t1, $v1, branch_0x802c64c8
    sw      $t1, -0x7f24($at)
    b       branch_0x802c64cc
    addiu   $v0, $zero, 0x2
branch_0x802c64c8:
    addiu   $v0, $zero, 0x1
branch_0x802c64cc:
    addiu   $t0, $t0, 0x80c8
    lw      $t3, 0x0($t0)
    lui     $a3, 0x800e
    lui     $a0, 0x802d
    sll     $t4, $t3, 2
    addu    $a3, $a3, $t4
    lw      $a3, -0x57a8($a3)
    addiu   $a0, $a0, 0x80f4
    addiu   $a1, $zero, 0xfec0
    or      $a2, $zero, $zero
    jal     Function_0x802c7194
    sw      $v0, 0x10($sp)
    addiu   $a0, $zero, 0x2a
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6570
    lw      $t9, 0x24($sp)
branch_0x802c6510:
    bne     $t1, $v1, branch_0x802c656c
    lui     $t5, 0x802d
    lw      $t5, -0x7e4c($t5)
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x80c8
    beqz    $t5, branch_0x802c656c
    lui     $at, 0x802d
    sw      $t1, -0x7f24($at)
    lw      $t6, 0x0($t0)
    lui     $a3, 0x800e
    lui     $a0, 0x802d
    sll     $t7, $t6, 2
    addu    $a3, $a3, $t7
    addiu   $t8, $zero, 0x3
    sw      $t8, 0x10($sp)
    lw      $a3, -0x57a8($a3)
    addiu   $a0, $a0, 0x80f4
    addiu   $a1, $zero, 0xfec0
    jal     Function_0x802c7194
    or      $a2, $zero, $zero
    addiu   $a0, $zero, 0x2a
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c656c:
    lw      $t9, 0x24($sp)
branch_0x802c6570:
    addiu   $a0, $zero, 0x10
    beqzl   $t9, branch_0x802c6744
    lw      $ra, 0x1c($sp)
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6744
    lw      $ra, 0x1c($sp)
branch_0x802c658c:
    beqzl   $t3, branch_0x802c6744
    lw      $ra, 0x1c($sp)
    lw      $t4, 0x0($v1)
    lui     $t2, 0x802d
    addiu   $t2, $t2, 0x80e4
    bnezl   $t4, branch_0x802c6744
    lw      $ra, 0x1c($sp)
    lw      $v0, 0x8($t2)
    addiu   $at, $zero, 0xa
    beqzl   $v0, branch_0x802c672c
    lw      $t6, 0x24($sp)
    bne     $v0, $at, branch_0x802c6660
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x80c0
    lw      $v0, 0x0($a0)
    addiu   $t5, $zero, 0x1
    sw      $t5, 0x24($sp)
    beqz    $v0, branch_0x802c65ec
    lui     $v1, 0x802d
    addiu   $t1, $zero, 0x1
    beq     $v0, $t1, branch_0x802c660c
    lui     $v1, 0x802d
    b       branch_0x802c672c
    lw      $t6, 0x24($sp)
branch_0x802c65ec:
    addiu   $v1, $v1, 0x80c4
    lw      $t6, 0x0($v1)
    addiu   $at, $zero, 0x3
    addiu   $t7, $t6, 0x1
    bne     $t7, $at, branch_0x802c6728
    sw      $t7, 0x0($v1)
    b       branch_0x802c6728
    sw      $zero, 0x0($v1)
branch_0x802c660c:
    addiu   $v1, $v1, 0x80c4
    lw      $t9, 0x0($v1)
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x80c8
    bnez    $t9, branch_0x802c6630
    nop
    lw      $t3, 0x0($t0)
    addiu   $at, $zero, 0x5
    beq     $t3, $at, branch_0x802c6728
branch_0x802c6630:
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x80c8
    lw      $v0, 0x0($t0)
    addiu   $at, $zero, 0x4
    beq     $v0, $at, branch_0x802c6728
    addiu   $t4, $v0, 0x5
    slti    $at, $t4, 0x9
    bnez    $at, branch_0x802c6728
    sw      $t4, 0x0($t0)
    addiu   $t5, $t4, 0xfff6
    b       branch_0x802c6728
    sw      $t5, 0x0($t0)
branch_0x802c6660:
    lw      $v1, 0xc($t2)
    addiu   $t1, $zero, 0x1
    addiu   $t6, $zero, 0x2
    bne     $t1, $v1, branch_0x802c66d4
    addiu   $at, $zero, 0x3
    lui     $at, 0x802d
    bne     $t1, $v1, branch_0x802c6688
    sw      $t6, -0x7f24($at)
    b       branch_0x802c668c
    addiu   $v0, $zero, 0x2
branch_0x802c6688:
    addiu   $v0, $zero, 0x1
branch_0x802c668c:
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x80c8
    lw      $t7, 0x0($t0)
    lui     $a3, 0x800e
    lui     $a0, 0x802d
    sll     $t8, $t7, 2
    addu    $a3, $a3, $t8
    lw      $a3, -0x57a8($a3)
    addiu   $a0, $a0, 0x80f4
    addiu   $a1, $zero, 0x140
    or      $a2, $zero, $zero
    jal     Function_0x802c7194
    sw      $v0, 0x10($sp)
    addiu   $a0, $zero, 0x2a
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c672c
    lw      $t6, 0x24($sp)
branch_0x802c66d4:
    bne     $v1, $at, branch_0x802c6728
    lui     $t0, 0x802d
    addiu   $t9, $zero, 0x2
    lui     $at, 0x802d
    addiu   $t0, $t0, 0x80c8
    sw      $t9, -0x7f24($at)
    lw      $t3, 0x0($t0)
    lui     $a3, 0x800e
    lui     $a0, 0x802d
    sll     $t4, $t3, 2
    addu    $a3, $a3, $t4
    addiu   $t5, $zero, 0x1
    sw      $t5, 0x10($sp)
    lw      $a3, -0x57a8($a3)
    addiu   $a0, $a0, 0x80f4
    addiu   $a1, $zero, 0x140
    jal     Function_0x802c7194
    or      $a2, $zero, $zero
    addiu   $a0, $zero, 0x2a
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c6728:
    lw      $t6, 0x24($sp)
branch_0x802c672c:
    addiu   $a0, $zero, 0x10
    beqzl   $t6, branch_0x802c6744
    lw      $ra, 0x1c($sp)
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c6740:
    lw      $ra, 0x1c($sp)
branch_0x802c6744:
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x802c6750
Function_0x802c6750: # 0x802c6750
    addiu   $sp, $sp, 0xff90
    lui     $t6, 0x802d
    lw      $t6, -0x7f24($t6)
    sw      $s0, 0x40($sp)
    or      $s0, $a0, $zero
    sw      $ra, 0x64($sp)
    sw      $fp, 0x60($sp)
    sw      $s7, 0x5c($sp)
    sw      $s6, 0x58($sp)
    sw      $s5, 0x54($sp)
    sw      $s4, 0x50($sp)
    sw      $s3, 0x4c($sp)
    sw      $s2, 0x48($sp)
    bnez    $t6, branch_0x802c6798
    sw      $s1, 0x44($sp)
    addiu   $t7, $zero, 0x1
    b       branch_0x802c67a0
    sw      $t7, 0x68($sp)
branch_0x802c6798:
    addiu   $t8, $zero, 0x2
    sw      $t8, 0x68($sp)
branch_0x802c67a0:
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    lui     $t9, 0x103
    lui     $t3, 0x700
    addiu   $t3, $t3, 0x0
    ori     $t9, $t9, 0x40
    or      $v1, $s0, $zero
    sw      $t9, 0x0($v0)
    sw      $t3, 0x4($v0)
    lui     $t4, 0x102
    lui     $t5, 0x200
    addiu   $t5, $t5, 0xa40
    ori     $t4, $t4, 0x40
    addiu   $s0, $s0, 0x8
    sw      $t4, 0x0($v1)
    sw      $t5, 0x4($v1)
    or      $a0, $s0, $zero
    lui     $t7, 0x107
    addiu   $t7, $t7, 0xf550
    lui     $t6, 0x600
    sw      $t6, 0x0($a0)
    sw      $t7, 0x4($a0)
    lw      $t8, 0x68($sp)
    addiu   $s0, $s0, 0x8
    or      $s6, $zero, $zero
    blez    $t8, branch_0x802c6c94
    lui     $s4, 0x802d
    lui     $s5, 0x802d
    addiu   $s5, $s5, 0x80e4
    addiu   $s4, $s4, 0x8104
    lui     $fp, 0xb300
    lui     $s7, 0xe400
branch_0x802c6820:
    lw      $t6, 0x8($s4)
    lui     $t3, 0x802d
    lui     $t5, 0x802d
    lw      $t3, -0x7f2c($t3)
    lw      $t9, 0x0($s4)
    lw      $t5, -0x7f28($t5)
    lw      $t4, 0x4($s4)
    sltiu   $at, $t6, 0xb
    addu    $s2, $t9, $t3
    beqz    $at, branch_0x802c6c0c
    addu    $s3, $t4, $t5
    sll     $t6, $t6, 2
    lui     $at, 0x802d
    addu    $at, $at, $t6
    lw      $t6, -0x7de0($at)
    jr      $t6
    nop

.globl Function_0x802c6864
Function_0x802c6864: # 0x802c6864
    or      $v0, $s0, $zero
    lui     $t8, 0x107
    addiu   $t8, $t8, 0xf628
    lui     $t7, 0x600
    sw      $t7, 0x0($v0)
    sw      $t8, 0x4($v0)
    addiu   $t9, $zero, 0x108
    addiu   $t3, $zero, 0x18
    lui     $s1, 0x806
    addiu   $a0, $s0, 0x8
    addiu   $s1, $s1, 0x8
    sw      $t3, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $s2, 0x1c
    jal     Function_0x800940d8
    addiu   $a3, $s3, 0x1e
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t3, $zero, 0xff
    sw      $t3, 0x28($sp)
    sw      $t9, 0x24($sp)
    sw      $t8, 0x20($sp)
    sw      $t7, 0x1c($sp)
    sw      $t6, 0x18($sp)
    sw      $t6, 0x34($sp)
    sw      $t5, 0x14($sp)
    sw      $t5, 0x30($sp)
    sw      $t4, 0x10($sp)
    sw      $t4, 0x2c($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lw      $v1, 0x8($s4)
    lui     $t8, 0x802d
    lui     $a2, 0x800e
    sll     $t7, $v1, 2
    addu    $t8, $t8, $t7
    lw      $t8, -0x7e8c($t8)
    addu    $a2, $a2, $t7
    addiu   $t9, $s3, 0x21
    addu    $a3, $t8, $s2
    addiu   $a3, $a3, 0x4c
    sw      $t9, 0x10($sp)
    lw      $a2, -0x584c($a2)
    or      $v1, $t7, $zero
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lui     $t3, 0xfd70
    lui     $t4, 0xf570
    lui     $t5, 0x708
    lui     $t6, 0xe600
    sw      $t6, 0x10($v0)
    ori     $t5, $t5, 0x200
    sw      $t4, 0x8($v0)
    sw      $t3, 0x0($v0)
    lui     $t3, 0xf568
    lui     $t4, 0x8
    sw      $t5, 0xc($v0)
    lui     $t6, 0x1
    lui     $t8, 0x701
    ori     $t8, $t8, 0xf800
    ori     $t6, $t6, 0xc01c
    lui     $t5, 0xf200
    ori     $t4, $t4, 0x200
    ori     $t3, $t3, 0x200
    lui     $t7, 0xf300
    lui     $t9, 0xe700
    sw      $t9, 0x20($v0)
    sw      $t7, 0x18($v0)
    sw      $t3, 0x28($v0)
    sw      $t4, 0x2c($v0)
    sw      $t5, 0x30($v0)
    sw      $t6, 0x34($v0)
    sw      $t8, 0x1c($v0)
    sw      $s1, 0x4($v0)
    sw      $zero, 0x14($v0)
    sw      $zero, 0x24($v0)
    addiu   $t8, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x18($sp)
    sw      $t9, 0x34($sp)
    sw      $t7, 0x10($sp)
    sw      $t7, 0x2c($sp)
    sw      $t3, 0x1c($sp)
    sw      $t4, 0x20($sp)
    sw      $t5, 0x24($sp)
    sw      $t6, 0x28($sp)
    sw      $t8, 0x14($sp)
    sw      $t8, 0x30($sp)
    addiu   $a0, $v0, 0x38
    addiu   $a1, $zero, 0x6
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    addiu   $t1, $s2, 0xa0
    sll     $t3, $t1, 2
    blez    $t3, branch_0x802c6a2c
    or      $t1, $t3, $zero
    b       branch_0x802c6a30
    or      $a1, $t3, $zero
branch_0x802c6a2c:
    or      $a1, $zero, $zero
branch_0x802c6a30:
    addiu   $v1, $s3, 0x1d
    sll     $t4, $v1, 2
    blez    $t4, branch_0x802c6a48
    andi    $t7, $a1, 0xfff
    b       branch_0x802c6a4c
    or      $a0, $t4, $zero
branch_0x802c6a48:
    or      $a0, $zero, $zero
branch_0x802c6a4c:
    andi    $t5, $a0, 0xfff
    or      $t6, $t5, $s7
    sll     $t8, $t7, 12
    addiu   $a2, $s2, 0x98
    sll     $t3, $a2, 2
    or      $t9, $t6, $t8
    sw      $t9, 0x0($v0)
    blez    $t3, branch_0x802c6a78
    or      $a2, $t3, $zero
    b       branch_0x802c6a7c
    or      $a1, $t3, $zero
branch_0x802c6a78:
    or      $a1, $zero, $zero
branch_0x802c6a7c:
    addiu   $a3, $s3, 0x15
    sll     $v1, $a3, 2
    blez    $v1, branch_0x802c6a94
    andi    $t5, $a1, 0xfff
    b       branch_0x802c6a98
    or      $a0, $v1, $zero
branch_0x802c6a94:
    or      $a0, $zero, $zero
branch_0x802c6a98:
    andi    $t4, $a0, 0xfff
    sll     $t7, $t5, 12
    or      $t6, $t4, $t7
    sll     $t2, $a2, 10
    sra     $t8, $t2, 7
    sw      $t6, 0x4($v0)
    addiu   $t0, $v0, 0x8
    addiu   $s0, $t0, 0x8
    sw      $fp, 0x0($t0)
    bgez    $t8, branch_0x802c6acc
    or      $t2, $t8, $zero
    b       branch_0x802c6ad0
    or      $a1, $t8, $zero
branch_0x802c6acc:
    or      $a1, $zero, $zero
branch_0x802c6ad0:
    sra     $v0, $a3, 7
    bgez    $v0, branch_0x802c6ae4
    addiu   $t9, $zero, 0xe0
    b       branch_0x802c6ae8
    or      $a0, $v0, $zero
branch_0x802c6ae4:
    or      $a0, $zero, $zero
branch_0x802c6ae8:
    subu    $t3, $t9, $a0
    andi    $t5, $t3, 0xffff
    subu    $t7, $zero, $a1
    sll     $t6, $t7, 16
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    or      $t8, $t5, $t6
    lui     $t3, 0x400
    ori     $t3, $t3, 0xfc00
    sw      $t8, 0x4($t0)
    lui     $t9, 0xb200
    or      $a3, $s0, $zero
    sw      $t9, 0x0($v0)
    sw      $t3, 0x4($v0)
    blez    $t1, branch_0x802c6b30
    addiu   $s0, $s0, 0x8
    b       branch_0x802c6b34
    or      $a1, $t1, $zero
branch_0x802c6b30:
    or      $a1, $zero, $zero
branch_0x802c6b34:
    addiu   $v0, $s3, 0xdb
    sll     $t4, $v0, 2
    blez    $t4, branch_0x802c6b4c
    andi    $t6, $a1, 0xfff
    b       branch_0x802c6b50
    or      $a0, $t4, $zero
branch_0x802c6b4c:
    or      $a0, $zero, $zero
branch_0x802c6b50:
    andi    $t7, $a0, 0xfff
    or      $t5, $t7, $s7
    sll     $t8, $t6, 12
    or      $t9, $t5, $t8
    blez    $a2, branch_0x802c6b70
    sw      $t9, 0x0($a3)
    b       branch_0x802c6b74
    or      $a1, $a2, $zero
branch_0x802c6b70:
    or      $a1, $zero, $zero
branch_0x802c6b74:
    addiu   $v1, $s3, 0xd3
    sll     $t3, $v1, 2
    blez    $t3, branch_0x802c6b8c
    or      $v1, $t3, $zero
    b       branch_0x802c6b90
    or      $a0, $t3, $zero
branch_0x802c6b8c:
    or      $a0, $zero, $zero
branch_0x802c6b90:
    andi    $t7, $a1, 0xfff
    sll     $t6, $t7, 12
    andi    $t4, $a0, 0xfff
    or      $t5, $t4, $t6
    sw      $t5, 0x4($a3)
    or      $a2, $s0, $zero
    sw      $fp, 0x0($a2)
    bgez    $t2, branch_0x802c6bbc
    addiu   $s0, $s0, 0x8
    b       branch_0x802c6bc0
    or      $a1, $t2, $zero
branch_0x802c6bbc:
    or      $a1, $zero, $zero
branch_0x802c6bc0:
    sll     $v0, $v1, 10
    sra     $t8, $v0, 7
    bgez    $t8, branch_0x802c6bd8
    subu    $t4, $zero, $a1
    b       branch_0x802c6bdc
    or      $a0, $t8, $zero
branch_0x802c6bd8:
    or      $a0, $zero, $zero
branch_0x802c6bdc:
    subu    $t9, $zero, $a0
    andi    $t3, $t9, 0xffff
    sll     $t6, $t4, 16
    or      $t5, $t3, $t6
    or      $v0, $s0, $zero
    sw      $t5, 0x4($a2)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    lui     $t8, 0xb200
    sw      $t8, 0x0($v0)
    sw      $t9, 0x4($v0)
    addiu   $s0, $s0, 0x8
branch_0x802c6c0c:
    lw      $a2, 0x8($s5)
    lui     $t4, 0x802d
    lui     $t6, 0x802d
    lw      $t4, -0x7f34($t4)
    lw      $t7, 0x0($s5)
    lw      $t6, -0x7f30($t6)
    lw      $t3, 0x4($s5)
    sltiu   $at, $a2, 0xb
    addu    $s2, $t7, $t4
    beqz    $at, branch_0x802c6c80
    addu    $s3, $t3, $t6
    sll     $t5, $a2, 2
    lui     $at, 0x802d
    addu    $at, $at, $t5
    lw      $t5, -0x7db4($at)
    jr      $t5
    nop

.globl Function_0x802c6c50
Function_0x802c6c50: # 0x802c6c50
    or      $a0, $s0, $zero
    jal     Function_0x802c6cc8
    or      $a1, $s2, $zero
    b       branch_0x802c6c80
    or      $s0, $v0, $zero

.globl Function_0x802c6c64
Function_0x802c6c64: # 0x802c6c64
    or      $a0, $s0, $zero
    or      $a1, $s6, $zero
    lw      $a3, 0xc($s5)
    sw      $s2, 0x10($sp)
    jal     Function_0x802c71ac
    sw      $s3, 0x14($sp)
    or      $s0, $v0, $zero
branch_0x802c6c80:
    lw      $t8, 0x68($sp)
    addiu   $s6, $s6, 0x1
    addiu   $s4, $s4, 0x10
    bne     $s6, $t8, branch_0x802c6820
    addiu   $s5, $s5, 0x10
branch_0x802c6c94:
    lw      $ra, 0x64($sp)
    or      $v0, $s0, $zero
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
    addiu   $sp, $sp, 0x70

.globl Function_0x802c6cc8
Function_0x802c6cc8: # 0x802c6cc8
    addiu   $sp, $sp, 0xff98
    sw      $fp, 0x60($sp)
    sw      $s7, 0x5c($sp)
    sw      $s6, 0x58($sp)
    sw      $s4, 0x50($sp)
    sw      $s0, 0x40($sp)
    sw      $ra, 0x64($sp)
    sw      $s5, 0x54($sp)
    sw      $s3, 0x4c($sp)
    sw      $s2, 0x48($sp)
    sw      $s1, 0x44($sp)
    lui     $t7, 0x107
    addiu   $t7, $t7, 0xf628
    lui     $t6, 0x600
    or      $s7, $a1, $zero
    sw      $t6, 0x0($a0)
    sw      $t7, 0x4($a0)
    addiu   $s4, $a0, 0x8
    or      $v0, $a0, $zero
    or      $s0, $zero, $zero
    addiu   $s6, $zero, 0x5
    addiu   $fp, $zero, 0x85
branch_0x802c6d20:
    div     $zero, $s0, $s6
    mflo    $t8
    addiu   $t1, $zero, 0x83
    addiu   $t2, $zero, 0x10
    multu   $t8, $fp
    sw      $t2, 0x14($sp)
    sw      $t1, 0x10($sp)
    or      $a0, $s4, $zero
    or      $a1, $zero, $zero
    bnez    $s6, branch_0x802c6d50
    nop
    break   0x7
branch_0x802c6d50:
    addiu   $at, $zero, 0xffff
    bne     $s6, $at, branch_0x802c6d68
    lui     $at, 0x8000
    bne     $s0, $at, branch_0x802c6d68
    nop
    break   0x6
branch_0x802c6d68:
    mflo    $t9
    addu    $a2, $s7, $t9
    addiu   $a2, $a2, 0x1c
    div     $zero, $s0, $s6
    mfhi    $a3
    sll     $t0, $a3, 3
    addu    $t0, $t0, $a3
    sll     $t0, $t0, 1
    bnez    $s6, branch_0x802c6d94
    nop
    break   0x7
branch_0x802c6d94:
    addiu   $at, $zero, 0xffff
    bne     $s6, $at, branch_0x802c6dac
    lui     $at, 0x8000
    bne     $s0, $at, branch_0x802c6dac
    nop
    break   0x6
branch_0x802c6dac:
    addiu   $a3, $t0, 0x5f
    jal     Function_0x800940d8
    nop
    addiu   $s0, $s0, 0x1
    slti    $at, $s0, 0x9
    bnez    $at, branch_0x802c6d20
    or      $s4, $v0, $zero
    addiu   $t3, $zero, 0x57
    addiu   $t4, $zero, 0x10
    sw      $t4, 0x14($sp)
    sw      $t3, 0x10($sp)
    or      $a0, $s4, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $s7, 0x1c
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x44
    addiu   $t5, $zero, 0x57
    addiu   $t6, $zero, 0x10
    sw      $t6, 0x14($sp)
    sw      $t5, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $s7, 0x75
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x44
    addiu   $t7, $zero, 0x57
    addiu   $t8, $zero, 0x10
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $s7, 0xce
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x44
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x34($sp)
    sw      $t7, 0x30($sp)
    sw      $t6, 0x2c($sp)
    sw      $t5, 0x28($sp)
    sw      $t4, 0x24($sp)
    sw      $t3, 0x20($sp)
    sw      $t2, 0x1c($sp)
    sw      $t1, 0x18($sp)
    sw      $t0, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    addiu   $t9, $zero, 0x1d
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x7
    addiu   $a3, $s7, 0x48
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lui     $s1, 0x802d
    lui     $s2, 0x802d
    lui     $s5, 0x802d
    or      $s4, $v0, $zero
    addiu   $s5, $s5, 0x80c4
    addiu   $s2, $s2, 0x8144
    addiu   $s1, $s1, 0x8138
    or      $s0, $zero, $zero
    or      $s3, $zero, $zero
branch_0x802c6edc:
    lw      $t0, 0x0($s5)
    or      $a0, $s4, $zero
    addiu   $a2, $zero, 0xff
    bne     $s0, $t0, branch_0x802c6ef8
    addiu   $a3, $zero, 0xff
    b       branch_0x802c6efc
    addiu   $a1, $zero, 0x6
branch_0x802c6ef8:
    or      $a1, $zero, $zero
branch_0x802c6efc:
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
    sw      $t0, 0x34($sp)
    sw      $t9, 0x30($sp)
    sw      $t8, 0x2c($sp)
    sw      $t7, 0x28($sp)
    sw      $t6, 0x24($sp)
    sw      $t5, 0x20($sp)
    sw      $t4, 0x1c($sp)
    sw      $t3, 0x18($sp)
    sw      $t2, 0x14($sp)
    jal     Function_0x801e91f4_changePalette
    sw      $t1, 0x10($sp)
    lw      $t1, 0x0($s2)
    addiu   $t3, $zero, 0x47
    sw      $t3, 0x10($sp)
    addu    $t2, $t1, $s7
    addu    $a3, $t2, $s3
    addiu   $a3, $a3, 0x34
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    lw      $a2, 0x0($s1)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    addiu   $s0, $s0, 0x1
    slti    $at, $s0, 0x3
    addiu   $s1, $s1, 0x4
    addiu   $s2, $s2, 0x4
    addiu   $s3, $s3, 0x59
    bnez    $at, branch_0x802c6edc
    or      $s4, $v0, $zero
    lui     $s1, 0x800e
    lui     $s3, 0x802d
    lui     $s2, 0x802d
    addiu   $s2, $s2, 0x80c8
    addiu   $s3, $s3, 0x80c0
    addiu   $s1, $s1, 0xa858
    or      $s0, $zero, $zero
branch_0x802c6fb4:
    lw      $t4, 0x0($s3)
    or      $a0, $s4, $zero
    addiu   $a2, $zero, 0x80
    bnez    $t4, branch_0x802c6ff4
    addiu   $a3, $zero, 0x80
    lw      $t5, 0x0($s5)
    bnez    $t5, branch_0x802c6fec
    nop
    bnez    $s0, branch_0x802c6fe4
    nop
    b       branch_0x802c7044
    addiu   $a1, $zero, 0x7
branch_0x802c6fe4:
    b       branch_0x802c7044
    or      $a1, $zero, $zero
branch_0x802c6fec:
    b       branch_0x802c7044
    or      $a1, $zero, $zero
branch_0x802c6ff4:
    lw      $t6, 0x0($s5)
    bnezl   $t6, branch_0x802c7030
    lw      $t8, 0x0($s2)
    bnezl   $s0, branch_0x802c7014
    lw      $t7, 0x0($s2)
    b       branch_0x802c7044
    addiu   $a1, $zero, 0x7

.globl Function_0x802c7010
Function_0x802c7010: # 0x802c7010
    lw      $t7, 0x0($s2)
branch_0x802c7014:
    bne     $s0, $t7, branch_0x802c7024
    nop
    b       branch_0x802c7044
    addiu   $a1, $zero, 0x6
branch_0x802c7024:
    b       branch_0x802c7044
    or      $a1, $zero, $zero

.globl Function_0x802c702c
Function_0x802c702c: # 0x802c702c
    lw      $t8, 0x0($s2)
branch_0x802c7030:
    or      $a1, $zero, $zero
    bne     $s0, $t8, branch_0x802c7044
    nop
    b       branch_0x802c7044
    addiu   $a1, $zero, 0x6
branch_0x802c7044:
    addiu   $t9, $zero, 0x80
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x34($sp)
    sw      $t7, 0x30($sp)
    sw      $t6, 0x2c($sp)
    sw      $t5, 0x28($sp)
    sw      $t4, 0x24($sp)
    sw      $t3, 0x20($sp)
    sw      $t2, 0x1c($sp)
    sw      $t1, 0x18($sp)
    sw      $t0, 0x14($sp)
    jal     Function_0x801e91f4_changePalette
    sw      $t9, 0x10($sp)
    div     $zero, $s0, $s6
    mflo    $t2
    lw      $v1, 0x0($s1)
    lui     $t0, 0x802d
    multu   $t2, $fp
    sll     $t9, $v1, 2
    addu    $t0, $t0, $t9
    lw      $t0, -0x7eb0($t0)
    lui     $a2, 0x800e
    addu    $a2, $a2, $t9
    addu    $t1, $t0, $s7
    lw      $a2, -0x5870($a2)
    or      $v1, $t9, $zero
    or      $a0, $v0, $zero
    mflo    $t3
    addu    $a3, $t1, $t3
    addiu   $a3, $a3, 0x37
    div     $zero, $s0, $s6
    mfhi    $t4
    sll     $t5, $t4, 3
    addu    $t5, $t5, $t4
    sll     $t5, $t5, 1
    addiu   $t6, $t5, 0x62
    sw      $t6, 0x10($sp)
    addiu   $a1, $zero, 0x1
    bnez    $s6, branch_0x802c7108
    nop
    break   0x7
branch_0x802c7108:
    addiu   $at, $zero, 0xffff
    bne     $s6, $at, branch_0x802c7120
    lui     $at, 0x8000
    bne     $s0, $at, branch_0x802c7120
    nop
    break   0x6
branch_0x802c7120:
    sw      $zero, 0x14($sp)
    bnez    $s6, branch_0x802c7130
    nop
    break   0x7
branch_0x802c7130:
    addiu   $at, $zero, 0xffff
    bne     $s6, $at, branch_0x802c7148
    lui     $at, 0x8000
    bne     $s0, $at, branch_0x802c7148
    nop
    break   0x6
branch_0x802c7148:
    jal     Function_0x801e3c40_DrawCourseNames
    nop
    addiu   $s0, $s0, 0x1
    addiu   $at, $zero, 0x9
    addiu   $s1, $s1, 0x4
    bne     $s0, $at, branch_0x802c6fb4
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

Function_0x802c7194: # 0x802c7194
    sw      $a1, 0x0($a0)
    sw      $a2, 0x4($a0)
    sw      $a3, 0x8($a0)
    lw      $t6, 0x10($sp)
    jr      $ra
    sw      $t6, 0xc($a0)

.globl Function_0x802c71ac
Function_0x802c71ac: # 0x802c71ac
    addiu   $sp, $sp, 0xff18
    sw      $s7, 0x5c($sp)
    sw      $s6, 0x58($sp)
    lw      $s7, 0xf8($sp)
    sw      $ra, 0x64($sp)
    sw      $fp, 0x60($sp)
    sw      $s5, 0x54($sp)
    sw      $s4, 0x50($sp)
    sw      $s3, 0x4c($sp)
    sw      $s2, 0x48($sp)
    sw      $s1, 0x44($sp)
    sw      $s0, 0x40($sp)
    sw      $a2, 0xf0($sp)
    lui     $t6, 0x107
    lui     $s6, 0x600
    addiu   $t6, $t6, 0xf628
    sw      $t6, 0x4($a0)
    sw      $s6, 0x0($a0)
    or      $fp, $a3, $zero
    lw      $a3, 0xfc($sp)
    or      $s5, $a1, $zero
    addiu   $s1, $a0, 0x8
    addiu   $t7, $zero, 0xf4
    addiu   $t8, $zero, 0x18
    addiu   $a2, $s7, 0x26
    sw      $a2, 0x88($sp)
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $s1, $zero
    or      $a1, $zero, $zero
    jal     Function_0x800940d8
    addiu   $a3, $a3, 0x46
    lw      $a3, 0xfc($sp)
    addiu   $s0, $s7, 0x1c
    addiu   $t9, $zero, 0x108
    addiu   $t3, $zero, 0x10
    sw      $t3, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a2, $s0, $zero
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    jal     Function_0x800940d8
    addiu   $a3, $a3, 0x68
    lw      $a3, 0xfc($sp)
    or      $s1, $v0, $zero
    or      $v1, $zero, $zero
    addiu   $a3, $a3, 0x7e
branch_0x802c7268:
    addiu   $t4, $zero, 0x108
    addiu   $t5, $zero, 0x10
    sw      $t5, 0x14($sp)
    sw      $t4, 0x10($sp)
    or      $a0, $s1, $zero
    or      $a1, $zero, $zero
    or      $a2, $s0, $zero
    sw      $v1, 0x80($sp)
    jal     Function_0x800940d8
    sw      $a3, 0x7c($sp)
    lw      $v1, 0x80($sp)
    lw      $a3, 0x7c($sp)
    or      $s1, $v0, $zero
    addiu   $v1, $v1, 0x12
    slti    $at, $v1, 0x36
    bnez    $at, branch_0x802c7268
    addiu   $a3, $a3, 0x12
    addiu   $at, $zero, 0x1
    beq     $fp, $at, branch_0x802c72c0
    addiu   $at, $zero, 0x3
    bnel    $fp, $at, branch_0x802c7318
    addiu   $t3, $zero, 0xff
branch_0x802c72c0:
    lw      $a3, 0xfc($sp)
    addiu   $t6, $zero, 0x108
    addiu   $t7, $zero, 0xa
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $s1, $zero
    or      $a1, $zero, $zero
    or      $a2, $s0, $zero
    jal     Function_0x800940d8
    addiu   $a3, $a3, 0xb7
    lw      $a3, 0xfc($sp)
    addiu   $t8, $zero, 0x108
    addiu   $t9, $zero, 0x10
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    or      $a2, $s0, $zero
    jal     Function_0x800940d8
    addiu   $a3, $a3, 0xc2
    or      $s1, $v0, $zero
    addiu   $t3, $zero, 0xff
branch_0x802c7318:
    sw      $t3, 0x10($sp)
    or      $a0, $s1, $zero
    or      $a1, $zero, $zero
    or      $a2, $zero, $zero
    jal     Function_0x801e7bd4
    or      $a3, $zero, $zero
    lw      $a0, 0xfc($sp)
    or      $s1, $v0, $zero
    or      $v1, $zero, $zero
    addiu   $s0, $s7, 0x3c
    addiu   $s2, $s7, 0x56
    addiu   $s3, $a0, 0x80
    addiu   $t0, $a0, 0x8c
branch_0x802c734c:
    or      $a0, $s1, $zero
    or      $a1, $s0, $zero
    or      $a2, $s3, $zero
    or      $a3, $s2, $zero
    sw      $t0, 0x10($sp)
    sw      $v1, 0x80($sp)
    jal     Function_0x801e7d38
    sw      $t0, 0x70($sp)
    lw      $v1, 0x80($sp)
    lw      $t0, 0x70($sp)
    addiu   $s3, $s3, 0x12
    addiu   $v1, $v1, 0x12
    slti    $at, $v1, 0x36
    or      $s1, $v0, $zero
    bnez    $at, branch_0x802c734c
    addiu   $t0, $t0, 0x12
    addiu   $at, $zero, 0x1
    beq     $fp, $at, branch_0x802c73a0
    addiu   $at, $zero, 0x3
    bnel    $fp, $at, branch_0x802c73c4
    addiu   $s1, $v0, 0x8
branch_0x802c73a0:
    lw      $t4, 0xfc($sp)
    or      $a0, $s1, $zero
    or      $a1, $s0, $zero
    addiu   $t5, $t4, 0xd0
    sw      $t5, 0x10($sp)
    or      $a3, $s2, $zero
    jal     Function_0x801e7d38
    addiu   $a2, $t4, 0xc4
    addiu   $s1, $v0, 0x8
branch_0x802c73c4:
    lui     $t6, 0xe700
    or      $a0, $s1, $zero
    sw      $t6, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t7, 0xed02
    lui     $t8, 0x4d
    ori     $t8, $t8, 0xc36c
    ori     $t7, $t7, 0x50
    addiu   $s1, $s1, 0x8
    sw      $t7, 0x0($a0)
    sw      $t8, 0x4($a0)
    or      $a1, $s1, $zero
    lui     $t9, 0xb400
    sw      $t9, 0x0($a1)
    lui     $t3, 0x802d
    lhu     $t3, -0x7d80($t3)
    addiu   $s1, $s1, 0x8
    or      $a2, $s1, $zero
    addiu   $s1, $s1, 0x8
    lui     $t4, 0x103
    lui     $t5, 0x700
    sw      $t3, 0x4($a1)
    addiu   $t5, $t5, 0xa40
    ori     $t4, $t4, 0x40
    or      $a3, $s1, $zero
    lui     $t6, 0x107
    sw      $t4, 0x0($a2)
    sw      $t5, 0x4($a2)
    addiu   $t6, $t6, 0xf488
    sw      $t6, 0x4($a3)
    sw      $s6, 0x0($a3)
    bnez    $s5, branch_0x802c7450
    addiu   $s1, $s1, 0x8
    b       branch_0x802c7454
    or      $s6, $zero, $zero
branch_0x802c7450:
    addiu   $s6, $zero, 0x4
branch_0x802c7454:
    addiu   $at, $zero, 0x3
    bnel    $fp, $at, branch_0x802c746c
    addiu   $s0, $zero, 0x3
    b       branch_0x802c746c
    addiu   $s0, $zero, 0x1

.globl Function_0x802c7468
Function_0x802c7468: # 0x802c7468
    addiu   $s0, $zero, 0x3
branch_0x802c746c:
    blez    $s0, branch_0x802c75a4
    or      $s4, $zero, $zero
    lui     $t9, 0x700
    addiu   $t9, $t9, 0x0
    sll     $t7, $s6, 4
    sll     $t3, $s6, 6
    sll     $t2, $s6, 2
    subu    $t2, $t2, $s6
    addiu   $t4, $t3, 0xa80
    addiu   $t8, $t7, 0x1280
    lui     $s5, 0x801d
    lui     $s3, 0x102
    lui     $s2, 0x380
    ori     $s2, $s2, 0x10
    ori     $s3, $s3, 0x40
    addiu   $s5, $s5, 0xe358
    addu    $t0, $t8, $t9
    addu    $t1, $t4, $t9
    sll     $t2, $t2, 6
branch_0x802c74b8:
    addiu   $at, $zero, 0x1
    bne     $fp, $at, branch_0x802c74f4
    or      $v0, $s1, $zero
    lw      $t5, 0xf0($sp)
    sll     $t7, $s4, 2
    addu    $t7, $t7, $s4
    sll     $t6, $t5, 4
    subu    $t6, $t6, $t5
    sll     $t6, $t6, 2
    sll     $t7, $t7, 2
    addu    $t8, $t6, $t7
    lui     $a1, 0x801c
    addu    $a1, $a1, $t8
    b       branch_0x802c7540
    lw      $a1, 0x1d54($a1)
branch_0x802c74f4:
    addiu   $at, $zero, 0x3
    bne     $fp, $at, branch_0x802c7520
    lw      $t9, 0xf0($sp)
    lw      $t3, 0xf0($sp)
    lui     $a1, 0x801c
    sll     $t4, $t3, 2
    addu    $t4, $t4, $t3
    sll     $t4, $t4, 2
    addu    $a1, $a1, $t4
    b       branch_0x802c7540
    lw      $a1, 0x2114($a1)
branch_0x802c7520:
    sll     $t5, $t9, 2
    subu    $t5, $t5, $t9
    sll     $t5, $t5, 4
    sll     $t6, $s4, 4
    addu    $t7, $t5, $t6
    lui     $a1, 0x801c
    addu    $a1, $a1, $t7
    lw      $a1, 0x244c($a1)
branch_0x802c7540:
    addiu   $v1, $s1, 0x8
    sw      $s2, 0x0($v0)
    sw      $t0, 0x4($v0)
    sw      $t1, 0x4($v1)
    sw      $s3, 0x0($v1)
    lw      $t8, 0x0($s5)
    addiu   $a0, $v1, 0x8
    sw      $t2, 0x78($sp)
    addu    $t3, $t8, $t2
    addiu   $t4, $t3, 0xc80
    sw      $t4, 0x10($sp)
    sw      $t1, 0x7c($sp)
    sw      $t0, 0x80($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    lw      $t0, 0x80($sp)
    lw      $t1, 0x7c($sp)
    lw      $t2, 0x78($sp)
    addiu   $s4, $s4, 0x1
    or      $s1, $v0, $zero
    addiu   $t0, $t0, 0x10
    addiu   $t1, $t1, 0x40
    bne     $s4, $s0, branch_0x802c74b8
    addiu   $t2, $t2, 0xc0
branch_0x802c75a4:
    lui     $s2, 0x380
    lui     $s3, 0x102
    lui     $s5, 0x801d
    addiu   $at, $zero, 0x1
    addiu   $s5, $s5, 0xe358
    ori     $s3, $s3, 0x40
    bne     $fp, $at, branch_0x802c7648
    ori     $s2, $s2, 0x10
    lui     $t1, 0x700
    addu    $v0, $s6, $s4
    addiu   $t1, $t1, 0x0
    sll     $t9, $v0, 4
    addu    $t5, $t1, $t9
    addiu   $t6, $t5, 0x1280
    sll     $t7, $v0, 6
    sw      $t6, 0x4($s1)
    addiu   $t0, $s1, 0x8
    sw      $s2, 0x0($s1)
    addu    $t8, $t1, $t7
    addiu   $t3, $t8, 0xa80
    sw      $t3, 0x4($t0)
    sw      $s3, 0x0($t0)
    lw      $t4, 0xf0($sp)
    lw      $t5, 0x0($s5)
    sll     $t6, $v0, 2
    subu    $t6, $t6, $v0
    sll     $t9, $t4, 2
    sll     $t6, $t6, 6
    addu    $t9, $t9, $t4
    sll     $t9, $t9, 2
    lui     $a1, 0x801c
    addu    $t7, $t5, $t6
    addiu   $t8, $t7, 0xc80
    addu    $a1, $a1, $t9
    addiu   $a0, $t0, 0x8
    lw      $a1, 0x2024($a1)
    sw      $t8, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    or      $s1, $v0, $zero
branch_0x802c7648:
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x28($sp)
    sw      $t7, 0x24($sp)
    sw      $t6, 0x20($sp)
    sw      $t5, 0x1c($sp)
    sw      $t9, 0x18($sp)
    sw      $t9, 0x34($sp)
    sw      $t4, 0x14($sp)
    sw      $t4, 0x30($sp)
    sw      $t3, 0x10($sp)
    sw      $t3, 0x2c($sp)
    or      $a0, $s1, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    addiu   $a3, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    or      $s4, $zero, $zero
    addiu   $at, $zero, 0x1
    bne     $fp, $at, branch_0x802c76e0
    or      $s1, $v0, $zero
    lw      $t5, 0xfc($sp)
    addiu   $t7, $zero, 0x2
    sw      $t7, 0x14($sp)
    addiu   $t6, $t5, 0x4a
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x3
    addiu   $a2, $zero, 0x5
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $s7, 0x3d
    b       branch_0x802c7744
    or      $s1, $v0, $zero
branch_0x802c76e0:
    addiu   $at, $zero, 0x3
    bne     $fp, $at, branch_0x802c771c
    or      $a0, $s1, $zero
    lw      $t8, 0xfc($sp)
    addiu   $t4, $zero, 0x2
    sw      $t4, 0x14($sp)
    addiu   $t3, $t8, 0x4a
    sw      $t3, 0x10($sp)
    or      $a0, $s1, $zero
    addiu   $a1, $zero, 0x3
    addiu   $a2, $zero, 0x20
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $s7, 0x33
    b       branch_0x802c7744
    or      $s1, $v0, $zero
branch_0x802c771c:
    lw      $t9, 0xfc($sp)
    addiu   $t6, $zero, 0x2
    sw      $t6, 0x14($sp)
    addiu   $t5, $t9, 0x4a
    sw      $t5, 0x10($sp)
    addiu   $a1, $zero, 0x3
    addiu   $a2, $zero, 0x4
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $s7, 0x33
    or      $s1, $v0, $zero
branch_0x802c7744:
    lw      $s0, 0xfc($sp)
    or      $a0, $s1, $zero
    addiu   $a1, $zero, 0x1
    addiu   $s0, $s0, 0x6b
    sw      $s0, 0x10($sp)
    addiu   $a2, $zero, 0x1f
    addiu   $a3, $s7, 0x2b
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    addiu   $at, $zero, 0x1
    beq     $fp, $at, branch_0x802c7780
    or      $s1, $v0, $zero
    addiu   $at, $zero, 0x3
    bne     $fp, $at, branch_0x802c77e8
    addiu   $s2, $zero, 0x3e
branch_0x802c7780:
    addiu   $s2, $zero, 0x3
    or      $a0, $s1, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x11
    addiu   $a3, $s7, 0x5f
    sw      $s0, 0x10($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x20
    addiu   $a3, $s7, 0xa0
    sw      $s0, 0x10($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lw      $t7, 0xfc($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $t8, $t7, 0xb8
    sw      $t8, 0x10($sp)
    addiu   $a2, $zero, 0xd
    lw      $a3, 0x88($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    b       branch_0x802c7808
    or      $s1, $v0, $zero
branch_0x802c77e8:
    or      $a0, $s1, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x20
    addiu   $a3, $s7, 0x8b
    sw      $s0, 0x10($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    or      $s1, $v0, $zero
branch_0x802c7808:
    or      $a0, $s1, $zero
    addiu   $a1, $zero, 0x1
    or      $a2, $s2, $zero
    addiu   $a3, $s7, 0xee
    sw      $s0, 0x10($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lw      $t3, 0xfc($sp)
    or      $s1, $v0, $zero
    addiu   $v0, $zero, 0x3
    addiu   $s6, $sp, 0xb4
    sw      $t3, 0x84($sp)
    addiu   $s3, $t3, 0x80
branch_0x802c783c:
    lui     $t4, 0x802d
    lw      $t4, -0x7e5c($t4)
    or      $a0, $s1, $zero
    addiu   $a2, $zero, 0x80
    beqz    $t4, branch_0x802c78a4
    addiu   $a3, $zero, 0x80
    lw      $t5, 0xf0($sp)
    lui     $t7, 0x801c
    addiu   $t9, $s4, 0x1
    sll     $t6, $t5, 2
    addu    $t7, $t7, $t6
    lw      $t7, 0x23c0($t7)
    bne     $t9, $t7, branch_0x802c787c
    nop
    b       branch_0x802c78c4
    addiu   $a1, $zero, 0x6
branch_0x802c787c:
    bne     $fp, $v0, branch_0x802c789c
    nop
    bnez    $s4, branch_0x802c7894
    nop
    b       branch_0x802c78c4
    or      $a1, $zero, $zero
branch_0x802c7894:
    b       branch_0x802c78c4
    addiu   $a1, $zero, 0x7
branch_0x802c789c:
    b       branch_0x802c78c4
    or      $a1, $zero, $zero
branch_0x802c78a4:
    bne     $fp, $v0, branch_0x802c78c4
    or      $a1, $zero, $zero
    bnez    $s4, branch_0x802c78bc
    nop
    b       branch_0x802c78c4
    or      $a1, $zero, $zero
branch_0x802c78bc:
    b       branch_0x802c78c4
    addiu   $a1, $zero, 0x7
branch_0x802c78c4:
    addiu   $t8, $zero, 0x80
    sw      $t8, 0x10($sp)
    addiu   $t8, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x28($sp)
    sw      $t9, 0x24($sp)
    sw      $t6, 0x20($sp)
    sw      $t5, 0x1c($sp)
    sw      $t4, 0x18($sp)
    sw      $t4, 0x34($sp)
    sw      $t3, 0x14($sp)
    sw      $t3, 0x30($sp)
    jal     Function_0x801e91f4_changePalette
    sw      $t8, 0x2c($sp)
    addiu   $at, $zero, 0x1
    bne     $fp, $at, branch_0x802c79d8
    or      $s1, $v0, $zero
    lw      $t5, 0xf0($sp)
    sll     $t9, $s4, 2
    addu    $t9, $t9, $s4
    sll     $t6, $t5, 4
    subu    $t6, $t6, $t5
    sll     $t6, $t6, 2
    sll     $t9, $t9, 2
    lui     $t8, 0x801c
    lw      $t4, 0x84($sp)
    addiu   $t8, $t8, 0x1d50
    addu    $t7, $t6, $t9
    addu    $v1, $t7, $t8
    lw      $t3, 0x8($v1)
    addiu   $t5, $t4, 0x81
    sw      $t5, 0x70($sp)
    lw      $a2, 0x0($v1)
    addiu   $s0, $v1, 0x10
    sw      $v1, 0x88($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a3, $s7, 0xd7
    sw      $s3, 0x10($sp)
    addiu   $s5, $s7, 0x5f
    addiu   $s2, $s7, 0xa0
    jal     Function_0x801e8884
    sw      $t3, 0xd8($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    or      $a2, $s0, $zero
    or      $a3, $s2, $zero
    jal     Function_0x801e95e0
    sw      $s3, 0x10($sp)
    lw      $v1, 0x88($sp)
    lw      $t7, 0x70($sp)
    lui     $a2, 0x802d
    lw      $t6, 0xc($v1)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    sll     $t9, $t6, 2
    addu    $a2, $a2, $t9
    lw      $a2, -0x7e68($a2)
    or      $a3, $s5, $zero
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $t7, 0x10($sp)
    b       branch_0x802c7b30
    or      $s1, $v0, $zero
branch_0x802c79d8:
    addiu   $at, $zero, 0x3
    bne     $fp, $at, branch_0x802c7ac8
    lw      $t3, 0xf0($sp)
    lw      $t8, 0xf0($sp)
    lui     $t4, 0x801c
    lw      $t9, 0x84($sp)
    sll     $t3, $t8, 2
    addu    $t3, $t3, $t8
    sll     $t3, $t3, 2
    addiu   $t4, $t4, 0x2110
    addu    $v0, $t3, $t4
    lw      $t5, 0x8($v0)
    addiu   $t6, $s7, 0xd7
    addiu   $t7, $t9, 0x81
    sw      $t7, 0x70($sp)
    sw      $t6, 0x74($sp)
    addiu   $s5, $s7, 0x5f
    addiu   $s2, $s7, 0xa0
    bnez    $s4, branch_0x802c7a64
    sw      $t5, 0xd8($sp)
    or      $a0, $s1, $zero
    addiu   $a1, $zero, 0x2
    lw      $a2, 0x0($v0)
    or      $a3, $t6, $zero
    sw      $s3, 0x10($sp)
    jal     Function_0x801e8884
    addiu   $s0, $v0, 0x10
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    or      $a2, $s0, $zero
    or      $a3, $s2, $zero
    jal     Function_0x801e95e0
    sw      $s3, 0x10($sp)
    b       branch_0x802c7aa0
    or      $s1, $v0, $zero
branch_0x802c7a64:
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x81c0
    or      $a0, $s1, $zero
    addiu   $a1, $zero, 0x2
    lw      $a3, 0x74($sp)
    jal     Function_0x801e95e0
    sw      $s3, 0x10($sp)
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x81cc
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    or      $a3, $s2, $zero
    jal     Function_0x801e95e0
    sw      $s3, 0x10($sp)
    or      $s1, $v0, $zero
branch_0x802c7aa0:
    lw      $t8, 0x70($sp)
    or      $a0, $s1, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x24
    or      $a3, $s5, $zero
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $t8, 0x10($sp)
    b       branch_0x802c7b30
    or      $s1, $v0, $zero
branch_0x802c7ac8:
    sll     $t4, $t3, 2
    subu    $t4, $t4, $t3
    sll     $t4, $t4, 4
    sll     $t5, $s4, 4
    lui     $t9, 0x801c
    addiu   $t9, $t9, 0x2448
    addu    $t6, $t4, $t5
    addu    $v0, $t6, $t9
    lw      $t7, 0x8($v0)
    addiu   $t8, $v0, 0xc
    sw      $t8, 0x7c($sp)
    lw      $a2, 0x0($v0)
    or      $a0, $s1, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a3, $s7, 0xe4
    sw      $s3, 0x10($sp)
    addiu   $s0, $s7, 0x8b
    jal     Function_0x80093fa0
    sw      $t7, 0xd8($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    lw      $a2, 0x7c($sp)
    or      $a3, $s0, $zero
    jal     Function_0x801e95e0
    sw      $s3, 0x10($sp)
    or      $s1, $v0, $zero
branch_0x802c7b30:
    addiu   $at, $zero, 0x3
    bne     $fp, $at, branch_0x802c7b80
    or      $a0, $s6, $zero
    bnez    $s4, branch_0x802c7b64
    or      $a0, $s6, $zero
    lui     $a1, 0x802d
    addiu   $s0, $s4, 0x1
    or      $a2, $s0, $zero
    addiu   $a1, $a1, 0x81d0
    jal     Function_0x800c9f70
    or      $a0, $s6, $zero
    b       branch_0x802c7b98
    addiu   $at, $zero, 0x3
branch_0x802c7b64:
    lui     $a1, 0x802d
    addiu   $s0, $s4, 0x1
    or      $a2, $s0, $zero
    jal     Function_0x800c9f70
    addiu   $a1, $a1, 0x81d4
    b       branch_0x802c7b98
    addiu   $at, $zero, 0x3
branch_0x802c7b80:
    lui     $a1, 0x802d
    addiu   $s0, $s4, 0x1
    or      $a2, $s0, $zero
    jal     Function_0x800c9f70
    addiu   $a1, $a1, 0x81d8
    addiu   $at, $zero, 0x3
branch_0x802c7b98:
    beq     $fp, $at, branch_0x802c7bbc
    or      $a0, $s1, $zero
    addiu   $at, $zero, 0x2
    bne     $s4, $at, branch_0x802c7bb4
    nop
    b       branch_0x802c7bc0
    addiu   $v0, $zero, 0xffff
branch_0x802c7bb4:
    b       branch_0x802c7bc0
    or      $v0, $zero, $zero
branch_0x802c7bbc:
    addiu   $v0, $zero, 0x2
branch_0x802c7bc0:
    addu    $a3, $s7, $v0
    addiu   $a3, $a3, 0x25
    addiu   $a1, $zero, 0x2
    or      $a2, $s6, $zero
    jal     Function_0x801e95e0
    sw      $s3, 0x10($sp)
    lw      $t3, 0xd8($sp)
    or      $s1, $v0, $zero
    or      $a0, $s6, $zero
    bnez    $t3, branch_0x802c7c0c
    lui     $a1, 0x802d
    lui     $a1, 0x802d
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x81e0
    addiu   $a1, $a1, 0x81dc
    jal     Function_0x800c9f70
    or      $a0, $s6, $zero
    b       branch_0x802c7c20
    addiu   $v0, $zero, 0x3
branch_0x802c7c0c:
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x81e8
    jal     Function_0x800c9f70
    addiu   $a1, $a1, 0x81e4
    addiu   $v0, $zero, 0x3
branch_0x802c7c20:
    bne     $fp, $v0, branch_0x802c7c2c
    or      $a0, $s1, $zero
    bnez    $s4, branch_0x802c7c48
branch_0x802c7c2c:
    addiu   $a1, $zero, 0x1
    or      $a2, $s6, $zero
    addiu   $a3, $s7, 0x4f
    jal     Function_0x801e95e0
    sw      $s3, 0x10($sp)
    or      $s1, $v0, $zero
    addiu   $v0, $zero, 0x3
branch_0x802c7c48:
    lw      $t4, 0x84($sp)
    or      $s4, $s0, $zero
    addiu   $s3, $s3, 0x12
    addiu   $t5, $t4, 0x12
    bne     $s0, $v0, branch_0x802c783c
    sw      $t5, 0x84($sp)
    addiu   $at, $zero, 0x1
    bne     $fp, $at, branch_0x802c7de8
    lw      $s0, 0xfc($sp)
    lw      $t6, 0xf0($sp)
    lui     $t3, 0x802d
    lw      $t3, -0x7e5c($t3)
    sll     $t9, $t6, 2
    lui     $t7, 0x801c
    addu    $t9, $t9, $t6
    sll     $t9, $t9, 2
    addiu   $t7, $t7, 0x2020
    addiu   $t8, $s7, 0xd7
    sw      $t8, 0x74($sp)
    addu    $s3, $t9, $t7
    addiu   $s0, $s0, 0xc4
    addiu   $s5, $s7, 0x5f
    addiu   $s2, $s7, 0xa0
    beqz    $t3, branch_0x802c7d24
    addiu   $s4, $s7, 0x4f
    sll     $t4, $t6, 2
    lui     $t5, 0x801c
    addu    $t5, $t5, $t4
    lw      $t5, 0x23f0($t5)
    or      $a0, $s1, $zero
    addiu   $a2, $zero, 0xff
    beqz    $t5, branch_0x802c7cd4
    addiu   $a3, $zero, 0xff
    b       branch_0x802c7cd8
    addiu   $a1, $zero, 0x6
branch_0x802c7cd4:
    or      $a1, $zero, $zero
branch_0x802c7cd8:
    addiu   $t9, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    sw      $t5, 0x28($sp)
    sw      $t4, 0x24($sp)
    sw      $t6, 0x20($sp)
    sw      $t3, 0x1c($sp)
    sw      $t8, 0x18($sp)
    sw      $t8, 0x34($sp)
    sw      $t7, 0x14($sp)
    sw      $t7, 0x30($sp)
    sw      $t9, 0x10($sp)
    jal     Function_0x801e91f4_changePalette
    sw      $t9, 0x2c($sp)
    or      $s1, $v0, $zero
branch_0x802c7d24:
    lw      $t3, 0x8($s3)
    lui     $a1, 0x802d
    addiu   $a1, $a1, 0x81f4
    bnez    $t3, branch_0x802c7d58
    or      $a0, $s6, $zero
    lui     $a1, 0x802d
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x81f0
    addiu   $a1, $a1, 0x81ec
    jal     Function_0x800c9f70
    or      $a0, $s6, $zero
    b       branch_0x802c7d68
    or      $a0, $s1, $zero
branch_0x802c7d58:
    lui     $a2, 0x802d
    jal     Function_0x800c9f70
    addiu   $a2, $a2, 0x81f8
    or      $a0, $s1, $zero
branch_0x802c7d68:
    addiu   $a1, $zero, 0x1
    or      $a2, $s6, $zero
    or      $a3, $s4, $zero
    jal     Function_0x801e95e0
    sw      $s0, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $s3, 0x10
    or      $a3, $s2, $zero
    jal     Function_0x801e95e0
    sw      $s0, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    lw      $a2, 0x0($s3)
    lw      $a3, 0x74($sp)
    jal     Function_0x801e8884
    sw      $s0, 0x10($sp)
    lw      $t6, 0xc($s3)
    lw      $t5, 0xfc($sp)
    lui     $a2, 0x802d
    sll     $t4, $t6, 2
    addu    $a2, $a2, $t4
    addiu   $t9, $t5, 0xc5
    sw      $t9, 0x10($sp)
    lw      $a2, -0x7e68($a2)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    or      $a3, $s5, $zero
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    b       branch_0x802c7ec4
    or      $s1, $v0, $zero
branch_0x802c7de8:
    bne     $fp, $v0, branch_0x802c7ec4
    or      $a0, $s1, $zero
    addiu   $t7, $zero, 0x80
    addiu   $t6, $zero, 0xff
    lw      $s0, 0xfc($sp)
    sw      $t6, 0x1c($sp)
    sw      $t7, 0x10($sp)
    addiu   $t7, $zero, 0xff
    addiu   $t6, $s7, 0xd7
    addiu   $t8, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x28($sp)
    sw      $t5, 0x24($sp)
    sw      $t4, 0x20($sp)
    sw      $t3, 0x18($sp)
    sw      $t3, 0x34($sp)
    sw      $t8, 0x14($sp)
    sw      $t8, 0x30($sp)
    sw      $t6, 0x74($sp)
    sw      $t7, 0x2c($sp)
    addiu   $a1, $zero, 0x7
    addiu   $a2, $zero, 0x80
    addiu   $a3, $zero, 0x80
    addiu   $s5, $s7, 0x5f
    jal     Function_0x801e91f4_changePalette
    addiu   $s0, $s0, 0xc4
    lw      $t4, 0xfc($sp)
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x81fc
    addiu   $t5, $t4, 0x12e
    sw      $t5, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e95e0
    addiu   $a3, $s7, 0x9b
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x8200
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    lw      $a3, 0x74($sp)
    jal     Function_0x801e95e0
    sw      $s0, 0x10($sp)
    lw      $t9, 0xfc($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $t7, $t9, 0xc5
    sw      $t7, 0x10($sp)
    addiu   $a2, $zero, 0x24
    or      $a3, $s5, $zero
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    or      $s1, $v0, $zero
branch_0x802c7ec4:
    addiu   $t8, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x28($sp)
    sw      $t9, 0x24($sp)
    sw      $t5, 0x20($sp)
    sw      $t4, 0x1c($sp)
    sw      $t6, 0x18($sp)
    sw      $t6, 0x34($sp)
    sw      $t3, 0x14($sp)
    sw      $t3, 0x30($sp)
    sw      $t8, 0x10($sp)
    sw      $t8, 0x2c($sp)
    or      $a0, $s1, $zero
    addiu   $a1, $zero, 0x6
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lw      $t4, 0xf0($sp)
    or      $s1, $v0, $zero
    lui     $t5, 0x802d
    beqzl   $t4, branch_0x802c7ffc
    lw      $ra, 0x64($sp)
    lw      $t5, -0x7e5c($t5)
    addiu   $at, $zero, 0x1
    bnezl   $t5, branch_0x802c7ffc
    lw      $ra, 0x64($sp)
    bne     $fp, $at, branch_0x802c7f9c
    or      $a0, $v0, $zero
    lw      $s0, 0xfc($sp)
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x820c
    addiu   $s0, $s0, 0x4e
    sw      $s0, 0x10($sp)
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e95e0
    addiu   $a3, $s7, 0x122
    lui     $t9, 0x802d
    lw      $t9, -0x7e4c($t9)
    or      $s1, $v0, $zero
    or      $a0, $v0, $zero
    beqz    $t9, branch_0x802c7ff8
    addiu   $a1, $zero, 0x2
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x8210
    addiu   $a3, $s7, 0x16
    jal     Function_0x801e95e0
    sw      $s0, 0x10($sp)
    b       branch_0x802c7ff8
    or      $s1, $v0, $zero
branch_0x802c7f9c:
    addiu   $at, $zero, 0x3
    bne     $fp, $at, branch_0x802c7fd4
    or      $a0, $s1, $zero
    lw      $t7, 0xfc($sp)
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x8214
    addiu   $t8, $t7, 0x4e
    sw      $t8, 0x10($sp)
    or      $a0, $s1, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e95e0
    addiu   $a3, $s7, 0x122
    b       branch_0x802c7ff8
    or      $s1, $v0, $zero
branch_0x802c7fd4:
    lw      $t3, 0xfc($sp)
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x8218
    addiu   $t6, $t3, 0x4e
    sw      $t6, 0x10($sp)
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e95e0
    addiu   $a3, $s7, 0x16
    or      $s1, $v0, $zero
branch_0x802c7ff8:
    lw      $ra, 0x64($sp)
branch_0x802c7ffc:
    or      $v0, $s1, $zero
    lw      $s1, 0x44($sp)
    lw      $s0, 0x40($sp)
    lw      $s2, 0x48($sp)
    lw      $s3, 0x4c($sp)
    lw      $s4, 0x50($sp)
    lw      $s5, 0x54($sp)
    lw      $s6, 0x58($sp)
    lw      $s7, 0x5c($sp)
    lw      $fp, 0x60($sp)
    jr      $ra
    addiu   $sp, $sp, 0xe8

.globl Function_0x802c802c
Function_0x802c802c: # 0x802c802c
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa8a4
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x43
    sw      $t6, -0x1c6c($at)
    lui     $at, 0x801d
    sw      $a0, -0x1c70($at)
    sw      $t7, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0xc
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
    addiu   $t0, $zero, 0x2
    sw      $t0, %lo(Unknown_0x800d439c)($at)
    addiu   $a0, $zero, 0x1
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.incbin "./roms/Wave Race 64 (USA).z64", 0x1c8d44, 0x1c8f10 - 0x1c8d44
