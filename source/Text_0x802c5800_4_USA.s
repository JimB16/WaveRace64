

.include "source/constants.s"

.section .textoverlay4, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    lui     $t6, 0x801d
    lw      $t6, -0x1c64($t6)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x1c($sp)
    beqz    $t6, branch_0x802c5830
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x14
    bne     $t7, $at, branch_0x802c5830
    nop
    jal     Function_0x802c58f8
    nop
branch_0x802c5830:
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x7530
    lw      $t8, 0x0($v0)
    lui     $t9, 0x800e
    beqz    $t8, branch_0x802c58b0
    nop
    sw      $zero, 0x0($v0)
    lw      $t9, -0x58b0($t9)
    lui     $t1, 0x800e
    lui     $a1, 0x800e
    sll     $t0, $t9, 2
    addu    $t1, $t1, $t0
    lw      $t1, -0x57a8($t1)
    lui     $a0, 0x801a
    addiu   $a0, $a0, 0x8070
    sll     $t2, $t1, 2
    addu    $a1, $a1, $t2
    jal     0x800696e0
    lw      $a1, -0x57cc($a1)
    lui     $t3, 0x800e
    lw      $t3, -0x58b0($t3)
    lui     $t5, 0x800e
    lui     $a1, 0x802c
    sll     $t4, $t3, 2
    addu    $t5, $t5, $t4
    lw      $t5, -0x57a8($t5)
    lui     $a0, 0x801a
    addiu   $a0, $a0, 0x80b0
    sll     $t6, $t5, 2
    addu    $a1, $a1, $t6
    jal     0x8006971c
    lw      $a1, 0x760c($a1)
branch_0x802c58b0:
    lui     $v0, 0x801d
    lw      $v0, -0x1ca8($v0)
    lui     $t7, 0x801a
    lui     $t8, 0x801a
    addiu   $t8, $t8, 0x80b0
    addiu   $t7, $t7, 0x8070
    lui     $a3, 0x802c
    addiu   $a3, $a3, 0x76ac
    sw      $t7, 0x10($sp)
    sw      $t8, 0x14($sp)
    addiu   $a0, $v0, 0xa80
    addiu   $a1, $v0, 0x1780
    jal     0x80069738
    addiu   $a2, $v0, 0xa40
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x802c58f8
Function_0x802c58f8: # 0x802c58f8
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe368
    lw      $v1, 0x0($a1)
    addiu   $sp, $sp, 0xfff0
    addiu   $at, $zero, 0xb
    sw      $s1, 0xc($sp)
    bne     $v1, $at, branch_0x802c5928
    sw      $s0, 0x8($sp)
    addiu   $v0, $zero, 0x1
    lui     $at, 0x802c
    b       branch_0x802c5934
    sw      $v0, 0x7534($at)
branch_0x802c5928:
    lui     $at, 0x802c
    sw      $zero, 0x7534($at)
    addiu   $v0, $zero, 0x1
branch_0x802c5934:
    lh      $a0, 0x4($a1)
    lui     $t1, 0x801d
    addiu   $t1, $t1, 0xafe8
    bne     $v0, $a0, branch_0x802c59a4
    or      $t0, $zero, $zero
    lui     $a1, 0x801d
    lb      $a1, -0x5020($a1)
    lui     $at, 0x802c
    sw      $zero, 0x76b0($at)
    andi    $t6, $a1, 0x8
    beqz    $t6, branch_0x802c5988
    addiu   $s0, $zero, 0x3
    lui     $at, 0x802c
    sw      $v0, 0x76c8($at)
    lui     $at, 0x802c
    addiu   $t7, $zero, 0x4
    sw      $t7, 0x76d0($at)
    lui     $at, 0x802c
    sw      $v0, 0x76c4($at)
    b       branch_0x802c5a00
    addiu   $s0, $zero, 0x3
branch_0x802c5988:
    lui     $at, 0x802c
    sw      $zero, 0x76c8($at)
    lui     $at, 0x802c
    sw      $s0, 0x76d0($at)
    lui     $at, 0x802c
    b       branch_0x802c5a00
    sw      $zero, 0x76c4($at)
branch_0x802c59a4:
    lui     $a1, 0x801d
    lb      $a1, -0x5020($a1)
    addiu   $a2, $zero, 0x2
    lui     $at, 0x802c
    andi    $t8, $a1, 0x8
    beqz    $t8, branch_0x802c59e4
    sw      $a2, 0x76b0($at)
    addiu   $s0, $zero, 0x3
    lui     $at, 0x802c
    sw      $s0, 0x76c8($at)
    lui     $at, 0x802c
    addiu   $t9, $zero, 0x4
    sw      $t9, 0x76d0($at)
    lui     $at, 0x802c
    b       branch_0x802c5a00
    sw      $v0, 0x76c4($at)
branch_0x802c59e4:
    lui     $at, 0x802c
    sw      $a2, 0x76c8($at)
    addiu   $s0, $zero, 0x3
    lui     $at, 0x802c
    sw      $s0, 0x76d0($at)
    lui     $at, 0x802c
    sw      $zero, 0x76c4($at)
branch_0x802c5a00:
    lui     $s1, 0x802c
    addiu   $s1, $s1, 0x757c
    or      $a2, $zero, $zero
branch_0x802c5a0c:
    lw      $t2, 0x0($t1)
    addiu   $t1, $t1, 0x4
    or      $t3, $zero, $zero
    addiu   $t2, $t2, 0x1
    blez    $t2, branch_0x802c5a64
    sll     $t6, $a2, 4
    lui     $t7, 0x800f
    addiu   $t7, $t7, 0xa974
    addu    $t4, $t6, $t7
    sll     $t5, $t2, 1
branch_0x802c5a34:
    bne     $a2, $s0, branch_0x802c5a44
    addiu   $t3, $t3, 0x2
    b       branch_0x802c5a48
    lh      $a3, -0x10($t4)
branch_0x802c5a44:
    lh      $a3, 0x0($t4)
branch_0x802c5a48:
    sll     $t8, $a3, 4
    addu    $t9, $s1, $t8
    slt     $at, $t3, $t5
    addu    $t6, $t9, $t0
    addiu   $t4, $t4, 0x2
    bnez    $at, branch_0x802c5a34
    sw      $v0, 0x0($t6)
branch_0x802c5a64:
    addiu   $a2, $a2, 0x1
    slti    $at, $a2, 0x4
    bnez    $at, branch_0x802c5a0c
    addiu   $t0, $t0, 0x4
    beqz    $v1, branch_0x802c5a80
    or      $a2, $zero, $zero
    bne     $v0, $v1, branch_0x802c5a9c
branch_0x802c5a80:
    andi    $t7, $a1, 0x1
    bnez    $t7, branch_0x802c5a90
    andi    $t8, $a1, 0x2
    sw      $zero, 0x14($s1)
branch_0x802c5a90:
    bnez    $t8, branch_0x802c5a9c
    nop
    sw      $zero, 0x18($s1)
branch_0x802c5a9c:
    lui     $t0, 0x802c
    lui     $t3, 0x802c
    addiu   $t3, $t3, 0x7558
    addiu   $t0, $t0, 0x757c
    addiu   $t5, $zero, 0x10
    addiu   $t4, $zero, 0x9
branch_0x802c5ab4:
    or      $a1, $zero, $zero
    or      $t1, $zero, $zero
    or      $t2, $t0, $zero
branch_0x802c5ac0:
    lw      $t9, 0x0($t2)
    addiu   $t1, $t1, 0x4
    beqz    $t9, branch_0x802c5ad8
    nop
    b       branch_0x802c5ae0
    or      $a1, $v0, $zero
branch_0x802c5ad8:
    bne     $t1, $t5, branch_0x802c5ac0
    addiu   $t2, $t2, 0x4
branch_0x802c5ae0:
    beqz    $a1, branch_0x802c5af0
    sll     $t6, $a2, 2
    addu    $t7, $t3, $t6
    sw      $v0, 0x0($t7)
branch_0x802c5af0:
    addiu   $a2, $a2, 0x1
    bne     $a2, $t4, branch_0x802c5ab4
    addiu   $t0, $t0, 0x10
    beqzl   $v1, branch_0x802c5b10
    sw      $zero, 0x0($t3)
    bne     $v0, $v1, branch_0x802c5b10
    nop
    sw      $zero, 0x0($t3)
branch_0x802c5b10:
    bne     $v0, $a0, branch_0x802c5b3c
    nop
    bnez    $v1, branch_0x802c5b2c
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x76a4
    b       branch_0x802c5b48
    sw      $v0, 0x0($v1)
branch_0x802c5b2c:
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x76a4
    b       branch_0x802c5b48
    sw      $zero, 0x0($v1)
branch_0x802c5b3c:
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x76a4
    sw      $v0, 0x0($v1)
branch_0x802c5b48:
    lui     $a0, 0x800e
    addiu   $a0, $a0, 0xa750
    lw      $t8, 0x0($a0)
    lw      $v0, 0x0($v1)
    slt     $at, $t8, $v0
    beqzl   $at, branch_0x802c5b6c
    lw      $s0, 0x8($sp)
    sw      $v0, 0x0($a0)
    lw      $s0, 0x8($sp)
branch_0x802c5b6c:
    lw      $s1, 0xc($sp)
    jr      $ra
    addiu   $sp, $sp, 0x10

.globl Function_0x802c5b78
Function_0x802c5b78: # 0x802c5b78
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c5bc4
    sw      $a0, 0x18($sp)
    sw      $zero, 0x0($v0)
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x14
    bne     $t7, $at, branch_0x802c5bc4
    nop
    jal     0x800c6830
    or      $a0, $zero, $zero
    jal     0x800939e4
    lw      $a0, 0x18($sp)
    b       branch_0x802c5cd0
    lw      $ra, 0x14($sp)
branch_0x802c5bc4:
    lui     $t8, 0x800e
    lw      $t8, -0x58b0($t8)
    lui     $at, 0x802c
    lw      $a0, 0x18($sp)
    sw      $t8, 0x76a8($at)
    lui     $at, 0x800e
    jal     0x8008f914
    sw      $zero, -0x5754($at)
    lui     $a1, 0x800d
    lw      $a1, 0x7ef0($a1)
    jal     0x80094758
    or      $a0, $v0, $zero
    jal     0x80090cf8
    or      $a0, $v0, $zero
    jal     Function_0x802c5cdc
    or      $a0, $v0, $zero
    addiu   $t9, $v0, 0x8
    sw      $t9, 0x18($sp)
    lui     $t1, 0x107
    addiu   $t1, $t1, 0xf168
    lui     $t0, 0x600
    sw      $t0, 0x0($v0)
    sw      $t1, 0x4($v0)
    lui     $t2, 0x800e
    lw      $t2, -0x575c($t2)
    addiu   $at, $zero, 0x14
    lui     $t3, 0x8023
    bne     $t2, $at, branch_0x802c5c48
    nop
    jal     Function_0x802c6bac
    nop
    b       branch_0x802c5ccc
    lw      $v0, 0x18($sp)
branch_0x802c5c48:
    lh      $t3, -0x782a($t3)
    addiu   $at, $zero, 0x1
    lui     $v0, 0x801d
    bnel    $t3, $at, branch_0x802c5ccc
    lw      $v0, 0x18($sp)
    lw      $v0, -0x1c70($v0)
    addiu   $at, $zero, 0xa
    beq     $v0, $at, branch_0x802c5cc0
    addiu   $at, $zero, 0x28
    bne     $v0, $at, branch_0x802c5cc8
    lui     $t4, 0x800e
    lw      $t4, -0x58b0($t4)
    lui     $t6, 0x800e
    lui     $v0, 0x800d
    sll     $t5, $t4, 2
    addu    $t6, $t6, $t5
    lw      $t6, -0x57a8($t6)
    addiu   $v0, $v0, 0x7ef0
    lui     $t7, 0x800d
    sw      $t6, 0x0($v0)
    lw      $t7, 0x7fc0($t7)
    lui     $t8, 0x801c
    beqz    $t7, branch_0x802c5cb0
    nop
    lw      $t8, 0x3770($t8)
    sw      $t8, 0x0($v0)
branch_0x802c5cb0:
    jal     0x800931fc
    nop
    b       branch_0x802c5ccc
    lw      $v0, 0x18($sp)
branch_0x802c5cc0:
    jal     0x801ebab8
    nop
branch_0x802c5cc8:
    lw      $v0, 0x18($sp)
branch_0x802c5ccc:
    lw      $ra, 0x14($sp)
branch_0x802c5cd0:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5cdc
Function_0x802c5cdc: # 0x802c5cdc
    addiu   $sp, $sp, 0xff28
    sw      $s2, 0x48($sp)
    sw      $s1, 0x44($sp)
    sw      $ra, 0x54($sp)
    sw      $s4, 0x50($sp)
    sw      $s3, 0x4c($sp)
    sw      $s0, 0x40($sp)
    lui     $s1, 0x80a
    lui     $s2, 0x600
    addiu   $s1, $s1, 0x6db0
    sw      $s1, 0x4($a0)
    sw      $s2, 0x0($a0)
    addiu   $v1, $a0, 0x8
    lui     $t6, 0xf648
    lui     $t7, 0x25
    ori     $t7, $t7, 0x80d4
    ori     $t6, $t6, 0xc278
    sw      $t6, 0x0($v1)
    sw      $t7, 0x4($v1)
    jal     Function_0x802c6778
    addiu   $a0, $v1, 0x8
    lui     $t8, 0x802c
    lw      $t8, 0x7540($t8)
    or      $s0, $v0, $zero
    lui     $a1, 0x802c
    beqz    $t8, branch_0x802c5dd8
    addiu   $a3, $zero, 0x18
    sw      $s2, 0x0($v0)
    sw      $s1, 0x4($v0)
    addiu   $a1, $a1, 0x76b4
    lui     $t6, 0x802c
    lw      $t6, 0x76bc($t6)
    lw      $t9, 0x0($a1)
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x76b8
    addu    $t7, $t9, $t6
    addiu   $t8, $t7, 0x7
    andi    $t9, $t8, 0x3ff
    sll     $t6, $t9, 14
    lui     $t9, 0x802c
    lw      $t9, 0x76c0($t9)
    lw      $t8, 0x0($a2)
    lui     $at, 0xf600
    or      $t7, $t6, $at
    addu    $t6, $t8, $t9
    addiu   $t8, $t6, 0x13
    andi    $t9, $t8, 0x3ff
    addiu   $s0, $v0, 0x8
    sll     $t6, $t9, 2
    or      $t8, $t7, $t6
    or      $a0, $s0, $zero
    sw      $t8, 0x0($a0)
    lw      $t9, 0x0($a1)
    addiu   $s0, $s0, 0x8
    addiu   $t7, $t9, 0x8
    lw      $t9, 0x0($a2)
    andi    $t6, $t7, 0x3ff
    sll     $t8, $t6, 14
    addiu   $t7, $t9, 0x14
    andi    $t6, $t7, 0x3ff
    sll     $t9, $t6, 2
    or      $t7, $t8, $t9
    sw      $t7, 0x4($a0)
branch_0x802c5dd8:
    or      $v0, $s0, $zero
    lui     $t6, 0x107
    addiu   $t6, $t6, 0xf628
    sw      $t6, 0x4($v0)
    sw      $s2, 0x0($v0)
    addiu   $t8, $zero, 0x108
    addiu   $t9, $zero, 0x18
    addiu   $a0, $s0, 0x8
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a1, $zero, $zero
    jal     0x800940d8
    addiu   $a2, $zero, 0x1c
    lui     $t7, 0x801d
    lw      $t7, -0x1c98($t7)
    addiu   $s4, $zero, 0xb
    or      $s0, $v0, $zero
    bne     $s4, $t7, branch_0x802c5e74
    or      $a0, $s0, $zero
    addiu   $t6, $zero, 0x65
    addiu   $t8, $zero, 0xa
    sw      $t8, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xab
    jal     0x800940d8
    addiu   $a3, $zero, 0xb9
    addiu   $t9, $zero, 0x65
    addiu   $t7, $zero, 0x10
    sw      $t7, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xab
    jal     0x800940d8
    addiu   $a3, $zero, 0xc5
    b       branch_0x802c5f04
    or      $s0, $v0, $zero
branch_0x802c5e74:
    addiu   $t6, $zero, 0x65
    addiu   $t8, $zero, 0xc
    sw      $t8, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xab
    jal     0x800940d8
    addiu   $a3, $zero, 0xa1
    addiu   $t9, $zero, 0x65
    addiu   $t7, $zero, 0xc
    sw      $t7, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xab
    jal     0x800940d8
    addiu   $a3, $zero, 0xae
    addiu   $t6, $zero, 0x65
    addiu   $t8, $zero, 0xc
    sw      $t8, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xab
    jal     0x800940d8
    addiu   $a3, $zero, 0xbc
    addiu   $t9, $zero, 0x65
    addiu   $t7, $zero, 0xc
    sw      $t7, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xab
    jal     0x800940d8
    addiu   $a3, $zero, 0xc9
    or      $s0, $v0, $zero
branch_0x802c5f04:
    addiu   $a3, $zero, 0x35
    addiu   $t6, $zero, 0x76
branch_0x802c5f0c:
    addiu   $t8, $zero, 0x10
    sw      $t8, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1c
    jal     0x800940d8
    sw      $a3, 0x58($sp)
    lw      $a3, 0x58($sp)
    or      $s0, $v0, $zero
    addiu   $a3, $a3, 0x12
    slti    $at, $a3, 0xd7
    bnezl   $at, branch_0x802c5f0c
    addiu   $t6, $zero, 0x76
    lui     $t9, 0x802c
    lw      $t9, 0x7548($t9)
    lui     $v0, 0x802c
    beqzl   $t9, branch_0x802c6128
    addiu   $t6, $zero, 0xff
    lw      $v0, 0x76c8($v0)
    addiu   $at, $zero, 0x1
    or      $a0, $s0, $zero
    beqz    $v0, branch_0x802c5f90
    addiu   $a1, $zero, 0xa2
    beq     $v0, $at, branch_0x802c5f90
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c5fa0
    or      $a0, $s0, $zero
    addiu   $at, $zero, 0x3
    beql    $v0, $at, branch_0x802c5fa4
    addiu   $a1, $zero, 0xa2
    b       branch_0x802c6128
    addiu   $t6, $zero, 0xff
branch_0x802c5f90:
    jal     Function_0x802c69c4
    addiu   $a2, $zero, 0x49
    b       branch_0x802c6124
    or      $s0, $v0, $zero
branch_0x802c5fa0:
    addiu   $a1, $zero, 0xa2
branch_0x802c5fa4:
    jal     Function_0x802c69c4
    addiu   $a2, $zero, 0x37
    lui     $s2, 0x708
    lui     $s1, 0x80a
    lui     $ra, 0xfd10
    lui     $t4, 0xf510
    or      $s0, $v0, $zero
    ori     $t4, $t4, 0x3c00
    ori     $ra, $ra, 0x75
    addiu   $s1, $s1, 0x3dd8
    ori     $s2, $s2, 0x200
    or      $t2, $zero, $zero
    or      $t3, $zero, $zero
    addiu   $a3, $zero, 0x7c
    lui     $s3, 0xe600
    addiu   $t5, $zero, 0x8d
branch_0x802c5fe4:
    beq     $a3, $t5, branch_0x802c5ff4
    or      $v0, $s0, $zero
    b       branch_0x802c5ff8
    addiu   $a2, $zero, 0x11
branch_0x802c5ff4:
    addiu   $a2, $zero, 0x10
branch_0x802c5ff8:
    sll     $t7, $t2, 1
    addu    $t6, $s1, $t7
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    sw      $t6, 0x4($v0)
    addiu   $s0, $s0, 0x8
    sw      $ra, 0x0($v0)
    or      $a0, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $s2, 0x4($v1)
    sw      $t4, 0x0($v1)
    addiu   $t0, $a2, 0xffff
    sll     $t9, $t0, 2
    or      $a1, $s0, $zero
    lui     $at, 0x71d
    ori     $at, $at, 0x4000
    andi    $t0, $t9, 0xfff
    sw      $zero, 0x4($a0)
    sw      $s3, 0x0($a0)
    or      $t6, $t0, $at
    addiu   $s0, $s0, 0x8
    lui     $t8, 0xf400
    sw      $t8, 0x0($a1)
    or      $t1, $s0, $zero
    sw      $t6, 0x4($a1)
    addiu   $s0, $s0, 0x8
    lui     $t8, 0xe700
    sw      $t8, 0x0($t1)
    or      $v0, $s0, $zero
    lui     $t9, 0x8
    ori     $t9, $t9, 0x200
    sw      $zero, 0x4($t1)
    lui     $at, 0x1d
    ori     $at, $at, 0x4000
    sw      $t9, 0x4($v0)
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    or      $t6, $t0, $at
    sw      $t4, 0x0($v0)
    lui     $t7, 0xf200
    addu    $t8, $t3, $a2
    sw      $t7, 0x0($v1)
    addiu   $t9, $t8, 0x7c
    sw      $t6, 0x4($v1)
    sll     $t7, $t9, 2
    andi    $t6, $t7, 0xfff
    lui     $at, 0xe446
    addiu   $s0, $s0, 0x8
    or      $t8, $t6, $at
    lui     $at, 0x28
    or      $a0, $s0, $zero
    sll     $t9, $a3, 2
    andi    $t7, $t9, 0xfff
    addiu   $s0, $s0, 0x8
    ori     $at, $at, 0x8000
    or      $t6, $t7, $at
    or      $a1, $s0, $zero
    sw      $t8, 0x0($a0)
    addiu   $s0, $s0, 0x8
    sw      $t6, 0x4($a0)
    or      $v0, $s0, $zero
    lui     $t8, 0xb300
    lui     $t7, 0x400
    addiu   $at, $zero, 0x9e
    addiu   $a3, $a3, 0x11
    ori     $t7, $t7, 0x400
    sw      $t8, 0x0($a1)
    sw      $zero, 0x4($a1)
    lui     $t9, 0xb200
    addiu   $t3, $t3, 0x11
    addiu   $t2, $t2, 0x7d6
    sw      $t9, 0x0($v0)
    sw      $t7, 0x4($v0)
    bne     $a3, $at, branch_0x802c5fe4
    addiu   $s0, $s0, 0x8
branch_0x802c6124:
    addiu   $t6, $zero, 0xff
branch_0x802c6128:
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x1c($sp)
    sw      $t7, 0x2c($sp)
    sw      $t9, 0x18($sp)
    sw      $t9, 0x28($sp)
    sw      $t8, 0x14($sp)
    sw      $t8, 0x24($sp)
    sw      $t8, 0x34($sp)
    sw      $t6, 0x10($sp)
    sw      $t6, 0x20($sp)
    sw      $t6, 0x30($sp)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     0x801e91f4
    addiu   $a3, $zero, 0xff
    addiu   $t9, $zero, 0x1b
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x4
    addiu   $a3, $zero, 0x40
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    lui     $t7, 0x801d
    lw      $t7, -0x1c98($t7)
    or      $s0, $v0, $zero
    or      $a0, $v0, $zero
    bne     $s4, $t7, branch_0x802c6214
    or      $a1, $zero, $zero
    addiu   $t6, $zero, 0xba
    sw      $t6, 0x10($sp)
    addiu   $a2, $zero, 0x1e
    addiu   $a3, $zero, 0xbf
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    lui     $s4, 0x800e
    addiu   $s4, $s4, 0xa750
    lw      $t8, 0x0($s4)
    lui     $t7, 0x800e
    lui     $a2, 0x801c
    sll     $t9, $t8, 2
    addu    $t7, $t7, $t9
    lw      $t7, -0x57a8($t7)
    addiu   $t8, $zero, 0xc8
    sw      $t8, 0x10($sp)
    sll     $t6, $t7, 2
    subu    $t6, $t6, $t7
    sll     $t6, $t6, 4
    addu    $a2, $a2, $t6
    lw      $a2, 0x2448($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     0x80093fa0
    addiu   $a3, $zero, 0xbf
    b       branch_0x802c637c
    or      $s0, $v0, $zero
branch_0x802c6214:
    addiu   $t9, $zero, 0xa3
    sw      $t9, 0x10($sp)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xe
    addiu   $a3, $zero, 0xc3
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $t7, $zero, 0xbe
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xd
    addiu   $a3, $zero, 0xc5
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    lui     $t6, 0x802c
    lw      $t6, 0x754c($t6)
    addiu   $at, $zero, 0x3
    or      $s0, $v0, $zero
    bne     $t6, $at, branch_0x802c62e8
    lui     $t8, 0x802c
    lw      $t8, 0x7548($t8)
    lui     $s4, 0x800e
    addiu   $s4, $s4, 0xa750
    beqz    $t8, branch_0x802c62e8
    or      $a0, $v0, $zero
    lw      $t9, 0x0($s4)
    lui     $t6, 0x800e
    lui     $a2, 0x801c
    sll     $t7, $t9, 2
    addu    $t6, $t6, $t7
    lw      $t6, -0x57a8($t6)
    addiu   $t9, $zero, 0xb0
    sw      $t9, 0x10($sp)
    sll     $t8, $t6, 2
    addu    $t8, $t8, $t6
    sll     $t8, $t8, 2
    addu    $a2, $a2, $t8
    lw      $a2, 0x2110($a2)
    addiu   $a1, $zero, 0x1
    jal     0x801e8884
    addiu   $a3, $zero, 0xc3
    lui     $a2, 0x802c
    addiu   $t7, $zero, 0xcb
    sw      $t7, 0x10($sp)
    addiu   $a2, $a2, 0x7690
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    jal     0x801e95e0
    addiu   $a3, $zero, 0xc3
    b       branch_0x802c637c
    or      $s0, $v0, $zero
branch_0x802c62e8:
    lui     $s4, 0x800e
    addiu   $s4, $s4, 0xa750
    lw      $t6, 0x0($s4)
    lui     $t9, 0x800e
    lui     $a2, 0x801c
    sll     $t8, $t6, 2
    addu    $t9, $t9, $t8
    lw      $t9, -0x57a8($t9)
    addiu   $t6, $zero, 0xb0
    sw      $t6, 0x10($sp)
    sll     $t7, $t9, 4
    subu    $t7, $t7, $t9
    sll     $t7, $t7, 2
    addu    $a2, $a2, $t7
    lw      $a2, 0x1d50($a2)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x1
    jal     0x801e8884
    addiu   $a3, $zero, 0xc3
    lw      $t8, 0x0($s4)
    lui     $t7, 0x800e
    lui     $a2, 0x801c
    sll     $t9, $t8, 2
    addu    $t7, $t7, $t9
    lw      $t7, -0x57a8($t7)
    addiu   $t8, $zero, 0xcb
    sw      $t8, 0x10($sp)
    sll     $t6, $t7, 2
    addu    $t6, $t6, $t7
    sll     $t6, $t6, 2
    addu    $a2, $a2, $t6
    lw      $a2, 0x2020($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    jal     0x801e8884
    addiu   $a3, $zero, 0xc3
    or      $s0, $v0, $zero
branch_0x802c637c:
    lui     $s2, 0x800e
    addiu   $s2, $s2, 0xa858
    or      $s1, $zero, $zero
    addiu   $s3, $zero, 0x38
branch_0x802c638c:
    lw      $t9, 0x0($s4)
    or      $a0, $s0, $zero
    addiu   $a2, $zero, 0x80
    bne     $s1, $t9, branch_0x802c63a8
    addiu   $a3, $zero, 0x80
    b       branch_0x802c63d0
    addiu   $a1, $zero, 0x6
branch_0x802c63a8:
    lw      $t7, 0x0($s2)
    lui     $t8, 0x802c
    addiu   $a1, $zero, 0x7
    sll     $t6, $t7, 2
    addu    $t8, $t8, $t6
    lw      $t8, 0x7558($t8)
    beqz    $t8, branch_0x802c63d0
    nop
    b       branch_0x802c63d0
    or      $a1, $zero, $zero
branch_0x802c63d0:
    addiu   $t9, $zero, 0x80
    sw      $t9, 0x10($sp)
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x1c($sp)
    sw      $t8, 0x2c($sp)
    sw      $t6, 0x18($sp)
    sw      $t6, 0x28($sp)
    sw      $t9, 0x20($sp)
    sw      $t9, 0x30($sp)
    sw      $t7, 0x14($sp)
    sw      $t7, 0x24($sp)
    jal     0x801e91f4
    sw      $t7, 0x34($sp)
    lw      $v1, 0x0($s2)
    lui     $a3, 0x802c
    lui     $a2, 0x800e
    sll     $t6, $v1, 2
    addu    $a3, $a3, $t6
    lw      $a3, 0x7660($a3)
    addu    $a2, $a2, $t6
    lw      $a2, -0x5870($a2)
    or      $v1, $t6, $zero
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    sw      $s3, 0x10($sp)
    sw      $zero, 0x14($sp)
    jal     0x801e3c40
    addiu   $a3, $a3, 0x30
    addiu   $s1, $s1, 0x1
    slti    $at, $s1, 0x9
    addiu   $s2, $s2, 0x4
    addiu   $s3, $s3, 0x12
    bnez    $at, branch_0x802c638c
    or      $s0, $v0, $zero
    lui     $t8, 0x802c
    lw      $t8, 0x7548($t8)
    lui     $t9, 0x801d
    beqzl   $t8, branch_0x802c6758
    lw      $ra, 0x54($sp)
    lh      $t9, -0x1c94($t9)
    addiu   $at, $zero, 0x1
    or      $v0, $zero, $zero
    bne     $t9, $at, branch_0x802c64ac
    lui     $t8, 0x802c
    lui     $t7, 0x802c
    lw      $t7, 0x76c4($t7)
    addiu   $t6, $zero, 0x41
    beqz    $t7, branch_0x802c64a4
    nop
    addiu   $v0, $zero, 0xfffa
branch_0x802c64a4:
    b       branch_0x802c65fc
    sw      $t6, 0xc8($sp)
branch_0x802c64ac:
    lw      $t8, 0x76c4($t8)
    addiu   $t9, $zero, 0x2f
    or      $a0, $s0, $zero
    beqz    $t8, branch_0x802c64c4
    or      $a1, $zero, $zero
    addiu   $v0, $zero, 0xfff8
branch_0x802c64c4:
    sw      $t9, 0xc8($sp)
    addiu   $t7, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x18($sp)
    sw      $t8, 0x28($sp)
    sw      $t9, 0x1c($sp)
    sw      $t9, 0x2c($sp)
    sw      $t6, 0x14($sp)
    sw      $t6, 0x24($sp)
    sw      $t6, 0x34($sp)
    sw      $t7, 0x10($sp)
    sw      $t7, 0x20($sp)
    sw      $t7, 0x30($sp)
    addiu   $a2, $zero, 0xff
    addiu   $a3, $zero, 0xff
    jal     0x801e91f4
    sw      $v0, 0xcc($sp)
    addiu   $t8, $zero, 0x80
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x20
    addiu   $a3, $zero, 0xc3
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    lui     $s2, 0x802c
    lui     $s3, 0x802c
    or      $s0, $v0, $zero
    addiu   $s3, $s3, 0x7554
    addiu   $s2, $s2, 0x7650
    or      $s1, $zero, $zero
branch_0x802c6548:
    lw      $t9, 0x0($s3)
    or      $a0, $s0, $zero
    addiu   $a2, $zero, 0xff
    beqz    $t9, branch_0x802c657c
    addiu   $a3, $zero, 0xff
    lui     $t7, 0x800e
    lw      $t7, -0x587c($t7)
    bne     $s1, $t7, branch_0x802c6574
    nop
    b       branch_0x802c6580
    addiu   $a1, $zero, 0x6
branch_0x802c6574:
    b       branch_0x802c6580
    or      $a1, $zero, $zero
branch_0x802c657c:
    or      $a1, $zero, $zero
branch_0x802c6580:
    addiu   $t6, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x1c($sp)
    sw      $t7, 0x2c($sp)
    sw      $t9, 0x18($sp)
    sw      $t9, 0x28($sp)
    sw      $t8, 0x14($sp)
    sw      $t8, 0x24($sp)
    sw      $t8, 0x34($sp)
    sw      $t6, 0x10($sp)
    sw      $t6, 0x20($sp)
    jal     0x801e91f4
    sw      $t6, 0x30($sp)
    lh      $a3, 0x0($s2)
    addiu   $t9, $zero, 0x8f
    subu    $t7, $t9, $s1
    lw      $a2, 0x4($s2)
    sw      $zero, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    jal     0x801e3c40
    addiu   $a3, $a3, 0xc1
    addiu   $s1, $s1, 0x1
    addiu   $at, $zero, 0x2
    addiu   $s2, $s2, 0x8
    bne     $s1, $at, branch_0x802c6548
    or      $s0, $v0, $zero
    lw      $v0, 0xcc($sp)
branch_0x802c65fc:
    lui     $t6, 0x802c
    lw      $t6, 0x76d0($t6)
    lui     $s2, 0x802c
    addiu   $s2, $s2, 0x7630
    blez    $t6, branch_0x802c6754
    or      $s1, $zero, $zero
    lw      $t8, 0xc8($sp)
    addu    $s3, $t8, $v0
    addiu   $s3, $s3, 0x14
branch_0x802c6620:
    lui     $t9, 0x802c
    lw      $t9, 0x7550($t9)
    or      $a0, $s0, $zero
    addiu   $a2, $zero, 0x80
    beqz    $t9, branch_0x802c6694
    addiu   $a3, $zero, 0x80
    lui     $t7, 0x802c
    lw      $t7, 0x754c($t7)
    bnel    $s1, $t7, branch_0x802c6654
    lw      $t6, 0x0($s4)
    b       branch_0x802c66d4
    addiu   $a1, $zero, 0x6

.globl Function_0x802c6650
Function_0x802c6650: # 0x802c6650
    lw      $t6, 0x0($s4)
branch_0x802c6654:
    lui     $t9, 0x800e
    sll     $t8, $t6, 2
    addu    $t9, $t9, $t8
    lw      $t9, -0x57a8($t9)
    sll     $t6, $s1, 2
    sll     $t7, $t9, 4
    addu    $t8, $t7, $t6
    lui     $t9, 0x802c
    addu    $t9, $t9, $t8
    lw      $t9, 0x757c($t9)
    bnez    $t9, branch_0x802c668c
    nop
    b       branch_0x802c66d4
    addiu   $a1, $zero, 0x7
branch_0x802c668c:
    b       branch_0x802c66d4
    or      $a1, $zero, $zero
branch_0x802c6694:
    lw      $t7, 0x0($s4)
    lui     $t8, 0x800e
    or      $a1, $zero, $zero
    sll     $t6, $t7, 2
    addu    $t8, $t8, $t6
    lw      $t8, -0x57a8($t8)
    sll     $t7, $s1, 2
    sll     $t9, $t8, 4
    addu    $t6, $t9, $t7
    lui     $t8, 0x802c
    addu    $t8, $t8, $t6
    lw      $t8, 0x757c($t8)
    bnez    $t8, branch_0x802c66d4
    nop
    b       branch_0x802c66d4
    addiu   $a1, $zero, 0x7
branch_0x802c66d4:
    addiu   $t9, $zero, 0x80
    sw      $t9, 0x10($sp)
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x1c($sp)
    sw      $t8, 0x2c($sp)
    sw      $t6, 0x18($sp)
    sw      $t6, 0x28($sp)
    sw      $t9, 0x20($sp)
    sw      $t9, 0x30($sp)
    sw      $t7, 0x14($sp)
    sw      $t7, 0x24($sp)
    jal     0x801e91f4
    sw      $t7, 0x34($sp)
    lh      $a3, 0x0($s2)
    lw      $a2, 0x4($s2)
    sw      $zero, 0x14($sp)
    sw      $s3, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    jal     0x801e3c40
    addiu   $a3, $a3, 0xc2
    lui     $t6, 0x802c
    lw      $t6, 0x76d0($t6)
    addiu   $s1, $s1, 0x1
    addiu   $s3, $s3, 0xf
    slt     $at, $s1, $t6
    addiu   $s2, $s2, 0x8
    bnez    $at, branch_0x802c6620
    or      $s0, $v0, $zero
branch_0x802c6754:
    lw      $ra, 0x54($sp)
branch_0x802c6758:
    or      $v0, $s0, $zero
    lw      $s0, 0x40($sp)
    lw      $s1, 0x44($sp)
    lw      $s2, 0x48($sp)
    lw      $s3, 0x4c($sp)
    lw      $s4, 0x50($sp)
    jr      $ra
    addiu   $sp, $sp, 0xd8

.globl Function_0x802c6778
Function_0x802c6778: # 0x802c6778
    lui     $t6, 0x800e
    lw      $t6, -0x58b0($t6)
    lui     $t8, 0x802c
    lw      $t8, 0x7534($t8)
    lui     $a2, 0x800e
    sll     $t7, $t6, 2
    addu    $a2, $a2, $t7
    bnez    $t8, branch_0x802c67b0
    lw      $a2, -0x57a8($a2)
    lui     $t9, 0x800e
    addiu   $t9, $t9, 0xb378
    sll     $v0, $a2, 3
    b       branch_0x802c67c0
    addu    $a3, $v0, $t9
branch_0x802c67b0:
    lui     $t5, 0x800e
    addiu   $t5, $t5, 0xb450
    sll     $v0, $a2, 3
    addu    $a3, $v0, $t5
branch_0x802c67c0:
    or      $v1, $a0, $zero
    lui     $t6, 0x80a
    lui     $a1, 0x600
    addiu   $t6, $t6, 0x6e00
    sw      $t6, 0x4($v1)
    sw      $a1, 0x0($v1)
    lui     $t0, 0xe700
    addiu   $a0, $a0, 0x8
    lui     $t7, 0xff10
    addiu   $t2, $a0, 0x8
    sw      $t0, 0x0($a0)
    sw      $zero, 0x4($a0)
    ori     $t7, $t7, 0x13f
    sw      $t7, 0x0($t2)
    lui     $t8, 0x8015
    lw      $t8, 0x16a8($t8)
    lui     $t5, 0x8015
    lui     $at, 0x8000
    sll     $t9, $t8, 2
    addu    $t5, $t5, $t9
    lw      $t5, 0x4020($t5)
    addiu   $t3, $t2, 0x8
    lui     $t7, 0xb400
    addu    $t6, $t5, $at
    sw      $t6, 0x4($t2)
    sw      $t7, 0x0($t3)
    lui     $t8, 0x802c
    lhu     $t8, 0x76ac($t8)
    addiu   $t4, $t3, 0x8
    lui     $t5, 0x700
    lui     $t9, 0x103
    sw      $t8, 0x4($t3)
    ori     $t9, $t9, 0x40
    addiu   $t5, $t5, 0xa40
    lui     $t6, 0x102
    sw      $t5, 0x4($t4)
    sw      $t9, 0x0($t4)
    addiu   $v1, $t4, 0x8
    ori     $t6, $t6, 0x40
    sw      $t6, 0x0($v1)
    lui     $t7, 0x801d
    lw      $t7, -0x1ca8($t7)
    addiu   $t1, $v1, 0x8
    lui     $t9, 0x380
    addiu   $t8, $t7, 0xa80
    sw      $t8, 0x4($v1)
    lui     $t5, 0x107
    addiu   $t5, $t5, 0xf738
    ori     $t9, $t9, 0x10
    sw      $t9, 0x0($t1)
    sw      $t5, 0x4($t1)
    addiu   $a0, $t1, 0x8
    lui     $t6, 0x107
    addiu   $t6, $t6, 0xf748
    sw      $t6, 0x4($a0)
    addiu   $t3, $a0, 0x8
    sw      $a1, 0x0($a0)
    addiu   $t4, $t3, 0x8
    addiu   $t8, $zero, 0xffff
    lui     $t7, 0xfb00
    sw      $t7, 0x0($t3)
    sw      $t8, 0x4($t3)
    lui     $t5, 0x49
    lui     $t9, 0xed25
    ori     $t9, $t9, 0x80d4
    ori     $t5, $t5, 0x27c
    lui     $t6, 0x800e
    sw      $t5, 0x4($t4)
    sw      $t9, 0x0($t4)
    addiu   $t2, $t4, 0x8
    addiu   $t6, $t6, 0xb330
    addu    $t1, $v0, $t6
    sw      $a1, 0x0($t2)
    lw      $t7, 0x0($t1)
    sll     $v1, $a2, 15
    lui     $at, 0x1
    addu    $v1, $v1, $at
    addiu   $a0, $t2, 0x8
    addu    $t8, $t7, $v1
    sw      $t8, 0x4($t2)
    or      $v0, $a0, $zero
    lui     $t4, 0x2
    lui     $t9, 0xb600
    sw      $t9, 0x0($v0)
    sw      $t4, 0x4($v0)
    addiu   $a2, $a0, 0x8
    sw      $a1, 0x0($a2)
    lw      $t5, 0x0($a3)
    addiu   $v0, $a2, 0x8
    addiu   $a0, $v0, 0x8
    addu    $t6, $t5, $v1
    sw      $t6, 0x4($a2)
    lui     $t7, 0xb700
    sw      $t7, 0x0($v0)
    sw      $t4, 0x4($v0)
    addiu   $t2, $a0, 0x8
    sw      $zero, 0x4($a0)
    sw      $t0, 0x0($a0)
    lui     $t9, 0x50
    lui     $t8, 0xb900
    ori     $t8, $t8, 0x31d
    ori     $t9, $t9, 0x49d8
    sw      $t9, 0x4($t2)
    sw      $t8, 0x0($t2)
    addiu   $t3, $t2, 0x8
    sw      $a1, 0x0($t3)
    lw      $t5, 0x4($t1)
    addiu   $v0, $t3, 0x8
    lui     $t7, 0xb600
    addu    $t6, $t5, $v1
    sw      $t6, 0x4($t3)
    sw      $t4, 0x4($v0)
    sw      $t7, 0x0($v0)
    addiu   $a2, $v0, 0x8
    sw      $a1, 0x0($a2)
    lw      $t8, 0x4($a3)
    addiu   $a0, $a2, 0x8
    addiu   $a1, $a0, 0x8
    addu    $t9, $t8, $v1
    sw      $t9, 0x4($a2)
    lui     $t6, 0x4f
    sw      $zero, 0x4($a0)
    sw      $t0, 0x0($a0)
    ori     $t6, $t6, 0xc3bc
    lui     $t5, 0xed00
    sw      $t5, 0x0($a1)
    sw      $t6, 0x4($a1)
    jr      $ra
    addiu   $v0, $a1, 0x8

.globl Function_0x802c69c4
Function_0x802c69c4: # 0x802c69c4
    addiu   $sp, $sp, 0xffd0
    sw      $s0, 0x8($sp)
    addiu   $s0, $a1, 0x76
    sll     $t6, $s0, 2
    sw      $s1, 0xc($sp)
    andi    $t7, $t6, 0xfff
    sw      $fp, 0x28($sp)
    sw      $s5, 0x1c($sp)
    sw      $s4, 0x18($sp)
    sw      $s3, 0x14($sp)
    sll     $s1, $a1, 2
    sw      $ra, 0x2c($sp)
    sw      $s7, 0x24($sp)
    sw      $s6, 0x20($sp)
    sw      $s2, 0x10($sp)
    andi    $t6, $s1, 0xfff
    lui     $s3, 0xfd10
    lui     $s4, 0x80a
    lui     $s5, 0x708
    lui     $fp, 0x71d
    sll     $t8, $t7, 12
    lui     $at, 0xe400
    lui     $t5, 0xf510
    ori     $t5, $t5, 0x3c00
    or      $s0, $t8, $at
    ori     $fp, $fp, 0x4000
    ori     $s5, $s5, 0x200
    addiu   $s4, $s4, 0x8
    ori     $s3, $s3, 0x75
    sll     $s1, $t6, 12
    addiu   $s2, $zero, 0x40
    lui     $s6, 0xe600
    lui     $s7, 0xf400
    lui     $ra, 0xe700
    or      $t4, $zero, $zero
    or      $t2, $zero, $zero
    or      $t3, $a2, $zero
branch_0x802c6a58:
    beq     $t2, $s2, branch_0x802c6a68
    or      $v0, $a0, $zero
    b       branch_0x802c6a6c
    addiu   $a3, $zero, 0x10
branch_0x802c6a68:
    addiu   $a3, $zero, 0x3
branch_0x802c6a6c:
    sll     $t8, $t4, 1
    addu    $t9, $s4, $t8
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $t9, 0x4($v0)
    sw      $s3, 0x0($v0)
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    sw      $s5, 0x4($v1)
    sw      $t5, 0x0($v1)
    addiu   $t0, $a3, 0xffff
    sll     $t6, $t0, 2
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    andi    $t7, $t6, 0xfff
    or      $t8, $t7, $fp
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($a1)
    sw      $s6, 0x0($a1)
    sw      $t8, 0x4($a2)
    or      $t1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $s7, 0x0($a2)
    or      $v0, $a0, $zero
    lui     $t9, 0x8
    ori     $t9, $t9, 0x200
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($t1)
    sw      $ra, 0x0($t1)
    sw      $t9, 0x4($v0)
    or      $v1, $a0, $zero
    lui     $at, 0x1d
    ori     $at, $at, 0x4000
    sw      $t5, 0x0($v0)
    lui     $t6, 0xf200
    addu    $t8, $t3, $a3
    sw      $t6, 0x0($v1)
    or      $t7, $t7, $at
    sll     $t9, $t8, 2
    sw      $t7, 0x4($v1)
    addiu   $a0, $a0, 0x8
    andi    $t6, $t9, 0xfff
    or      $t7, $s0, $t6
    or      $a1, $a0, $zero
    sll     $t8, $t3, 2
    andi    $t9, $t8, 0xfff
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    or      $t6, $s1, $t9
    sw      $t7, 0x0($a1)
    sw      $t6, 0x4($a1)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    lui     $t7, 0xb300
    lui     $t9, 0x400
    addiu   $at, $zero, 0x50
    addiu   $t2, $t2, 0x10
    ori     $t9, $t9, 0x400
    sw      $t7, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t8, 0xb200
    addiu   $t3, $t3, 0x10
    addiu   $t4, $t4, 0x760
    sw      $t8, 0x0($v1)
    sw      $t9, 0x4($v1)
    bne     $t2, $at, branch_0x802c6a58
    addiu   $a0, $a0, 0x8
    lw      $ra, 0x2c($sp)
    lw      $s0, 0x8($sp)
    lw      $s1, 0xc($sp)
    lw      $s2, 0x10($sp)
    lw      $s3, 0x14($sp)
    lw      $s4, 0x18($sp)
    lw      $s5, 0x1c($sp)
    lw      $s6, 0x20($sp)
    lw      $s7, 0x24($sp)
    lw      $fp, 0x28($sp)
    addiu   $sp, $sp, 0x30
    jr      $ra
    or      $v0, $a0, $zero

.globl Function_0x802c6bac
Function_0x802c6bac: # 0x802c6bac
    lui     $v0, 0x802c
    lw      $v0, 0x7538($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $v0, branch_0x802c6be4
    addiu   $at, $zero, 0x1
    beq     $v0, $at, branch_0x802c6bf4
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c6c04
    addiu   $at, $zero, 0x3
    beq     $v0, $at, branch_0x802c6c14
    nop
    b       branch_0x802c6c20
    lw      $ra, 0x14($sp)
branch_0x802c6be4:
    jal     Function_0x802c6c2c
    nop
    b       branch_0x802c6c20
    lw      $ra, 0x14($sp)
branch_0x802c6bf4:
    jal     Function_0x802c6ed0
    nop
    b       branch_0x802c6c20
    lw      $ra, 0x14($sp)
branch_0x802c6c04:
    jal     Function_0x802c70c0
    nop
    b       branch_0x802c6c20
    lw      $ra, 0x14($sp)
branch_0x802c6c14:
    jal     Function_0x802c7344
    nop
    lw      $ra, 0x14($sp)
branch_0x802c6c20:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c6c2c
Function_0x802c6c2c: # 0x802c6c2c
    lui     $t6, 0x802c
    lw      $t6, 0x76b0($t6)
    lui     $v0, 0x801d
    addiu   $sp, $sp, 0xffe8
    sll     $t7, $t6, 3
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 2
    addu    $v0, $v0, $t7
    lhu     $v0, -0x1c46($v0)
    sw      $ra, 0x14($sp)
    lui     $at, 0x800d
    andi    $t8, $v0, 0xb000
    beqz    $t8, branch_0x802c6d30
    andi    $t7, $v0, 0x4000
    lui     $t9, 0x801d
    lw      $t9, -0x1c98($t9)
    sw      $zero, 0x7fc0($at)
    addiu   $at, $zero, 0xb
    bne     $t9, $at, branch_0x802c6c98
    addiu   $a2, $zero, 0x1
    jal     Function_0x802c7474
    addiu   $a0, $zero, 0x28
    addiu   $a0, $zero, 0x37
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6eb8
    nop
branch_0x802c6c98:
    lui     $t0, 0x800e
    lw      $t0, -0x58b0($t0)
    lui     $at, 0x802c
    sw      $a2, 0x7538($at)
    lui     $at, 0x802c
    sw      $zero, 0x753c($at)
    lui     $t2, 0x800e
    sll     $t1, $t0, 2
    lui     $at, 0x802c
    addu    $t2, $t2, $t1
    lw      $t2, -0x57a8($t2)
    sw      $zero, 0x7540($at)
    lui     $at, 0x802c
    sw      $a2, 0x7544($at)
    lui     $t4, 0x802c
    lui     $at, 0x802c
    addiu   $t4, $t4, 0x757c
    sll     $t3, $t2, 4
    sw      $a2, 0x7550($at)
    addu    $v0, $t3, $t4
    or      $v1, $zero, $zero
    addiu   $a0, $zero, 0x4
branch_0x802c6cf0:
    lw      $t5, 0x0($v0)
    bnez    $t5, branch_0x802c6d08
    nop
    addiu   $v1, $v1, 0x1
    bne     $v1, $a0, branch_0x802c6cf0
    addiu   $v0, $v0, 0x4
branch_0x802c6d08:
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x754c
    sw      $v1, 0x0($v0)
    lui     $at, 0x802c
    sw      $v1, 0x76cc($at)
    addiu   $a0, $zero, 0x11
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6eb8
    nop
branch_0x802c6d30:
    beqz    $t7, branch_0x802c6d54
    andi    $t8, $v0, 0x800
    jal     Function_0x802c7474
    addiu   $a0, $zero, 0xa
    addiu   $a0, $zero, 0x16
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6eb8
    nop
branch_0x802c6d54:
    beqz    $t8, branch_0x802c6e0c
    andi    $t9, $v0, 0x400
    lui     $v1, 0x800e
    addiu   $v1, $v1, 0xa750
    lui     $a3, 0x802c
    lw      $t9, 0x0($v1)
    addiu   $a3, $a3, 0x76a4
    lw      $a2, 0x0($a3)
    addiu   $v0, $t9, 0xffff
    sw      $v0, 0x0($v1)
    slt     $at, $v0, $a2
    beqz    $at, branch_0x802c6d90
    addiu   $a3, $zero, 0x8
    addiu   $v0, $zero, 0x8
    sw      $v0, 0x0($v1)
branch_0x802c6d90:
    lui     $a1, 0x800e
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7558
    addiu   $a1, $a1, 0xa858
branch_0x802c6da0:
    sll     $t1, $v0, 2
    addu    $t2, $a1, $t1
    lw      $t3, 0x0($t2)
    addiu   $t7, $v0, 0xffff
    slt     $at, $t7, $a2
    sll     $t4, $t3, 2
    addu    $t5, $a0, $t4
    lw      $t6, 0x0($t5)
    bnez    $t6, branch_0x802c6de0
    nop
    sw      $t7, 0x0($v1)
    beqz    $at, branch_0x802c6da0
    or      $v0, $t7, $zero
    sw      $a3, 0x0($v1)
    b       branch_0x802c6da0
    or      $v0, $a3, $zero
branch_0x802c6de0:
    lui     $t8, 0x802c
    lw      $t8, 0x76a8($t8)
    addiu   $a2, $zero, 0x1
    lui     $at, 0x802c
    beq     $t8, $v0, branch_0x802c6eb8
    addiu   $a0, $zero, 0x10
    sw      $a2, 0x7530($at)
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6eb8
    nop
branch_0x802c6e0c:
    beqz    $t9, branch_0x802c6eb8
    lui     $v1, 0x800e
    addiu   $v1, $v1, 0xa750
    lw      $t0, 0x0($v1)
    lui     $a1, 0x800e
    addiu   $a1, $a1, 0xa858
    addiu   $v0, $t0, 0x1
    slti    $at, $v0, 0x9
    bnez    $at, branch_0x802c6e44
    sw      $v0, 0x0($v1)
    lui     $a3, 0x802c
    addiu   $a3, $a3, 0x76a4
    lw      $v0, 0x0($a3)
    sw      $v0, 0x0($v1)
branch_0x802c6e44:
    lui     $a3, 0x802c
    lui     $a0, 0x802c
    addiu   $a3, $a3, 0x76a4
    addiu   $a0, $a0, 0x7558
branch_0x802c6e54:
    sll     $t3, $v0, 2
    addu    $t4, $a1, $t3
    lw      $t5, 0x0($t4)
    addiu   $t9, $v0, 0x1
    slti    $at, $t9, 0x9
    sll     $t6, $t5, 2
    addu    $t7, $a0, $t6
    lw      $t8, 0x0($t7)
    bnez    $t8, branch_0x802c6e94
    nop
    sw      $t9, 0x0($v1)
    bnez    $at, branch_0x802c6e54
    or      $v0, $t9, $zero
    lw      $v0, 0x0($a3)
    b       branch_0x802c6e54
    sw      $v0, 0x0($v1)
branch_0x802c6e94:
    lui     $t1, 0x802c
    lw      $t1, 0x76a8($t1)
    addiu   $a2, $zero, 0x1
    lui     $at, 0x802c
    beq     $t1, $v0, branch_0x802c6eb8
    addiu   $a0, $zero, 0x10
    sw      $a2, 0x7530($at)
    jal     0x800c3594
    or      $a1, $zero, $zero
branch_0x802c6eb8:
    jal     0x80047df0
    nop
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

Function_0x802c6ed0: # 0x802c6ed0
    lui     $v0, 0x802c
    lw      $v0, 0x7544($v0)
    addiu   $v1, $zero, 0x1
    lui     $a0, 0x802c
    beq     $v0, $v1, branch_0x802c6efc
    addiu   $a0, $a0, 0x753c
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c6fe4
    lui     $a0, 0x802c
    jr      $ra
    nop
branch_0x802c6efc:
    lui     $at, 0x40a0
    mtc1    $at, $t4
    lui     $at, 0x802c
    sw      $v1, 0x7540($at)
    lw      $v0, 0x0($a0)
    addiu   $t6, $zero, 0x5
    lui     $at, 0x428e
    subu    $t7, $t6, $v0
    mtc1    $t7, $a0
    mtc1    $at, $s0
    mtc1    $v0, $t0
    cvt.s.w $f6, $f4
    lui     $at, 0x802c
    addiu   $t8, $v0, 0x1
    cvt.s.w $f10, $f8
    div.s   $f0, $f6, $f12
    div.s   $f2, $f10, $f12
    mul.s   $f18, $f16, $f0
    trunc.w.s   $f4, $f18
    mfc1    $t9, $a0
    nop
    addiu   $t0, $t9, 0x8e
    sw      $t0, 0x76b4($at)
    lui     $at, 0x4254
    mtc1    $at, $a2
    lui     $at, 0x802c
    addiu   $t0, $zero, 0x2
    mul.s   $f8, $f6, $f0
    trunc.w.s   $f10, $f8
    mfc1    $t2, $t2
    nop
    addiu   $t3, $t2, 0x21
    sw      $t3, 0x76b8($at)
    lui     $at, 0x430e
    mtc1    $at, $s0
    lui     $at, 0x802c
    mul.s   $f18, $f16, $f2
    trunc.w.s   $f4, $f18
    mfc1    $t5, $a0
    nop
    sw      $t5, 0x76bc($at)
    lui     $at, 0x42d4
    mtc1    $at, $a2
    lui     $at, 0x802c
    mul.s   $f8, $f6, $f2
    trunc.w.s   $f10, $f8
    mfc1    $t7, $t2
    nop
    sw      $t7, 0x76c0($at)
    slti    $at, $t8, 0x6
    bnez    $at, branch_0x802c70b8
    sw      $t8, 0x0($a0)
    lui     $at, 0x802c
    sw      $t0, 0x7538($at)
    sw      $zero, 0x0($a0)
    lui     $at, 0x802c
    jr      $ra
    sw      $v1, 0x7548($at)
branch_0x802c6fe4:
    addiu   $a0, $a0, 0x753c
    lw      $v0, 0x0($a0)
    lui     $at, 0x40a0
    mtc1    $at, $t4
    mtc1    $v0, $a0
    lui     $at, 0x428e
    mtc1    $at, $t0
    cvt.s.w $f6, $f4
    addiu   $t1, $zero, 0x5
    subu    $t2, $t1, $v0
    mtc1    $t2, $s0
    lui     $at, 0x802c
    addiu   $t3, $v0, 0x1
    div.s   $f2, $f6, $f12
    cvt.s.w $f18, $f16
    div.s   $f0, $f18, $f12
    mul.s   $f10, $f8, $f2
    trunc.w.s   $f16, $f10
    mfc1    $t4, $s0
    nop
    addiu   $t5, $t4, 0x8e
    sw      $t5, 0x76b4($at)
    lui     $at, 0x4254
    mtc1    $at, $s2
    lui     $at, 0x802c
    mul.s   $f4, $f18, $f2
    trunc.w.s   $f6, $f4
    mfc1    $t7, $a2
    nop
    addiu   $t8, $t7, 0x21
    sw      $t8, 0x76b8($at)
    lui     $at, 0x430e
    mtc1    $at, $t0
    lui     $at, 0x802c
    mul.s   $f10, $f8, $f0
    trunc.w.s   $f16, $f10
    mfc1    $t0, $s0
    nop
    sw      $t0, 0x76bc($at)
    lui     $at, 0x42d4
    mtc1    $at, $s2
    lui     $at, 0x802c
    mul.s   $f4, $f18, $f0
    trunc.w.s   $f6, $f4
    mfc1    $t2, $a2
    nop
    sw      $t2, 0x76c0($at)
    slti    $at, $t3, 0x6
    bnez    $at, branch_0x802c70b8
    sw      $t3, 0x0($a0)
    lui     $at, 0x802c
    sw      $zero, 0x7538($at)
    sw      $zero, 0x0($a0)
branch_0x802c70b8:
    jr      $ra
    nop

.globl Function_0x802c70c0
Function_0x802c70c0: # 0x802c70c0
    lui     $t6, 0x802c
    lw      $t6, 0x76b0($t6)
    lui     $v0, 0x801d
    addiu   $sp, $sp, 0xffe8
    sll     $t7, $t6, 3
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 2
    addu    $v0, $v0, $t7
    lhu     $v0, -0x1c46($v0)
    sw      $ra, 0x14($sp)
    lui     $v1, 0x802c
    andi    $t8, $v0, 0xb000
    beqz    $t8, branch_0x802c718c
    andi    $t1, $v0, 0x4000
    addiu   $v1, $v1, 0x754c
    lw      $v0, 0x0($v1)
    addiu   $a2, $zero, 0x3
    lui     $at, 0x801d
    bne     $a2, $v0, branch_0x802c712c
    lui     $t0, 0x801d
    addiu   $t9, $zero, 0x2
    lui     $at, 0x801d
    sw      $t9, -0x4f68($at)
    addiu   $v0, $zero, 0x1
    lui     $at, 0x800e
    b       branch_0x802c713c
    sh      $v0, -0x5718($at)
branch_0x802c712c:
    sw      $v0, -0x4f68($at)
    lui     $at, 0x800e
    sh      $zero, -0x5718($at)
    addiu   $v0, $zero, 0x1
branch_0x802c713c:
    lh      $t0, -0x1c94($t0)
    lui     $at, 0x802c
    addiu   $a0, $zero, 0x11
    bne     $v0, $t0, branch_0x802c716c
    or      $a1, $zero, $zero
    jal     Function_0x802c7474
    addiu   $a0, $zero, 0x28
    addiu   $a0, $zero, 0x37
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c7338
    lw      $ra, 0x14($sp)
branch_0x802c716c:
    sw      $v0, 0x7554($at)
    lui     $at, 0x802c
    sw      $a2, 0x7538($at)
    lui     $at, 0x802c
    jal     0x800c3594
    sw      $zero, 0x753c($at)
    b       branch_0x802c7338
    lw      $ra, 0x14($sp)
branch_0x802c718c:
    beqz    $t1, branch_0x802c71d0
    andi    $t3, $v0, 0x800
    addiu   $v0, $zero, 0x1
    lui     $at, 0x802c
    sw      $v0, 0x7538($at)
    lui     $at, 0x802c
    sw      $zero, 0x753c($at)
    lui     $at, 0x802c
    addiu   $t2, $zero, 0x2
    sw      $t2, 0x7544($at)
    lui     $at, 0x802c
    sw      $zero, 0x7548($at)
    addiu   $a0, $zero, 0x16
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c7338
    lw      $ra, 0x14($sp)
branch_0x802c71d0:
    beqz    $t3, branch_0x802c728c
    andi    $t9, $v0, 0x400
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x754c
    lui     $a2, 0x802c
    lw      $t4, 0x0($v1)
    addiu   $a2, $a2, 0x76cc
    lw      $a1, 0x0($a2)
    addiu   $v0, $t4, 0xffff
    sw      $v0, 0x0($v1)
    slt     $at, $v0, $a1
    beqz    $at, branch_0x802c7218
    lui     $t8, 0x800e
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x76d0
    lw      $t6, 0x0($a2)
    addiu   $v0, $t6, 0xffff
    sw      $v0, 0x0($v1)
branch_0x802c7218:
    lw      $t8, -0x58b0($t8)
    lui     $t0, 0x800e
    lui     $t2, 0x802c
    sll     $t9, $t8, 2
    addu    $t0, $t0, $t9
    lw      $t0, -0x57a8($t0)
    lui     $a2, 0x802c
    addiu   $t2, $t2, 0x757c
    sll     $t1, $t0, 4
    addiu   $a2, $a2, 0x76d0
    addu    $a0, $t1, $t2
branch_0x802c7244:
    sll     $t3, $v0, 2
    addu    $t4, $a0, $t3
    lw      $t5, 0x0($t4)
    addiu   $t6, $v0, 0xffff
    or      $v0, $t6, $zero
    bnez    $t5, branch_0x802c7278
    slt     $at, $t6, $a1
    beqz    $at, branch_0x802c7244
    sw      $t6, 0x0($v1)
    lw      $t7, 0x0($a2)
    addiu   $v0, $t7, 0xffff
    b       branch_0x802c7244
    sw      $v0, 0x0($v1)
branch_0x802c7278:
    addiu   $a0, $zero, 0x10
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c7338
    lw      $ra, 0x14($sp)
branch_0x802c728c:
    beqz    $t9, branch_0x802c7334
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x754c
    lui     $a2, 0x802c
    lw      $t0, 0x0($v1)
    addiu   $a2, $a2, 0x76d0
    lw      $a1, 0x0($a2)
    addiu   $v0, $t0, 0x1
    sw      $v0, 0x0($v1)
    slt     $at, $v0, $a1
    bnez    $at, branch_0x802c72cc
    lui     $t3, 0x800e
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x76cc
    lw      $v0, 0x0($a2)
    sw      $v0, 0x0($v1)
branch_0x802c72cc:
    lw      $t3, -0x58b0($t3)
    lui     $t5, 0x800e
    lui     $t7, 0x802c
    sll     $t4, $t3, 2
    addu    $t5, $t5, $t4
    lw      $t5, -0x57a8($t5)
    lui     $a2, 0x802c
    addiu   $t7, $t7, 0x757c
    sll     $t6, $t5, 4
    addiu   $a2, $a2, 0x76cc
    addu    $a0, $t6, $t7
branch_0x802c72f8:
    sll     $t8, $v0, 2
    addu    $t9, $a0, $t8
    lw      $t0, 0x0($t9)
    addiu   $t1, $v0, 0x1
    or      $v0, $t1, $zero
    bnez    $t0, branch_0x802c7328
    slt     $at, $t1, $a1
    bnez    $at, branch_0x802c72f8
    sw      $t1, 0x0($v1)
    lw      $v0, 0x0($a2)
    b       branch_0x802c72f8
    sw      $v0, 0x0($v1)
branch_0x802c7328:
    addiu   $a0, $zero, 0x10
    jal     0x800c3594
    or      $a1, $zero, $zero
branch_0x802c7334:
    lw      $ra, 0x14($sp)
branch_0x802c7338:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c7344
Function_0x802c7344: # 0x802c7344
    lui     $t6, 0x802c
    lw      $t6, 0x76b0($t6)
    lui     $v0, 0x801d
    addiu   $sp, $sp, 0xffe8
    sll     $t7, $t6, 3
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 2
    addu    $v0, $v0, $t7
    lhu     $v0, -0x1c46($v0)
    sw      $ra, 0x14($sp)
    andi    $t8, $v0, 0xb000
    beqz    $t8, branch_0x802c73c0
    andi    $t1, $v0, 0x4000
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa784
    lw      $t9, 0x0($v0)
    addiu   $t0, $zero, 0x1
    lui     $at, 0x801d
    bnez    $t9, branch_0x802c73a0
    nop
    lui     $at, 0x801d
    b       branch_0x802c73a4
    sw      $t0, -0x1c84($at)
branch_0x802c73a0:
    sw      $zero, -0x1c84($at)
branch_0x802c73a4:
    jal     Function_0x802c7474
    addiu   $a0, $zero, 0x28
    addiu   $a0, $zero, 0x37
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c7468
    lw      $ra, 0x14($sp)
branch_0x802c73c0:
    beqz    $t1, branch_0x802c73f8
    andi    $t3, $v0, 0x200
    lui     $at, 0x802c
    sw      $zero, 0x7554($at)
    lui     $at, 0x802c
    addiu   $t2, $zero, 0x2
    sw      $t2, 0x7538($at)
    lui     $at, 0x802c
    sw      $zero, 0x753c($at)
    addiu   $a0, $zero, 0x16
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c7468
    lw      $ra, 0x14($sp)
branch_0x802c73f8:
    beqz    $t3, branch_0x802c7434
    andi    $t8, $v0, 0x100
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa784
    lw      $t4, 0x0($v0)
    addiu   $t7, $zero, 0x1
    addiu   $a0, $zero, 0x10
    addiu   $t5, $t4, 0xffff
    bgez    $t5, branch_0x802c7424
    sw      $t5, 0x0($v0)
    sw      $t7, 0x0($v0)
branch_0x802c7424:
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c7468
    lw      $ra, 0x14($sp)
branch_0x802c7434:
    beqz    $t8, branch_0x802c7464
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa784
    lw      $t9, 0x0($v0)
    addiu   $a0, $zero, 0x10
    addiu   $t0, $t9, 0x1
    slti    $at, $t0, 0x2
    bnez    $at, branch_0x802c745c
    sw      $t0, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x802c745c:
    jal     0x800c3594
    or      $a1, $zero, $zero
branch_0x802c7464:
    lw      $ra, 0x14($sp)
branch_0x802c7468:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c7474
Function_0x802c7474: # 0x802c7474
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa8a4
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x15
    sw      $t6, -0x1c6c($at)
    lui     $at, 0x801d
    sw      $a0, -0x1c70($at)
    sw      $t7, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0x5
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
    or      $a0, $zero, $zero
    jal     0x801e67ac
    or      $a1, $zero, $zero
    lui     $t1, 0x801d
    lw      $t1, -0x1c70($t1)
    addiu   $at, $zero, 0x28
    bnel    $t1, $at, branch_0x802c7518
    lw      $ra, 0x14($sp)
    jal     0x800c1d00
    addiu   $a0, $zero, 0x7
    lw      $ra, 0x14($sp)
branch_0x802c7518:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.incbin "./roms/Wave Race 64 (USA).z64", 0x1bfb94, ROM_0x1bfd10 - 0x1bfb94
