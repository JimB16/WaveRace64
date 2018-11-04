

.include "source/constants.s"

.section .textoverlay3, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    lui     $t6, 0x801d
    lw      $t6, -0x1c64($t6)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c5a9c
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x1e
    lui     $a1, 0x801d
    bne     $t7, $at, branch_0x802c5a9c
    lui     $t1, 0x801d
    lw      $t1, -0x4f68($t1)
    lui     $t9, 0x802c
    lw      $a1, -0x4f6c($a1)
    sll     $t8, $t1, 2
    addu    $t9, $t9, $t8
    lw      $t9, 0x6fe4($t9)
    lui     $t3, 0x802c
    addiu   $t3, $t3, 0x7028
    bne     $a1, $t9, branch_0x802c58d0
    addiu   $t4, $zero, 0x1
    lui     $v1, 0x801d
    lui     $v0, 0x801d
    lui     $a0, 0x801d
    addiu   $a0, $a0, 0xb130
    addiu   $v0, $v0, 0xb0b0
    addiu   $v1, $v1, 0xb130
branch_0x802c586c:
    addiu   $v0, $v0, 0x10
    sltu    $at, $v0, $a0
    addiu   $v1, $v1, 0x4
    sw      $zero, -0x10($v0)
    sw      $zero, -0xc($v0)
    sw      $zero, -0x8($v0)
    sw      $zero, -0x4($v0)
    bnez    $at, branch_0x802c586c
    sw      $zero, -0x4($v1)
    lui     $a2, 0x801d
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xb0b0
    addiu   $a2, $a2, 0xb0a0
branch_0x802c58a0:
    addiu   $a2, $a2, 0x4
    sltu    $at, $a2, $v0
    bnez    $at, branch_0x802c58a0
    sw      $zero, -0x4($a2)
    lui     $at, 0x801c
    sw      $zero, 0x29d0($at)
    lui     $at, 0x801c
    sw      $zero, 0x2d48($at)
    lui     $at, 0x801c
    sw      $zero, 0x30c0($at)
    lui     $at, 0x801c
    sw      $zero, 0x3438($at)
branch_0x802c58d0:
    sw      $t4, 0x0($t3)
    lui     $at, 0x802c
    bnez    $t1, branch_0x802c5908
    sw      $zero, 0x6f84($at)
    bne     $t4, $a1, branch_0x802c58fc
    addiu   $t6, $zero, 0xb4
    sw      $zero, 0x0($t3)
    addiu   $t5, $zero, 0xf0
    lui     $at, 0x802c
    b       branch_0x802c592c
    sw      $t5, 0x702c($at)
branch_0x802c58fc:
    lui     $at, 0x802c
    b       branch_0x802c592c
    sw      $t6, 0x702c($at)
branch_0x802c5908:
    bnez    $a1, branch_0x802c5924
    addiu   $t8, $zero, 0xb4
    sw      $zero, 0x0($t3)
    addiu   $t7, $zero, 0xf0
    lui     $at, 0x802c
    b       branch_0x802c592c
    sw      $t7, 0x702c($at)
branch_0x802c5924:
    lui     $at, 0x802c
    sw      $t8, 0x702c($at)
branch_0x802c592c:
    lui     $t9, %hi(Unknown_0x801cb090)
    lw      $t9, %lo(Unknown_0x801cb090)($t9)
    lui     $a2, 0x801d
    addiu   $a2, $a2, 0xb0a0
    bnez    $t9, branch_0x802c59a4
    lui     $a3, 0x801d
    lui     $t1, 0x802c
    addiu   $t1, $t1, 0x7020
    sw      $zero, 0x0($t1)
    addiu   $t5, $zero, 0x4
    lui     $at, 0x801d
    sw      $t5, -0x1b98($at)
    lui     $at, 0x801d
    addiu   $t6, $zero, 0x4
    lui     $t9, 0x800d
    lw      $t9, 0x465c($t9)
    sw      $t6, -0x1b94($at)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x4
    sw      $t7, -0x1b90($at)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0x4
    lui     $t6, 0x801d
    sll     $t5, $t9, 2
    sw      $t8, -0x1b8c($at)
    addu    $t6, $t6, $t5
    lw      $t6, -0x1b98($t6)
    lui     $at, 0x801d
    b       branch_0x802c5a3c
    sw      $t6, -0x1b9c($at)
branch_0x802c59a4:
    sll     $t7, $t1, 4
    sll     $t8, $a1, 1
    addu    $t9, $t7, $t8
    lui     $t0, 0x800f
    addu    $t0, $t0, $t9
    lui     $t1, 0x802c
    lui     $t2, 0x801d
    addiu   $t2, $t2, 0xe478
    addiu   $t1, $t1, 0x7020
    lh      $t0, -0x56e4($t0)
    addiu   $a1, $zero, 0x5
    addiu   $a3, $a3, 0xe468
branch_0x802c59d4:
    lw      $t5, 0x0($a2)
    lui     $v0, 0x800f
    addiu   $v0, $v0, 0xa912
    subu    $a0, $t0, $t5
    sw      $a0, 0x0($t1)
    or      $v1, $t4, $zero
branch_0x802c59ec:
    lh      $t7, 0x0($v0)
    slt     $at, $t7, $a0
    bnezl   $at, branch_0x802c5a0c
    addiu   $a3, $a3, 0x4
    addiu   $v1, $v1, 0x1
    bne     $v1, $a1, branch_0x802c59ec
    addiu   $v0, $v0, 0x2
    addiu   $a3, $a3, 0x4
branch_0x802c5a0c:
    addiu   $t8, $v1, 0xffff
    addiu   $a2, $a2, 0x4
    bne     $a3, $t2, branch_0x802c59d4
    sw      $t8, -0x4($a3)
    lui     $t9, %hi(Unknown_0x800d465c)
    lw      $t9, %lo(Unknown_0x800d465c)($t9)
    lui     $t6, 0x801d
    lui     $at, 0x801d
    sll     $t5, $t9, 2
    addu    $t6, $t6, $t5
    lw      $t6, -0x1b98($t6)
    sw      $t6, -0x1b9c($at)
branch_0x802c5a3c:
    lui     $t7, %hi(Unknown_0x800d7ef0_TrackNr)
    lw      $t7, %lo(Unknown_0x800d7ef0_TrackNr)($t7)
    lui     $a1, %hi(Unknown_0x800da834)
    lui     $a0, %hi(Unknown_0x80198070)
    sll     $t8, $t7, 2
    addu    $a1, $a1, $t8
    lw      $a1, %lo(Unknown_0x800da834)($a1)
    jal     Function_0x800696e0
    addiu   $a0, $a0, %lo(Unknown_0x80198070)
    lui     $a0, %hi(Unknown_0x801980b0)
    lui     $a1, %hi(Unknown_0x800e9830)
    addiu   $a1, $a1, %lo(Unknown_0x800e9830)
    jal     Function_0x8006971c
    addiu   $a0, $a0, %lo(Unknown_0x801980b0)
    lui     $t9, %hi(Unknown_0x800da8e8)
    lh      $t9, %lo(Unknown_0x800da8e8)($t9)
    addiu   $t5, $zero, 0x2
    lui     $at, 0x802c
    beqz    $t9, branch_0x802c5a98
    nop
    lui     $at, 0x802c
    b       branch_0x802c5a9c
    sw      $t5, 0x6f8c($at)
branch_0x802c5a98:
    sw      $zero, 0x6f8c($at)
branch_0x802c5a9c:
    lui     $v0, 0x802c
    lw      $v0, 0x7028($v0)
    addiu   $at, $zero, 0x1
    beqz    $v0, branch_0x802c5ac0
    nop
    beq     $v0, $at, branch_0x802c5ad0
    nop
    b       branch_0x802c5adc
    lw      $ra, 0x14($sp)
branch_0x802c5ac0:
    jal     Function_0x802c5ae8
    nop
    b       branch_0x802c5adc
    lw      $ra, 0x14($sp)
branch_0x802c5ad0:
    jal     Function_0x802c5af0
    nop
    lw      $ra, 0x14($sp)
branch_0x802c5adc:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5ae8
Function_0x802c5ae8: # 0x802c5ae8
    jr      $ra
    nop

.globl Function_0x802c5af0
Function_0x802c5af0: # 0x802c5af0
    lui     $v0, 0x801d
    lw      $v0, -0x1ca8($v0)
    addiu   $sp, $sp, 0xffe0
    lui     $t6, %hi(Unknown_0x80198070)
    lui     $t7, %hi(Unknown_0x801980b0)
    sw      $ra, 0x1c($sp)
    addiu   $t7, $t7, %lo(Unknown_0x801980b0)
    addiu   $t6, $t6, %lo(Unknown_0x80198070)
    lui     $a3, 0x802c
    addiu   $a3, $a3, 0x7024
    sw      $t6, 0x10($sp)
    sw      $t7, 0x14($sp)
    addiu   $a0, $v0, 0xa80
    addiu   $a1, $v0, 0x1780
    jal     Function_0x80069738
    addiu   $a2, $v0, 0xa40
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x802c5b40
Function_0x802c5b40: # 0x802c5b40
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c5b80
    lui     $t7, 0x800e
    sw      $zero, 0x0($v0)
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x1e
    bne     $t7, $at, branch_0x802c5b80
    nop
    jal     Function_0x800939e4
    nop
    b       branch_0x802c5d48
    lw      $ra, 0x14($sp)
branch_0x802c5b80:
    lui     $at, 0x800e
    jal     Function_0x8009302c
    sw      $zero, -0x5754($at)
    lui     $t8, 0x8022
    lw      $t8, 0x36f8($t8)
    sw      $v0, 0x18($sp)
    lui     $v1, 0x802c
    beqzl   $t8, branch_0x802c5be0
    addiu   $t9, $v0, 0x8
    lw      $v1, 0x7028($v1)
    addiu   $at, $zero, 0x1
    beqz    $v1, branch_0x802c5bc4
    nop
    beq     $v1, $at, branch_0x802c5bd4
    nop
    b       branch_0x802c5be0
    addiu   $t9, $v0, 0x8
branch_0x802c5bc4:
    jal     Function_0x802c5d54
    lw      $a0, 0x18($sp)
    b       branch_0x802c5be0
    addiu   $t9, $v0, 0x8
branch_0x802c5bd4:
    jal     Function_0x802c6344
    lw      $a0, 0x18($sp)
    addiu   $t9, $v0, 0x8
branch_0x802c5be0:
    sw      $t9, 0x18($sp)
    lui     $t1, 0x107
    addiu   $t1, $t1, 0xf168
    lui     $t0, 0x600
    sw      $t0, 0x0($v0)
    sw      $t1, 0x4($v0)
    lui     $t2, 0x800e
    lw      $t2, -0x575c($t2)
    addiu   $at, $zero, 0x1e
    lui     $v0, 0x801d
    bne     $t2, $at, branch_0x802c5cac
    nop
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6f88
    lw      $t3, 0x0($v0)
    lui     $t4, 0x801d
    beqz    $t3, branch_0x802c5c38
    nop
    jal     Function_0x801eb6ac_ChangeStateTo1e
    sw      $zero, 0x0($v0)
    b       branch_0x802c5d00
    nop
branch_0x802c5c38:
    lhu     $t4, -0x1c0e($t4)
    lui     $t6, 0x802c
    lui     $t7, 0x8022
    andi    $t5, $t4, 0xb000
    beqz    $t5, branch_0x802c5c6c
    nop
    lw      $t6, 0x6f84($t6)
    beqz    $t6, branch_0x802c5c9c
    nop
    jal     Function_0x802c6e9c
    nop
    b       branch_0x802c5c9c
    nop
branch_0x802c5c6c:
    lw      $t7, 0x36f8($t7)
    lui     $t8, 0x801d
    lui     $t9, 0x802c
    beqz    $t7, branch_0x802c5c9c
    nop
    lw      $t8, -0x1c5c($t8)
    lw      $t9, 0x702c($t9)
    slt     $at, $t8, $t9
    bnez    $at, branch_0x802c5c9c
    nop
    jal     Function_0x802c6e9c
    nop
branch_0x802c5c9c:
    jal     Function_0x80047df0
    nop
    b       branch_0x802c5d00
    nop
branch_0x802c5cac:
    lw      $v0, -0x1c5c($v0)
    lui     $at, 0x801d
    bltz    $v0, branch_0x802c5cc8
    addiu   $t0, $v0, 0xffff
    sw      $t0, -0x1c5c($at)
    lui     $v0, 0x801d
    lw      $v0, -0x1c5c($v0)
branch_0x802c5cc8:
    bnez    $v0, branch_0x802c5cd8
    nop
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x7
branch_0x802c5cd8:
    lui     $t1, 0x8023
    lh      $t1, -0x782a($t1)
    addiu   $at, $zero, 0x1
    lui     $t2, %hi(Unknown_0x801cb090)
    bne     $t1, $at, branch_0x802c5d00
    nop
    lw      $t2, %lo(Unknown_0x801cb090)($t2)
    lui     $at, %hi(Unknown_0x800d7ef0_TrackNr)
    jal     Function_ChangeStateTo28
    sw      $t2, %lo(Unknown_0x800d7ef0_TrackNr)($at)
branch_0x802c5d00:
    lui     $t3, 0x801d
    lw      $t3, -0x1c68($t3)
    addiu   $at, $zero, 0x8
    beq     $t3, $at, branch_0x802c5d1c
    nop
    jal     Function_0x800ad164
    nop
branch_0x802c5d1c:
    lui     $t4, 0x800e
    lw      $t4, -0x575c($t4)
    addiu   $at, $zero, 0x1e
    lui     $v0, 0x801d
    bne     $t4, $at, branch_0x802c5d40
    addiu   $v0, $v0, 0xe3a4
    lw      $t5, 0x0($v0)
    addiu   $t6, $t5, 0x1
    sw      $t6, 0x0($v0)
branch_0x802c5d40:
    lw      $v0, 0x18($sp)
    lw      $ra, 0x14($sp)
branch_0x802c5d48:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5d54
Function_0x802c5d54: # 0x802c5d54
    lui     $t2, 0x802c
    addiu   $t2, $t2, 0x6f64
    lw      $v0, 0x0($t2)
    addiu   $sp, $sp, 0xffc0
    sw      $ra, 0x3c($sp)
    beqz    $v0, branch_0x802c5d94
    sw      $a0, 0x40($sp)
    addiu   $a1, $zero, 0x1
    beq     $v0, $a1, branch_0x802c5df4
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c5fec
    addiu   $at, $zero, 0x3
    beq     $v0, $at, branch_0x802c6058
    lui     $t3, 0x802c
    b       branch_0x802c615c
    addiu   $t3, $t3, 0x6f70
branch_0x802c5d94:
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6f68
    lw      $t6, 0x0($v1)
    lui     $t0, 0x802c
    addiu   $t0, $t0, 0x6f7c
    addiu   $t7, $t6, 0x1
    slti    $at, $t7, 0x5
    bnez    $at, branch_0x802c5dd0
    sw      $t7, 0x0($v1)
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6f74
    addiu   $a1, $zero, 0x1
    sw      $a1, 0x0($t2)
    sw      $zero, 0x0($a2)
    sw      $zero, 0x0($v1)
branch_0x802c5dd0:
    lui     $at, 0x802c
    sw      $zero, 0x6f78($at)
    lui     $t3, 0x802c
    lui     $at, 0x802c
    addiu   $t3, $t3, 0x6f70
    sw      $zero, 0x6f6c($at)
    sw      $zero, 0x0($t3)
    b       branch_0x802c615c
    sw      $zero, 0x0($t0)
branch_0x802c5df4:
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6f68
    lw      $t5, 0x0($v1)
    addiu   $t6, $t5, 0x1
    slti    $at, $t6, 0x14
    sw      $t6, 0x0($v1)
    bnez    $at, branch_0x802c5e28
    or      $a0, $t6, $zero
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6f74
    lw      $t7, 0x0($a2)
    addiu   $t8, $t7, 0x1
    sw      $t8, 0x0($a2)
branch_0x802c5e28:
    lui     $a2, 0x802c
    slti    $at, $a0, 0xa
    bnez    $at, branch_0x802c5e5c
    addiu   $a2, $a2, 0x6f74
    addiu   $a3, $zero, 0xff
    lui     $t3, 0x802c
    lui     $at, 0x802c
    addiu   $t3, $t3, 0x6f70
    addiu   $t1, $zero, 0xaa
    sw      $a3, 0x6f6c($at)
    sw      $t1, 0x0($t3)
    b       branch_0x802c5ef4
    addiu   $a1, $zero, 0xa
branch_0x802c5e5c:
    addiu   $a3, $zero, 0xff
    multu   $a0, $a3
    addiu   $a1, $zero, 0xa
    addiu   $t1, $zero, 0xaa
    lui     $t3, 0x802c
    addiu   $t3, $t3, 0x6f70
    mflo    $t9
    nop
    nop
    div     $zero, $t9, $a1
    mflo    $t4
    bnez    $a1, branch_0x802c5e94
    nop
    break   0x7
branch_0x802c5e94:
    addiu   $at, $zero, 0xffff
    bne     $a1, $at, branch_0x802c5eac
    lui     $at, 0x8000
    bne     $t9, $at, branch_0x802c5eac
    nop
    break   0x6
branch_0x802c5eac:
    multu   $a0, $t1
    lui     $at, 0x802c
    sw      $t4, 0x6f6c($at)
    mflo    $t5
    nop
    nop
    div     $zero, $t5, $a1
    mflo    $t6
    sw      $t6, 0x0($t3)
    bnez    $a1, branch_0x802c5edc
    nop
    break   0x7
branch_0x802c5edc:
    addiu   $at, $zero, 0xffff
    bne     $a1, $at, branch_0x802c5ef4
    lui     $at, 0x8000
    bne     $t5, $at, branch_0x802c5ef4
    nop
    break   0x6
branch_0x802c5ef4:
    lw      $v0, 0x0($a2)
    slti    $at, $v0, 0xa
    bnez    $at, branch_0x802c5f20
    nop
    lui     $a1, 0x802c
    lui     $t0, 0x802c
    addiu   $t0, $t0, 0x6f7c
    addiu   $a1, $a1, 0x6f78
    sw      $a3, 0x0($a1)
    b       branch_0x802c5fb4
    sw      $t1, 0x0($t0)
branch_0x802c5f20:
    multu   $v0, $a3
    lui     $t0, 0x802c
    addiu   $t0, $t0, 0x6f7c
    mflo    $t7
    nop
    nop
    div     $zero, $t7, $a1
    mflo    $t8
    bnez    $a1, branch_0x802c5f4c
    nop
    break   0x7
branch_0x802c5f4c:
    addiu   $at, $zero, 0xffff
    bne     $a1, $at, branch_0x802c5f64
    lui     $at, 0x8000
    bne     $t7, $at, branch_0x802c5f64
    nop
    break   0x6
branch_0x802c5f64:
    multu   $v0, $t1
    lui     $at, 0x802c
    sw      $t8, 0x6f78($at)
    mflo    $t9
    nop
    nop
    div     $zero, $t9, $a1
    mflo    $t4
    sw      $t4, 0x0($t0)
    bnez    $a1, branch_0x802c5f94
    nop
    break   0x7
branch_0x802c5f94:
    addiu   $at, $zero, 0xffff
    bne     $a1, $at, branch_0x802c5fac
    lui     $at, 0x8000
    bne     $t9, $at, branch_0x802c5fac
    nop
    break   0x6
branch_0x802c5fac:
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6f78
branch_0x802c5fb4:
    slti    $at, $a0, 0xa
    bnez    $at, branch_0x802c615c
    slti    $at, $v0, 0xa
    bnez    $at, branch_0x802c615c
    addiu   $t5, $zero, 0x2
    sw      $t5, 0x0($t2)
    sw      $a3, 0x0($a1)
    lui     $at, 0x802c
    sw      $a3, 0x6f6c($at)
    sw      $t1, 0x0($t3)
    sw      $t1, 0x0($t0)
    sw      $zero, 0x0($v1)
    b       branch_0x802c615c
    sw      $zero, 0x0($a2)
branch_0x802c5fec:
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6f68
    lw      $t9, 0x0($v1)
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6f78
    addiu   $t4, $t9, 0x1
    slti    $at, $t4, 0x19
    bnez    $at, branch_0x802c6028
    sw      $t4, 0x0($v1)
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6f74
    addiu   $t6, $zero, 0x3
    sw      $t6, 0x0($t2)
    sw      $zero, 0x0($a2)
    sw      $zero, 0x0($v1)
branch_0x802c6028:
    addiu   $a3, $zero, 0xff
    lui     $t0, 0x802c
    lui     $t3, 0x802c
    sw      $a3, 0x0($v0)
    lui     $at, 0x802c
    addiu   $t3, $t3, 0x6f70
    addiu   $t0, $t0, 0x6f7c
    addiu   $t1, $zero, 0xaa
    sw      $a3, 0x6f6c($at)
    sw      $t1, 0x0($t3)
    b       branch_0x802c615c
    sw      $t1, 0x0($t0)
branch_0x802c6058:
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6f68
    lw      $t4, 0x0($v1)
    addiu   $t5, $t4, 0x1
    slti    $at, $t5, 0xa
    sw      $t5, 0x0($v1)
    bnez    $at, branch_0x802c60a0
    or      $a0, $t5, $zero
    sw      $zero, 0x0($t2)
    sw      $zero, 0x0($v1)
    lui     $at, 0x802c
    lui     $t3, 0x802c
    sw      $zero, 0x6f6c($at)
    addiu   $t3, $t3, 0x6f70
    sw      $zero, 0x0($t3)
    lui     $at, 0x802c
    b       branch_0x802c613c
    sw      $a1, 0x7028($at)
branch_0x802c60a0:
    addiu   $a1, $zero, 0xa
    addiu   $a3, $zero, 0xff
    subu    $v0, $a1, $a0
    multu   $v0, $a3
    addiu   $t1, $zero, 0xaa
    lui     $t3, 0x802c
    addiu   $t3, $t3, 0x6f70
    mflo    $t6
    nop
    nop
    div     $zero, $t6, $a1
    mflo    $t7
    bnez    $a1, branch_0x802c60dc
    nop
    break   0x7
branch_0x802c60dc:
    addiu   $at, $zero, 0xffff
    bne     $a1, $at, branch_0x802c60f4
    lui     $at, 0x8000
    bne     $t6, $at, branch_0x802c60f4
    nop
    break   0x6
branch_0x802c60f4:
    multu   $v0, $t1
    lui     $at, 0x802c
    sw      $t7, 0x6f6c($at)
    mflo    $t8
    nop
    nop
    div     $zero, $t8, $a1
    mflo    $t9
    sw      $t9, 0x0($t3)
    bnez    $a1, branch_0x802c6124
    nop
    break   0x7
branch_0x802c6124:
    addiu   $at, $zero, 0xffff
    bne     $a1, $at, branch_0x802c613c
    lui     $at, 0x8000
    bne     $t8, $at, branch_0x802c613c
    nop
    break   0x6
branch_0x802c613c:
    lui     $t4, 0x802c
    lw      $t4, 0x6f6c($t4)
    lui     $at, 0x802c
    lui     $t0, 0x802c
    sw      $t4, 0x6f78($at)
    lw      $t5, 0x0($t3)
    addiu   $t0, $t0, 0x6f7c
    sw      $t5, 0x0($t0)
branch_0x802c615c:
    lw      $t6, 0x40($sp)
    lui     $t9, 0x107
    addiu   $t9, $t9, 0xf628
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x40($sp)
    lui     $t8, 0x600
    sw      $t8, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $t4, 0x40($sp)
    lui     $t6, 0xfa00
    addiu   $at, $zero, 0xff00
    addiu   $t5, $t4, 0x8
    sw      $t5, 0x40($sp)
    sw      $t6, 0x0($t4)
    lw      $t7, 0x0($t3)
    addiu   $t5, $zero, 0x20
    addiu   $a1, $zero, 0x2
    andi    $t8, $t7, 0xff
    or      $t9, $t8, $at
    sw      $t9, 0x4($t4)
    addiu   $t4, $zero, 0x100
    sw      $t4, 0x10($sp)
    sw      $t5, 0x14($sp)
    lw      $a0, 0x40($sp)
    addiu   $a2, $zero, 0x20
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x4b
    lui     $t0, 0x802c
    lui     $t6, 0xfa00
    addiu   $t0, $t0, 0x6f7c
    sw      $t6, 0x0($v0)
    lw      $t7, 0x0($t0)
    addiu   $at, $zero, 0xff00
    addiu   $t4, $zero, 0x100
    andi    $t8, $t7, 0xff
    or      $t9, $t8, $at
    sw      $t9, 0x4($v0)
    addiu   $t5, $zero, 0x20
    sw      $t5, 0x14($sp)
    sw      $t4, 0x10($sp)
    addiu   $a0, $v0, 0x8
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x20
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x85
    lui     $a2, 0x802c
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    sw      $t5, 0x24($sp)
    sw      $t4, 0x20($sp)
    sw      $t9, 0x1c($sp)
    sw      $t9, 0x34($sp)
    sw      $t8, 0x18($sp)
    sw      $t8, 0x30($sp)
    sw      $t7, 0x14($sp)
    sw      $t7, 0x2c($sp)
    sw      $t6, 0x10($sp)
    sw      $t6, 0x28($sp)
    lbu     $a2, 0x6f6f($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0xa
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    addiu   $t4, $zero, 0x51
    sw      $t4, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x22
    addiu   $a3, $zero, 0x48
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lui     $a2, 0x802c
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t4, $zero, 0xff
    sw      $t4, 0x24($sp)
    sw      $t9, 0x20($sp)
    sw      $t8, 0x1c($sp)
    sw      $t8, 0x34($sp)
    sw      $t7, 0x18($sp)
    sw      $t7, 0x30($sp)
    sw      $t6, 0x14($sp)
    sw      $t6, 0x2c($sp)
    sw      $t5, 0x10($sp)
    sw      $t5, 0x28($sp)
    lbu     $a2, 0x6f7b($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0xa
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lui     $t9, 0x800e
    lh      $t9, -0x5718($t9)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    beqz    $t9, branch_0x802c6304
    addiu   $t7, $zero, 0x8b
    lui     $v0, 0x802c
    b       branch_0x802c631c
    addiu   $v0, $v0, 0x6fcc
branch_0x802c6304:
    lui     $t4, 0x801d
    lw      $t4, -0x4f68($t4)
    lui     $t6, 0x802c
    addiu   $t6, $t6, 0x6fb4
    sll     $t5, $t4, 3
    addu    $v0, $t5, $t6
branch_0x802c631c:
    lh      $a3, 0x0($v0)
    lw      $a2, 0x4($v0)
    sw      $zero, 0x14($sp)
    sw      $t7, 0x10($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x32
    lw      $ra, 0x3c($sp)
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop

.globl Function_0x802c6344
Function_0x802c6344: # 0x802c6344
    lui     $t6, 0x801d
    lw      $t6, -0x4f68($t6)
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6f64
    lui     $t8, 0x802c
    sll     $t7, $t6, 2
    lw      $v0, 0x0($a1)
    addu    $t8, $t8, $t7
    lw      $t8, 0x6fd4($t8)
    addiu   $sp, $sp, 0xff98
    sw      $ra, 0x3c($sp)
    beqz    $v0, branch_0x802c638c
    sw      $t8, 0x50($sp)
    addiu   $t0, $zero, 0x1
    beq     $v0, $t0, branch_0x802c63c8
    nop
    b       branch_0x802c646c
    or      $v0, $a0, $zero
branch_0x802c638c:
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6f68
    lw      $t9, 0x0($v0)
    addiu   $t8, $zero, 0x1
    addiu   $t6, $t9, 0x1
    slti    $at, $t6, 0x14
    bnez    $at, branch_0x802c63b4
    sw      $t6, 0x0($v0)
    sw      $t8, 0x0($a1)
    sw      $zero, 0x0($v0)
branch_0x802c63b4:
    lui     $at, 0x802c
    sw      $zero, 0x6f6c($at)
    lui     $at, 0x802c
    b       branch_0x802c6468
    sw      $zero, 0x6f70($at)
branch_0x802c63c8:
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6f68
    lw      $t9, 0x0($v0)
    addiu   $t7, $zero, 0x2
    addiu   $t8, $zero, 0xff
    addiu   $v1, $t9, 0x1
    slti    $at, $v1, 0x14
    bnez    $at, branch_0x802c641c
    sw      $v1, 0x0($v0)
    sw      $t7, 0x0($a1)
    sw      $zero, 0x0($v0)
    lui     $at, 0x802c
    sw      $t8, 0x6f6c($at)
    lui     $at, 0x802c
    addiu   $t9, $zero, 0xaa
    sw      $t9, 0x6f70($at)
    lui     $at, 0x802c
    sw      $t0, 0x6f80($at)
    lui     $at, 0x802c
    b       branch_0x802c6468
    sw      $t0, 0x6f84($at)
branch_0x802c641c:
    sll     $t6, $v1, 8
    subu    $t6, $t6, $v1
    addiu   $at, $zero, 0x14
    div     $zero, $t6, $at
    sll     $t8, $v1, 2
    addu    $t8, $t8, $v1
    sll     $t8, $t8, 2
    mflo    $t7
    addu    $t8, $t8, $v1
    lui     $at, 0x802c
    sll     $t8, $t8, 2
    sw      $t7, 0x6f6c($at)
    addu    $t8, $t8, $v1
    sll     $t8, $t8, 1
    addiu   $at, $zero, 0x14
    div     $zero, $t8, $at
    mflo    $t9
    lui     $at, 0x802c
    sw      $t9, 0x6f70($at)
branch_0x802c6468:
    or      $v0, $a0, $zero
branch_0x802c646c:
    lui     $t7, 0x107
    addiu   $t7, $t7, 0xf628
    addiu   $a0, $a0, 0x8
    lui     $t6, 0x600
    sw      $t6, 0x0($v0)
    sw      $t7, 0x4($v0)
    or      $v1, $a0, $zero
    lui     $t8, 0xfa00
    sw      $t8, 0x0($v1)
    lui     $t9, 0x802c
    lw      $t9, 0x6f70($t9)
    addiu   $at, $zero, 0xff00
    addiu   $t8, $zero, 0x108
    andi    $t6, $t9, 0xff
    or      $t7, $t6, $at
    sw      $t7, 0x4($v1)
    addiu   $t9, $zero, 0x18
    addiu   $a0, $a0, 0x8
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1c
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x1e
    addiu   $t6, $zero, 0x69
    addiu   $t7, $zero, 0xc
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xbb
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x3c
    addiu   $t8, $zero, 0x69
    addiu   $t9, $zero, 0xc
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xbb
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x56
    addiu   $t6, $zero, 0x69
    addiu   $t7, $zero, 0x16
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xbb
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x63
    addiu   $t8, $zero, 0x69
    addiu   $t9, $zero, 0xc
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xbb
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x86
    addiu   $t6, $zero, 0x69
    addiu   $t7, $zero, 0x16
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xbb
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x93
    addiu   $t8, $zero, 0xbf
    addiu   $t9, $zero, 0x22
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1c
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xb0
    addiu   $t6, $zero, 0x46
    addiu   $t7, $zero, 0x22
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xde
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xb0
    lui     $t9, 0x805
    addiu   $t9, $t9, 0xe4e0
    lui     $t8, 0x600
    sw      $t8, 0x0($v0)
    sw      $t9, 0x4($v0)
    lui     $t7, 0x802c
    lw      $t7, 0x6f70($t7)
    addiu   $t6, $zero, 0xa7
    sw      $t6, 0x10($sp)
    sw      $zero, 0x1c($sp)
    sw      $zero, 0x18($sp)
    sw      $zero, 0x14($sp)
    addiu   $a0, $v0, 0x8
    addiu   $a1, $zero, 0x1f
    addiu   $a2, $zero, 0x3f
    addiu   $a3, $zero, 0xb4
    jal     Function_0x801e79b8
    sw      $t7, 0x20($sp)
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    lui     $a2, 0x802c
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x1c($sp)
    sw      $t7, 0x2c($sp)
    sw      $t6, 0x18($sp)
    sw      $t6, 0x28($sp)
    lbu     $a2, 0x6f6f($a2)
    sw      $t9, 0x14($sp)
    sw      $t9, 0x24($sp)
    sw      $t9, 0x34($sp)
    sw      $t8, 0x10($sp)
    sw      $t8, 0x20($sp)
    sw      $t8, 0x30($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0xa
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lui     $t6, 0x801d
    lw      $t6, -0x4f68($t6)
    lui     $a1, 0x801d
    lw      $a1, -0x4f6c($a1)
    or      $a0, $v0, $zero
    bnez    $t6, branch_0x802c6680
    or      $t0, $a1, $zero
    addiu   $t0, $t0, 0xffff
branch_0x802c6680:
    lui     $v1, %hi(Unknown_0x801cb090)
    lw      $v1, %lo(Unknown_0x801cb090)($v1)
    bnez    $v1, branch_0x802c6698
    addiu   $t7, $zero, 0xffdf
    b       branch_0x802c66f0
    sw      $t7, 0x48($sp)
branch_0x802c6698:
    bltz    $t0, branch_0x802c66f0
    lw      $t8, 0x50($sp)
    bne     $t8, $a1, branch_0x802c66b8
    lui     $a2, 0x802c
    addiu   $t9, $zero, 0x16
    addiu   $t0, $zero, 0x8
    b       branch_0x802c66bc
    sw      $t9, 0x48($sp)
branch_0x802c66b8:
    sw      $zero, 0x48($sp)
branch_0x802c66bc:
    sll     $t6, $t0, 2
    addu    $a2, $a2, $t6
    addiu   $t7, $zero, 0x25
    addiu   $t8, $zero, 0x1
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    lw      $a2, 0x6f90($a2)
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $zero, 0x25
    lui     $v1, %hi(Unknown_0x801cb090)
    lw      $v1, %lo(Unknown_0x801cb090)($v1)
    or      $a0, $v0, $zero
branch_0x802c66f0:
    lw      $a3, 0x48($sp)
    sll     $t9, $v1, 2
    lui     $a2, 0x800e
    addu    $a2, $a2, $t9
    addiu   $t6, $zero, 0x21
    sw      $t6, 0x10($sp)
    lw      $a2, -0x584c($a2)
    addiu   $a1, $zero, 0x2
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x67
    addiu   $t7, $zero, 0x3e
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x16
    addiu   $a3, $zero, 0xc3
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    addiu   $t8, $zero, 0x58
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xe
    addiu   $a3, $zero, 0xd4
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    addiu   $t9, $zero, 0x88
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xd
    addiu   $a3, $zero, 0xd4
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    addiu   $t6, $zero, 0xb5
    or      $a0, $v0, $zero
    sw      $t6, 0x10($sp)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x6
    addiu   $a3, $zero, 0x22
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    addiu   $t7, $zero, 0xc2
    or      $a0, $v0, $zero
    sw      $t7, 0x10($sp)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x7
    addiu   $a3, $zero, 0x22
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lui     $v1, %hi(Unknown_0x801cb090)
    lw      $v1, %lo(Unknown_0x801cb090)($v1)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    bnez    $v1, branch_0x802c6814
    lui     $t6, 0x800e
    lui     $a2, 0x802c
    addiu   $t8, $zero, 0x69
    sw      $t8, 0x10($sp)
    addiu   $a2, $a2, 0x6ff0
    jal     Function_0x801e95e0
    addiu   $a3, $zero, 0xcb
    lui     $a2, 0x802c
    addiu   $t9, $zero, 0x99
    sw      $t9, 0x10($sp)
    addiu   $a2, $a2, 0x6ffc
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e95e0
    addiu   $a3, $zero, 0xcb
    b       branch_0x802c68d8
    or      $a0, $v0, $zero
branch_0x802c6814:
    lh      $t6, -0x5718($t6)
    addiu   $a1, $zero, 0x2
    lui     $a2, 0x801c
    beqz    $t6, branch_0x802c687c
    addiu   $a3, $zero, 0xcb
    sll     $t7, $v1, 2
    addu    $t7, $t7, $v1
    sll     $t7, $t7, 2
    lui     $a2, 0x801c
    addu    $a2, $a2, $t7
    addiu   $t8, $zero, 0x69
    sw      $t8, 0x10($sp)
    lw      $a2, 0x2110($a2)
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e8884
    addiu   $a3, $zero, 0xcb
    lui     $a2, 0x802c
    addiu   $t9, $zero, 0x99
    sw      $t9, 0x10($sp)
    addiu   $a2, $a2, 0x7008
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e95e0
    addiu   $a3, $zero, 0xcb
    b       branch_0x802c68d8
    or      $a0, $v0, $zero
branch_0x802c687c:
    sll     $t6, $v1, 4
    subu    $t6, $t6, $v1
    sll     $t6, $t6, 2
    addu    $a2, $a2, $t6
    addiu   $t7, $zero, 0x69
    sw      $t7, 0x10($sp)
    jal     Function_0x801e8884
    lw      $a2, 0x1d50($a2)
    lui     $t8, %hi(Unknown_0x801cb090)
    lw      $t8, %lo(Unknown_0x801cb090)($t8)
    lui     $a2, 0x801c
    addiu   $t6, $zero, 0x99
    sll     $t9, $t8, 2
    addu    $t9, $t9, $t8
    sll     $t9, $t9, 2
    addu    $a2, $a2, $t9
    lw      $a2, 0x2020($a2)
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e8884
    addiu   $a3, $zero, 0xcb
    or      $a0, $v0, $zero
branch_0x802c68d8:
    lui     $t7, 0x800d
    lw      $t7, 0x465c($t7)
    lui     $a2, 0x801d
    addiu   $t9, $zero, 0xc2
    sll     $t8, $t7, 2
    addu    $a2, $a2, $t8
    lw      $a2, -0x4f60($a2)
    sw      $t9, 0x10($sp)
    addiu   $a1, $zero, 0x2
    jal     Function_0x801ead94
    addiu   $a3, $zero, 0xca
    lui     $t6, 0x802c
    lw      $t6, 0x6fe0($t6)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0xa
    beqz    $t6, branch_0x802c696c
    lui     $a2, 0x802c
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t6, $zero, 0xff
    sw      $t6, 0x1c($sp)
    sw      $t6, 0x2c($sp)
    sw      $t9, 0x18($sp)
    sw      $t9, 0x28($sp)
    sw      $t8, 0x14($sp)
    sw      $t8, 0x24($sp)
    sw      $t8, 0x34($sp)
    sw      $t7, 0x10($sp)
    sw      $t7, 0x20($sp)
    sw      $t7, 0x30($sp)
    addiu   $a1, $zero, 0x6
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    b       branch_0x802c69b4
    or      $a0, $v0, $zero
branch_0x802c696c:
    addiu   $t9, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x1c($sp)
    sw      $t8, 0x2c($sp)
    sw      $t7, 0x18($sp)
    sw      $t7, 0x28($sp)
    sw      $t6, 0x14($sp)
    sw      $t6, 0x24($sp)
    sw      $t6, 0x34($sp)
    sw      $t9, 0x10($sp)
    sw      $t9, 0x20($sp)
    sw      $t9, 0x30($sp)
    lbu     $a2, 0x6f6f($a2)
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    or      $a0, $v0, $zero
branch_0x802c69b4:
    lui     $t7, 0x801d
    lui     $t9, 0x801d
    lw      $t9, -0x4f6c($t9)
    lw      $t7, -0x4f68($t7)
    lui     $a2, 0x800f
    sll     $t6, $t9, 1
    sll     $t8, $t7, 4
    addu    $t7, $t8, $t6
    addu    $a2, $a2, $t7
    addiu   $t9, $zero, 0xb5
    sw      $t9, 0x10($sp)
    lh      $a2, -0x56e4($a2)
    addiu   $a1, $zero, 0x2
    jal     Function_0x801ead94
    addiu   $a3, $zero, 0xca
    lui     $t8, 0xfd70
    sw      $t8, 0x0($v0)
    lui     $t6, 0x801d
    lw      $t6, -0x1b9c($t6)
    lui     $t9, 0x802c
    addiu   $a0, $v0, 0x8
    sll     $t7, $t6, 2
    addu    $t9, $t9, $t7
    lw      $t9, 0x6f50($t9)
    or      $a1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $t9, 0x4($v0)
    lui     $t6, 0x708
    lui     $t8, 0xf570
    sw      $t8, 0x0($a1)
    ori     $t6, $t6, 0x200
    or      $a2, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $t6, 0x4($a1)
    or      $a3, $a0, $zero
    lui     $t7, 0xe600
    sw      $t7, 0x0($a2)
    sw      $zero, 0x4($a2)
    lui     $t8, 0x72b
    ori     $t8, $t8, 0xf100
    addiu   $a0, $a0, 0x8
    lui     $t9, 0xf300
    sw      $t9, 0x0($a3)
    or      $t0, $a0, $zero
    sw      $t8, 0x4($a3)
    addiu   $a0, $a0, 0x8
    lui     $ra, 0xe700
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $ra, 0x0($t0)
    sw      $zero, 0x4($t0)
    lui     $t7, 0x8
    lui     $t6, 0xf568
    ori     $t6, $t6, 0x1000
    ori     $t7, $t7, 0x200
    or      $v1, $a0, $zero
    sw      $t7, 0x4($v0)
    sw      $t6, 0x0($v0)
    lui     $t8, 0xf
    ori     $t8, $t8, 0xc054
    lui     $t9, 0xf200
    sw      $t9, 0x0($v1)
    sw      $t8, 0x4($v1)
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    lui     $t6, 0xe448
    ori     $t6, $t6, 0x4330
    addiu   $a0, $a0, 0x8
    lui     $t7, 0x38
    ori     $t7, $t7, 0x42d8
    or      $a2, $a0, $zero
    sw      $t6, 0x0($a1)
    sw      $t7, 0x4($a1)
    addiu   $a0, $a0, 0x8
    lui     $t9, 0xb300
    sw      $t9, 0x0($a2)
    or      $a3, $a0, $zero
    sw      $zero, 0x4($a2)
    lui     $t6, 0x400
    ori     $t6, $t6, 0x400
    lui     $t8, 0xb200
    sw      $t8, 0x0($a3)
    sw      $t6, 0x4($a3)
    lui     $v0, %hi(Unknown_0x800d7ef0_TrackNr)
    lw      $v0, %lo(Unknown_0x800d7ef0_TrackNr)($v0)
    lui     $v1, 0x802c
    lw      $v1, 0x6f8c($v1)
    lui     $t7, %hi(Unknown_0x800DB330)
    addiu   $t7, $t7, %lo(Unknown_0x800DB330)
    sll     $a1, $v0, 3
    addiu   $a0, $a0, 0x8
    addu    $t5, $a1, $t7
    bnez    $v1, branch_0x802c6bc0
    addiu   $t2, $zero, 0x1
    lui     $t9, %hi(Unknown_0x800DB378)
    addiu   $t9, $t9, %lo(Unknown_0x800DB378)
    bnez    $v0, branch_0x802c6b44
    addu    $t4, $a1, $t9
    b       branch_0x802c6bb8
    or      $t2, $zero, $zero
branch_0x802c6b44:
    addiu   $at, $zero, 0x5
    bnel    $v0, $at, branch_0x802c6b8c
    addiu   $at, $zero, 0x3
    lui     $v0, 0x801d
    lw      $v0, -0x4f68($v0)
    addiu   $at, $zero, 0x2
    lui     $t8, %hi(Unknown_0x800DB3c0)
    bne     $v0, $at, branch_0x802c6b70
    addiu   $t8, $t8, %lo(Unknown_0x800DB3c0)
    b       branch_0x802c6bb8
    addu    $t4, $a1, $t8
branch_0x802c6b70:
    addiu   $at, $zero, 0x1
    bne     $v0, $at, branch_0x802c6bb8
    lui     $t6, %hi(Unknown_0x800db408)
    addiu   $t6, $t6, %lo(Unknown_0x800db408)
    b       branch_0x802c6bb8
    addu    $t4, $a1, $t6

.globl Function_0x802c6b88
Function_0x802c6b88: # 0x802c6b88
    addiu   $at, $zero, 0x3
branch_0x802c6b8c:
    bne     $v0, $at, branch_0x802c6bb8
    lui     $v0, 0x801d
    lw      $v0, -0x4f68($v0)
    addiu   $at, $zero, 0x1
    lui     $t7, %hi(Unknown_0x800DB3c0)
    beq     $v0, $at, branch_0x802c6bb4
    addiu   $t7, $t7, %lo(Unknown_0x800DB3c0)
    addiu   $at, $zero, 0x2
    bne     $v0, $at, branch_0x802c6bb8
    nop
branch_0x802c6bb4:
    addu    $t4, $a1, $t7
branch_0x802c6bb8:
    b       branch_0x802c6be4
    sw      $t4, 0x40($sp)
branch_0x802c6bc0:
    addiu   $at, $zero, 0x2
    bne     $v1, $at, branch_0x802c6be4
    lui     $t9, %hi(Unknown_0x800db498)
    addiu   $t9, $t9, %lo(Unknown_0x800db498)
    addu    $t4, $a1, $t9
    bnez    $v0, branch_0x802c6be4
    sw      $t4, 0x40($sp)
    or      $t2, $zero, $zero
    sw      $t4, 0x40($sp)
branch_0x802c6be4:
    or      $v0, $a0, $zero
    lw      $t4, 0x40($sp)
    addiu   $a0, $a0, 0x8
    lui     $t8, 0x805
    lui     $t0, 0x600
    addiu   $t8, $t8, 0xe418
    or      $v1, $a0, $zero
    sw      $t8, 0x4($v0)
    sw      $t0, 0x0($v0)
    addiu   $a0, $a0, 0x8
    lui     $t6, 0xff10
    sw      $zero, 0x4($v1)
    sw      $ra, 0x0($v1)
    ori     $t6, $t6, 0x13f
    or      $a1, $a0, $zero
    sw      $t6, 0x0($a1)
    lui     $t7, 0x8015
    lw      $t7, 0x16a8($t7)
    lui     $t8, 0x8015
    lui     $at, 0x8000
    sll     $t9, $t7, 2
    addu    $t8, $t8, $t9
    lw      $t8, 0x4020($t8)
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    addu    $t6, $t8, $at
    sw      $t6, 0x4($a1)
    lui     $t7, 0xb400
    sw      $t7, 0x0($a2)
    lui     $t9, 0x802c
    lhu     $t9, 0x7024($t9)
    addiu   $a0, $a0, 0x8
    or      $a3, $a0, $zero
    sw      $t9, 0x4($a2)
    lui     $t6, 0x700
    lui     $t8, 0x103
    ori     $t8, $t8, 0x40
    addiu   $t6, $t6, 0xa40
    addiu   $a0, $a0, 0x8
    lui     $t7, 0x102
    sw      $t6, 0x4($a3)
    sw      $t8, 0x0($a3)
    ori     $t7, $t7, 0x40
    or      $v0, $a0, $zero
    sw      $t7, 0x0($v0)
    lui     $t9, 0x801d
    lw      $t9, -0x1ca8($t9)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    addiu   $t8, $t9, 0xa80
    sw      $t8, 0x4($v0)
    lui     $t6, 0x380
    ori     $t6, $t6, 0x10
    addiu   $a0, $a0, 0x8
    lui     $t7, 0x107
    addiu   $t7, $t7, 0xf728
    sw      $t6, 0x0($v1)
    or      $a1, $a0, $zero
    sw      $t7, 0x4($v1)
    lui     $t9, 0x107
    addiu   $t9, $t9, 0xf748
    addiu   $a0, $a0, 0x8
    sw      $t9, 0x4($a1)
    sw      $t0, 0x0($a1)
    or      $a2, $a0, $zero
    lui     $t8, 0xfb00
    sw      $t8, 0x0($a2)
    lui     $t6, 0x802c
    lw      $t6, 0x6f6c($t6)
    addiu   $at, $zero, 0xff00
    addiu   $a0, $a0, 0x8
    andi    $t7, $t6, 0xff
    or      $t9, $t7, $at
    sw      $t9, 0x4($a2)
    lui     $t6, 0x2d
    or      $a3, $a0, $zero
    lui     $t8, 0xed07
    ori     $t8, $t8, 0xc0fc
    ori     $t6, $t6, 0x29c
    sw      $t6, 0x4($a3)
    sw      $t8, 0x0($a3)
    lui     $t7, 0x802c
    lw      $t7, 0x6f80($t7)
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    bnez    $t7, branch_0x802c6d5c
    lui     $t3, 0xb700
    lui     $t9, 0xb900
    lui     $t8, 0x50
    ori     $t8, $t8, 0x41c8
    ori     $t9, $t9, 0x31d
    sw      $t9, 0x0($v0)
    sw      $t8, 0x4($v0)
    addiu   $a0, $a0, 0x8
branch_0x802c6d5c:
    beqz    $t2, branch_0x802c6d98
    lui     $t0, 0x2
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t6, 0xb600
    sw      $t6, 0x0($v0)
    sw      $t0, 0x4($v0)
    or      $v1, $a0, $zero
    lui     $t7, 0x600
    sw      $t7, 0x0($v1)
    lw      $t9, 0x0($t4)
    lui     $t1, 0x5
    addiu   $a0, $a0, 0x8
    addu    $t8, $t9, $t1
    sw      $t8, 0x4($v1)
branch_0x802c6d98:
    or      $v0, $a0, $zero
    lui     $t0, 0x2
    addiu   $a0, $a0, 0x8
    sw      $t0, 0x4($v0)
    sw      $t3, 0x0($v0)
    or      $v1, $a0, $zero
    lui     $t6, 0x600
    sw      $t6, 0x0($v1)
    lw      $t7, 0x0($t5)
    lui     $t1, 0x5
    lui     $t8, 0x802c
    addu    $t9, $t7, $t1
    sw      $t9, 0x4($v1)
    lw      $t8, 0x6f80($t8)
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    beqz    $t8, branch_0x802c6e08
    lui     $t6, 0xb900
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $ra, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t7, 0x50
    ori     $t7, $t7, 0x41c8
    ori     $t6, $t6, 0x31d
    sw      $t6, 0x0($v1)
    sw      $t7, 0x4($v1)
    addiu   $a0, $a0, 0x8
branch_0x802c6e08:
    beqz    $t2, branch_0x802c6e3c
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t9, 0xb600
    sw      $t9, 0x0($v0)
    sw      $t0, 0x4($v0)
    or      $v1, $a0, $zero
    lui     $t8, 0x600
    sw      $t8, 0x0($v1)
    lw      $t6, 0x4($t4)
    addiu   $a0, $a0, 0x8
    addu    $t7, $t6, $t1
    sw      $t7, 0x4($v1)
branch_0x802c6e3c:
    addiu   $a1, $a0, 0x8
    sw      $t3, 0x0($a0)
    sw      $t0, 0x4($a0)
    lui     $t9, 0x600
    sw      $t9, 0x0($a1)
    lw      $t8, 0x4($t5)
    addiu   $a2, $a1, 0x8
    addiu   $a3, $a2, 0x8
    addu    $t6, $t8, $t1
    sw      $t6, 0x4($a1)
    sw      $zero, 0x4($a2)
    sw      $ra, 0x0($a2)
    lui     $t9, 0x4f
    ori     $t9, $t9, 0xc3bc
    lui     $t7, 0xed00
    sw      $t7, 0x0($a3)
    sw      $t9, 0x4($a3)
    lw      $ra, 0x3c($sp)
    addiu   $v0, $a3, 0x8
    addiu   $sp, $sp, 0x68
    jr      $ra
    nop

.globl Function_0x802c6e94
Function_0x802c6e94: # 0x802c6e94
    jr      $ra
    nop

.globl Function_0x802c6e9c
Function_0x802c6e9c: # 0x802c6e9c
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa8a4
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x1f
    sw      $t6, -0x1c6c($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c70($at)
    sw      $t7, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0x8
    sw      $t8, -0x1c68($at)
    addiu   $v1, $zero, 0x1
    lui     $at, 0x801d
    sw      $v1, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    addiu   $t9, $zero, 0x14
    sw      $t9, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $at, 0x800d
    addiu   $t0, $zero, 0x3
    addiu   $sp, $sp, 0xffe8
    sw      $t0, 0x439c($at)
    sw      $ra, 0x14($sp)
    lui     $at, 0x802c
    sw      $v1, 0x6fe0($at)
    addiu   $a0, $zero, 0x5
    or      $a1, $zero, $zero
    jal     Function_0x801e6d10
    addiu   $a2, $zero, 0x14
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    addiu   $a0, $zero, 0x3a
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.incbin "./roms/Wave Race 64 (USA).z64", 0x1bdd98, ROM_0x1bde70 - 0x1bdd98
