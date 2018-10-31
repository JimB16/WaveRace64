

.include "source/constants.s"

.section .textoverlay7, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    addiu   $sp, $sp, 0xfe48
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
    beqz    $t6, branch_0x802c58a8
    sw      $s0, 0x38($sp)
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x32
    lui     $t8, 0x801d
    bnel    $t7, $at, branch_0x802c58ac
    lui     $at, 0x4180
    lw      $t8, -0x1c6c($t8)
    addiu   $at, $zero, 0x64
    addiu   $v0, $zero, 0x14
    bne     $t8, $at, branch_0x802c588c
    lui     $fp, 0x802c
    lui     $at, 0x802c
    sw      $zero, 0x6d30($at)
    lui     $fp, 0x802c
    lui     $at, 0x802c
    addiu   $t9, $zero, 0x140
    addiu   $fp, $fp, 0x6d38
    sw      $t9, 0x6d34($at)
    addiu   $t0, $zero, 0xfef8
    b       branch_0x802c58a8
    sw      $t0, 0x0($fp)
branch_0x802c588c:
    addiu   $t1, $zero, 0x2
    lui     $at, 0x802c
    sw      $t1, 0x6d30($at)
    lui     $at, 0x802c
    addiu   $fp, $fp, 0x6d38
    sw      $v0, 0x6d34($at)
    sw      $v0, 0x0($fp)
branch_0x802c58a8:
    lui     $at, 0x4180
branch_0x802c58ac:
    mtc1    $at, $a0
    lui     $s4, 0x801d
    mtc1    $zero, $zero
    addiu   $s4, $s4, 0xe358
    lui     $at, 0x4580
    mtc1    $at, $a2
    lw      $a0, 0x0($s4)
    lui     $fp, 0x802c
    lui     $a1, 0x802c
    addiu   $fp, $fp, 0x6d38
    addiu   $a1, $a1, 0x6d40
    lui     $a2, 0x4204
    lui     $a3, 0x3f80
    swc1    $f4, 0x10($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    addiu   $a0, $a0, 0xa40
    jal     0x80048180
    swc1    $f6, 0x14($sp)
    mtc1    $zero, $zero
    lui     $at, 0x3f80
    mtc1    $at, $v0
    lui     $at, 0x802c
    lwc1    $f8, 0x6d14($at)
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
    jal     0x80048a28
    swc1    $f8, 0x28($sp)
    mtc1    $zero, $zero
    lui     $at, 0x3f80
    mtc1    $at, $t2
    addiu   $s1, $sp, 0x130
    mfc1    $a3, $zero
    or      $a1, $s1, $zero
    addiu   $a0, $sp, 0x70
    lui     $a2, 0x43fa
    swc1    $f0, 0x10($sp)
    swc1    $f0, 0x14($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    swc1    $f0, 0x20($sp)
    swc1    $f0, 0x28($sp)
    jal     0x80048468
    swc1    $f10, 0x24($sp)
    addiu   $s2, $sp, 0x170
    or      $a1, $s2, $zero
    jal     0x80047e18
    or      $a0, $s0, $zero
    addiu   $s6, $sp, 0xf0
    or      $a2, $s6, $zero
    or      $a0, $s1, $zero
    jal     0x80049e58
    or      $a1, $s2, $zero
    lui     $s7, 0x802c
    addiu   $s7, $s7, 0x6c70
    or      $s0, $zero, $zero
    or      $s5, $zero, $zero
    or      $s1, $zero, $zero
    addiu   $s3, $zero, 0x66
branch_0x802c59bc:
    andi    $t2, $s0, 0x1
    beqz    $t2, branch_0x802c59d0
    lui     $s2, 0x802c
    b       branch_0x802c59d4
    lw      $s2, 0x0($fp)
branch_0x802c59d0:
    lw      $s2, 0x6d34($s2)
branch_0x802c59d4:
    lw      $t3, 0x0($s4)
    or      $a0, $s6, $zero
    addu    $a1, $t3, $s5
    jal     0x80047e80
    addiu   $a1, $a1, 0xa80
    lw      $t4, 0x0($s4)
    lw      $at, 0x0($s7)
    addiu   $t8, $s2, 0x38
    addu    $t5, $t4, $s1
    sw      $at, 0x1280($t5)
    lw      $t7, 0x4($s7)
    sll     $t9, $t8, 2
    addiu   $s0, $s0, 0x1
    sw      $t7, 0x1284($t5)
    lw      $at, 0x8($s7)
    sll     $t2, $s3, 2
    addiu   $s3, $s3, 0x12
    sw      $at, 0x1288($t5)
    lw      $t7, 0xc($s7)
    slti    $at, $s0, 0x3
    addiu   $s5, $s5, 0x40
    sw      $t7, 0x128c($t5)
    lw      $t0, 0x0($s4)
    addu    $t1, $t0, $s1
    sh      $t9, 0x1288($t1)
    lw      $t3, 0x0($s4)
    addu    $t4, $t3, $s1
    addiu   $s1, $s1, 0x10
    bnez    $at, branch_0x802c59bc
    sh      $t2, 0x128a($t4)
    lui     $v0, 0x801c
    lw      $v0, 0x23b0($v0)
    bnez    $v0, branch_0x802c5ad0
    nop
    lw      $t6, 0x0($s4)
    or      $a0, $s6, $zero
    addu    $a1, $t6, $s5
    jal     0x80047e80
    addiu   $a1, $a1, 0xa80
    lw      $t5, 0x0($s4)
    lw      $at, 0x0($s7)
    addiu   $t6, $zero, 0x2a8
    addu    $t7, $t5, $s1
    sw      $at, 0x1280($t7)
    lw      $t0, 0x4($s7)
    lui     $v0, 0x801c
    addiu   $s5, $s5, 0x40
    sw      $t0, 0x1284($t7)
    lw      $at, 0x8($s7)
    sw      $at, 0x1288($t7)
    lw      $t0, 0xc($s7)
    sw      $t0, 0x128c($t7)
    lw      $t9, 0x0($fp)
    lw      $t2, 0x0($s4)
    addiu   $t1, $t9, 0x38
    sll     $t3, $t1, 2
    addu    $t4, $t2, $s1
    sh      $t3, 0x1288($t4)
    lw      $t5, 0x0($s4)
    addu    $t8, $t5, $s1
    sh      $t6, 0x128a($t8)
    lw      $v0, 0x23b0($v0)
    addiu   $s1, $s1, 0x10
branch_0x802c5ad0:
    bnez    $v0, branch_0x802c5ae0
    lui     $s2, 0x802c
    b       branch_0x802c5ae4
    lw      $s2, 0x6d34($s2)
branch_0x802c5ae0:
    lw      $s2, 0x0($fp)
branch_0x802c5ae4:
    lw      $t7, 0x0($s4)
    or      $a0, $s6, $zero
    addu    $a1, $t7, $s5
    jal     0x80047e80
    addiu   $a1, $a1, 0xa80
    lw      $t0, 0x0($s4)
    lw      $at, 0x0($s7)
    addiu   $t3, $s2, 0x38
    addu    $t9, $t0, $s1
    sw      $at, 0x1280($t9)
    lw      $t2, 0x4($s7)
    sll     $t4, $t3, 2
    addiu   $t8, $zero, 0x338
    sw      $t2, 0x1284($t9)
    lw      $at, 0x8($s7)
    sw      $at, 0x1288($t9)
    lw      $t2, 0xc($s7)
    sw      $t2, 0x128c($t9)
    lw      $t5, 0x0($s4)
    addu    $t6, $t5, $s1
    sh      $t4, 0x1288($t6)
    lw      $t7, 0x0($s4)
    addu    $t0, $t7, $s1
    sh      $t8, 0x128a($t0)
    lw      $ra, 0x5c($sp)
    lw      $fp, 0x58($sp)
    lw      $s7, 0x54($sp)
    lw      $s6, 0x50($sp)
    lw      $s5, 0x4c($sp)
    lw      $s4, 0x48($sp)
    lw      $s3, 0x44($sp)
    lw      $s2, 0x40($sp)
    lw      $s1, 0x3c($sp)
    lw      $s0, 0x38($sp)
    jr      $ra
    addiu   $sp, $sp, 0x1b8

.globl Function_0x802c5b74
Function_0x802c5b74: # 0x802c5b74
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c5bc8
    lui     $t7, 0x800e
    sw      $zero, 0x0($v0)
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x32
    lui     $t8, 0x801d
    bne     $t7, $at, branch_0x802c5bc8
    nop
    lw      $t8, -0x1c6c($t8)
    addiu   $at, $zero, 0x64
    beq     $t8, $at, branch_0x802c5bc8
    nop
    jal     0x800939e4
    nop
    b       branch_0x802c5c20
    lw      $ra, 0x14($sp)
branch_0x802c5bc8:
    lui     $at, 0x800e
    jal     0x8008f914
    sw      $zero, -0x5754($at)
    lui     $a1, 0x800d
    lw      $a1, 0x7ef0($a1)
    jal     0x80094758
    or      $a0, $v0, $zero
    jal     0x80090cf8
    or      $a0, $v0, $zero
    jal     Function_0x802c5c2c
    or      $a0, $v0, $zero
    lui     $t9, 0x800e
    lw      $t9, -0x575c($t9)
    addiu   $at, $zero, 0x32
    or      $a0, $v0, $zero
    bnel    $t9, $at, branch_0x802c5c1c
    or      $v0, $a0, $zero
    jal     Function_0x802c6b34
    sw      $v0, 0x18($sp)
    lw      $a0, 0x18($sp)
    or      $v0, $a0, $zero
branch_0x802c5c1c:
    lw      $ra, 0x14($sp)
branch_0x802c5c20:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5c2c
Function_0x802c5c2c: # 0x802c5c2c
    addiu   $sp, $sp, 0xff40
    sw      $s5, 0x54($sp)
    sw      $ra, 0x64($sp)
    sw      $fp, 0x60($sp)
    sw      $s7, 0x5c($sp)
    sw      $s6, 0x58($sp)
    sw      $s4, 0x50($sp)
    sw      $s3, 0x4c($sp)
    sw      $s2, 0x48($sp)
    sw      $s1, 0x44($sp)
    sw      $s0, 0x40($sp)
    lui     $t6, 0x107
    lui     $s5, 0x600
    addiu   $t6, $t6, 0xf628
    sw      $t6, 0x4($a0)
    sw      $s5, 0x0($a0)
    lui     $a2, 0x802c
    lw      $a2, 0x6d34($a2)
    addiu   $s3, $a0, 0x8
    addiu   $t7, $zero, 0x108
    addiu   $t8, $zero, 0x18
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $s3, $zero
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0x1e
    jal     0x800940d8
    addiu   $a2, $a2, 0x8
    lui     $a2, 0x802c
    lw      $a2, 0x6d38($a2)
    addiu   $t9, $zero, 0x108
    addiu   $t0, $zero, 0x10
    sw      $t0, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0x44
    jal     0x800940d8
    addiu   $a2, $a2, 0x8
    or      $s3, $v0, $zero
    or      $s1, $zero, $zero
    addiu   $s2, $zero, 0x5a
branch_0x802c5cd4:
    andi    $t1, $s1, 0x1
    beqz    $t1, branch_0x802c5cec
    or      $a0, $s3, $zero
    lui     $s0, 0x802c
    b       branch_0x802c5cf4
    lw      $s0, 0x6d38($s0)
branch_0x802c5cec:
    lui     $s0, 0x802c
    lw      $s0, 0x6d34($s0)
branch_0x802c5cf4:
    addiu   $t2, $zero, 0x108
    addiu   $t3, $zero, 0x10
    sw      $t3, 0x14($sp)
    sw      $t2, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $s0, 0x8
    jal     0x800940d8
    or      $a3, $s2, $zero
    addiu   $s1, $s1, 0x1
    slti    $at, $s1, 0x3
    addiu   $s2, $s2, 0x12
    bnez    $at, branch_0x802c5cd4
    or      $s3, $v0, $zero
    lui     $v1, 0x801c
    lw      $v1, 0x23b0($v1)
    bnez    $v1, branch_0x802c5d98
    lui     $a2, 0x802c
    lw      $a2, 0x6d38($a2)
    addiu   $t4, $zero, 0x108
    addiu   $t5, $zero, 0xa
    sw      $t5, 0x14($sp)
    sw      $t4, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0x93
    jal     0x800940d8
    addiu   $a2, $a2, 0x8
    lui     $a2, 0x802c
    lw      $a2, 0x6d38($a2)
    addiu   $t6, $zero, 0x108
    addiu   $t7, $zero, 0x10
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0x9e
    jal     0x800940d8
    addiu   $a2, $a2, 0x8
    lui     $v1, 0x801c
    lw      $v1, 0x23b0($v1)
    or      $s3, $v0, $zero
branch_0x802c5d98:
    bnez    $v1, branch_0x802c5db0
    or      $a0, $s3, $zero
    lui     $t8, 0x802c
    lw      $t8, 0x6d34($t8)
    b       branch_0x802c5dbc
    sw      $t8, 0xb4($sp)
branch_0x802c5db0:
    lui     $t9, 0x802c
    lw      $t9, 0x6d38($t9)
    sw      $t9, 0xb4($sp)
branch_0x802c5dbc:
    lw      $s0, 0xb4($sp)
    addiu   $t0, $zero, 0x108
    addiu   $t1, $zero, 0xa
    addiu   $s0, $s0, 0x8
    or      $a2, $s0, $zero
    sw      $t1, 0x14($sp)
    sw      $t0, 0x10($sp)
    or      $a1, $zero, $zero
    jal     0x800940d8
    addiu   $a3, $zero, 0xb7
    addiu   $t2, $zero, 0x108
    addiu   $t3, $zero, 0x10
    sw      $t3, 0x14($sp)
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    or      $a2, $s0, $zero
    jal     0x800940d8
    addiu   $a3, $zero, 0xc2
    addiu   $t4, $zero, 0xff
    sw      $t4, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    or      $a2, $zero, $zero
    jal     0x801e7bd4
    or      $a3, $zero, $zero
    or      $s3, $v0, $zero
    or      $s1, $zero, $zero
    addiu   $s4, $zero, 0x5c
    addiu   $s2, $zero, 0x68
branch_0x802c5e34:
    andi    $t5, $s1, 0x1
    beqz    $t5, branch_0x802c5e4c
    or      $a0, $s3, $zero
    lui     $s0, 0x802c
    b       branch_0x802c5e54
    lw      $s0, 0x6d38($s0)
branch_0x802c5e4c:
    lui     $s0, 0x802c
    lw      $s0, 0x6d34($s0)
branch_0x802c5e54:
    addiu   $a1, $s0, 0x28
    or      $a2, $s4, $zero
    addiu   $a3, $s0, 0x42
    jal     0x801e7d38
    sw      $s2, 0x10($sp)
    addiu   $s1, $s1, 0x1
    slti    $at, $s1, 0x3
    addiu   $s4, $s4, 0x12
    addiu   $s2, $s2, 0x12
    bnez    $at, branch_0x802c5e34
    or      $s3, $v0, $zero
    lui     $t6, 0x801c
    lw      $t6, 0x23b0($t6)
    bnez    $t6, branch_0x802c5eb4
    or      $a0, $v0, $zero
    lui     $v0, 0x802c
    lw      $v0, 0x6d38($v0)
    addiu   $t7, $zero, 0xac
    sw      $t7, 0x10($sp)
    addiu   $a2, $zero, 0xa0
    addiu   $a1, $v0, 0x28
    jal     0x801e7d38
    addiu   $a3, $v0, 0x42
    or      $s3, $v0, $zero
branch_0x802c5eb4:
    lw      $v0, 0xb4($sp)
    addiu   $t8, $zero, 0xd0
    sw      $t8, 0x10($sp)
    or      $a0, $s3, $zero
    addiu   $a2, $zero, 0xc4
    addiu   $a1, $v0, 0x28
    jal     0x801e7d38
    addiu   $a3, $v0, 0x42
    lui     $t0, 0xed02
    lui     $t1, 0x4d
    lui     $t9, 0xe700
    ori     $t1, $t1, 0x8368
    ori     $t0, $t0, 0x50
    lui     $t2, 0xb400
    sw      $t9, 0x0($v0)
    sw      $zero, 0x4($v0)
    sw      $t0, 0x8($v0)
    sw      $t1, 0xc($v0)
    sw      $t2, 0x10($v0)
    lui     $t3, 0x802c
    lhu     $t3, 0x6d40($t3)
    lui     $t4, 0x103
    lui     $t5, 0x700
    sw      $s5, 0x20($v0)
    lui     $t6, 0x107
    addiu   $t5, $t5, 0xa40
    ori     $t4, $t4, 0x40
    addiu   $t6, $t6, 0xf488
    lui     $s5, 0x380
    lui     $s0, 0x700
    lui     $s4, 0x700
    lui     $fp, 0x800d
    lui     $s7, 0x800e
    lui     $s6, 0x102
    sw      $t4, 0x18($v0)
    sw      $t5, 0x1c($v0)
    sw      $t6, 0x24($v0)
    addiu   $s3, $v0, 0x28
    ori     $s6, $s6, 0x40
    addiu   $s7, $s7, 0xa8e8
    addiu   $fp, $fp, 0x7ef0
    addiu   $s4, $s4, 0xa80
    addiu   $s0, $s0, 0x1280
    ori     $s5, $s5, 0x10
    or      $s1, $zero, $zero
    sw      $t3, 0x14($v0)
branch_0x802c5f6c:
    lh      $t7, 0x0($s7)
    or      $v0, $s3, $zero
    addiu   $s3, $s3, 0x8
    beqz    $t7, branch_0x802c5fa0
    or      $v1, $s3, $zero
    lw      $t8, 0x0($fp)
    lui     $t0, 0x801c
    addiu   $t0, $t0, 0x2110
    sll     $t9, $t8, 2
    addu    $t9, $t9, $t8
    sll     $t9, $t9, 2
    b       branch_0x802c5fcc
    addu    $s2, $t9, $t0
branch_0x802c5fa0:
    lw      $t1, 0x0($fp)
    sll     $t3, $s1, 2
    addu    $t3, $t3, $s1
    sll     $t2, $t1, 4
    subu    $t2, $t2, $t1
    sll     $t2, $t2, 2
    sll     $t3, $t3, 2
    lui     $t5, 0x801c
    addiu   $t5, $t5, 0x1d50
    addu    $t4, $t2, $t3
    addu    $s2, $t4, $t5
branch_0x802c5fcc:
    sw      $s5, 0x0($v0)
    sw      $s0, 0x4($v0)
    sw      $s4, 0x4($v1)
    sw      $s6, 0x0($v1)
    lh      $t6, 0x0($s7)
    addiu   $s3, $s3, 0x8
    or      $a0, $s3, $zero
    beqz    $t6, branch_0x802c6030
    or      $a2, $zero, $zero
    bnez    $s1, branch_0x802c6060
    or      $a0, $s3, $zero
    lui     $t7, 0x801d
    lw      $t7, -0x1ca8($t7)
    sll     $t8, $s1, 2
    subu    $t8, $t8, $s1
    sll     $t8, $t8, 6
    addu    $t9, $t7, $t8
    addiu   $t0, $t9, 0xc80
    lw      $a1, 0x4($s2)
    sw      $t0, 0x10($sp)
    or      $a2, $zero, $zero
    jal     0x801e4d48
    or      $a3, $zero, $zero
    b       branch_0x802c6060
    or      $s3, $v0, $zero
branch_0x802c6030:
    lui     $t1, 0x801d
    lw      $t1, -0x1ca8($t1)
    sll     $t2, $s1, 2
    subu    $t2, $t2, $s1
    sll     $t2, $t2, 6
    addu    $t3, $t1, $t2
    addiu   $t4, $t3, 0xc80
    lw      $a1, 0x4($s2)
    sw      $t4, 0x10($sp)
    jal     0x801e4d48
    or      $a3, $zero, $zero
    or      $s3, $v0, $zero
branch_0x802c6060:
    addiu   $s1, $s1, 0x1
    slti    $at, $s1, 0x3
    addiu   $s0, $s0, 0x10
    bnez    $at, branch_0x802c5f6c
    addiu   $s4, $s4, 0x40
    lui     $t5, 0x801c
    lw      $t5, 0x23b0($t5)
    bnez    $t5, branch_0x802c60f0
    or      $v0, $s3, $zero
    sw      $s5, 0x0($v0)
    sw      $s0, 0x4($v0)
    addiu   $v1, $s3, 0x8
    sw      $s6, 0x0($v1)
    sw      $s4, 0x4($v1)
    lui     $t6, 0x800d
    lui     $t8, 0x801d
    lw      $t8, -0x1ca8($t8)
    lw      $t6, 0x465c($t6)
    sll     $t9, $s1, 2
    subu    $t9, $t9, $s1
    sll     $t9, $t9, 6
    lui     $a1, 0x800e
    addu    $t0, $t8, $t9
    sll     $t7, $t6, 2
    addu    $a1, $a1, $t7
    addiu   $t1, $t0, 0xc80
    addiu   $a0, $v1, 0x8
    sw      $t1, 0x10($sp)
    lw      $a1, -0x58d0($a1)
    or      $a2, $zero, $zero
    jal     0x801e4d48
    or      $a3, $zero, $zero
    or      $s3, $v0, $zero
    addiu   $s1, $s1, 0x1
    addiu   $s0, $s0, 0x10
    addiu   $s4, $s4, 0x40
branch_0x802c60f0:
    lh      $t2, 0x0($s7)
    bnezl   $t2, branch_0x802c616c
    addiu   $t0, $zero, 0xff
    lw      $t3, 0x0($fp)
    or      $v0, $s3, $zero
    sw      $s5, 0x0($v0)
    sw      $s0, 0x4($v0)
    addiu   $v1, $s3, 0x8
    sw      $s6, 0x0($v1)
    sw      $s4, 0x4($v1)
    lui     $t6, 0x801d
    lw      $t6, -0x1ca8($t6)
    sll     $t7, $s1, 2
    sll     $t4, $t3, 2
    lui     $t5, 0x801c
    subu    $t7, $t7, $s1
    addu    $t4, $t4, $t3
    sll     $t4, $t4, 2
    addiu   $t5, $t5, 0x2020
    sll     $t7, $t7, 6
    addu    $s2, $t4, $t5
    addu    $t8, $t6, $t7
    addiu   $t9, $t8, 0xc80
    lw      $a1, 0x4($s2)
    addiu   $a0, $v1, 0x8
    sw      $t9, 0x10($sp)
    or      $a2, $zero, $zero
    jal     0x801e4d48
    or      $a3, $zero, $zero
    or      $s3, $v0, $zero
    addiu   $t0, $zero, 0xff
branch_0x802c616c:
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x34($sp)
    sw      $t8, 0x30($sp)
    sw      $t7, 0x2c($sp)
    sw      $t6, 0x28($sp)
    sw      $t5, 0x24($sp)
    sw      $t4, 0x20($sp)
    sw      $t3, 0x1c($sp)
    sw      $t2, 0x18($sp)
    sw      $t1, 0x14($sp)
    sw      $t0, 0x10($sp)
    or      $a0, $s3, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     0x801e91f4
    addiu   $a3, $zero, 0xff
    lw      $v1, 0x0($fp)
    lui     $t1, 0x802c
    lui     $t2, 0x802c
    sll     $t0, $v1, 2
    addu    $t1, $t1, $t0
    lw      $t1, 0x6c8c($t1)
    lw      $t2, 0x6d34($t2)
    lui     $a2, 0x800e
    addu    $a2, $a2, $t0
    addiu   $t3, $zero, 0x21
    addu    $a3, $t1, $t2
    addiu   $a3, $a3, 0x38
    sw      $t3, 0x10($sp)
    lw      $a2, -0x584c($a2)
    or      $v1, $t0, $zero
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    lui     $a3, 0x802c
    lw      $a3, 0x6d38($a3)
    addiu   $t4, $zero, 0x47
    sw      $t4, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1f
    sw      $zero, 0x14($sp)
    jal     0x801e3c40
    addiu   $a3, $a3, 0x17
    lui     $a3, 0x802c
    lw      $a3, 0x6d38($a3)
    addiu   $t5, $zero, 0x47
    sw      $t5, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x11
    sw      $zero, 0x14($sp)
    jal     0x801e3c40
    addiu   $a3, $a3, 0x4b
    lui     $a3, 0x802c
    lw      $a3, 0x6d38($a3)
    addiu   $t6, $zero, 0x47
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x20
    sw      $zero, 0x14($sp)
    jal     0x801e3c40
    addiu   $a3, $a3, 0x87
    lui     $a3, 0x802c
    lw      $a3, 0x6d38($a3)
    addiu   $t7, $zero, 0x47
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x3
    sw      $zero, 0x14($sp)
    jal     0x801e3c40
    addiu   $a3, $a3, 0xda
    lui     $t8, 0x801c
    lw      $t8, 0x23b0($t8)
    or      $s3, $v0, $zero
    or      $a0, $v0, $zero
    bnez    $t8, branch_0x802c62f4
    or      $a1, $zero, $zero
    lui     $a3, 0x802c
    lw      $a3, 0x6d38($a3)
    addiu   $t9, $zero, 0x94
    sw      $t9, 0x10($sp)
    addiu   $a2, $zero, 0x19
    sw      $zero, 0x14($sp)
    jal     0x801e3c40
    addiu   $a3, $a3, 0x12
    or      $s3, $v0, $zero
branch_0x802c62f4:
    lw      $a3, 0xb4($sp)
    addiu   $t0, $zero, 0xb8
    sw      $t0, 0x10($sp)
    or      $a0, $s3, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xd
    sw      $zero, 0x14($sp)
    jal     0x801e3c40
    addiu   $a3, $a3, 0x12
    lui     $t1, 0x8022
    addiu   $t1, $t1, 0x6c04
    or      $s3, $v0, $zero
    sw      $t1, 0x6c($sp)
    or      $s1, $zero, $zero
    addiu   $s4, $zero, 0x5c
    addiu   $s6, $zero, 0x5d
    addiu   $s5, $sp, 0xa8
branch_0x802c6338:
    lh      $t2, 0x0($s7)
    or      $a0, $s3, $zero
    addiu   $a2, $zero, 0x80
    beqz    $t2, branch_0x802c6378
    addiu   $a3, $zero, 0x80
    bnez    $s1, branch_0x802c6370
    lui     $t3, 0x801c
    lw      $t3, 0x23b0($t3)
    beqz    $t3, branch_0x802c6368
    nop
    b       branch_0x802c63cc
    addiu   $a1, $zero, 0x4
branch_0x802c6368:
    b       branch_0x802c63cc
    or      $a1, $zero, $zero
branch_0x802c6370:
    b       branch_0x802c63cc
    addiu   $a1, $zero, 0x7
branch_0x802c6378:
    lui     $v1, 0x801c
    lw      $v1, 0x23b0($v1)
    addiu   $at, $zero, 0x1
    or      $a1, $zero, $zero
    beqz    $v1, branch_0x802c63cc
    nop
    bne     $v1, $at, branch_0x802c63b4
    addiu   $t5, $s1, 0x1
    addiu   $t4, $s1, 0x1
    bne     $t4, $v1, branch_0x802c63ac
    nop
    b       branch_0x802c63cc
    addiu   $a1, $zero, 0x4
branch_0x802c63ac:
    b       branch_0x802c63cc
    or      $a1, $zero, $zero
branch_0x802c63b4:
    bne     $t5, $v1, branch_0x802c63c4
    nop
    b       branch_0x802c63cc
    addiu   $a1, $zero, 0x6
branch_0x802c63c4:
    b       branch_0x802c63cc
    or      $a1, $zero, $zero
branch_0x802c63cc:
    addiu   $t6, $zero, 0x80
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
    lh      $t6, 0x0($s7)
    or      $s3, $v0, $zero
    andi    $t5, $s1, 0x1
    beqz    $t6, branch_0x802c6454
    or      $a0, $s5, $zero
    lw      $t7, 0x0($fp)
    lui     $t9, 0x801c
    addiu   $t9, $t9, 0x2110
    sll     $t8, $t7, 2
    addu    $t8, $t8, $t7
    sll     $t8, $t8, 2
    b       branch_0x802c6480
    addu    $s2, $t8, $t9
branch_0x802c6454:
    lw      $t0, 0x0($fp)
    sll     $t2, $s1, 2
    addu    $t2, $t2, $s1
    sll     $t1, $t0, 4
    subu    $t1, $t1, $t0
    sll     $t1, $t1, 2
    sll     $t2, $t2, 2
    lui     $t4, 0x801c
    addiu   $t4, $t4, 0x1d50
    addu    $t3, $t1, $t2
    addu    $s2, $t3, $t4
branch_0x802c6480:
    beqz    $t5, branch_0x802c6494
    lui     $a1, 0x802c
    lui     $s0, 0x802c
    b       branch_0x802c649c
    lw      $s0, 0x6d38($s0)
branch_0x802c6494:
    lui     $s0, 0x802c
    lw      $s0, 0x6d34($s0)
branch_0x802c649c:
    addiu   $a2, $s1, 0x1
    sw      $a2, 0x74($sp)
    jal     0x800c9f70
    addiu   $a1, $a1, 0x6cb0
    lw      $t6, 0x6c($sp)
    or      $a0, $s3, $zero
    addiu   $a1, $zero, 0x2
    lb      $t7, 0x1($t6)
    sw      $s4, 0x10($sp)
    or      $a2, $s5, $zero
    addu    $a3, $t7, $s0
    jal     0x801e95e0
    addiu   $a3, $a3, 0x11
    lh      $t8, 0x0($s7)
    or      $s3, $v0, $zero
    beqzl   $t8, branch_0x802c65d8
    lw      $t0, 0x8($s2)
    bnez    $s1, branch_0x802c6578
    or      $a0, $s3, $zero
    lw      $t9, 0x8($s2)
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6cbc
    bnez    $t9, branch_0x802c651c
    or      $a0, $s5, $zero
    lui     $a1, 0x802c
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6cb8
    addiu   $a1, $a1, 0x6cb4
    jal     0x800c9f70
    or      $a0, $s5, $zero
    b       branch_0x802c652c
    or      $a0, $s3, $zero
branch_0x802c651c:
    lui     $a2, 0x802c
    jal     0x800c9f70
    addiu   $a2, $a2, 0x6cc0
    or      $a0, $s3, $zero
branch_0x802c652c:
    addiu   $a1, $zero, 0x1
    or      $a2, $s5, $zero
    addiu   $a3, $s0, 0x3b
    jal     0x801e95e0
    sw      $s4, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $s2, 0x10
    addiu   $a3, $s0, 0x87
    jal     0x801e95e0
    sw      $s4, 0x10($sp)
    lw      $a2, 0x0($s2)
    sw      $s4, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     0x801e8884
    addiu   $a3, $s0, 0xc6
    b       branch_0x802c65b0
    or      $s3, $v0, $zero
branch_0x802c6578:
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6cc4
    addiu   $a1, $zero, 0x2
    addiu   $a3, $s0, 0x87
    jal     0x801e95e0
    sw      $s4, 0x10($sp)
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6cc8
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a3, $s0, 0xc6
    jal     0x801e95e0
    sw      $s4, 0x10($sp)
    or      $s3, $v0, $zero
branch_0x802c65b0:
    or      $a0, $s3, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x24
    addiu   $a3, $s0, 0x4b
    sw      $s6, 0x10($sp)
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    b       branch_0x802c668c
    or      $s3, $v0, $zero

Function_0x802c65d4: # 0x802c65d4
    lw      $t0, 0x8($s2)
branch_0x802c65d8:
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6cdc
    bnez    $t0, branch_0x802c6608
    or      $a0, $s5, $zero
    lui     $a1, 0x802c
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6cd8
    addiu   $a1, $a1, 0x6cd4
    jal     0x800c9f70
    or      $a0, $s5, $zero
    b       branch_0x802c6618
    or      $a0, $s3, $zero
branch_0x802c6608:
    lui     $a2, 0x802c
    jal     0x800c9f70
    addiu   $a2, $a2, 0x6ce0
    or      $a0, $s3, $zero
branch_0x802c6618:
    addiu   $a1, $zero, 0x1
    or      $a2, $s5, $zero
    addiu   $a3, $s0, 0x3b
    jal     0x801e95e0
    sw      $s4, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $s2, 0x10
    addiu   $a3, $s0, 0x87
    jal     0x801e95e0
    sw      $s4, 0x10($sp)
    lw      $a2, 0x0($s2)
    sw      $s4, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     0x801e8884
    addiu   $a3, $s0, 0xc6
    lw      $t1, 0xc($s2)
    lui     $a2, 0x802c
    sw      $zero, 0x14($sp)
    sll     $t2, $t1, 2
    addu    $a2, $a2, $t2
    lw      $a2, 0x6c80($a2)
    sw      $s6, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    jal     0x801e3c40
    addiu   $a3, $s0, 0x4b
    or      $s3, $v0, $zero
branch_0x802c668c:
    lw      $t3, 0x6c($sp)
    lw      $s1, 0x74($sp)
    addiu   $at, $zero, 0x3
    addiu   $t4, $t3, 0x1
    sw      $t4, 0x6c($sp)
    addiu   $s4, $s4, 0x12
    bne     $s1, $at, branch_0x802c6338
    addiu   $s6, $s6, 0x12
    lui     $t5, 0x801c
    lw      $t5, 0x23b0($t5)
    or      $a0, $s3, $zero
    addiu   $a1, $zero, 0x6
    bnez    $t5, branch_0x802c684c
    addiu   $a2, $zero, 0xff
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
    sw      $t6, 0x10($sp)
    jal     0x801e91f4
    addiu   $a3, $zero, 0xff
    lui     $t6, 0x801d
    lw      $t6, -0x4f74($t6)
    or      $s3, $v0, $zero
    or      $a0, $s5, $zero
    bnez    $t6, branch_0x802c6754
    lui     $a1, 0x802c
    lui     $a1, 0x802c
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6ce8
    addiu   $a1, $a1, 0x6ce4
    jal     0x800c9f70
    or      $a0, $s5, $zero
    b       branch_0x802c6764
    nop
branch_0x802c6754:
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6cf0
    jal     0x800c9f70
    addiu   $a1, $a1, 0x6cec
branch_0x802c6764:
    lui     $a3, 0x802c
    lw      $a3, 0x6d38($a3)
    addiu   $t7, $zero, 0xa0
    sw      $t7, 0x10($sp)
    or      $a0, $s3, $zero
    addiu   $a1, $zero, 0x1
    or      $a2, $s5, $zero
    jal     0x801e95e0
    addiu   $a3, $a3, 0x3b
    lui     $t8, 0x800d
    lw      $t8, 0x465c($t8)
    lui     $a3, 0x802c
    lw      $a3, 0x6d38($a3)
    sll     $t9, $t8, 3
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 4
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 3
    lui     $a2, 0x801c
    addu    $a2, $a2, $t9
    addiu   $t0, $zero, 0xa0
    sw      $t0, 0x10($sp)
    lw      $a2, 0x2834($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     0x801e8884
    addiu   $a3, $a3, 0xc6
    lh      $t1, 0x0($s7)
    or      $s3, $v0, $zero
    or      $a0, $s3, $zero
    beqz    $t1, branch_0x802c6814
    or      $a1, $zero, $zero
    lui     $a3, 0x802c
    lw      $a3, 0x6d38($a3)
    addiu   $t2, $zero, 0xa0
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x24
    sw      $zero, 0x14($sp)
    jal     0x801e3c40
    addiu   $a3, $a3, 0x4b
    b       branch_0x802c684c
    or      $s3, $v0, $zero
branch_0x802c6814:
    lui     $t3, 0x801d
    lw      $t3, -0x4f68($t3)
    lui     $a3, 0x802c
    lw      $a3, 0x6d38($a3)
    lui     $a2, 0x802c
    sll     $t4, $t3, 2
    addu    $a2, $a2, $t4
    addiu   $t5, $zero, 0xa1
    sw      $t5, 0x10($sp)
    lw      $a2, 0x6c80($a2)
    sw      $zero, 0x14($sp)
    jal     0x801e3c40
    addiu   $a3, $a3, 0x4b
    or      $s3, $v0, $zero
branch_0x802c684c:
    lh      $t6, 0x0($s7)
    or      $a0, $s3, $zero
    addiu   $a1, $zero, 0x7
    beqz    $t6, branch_0x802c6930
    lui     $t0, 0x801c
    addiu   $t7, $zero, 0x80
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    sw      $t6, 0x34($sp)
    sw      $t5, 0x30($sp)
    sw      $t4, 0x2c($sp)
    sw      $t3, 0x28($sp)
    sw      $t2, 0x24($sp)
    sw      $t1, 0x20($sp)
    sw      $t0, 0x1c($sp)
    sw      $t9, 0x18($sp)
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    addiu   $a2, $zero, 0x80
    jal     0x801e91f4
    addiu   $a3, $zero, 0x80
    lw      $a3, 0xb4($sp)
    lui     $a2, 0x802c
    addiu   $t7, $zero, 0xc4
    sw      $t7, 0x10($sp)
    addiu   $a2, $a2, 0x6cf4
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     0x801e95e0
    addiu   $a3, $a3, 0x87
    lw      $a3, 0xb4($sp)
    lui     $a2, 0x802c
    addiu   $t8, $zero, 0xc4
    sw      $t8, 0x10($sp)
    addiu   $a2, $a2, 0x6cf8
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     0x801e95e0
    addiu   $a3, $a3, 0xc6
    lw      $a3, 0xb4($sp)
    addiu   $t9, $zero, 0xc5
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x24
    sw      $zero, 0x14($sp)
    jal     0x801e3c40
    addiu   $a3, $a3, 0x4b
    b       branch_0x802c6b00
    or      $s3, $v0, $zero
branch_0x802c6930:
    lw      $t0, 0x23b4($t0)
    or      $a0, $s3, $zero
    or      $a1, $zero, $zero
    beqz    $t0, branch_0x802c69b0
    addiu   $a2, $zero, 0xff
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
    sw      $t1, 0x10($sp)
    or      $a0, $s3, $zero
    addiu   $a1, $zero, 0x4
    addiu   $a2, $zero, 0xff
    jal     0x801e91f4
    addiu   $a3, $zero, 0xff
    b       branch_0x802c6a0c
    or      $s3, $v0, $zero
branch_0x802c69b0:
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
    sw      $t1, 0x10($sp)
    jal     0x801e91f4
    addiu   $a3, $zero, 0xff
    or      $s3, $v0, $zero
branch_0x802c6a0c:
    lw      $t1, 0x0($fp)
    lui     $t3, 0x801c
    addiu   $t3, $t3, 0x2020
    sll     $t2, $t1, 2
    addu    $t2, $t2, $t1
    sll     $t2, $t2, 2
    addu    $s2, $t2, $t3
    lw      $t4, 0x8($s2)
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6d0c
    bnez    $t4, branch_0x802c6a5c
    or      $a0, $s5, $zero
    lui     $a1, 0x802c
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6d08
    addiu   $a1, $a1, 0x6d04
    jal     0x800c9f70
    or      $a0, $s5, $zero
    b       branch_0x802c6a6c
    lw      $a3, 0xb4($sp)
branch_0x802c6a5c:
    lui     $a2, 0x802c
    jal     0x800c9f70
    addiu   $a2, $a2, 0x6d10
    lw      $a3, 0xb4($sp)
branch_0x802c6a6c:
    addiu   $t5, $zero, 0xc4
    sw      $t5, 0x10($sp)
    or      $a0, $s3, $zero
    addiu   $a1, $zero, 0x1
    or      $a2, $s5, $zero
    jal     0x801e95e0
    addiu   $a3, $a3, 0x3b
    lw      $a3, 0xb4($sp)
    addiu   $t6, $zero, 0xc4
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $s2, 0x10
    jal     0x801e95e0
    addiu   $a3, $a3, 0x87
    lw      $a3, 0xb4($sp)
    lw      $a2, 0x0($s2)
    addiu   $t7, $zero, 0xc4
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     0x801e8884
    addiu   $a3, $a3, 0xc6
    lw      $t8, 0xc($s2)
    lw      $a3, 0xb4($sp)
    lui     $a2, 0x802c
    sll     $t9, $t8, 2
    addu    $a2, $a2, $t9
    addiu   $t0, $zero, 0xc5
    sw      $t0, 0x10($sp)
    lw      $a2, 0x6c80($a2)
    sw      $zero, 0x14($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    jal     0x801e3c40
    addiu   $a3, $a3, 0x4b
    or      $s3, $v0, $zero
branch_0x802c6b00:
    lw      $ra, 0x64($sp)
    or      $v0, $s3, $zero
    lw      $s3, 0x4c($sp)
    lw      $s0, 0x40($sp)
    lw      $s1, 0x44($sp)
    lw      $s2, 0x48($sp)
    lw      $s4, 0x50($sp)
    lw      $s5, 0x54($sp)
    lw      $s6, 0x58($sp)
    lw      $s7, 0x5c($sp)
    lw      $fp, 0x60($sp)
    jr      $ra
    addiu   $sp, $sp, 0xc0

.globl Function_0x802c6b34
Function_0x802c6b34: # 0x802c6b34
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x6d30
    lw      $t6, 0x0($a0)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    sltiu   $at, $t6, 0x5
    beqz    $at, branch_0x802c6c50
    or      $a2, $zero, $zero
    sll     $t6, $t6, 2
    lui     $at, 0x802c
    addu    $at, $at, $t6
    lw      $t6, 0x6d18($at)
    jr      $t6
    nop

.globl Function_0x802c6b6c
Function_0x802c6b6c: # 0x802c6b6c
    addiu   $t7, $zero, 0x1
    b       branch_0x802c6c50
    sw      $t7, 0x0($a0)

.globl Function_0x802c6b78
Function_0x802c6b78: # 0x802c6b78
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6d34
    lw      $t8, 0x0($v0)
    addiu   $t0, $zero, 0x2
    addiu   $t2, $zero, 0x28
    addiu   $v1, $t8, 0xffec
    slti    $at, $v1, 0x14
    beqz    $at, branch_0x802c6ba8
    sw      $v1, 0x0($v0)
    addiu   $v1, $zero, 0x14
    sw      $t0, 0x0($a0)
    sw      $v1, 0x0($v0)
branch_0x802c6ba8:
    subu    $t3, $t2, $v1
    lui     $at, 0x802c
    b       branch_0x802c6c50
    sw      $t3, 0x6d38($at)

.globl Function_0x802c6bb8
Function_0x802c6bb8: # 0x802c6bb8
    lui     $t4, 0x801d
    lhu     $t4, -0x1c0e($t4)
    addiu   $t6, $zero, 0x3
    andi    $t5, $t4, 0xb000
    beqz    $t5, branch_0x802c6c50
    nop
    addiu   $a2, $zero, 0x1
    b       branch_0x802c6c50
    sw      $t6, 0x0($a0)

.globl Function_0x802c6bdc
Function_0x802c6bdc: # 0x802c6bdc
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6d34
    lw      $t7, 0x0($v0)
    lui     $a1, 0x802c
    addiu   $t1, $zero, 0x28
    addiu   $v1, $t7, 0xffec
    slti    $at, $v1, 0xfef8
    beqz    $at, branch_0x802c6c18
    sw      $v1, 0x0($v0)
    addiu   $a1, $a1, 0x6d3c
    addiu   $t9, $zero, 0x4
    addiu   $v1, $zero, 0xfef8
    sw      $t9, 0x0($a0)
    sw      $v1, 0x0($v0)
    sw      $zero, 0x0($a1)
branch_0x802c6c18:
    subu    $t2, $t1, $v1
    lui     $at, 0x802c
    b       branch_0x802c6c50
    sw      $t2, 0x6d38($at)

.globl Function_0x802c6c28
Function_0x802c6c28: # 0x802c6c28
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6d3c
    lw      $t3, 0x0($a1)
    addiu   $t4, $t3, 0x1
    slti    $at, $t4, 0x3
    bnez    $at, branch_0x802c6c50
    sw      $t4, 0x0($a1)
    jal     0x801ec5c0
    sw      $a2, 0x1c($sp)
    lw      $a2, 0x1c($sp)
branch_0x802c6c50:
    beqz    $a2, branch_0x802c6c60
    addiu   $a0, $zero, 0x31
    jal     0x800c3594
    or      $a1, $zero, $zero
branch_0x802c6c60:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.incbin "./roms/Wave Race 64 (USA).z64", 0x1c3480, ROM_0x1c3540 - 0x1c3480
