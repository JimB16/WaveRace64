

.include "source/constants.s"

.section .textoverlay13, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    addiu   $sp, $sp, 0xff58
    lui     $v0, %hi(Unknown_0x801ce39c)
    addiu   $v0, $v0, %lo(Unknown_0x801ce39c)
    lw      $t6, 0x0($v0)
    sw      $s2, 0x48($sp)
    or      $s2, $a0, $zero
    sw      $ra, 0x64($sp)
    sw      $fp, 0x60($sp)
    sw      $s7, 0x5c($sp)
    sw      $s6, 0x58($sp)
    sw      $s5, 0x54($sp)
    sw      $s4, 0x50($sp)
    sw      $s3, 0x4c($sp)
    sw      $s1, 0x44($sp)
    beqz    $t6, branch_0x802c5868
    sw      $s0, 0x40($sp)
    sw      $zero, 0x0($v0)
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x48
    bne     $t7, $at, branch_0x802c5868
    nop
    jal     Function_0x800939e4
    nop
    b       branch_0x802c5d1c
    lw      $ra, 0x64($sp)
branch_0x802c5868:
    lui     $at, 0x800e
    or      $v0, $s2, $zero
    sw      $zero, -0x5754($at)
    addiu   $s2, $s2, 0x8
    lui     $t8, 0x103
    lui     $t9, 0x700
    addiu   $t9, $t9, 0x0
    ori     $t8, $t8, 0x40
    or      $v1, $s2, $zero
    sw      $t8, 0x0($v0)
    sw      $t9, 0x4($v0)
    addiu   $s2, $s2, 0x8
    lui     $t0, 0x102
    lui     $t1, 0x200
    addiu   $t1, $t1, 0xa40
    ori     $t0, $t0, 0x40
    or      $a0, $s2, $zero
    sw      $t0, 0x0($v1)
    sw      $t1, 0x4($v1)
    addiu   $s2, $s2, 0x8
    lui     $t2, 0x107
    lui     $a2, 0x600
    addiu   $t2, $t2, 0xf550
    or      $a1, $s2, $zero
    sw      $t2, 0x4($a0)
    sw      $a2, 0x0($a0)
    lui     $t3, 0x107
    addiu   $t3, $t3, 0xf628
    sw      $t3, 0x4($a1)
    sw      $a2, 0x0($a1)
    addiu   $s2, $s2, 0x8
    addiu   $s0, $zero, 0x64
branch_0x802c58e8:
    addiu   $t4, $zero, 0x94
    addiu   $t5, $zero, 0x10
    sw      $t5, 0x14($sp)
    sw      $t4, 0x10($sp)
    or      $a0, $s2, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1c
    jal     Function_0x800940d8
    or      $a3, $s0, $zero
    addiu   $t6, $zero, 0x69
    addiu   $t7, $zero, 0x10
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xb2
    jal     Function_0x800940d8
    or      $a3, $s0, $zero
    addiu   $s0, $s0, 0x15
    slti    $at, $s0, 0xa3
    bnez    $at, branch_0x802c58e8
    or      $s2, $v0, $zero
    addiu   $t8, $zero, 0x6b
    addiu   $t9, $zero, 0x10
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x6a
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xa3
    addiu   $t0, $zero, 0xff
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
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    addiu   $t0, $zero, 0x32
    sw      $t0, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x13
    addiu   $a3, $zero, 0x7a
    jal     Function_0x801e3c40_DrawStrings
    sw      $zero, 0x14($sp)
    lui     $s4, 0x802c
    lui     $s3, 0x800e
    lui     $s7, 0x802c
    or      $s2, $v0, $zero
    addiu   $s7, $s7, 0x6150
    addiu   $s3, $s3, 0xa76c
    addiu   $s4, $s4, 0x6160
    or      $s1, $zero, $zero
    addiu   $s5, $zero, 0x67
    addiu   $s6, $zero, 0x66
    lw      $fp, 0x9c($sp)
branch_0x802c5a14:
    lw      $t1, 0x0($s7)
    or      $a0, $s2, $zero
    addiu   $a2, $zero, 0xff
    bne     $s1, $t1, branch_0x802c5a30
    addiu   $a3, $zero, 0xff
    b       branch_0x802c5a34
    addiu   $a1, $zero, 0x6
branch_0x802c5a30:
    or      $a1, $zero, $zero
branch_0x802c5a34:
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
    jal     Function_0x801e91f4_changePalette
    sw      $t2, 0x10($sp)
    lh      $a3, 0x0($s4)
    lw      $a2, 0x4($s4)
    sw      $zero, 0x14($sp)
    sw      $s5, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e3c40_DrawStrings
    addiu   $a3, $a3, 0x26
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x61b0
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a3, $zero, 0x9e
    jal     Function_0x801e95e0
    sw      $s6, 0x10($sp)
    lw      $t2, 0x0($s7)
    or      $s2, $v0, $zero
    or      $a0, $s2, $zero
    bne     $s1, $t2, branch_0x802c5b18
    addiu   $a2, $zero, 0xff
    sll     $t4, $s1, 2
    lui     $t5, 0x802c
    addu    $t5, $t5, $t4
    lw      $t5, 0x6154($t5)
    lw      $t3, 0x0($s3)
    addiu   $at, $zero, 0x2
    bne     $t3, $t5, branch_0x802c5b00
    nop
    b       branch_0x802c5b1c
    addiu   $a1, $zero, 0x6
branch_0x802c5b00:
    bne     $s1, $at, branch_0x802c5b10
    nop
    b       branch_0x802c5b1c
    addiu   $a1, $zero, 0x6
branch_0x802c5b10:
    b       branch_0x802c5b1c
    addiu   $a1, $zero, 0x4
branch_0x802c5b18:
    or      $a1, $zero, $zero
branch_0x802c5b1c:
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t5, $zero, 0xff
    sw      $t5, 0x34($sp)
    sw      $t3, 0x30($sp)
    sw      $t4, 0x2c($sp)
    sw      $t2, 0x28($sp)
    sw      $t1, 0x24($sp)
    sw      $t0, 0x20($sp)
    sw      $t9, 0x1c($sp)
    sw      $t8, 0x18($sp)
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    bnez    $s1, branch_0x802c5b98
    or      $s2, $v0, $zero
    lw      $t6, 0x0($s3)
    lui     $fp, 0x802c
    or      $s0, $zero, $zero
    sll     $t7, $t6, 2
    addu    $fp, $fp, $t7
    b       branch_0x802c5bd4
    lw      $fp, 0x6178($fp)
branch_0x802c5b98:
    addiu   $at, $zero, 0x1
    bne     $s1, $at, branch_0x802c5bc0
    addiu   $s0, $zero, 0x1
    lw      $t8, 0x0($s3)
    lui     $fp, 0x802c
    or      $s0, $zero, $zero
    sll     $t9, $t8, 2
    addu    $fp, $fp, $t9
    b       branch_0x802c5bd4
    lw      $fp, 0x6184($fp)
branch_0x802c5bc0:
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x61b4
    addiu   $a0, $sp, 0x84
    jal     Function_0x800c9f70
    lw      $a2, 0x0($s3)
branch_0x802c5bd4:
    bnez    $s0, branch_0x802c5c00
    or      $a0, $s2, $zero
    or      $a0, $s2, $zero
    addiu   $a1, $zero, 0x1
    or      $a2, $fp, $zero
    addiu   $a3, $zero, 0xbc
    sw      $s5, 0x10($sp)
    jal     Function_0x801e3c40_DrawStrings
    sw      $zero, 0x14($sp)
    b       branch_0x802c5c18
    or      $s2, $v0, $zero
branch_0x802c5c00:
    addiu   $a1, $zero, 0x2
    addiu   $a2, $sp, 0x84
    addiu   $a3, $zero, 0xbc
    jal     Function_0x801e95e0
    sw      $s6, 0x10($sp)
    or      $s2, $v0, $zero
branch_0x802c5c18:
    addiu   $s1, $s1, 0x1
    addiu   $v0, $zero, 0x3
    addiu   $s5, $s5, 0x15
    addiu   $s6, $s6, 0x15
    addiu   $s4, $s4, 0x8
    bne     $s1, $v0, branch_0x802c5a14
    addiu   $s3, $s3, 0x4
    lw      $t0, 0x0($s7)
    sw      $fp, 0x9c($sp)
    or      $a0, $s2, $zero
    bne     $v0, $t0, branch_0x802c5c50
    addiu   $a2, $zero, 0xff
    b       branch_0x802c5c54
    addiu   $a1, $zero, 0x6
branch_0x802c5c50:
    or      $a1, $zero, $zero
branch_0x802c5c54:
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t3, $zero, 0xff
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
    sw      $t3, 0x1c($sp)
    sw      $t4, 0x18($sp)
    sw      $t2, 0x14($sp)
    sw      $t1, 0x10($sp)
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    addiu   $t1, $zero, 0xa6
    sw      $t1, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x3f
    addiu   $a3, $zero, 0x90
    jal     Function_0x801e3c40_DrawStrings
    sw      $zero, 0x14($sp)
    lui     $t2, 0x800e
    lw      $t2, -0x575c($t2)
    addiu   $at, $zero, 0x48
    or      $s2, $v0, $zero
    bne     $t2, $at, branch_0x802c5cf4
    lui     $t4, 0x8023
    jal     Function_0x802c5d48
    nop
    b       branch_0x802c5d18
    or      $v0, $s2, $zero
branch_0x802c5cf4:
    lh      $t4, -0x782a($t4)
    addiu   $at, $zero, 0x1
    bnel    $t4, $at, branch_0x802c5d18
    or      $v0, $s2, $zero
    jal     Function_0x801ec094_ChangeStateTo3c
    nop
    jal     Function_0x8007c434
    nop
    or      $v0, $s2, $zero
branch_0x802c5d18:
    lw      $ra, 0x64($sp)
branch_0x802c5d1c:
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
    addiu   $sp, $sp, 0xa8

.globl Function_0x802c5d48
Function_0x802c5d48: # 0x802c5d48
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3b8
    lhu     $v0, 0x3a($v1)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    andi    $t6, $v0, 0xb000
    beqz    $t6, branch_0x802c5dd8
    andi    $t1, $v0, 0x4000
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6150
    lw      $v1, 0x0($v0)
    addiu   $at, $zero, 0x2
    addiu   $t7, $zero, 0x1
    bne     $v1, $at, branch_0x802c5da0
    sll     $t8, $v1, 2
    lui     $a0, 0x800e
    addu    $a0, $a0, $t8
    sw      $t7, 0x18($sp)
    jal     Function_0x800c2df0
    lw      $a0, -0x5894($a0)
    b       branch_0x802c5dbc
    lw      $t0, 0x18($sp)
branch_0x802c5da0:
    addiu   $at, $zero, 0x3
    bne     $v1, $at, branch_0x802c5db8
    addiu   $t9, $zero, 0x1
    sw      $t9, 0x18($sp)
    jal     Function_0x802c6098
    addiu   $a0, $zero, 0x3c
branch_0x802c5db8:
    lw      $t0, 0x18($sp)
branch_0x802c5dbc:
    addiu   $a0, $zero, 0x11
    beqzl   $t0, branch_0x802c5f70
    lw      $ra, 0x14($sp)
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c5f70
    lw      $ra, 0x14($sp)
branch_0x802c5dd8:
    beqzl   $t1, branch_0x802c5e00
    lhu     $v0, 0x2($v1)
    jal     Function_0x802c6098
    addiu   $a0, $zero, 0x3c
    addiu   $a0, $zero, 0x16
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c5f70
    lw      $ra, 0x14($sp)

.globl Function_0x802c5dfc
Function_0x802c5dfc: # 0x802c5dfc
    lhu     $v0, 0x2($v1)
branch_0x802c5e00:
    addiu   $a0, $zero, 0x10
    andi    $t2, $v0, 0x800
    beqz    $t2, branch_0x802c5e40
    andi    $t7, $v0, 0x400
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6150
    lw      $t3, 0x0($v0)
    addiu   $t6, $zero, 0x3
    addiu   $t4, $t3, 0xffff
    bgez    $t4, branch_0x802c5e30
    sw      $t4, 0x0($v0)
    sw      $t6, 0x0($v0)
branch_0x802c5e30:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c5f70
    lw      $ra, 0x14($sp)
branch_0x802c5e40:
    beqz    $t7, branch_0x802c5e7c
    andi    $t1, $v0, 0x200
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6150
    lw      $t8, 0x0($v0)
    addiu   $a0, $zero, 0x10
    addiu   $t9, $t8, 0x1
    slti    $at, $t9, 0x4
    bnez    $at, branch_0x802c5e6c
    sw      $t9, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x802c5e6c:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c5f70
    lw      $ra, 0x14($sp)
branch_0x802c5e7c:
    beqzl   $t1, branch_0x802c5efc
    andi    $t1, $v0, 0x100
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6150
    lw      $v1, 0x0($v0)
    addiu   $at, $zero, 0x3
    lui     $t3, 0x802c
    beq     $v1, $at, branch_0x802c5ee4
    sll     $t2, $v1, 3
    lui     $t5, 0x800e
    addiu   $t5, $t5, 0xa76c
    sll     $t4, $v1, 2
    addu    $v0, $t4, $t5
    lw      $t6, 0x0($v0)
    addiu   $t3, $t3, 0x618c
    addu    $a0, $t2, $t3
    addiu   $t7, $t6, 0xffff
    sw      $t7, 0x0($v0)
    lw      $t9, 0x0($a0)
    slt     $at, $t7, $t9
    beqz    $at, branch_0x802c5edc
    nop
    lw      $t0, 0x4($a0)
    sw      $t0, 0x0($v0)
branch_0x802c5edc:
    jal     Function_0x802c5f7c
    nop
branch_0x802c5ee4:
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c5f70
    lw      $ra, 0x14($sp)

.globl Function_0x802c5ef8
Function_0x802c5ef8: # 0x802c5ef8
    andi    $t1, $v0, 0x100
branch_0x802c5efc:
    beqz    $t1, branch_0x802c5f6c
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6150
    lw      $v1, 0x0($v0)
    addiu   $at, $zero, 0x3
    lui     $t3, 0x802c
    beq     $v1, $at, branch_0x802c5f60
    sll     $t2, $v1, 3
    lui     $t5, 0x800e
    addiu   $t5, $t5, 0xa76c
    sll     $t4, $v1, 2
    addu    $v0, $t4, $t5
    lw      $t6, 0x0($v0)
    addiu   $t3, $t3, 0x618c
    addu    $a0, $t2, $t3
    addiu   $t7, $t6, 0x1
    sw      $t7, 0x0($v0)
    lw      $t8, 0x4($a0)
    slt     $at, $t8, $t7
    beqz    $at, branch_0x802c5f58
    nop
    lw      $t0, 0x0($a0)
    sw      $t0, 0x0($v0)
branch_0x802c5f58:
    jal     Function_0x802c5f7c
    nop
branch_0x802c5f60:
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c5f6c:
    lw      $ra, 0x14($sp)
branch_0x802c5f70:
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

Function_0x802c5f7c: # 0x802c5f7c
    lui     $v0, 0x802c
    lw      $v0, 0x6150($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    bnez    $v0, branch_0x802c6030
    addiu   $a0, $zero, 0x1
    sll     $t6, $v0, 2
    lui     $v1, 0x800e
    addu    $v1, $v1, $t6
    lw      $v1, -0x5894($v1)
    bnezl   $v1, branch_0x802c5fd0
    addiu   $a0, $zero, 0x1
    jal     Function_0x800c2d7c
    or      $a0, $zero, $zero
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xafe0
    lb      $t7, 0x0($v0)
    andi    $t8, $t7, 0x3f
    b       branch_0x802c6088
    sb      $t8, 0x0($v0)

Function_0x802c5fcc: # 0x802c5fcc
    addiu   $a0, $zero, 0x1
branch_0x802c5fd0:
    bne     $a0, $v1, branch_0x802c6004
    nop
    jal     Function_0x800c2d7c
    addiu   $a0, $zero, 0x3
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xafe0
    lb      $t9, 0x0($v0)
    andi    $t0, $t9, 0x3f
    sb      $t0, 0x0($v0)
    lb      $t1, 0x0($v0)
    ori     $t2, $t1, 0x40
    b       branch_0x802c6088
    sb      $t2, 0x0($v0)
branch_0x802c6004:
    jal     Function_0x800c2d7c
    addiu   $a0, $zero, 0x1
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xafe0
    lb      $t3, 0x0($v0)
    andi    $t4, $t3, 0x3f
    sb      $t4, 0x0($v0)
    lb      $t5, 0x0($v0)
    ori     $t6, $t5, 0x80
    b       branch_0x802c6088
    sb      $t6, 0x0($v0)
branch_0x802c6030:
    bne     $a0, $v0, branch_0x802c6088
    sll     $t7, $v0, 2
    lui     $t8, 0x800e
    addu    $t8, $t8, $t7
    lw      $t8, -0x5894($t8)
    bne     $a0, $t8, branch_0x802c606c
    nop
    jal     Function_0x800c2dd4
    nop
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xafe0
    lb      $t9, 0x0($v0)
    andi    $t0, $t9, 0xdf
    b       branch_0x802c6088
    sb      $t0, 0x0($v0)
branch_0x802c606c:
    jal     Function_0x800c2de4
    nop
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xafe0
    lb      $t1, 0x0($v0)
    ori     $t2, $t1, 0x20
    sb      $t2, 0x0($v0)
branch_0x802c6088:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

Function_0x802c6098: # 0x802c6098
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa8a4
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x49
    sw      $t6, -0x1c6c($at)
    lui     $at, 0x801d
    sw      $a0, -0x1c70($at)
    sw      $t7, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0x14
    sw      $t8, -0x1c68($at)
    lui     $at, %hi(Unknown_0x801ce39c)
    addiu   $t9, $zero, 0x1
    sw      $t9, %lo(Unknown_0x801ce39c)($at)
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
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $t1, 0x801d
    lw      $t1, -0x1c70($t1)
    addiu   $at, $zero, 0x3c
    bnel    $t1, $at, branch_0x802c613c
    lw      $ra, 0x14($sp)
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x9
    lw      $ra, 0x14($sp)
branch_0x802c613c:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.incbin "./roms/Wave Race 64 (USA).z64", 0x1cab88, 0x1cac00 - 0x1cab88
