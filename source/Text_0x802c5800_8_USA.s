

.include "source/constants.s"

.section .textoverlay8, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    lui     $t6, 0x801d
    lw      $t6, -0x1c64($t6)
    addiu   $v0, $zero, 0x14
    lui     $at, 0x802c
    beqz    $t6, branch_0x802c5834
    addiu   $t7, $zero, 0x2
    sw      $zero, 0x5d84($at)
    lui     $at, 0x802c
    sw      $t7, 0x5d80($at)
    lui     $at, 0x802c
    sw      $v0, 0x5d88($at)
    lui     $at, 0x802c
    sw      $v0, 0x5d8c($at)
branch_0x802c5834:
    jr      $ra
    nop


.globl Function_8_0x802c583c
Function_8_0x802c583c: # 0x802c583c
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c588c
    or      $a1, $a0, $zero
    sw      $zero, 0x0($v0)
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x38
    or      $a0, $zero, $zero
    bne     $t7, $at, branch_0x802c588c
    nop
    jal     osViBlack
    sw      $a1, 0x18($sp)
    jal     Function_0x800939e4
    lw      $a0, 0x18($sp)
    b       branch_0x802c58e8
    lw      $ra, 0x14($sp)
branch_0x802c588c:
    lui     $at, 0x800e
    sw      $zero, -0x5754($at)
    jal     Function_0x8008f914
    or      $a0, $a1, $zero
    lui     $a1, %hi(TrackNr_0x800d7ef0)
    lw      $a1, %lo(TrackNr_0x800d7ef0)($a1)
    jal     Function_0x80094758
    or      $a0, $v0, $zero
    jal     Function_0x80090cf8_DrawWaterBG
    or      $a0, $v0, $zero
    jal     Function_0x802c58f4
    or      $a0, $v0, $zero
    lui     $t8, 0x800e
    lw      $t8, -0x575c($t8)
    addiu   $at, $zero, 0x38
    or      $a1, $v0, $zero
    bnel    $t8, $at, branch_0x802c58e4
    or      $v0, $a1, $zero
    jal     Function_0x802c5bd8
    sw      $v0, 0x18($sp)
    lw      $a1, 0x18($sp)
    or      $v0, $a1, $zero
branch_0x802c58e4:
    lw      $ra, 0x14($sp)
branch_0x802c58e8:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c58f4
Function_0x802c58f4: # 0x802c58f4
    addiu   $sp, $sp, 0xffb8
    sw      $s1, 0x40($sp)
    sw      $ra, 0x44($sp)
    sw      $s0, 0x3c($sp)
    or      $v0, $a0, $zero
    lui     $t7, 0x107
    lui     $s1, 0x802c
    addiu   $t7, $t7, 0xf628
    lui     $t6, 0x600
    addiu   $s1, $s1, 0x5d88
    sw      $t6, 0x0($v0)
    sw      $t7, 0x4($v0)
    lw      $a2, 0x0($s1)
    addiu   $t8, $zero, 0x108
    addiu   $t9, $zero, 0x18
    addiu   $a0, $a0, 0x8
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0x1e
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x8
    lui     $s0, 0x802c
    addiu   $s0, $s0, 0x5d8c
    lw      $a2, 0x0($s0)
    addiu   $t0, $zero, 0x108
    addiu   $t1, $zero, 0x10
    sw      $t1, 0x14($sp)
    sw      $t0, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0x50
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x8
    lw      $a2, 0x0($s0)
    addiu   $t2, $zero, 0x108
    addiu   $t3, $zero, 0x18
    sw      $t3, 0x14($sp)
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0x62
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x8
    lw      $a2, 0x0($s1)
    addiu   $t4, $zero, 0x108
    addiu   $t5, $zero, 0x18
    sw      $t5, 0x14($sp)
    sw      $t4, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a3, $zero, 0x8c
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x8
    lw      $a2, 0x0($s1)
    addiu   $t6, $zero, 0x108
    addiu   $t7, $zero, 0x18
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a3, $zero, 0xa5
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x8
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
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
    sw      $t0, 0x18($sp)
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lui     $v1, %hi(TrackNr_0x800d7ef0)
    lw      $v1, %lo(TrackNr_0x800d7ef0)($v1)
    lui     $t9, 0x802c
    lw      $t0, 0x0($s1)
    sll     $t8, $v1, 2
    addu    $t9, $t9, $t8
    lw      $t9, 0x5d30($t9)
    lui     $a2, 0x800e
    addu    $a2, $a2, $t8
    addiu   $t1, $zero, 0x21
    addu    $a3, $t9, $t0
    addiu   $a3, $a3, 0x38
    sw      $t1, 0x10($sp)
    lw      $a2, -0x584c($a2)
    or      $v1, $t8, $zero
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lw      $a3, 0x0($s1)
    addiu   $t2, $zero, 0x90
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x1c
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x64
    lw      $a3, 0x0($s0)
    addiu   $t3, $zero, 0x53
    sw      $t3, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x3
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x1c
    lw      $a3, 0x0($s0)
    addiu   $t4, $zero, 0x53
    sw      $t4, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x3d
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x71
    lw      $a3, 0x0($s0)
    addiu   $t5, $zero, 0x53
    sw      $t5, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x3c
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0xd9
    lw      $a3, 0x0($s0)
    lui     $a2, 0x801c
    addiu   $t6, $zero, 0x69
    sw      $t6, 0x10($sp)
    lw      $a2, 0x2434($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x80093fa0
    addiu   $a3, $a3, 0x10
    lw      $a3, 0x0($s0)
    lui     $a2, 0x801c
    addiu   $t7, $zero, 0x69
    sw      $t7, 0x10($sp)
    lw      $a2, 0x243c($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x80093fa0
    addiu   $a3, $a3, 0x71
    lw      $a3, 0x0($s0)
    lui     $a2, 0x801c
    addiu   $t8, $zero, 0x69
    sw      $t8, 0x10($sp)
    lw      $a2, 0x2438($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x80093fa0
    addiu   $a3, $a3, 0xcd
    lw      $a3, 0x0($s1)
    lui     $a2, 0x801c
    addiu   $t9, $zero, 0xa7
    sw      $t9, 0x10($sp)
    lw      $a2, 0x2430($a2)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    jal     Function_0x80093fa0
    addiu   $a3, $a3, 0x5c
    lw      $ra, 0x44($sp)
    lw      $s0, 0x3c($sp)
    lw      $s1, 0x40($sp)
    jr      $ra
    addiu   $sp, $sp, 0x48

.globl Function_0x802c5bd8
Function_0x802c5bd8: # 0x802c5bd8
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x5d80
    lw      $t6, 0x0($v1)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    sltiu   $at, $t6, 0x8
    beqz    $at, branch_0x802c5cf0
    or      $a1, $zero, $zero
    sll     $t6, $t6, 2
    lui     $at, 0x802c
    addu    $at, $at, $t6
    lw      $t6, 0x5d60($at)
    jr      $t6
    nop

Function_0x802c5c10: # 0x802c5c10
    addiu   $t7, $zero, 0x1
    b       branch_0x802c5cf0
    sw      $t7, 0x0($v1)

Function_0x802c5c1c: # 0x802c5c1c
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x5d88
    lw      $t8, 0x0($v0)
    addiu   $t1, $zero, 0x2
    addiu   $t2, $zero, 0x14
    addiu   $t9, $t8, 0x14
    slti    $at, $t9, 0x14
    bnez    $at, branch_0x802c5cf0
    sw      $t9, 0x0($v0)
    sw      $t1, 0x0($v1)
    b       branch_0x802c5cf0
    sw      $t2, 0x0($v0)

Function_0x802c5c4c: # 0x802c5c4c
    lui     $t3, 0x801d
    lhu     $t3, -0x1c46($t3)
    andi    $t4, $t3, 0xb000
    beqz    $t4, branch_0x802c5cf0
    addiu   $t5, $zero, 0x3
    sw      $t5, 0x0($v1)
    b       branch_0x802c5cf0
    addiu   $a1, $zero, 0x1

.globl Function_0x802c5c6c
Function_0x802c5c6c: # 0x802c5c6c
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x5d88
    lw      $t6, 0x0($v0)
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x5d84
    addiu   $t7, $t6, 0x14
    slti    $at, $t7, 0x140
    bnez    $at, branch_0x802c5cf0
    sw      $t7, 0x0($v0)
    addiu   $t9, $zero, 0x7
    addiu   $t0, $zero, 0x140
    sw      $t9, 0x0($v1)
    sw      $t0, 0x0($v0)
    b       branch_0x802c5cf0
    sw      $zero, 0x0($a0)

.globl Function_0x802c5ca8
Function_0x802c5ca8: # 0x802c5ca8
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x5d84
    lw      $t1, 0x0($a0)
    addiu   $t2, $t1, 0x1
    slti    $at, $t2, 0x3
    bnez    $at, branch_0x802c5cf0
    sw      $t2, 0x0($a0)
    lui     $t4, 0x801c
    lw      $t4, 0x2688($t4)
    beqz    $t4, branch_0x802c5ce4
    nop
    jal     Function_0x801ec758_ChangeStateTo64
    sw      $a1, 0x1c($sp)
    b       branch_0x802c5cf0
    lw      $a1, 0x1c($sp)
branch_0x802c5ce4:
    jal     Function_0x801ecd94_ChangeStateTo39
    sw      $a1, 0x1c($sp)
    lw      $a1, 0x1c($sp)
branch_0x802c5cf0:
    lui     $v0, 0x802c
    beqz    $a1, branch_0x802c5d10
    addiu   $v0, $v0, 0x5d88
    addiu   $a0, $zero, 0x31
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x5d88
branch_0x802c5d10:
    lw      $t5, 0x0($v0)
    lw      $ra, 0x14($sp)
    addiu   $t6, $zero, 0x28
    lui     $at, 0x802c
    subu    $t7, $t6, $t5
    sw      $t7, 0x5d8c($at)
    jr      $ra
    addiu   $sp, $sp, 0x20

.incbin "./roms/Wave Race 64 (USA).z64", 0x1c3a70, ROM_0x1c3ac0 - 0x1c3a70
