

.include "source/constants.s"

.section .textoverlay16, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    lui     $t6, 0x801d
    lw      $t6, -0x1c64($t6)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c5830
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x50
    bnel    $t7, $at, branch_0x802c5834
    lw      $ra, 0x14($sp)
    jal     Function_0x802c5840
    nop
branch_0x802c5830:
    lw      $ra, 0x14($sp)
branch_0x802c5834:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5840
Function_0x802c5840: # 0x802c5840
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x61ec
    addiu   $a1, $zero, 0x4
    sw      $a1, 0x0($a2)
    lui     $a0, 0x801d
    lw      $a0, -0x1c98($a0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    bne     $a1, $a0, branch_0x802c5884
    or      $v1, $zero, $zero
    lui     $t6, 0x801d
    lw      $t6, -0x1c6c($t6)
    addiu   $at, $zero, 0x43
    bne     $t6, $at, branch_0x802c58ac
    nop
    b       branch_0x802c58ac
    addiu   $v1, $zero, 0x1
branch_0x802c5884:
    lui     $v0, 0x801d
    lw      $v0, -0x1c6c($v0)
    addiu   $at, $zero, 0x64
    beq     $v0, $at, branch_0x802c58ac
    addiu   $at, $zero, 0x32
    beq     $v0, $at, branch_0x802c58ac
    addiu   $at, $zero, 0x39
    beq     $v0, $at, branch_0x802c58ac
    nop
    addiu   $v1, $zero, 0x1
branch_0x802c58ac:
    bne     $a1, $a0, branch_0x802c58b8
    addiu   $t7, $zero, 0x2
    sw      $t7, 0x0($a2)
branch_0x802c58b8:
    beqz    $v1, branch_0x802c58e8
    lui     $v0, 0x802c
    addiu   $t8, $zero, 0x1
    lui     $at, 0x802c
    lui     $v0, 0x802c
    sw      $t8, 0x61e0($at)
    addiu   $v0, $v0, 0x61e8
    addiu   $t9, $zero, 0x4c
    sw      $t9, 0x0($v0)
    lui     $at, 0x802c
    b       branch_0x802c5914
    sw      $t9, 0x61e4($at)
branch_0x802c58e8:
    lui     $at, 0x802c
    sw      $zero, 0x61e0($at)
    lui     $at, 0x802c
    addiu   $t1, $zero, 0x140
    addiu   $v0, $v0, 0x61e8
    sw      $t1, 0x61e4($at)
    addiu   $t2, $zero, 0xff57
    sw      $t2, 0x0($v0)
    addiu   $a0, $zero, 0x31
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c5914:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5924
Function_0x802c5924: # 0x802c5924
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c59c4
    sw      $a0, 0x18($sp)
    sw      $zero, 0x0($v0)
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x50
    lui     $v1, 0x801d
    bne     $t7, $at, branch_0x802c59c4
    nop
    lw      $v1, -0x1c6c($v1)
    addiu   $at, $zero, 0x32
    beq     $v1, $at, branch_0x802c59c4
    addiu   $at, $zero, 0x39
    beq     $v1, $at, branch_0x802c59c4
    addiu   $at, $zero, 0x64
    beq     $v1, $at, branch_0x802c59c4
    lui     $t8, 0x801d
    lw      $t8, -0x1c98($t8)
    addiu   $at, $zero, 0x4
    or      $v0, $zero, $zero
    bne     $t8, $at, branch_0x802c59a0
    addiu   $at, $zero, 0x43
    bne     $v1, $at, branch_0x802c59a4
    nop
    b       branch_0x802c59a4
    addiu   $v0, $zero, 0x1
branch_0x802c59a0:
    addiu   $v0, $zero, 0x1
branch_0x802c59a4:
    beqz    $v0, branch_0x802c59c4
    nop
    jal     osViBlack
    or      $a0, $zero, $zero
    jal     Function_0x800939e4
    lw      $a0, 0x18($sp)
    b       branch_0x802c5b64
    lw      $ra, 0x14($sp)
branch_0x802c59c4:
    lui     $at, 0x800e
    sw      $zero, -0x5754($at)
    jal     Function_0x8008f914
    lw      $a0, 0x18($sp)
    lui     $a1, %hi(Unknown_0x800d7ef0_TrackNr)
    lw      $a1, %lo(Unknown_0x800d7ef0_TrackNr)($a1)
    jal     Function_0x80094758
    or      $a0, $v0, $zero
    jal     Function_0x80090cf8_DrawWaterBG
    or      $a0, $v0, $zero
    jal     Function_0x802c5b70
    or      $a0, $v0, $zero
    lui     $t9, 0x800e
    lw      $t9, -0x575c($t9)
    addiu   $at, $zero, 0x50
    sw      $v0, 0x18($sp)
    bne     $t9, $at, branch_0x802c5a1c
    lui     $t0, 0x8023
    jal     Function_0x802c5f60
    nop
    b       branch_0x802c5b60
    lw      $v0, 0x18($sp)
branch_0x802c5a1c:
    lh      $t0, -0x782a($t0)
    addiu   $at, $zero, 0x1
    lui     $v0, 0x801d
    bnel    $t0, $at, branch_0x802c5b60
    lw      $v0, 0x18($sp)
    lw      $v0, -0x1c98($v0)
    lui     $t1, 0x801c
    addiu   $at, $zero, 0xb
    bnez    $v0, branch_0x802c5a98
    nop
    lw      $t1, 0x23b0($t1)
    lui     $t2, 0x801c
    lui     $t3, 0x800e
    bnez    $t1, branch_0x802c5a64
    nop
    lw      $t2, 0x23b4($t2)
    beqz    $t2, branch_0x802c5ab8
    nop
branch_0x802c5a64:
    lh      $t3, -0x5718($t3)
    lui     $a0, %hi(Unknown_0x800d7ef0_TrackNr)
    beqz    $t3, branch_0x802c5a88
    nop
    lui     $a0, %hi(Unknown_0x800d7ef0_TrackNr)
    jal     Function_0x8007c1a4
    lw      $a0, %lo(Unknown_0x800d7ef0_TrackNr)($a0)
    b       branch_0x802c5ab8
    nop
branch_0x802c5a88:
    jal     Function_0x8007be44
    lw      $a0, %lo(Unknown_0x800d7ef0_TrackNr)($a0)
    b       branch_0x802c5ab8
    nop
branch_0x802c5a98:
    bne     $v0, $at, branch_0x802c5ab8
    lui     $t4, 0x801c
    lw      $t4, 0x2688($t4)
    lui     $a0, %hi(Unknown_0x800d7ef0_TrackNr)
    beqz    $t4, branch_0x802c5ab8
    nop
    jal     Function_0x8007c058
    lw      $a0, %lo(Unknown_0x800d7ef0_TrackNr)($a0)
branch_0x802c5ab8:
    lui     $t5, 0x801d
    lw      $t5, -0x1c70($t5)
    addiu   $t6, $t5, 0xfffe
    sltiu   $at, $t6, 0x27
    beqz    $at, branch_0x802c5b5c
    sll     $t6, $t6, 2
    lui     $at, 0x802c
    addu    $at, $at, $t6
    lw      $t6, 0x6140($at)
    jr      $t6
    nop

Function_0x802c5ae4: # 0x802c5ae4
    lui     $v0, 0x801d
    addiu   $t7, $zero, 0x1
    lui     $at, 0x801d
    addiu   $v0, $v0, 0xb094
    sw      $t7, -0x1ba8($at)
    sw      $zero, 0x0($v0)
    lui     $t8, 0x801d
    lw      $t8, -0x4f68($t8)
    addiu   $t9, $zero, 0x1
    bnez    $t8, branch_0x802c5b14
    nop
    sw      $t9, 0x0($v0)
branch_0x802c5b14:
    jal     Function_0x801eb6ac_ChangeStateTo1e
    nop
    b       branch_0x802c5b60
    lw      $v0, 0x18($sp)

Function_0x802c5b24: # 0x802c5b24
    jal     Function_ChangeStateTo28
    nop
    b       branch_0x802c5b60
    lw      $v0, 0x18($sp)

.globl Function_0x802c5b34
Function_0x802c5b34: # 0x802c5b34
    jal     Function_ChangeStateToA
    nop
    b       branch_0x802c5b60
    lw      $v0, 0x18($sp)

.globl Function_0x802c5b44
Function_0x802c5b44: # 0x802c5b44
    jal     Function_0x801ebd74_ChangeStateTo14
    nop
    b       branch_0x802c5b60
    lw      $v0, 0x18($sp)

.globl Function_0x802c5b54
Function_0x802c5b54: # 0x802c5b54
    jal     Function_0x801eaf10_ChangeStateTo2
    nop
branch_0x802c5b5c:
    lw      $v0, 0x18($sp)
branch_0x802c5b60:
    lw      $ra, 0x14($sp)
branch_0x802c5b64:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5b70
Function_0x802c5b70: # 0x802c5b70
    addiu   $sp, $sp, 0xffa0
    sw      $s5, 0x50($sp)
    sw      $ra, 0x54($sp)
    sw      $s4, 0x4c($sp)
    sw      $s3, 0x48($sp)
    sw      $s2, 0x44($sp)
    sw      $s1, 0x40($sp)
    sw      $s0, 0x3c($sp)
    lui     $t7, 0x107
    lui     $s5, 0x802c
    addiu   $t7, $t7, 0xf628
    lui     $t6, 0x600
    addiu   $s5, $s5, 0x61ec
    sw      $t6, 0x0($a0)
    sw      $t7, 0x4($a0)
    lw      $t8, 0x0($s5)
    addiu   $s2, $a0, 0x8
    or      $s0, $zero, $zero
    blez    $t8, branch_0x802c5c24
    addiu   $s1, $zero, 0x61
    lui     $s4, 0x802c
    lui     $s3, 0x802c
    addiu   $s3, $s3, 0x61e4
    addiu   $s4, $s4, 0x61e8
branch_0x802c5bd0:
    andi    $t9, $s0, 0x1
    beqz    $t9, branch_0x802c5be4
    or      $a0, $s2, $zero
    b       branch_0x802c5be8
    lw      $v1, 0x0($s3)
branch_0x802c5be4:
    lw      $v1, 0x0($s4)
branch_0x802c5be8:
    addiu   $t0, $zero, 0xa9
    addiu   $t1, $zero, 0x10
    sw      $t1, 0x14($sp)
    sw      $t0, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $v1, 0x8
    jal     Function_0x800940d8
    or      $a3, $s1, $zero
    lw      $t2, 0x0($s5)
    addiu   $s0, $s0, 0x1
    addiu   $s1, $s1, 0x12
    slt     $at, $s0, $t2
    bnez    $at, branch_0x802c5bd0
    or      $s2, $v0, $zero
    or      $s0, $zero, $zero
branch_0x802c5c24:
    lui     $s3, 0x802c
    lui     $s4, 0x802c
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $s4, $s4, 0x61e8
    addiu   $s3, $s3, 0x61e4
    sw      $t2, 0x34($sp)
    sw      $t1, 0x30($sp)
    sw      $t0, 0x2c($sp)
    sw      $t9, 0x28($sp)
    sw      $t8, 0x24($sp)
    sw      $t7, 0x20($sp)
    sw      $t6, 0x1c($sp)
    sw      $t5, 0x18($sp)
    sw      $t4, 0x14($sp)
    sw      $t3, 0x10($sp)
    or      $a0, $s2, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lui     $a0, 0x801d
    lw      $a0, -0x1c98($a0)
    addiu   $at, $zero, 0x4
    or      $s2, $v0, $zero
    bne     $a0, $at, branch_0x802c5cbc
    lui     $s1, 0x802c
    lui     $s1, 0x802c
    b       branch_0x802c5cc0
    addiu   $s1, $s1, 0x6114
branch_0x802c5cbc:
    addiu   $s1, $s1, 0x60f4
branch_0x802c5cc0:
    lw      $v1, 0x0($s5)
    lui     $s5, 0x802c
    addiu   $s5, $s5, 0x60f0
    blez    $v1, branch_0x802c5d48
    nop
branch_0x802c5cd4:
    lw      $t3, 0x0($s5)
    sll     $v0, $s0, 3
    addu    $v0, $v0, $s0
    beq     $s0, $t3, branch_0x802c5d30
    sll     $v0, $v0, 1
    andi    $t4, $s0, 0x1
    beqz    $t4, branch_0x802c5cfc
    addiu   $v0, $v0, 0x64
    b       branch_0x802c5d00
    lw      $v1, 0x0($s3)
branch_0x802c5cfc:
    lw      $v1, 0x0($s4)
branch_0x802c5d00:
    lh      $t5, 0x0($s1)
    lw      $a2, 0x4($s1)
    sw      $zero, 0x14($sp)
    addu    $a3, $v1, $t5
    addiu   $a3, $a3, 0x3c
    sw      $v0, 0x10($sp)
    or      $a0, $s2, $zero
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a1, $zero, 0x1
    lui     $v1, 0x802c
    lw      $v1, 0x61ec($v1)
    or      $s2, $v0, $zero
branch_0x802c5d30:
    addiu   $s0, $s0, 0x1
    slt     $at, $s0, $v1
    bnez    $at, branch_0x802c5cd4
    addiu   $s1, $s1, 0x8
    lui     $a0, 0x801d
    lw      $a0, -0x1c98($a0)
branch_0x802c5d48:
    lui     $s5, 0x802c
    addiu   $s5, $s5, 0x60f0
    lw      $s0, 0x0($s5)
    andi    $t6, $s0, 0x1
    beqzl   $t6, branch_0x802c5d6c
    lw      $v1, 0x0($s4)
    b       branch_0x802c5d6c
    lw      $v1, 0x0($s3)

.globl Function_0x802c5d68
Function_0x802c5d68: # 0x802c5d68
    lw      $v1, 0x0($s4)
branch_0x802c5d6c:
    addiu   $at, $zero, 0x4
    bne     $a0, $at, branch_0x802c5d8c
    addiu   $a1, $zero, 0x6
    lui     $t8, 0x802c
    addiu   $t8, $t8, 0x6114
    sll     $t7, $s0, 3
    b       branch_0x802c5d9c
    addu    $s1, $t7, $t8
branch_0x802c5d8c:
    lui     $t0, 0x802c
    addiu   $t0, $t0, 0x60f4
    sll     $t9, $s0, 3
    addu    $s1, $t9, $t0
branch_0x802c5d9c:
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
    addiu   $a2, $zero, 0xff
    addiu   $a3, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    sw      $v1, 0x58($sp)
    lw      $v1, 0x58($sp)
    lh      $t1, 0x0($s1)
    sll     $t2, $s0, 3
    addu    $t2, $t2, $s0
    sll     $t2, $t2, 1
    addiu   $t3, $t2, 0x64
    lw      $a2, 0x4($s1)
    addu    $a3, $v1, $t1
    addiu   $a3, $a3, 0x3c
    sw      $zero, 0x14($sp)
    sw      $t3, 0x10($sp)
    or      $a0, $v0, $zero
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a1, $zero, 0x1
    lw      $ra, 0x54($sp)
    lw      $s0, 0x3c($sp)
    lw      $s1, 0x40($sp)
    lw      $s2, 0x44($sp)
    lw      $s3, 0x48($sp)
    lw      $s4, 0x4c($sp)
    lw      $s5, 0x50($sp)
    jr      $ra
    addiu   $sp, $sp, 0x60

Function_0x802c5e5c: # 0x802c5e5c
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa8a4
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x51
    sw      $t6, -0x1c6c($at)
    lui     $at, 0x801d
    sw      $a0, -0x1c70($at)
    sw      $t7, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0xd
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
    addiu   $a0, $zero, 0x5
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $v0, 0x801d
    lw      $v0, -0x1c70($v0)
    addiu   $at, $zero, 0x2
    bnel    $v0, $at, branch_0x802c5f08
    addiu   $at, $zero, 0x14
    jal     Function_0x800c1d00
    or      $a0, $zero, $zero
    b       branch_0x802c5f54
    lw      $ra, 0x14($sp)

.globl Function_0x802c5f04
Function_0x802c5f04: # 0x802c5f04
    addiu   $at, $zero, 0x14
branch_0x802c5f08:
    bnel    $v0, $at, branch_0x802c5f24
    addiu   $at, $zero, 0xa
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0xa
    b       branch_0x802c5f54
    lw      $ra, 0x14($sp)

.globl Function_0x802c5f20
Function_0x802c5f20: # 0x802c5f20
    addiu   $at, $zero, 0xa
branch_0x802c5f24:
    bnel    $v0, $at, branch_0x802c5f40
    addiu   $at, $zero, 0x28
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x1
    b       branch_0x802c5f54
    lw      $ra, 0x14($sp)

.globl Function_0x802c5f3c
Function_0x802c5f3c: # 0x802c5f3c
    addiu   $at, $zero, 0x28
branch_0x802c5f40:
    bnel    $v0, $at, branch_0x802c5f54
    lw      $ra, 0x14($sp)
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x7
    lw      $ra, 0x14($sp)
branch_0x802c5f54:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5f60
Function_0x802c5f60: # 0x802c5f60
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x61e0
    lw      $t6, 0x0($a0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    bnez    $t6, branch_0x802c5fbc
    lui     $v0, 0x802c
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x61e4
    lw      $t7, 0x0($v1)
    addiu   $t9, $zero, 0x1
    addiu   $t1, $zero, 0x98
    addiu   $v0, $t7, 0xffec
    slti    $at, $v0, 0x4c
    beqz    $at, branch_0x802c5fac
    sw      $v0, 0x0($v1)
    addiu   $v0, $zero, 0x4c
    sw      $t9, 0x0($a0)
    sw      $v0, 0x0($v1)
branch_0x802c5fac:
    subu    $t2, $t1, $v0
    lui     $at, 0x802c
    b       branch_0x802c60d8
    sw      $t2, 0x61e8($at)
branch_0x802c5fbc:
    addiu   $v0, $v0, 0x613c
    lw      $t3, 0x0($v0)
    addiu   $t4, $zero, 0x1
    bnez    $t3, branch_0x802c5fd8
    nop
    jal     Function_0x800c2e98
    sw      $t4, 0x0($v0)
branch_0x802c5fd8:
    lui     $v0, 0x801d
    lhu     $v0, -0x1c46($v0)
    lui     $t6, 0x801d
    andi    $t5, $v0, 0xb000
    beqz    $t5, branch_0x802c6058
    andi    $t1, $v0, 0x800
    lw      $t6, -0x1c98($t6)
    addiu   $at, $zero, 0x4
    lui     $v0, 0x802c
    bne     $t6, $at, branch_0x802c602c
    addiu   $v0, $v0, 0x60f0
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x60f0
    lw      $t7, 0x0($v0)
    lui     $a0, 0x802c
    sll     $t8, $t7, 2
    addu    $a0, $a0, $t8
    jal     Function_0x802c5e5c
    lw      $a0, 0x6134($a0)
    b       branch_0x802c6048
    addiu   $a0, $zero, 0x11
branch_0x802c602c:
    lw      $t9, 0x0($v0)
    lui     $a0, 0x802c
    sll     $t0, $t9, 2
    addu    $a0, $a0, $t0
    jal     Function_0x802c5e5c
    lw      $a0, 0x6124($a0)
    addiu   $a0, $zero, 0x11
branch_0x802c6048:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c60dc
    lw      $ra, 0x14($sp)
branch_0x802c6058:
    beqz    $t1, branch_0x802c609c
    andi    $t7, $v0, 0x400
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x60f0
    lw      $t2, 0x0($v0)
    lui     $t5, 0x802c
    addiu   $a0, $zero, 0x10
    addiu   $t3, $t2, 0xffff
    bgez    $t3, branch_0x802c608c
    sw      $t3, 0x0($v0)
    lw      $t5, 0x61ec($t5)
    addiu   $t6, $t5, 0xffff
    sw      $t6, 0x0($v0)
branch_0x802c608c:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c60dc
    lw      $ra, 0x14($sp)
branch_0x802c609c:
    beqz    $t7, branch_0x802c60d8
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x60f0
    lw      $t8, 0x0($v0)
    lui     $t1, 0x802c
    addiu   $a0, $zero, 0x10
    addiu   $t9, $t8, 0x1
    sw      $t9, 0x0($v0)
    lw      $t1, 0x61ec($t1)
    slt     $at, $t9, $t1
    bnez    $at, branch_0x802c60d0
    nop
    sw      $zero, 0x0($v0)
branch_0x802c60d0:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c60d8:
    lw      $ra, 0x14($sp)
branch_0x802c60dc:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.incbin "./roms/Wave Race 64 (USA).z64", 0x1cf828, 0x1cf920 - 0x1cf828
