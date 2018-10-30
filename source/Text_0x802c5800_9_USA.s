

.include "source/constants.s"

.section .textoverlay9, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c585c
    lui     $t7, 0x800e
    sw      $zero, 0x0($v0)
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x3c
    lui     $t8, 0x801d
    bne     $t7, $at, branch_0x802c585c
    nop
    lw      $t8, -0x1c6c($t8)
    addiu   $at, $zero, 0x4
    lui     $v0, 0x800e
    bne     $t8, $at, branch_0x802c584c
    addiu   $v0, $v0, 0xa754
    sw      $zero, 0x0($v0)
branch_0x802c584c:
    jal     0x800939e4
    nop
    b       branch_0x802c5a0c
    lw      $ra, 0x14($sp)
branch_0x802c585c:
    lui     $at, 0x800e
    jal     Function_0x802c5a18
    sw      $zero, -0x5754($at)
    lui     $t9, 0x800e
    lw      $t9, -0x575c($t9)
    addiu   $at, $zero, 0x3c
    sw      $v0, 0x18($sp)
    bne     $t9, $at, branch_0x802c5960
    lui     $t3, 0x8023
    lui     $v0, 0x801d
    lhu     $v0, -0x1c46($v0)
    andi    $t0, $v0, 0xb000
    beqz    $t0, branch_0x802c58c8
    andi    $t3, $v0, 0x4000
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa754
    lw      $t1, 0x0($v0)
    lui     $a0, 0x802c
    sll     $t2, $t1, 2
    addu    $a0, $a0, $t2
    jal     Function_0x802c5c94
    lw      $a0, 0x5d20($a0)
    addiu   $a0, $zero, 0x11
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c5a08
    lw      $v0, 0x18($sp)
branch_0x802c58c8:
    beqz    $t3, branch_0x802c58ec
    andi    $t4, $v0, 0x800
    jal     Function_0x802c5c94
    addiu   $a0, $zero, 0x2
    addiu   $a0, $zero, 0x16
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c5a08
    lw      $v0, 0x18($sp)
branch_0x802c58ec:
    beqz    $t4, branch_0x802c5928
    andi    $t9, $v0, 0x400
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa754
    lw      $t5, 0x0($v0)
    addiu   $t8, $zero, 0x6
    addiu   $a0, $zero, 0x10
    addiu   $t6, $t5, 0xffff
    bgez    $t6, branch_0x802c5918
    sw      $t6, 0x0($v0)
    sw      $t8, 0x0($v0)
branch_0x802c5918:
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c5a08
    lw      $v0, 0x18($sp)
branch_0x802c5928:
    beqz    $t9, branch_0x802c5a04
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa754
    lw      $t0, 0x0($v0)
    addiu   $at, $zero, 0x7
    addiu   $a0, $zero, 0x10
    addiu   $t1, $t0, 0x1
    bne     $t1, $at, branch_0x802c5950
    sw      $t1, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x802c5950:
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c5a08
    lw      $v0, 0x18($sp)
branch_0x802c5960:
    lh      $t3, -0x782a($t3)
    addiu   $at, $zero, 0x1
    lui     $t4, 0x801d
    bnel    $t3, $at, branch_0x802c5a08
    lw      $v0, 0x18($sp)
    lw      $t4, -0x1c70($t4)
    addiu   $t5, $t4, 0xffc2
    sltiu   $at, $t5, 0xb
    beqz    $at, branch_0x802c59fc
    sll     $t5, $t5, 2
    lui     $at, 0x802c
    addu    $at, $at, $t5
    lw      $t5, 0x5d80($at)
    jr      $t5
    nop

Function_0x802c599c: # 0x802c599c
    jal     0x801ec13c
    nop
    b       branch_0x802c5a08
    lw      $v0, 0x18($sp)

.globl Function_0x802c59ac
Function_0x802c59ac: # 0x802c59ac
    jal     0x801ec290
    nop
    b       branch_0x802c5a08
    lw      $v0, 0x18($sp)

.globl Function_0x802c59bc
Function_0x802c59bc: # 0x802c59bc
    jal     0x801ec344
    nop
    b       branch_0x802c5a08
    lw      $v0, 0x18($sp)

.globl Function_0x802c59cc
Function_0x802c59cc: # 0x802c59cc
    jal     0x801ec47c
    nop
    b       branch_0x802c5a08
    lw      $v0, 0x18($sp)

.globl Function_0x802c59dc
Function_0x802c59dc: # 0x802c59dc
    jal     0x801ec510
    nop
    b       branch_0x802c5a08
    lw      $v0, 0x18($sp)

.globl Function_0x802c59ec
Function_0x802c59ec: # 0x802c59ec
    jal     0x801ec3e0
    nop
    b       branch_0x802c5a08
    lw      $v0, 0x18($sp)
branch_0x802c59fc:
    jal     0x801eaf10
    nop
branch_0x802c5a04:
    lw      $v0, 0x18($sp)
branch_0x802c5a08:
    lw      $ra, 0x14($sp)
branch_0x802c5a0c:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5a18
Function_0x802c5a18: # 0x802c5a18
    addiu   $sp, $sp, 0xffa8
    sw      $s2, 0x48($sp)
    sw      $s0, 0x40($sp)
    sw      $ra, 0x54($sp)
    sw      $s4, 0x50($sp)
    sw      $s3, 0x4c($sp)
    sw      $s1, 0x44($sp)
    addiu   $s2, $a0, 0x8
    lui     $t6, 0x103
    lui     $t7, 0x700
    addiu   $t7, $t7, 0x0
    ori     $t6, $t6, 0x40
    or      $v1, $s2, $zero
    sw      $t6, 0x0($a0)
    sw      $t7, 0x4($a0)
    addiu   $s2, $s2, 0x8
    lui     $t8, 0x102
    lui     $t9, 0x200
    addiu   $t9, $t9, 0xa40
    ori     $t8, $t8, 0x40
    or      $a1, $s2, $zero
    sw      $t8, 0x0($v1)
    sw      $t9, 0x4($v1)
    addiu   $s2, $s2, 0x8
    lui     $t0, 0x107
    lui     $a3, 0x600
    addiu   $t0, $t0, 0xf550
    or      $a2, $s2, $zero
    sw      $t0, 0x4($a1)
    sw      $a3, 0x0($a1)
    lui     $t1, 0x107
    addiu   $t1, $t1, 0xf628
    sw      $t1, 0x4($a2)
    sw      $a3, 0x0($a2)
    addiu   $s2, $s2, 0x8
    addiu   $s0, $zero, 0x49
branch_0x802c5aa8:
    addiu   $t2, $zero, 0xcc
    addiu   $t3, $zero, 0x10
    sw      $t3, 0x14($sp)
    sw      $t2, 0x10($sp)
    or      $a0, $s2, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x3a
    jal     0x800940d8
    or      $a3, $s0, $zero
    addiu   $s0, $s0, 0x13
    slti    $at, $s0, 0xce
    bnez    $at, branch_0x802c5aa8
    or      $s2, $v0, $zero
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    sw      $t3, 0x34($sp)
    sw      $t2, 0x30($sp)
    sw      $t1, 0x2c($sp)
    sw      $t0, 0x28($sp)
    sw      $t9, 0x24($sp)
    sw      $t8, 0x20($sp)
    sw      $t7, 0x1c($sp)
    sw      $t6, 0x18($sp)
    sw      $t5, 0x14($sp)
    sw      $t4, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     0x801e91f4
    addiu   $a3, $zero, 0xff
    addiu   $t4, $zero, 0x22
    sw      $t4, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x5
    addiu   $a3, $zero, 0x6b
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    lui     $s0, 0x802c
    lui     $s3, 0x800e
    or      $s2, $v0, $zero
    addiu   $s3, $s3, 0xa754
    addiu   $s0, $s0, 0x5d3c
    or      $s1, $zero, $zero
    addiu   $s4, $zero, 0x7
branch_0x802c5b7c:
    lw      $t5, 0x0($s3)
    sll     $v0, $s1, 2
    addu    $v0, $v0, $s1
    beq     $s1, $t5, branch_0x802c5bbc
    sll     $v0, $v0, 2
    lh      $a3, 0x0($s0)
    subu    $v0, $v0, $s1
    addiu   $v0, $v0, 0x4c
    lw      $a2, 0x4($s0)
    sw      $zero, 0x14($sp)
    sw      $v0, 0x10($sp)
    or      $a0, $s2, $zero
    addiu   $a1, $zero, 0x1
    jal     0x801e3c40
    addiu   $a3, $a3, 0x6d
    or      $s2, $v0, $zero
branch_0x802c5bbc:
    addiu   $s1, $s1, 0x1
    bne     $s1, $s4, branch_0x802c5b7c
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
    jal     0x801e91f4
    addiu   $a3, $zero, 0xff
    lw      $v1, 0x0($s3)
    lui     $t7, 0x802c
    addiu   $t7, $t7, 0x5d3c
    sll     $t8, $v1, 2
    sll     $t6, $v1, 3
    addu    $t8, $t8, $v1
    addu    $s0, $t6, $t7
    sll     $t8, $t8, 2
    lh      $a3, 0x0($s0)
    subu    $t8, $t8, $v1
    addiu   $t9, $t8, 0x4c
    lw      $a2, 0x4($s0)
    sw      $zero, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    jal     0x801e3c40
    addiu   $a3, $a3, 0x6d
    lw      $ra, 0x54($sp)
    lw      $s0, 0x40($sp)
    lw      $s1, 0x44($sp)
    lw      $s2, 0x48($sp)
    lw      $s3, 0x4c($sp)
    lw      $s4, 0x50($sp)
    jr      $ra
    addiu   $sp, $sp, 0x58

.globl Function_0x802c5c94
Function_0x802c5c94: # 0x802c5c94
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa8a4
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x3d
    sw      $t6, -0x1c6c($at)
    lui     $at, 0x801d
    sw      $a0, -0x1c70($at)
    sw      $t7, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0x7
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

.incbin "./roms/Wave Race 64 (USA).z64", 0x1c46cc, ROM_0x1c4760 - 0x1c46cc
