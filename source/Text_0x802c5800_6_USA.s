

.include "source/constants.s"

.section .textoverlay6, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c5850
    sw      $a0, 0x18($sp)
    sw      $zero, 0x0($v0)
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x36
    or      $a0, $zero, $zero
    bne     $t7, $at, branch_0x802c5850
    lui     $at, 0x802c
    jal     osViBlack
    sw      $zero, 0x5ef0($at)
    jal     Function_0x800939e4
    lw      $a0, 0x18($sp)
    b       branch_0x802c58d0
    lw      $ra, 0x14($sp)
branch_0x802c5850:
    lui     $at, 0x800e
    sw      $zero, -0x5754($at)
    jal     Function_0x8008f914
    lw      $a0, 0x18($sp)
    lui     $a1, %hi(TrackNr_0x800d7ef0)
    lw      $a1, %lo(TrackNr_0x800d7ef0)($a1)
    jal     Function_0x80094758
    or      $a0, $v0, $zero
    jal     Function_0x80090cf8_DrawWaterBG
    or      $a0, $v0, $zero
    jal     Function_0x802c58dc
    or      $a0, $v0, $zero
    lui     $t8, 0x800e
    lw      $t8, -0x575c($t8)
    addiu   $at, $zero, 0x36
    sw      $v0, 0x18($sp)
    bne     $t8, $at, branch_0x802c58c0
    lui     $t9, 0x8023
    lh      $t9, -0x782a($t9)
    addiu   $at, $zero, 0x1
    bne     $t9, $at, branch_0x802c58b0
    nop
    jal     Function_0x800c2e98
    nop
branch_0x802c58b0:
    jal     Function_0x802c5d44
    nop
    b       branch_0x802c58cc
    lw      $v0, 0x18($sp)
branch_0x802c58c0:
    jal     Function_0x802c5e10
    nop
    lw      $v0, 0x18($sp)
branch_0x802c58cc:
    lw      $ra, 0x14($sp)
branch_0x802c58d0:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c58dc
Function_0x802c58dc: # 0x802c58dc
    addiu   $sp, $sp, 0xff78
    sw      $ra, 0x54($sp)
    sw      $s5, 0x50($sp)
    sw      $s4, 0x4c($sp)
    sw      $s3, 0x48($sp)
    sw      $s2, 0x44($sp)
    sw      $s1, 0x40($sp)
    sw      $s0, 0x3c($sp)
    lui     $t7, 0x107
    addiu   $t7, $t7, 0xf628
    lui     $t6, 0x600
    sw      $t6, 0x0($a0)
    sw      $t7, 0x4($a0)
    addiu   $s2, $a0, 0x8
    addiu   $t8, $zero, 0xd6
    addiu   $t9, $zero, 0x1a
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a0, $s2, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x35
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x26
    addiu   $t0, $zero, 0xae
    addiu   $t1, $zero, 0x10
    sw      $t1, 0x14($sp)
    sw      $t0, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x49
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x49
    addiu   $t2, $zero, 0xae
    addiu   $t3, $zero, 0x19
    sw      $t3, 0x14($sp)
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x49
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x5a
    or      $s2, $v0, $zero
    addiu   $s0, $zero, 0x8c
branch_0x802c5988:
    addiu   $t4, $zero, 0xae
    addiu   $t5, $zero, 0x10
    sw      $t5, 0x14($sp)
    sw      $t4, 0x10($sp)
    or      $a0, $s2, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x49
    jal     Function_0x800940d8
    or      $a3, $s0, $zero
    addiu   $s0, $s0, 0x12
    slti    $at, $s0, 0xd4
    bnez    $at, branch_0x802c5988
    or      $s2, $v0, $zero
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
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    addiu   $t6, $zero, 0x2a
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x12
    addiu   $a3, $zero, 0x46
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lui     $a2, 0x802c
    addiu   $t7, $zero, 0x4b
    sw      $t7, 0x10($sp)
    addiu   $a2, $a2, 0x5ee0
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e95e0
    addiu   $a3, $zero, 0x63
    lui     $a2, 0x802c
    addiu   $t8, $zero, 0x4b
    sw      $t8, 0x10($sp)
    addiu   $a2, $a2, 0x5ee4
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e95e0
    addiu   $a3, $zero, 0xca
    lui     $a2, 0x802c
    addiu   $t9, $zero, 0x5f
    sw      $t9, 0x10($sp)
    addiu   $a2, $a2, 0x5ee8
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e95e0
    addiu   $a3, $zero, 0x99
    addiu   $t0, $zero, 0x4d
    sw      $t0, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x15
    addiu   $a3, $zero, 0x90
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lui     $s0, 0x801d
    addiu   $s0, $s0, 0xb150
    addiu   $t1, $zero, 0x5c
    sw      $t1, 0x10($sp)
    lw      $a2, 0x0($s0)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    jal     Function_0x801ead94
    addiu   $a3, $zero, 0x63
    addiu   $s1, $sp, 0x60
    lui     $a1, 0x802c
    or      $s2, $v0, $zero
    addiu   $a1, $a1, 0x5eec
    or      $a0, $s1, $zero
    jal     Function_0x800c9f70
    lw      $a2, 0x4($s0)
    addiu   $t2, $zero, 0x5c
    sw      $t2, 0x10($sp)
    or      $a0, $s2, $zero
    or      $a1, $zero, $zero
    or      $a2, $s1, $zero
    jal     Function_0x801e95e0
    addiu   $a3, $zero, 0xc1
    lui     $s0, 0x802c
    lui     $s4, 0x802c
    or      $s2, $v0, $zero
    addiu   $s4, $s4, 0x5ef0
    addiu   $s0, $s0, 0x5eb0
    or      $s1, $zero, $zero
    addiu   $s5, $zero, 0x12
    addiu   $s3, $zero, 0x4
branch_0x802c5b3c:
    lw      $t3, 0x0($s4)
    beql    $s1, $t3, branch_0x802c5b7c
    addiu   $s1, $s1, 0x1
    multu   $s1, $s5
    lh      $a3, 0x0($s0)
    lw      $a2, 0x4($s0)
    sw      $zero, 0x14($sp)
    or      $a0, $s2, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a3, $a3, 0x8a
    mflo    $t4
    addiu   $t5, $t4, 0x8f
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $t5, 0x10($sp)
    or      $s2, $v0, $zero
    addiu   $s1, $s1, 0x1
branch_0x802c5b7c:
    bne     $s1, $s3, branch_0x802c5b3c
    addiu   $s0, $s0, 0x8
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
    or      $a0, $s2, $zero
    addiu   $a1, $zero, 0x6
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lw      $v1, 0x0($s4)
    lui     $t7, 0x802c
    addiu   $t7, $t7, 0x5eb0
    multu   $v1, $s5
    sll     $t6, $v1, 3
    addu    $s0, $t6, $t7
    lh      $a3, 0x0($s0)
    lw      $a2, 0x4($s0)
    sw      $zero, 0x14($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a3, $a3, 0x8a
    mflo    $t8
    addiu   $t9, $t8, 0x8f
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $t9, 0x10($sp)
    lw      $ra, 0x54($sp)
    lw      $s0, 0x3c($sp)
    lw      $s1, 0x40($sp)
    lw      $s2, 0x44($sp)
    lw      $s3, 0x48($sp)
    lw      $s4, 0x4c($sp)
    lw      $s5, 0x50($sp)
    jr      $ra
    addiu   $sp, $sp, 0x88

Function_0x802c5c4c: # 0x802c5c4c
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa8a4
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x37
    sw      $t6, -0x1c6c($at)
    lui     $at, 0x801d
    sw      $a0, -0x1c70($at)
    sw      $t7, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0x12
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
    addiu   $a0, $zero, 0x5
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    lui     $v0, 0x801d
    lw      $v0, -0x1c70($v0)
    addiu   $at, $zero, 0x2
    bnel    $v0, $at, branch_0x802c5cec
    addiu   $at, $zero, 0xa
    jal     Function_0x800c1d00
    or      $a0, $zero, $zero
    b       branch_0x802c5d38
    lw      $ra, 0x14($sp)

Function_0x802c5ce8: # 0x802c5ce8
    addiu   $at, $zero, 0xa
branch_0x802c5cec:
    bnel    $v0, $at, branch_0x802c5d08
    addiu   $at, $zero, 0x14
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x1
    b       branch_0x802c5d38
    lw      $ra, 0x14($sp)

.globl Function_0x802c5d04
Function_0x802c5d04: # 0x802c5d04
    addiu   $at, $zero, 0x14
branch_0x802c5d08:
    bnel    $v0, $at, branch_0x802c5d24
    addiu   $at, $zero, 0x28
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0xa
    b       branch_0x802c5d38
    lw      $ra, 0x14($sp)

.globl Function_0x802c5d20
Function_0x802c5d20: # 0x802c5d20
    addiu   $at, $zero, 0x28
branch_0x802c5d24:
    bnel    $v0, $at, branch_0x802c5d38
    lw      $ra, 0x14($sp)
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x7
    lw      $ra, 0x14($sp)
branch_0x802c5d38:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5d44
Function_0x802c5d44: # 0x802c5d44
    lui     $v0, 0x801d
    lhu     $v0, -0x1c0e($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    andi    $t6, $v0, 0xb000
    beqz    $t6, branch_0x802c5d94
    andi    $t9, $v0, 0x800
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x5ef0
    lw      $t7, 0x0($v0)
    lui     $a0, 0x802c
    sll     $t8, $t7, 2
    addu    $a0, $a0, $t8
    jal     Function_0x802c5c4c
    lw      $a0, 0x5ed0($a0)
    addiu   $a0, $zero, 0x11
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c5e04
    lw      $ra, 0x14($sp)
branch_0x802c5d94:
    beqz    $t9, branch_0x802c5dd0
    andi    $t4, $v0, 0x400
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x5ef0
    lw      $t0, 0x0($v0)
    addiu   $t3, $zero, 0x3
    addiu   $a0, $zero, 0x10
    addiu   $t1, $t0, 0xffff
    bgez    $t1, branch_0x802c5dc0
    sw      $t1, 0x0($v0)
    sw      $t3, 0x0($v0)
branch_0x802c5dc0:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c5e04
    lw      $ra, 0x14($sp)
branch_0x802c5dd0:
    beqz    $t4, branch_0x802c5e00
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x5ef0
    lw      $t5, 0x0($v0)
    addiu   $at, $zero, 0x4
    addiu   $a0, $zero, 0x10
    addiu   $t6, $t5, 0x1
    bne     $t6, $at, branch_0x802c5df8
    sw      $t6, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x802c5df8:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c5e00:
    lw      $ra, 0x14($sp)
branch_0x802c5e04:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5e10
Function_0x802c5e10: # 0x802c5e10
    lui     $t6, 0x8023
    lh      $t6, -0x782a($t6)
    addiu   $sp, $sp, 0xffe8
    addiu   $at, $zero, 0x1
    bne     $t6, $at, branch_0x802c5e94
    sw      $ra, 0x14($sp)
    lui     $v0, 0x801d
    lw      $v0, -0x1c70($v0)
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c5e5c
    addiu   $at, $zero, 0xa
    beq     $v0, $at, branch_0x802c5e7c
    addiu   $at, $zero, 0x14
    beq     $v0, $at, branch_0x802c5e8c
    addiu   $at, $zero, 0x28
    beq     $v0, $at, branch_0x802c5e6c
    nop
    b       branch_0x802c5e98
    lw      $ra, 0x14($sp)
branch_0x802c5e5c:
    jal     Function_0x801eaf10_ChangeStateTo2
    nop
    b       branch_0x802c5e98
    lw      $ra, 0x14($sp)
branch_0x802c5e6c:
    jal     Function_ChangeStateTo28
    nop
    b       branch_0x802c5e98
    lw      $ra, 0x14($sp)
branch_0x802c5e7c:
    jal     Function_ChangeStateToA
    nop
    b       branch_0x802c5e98
    lw      $ra, 0x14($sp)
branch_0x802c5e8c:
    jal     Function_0x801ebd74_ChangeStateTo14
    nop
branch_0x802c5e94:
    lw      $ra, 0x14($sp)
branch_0x802c5e98:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.incbin "./roms/Wave Race 64 (USA).z64", 0x1c4164, ROM_0x1c41b0 - 0x1c4164
