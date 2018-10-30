

.include "source/constants.s"

.section .textoverlay1, "ax"

.set noreorder


.globl Function_1_0x802c5800
Function_1_0x802c5800: # 0x802c5800
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xff98
    sw      $s0, 0x40($sp)
    or      $s0, $a0, $zero
    beqz    $t6, branch_0x802c5850
    sw      $ra, 0x44($sp)
    sw      $zero, 0x0($v0)
    lui     $t7, 0x8015
    lw      $t7, 0x40a4($t7)
    addiu   $t8, $zero, 0x1
    lui     $at, 0x802c
    bnez    $t7, branch_0x802c5840
    nop
    sw      $t8, 0x6bec($at)
branch_0x802c5840:
    jal     Function_0x800939e4
    or      $a0, $s0, $zero
    b       branch_0x802c5a64
    lw      $ra, 0x44($sp)
branch_0x802c5850:
    jal     Function_0x8009302c
    or      $a0, $s0, $zero
    lui     $v1, 0x600
    lui     $t9, 0x806
    lui     $t0, 0x107
    addiu   $t9, $t9, 0xaf88
    addiu   $t0, $t0, 0xf168
    sw      $t9, 0x4($v0)
    sw      $v1, 0x0($v0)
    sw      $t0, 0xc($v0)
    sw      $v1, 0x8($v0)
    lui     $t1, 0x802c
    lw      $t1, 0x6bc4($t1)
    addiu   $s0, $v0, 0x10
    or      $a0, $s0, $zero
    beqz    $t1, branch_0x802c5978
    or      $a1, $zero, $zero
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
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff
    lui     $a1, 0x802c
    lui     $a2, 0x8015
    or      $s0, $v0, $zero
    lw      $a2, 0x1734($a2)
    addiu   $a1, $a1, 0x6ea0
    jal     Function_0x800c9f70
    addiu   $a0, $sp, 0x54
    addiu   $t2, $zero, 0x28
    sw      $t2, 0x10($sp)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $sp, 0x54
    jal     Function_0x801e95e0
    addiu   $a3, $zero, 0x1c
    lui     $a2, 0x8015
    lw      $a2, 0x1734($a2)
    lui     $a1, 0x802c
    or      $s0, $v0, $zero
    addiu   $a1, $a1, 0x6ea8
    addiu   $a0, $sp, 0x54
    bgez    $a2, branch_0x802c5950
    sra     $t3, $a2, 10
    addiu   $at, $a2, 0x3ff
    sra     $t3, $at, 10
branch_0x802c5950:
    jal     Function_0x800c9f70
    or      $a2, $t3, $zero
    addiu   $t4, $zero, 0x3c
    sw      $t4, 0x10($sp)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $sp, 0x54
    jal     Function_0x801e95e0
    addiu   $a3, $zero, 0x1c
    or      $s0, $v0, $zero
branch_0x802c5978:
    lui     $t5, 0x802c
    lw      $t5, 0x6bec($t5)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    beqz    $t5, branch_0x802c59f4
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
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff

Function_0x802c59e8: # 0x802c59e8
    jal     Function_0x802c6ae4
    or      $a0, $v0, $zero
    or      $s0, $v0, $zero
branch_0x802c59f4:
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6bc8
    lw      $v0, 0x0($v1)
    lui     $t9, %hi(Unknown_0x801ce3ba)
    lui     $t1, 0x800e
    slti    $at, $v0, 0x14
    beqz    $at, branch_0x802c5a2c
    addiu   $t6, $v0, 0x1
    addiu   $at, $zero, 0x14
    bne     $t6, $at, branch_0x802c5a2c
    sw      $t6, 0x0($v1)
    addiu   $t8, $zero, 0x2
    lui     $at, 0x801d
    sw      $t8, -0x1c58($at)
branch_0x802c5a2c:
    lhu     $t9, %lo(Unknown_0x801ce3ba)($t9)
    lui     $at, 0x800e
    andi    $t0, $t9, JOY_START|JOY_Z|JOY_A
    bnez    $t0, branch_0x802c5a4c
    nop
    lh      $t1, -0x5774($t1)
    beqz    $t1, branch_0x802c5a54
    nop
branch_0x802c5a4c:
    jal     Function_0x802c6878
    sh      $zero, -0x5774($at)
branch_0x802c5a54:
    jal     Function_0x80047df0
    nop
    or      $v0, $s0, $zero
    lw      $ra, 0x44($sp)
branch_0x802c5a64:
    lw      $s0, 0x40($sp)
    addiu   $sp, $sp, 0x68
    jr      $ra
    nop

.globl Function_0x802c5a74
Function_0x802c5a74: # 0x802c5a74
    jr      $ra
    nop

.globl Function_1_0x802c5a7c
Function_1_0x802c5a7c: # 0x802c5a7c
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe39c
    lw      $t6, 0x0($a1)
    addiu   $sp, $sp, 0xffb0
    sw      $s0, 0x40($sp)
    or      $s0, $a0, $zero
    beqz    $t6, branch_0x802c5afc
    sw      $ra, 0x44($sp)
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6f08
    addiu   $a2, $zero, 0x1
    sw      $zero, 0x0($a1)
    sw      $a2, 0x0($v1)
    lui     $v0, 0x801d
    lb      $v0, -0x5020($v0)
    addiu   $t9, $a2, 0x1
    lui     $at, 0x802c
    andi    $t7, $v0, 0x1
    beqz    $t7, branch_0x802c5ad4
    andi    $t1, $v0, 0x2
    sw      $t9, 0x0($v1)
    sw      $a2, 0x6bd8($at)
branch_0x802c5ad4:
    beqz    $t1, branch_0x802c5af0
    andi    $t4, $v0, 0x8
    lw      $t2, 0x0($v1)
    lui     $at, 0x802c
    addiu   $t3, $t2, 0x1
    sw      $t3, 0x0($v1)
    sw      $a2, 0x6bdc($at)
branch_0x802c5af0:
    beqz    $t4, branch_0x802c5afc
    lui     $at, 0x802c
    sw      $a2, 0x6bc0($at)
branch_0x802c5afc:
    jal     Function_0x8009302c
    or      $a0, $s0, $zero
    lui     $v1, 0x802c
    lw      $v1, 0x6be0($v1)
    or      $s0, $v0, $zero
    or      $v0, $s0, $zero
    beqz    $v1, branch_0x802c5b30
    addiu   $a0, $s0, 0x8
    addiu   $at, $zero, 0x1
    beq     $v1, $at, branch_0x802c5e24
    nop
    b       branch_0x802c5ecc
    nop
branch_0x802c5b30:
    lui     $t6, 0x806
    addiu   $t6, $t6, 0xa6f8
    lui     $t5, 0x600
    sw      $t5, 0x0($v0)
    sw      $t6, 0x4($v0)
    addiu   $t6, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    sw      $t4, 0x28($sp)
    sw      $t3, 0x24($sp)
    sw      $t2, 0x20($sp)
    sw      $t1, 0x1c($sp)
    sw      $t9, 0x18($sp)
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    sw      $t7, 0x34($sp)
    sw      $t5, 0x2c($sp)
    sw      $t6, 0x30($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x34($sp)
    sw      $t6, 0x30($sp)
    sw      $t5, 0x2c($sp)
    sw      $t4, 0x28($sp)
    sw      $t3, 0x24($sp)
    sw      $t2, 0x20($sp)
    sw      $t1, 0x1c($sp)
    sw      $t9, 0x18($sp)
    sw      $t8, 0x14($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    addiu   $a3, $zero, 0xff
    jal     Function_0x801e91f4
    sw      $zero, 0x10($sp)
    lui     $t8, 0x802c
    lw      $t8, 0x6bec($t8)
    or      $s0, $v0, $zero
    or      $a0, $s0, $zero
    bnez    $t8, branch_0x802c5c20
    addiu   $a1, $zero, 0x1
    b       branch_0x802c5c24
    addiu   $v1, $zero, 0xa6
branch_0x802c5c20:
    addiu   $v1, $zero, 0x8c
branch_0x802c5c24:
    addiu   $t9, $v1, 0x14
    addiu   $t1, $zero, 0x2
    sw      $t1, 0x14($sp)
    sw      $t9, 0x10($sp)
    addiu   $a2, $zero, 0x58
    addiu   $a3, $zero, 0x5f
    jal     Function_0x801e3c40
    sw      $v1, 0x48($sp)
    lw      $v1, 0x48($sp)
    lui     $t5, 0x708
    ori     $t5, $t5, 0x200
    sw      $t5, 0xc($v0)
    lui     $t2, 0xfd70
    lui     $t6, 0xe600
    sw      $t6, 0x10($v0)
    sw      $t2, 0x0($v0)
    lui     $t3, 0x804
    lui     $t4, 0xf570
    lui     $t7, 0xf300
    lui     $t8, 0x72f
    lui     $t9, 0xe700
    lui     $t1, 0xf568
    addiu   $t5, $v1, 0x32
    ori     $t1, $t1, 0x4000
    sw      $t9, 0x20($v0)
    ori     $t8, $t8, 0xf040
    sw      $t7, 0x18($v0)
    sw      $t4, 0x8($v0)
    addiu   $t3, $t3, 0xd610
    lui     $t2, 0x8
    sll     $t6, $t5, 2
    ori     $t2, $t2, 0x200
    sw      $t3, 0x4($v0)
    lui     $t4, 0x3f
    sw      $t8, 0x1c($v0)
    sw      $t1, 0x28($v0)
    andi    $t7, $t6, 0xfff
    lui     $at, 0xe448
    addiu   $t9, $v1, 0x2c
    ori     $t4, $t4, 0xc014
    lui     $t3, 0xf200
    sw      $t2, 0x2c($v0)
    sll     $t1, $t9, 2
    or      $t8, $t7, $at
    sw      $t3, 0x30($v0)
    sw      $t4, 0x34($v0)
    lui     $at, 0x8
    andi    $t2, $t1, 0xfff
    lui     $t6, 0x400
    ori     $t6, $t6, 0x400
    or      $t3, $t2, $at
    lui     $t4, 0xb300
    lui     $t5, 0xb200
    sw      $zero, 0x24($v0)
    sw      $zero, 0x14($v0)
    sw      $t5, 0x48($v0)
    sw      $t4, 0x40($v0)
    sw      $t3, 0x3c($v0)
    sw      $t6, 0x4c($v0)
    sw      $t8, 0x38($v0)
    sw      $zero, 0x44($v0)
    lui     $t7, 0x802c
    lw      $t7, 0x6bec($t7)
    addiu   $s0, $v0, 0x50
    lui     $t8, 0x802c
    bnezl   $t7, branch_0x802c5e08
    or      $v0, $s0, $zero
    lw      $t8, 0x6be8($t8)
    addiu   $at, $zero, 0x14
    lui     $t0, 0x802c
    bne     $t8, $at, branch_0x802c5e04
    addiu   $t0, $t0, 0x6be4
    lw      $v1, 0x0($t0)
    addiu   $at, $zero, 0x1e
    or      $a0, $s0, $zero
    div     $zero, $v1, $at
    mfhi    $t9
    slti    $at, $t9, 0x14
    beqz    $at, branch_0x802c5df0
    addiu   $a1, $zero, 0x7
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
    addiu   $a2, $zero, 0xff
    addiu   $a3, $zero, 0xff
    jal     Function_0x801e91f4
    sw      $zero, 0x10($sp)
    addiu   $t1, $zero, 0xa6
    addiu   $t2, $zero, 0x2
    sw      $t2, 0x14($sp)
    sw      $t1, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x56
    jal     Function_0x801e3c40
    addiu   $a3, $zero, 0x5e
    lui     $t0, 0x802c
    addiu   $t0, $t0, 0x6be4
    lw      $v1, 0x0($t0)
    or      $s0, $v0, $zero
branch_0x802c5df0:
    addiu   $t3, $v1, 0x1

.globl Function_1_0x802c5df4
Function_1_0x802c5df4: # 0x802c5df4
    slti    $at, $t3, 0x1e
    bnez    $at, branch_0x802c5e04
    sw      $t3, 0x0($t0)
    sw      $zero, 0x0($t0)
branch_0x802c5e04:
    or      $v0, $s0, $zero
branch_0x802c5e08:
    lui     $t6, 0x107
    addiu   $t6, $t6, 0xf168
    lui     $t5, 0x600
    sw      $t5, 0x0($v0)
    sw      $t6, 0x4($v0)
    b       branch_0x802c5ecc
    addiu   $s0, $s0, 0x8
branch_0x802c5e24:
    jal     Function_0x802c6044
    or      $a0, $s0, $zero
    lui     $t8, 0x107
    lui     $t0, %hi(Unknown_1_0x802c6f0c)
    addiu   $t8, $t8, 0xf168
    lui     $t7, 0x600
    addiu   $t0, $t0, %lo(Unknown_1_0x802c6f0c)
    sw      $t7, 0x0($v0)
    sw      $t8, 0x4($v0)
    lw      $t9, 0x0($t0)
    addiu   $s0, $v0, 0x8
    or      $a1, $zero, $zero
    blez    $t9, branch_0x802c5ecc
    or      $v1, $zero, $zero
    lui     $a3, 0x16
    lui     $a2, 0xf639
    lui     $a0, %hi(Unknown_1_0x802c6bd0)
    addiu   $a0, $a0, %lo(Unknown_1_0x802c6bd0)
    ori     $a2, $a2, 0xc000
    ori     $a3, $a3, 0x4000
    lw      $t1, 0x0($a0)
branch_0x802c5e78:
    or      $v0, $s0, $zero
    addiu   $a1, $a1, 0x1
    addu    $t2, $v1, $t1
    addiu   $t3, $t2, 0xe
    andi    $t4, $t3, 0x3ff
    sll     $t5, $t4, 2
    or      $t6, $t5, $a2
    sw      $t6, 0x0($v0)
    lw      $t7, 0x0($a0)
    addiu   $s0, $s0, 0x8
    addu    $t8, $v1, $t7
    addiu   $t9, $t8, 0xfffd
    andi    $t1, $t9, 0x3ff
    sll     $t2, $t1, 2
    or      $t3, $t2, $a3
    sw      $t3, 0x4($v0)
    lw      $t4, 0x0($t0)
    addiu   $v1, $v1, 0x14
    slt     $at, $a1, $t4
    bnezl   $at, branch_0x802c5e78
    lw      $t1, 0x0($a0)
branch_0x802c5ecc:
    lui     $t5, %hi(Unknown_1_0x802c6bec)
    lw      $t5, %lo(Unknown_1_0x802c6bec)($t5)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    beqz    $t5, branch_0x802c5f44
    addiu   $a2, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    sw      $t5, 0x30($sp)
    sw      $t4, 0x2c($sp)
    sw      $t3, 0x28($sp)
    sw      $t2, 0x24($sp)
    sw      $t1, 0x20($sp)
    sw      $t9, 0x1c($sp)
    sw      $t8, 0x18($sp)
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    sw      $t6, 0x34($sp)
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff
    jal     Function_0x802c6ae4
    or      $a0, $v0, $zero
    or      $s0, $v0, $zero
branch_0x802c5f44:
    lui     $a0, %hi(Unknown_1_0x802c6bc8)
    addiu   $a0, $a0, %lo(Unknown_1_0x802c6bc8)
    lw      $v0, 0x0($a0)
    lui     $v1, %hi(Unknown_1_0x802c6be0)
    lw      $v1, %lo(Unknown_1_0x802c6be0)($v1)
    slti    $at, $v0, 0x14
    beqz    $at, branch_0x802c5f7c
    addiu   $t7, $v0, 0x1
    addiu   $at, $zero, 0x14
    bne     $t7, $at, branch_0x802c5f7c
    sw      $t7, 0x0($a0)
    addiu   $t9, $zero, 0x2
    lui     $at, 0x801d
    sw      $t9, -0x1c58($at)
branch_0x802c5f7c:
    beqz    $v1, branch_0x802c5f98
    lui     $t2, %hi(Unknown_0x801ce3ba)
    addiu   $at, $zero, 0x1
    beq     $v1, $at, branch_0x802c6028
    nop
    b       branch_0x802c6034
    lw      $ra, 0x44($sp)
branch_0x802c5f98:
    lui     $v1, %hi(Unknown_1_0x802c6be8)
    addiu   $v1, $v1, %lo(Unknown_1_0x802c6be8)
    lw      $v0, 0x0($v1)
    slti    $at, $v0, 0x14
    beqz    $at, branch_0x802c5fb4
    addiu   $t1, $v0, 0x1
    sw      $t1, 0x0($v1)
branch_0x802c5fb4:
    lhu     $t2, %lo(Unknown_0x801ce3ba)($t2)
    lui     $v0, %hi(Unknown_1_0x802c6f14)
    addiu   $v0, $v0, %lo(Unknown_1_0x802c6f14)
    andi    $t3, $t2, JOY_START|JOY_Z|JOY_A
    beqzl   $t3, branch_0x802c6008
    lw      $t6, 0x0($v0)
    lw      $t4, 0x0($v1)
    addiu   $at, $zero, 0x14
    addiu   $t5, $zero, 0x1
    bne     $t4, $at, branch_0x802c6004
    addiu   $a0, $zero, 0x11
    lui     $v0, %hi(Unknown_1_0x802c6f14)
    lui     $at, %hi(Unknown_1_0x802c6be0)
    addiu   $v0, $v0, %lo(Unknown_1_0x802c6f14)
    sw      $t5, %lo(Unknown_1_0x802c6be0)($at)
    sw      $zero, 0x0($v0)
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6034
    lw      $ra, 0x44($sp)
branch_0x802c6004:
    lw      $t6, 0x0($v0)
branch_0x802c6008:
    addiu   $t7, $t6, 0x1
    slti    $at, $t7, 0x258
    bnez    $at, branch_0x802c6030
    sw      $t7, 0x0($v0)
    jal     Function_0x802c6a1c_ChangeStateTo4
    addiu   $a0, $zero, MainState_7

    b       branch_0x802c6034
    lw      $ra, 0x44($sp)
branch_0x802c6028:
    jal     Function_0x802c63ac
    nop
branch_0x802c6030:
    lw      $ra, 0x44($sp)
branch_0x802c6034:
    or      $v0, $s0, $zero
    lw      $s0, 0x40($sp)
    jr      $ra
    addiu   $sp, $sp, 0x50

.globl Function_0x802c6044
Function_0x802c6044: # 0x802c6044
    addiu   $sp, $sp, 0xff78
    lui     $t6, %hi(Unknown_1_0x802c6ee0)
    lw      $t6, %lo(Unknown_1_0x802c6ee0)($t6)
    lui     $t8, %hi(Unknown_1_0x802c6e08)
    sw      $s6, 0x58($sp)
    sll     $t7, $t6, 2
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 3
    addiu   $t8, $t8, %lo(Unknown_1_0x802c6e08)
    sw      $ra, 0x64($sp)
    sw      $fp, 0x60($sp)
    sw      $s7, 0x5c($sp)
    sw      $s5, 0x54($sp)
    sw      $s4, 0x50($sp)
    sw      $s3, 0x4c($sp)
    sw      $s2, 0x48($sp)
    sw      $s1, 0x44($sp)
    sw      $s0, 0x40($sp)
    addu    $s6, $t7, $t8
    lw      $t9, 0x0($s6)
    lui     $s4, %hi(Unknown_1_0x802c6f0c)
    addiu   $s4, $s4, %lo(Unknown_1_0x802c6f0c)
    sw      $t9, 0x6c($sp)
    lw      $t0, 0x4($s6)
    lui     $v0, %hi(Unknown_1_0x802c6f10)
    addiu   $v0, $v0, %lo(Unknown_1_0x802c6f10)
    sw      $t0, 0x0($s4)
    lw      $t1, 0x8($s6)
    lui     $v1, %hi(Unknown_1_0x802c6bd0)
    or      $s2, $a0, $zero
    sw      $t1, 0x0($v0)
    lw      $t2, 0x14($s6)
    addiu   $v1, $v1, %lo(Unknown_1_0x802c6bd0)
    lui     $t6, 0x107
    beqz    $t2, branch_0x802c60e0
    lui     $t5, 0x600
    lui     $t3, %hi(Unknown_1_0x802c6f08)
    lw      $t3, %lo(Unknown_1_0x802c6f08)($t3)
    sw      $t3, 0x0($v0)
branch_0x802c60e0:
    lw      $s5, 0x10($s6)
    lw      $fp, 0xc($s6)
    or      $v0, $s2, $zero
    sw      $s5, 0x0($v1)
    addiu   $t6, $t6, 0xf628
    sw      $t6, 0x4($v0)
    sw      $t5, 0x0($v0)
    lw      $t7, 0x0($s4)
    addiu   $s2, $s2, 0x8
    or      $s0, $zero, $zero
    blez    $t7, branch_0x802c6154
    or      $s1, $zero, $zero
branch_0x802c6110:
    addu    $a3, $s1, $s5
    addiu   $t8, $zero, 0x8c
    addiu   $t9, $zero, 0xf
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    addiu   $a3, $a3, 0xfffe
    or      $a0, $s2, $zero
    or      $a1, $zero, $zero
    jal     Function_0x800940d8
    addiu   $a2, $zero, 0x5a
    lw      $t0, 0x0($s4)
    addiu   $s0, $s0, 0x1
    addiu   $s1, $s1, 0x14
    slt     $at, $s0, $t0
    bnez    $at, branch_0x802c6110
    or      $s2, $v0, $zero
    or      $s0, $zero, $zero
branch_0x802c6154:
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
    or      $a0, $s2, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff
    lw      $v1, 0x0($s4)
    or      $s2, $v0, $zero
    lw      $s3, 0x6c($sp)
    blez    $v1, branch_0x802c62bc
    lui     $s7, %hi(Unknown_1_0x802c6ee4)
    lui     $s4, %hi(Unknown_1_0x802c6bd4)
    addiu   $s4, $s4, %lo(Unknown_1_0x802c6bd4)
    addiu   $s7, $s7, %lo(Unknown_1_0x802c6ee4)
branch_0x802c61d8:
    lw      $t1, 0x0($s7)
    beql    $s0, $t1, branch_0x802c62b0
    addiu   $s0, $s0, 0x1
    lw      $t2, 0x14($s6)
    sll     $s1, $s0, 2
    addu    $s1, $s1, $s0
    beqz    $t2, branch_0x802c6278
    sll     $s1, $s1, 2
    sll     $t3, $s0, 2
    addu    $t4, $s4, $t3
    lw      $t5, 0x0($t4)
    or      $a0, $s2, $zero
    addiu   $a2, $zero, 0x80
    beqz    $t5, branch_0x802c621c
    addiu   $a3, $zero, 0x80
    b       branch_0x802c6220
    or      $a1, $zero, $zero
branch_0x802c621c:
    addiu   $a1, $zero, 0x7
branch_0x802c6220:
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
    jal     Function_0x801e91f4
    sw      $t6, 0x10($sp)
    or      $s2, $v0, $zero
branch_0x802c6278:
    lw      $t6, 0xc($s3)
    addu    $t7, $s5, $s1
    addiu   $t8, $t7, 0x1
    lw      $a2, 0x8($s3)
    sw      $zero, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a0, $s2, $zero
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e3c40
    addu    $a3, $t6, $fp
    lui     $v1, %hi(Unknown_1_0x802c6f0c)
    lw      $v1, %lo(Unknown_1_0x802c6f0c)($v1)
    or      $s2, $v0, $zero
    addiu   $s0, $s0, 0x1
branch_0x802c62b0:
    slt     $at, $s0, $v1
    bnez    $at, branch_0x802c61d8
    addiu   $s3, $s3, 0x18
branch_0x802c62bc:
    lui     $s7, %hi(Unknown_1_0x802c6ee4)
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
    addiu   $s7, $s7, %lo(Unknown_1_0x802c6ee4)
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
    or      $a0, $s2, $zero
    addiu   $a1, $zero, 0x6
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff
    lw      $v1, 0x0($s7)
    lw      $t0, 0x6c($sp)
    or      $a0, $v0, $zero
    sll     $t9, $v1, 2
    subu    $t9, $t9, $v1
    sll     $t2, $v1, 2
    sll     $t9, $t9, 3
    addu    $t2, $t2, $v1
    sll     $t2, $t2, 2
    addu    $s3, $t9, $t0
    lw      $t1, 0xc($s3)
    addu    $t3, $s5, $t2
    addiu   $t4, $t3, 0x1
    lw      $a2, 0x8($s3)
    sw      $zero, 0x14($sp)
    sw      $t4, 0x10($sp)
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e3c40
    addu    $a3, $t1, $fp
    jal     Function_0x801e52b4
    or      $a0, $v0, $zero
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
    addiu   $sp, $sp, 0x88

.globl Function_0x802c63ac
Function_0x802c63ac: # 0x802c63ac
    lui     $t1, %hi(Unknown_1_0x802c6ee0)
    addiu   $t1, $t1, %lo(Unknown_1_0x802c6ee0)

.globl Function_0x802c63b4
Function_0x802c63b4: # 0x802c63b4
    lw      $a0, 0x0($t1)
    addiu   $t3, $zero, 0x18
    lui     $v0, %hi(Unknown_0x801ce3ba)
    multu   $a0, $t3
    lhu     $v0, %lo(Unknown_0x801ce3ba)($v0)
    lui     $t4, %hi(Unknown_1_0x802c6e08)
    addiu   $t4, $t4, %lo(Unknown_1_0x802c6e08)
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x14($sp)
    addiu   $t7, $zero, 0x1
    andi    $t8, $v0, JOY_START|JOY_Z|JOY_A
    lui     $a1, %hi(Unknown_1_0x802c6bcc)
    andi    $t5, $v0, JOY_B
    mflo    $t6
    addu    $t0, $t4, $t6
    lw      $t2, 0x0($t0)
    beqz    $t8, branch_0x802c66e8
    sw      $t7, 0x1c($sp)
    addiu   $a1, $a1, %lo(Unknown_1_0x802c6bcc)
    lw      $v0, 0x0($a1)
    lui     $a3, %hi(Unknown_1_0x802c6ee4)
    addiu   $a3, $a3, %lo(Unknown_1_0x802c6ee4)
    lw      $v1, 0x0($a3)
    lui     $at, %hi(Unknown_1_0x802c6ee8)
    sll     $a2, $v0, 2
    addu    $at, $at, $a2
    sw      $v1, %lo(Unknown_1_0x802c6ee8)($at)
    lui     $at, %hi(Unknown_1_0x802c6ef8)
    addu    $at, $at, $a2
    sw      $a0, %lo(Unknown_1_0x802c6ef8)($at)
    slti    $at, $v0, 0x2
    beqz    $at, branch_0x802c6440
    sw      $zero, 0x1c($sp)
    addiu   $t9, $v0, 0x1
    sw      $t9, 0x0($a1)
branch_0x802c6440:
    bnez    $a0, branch_0x802c644c
    lui     $at, 0x800e
    sw      $v1, -0x58a8($at)
branch_0x802c644c:
    multu   $v1, $t3
    addiu   $at, $zero, 0xffff
    mflo    $a1
    addu    $a0, $a1, $t2
    lh      $a2, 0x0($a0)
    bnel    $a2, $at, branch_0x802c6668
    sw      $a2, 0x0($t1)

    lw      $a0, 0x0($t0)
    lui     $v0, %hi(Unknown_0x801ce368)
    addiu   $v0, $v0, %lo(Unknown_0x801ce368)
    addu    $a0, $a0, $a1
    lw      $t5, 0x4($a0)
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xb098
    sw      $t5, 0x0($v0)
    lh      $t6, 0x10($a0)
    addiu   $at, $zero, 0x4
    addiu   $t0, $zero, 0x1
    sh      $t6, 0x4($v0)
    lh      $t7, 0x12($a0)
    sh      $t7, 0x6($v0)
    lh      $t8, 0x14($a0)
    sw      $t8, 0x0($v1)
    lh      $t9, 0x16($a0)
    bne     $t9, $at, branch_0x802c64b8
    lui     $at, 0x800e
    sh      $t0, -0x5718($at)
branch_0x802c64b8:
    lw      $t5, 0x0($v0)
    addiu   $t0, $zero, 0x1
    sltiu   $at, $t5, 0xc
    beqz    $at, branch_0x802c6640
    sll     $t5, $t5, 2
    lui     $at, %hi(SwitchTable_1_0x802c6eb0)
    addu    $at, $at, $t5
    lw      $t5, %lo(SwitchTable_1_0x802c6eb0)($at)
    jr      $t5
    nop

branch_0x802c64e0: # 0x802c64e0
    lw      $a1, 0x0($v1)
    sw      $zero, 0x8($v0)
    sw      $zero, 0x14($v0)
    bnez    $a1, branch_0x802c650c
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xb068
    lw      $t6, 0x4($v1)
    lw      $t7, 0x8($v1)
    sw      $t6, 0xc($v0)
    b       branch_0x802c6544
    sw      $t7, 0x10($v0)
branch_0x802c650c:
    bne     $t0, $a1, branch_0x802c652c
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xb068
    lw      $t8, 0x10($v1)
    lw      $t9, 0x14($v1)
    sw      $t8, 0xc($v0)
    b       branch_0x802c6544
    sw      $t9, 0x10($v0)
branch_0x802c652c:
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xb068
    lw      $t5, 0x1c($v1)
    lw      $t6, 0x20($v1)
    sw      $t5, 0xc($v0)
    sw      $t6, 0x10($v0)
branch_0x802c6544:
    lui     $at, 0x801d
    lui     $v0, 0x801d
    lui     $v1, 0x801d

.globl Function_0x802c6550
Function_0x802c6550: # 0x802c6550
    addiu   $a2, $zero, MainState_a
    sw      $t0, -0x1ba8($at)
    addiu   $v1, $v1, 0xb0b0
    addiu   $v0, $v0, 0xb0a0
branch_0x802c6560:
    addiu   $v0, $v0, 0x4
    sltu    $at, $v0, $v1
    bnez    $at, branch_0x802c6560
    sw      $zero, -0x4($v0)
    lui     $t1, 0x801d
    addiu   $t1, $t1, 0xb094
    sw      $zero, 0x0($t1)
    lh      $t7, 0x16($a0)
    addiu   $at, $zero, 0x2
    sll     $t8, $a1, 4
    bne     $t7, $at, branch_0x802c6594
    lui     $v1, 0x801d
    sw      $t0, 0x0($t1)
branch_0x802c6594:
    lw      $t9, 0x0($t1)
    lui     $t7, 0x800f
    lui     $at, 0x801d
    sll     $t5, $t9, 1
    addu    $t6, $t8, $t5
    addu    $t7, $t7, $t6
    lh      $t7, -0x568c($t7)
    lui     $v0, 0x801d
    lui     $a0, 0x801d
    addiu   $a0, $a0, 0xb130
    addiu   $v0, $v0, 0xb0b0
    addiu   $v1, $v1, 0xb130
    sw      $t7, -0x4f70($at)
branch_0x802c65c8:
    addiu   $v0, $v0, 0x10
    addiu   $v1, $v1, 0x4
    sw      $zero, -0x10($v0)
    sw      $zero, -0xc($v0)
    sw      $zero, -0x8($v0)
    sw      $zero, -0x4($v0)
    bne     $v0, $a0, branch_0x802c65c8
    sw      $zero, -0x4($v1)
    b       branch_0x802c6648
    addiu   $a0, $zero, 0x37

branch_0x802c65f0: # 0x802c65f0
    addiu   $a2, $zero, MainState_a
    sw      $zero, 0x8($v0)
    b       branch_0x802c6644
    sw      $zero, 0x14($v0)

branch_0x802c6600: # 0x802c6600
    addiu   $a2, $zero, MainState_a
    sw      $zero, 0x8($v0)
    sw      $t0, 0xc($v0)
    sw      $t0, 0x10($v0)
    b       branch_0x802c6644
    sw      $zero, 0x14($v0)

branch_0x802c6618: # 0x802c6618
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xb150
    sw      $zero, 0x4($v1)
    sw      $zero, 0x0($v1)
    addiu   $a2, $zero, MainState_a
    sw      $zero, 0x8($v0)
    b       branch_0x802c6644
    sw      $zero, 0x14($v0)

branch_0x802c6638: # 0x802c6638
    b       branch_0x802c6644
    addiu   $a2, $zero, MainState_3c
branch_0x802c6640:
    addiu   $a2, $zero, MainState_2
branch_0x802c6644:
    addiu   $a0, $zero, 0x37
branch_0x802c6648:
    or      $a1, $zero, $zero
    jal     Function_0x800c3594
    sw      $a2, 0x18($sp)
    jal     Function_0x802c6a1c_ChangeStateTo4
    lw      $a0, 0x18($sp)

    b       branch_0x802c6800
    lw      $t9, 0x1c($sp)

.globl Function_0x802c6664
Function_0x802c6664: # 0x802c6664
    sw      $a2, 0x0($t1)
branch_0x802c6668:
    sw      $zero, 0x0($a3)
    lh      $v1, 0x16($a0)
    addiu   $t0, $zero, 0x1
    addiu   $at, $zero, 0x3
    beq     $v1, $t0, branch_0x802c6690
    lui     $t8, 0x800e
    beq     $v1, $at, branch_0x802c66a4
    lui     $t5, %hi(Unknown_1_0x802c6bc0)
    b       branch_0x802c66bc
    lw      $t7, 0x0($t1)
branch_0x802c6690:
    lh      $t8, -0x5880($t8)
    blezl   $t8, branch_0x802c66bc
    lw      $t7, 0x0($t1)
    b       branch_0x802c66b8
    sw      $t0, 0x0($a3)
branch_0x802c66a4:
    lw      $t5, %lo(Unknown_1_0x802c6bc0)($t5)
    addiu   $t6, $zero, 0x5
    beqzl   $t5, branch_0x802c66bc
    lw      $t7, 0x0($t1)
    sw      $t6, 0x0($t1)
branch_0x802c66b8:
    lw      $t7, 0x0($t1)
branch_0x802c66bc:
    lui     $at, %hi(Unknown_1_0x802c6bd0)
    addiu   $a0, $zero, 0x11
    multu   $t7, $t3
    or      $a1, $zero, $zero
    mflo    $t9
    addu    $v1, $t4, $t9
    lw      $t8, 0x10($v1)
    jal     Function_0x800c3594
    sw      $t8, %lo(Unknown_1_0x802c6bd0)($at)
    b       branch_0x802c6800
    lw      $t9, 0x1c($sp)
branch_0x802c66e8:
    beqz    $t5, branch_0x802c676c
    andi    $t7, $v0, 0x800
    beqz    $a0, branch_0x802c67fc
    sw      $zero, 0x1c($sp)
    lui     $a1, %hi(Unknown_1_0x802c6bcc)
    addiu   $a1, $a1, %lo(Unknown_1_0x802c6bcc)
    lw      $v0, 0x0($a1)
    lui     $t7, %hi(Unknown_1_0x802c6ef8)
    blez    $v0, branch_0x802c6718
    addiu   $t6, $v0, 0xffff
    sw      $t6, 0x0($a1)
    or      $v0, $t6, $zero
branch_0x802c6718:
    sll     $a2, $v0, 2
    addu    $t7, $t7, $a2
    lw      $t7, %lo(Unknown_1_0x802c6ef8)($t7)
    lui     $t9, %hi(Unknown_1_0x802c6ee8)
    addu    $t9, $t9, $a2
    multu   $t7, $t3
    sw      $t7, 0x0($t1)
    lw      $t9, %lo(Unknown_1_0x802c6ee8)($t9)
    lui     $a3, %hi(Unknown_1_0x802c6ee4)
    addiu   $a3, $a3, %lo(Unknown_1_0x802c6ee4)
    sw      $t9, 0x0($a3)
    lui     $at, %hi(Unknown_1_0x802c6bd0)
    addiu   $a0, $zero, 0x16
    or      $a1, $zero, $zero
    mflo    $t5
    addu    $v1, $t4, $t5
    lw      $t6, 0x10($v1)
    jal     Function_0x800c3594
    sw      $t6, %lo(Unknown_1_0x802c6bd0)($at)
    b       branch_0x802c6800
    lw      $t9, 0x1c($sp)
branch_0x802c676c:
    beqz    $t7, branch_0x802c67b8
    andi    $t9, $v0, 0x400
    lui     $a3, %hi(Unknown_1_0x802c6ee4)
    addiu   $a3, $a3, %lo(Unknown_1_0x802c6ee4)
    lw      $t9, 0x0($a3)
    lui     $at, 0x801d
    addiu   $a0, $zero, 0x10
    addiu   $t8, $t9, 0xffff
    bgez    $t8, branch_0x802c67a4
    sw      $t8, 0x0($a3)
    lui     $t6, %hi(Unknown_1_0x802c6f10)
    lw      $t6, %lo(Unknown_1_0x802c6f10)($t6)
    addiu   $t7, $t6, 0xffff
    sw      $t7, 0x0($a3)
branch_0x802c67a4:
    sw      $zero, -0x1c5c($at)
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6800
    lw      $t9, 0x1c($sp)
branch_0x802c67b8:
    beqz    $t9, branch_0x802c67fc
    lui     $a3, %hi(Unknown_1_0x802c6ee4)
    addiu   $a3, $a3, %lo(Unknown_1_0x802c6ee4)
    lw      $t8, 0x0($a3)
    lui     $t7, %hi(Unknown_1_0x802c6f10)
    addiu   $a0, $zero, 0x10
    addiu   $t5, $t8, 0x1
    sw      $t5, 0x0($a3)
    lw      $t7, %lo(Unknown_1_0x802c6f10)($t7)
    or      $a1, $zero, $zero
    slt     $at, $t5, $t7
    bnez    $at, branch_0x802c67f0
    nop
    sw      $zero, 0x0($a3)
branch_0x802c67f0:
    lui     $at, 0x801d
    jal     Function_0x800c3594
    sw      $zero, -0x1c5c($at)
branch_0x802c67fc:
    lw      $t9, 0x1c($sp)
branch_0x802c6800:
    lui     $t8, %hi(Unknown_0x801ce3ba)
    beqz    $t9, branch_0x802c6860
    nop
    lhu     $t8, %lo(Unknown_0x801ce3ba)($t8)
    lui     $v0, %hi(Unknown_1_0x802c6f14)
    addiu   $v0, $v0, %lo(Unknown_1_0x802c6f14)
    bnez    $t8, branch_0x802c6844
    lui     $t5, %hi(Unknown_0x801ce3b8)
    lhu     $t5, %lo(Unknown_0x801ce3b8)($t5)
    bnezl   $t5, branch_0x802c6848
    sw      $zero, 0x0($v0)
    lui     $v0, %hi(Unknown_1_0x802c6f14)
    addiu   $v0, $v0, %lo(Unknown_1_0x802c6f14)
    lw      $t6, 0x0($v0)
    addiu   $t7, $t6, 0x1
    b       branch_0x802c6848
    sw      $t7, 0x0($v0)
branch_0x802c6844:
    sw      $zero, 0x0($v0)
branch_0x802c6848:
    lw      $t9, 0x0($v0)
    slti    $at, $t9, 0x258
    bnez    $at, branch_0x802c6860
    nop
    jal     Function_0x802c6a1c_ChangeStateTo4
    addiu   $a0, $zero, MainState_7
branch_0x802c6860:
    jal     Function_0x80047df0
    nop
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x802c6878
Function_0x802c6878: # 0x802c6878
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $v1, $zero, MainState_3
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $v1, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    sw      $zero, %lo(Unknown_0x801ce398)($at)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x1
    sw      $t7, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $t8, 0x800e
    lw      $t8, -0x58a8($t8)
    lui     $at, 0x800d
    sw      $v1, 0x439c($at)
    lui     $at, %hi(Unknown_1_0x802c6ee4)
    addiu   $sp, $sp, 0xffe8
    sw      $t8, %lo(Unknown_1_0x802c6ee4)($at)
    sw      $ra, 0x14($sp)
    lui     $at, %hi(Unknown_1_0x802c6ee0)
    jal     Function_0x801ead00
    sw      $zero, %lo(Unknown_1_0x802c6ee0)($at)
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    addiu   $a0, $zero, 0x3
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    addiu   $a0, $zero, 0x3
    jal     Function_0x801e67ac
    addiu   $a1, $zero, 0x1
    lui     $at, %hi(Unknown_1_0x802c6be0)
    sw      $zero, %lo(Unknown_1_0x802c6be0)($at)
    lui     $at, %hi(Unknown_1_0x802c6f14)
    sw      $zero, %lo(Unknown_1_0x802c6f14)($at)
    addiu   $a0, $zero, 0x2d
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


.globl Function_1_0x802c6944
Function_1_0x802c6944: # 0x802c6944
    lui     $v0, %hi(Unknown_0x801ce39c)
    addiu   $v0, $v0, %lo(Unknown_0x801ce39c)
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c6964
    nop
    sw      $zero, 0x0($v0)
branch_0x802c6964:
    jal     Function_0x8009302c
    nop
    addiu   $t7, $v0, 0x8
    sw      $t7, 0x18($sp)
    lui     $t9, 0x107
    addiu   $t9, $t9, 0xf168
    lui     $t8, 0x600
    sw      $t8, 0x0($v0)
    sw      $t9, 0x4($v0)
    lui     $t0, 0x8023
    lh      $t0, -0x782a($t0)
    addiu   $at, $zero, 0x1
    lui     $v0, %hi(Unknown_0x801ce390)
    bnel    $t0, $at, branch_0x802c6a0c
    lw      $ra, 0x14($sp)

    lw      $v0, %lo(Unknown_0x801ce390)($v0)
    addiu   $at, $zero, MainState_2
    beq     $v0, $at, branch_0x802c69f0_ChangeStateTo2
    addiu   $at, $zero, MainState_7
    beq     $v0, $at, branch_0x802c6a00_ChangeStateTo7
    addiu   $at, $zero, MainState_a
    beq     $v0, $at, branch_0x802c69d0_ChangeStateToA
    addiu   $at, $zero, MainState_3c
    beq     $v0, $at, branch_0x802c69e0_ChangeStateTo3c
    nop
    b       branch_0x802c6a0c
    lw      $ra, 0x14($sp)

branch_0x802c69d0_ChangeStateToA:
    jal     Function_0x801ebab8_ChangeStateToA
    nop
    b       branch_0x802c6a0c
    lw      $ra, 0x14($sp)

branch_0x802c69e0_ChangeStateTo3c:
    jal     Function_0x801ec094_ChangeStateTo3c
    nop
    b       branch_0x802c6a0c
    lw      $ra, 0x14($sp)

branch_0x802c69f0_ChangeStateTo2:
    jal     Function_0x801eaf10_ChangeStateTo2
    nop
    b       branch_0x802c6a0c
    lw      $ra, 0x14($sp)

branch_0x802c6a00_ChangeStateTo7:
    jal     Function_0x801eb284_ChangeStateTo7
    nop
    lw      $ra, 0x14($sp)

branch_0x802c6a0c:
    lw      $v0, 0x18($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


/* Input:
a0: MainState_#
*/
.globl Function_0x802c6a1c_ChangeStateTo4
Function_0x802c6a1c_ChangeStateTo4: # 0x802c6a1c
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_4
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $a0, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    sw      $zero, %lo(Unknown_0x801ce398)($at)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0x1
    sw      $t8, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    addiu   $sp, $sp, 0xffe8
    sw      $zero, -0x5764($at)
    sw      $ra, 0x14($sp)
    lui     $at, 0x800d
    addiu   $t9, $zero, 0x3
    sw      $t9, 0x439c($at)
    addiu   $a0, $zero, 0x1
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $v0, %hi(Unknown_0x801ce390)
    lw      $v0, %lo(Unknown_0x801ce390)($v0)
    addiu   $at, $zero, 0xa
    bnel    $v0, $at, branch_0x802c6ac4
    addiu   $at, $zero, 0x3c
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x1
    b       branch_0x802c6ad8
    lw      $ra, 0x14($sp)

.globl Function_0x802c6ac0
Function_0x802c6ac0: # 0x802c6ac0
    addiu   $at, $zero, 0x3c
branch_0x802c6ac4:
    bnel    $v0, $at, branch_0x802c6ad8
    lw      $ra, 0x14($sp)
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x9
    lw      $ra, 0x14($sp)
branch_0x802c6ad8:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c6ae4
Function_0x802c6ae4: # 0x802c6ae4
    addiu   $sp, $sp, 0xffc8
    sw      $s0, 0x1c($sp)
    sw      $s5, 0x30($sp)
    sw      $s4, 0x2c($sp)
    sw      $s3, 0x28($sp)
    sw      $s2, 0x24($sp)
    sw      $s1, 0x20($sp)

.globl Function_0x802c6b00
Function_0x802c6b00: # 0x802c6b00
    lui     $s0, %hi(Unknown_1_0x802c6bf0)
    or      $s3, $a0, $zero
    sw      $ra, 0x34($sp)
    or      $s2, $zero, $zero
    addiu   $s0, $s0, %lo(Unknown_1_0x802c6bf0)
    or      $s1, $zero, $zero
    addiu   $s4, $zero, 0x8
    addiu   $s5, $zero, 0x2
branch_0x802c6b20:
    lw      $t6, 0x0($s0)
    lw      $t8, 0x4($s0)
    or      $a0, $s3, $zero
    addiu   $a3, $t6, 0xfffe
    subu    $t9, $s4, $t8
    slt     $at, $a3, $t9

.globl Function_0x802c6b38
Function_0x802c6b38: # 0x802c6b38
    bnez    $at, branch_0x802c6b64
    sw      $a3, 0x0($s0)
    lw      $a2, 0x8($s0)
    addiu   $t0, $zero, 0xc4
    addiu   $t1, $zero, 0x6
    sw      $t1, 0x14($sp)
    sw      $t0, 0x10($sp)
    jal     Function_0x801e3c40
    addiu   $a1, $zero, 0x3
    b       branch_0x802c6b68
    or      $s3, $v0, $zero
branch_0x802c6b64:
    addiu   $s2, $s2, 0x1
branch_0x802c6b68:
    addiu   $s1, $s1, 0x1
    bne     $s1, $s5, branch_0x802c6b20
    addiu   $s0, $s0, 0xc
    bne     $s2, $s5, branch_0x802c6b90
    or      $v0, $s3, $zero
    lui     $at, %hi(Unknown_1_0x802c6bf0)
    addiu   $t2, $zero, 0x137
    addiu   $t3, $zero, 0x2bf
    sw      $t2, %lo(Unknown_1_0x802c6bf0)($at)
    sw      $t3, %lo(Unknown_1_0x802c6bfc)($at)
branch_0x802c6b90:
    lw      $ra, 0x34($sp)
    lw      $s0, 0x1c($sp)
    lw      $s1, 0x20($sp)
    lw      $s2, 0x24($sp)
    lw      $s3, 0x28($sp)
    lw      $s4, 0x2c($sp)
    lw      $s5, 0x30($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38

# 0x802c6bb4 0x1b5034
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b5034, 0x1b5040 - 0x1b5034

Unknown_1_0x802c6bc0: # 0x1b5040
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b5040, 0x1b5048 - 0x1b5040

Unknown_1_0x802c6bc8: # 0x1b5048
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b5048, 0x1b504c - 0x1b5048

Unknown_1_0x802c6bcc: # 0x1b504c
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b504c, 0x1b5050 - 0x1b504c

Unknown_1_0x802c6bd0: # 0x1b5050
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b5050, 0x1b5054 - 0x1b5050

Unknown_1_0x802c6bd4: # 0x1b5054
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b5054, 0x1b5060 - 0x1b5054

Unknown_1_0x802c6be0: # 0x1b5060
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b5060, 0x1b5068 - 0x1b5060

Unknown_1_0x802c6be8: # 0x1b5068
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b5068, 0x1b506c - 0x1b5068

Unknown_1_0x802c6bec: # 0x1b506c
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b506c, 0x1b5070 - 0x1b506c

Unknown_1_0x802c6bf0: # 0x1b5070
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b5070, 0x1b507c - 0x1b5070

Unknown_1_0x802c6bfc: # 0x1b507c
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b507c, 0x1b50a8 - 0x1b507c

Unknown_1_0x802c6c28: # 0x1b50a8
.word 0x00010000, 0xFFFFFFFF, 0x00000012, 0x0000000E, 0x00000000, 0x00000003
.word 0xFFFF0000, 0x0, 0x13, 0x17, 0x00010001, 0x00000000
.word 0xFFFF0000, 0xB, 0x3B, 0x16, 0x00010001, 0x00020000
.word 0xFFFF0000, 0x1, 0x14, 0x2B, 0x00020002, 0x00000000
.word 0xFFFF0000, 0x5, 0x15, 0x22, 0x00010001, 0x00000000

Unknown_1_0x802c6ca0: # 0x1b5120
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b5120, 0x1b5288 - 0x1b5120

Unknown_1_0x802c6e08: # 0x1b5288
.word Unknown_1_0x802c6c28, 0x5, 0x5, 0x62, 0x4E, 0x0
.word Unknown_1_0x802c6ca0, 0x3, 0x1, 0x62, 0x4E, 0x1
.word 0x802C6CE8, 0x2, 0x2, 0x62, 0x4E, 0x0
.word 0x802C6D18, 0x3, 0x1, 0x62, 0x4E, 0x1
.word 0x802C6D60, 0x3, 0x1, 0x62, 0x4E, 0x1
.word 0x802C6DA8, 0x4, 0x4, 0x62, 0x4E, 0x0

.incbin "./roms/Wave Race 64 (USA).z64", 0x1b5318, 0x1b5330 - 0x1b5318

SwitchTable_1_0x802c6eb0: # 0x1b5330
.word branch_0x802c65f0, branch_0x802c6618, branch_0x802c6640, branch_0x802c6640
.word branch_0x802c64e0, branch_0x802c6638, branch_0x802c6640, branch_0x802c6640
.word branch_0x802c6640, branch_0x802c6640, branch_0x802c6640, branch_0x802c6600

