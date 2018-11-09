

.include "source/constants.s"

.section .textoverlay0, "ax"

.set noreorder


.globl Function_0_0x802c5800
Function_0_0x802c5800: # 0x802c5800
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x76bc
    lw      $v0, 0x0($a0)
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x76c0
    bnez    $v0, branch_0x802c58ec
    xori    $t4, $v0, 0x1
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x76c0
    lw      $v1, 0x0($a1)
    addiu   $t6, $zero, 0xc
    lui     $at, 0x42fe
    subu    $t7, $t6, $v1
    mtc1    $t7, $a0
    mtc1    $at, $t0
    lui     $at, 0x4140
    cvt.s.w $f6, $f4
    mtc1    $at, $s0
    lui     $at, 0x4300
    mtc1    $at, $a0
    addiu   $t9, $zero, 0x1
    lui     $at, 0x4f00
    mul.s   $f10, $f6, $f8
    div.s   $f18, $f10, $f16
    add.s   $f6, $f18, $f4
    cfc1    $t8, $ra
    ctc1    $t9, $ra
    nop
    cvt.w.s $f8, $f6
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    beqzl   $t9, branch_0x802c58d0
    mfc1    $t9, $t0
    mtc1    $at, $t0
    addiu   $t9, $zero, 0x1
    sub.s   $f8, $f6, $f8
    ctc1    $t9, $ra
    nop
    cvt.w.s $f8, $f8
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    bnez    $t9, branch_0x802c58c4
    nop
    mfc1    $t9, $t0
    lui     $at, 0x8000
    b       branch_0x802c58dc
    or      $t9, $t9, $at
branch_0x802c58c4:
    b       branch_0x802c58dc
    addiu   $t9, $zero, 0xffff

# 0x802c58cc
    mfc1    $t9, $t0
branch_0x802c58d0:
    nop
    bltz    $t9, branch_0x802c58c4
    nop
branch_0x802c58dc:
    ctc1    $t8, $ra
    lui     $at, %hi(Unknown_0_0x802c7710)
    b       branch_0x802c59b8
    sw      $t9, %lo(Unknown_0_0x802c7710)($at)
branch_0x802c58ec:
    lw      $v1, 0x0($a1)
    lui     $at, 0x802c
    ldc1    $4, 0x7700($1)
    mtc1    $v1, $t2
    lui     $at, 0x4028
    mtc1    $at, $t1
    cvt.s.w $f16, $f10
    mtc1    $zero, $t0
    lui     $at, 0x4060
    mtc1    $at, $s1
    addiu   $t1, $zero, 0x1
    lui     $at, 0x41e0
    cvt.d.s $f18, $f16
    mtc1    $zero, $s0
    mul.d   $f6, $f18, $f4
    div.d   $f10, $f6, $f8
    add.d   $f18, $f10, $f16
    cfc1    $t0, $ra
    ctc1    $t1, $ra
    nop
    cvt.w.d $f4, $f18
    cfc1    $t1, $ra
    nop
    andi    $t1, $t1, 0x78
    beqzl   $t1, branch_0x802c59a0
    mfc1    $t1, $a0
    mtc1    $at, $a1
    mtc1    $zero, $a0
    addiu   $t1, $zero, 0x1
    sub.d   $f4, $f18, $f4
    ctc1    $t1, $ra
    nop
    cvt.w.d $f4, $f4
    cfc1    $t1, $ra
    nop
    andi    $t1, $t1, 0x78
    bnez    $t1, branch_0x802c5994
    nop
    mfc1    $t1, $a0
    lui     $at, 0x8000
    b       branch_0x802c59ac
    or      $t1, $t1, $at
branch_0x802c5994:
    b       branch_0x802c59ac
    addiu   $t1, $zero, 0xffff

# 0x802c599c
    mfc1    $t1, $a0
branch_0x802c59a0:
    nop
    bltz    $t1, branch_0x802c5994
    nop
branch_0x802c59ac:
    ctc1    $t0, $ra
    lui     $at, %hi(Unknown_0_0x802c7710)
    sw      $t1, %lo(Unknown_0_0x802c7710)($at)
branch_0x802c59b8:
    addiu   $t2, $v1, 0x1
    slti    $at, $t2, 0xc
    bnez    $at, branch_0x802c59d0
    sw      $t2, 0x0($a1)
    sw      $zero, 0x0($a1)
    sw      $t4, 0x0($a0)
branch_0x802c59d0:
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x76e8
    lw      $v0, 0x0($a1)
    addiu   $a0, $zero, 0x1
    lui     $a2, 0x802c
    bne     $a0, $v0, branch_0x802c5ac4
    addiu   $at, $zero, 0x2
    addiu   $a2, $a2, 0x76ec
    lw      $t5, 0x0($a2)
    addiu   $t8, $zero, 0xd2
    lui     $v1, 0x802c
    addiu   $t6, $t5, 0xfffc
    slti    $at, $t6, 0xbf
    beqz    $at, branch_0x802c5b9c
    sw      $t6, 0x0($a2)
    sw      $t8, 0x0($a2)
    sw      $zero, 0x0($a1)
    lui     $a2, 0x802c
    lui     $a3, 0x802c
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x76e0
    addiu   $a3, $a3, 0x76e4
    addiu   $a2, $a2, 0x76dc
    addiu   $a1, $zero, 0x10
    addiu   $v1, $v1, 0x76c4
    sltu    $at, $v1, $a0
branch_0x802c5a38:
    beqzl   $at, branch_0x802c5a50
    lw      $v0, -0x4($v1)
    lw      $t9, 0x4($v1)
    b       branch_0x802c5a6c
    sw      $t9, 0x0($v1)

# 0x802c5a4c
    lw      $v0, -0x4($v1)
branch_0x802c5a50:
    beq     $a1, $v0, branch_0x802c5a60
    nop
    bnez    $v0, branch_0x802c5a68
    addiu   $t0, $v0, 0x1
branch_0x802c5a60:
    b       branch_0x802c5a6c
    sw      $zero, 0x0($v1)
branch_0x802c5a68:
    sw      $t0, 0x0($v1)
branch_0x802c5a6c:
    sltu    $at, $v1, $a2
    beqzl   $at, branch_0x802c5a88
    lw      $v0, 0x0($v1)
    lw      $t1, 0x8($v1)
    b       branch_0x802c5aa4
    sw      $t1, 0x4($v1)

# 0x802c5a84
    lw      $v0, 0x0($v1)
branch_0x802c5a88:
    beq     $a1, $v0, branch_0x802c5a98
    nop
    bnez    $v0, branch_0x802c5aa0
    addiu   $t2, $v0, 0x1
branch_0x802c5a98:
    b       branch_0x802c5aa4
    sw      $zero, 0x4($v1)
branch_0x802c5aa0:
    sw      $t2, 0x4($v1)
branch_0x802c5aa4:
    addiu   $v1, $v1, 0x8
    bnel    $v1, $a3, branch_0x802c5a38
    sltu    $at, $v1, $a0
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x76c4
    sw      $zero, 0x20($v0)
    jr      $ra
    sw      $zero, 0x0($v0)
branch_0x802c5ac4:
    bne     $v0, $at, branch_0x802c5b9c
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x76ec
    lw      $t4, 0x0($a2)
    addiu   $t7, $zero, 0xd2
    lui     $v1, 0x802c
    addiu   $t5, $t4, 0x4
    slti    $at, $t5, 0xe6
    bnez    $at, branch_0x802c5b9c
    sw      $t5, 0x0($a2)
    sw      $t7, 0x0($a2)
    sw      $zero, 0x0($a1)
    lui     $a1, 0x802c
    lui     $a2, 0x802c
    lui     $a3, 0x802c
    addiu   $a3, $a3, 0x76c4
    addiu   $a2, $a2, 0x76d0
    addiu   $a1, $a1, 0x76cc
    addiu   $v1, $v1, 0x76e4
    sltu    $at, $v1, $a1
branch_0x802c5b14:
    bnezl   $at, branch_0x802c5b2c
    lw      $v0, 0x4($v1)
    lw      $t8, -0x4($v1)
    b       branch_0x802c5b48
    sw      $t8, 0x0($v1)

# 0x802c5b28
    lw      $v0, 0x4($v1)
branch_0x802c5b2c:
    beq     $a0, $v0, branch_0x802c5b3c
    nop
    bnez    $v0, branch_0x802c5b44
    addiu   $t9, $v0, 0xffff
branch_0x802c5b3c:
    b       branch_0x802c5b48
    sw      $zero, 0x0($v1)
branch_0x802c5b44:
    sw      $t9, 0x0($v1)
branch_0x802c5b48:
    sltu    $at, $v1, $a2
    bnezl   $at, branch_0x802c5b64
    lw      $v0, 0x0($v1)
    lw      $t0, -0x8($v1)
    b       branch_0x802c5b80
    sw      $t0, -0x4($v1)

# 0x802c5b60
    lw      $v0, 0x0($v1)
branch_0x802c5b64:
    beq     $a0, $v0, branch_0x802c5b74
    nop
    bnez    $v0, branch_0x802c5b7c
    addiu   $t1, $v0, 0xffff
branch_0x802c5b74:
    b       branch_0x802c5b80
    sw      $zero, -0x4($v1)
branch_0x802c5b7c:
    sw      $t1, -0x4($v1)
branch_0x802c5b80:
    addiu   $v1, $v1, 0xfff8
    bnel    $v1, $a3, branch_0x802c5b14
    sltu    $at, $v1, $a1
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x76c4
    sw      $zero, 0x20($v0)
    sw      $zero, 0x0($v0)
branch_0x802c5b9c:
    jr      $ra
    nop


.globl Function_0_0x802c5ba4_Main
Function_0_0x802c5ba4_Main: # 0x802c5ba4
    lui     $v0, %hi(Unknown_0x801ce39c)
    addiu   $v0, $v0, %lo(Unknown_0x801ce39c)
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, -0x28
    sw      $s0, 0x20($sp)
    or      $s0, $a0, $zero
    beqz    $t6, branch_0x802c5bec
    sw      $ra, 0x24($sp)

    sw      $zero, 0x0($v0)
    lui     $t7, %hi(MainState_0x800da8a4)
    lw      $t7, %lo(MainState_0x800da8a4)($t7)
    addiu   $at, $zero, MainState_5_BootUp
    bne     $t7, $at, branch_0x802c5bec
    nop

    jal     Function_0x802c73b0
    nop
    b       branch_0x802c5de4
    lw      $ra, 0x24($sp)

branch_0x802c5bec:
    lui     $at, %hi(Unknown_0x800da8ac)
    sw      $zero, %lo(Unknown_0x800da8ac)($at)
    or      $v0, $s0, $zero
    lui     $t8, %hi(0x8066180)
    lui     $a3, %hi(0x6000000)
    addiu   $t8, $t8, %lo(0x8066180)
    addiu   $v1, $s0, 0x8
    sw      $t8, 0x4($v0)
    sw      $a3, 0x0($v0)
    addiu   $a1, $v1, 0x8
    lui     $t9, %hi(0xe7000000)
    sw      $t9, 0x0($v1)
    sw      $zero, 0x4($v1)
    lui     $t1, %hi(0x9ec77c)
    ori     $t1, $t1, %lo(0x9ec77c)
    addiu   $a2, $a1, 0x8
    lui     $t0, %hi(0xed000000)
    lui     $t2, %hi(0x80661f8)
    sw      $t0, 0x0($a1)
    sw      $t1, 0x4($a1)
    addiu   $t2, $t2, %lo(0x80661f8)
    sw      $t2, 0x4($a2)
    sw      $a3, 0x0($a2)
    jal     Function_0x802c62e4
    addiu   $a0, $a2, 0x8

    lui     $t3, %hi(0x8066a80)
    lui     $t4, %hi(0x80671b8)
    lui     $a3, %hi(0x6000000)
    addiu   $t3, $t3, %lo(0x8066a80)
    addiu   $t4, $t4, %lo(0x80671b8)
    sw      $t3, 0x4($v0)
    sw      $a3, 0x0($v0)
    sw      $t4, 0xc($v0)
    sw      $a3, 0x8($v0)
    jal     Function_0x802c6970
    addiu   $a0, $v0, 0x10

    jal     Function_0x802c6c1c
    or      $a0, $v0, $zero
    lui     $t5, %hi(0xfa000000)
    sw      $t5, 0x0($v0)
    lui     $t6, %hi(Unknown_0_0x802c7710)
    lw      $t6, %lo(Unknown_0_0x802c7710)($t6)
    lui     $at, %hi(0xff000000)
    lui     $t1, %hi(Unknown_0_0x802c76a8)
    andi    $t7, $t6, 0xff
    sll     $t8, $t7, 16
    or      $t9, $t8, $at
    ori     $t0, $t9, 0xff
    sw      $t0, 0x4($v0)
    lw      $t1, %lo(Unknown_0_0x802c76a8)($t1)
    lui     $a1, %hi(Unknown_0_0x802c76b4)
    addiu   $a0, $v0, 0x8
    sll     $t2, $t1, 2
    addu    $a1, $a1, $t2
    lw      $a1, %lo(Unknown_0_0x802c76b4)($a1)
    jal     Function_0x802c6e40
    addiu   $a2, $zero, 0x86
    lui     $t3, %hi(Unknown_0_0x802c76a4)
    lw      $t3, %lo(Unknown_0_0x802c76a4)($t3)
    addiu   $at, $zero, 0x2
    or      $s0, $v0, $zero
    bne     $t3, $at, branch_0x802c5d0c
    or      $a0, $v0, $zero
    lui     $t4, %hi(Unknown_0_0x802c76ac)
    lw      $t4, %lo(Unknown_0_0x802c76ac)($t4)
    lui     $a1, %hi(Unknown_0_0x802c76b4)
    addiu   $a2, $zero, 0x18a
    sll     $t5, $t4, 2
    addu    $a1, $a1, $t5
    jal     Function_0x802c6e40
    lw      $a1, %lo(Unknown_0_0x802c76b4)($a1)
    or      $s0, $v0, $zero

branch_0x802c5d0c:
    lui     $v1, %hi(MainState_0x800da8a4)
    lw      $v1, %lo(MainState_0x800da8a4)($v1)
    addiu   $at, $zero, MainState_6
    or      $a0, $s0, $zero
    bne     $v1, $at, branch_0x802c5d50_NotState6
    addiu   $a1, $zero, 0x40

    lui     $t7, %hi(Unknown_0_0x802c76f0)
    lw      $t7, %lo(Unknown_0_0x802c76f0)($t7)
    addiu   $t6, $zero, 0x1b0
    sw      $t6, 0x10($sp)
    addiu   $a2, $zero, 0x32
    addiu   $a3, $zero, 0x240
    jal     Function_0x802c7578
    sw      $t7, 0x14($sp)
    lui     $v1, %hi(MainState_0x800da8a4)
    lw      $v1, %lo(MainState_0x800da8a4)($v1)
    or      $s0, $v0, $zero

branch_0x802c5d50_NotState6:
    lui     $a0, %hi(Unknown_0_0x802c76f0)
    addiu   $at, $zero, MainState_5_BootUp
    bne     $v1, $at, branch_0x802c5d70_NotState5
    addiu   $a0, $a0, %lo(Unknown_0_0x802c76f0)

    jal     Function_0_0x802c5df4
    nop
    b       branch_0x802c5de0
    or      $v0, $s0, $zero

branch_0x802c5d70_NotState5:
    lui     $a1, %hi(Unknown_0_0x802c76f4)
    addiu   $a1, $a1, %lo(Unknown_0_0x802c76f4)
    lw      $v1, 0x0($a1)
    addiu   $at, $zero, 0xa
    sll     $t8, $v1, 8
    subu    $t8, $t8, $v1
    div     $zero, $t8, $at
    mflo    $v0
    sltiu   $at, $v0, 0x100
    bnez    $at, branch_0x802c5da4
    sw      $v0, 0x0($a0)

    addiu   $v0, $zero, 0xff
    sw      $v0, 0x0($a0)

branch_0x802c5da4:
    addiu   $t1, $v1, 0x1
    addiu   $at, $zero, 0xff
    bne     $v0, $at, branch_0x802c5dc4
    sw      $t1, 0x0($a1)

    jal     osViBlack
    addiu   $a0, $zero, 0x1
    lui     $a1, %hi(Unknown_0_0x802c76f4)
    addiu   $a1, $a1, %lo(Unknown_0_0x802c76f4)

branch_0x802c5dc4:
    lw      $t2, 0x0($a1)
    slti    $at, $t2, 0xe
    bnezl   $at, branch_0x802c5de0
    or      $v0, $s0, $zero
    jal     Function_0x801eaf10_ChangeStateTo2
    nop
    or      $v0, $s0, $zero

branch_0x802c5de0:
    lw      $ra, 0x24($sp)
branch_0x802c5de4:
    lw      $s0, 0x20($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop


.globl Function_0_0x802c5df4
Function_0_0x802c5df4: # 0x802c5df4
    lui     $t1, %hi(Unknown_0_0x802c76a4)
    addiu   $t1, $t1, %lo(Unknown_0_0x802c76a4)
    lw      $t6, 0x0($t1)
    addiu   $sp, $sp, 0xffd8
    addiu   $t2, $zero, 0x4
    bne     $t2, $t6, branch_0x802c5f38
    sw      $ra, 0x1c($sp)
    lui     $t3, 0x802c
    addiu   $t3, $t3, 0x7724
    lw      $t7, 0x0($t3)
    lui     $at, 0x802c
    lui     $t8, 0x802c
    bnez    $t7, branch_0x802c5e38
    lui     $t4, 0x801d
    addiu   $a2, $zero, 0x1
    b       branch_0x802c5f38
    sw      $a2, 0x0($t3)
branch_0x802c5e38:
    lw      $t8, 0x7720($t8)
    addiu   $t4, $t4, 0xb178
    sw      $zero, 0x771c($at)
    sll     $t9, $t8, 5
    addu    $t0, $t9, $t4
    lhu     $a1, 0x8($t0)
    lw      $a2, 0x4($t0)
    addiu   $t5, $t0, 0xa
    lui     $a0, 0x801d
    addiu   $a0, $a0, 0xb3b8
    sw      $t5, 0x10($sp)
    sw      $t0, 0x20($sp)
    jal     Function_0x800c9610
    addiu   $a3, $t0, 0xe
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x771c
    lui     $t1, %hi(Unknown_0_0x802c76a4)
    addiu   $t1, $t1, %lo(Unknown_0_0x802c76a4)
    sw      $v0, 0x0($a0)
    lw      $t0, 0x20($sp)
    beqz    $v0, branch_0x802c5ebc
    addiu   $t2, $zero, 0x4
    addiu   $a2, $zero, 0x1
    beq     $v0, $a2, branch_0x802c5f10
    addiu   $a3, $zero, 0x2
    beq     $v0, $a3, branch_0x802c5f28
    lui     $a0, 0x802c
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7660
    addiu   $a1, $zero, 0x3
    sw      $a1, 0x0($t1)
    b       branch_0x802c5f38
    sw      $a3, 0x0($a0)
branch_0x802c5ebc:
    lui     $t7, 0x802c
    lw      $t7, 0x7720($t7)
    lui     $at, 0x801d
    addiu   $t6, $zero, 0xffff
    sll     $t8, $t7, 2
    addu    $at, $at, $t8
    sw      $t6, -0x4c88($at)
    lw      $t4, 0x0($t0)
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xb170
    lw      $t9, 0x0($v0)
    addiu   $t5, $t4, 0xff
    srl     $t7, $t5, 8
    lui     $a0, 0x802c
    andi    $t6, $t7, 0xff
    addiu   $a0, $a0, 0x7660
    addu    $t8, $t9, $t6
    sw      $t8, 0x0($v0)
    sw      $zero, 0x0($t1)
    b       branch_0x802c5f38
    sw      $zero, 0x0($a0)
branch_0x802c5f10:
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x7660
    addiu   $a1, $zero, 0x3
    sw      $a1, 0x0($t1)
    b       branch_0x802c5f38
    sw      $a1, 0x0($a0)
branch_0x802c5f28:
    addiu   $a0, $a0, 0x7660
    addiu   $a1, $zero, 0x3
    sw      $a1, 0x0($t1)
    sw      $t2, 0x0($a0)
branch_0x802c5f38:
    lui     $v0, %hi(Unknown_0x801ce3ba_Input)
    lhu     $v0, %lo(Unknown_0x801ce3ba_Input)($v0)
    lui     $a0, 0x802c
    lui     $t3, 0x802c
    andi    $t4, $v0, JOY_START|JOY_Z|JOY_A
    addiu   $t3, $t3, 0x7724
    addiu   $a0, $a0, 0x7660
    addiu   $a1, $zero, 0x3
    addiu   $a2, $zero, 0x1
    beqz    $t4, branch_0x802c6064
    addiu   $a3, $zero, 0x2
    lw      $v1, 0x0($t1)
    lui     $v0, %hi(Unknown_0_0x802c76a8)
    addiu   $v0, $v0, %lo(Unknown_0_0x802c76a8)
    beqzl   $v1, branch_0x802c5f9c
    lw      $t5, 0x0($v0)
    beq     $v1, $a2, branch_0x802c5fc8
    lui     $v0, 0x802c
    beq     $v1, $a3, branch_0x802c6020
    lui     $v0, %hi(Unknown_0_0x802c76ac)
    beql    $v1, $a1, branch_0x802c604c
    sw      $zero, 0x0($t1)
    b       branch_0x802c6054
    addiu   $a0, $zero, 0x11

.globl Function_0x802c5f98
Function_0x802c5f98: # 0x802c5f98
    lw      $t5, 0x0($v0)
branch_0x802c5f9c:
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x76b0
    bnez    $t5, branch_0x802c5fb8
    nop
    sw      $a2, 0x0($t1)
    b       branch_0x802c6050
    sw      $zero, 0x0($v0)
branch_0x802c5fb8:
    jal     Function_0x802c7510
    nop
    b       branch_0x802c6054
    addiu   $a0, $zero, 0x11
branch_0x802c5fc8:
    addiu   $v0, $v0, 0x76b0
    lw      $t7, 0x0($v0)
    lui     $t6, 0x802c
    lui     $v1, 0x802c
    sll     $t9, $t7, 2
    addu    $t6, $t6, $t9
    lw      $t6, 0x76cc($t6)
    addiu   $v1, $v1, 0x7720
    lui     $t7, 0x801d
    addiu   $t8, $t6, 0xffff
    sll     $t5, $t8, 2
    sw      $t8, 0x0($v1)
    addu    $t7, $t7, $t5
    lw      $t7, -0x4c88($t7)
    lui     $v0, %hi(Unknown_0_0x802c76ac)
    addiu   $v0, $v0, %lo(Unknown_0_0x802c76ac)
    bnezl   $t7, branch_0x802c6054
    addiu   $a0, $zero, 0x11
    sw      $a3, 0x0($t1)
    sw      $a2, 0x0($v0)
    b       branch_0x802c6050
    sw      $a2, 0x0($a0)
branch_0x802c6020:
    addiu   $v0, $v0, %lo(Unknown_0_0x802c76ac)
    lw      $t9, 0x0($v0)
    sw      $a2, 0x0($t1)
    sw      $zero, 0x0($a0)
    bnez    $t9, branch_0x802c6050
    addiu   $t6, $zero, 0x5
    sw      $t2, 0x0($t1)
    sw      $t6, 0x0($a0)
    b       branch_0x802c6050
    sw      $zero, 0x0($t3)

.globl Function_0x802c6048
Function_0x802c6048: # 0x802c6048
    sw      $zero, 0x0($t1)
branch_0x802c604c:
    sw      $zero, 0x0($a0)
branch_0x802c6050:
    addiu   $a0, $zero, 0x11
branch_0x802c6054:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c62d8
    lw      $ra, 0x1c($sp)
branch_0x802c6064:
    andi    $t8, $v0, 0x4000
    beqz    $t8, branch_0x802c60c4
    andi    $t5, $v0, 0x200
    lw      $v1, 0x0($t1)
    lui     $t4, 0x802c
    or      $a1, $zero, $zero
    beq     $v1, $a2, branch_0x802c6094
    nop
    beql    $v1, $a3, branch_0x802c60b0
    sw      $a2, 0x0($t1)
    b       branch_0x802c60b4
    nop
branch_0x802c6094:
    lw      $t4, 0x76e8($t4)
    bnez    $t4, branch_0x802c60b4
    nop
    sw      $zero, 0x0($t1)
    b       branch_0x802c60b4
    sw      $zero, 0x0($a0)

.globl Function_0x802c60ac
Function_0x802c60ac: # 0x802c60ac
    sw      $a2, 0x0($t1)
branch_0x802c60b0:
    sw      $zero, 0x0($a0)
branch_0x802c60b4:
    jal     Function_0x800c3594
    addiu   $a0, $zero, 0x16
    b       branch_0x802c62d8
    lw      $ra, 0x1c($sp)
branch_0x802c60c4:
    beqzl   $t5, branch_0x802c613c
    andi    $t5, $v0, 0x100
    lw      $v1, 0x0($t1)
    lui     $v0, %hi(Unknown_0_0x802c76a8)
    addiu   $v0, $v0, %lo(Unknown_0_0x802c76a8)
    beqz    $v1, branch_0x802c60f0
    addiu   $a0, $zero, 0x10
    beq     $v1, $a3, branch_0x802c6114
    lui     $v0, 0x802c
    b       branch_0x802c62d8
    lw      $ra, 0x1c($sp)
branch_0x802c60f0:
    lw      $t7, 0x0($v0)
    addiu   $t9, $t7, 0x1
    bne     $a3, $t9, branch_0x802c6104
    sw      $t9, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x802c6104:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c62d8
    lw      $ra, 0x1c($sp)
branch_0x802c6114:
    addiu   $v0, $v0, 0x76ac
    lw      $t8, 0x0($v0)
    addiu   $a0, $zero, 0x10
    or      $a1, $zero, $zero
    xori    $t4, $t8, 0x1
    jal     Function_0x800c3594
    sw      $t4, 0x0($v0)
    b       branch_0x802c62d8
    lw      $ra, 0x1c($sp)

Function_0x802c6138: # 0x802c6138
    andi    $t5, $v0, 0x100
branch_0x802c613c:
    beqzl   $t5, branch_0x802c61b4
    andi    $t5, $v0, 0x800
    lw      $v1, 0x0($t1)
    lui     $v0, %hi(Unknown_0_0x802c76a8)
    addiu   $v0, $v0, %lo(Unknown_0_0x802c76a8)
    beqz    $v1, branch_0x802c6168
    addiu   $a0, $zero, 0x10
    beq     $v1, $a3, branch_0x802c618c
    lui     $v0, 0x802c
    b       branch_0x802c62d8
    lw      $ra, 0x1c($sp)
branch_0x802c6168:
    lw      $t7, 0x0($v0)
    addiu   $t9, $t7, 0xffff
    bgez    $t9, branch_0x802c617c
    sw      $t9, 0x0($v0)
    sw      $a2, 0x0($v0)
branch_0x802c617c:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c62d8
    lw      $ra, 0x1c($sp)
branch_0x802c618c:
    addiu   $v0, $v0, 0x76ac
    lw      $t8, 0x0($v0)
    addiu   $a0, $zero, 0x10
    or      $a1, $zero, $zero
    xori    $t4, $t8, 0x1
    jal     Function_0x800c3594
    sw      $t4, 0x0($v0)
    b       branch_0x802c62d8
    lw      $ra, 0x1c($sp)

.globl Function_0x802c61b0
Function_0x802c61b0: # 0x802c61b0
    andi    $t5, $v0, 0x800
branch_0x802c61b4:
    beqz    $t5, branch_0x802c6244
    andi    $t6, $v0, 0x400
    lw      $t7, 0x0($t1)
    lui     $t9, 0x802c
    bnel    $a2, $t7, branch_0x802c62d8
    lw      $ra, 0x1c($sp)
    lw      $t9, 0x76e8($t9)
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x76b0
    bnezl   $t9, branch_0x802c62d8
    lw      $ra, 0x1c($sp)
    lw      $t6, 0x0($v0)
    addiu   $a0, $zero, 0x10
    or      $a1, $zero, $zero
    addiu   $t8, $t6, 0xffff
    jal     Function_0x800c3594
    sw      $t8, 0x0($v0)
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x76b0
    lw      $t4, 0x0($v0)
    addiu   $a2, $zero, 0x1
    addiu   $a3, $zero, 0x2
    bgez    $t4, branch_0x802c62d4
    sll     $t7, $zero, 2
    lui     $t9, 0x802c
    sw      $zero, 0x0($v0)
    addu    $t9, $t9, $t7
    lw      $t9, 0x76cc($t9)
    lui     $at, 0x802c
    addiu   $a0, $zero, 0x1d
    beq     $a2, $t9, branch_0x802c62d4
    or      $a1, $zero, $zero
    jal     Function_0x800c3594
    sw      $a3, 0x76e8($at)
    b       branch_0x802c62d8
    lw      $ra, 0x1c($sp)
branch_0x802c6244:
    beqzl   $t6, branch_0x802c62d8
    lw      $ra, 0x1c($sp)
    lw      $t8, 0x0($t1)
    lui     $t4, 0x802c
    bnel    $a2, $t8, branch_0x802c62d8
    lw      $ra, 0x1c($sp)
    lw      $t4, 0x76e8($t4)
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x76b0
    bnezl   $t4, branch_0x802c62d8
    lw      $ra, 0x1c($sp)
    lw      $t5, 0x0($v0)
    addiu   $a0, $zero, 0x10
    or      $a1, $zero, $zero
    addiu   $t7, $t5, 0x1
    jal     Function_0x800c3594
    sw      $t7, 0x0($v0)
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x76b0
    lw      $t9, 0x0($v0)
    addiu   $t2, $zero, 0x4
    addiu   $a2, $zero, 0x1
    slti    $at, $t9, 0x5
    bnez    $at, branch_0x802c62d4
    sll     $t8, $t2, 2
    lui     $t4, 0x802c
    sw      $t2, 0x0($v0)
    addu    $t4, $t4, $t8
    lw      $t4, 0x76cc($t4)
    addiu   $at, $zero, 0x10
    addiu   $a0, $zero, 0x1d
    beq     $t4, $at, branch_0x802c62d4
    or      $a1, $zero, $zero
    lui     $at, 0x802c
    jal     Function_0x800c3594
    sw      $a2, 0x76e8($at)
branch_0x802c62d4:
    lw      $ra, 0x1c($sp)
branch_0x802c62d8:
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x802c62e4
Function_0x802c62e4: # 0x802c62e4
    addiu   $sp, $sp, 0xffa8
    sw      $s6, 0x38($sp)
    sw      $s5, 0x34($sp)
    sw      $s4, 0x30($sp)
    sw      $s3, 0x2c($sp)
    sw      $s2, 0x28($sp)
    sw      $s1, 0x24($sp)
    sw      $s0, 0x20($sp)
    sw      $ra, 0x44($sp)
    sw      $fp, 0x40($sp)
    sw      $s7, 0x3c($sp)
    addiu   $s1, $a0, 0x8
    lui     $s6, 0xe700
    or      $v1, $s1, $zero
    sw      $s6, 0x0($a0)
    sw      $zero, 0x4($a0)
    lui     $t7, 0x9f
    ori     $t7, $t7, 0xc614
    lui     $t6, 0xed00
    lui     $s0, 0x802c
    lui     $s5, 0x802c
    sw      $t6, 0x0($v1)
    sw      $t7, 0x4($v1)
    addiu   $s1, $s1, 0x8
    addiu   $s5, $s5, 0x76ec
    addiu   $s0, $s0, 0x76e8
    addiu   $s2, $zero, 0x8
    addiu   $s3, $zero, 0x14
    or      $s4, $zero, $zero
    lw      $t8, 0x0($s0)
branch_0x802c635c:
    bnez    $t8, branch_0x802c6374
    nop
    beqzl   $s4, branch_0x802c639c
    addiu   $s4, $s4, 0x1
    beql    $s4, $s2, branch_0x802c639c
    addiu   $s4, $s4, 0x1
branch_0x802c6374:
    multu   $s4, $s3
    lw      $t0, 0x0($s5)
    or      $a0, $s1, $zero
    addiu   $a1, $zero, 0x40
    mflo    $t9
    addu    $a2, $t9, $t0
    jal     Function_0x802c67bc
    nop
    or      $s1, $v0, $zero
    addiu   $s4, $s4, 0x1
branch_0x802c639c:
    slti    $at, $s4, 0x9
    bnezl   $at, branch_0x802c635c
    lw      $t8, 0x0($s0)
    or      $v0, $s1, $zero
    lui     $t2, 0x806
    addiu   $t2, $t2, 0x75e8
    addiu   $s1, $s1, 0x8
    lui     $t1, 0x600
    lui     $s0, 0xfa00
    sw      $t1, 0x0($v0)
    sw      $t2, 0x4($v0)
    or      $v1, $s1, $zero
    sw      $s0, 0x0($v1)
    lui     $t3, %hi(Unknown_0_0x802c7710)
    lw      $t3, %lo(Unknown_0_0x802c7710)($t3)
    lui     $at, 0xff00
    lui     $t8, %hi(Unknown_0_0x802c76a4)
    andi    $t4, $t3, 0xff
    sll     $t5, $t4, 16
    or      $t6, $t5, $at
    ori     $t7, $t6, 0xff
    sw      $t7, 0x4($v1)
    lw      $t8, %lo(Unknown_0_0x802c76a4)($t8)
    addiu   $s1, $s1, 0x8
    beqzl   $t8, branch_0x802c6414
    or      $v0, $s1, $zero
    jal     Function_0x802c6ff8
    or      $a0, $s1, $zero
    or      $s1, $v0, $zero
    or      $v0, $s1, $zero
branch_0x802c6414:
    sw      $s6, 0x0($v0)
    addiu   $s1, $s1, 0x8
    sw      $zero, 0x4($v0)
    or      $v1, $s1, $zero
    addiu   $t9, $zero, 0x32ff
    sw      $t9, 0x4($v1)
    sw      $s0, 0x0($v1)
    lui     $fp, 0x802c
    addiu   $s1, $s1, 0x8
    addiu   $fp, $fp, 0x76c4
    lw      $s7, 0x4c($sp)
    addiu   $s6, $zero, 0xa
    or      $s4, $zero, $zero
branch_0x802c6448:
    lw      $v0, 0x0($fp)
    sll     $s2, $s4, 2
    addu    $s2, $s2, $s4
    beqz    $v0, branch_0x802c6740
    slti    $at, $v0, 0xa
    beqz    $at, branch_0x802c6494
    sll     $s2, $s2, 2
    lw      $t1, 0x0($s5)
    or      $a1, $v0, $zero
    addiu   $a1, $a1, 0x10
    andi    $t0, $a1, 0xff
    addu    $a3, $s2, $t1
    addiu   $a3, $a3, 0x2
    or      $a1, $t0, $zero
    or      $a0, $s1, $zero
    jal     Function_0x802c71b8
    addiu   $a2, $zero, 0x65
    b       branch_0x802c6508
    or      $s1, $v0, $zero
branch_0x802c6494:
    div     $zero, $v0, $s6
    lw      $t3, 0x0($s5)
    mfhi    $s7
    or      $a1, $s7, $zero
    addiu   $a1, $a1, 0x10
    bnez    $s6, branch_0x802c64b4
    nop
    break   0x7
branch_0x802c64b4:
    addiu   $at, $zero, 0xffff
    bne     $s6, $at, branch_0x802c64cc
    lui     $at, 0x8000
    bne     $v0, $at, branch_0x802c64cc
    nop
    break   0x6
branch_0x802c64cc:
    andi    $t2, $a1, 0xff
    addu    $a3, $s2, $t3
    addiu   $a3, $a3, 0x2
    or      $a1, $t2, $zero
    or      $a0, $s1, $zero
    jal     Function_0x802c71b8
    addiu   $a2, $zero, 0x6a
    lw      $t4, 0x0($s5)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x11
    addu    $a3, $s2, $t4
    addiu   $a3, $a3, 0x2
    jal     Function_0x802c71b8
    addiu   $a2, $zero, 0x60
    or      $s1, $v0, $zero
branch_0x802c6508:
    lw      $v0, 0x0($fp)
    lui     $t6, 0x801d
    sll     $t5, $v0, 2
    addu    $t6, $t6, $t5
    lw      $t6, -0x4c8c($t6)
    bnezl   $t6, branch_0x802c6744
    addiu   $s4, $s4, 0x1
    lw      $t0, 0x0($s5)
    sll     $t7, $v0, 5
    lui     $t9, 0x801d
    addiu   $t9, $t9, 0xb178
    addiu   $t8, $t7, 0xffe0
    addu    $t1, $s2, $t0
    addu    $s3, $t8, $t9
    addiu   $t2, $t1, 0x2
    sw      $t2, 0x10($sp)
    addiu   $a1, $s3, 0xe
    or      $a0, $s1, $zero
    addiu   $a2, $zero, 0x10
    jal     Function_0x802c7304
    addiu   $a3, $zero, 0x9f
    lb      $t3, 0xa($s3)
    or      $s1, $v0, $zero
    or      $a0, $s1, $zero
    beqzl   $t3, branch_0x802c65c4
    lw      $s0, 0x0($s3)
    lui     $a2, 0x802c
    lw      $a2, 0x7718($a2)
    lw      $t5, 0x0($s5)
    addiu   $a1, $zero, 0x3c
    sll     $t4, $a2, 4
    addu    $a3, $s2, $t5
    addiu   $a3, $a3, 0x2
    jal     Function_0x802c71b8
    addiu   $a2, $t4, 0x9f
    lui     $a2, 0x802c
    lw      $a2, 0x7718($a2)
    lw      $t7, 0x0($s5)
    or      $a0, $v0, $zero
    sll     $t6, $a2, 4
    addu    $a3, $s2, $t7
    addiu   $a3, $a3, 0x2
    addiu   $a2, $t6, 0xaf
    jal     Function_0x802c71b8
    lbu     $a1, 0xa($s3)
    or      $s1, $v0, $zero
    lw      $s0, 0x0($s3)
branch_0x802c65c4:
    lw      $t1, 0x0($s5)
    or      $a0, $s1, $zero
    addiu   $s0, $s0, 0xff
    srl     $t8, $s0, 8
    div     $zero, $t8, $s6
    or      $s0, $t8, $zero
    mfhi    $t9
    addiu   $a1, $t9, 0x10
    andi    $t0, $a1, 0xff
    bnez    $s6, branch_0x802c65f4
    nop
    break   0x7
branch_0x802c65f4:
    addiu   $at, $zero, 0xffff
    bne     $s6, $at, branch_0x802c660c
    lui     $at, 0x8000
    bne     $s0, $at, branch_0x802c660c
    nop
    break   0x6
branch_0x802c660c:
    addu    $a3, $s2, $t1
    addiu   $a3, $a3, 0x2
    or      $a1, $t0, $zero
    jal     Function_0x802c71b8
    addiu   $a2, $zero, 0x21a
    slti    $at, $s0, 0xa
    bnez    $at, branch_0x802c66b4
    or      $s1, $v0, $zero
    div     $zero, $s0, $s6
    mflo    $v0
    lw      $t4, 0x0($s5)
    bnez    $s6, branch_0x802c6644
    nop
    break   0x7
branch_0x802c6644:
    addiu   $at, $zero, 0xffff
    bne     $s6, $at, branch_0x802c665c
    lui     $at, 0x8000
    bne     $s0, $at, branch_0x802c665c
    nop
    break   0x6
branch_0x802c665c:
    div     $zero, $v0, $s6
    mfhi    $t2
    addiu   $a1, $t2, 0x10
    andi    $t3, $a1, 0xff
    addu    $a3, $s2, $t4
    or      $s7, $v0, $zero
    addiu   $a3, $a3, 0x2
    or      $a1, $t3, $zero
    or      $a0, $s1, $zero
    bnez    $s6, branch_0x802c668c
    nop
    break   0x7
branch_0x802c668c:
    addiu   $at, $zero, 0xffff
    bne     $s6, $at, branch_0x802c66a4
    lui     $at, 0x8000
    bne     $v0, $at, branch_0x802c66a4
    nop
    break   0x6
branch_0x802c66a4:
    addiu   $a2, $zero, 0x20a
    jal     Function_0x802c71b8
    nop
    or      $s1, $v0, $zero
branch_0x802c66b4:
    slti    $at, $s0, 0x64
    bnezl   $at, branch_0x802c6744
    addiu   $s4, $s4, 0x1
    div     $zero, $s7, $s6
    bnez    $s6, branch_0x802c66d0
    nop
    break   0x7
branch_0x802c66d0:
    addiu   $at, $zero, 0xffff
    bne     $s6, $at, branch_0x802c66e8
    lui     $at, 0x8000
    bne     $s7, $at, branch_0x802c66e8
    nop
    break   0x6
branch_0x802c66e8:
    mflo    $s7
    lw      $t7, 0x0($s5)
    or      $a0, $s1, $zero
    div     $zero, $s7, $s6
    mfhi    $t5
    addiu   $a1, $t5, 0x10
    andi    $t6, $a1, 0xff
    bnez    $s6, branch_0x802c6710
    nop
    break   0x7
branch_0x802c6710:
    addiu   $at, $zero, 0xffff
    bne     $s6, $at, branch_0x802c6728
    lui     $at, 0x8000
    bne     $s7, $at, branch_0x802c6728
    nop
    break   0x6
branch_0x802c6728:
    addu    $a3, $s2, $t7
    addiu   $a3, $a3, 0x2
    or      $a1, $t6, $zero
    jal     Function_0x802c71b8
    addiu   $a2, $zero, 0x1fa
    or      $s1, $v0, $zero
branch_0x802c6740:
    addiu   $s4, $s4, 0x1
branch_0x802c6744:
    addiu   $at, $zero, 0x9
    bne     $s4, $at, branch_0x802c6448
    addiu   $fp, $fp, 0x4
    or      $v1, $s1, $zero
    sw      $s7, 0x4c($sp)
    lui     $t9, 0x806
    addiu   $t9, $t9, 0x75b8
    addiu   $s1, $s1, 0x8
    lui     $t8, 0x600
    sw      $t8, 0x0($v1)
    sw      $t9, 0x4($v1)
    or      $a0, $s1, $zero
    lui     $t1, 0x9f
    ori     $t1, $t1, 0xc77c
    lui     $t0, 0xed00
    sw      $t0, 0x0($a0)
    sw      $t1, 0x4($a0)
    lw      $ra, 0x44($sp)
    addiu   $v0, $s1, 0x8
    lw      $s1, 0x24($sp)
    lw      $fp, 0x40($sp)
    lw      $s7, 0x3c($sp)
    lw      $s6, 0x38($sp)
    lw      $s5, 0x34($sp)
    lw      $s4, 0x30($sp)
    lw      $s3, 0x2c($sp)
    lw      $s2, 0x28($sp)
    lw      $s0, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x58

.globl Function_0x802c67bc
Function_0x802c67bc: # 0x802c67bc
    addiu   $sp, $sp, 0xffd0
    addiu   $t4, $a1, 0x1ff
    sll     $t6, $t4, 2
    andi    $t7, $t6, 0xfff
    sw      $fp, 0x28($sp)
    sw      $s5, 0x1c($sp)
    sw      $s2, 0x10($sp)
    sll     $t5, $a1, 2
    sw      $ra, 0x2c($sp)
    sw      $s7, 0x24($sp)
    sw      $s6, 0x20($sp)
    sw      $s4, 0x18($sp)
    sw      $s3, 0x14($sp)
    sw      $s1, 0xc($sp)
    sw      $s0, 0x8($sp)
    andi    $t6, $t5, 0xfff
    lui     $s2, 0x708
    lui     $s5, 0x77f
    lui     $fp, 0x8
    sll     $t8, $t7, 12
    lui     $t0, 0x805
    lui     $at, 0xe400
    or      $t4, $t8, $at
    addiu   $t0, $t0, 0xa460
    ori     $fp, $fp, 0x200
    ori     $s5, $s5, 0xf010
    ori     $s2, $s2, 0x200
    sll     $t5, $t6, 12
    lui     $s0, 0xfd10
    lui     $s1, 0xf510
    lui     $s3, 0xe600
    lui     $s4, 0xf300
    lui     $s6, 0xe700
    lui     $s7, 0xf511
    lui     $ra, 0xf200
    or      $t1, $zero, $zero
    or      $a3, $a2, $zero
    addiu   $t2, $a2, 0x3
branch_0x802c6854:
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $s0, 0x0($v0)
    sw      $t0, 0x4($v0)
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    sw      $s2, 0x4($v1)
    sw      $s1, 0x0($v1)
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($a1)
    sw      $s3, 0x0($a1)
    or      $t3, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $s5, 0x4($a2)
    sw      $s4, 0x0($a2)
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($t3)
    sw      $s6, 0x0($t3)
    or      $v1, $a0, $zero
    lui     $t8, 0x7f
    ori     $t8, $t8, 0xc00c
    sw      $fp, 0x4($v0)
    sw      $s7, 0x0($v0)
    sll     $t9, $t2, 2
    sw      $t8, 0x4($v1)
    addiu   $a0, $a0, 0x8
    andi    $t6, $t9, 0xfff
    or      $t7, $t4, $t6
    or      $a1, $a0, $zero
    sll     $t8, $a3, 2
    sw      $ra, 0x0($v1)
    andi    $t9, $t8, 0xfff
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    or      $t6, $t5, $t9
    sw      $t7, 0x0($a1)
    sw      $t6, 0x4($a1)
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    lui     $t7, 0xb300
    lui     $t9, 0x1000
    addiu   $t1, $t1, 0x4
    addiu   $at, $zero, 0x14
    ori     $t9, $t9, 0x400
    sw      $t7, 0x0($a2)
    sw      $zero, 0x4($a2)
    lui     $t8, 0xb200
    addiu   $a3, $a3, 0x4
    addiu   $t2, $t2, 0x4
    addiu   $t0, $t0, 0x1000
    sw      $t8, 0x0($v0)
    sw      $t9, 0x4($v0)
    bne     $t1, $at, branch_0x802c6854
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

.globl Function_0x802c6970
Function_0x802c6970: # 0x802c6970
    addiu   $sp, $sp, 0xff98
    lui     $t6, 0x802c
    lw      $t6, 0x7660($t6)
    sw      $s0, 0x8($sp)
    sw      $ra, 0x2c($sp)
    sw      $s7, 0x24($sp)
    sw      $s4, 0x18($sp)
    sw      $s3, 0x14($sp)
    lui     $s0, 0x802c
    sll     $t7, $t6, 2
    sw      $fp, 0x28($sp)
    sw      $s6, 0x20($sp)
    sw      $s5, 0x1c($sp)
    sw      $s2, 0x10($sp)
    addu    $s0, $s0, $t7
    lui     $s3, 0xfd68
    lui     $s4, 0x708
    lui     $s7, 0x759
    lui     $ra, 0x8
    addiu   $t8, $zero, 0x43
    addiu   $t9, $zero, 0x3b
    lui     $t5, 0xf568
    sw      $s1, 0xc($sp)
    ori     $t5, $t5, 0x5a00
    sw      $t9, 0x30($sp)
    sw      $t8, 0x34($sp)
    ori     $ra, $ra, 0x200
    ori     $s7, $s7, 0xc01c
    ori     $s4, $s4, 0x200
    ori     $s3, $s3, 0x167
    lw      $s0, 0x7664($s0)
    addiu   $s2, $zero, 0x4b
    lui     $s5, 0xe600
    lui     $s6, 0xf400
    lui     $fp, 0xe700
branch_0x802c69fc:
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $s3, 0x0($v0)
    sw      $s0, 0x4($v0)
    or      $a1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $s4, 0x4($v1)
    sw      $t5, 0x0($v1)
    or      $a2, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($a1)
    sw      $s5, 0x0($a1)
    or      $a3, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $s7, 0x4($a2)
    sw      $s6, 0x0($a2)
    or      $t0, $a0, $zero
    sw      $zero, 0x4($a3)
    sw      $fp, 0x0($a3)
    addiu   $a0, $a0, 0x8
    or      $t1, $a0, $zero
    sw      $ra, 0x4($t0)
    sw      $t5, 0x0($t0)
    lui     $t7, 0x59
    ori     $t7, $t7, 0xc01c
    lui     $t6, 0xf200
    sw      $t6, 0x0($t1)
    sw      $t7, 0x4($t1)
    lw      $s1, 0x34($sp)
    addiu   $a0, $a0, 0x8
    lui     $at, 0xe47d
    sll     $t8, $s1, 2
    andi    $t9, $t8, 0xfff
    or      $t6, $t9, $at
    or      $t2, $a0, $zero
    sw      $t6, 0x0($t2)
    lw      $t7, 0x30($sp)
    or      $s1, $t8, $zero
    lui     $at, 0x23
    sll     $t8, $t7, 2
    andi    $t9, $t8, 0xfff
    or      $t6, $t9, $at
    addiu   $a0, $a0, 0x8
    or      $t3, $a0, $zero
    sw      $t6, 0x4($t2)
    addiu   $a0, $a0, 0x8
    or      $t4, $a0, $zero
    lui     $t7, 0xb300
    sw      $t7, 0x0($t3)
    sw      $zero, 0x4($t3)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    addiu   $a0, $a0, 0x8
    lui     $t8, 0xb200
    or      $v0, $a0, $zero
    sw      $t8, 0x0($t4)
    sw      $t9, 0x4($t4)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    addiu   $s0, $s0, 0xb40
    sw      $s0, 0x4($v0)
    addiu   $a0, $a0, 0x8
    sw      $s3, 0x0($v0)
    or      $a1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $s4, 0x4($v1)
    sw      $t5, 0x0($v1)
    or      $a2, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($a1)
    sw      $s5, 0x0($a1)
    or      $a3, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $s7, 0x4($a2)
    sw      $s6, 0x0($a2)
    or      $t0, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($a3)
    sw      $fp, 0x0($a3)
    or      $t1, $a0, $zero
    sw      $ra, 0x4($t0)
    sw      $t5, 0x0($t0)
    sll     $t8, $s2, 2
    lui     $t7, 0x59
    lui     $t6, 0xf200
    sw      $t6, 0x0($t1)
    ori     $t7, $t7, 0xc01c
    andi    $t9, $t8, 0xfff
    addiu   $a0, $a0, 0x8
    lui     $at, 0xe47d
    or      $t6, $t9, $at
    or      $t2, $a0, $zero
    sw      $t7, 0x4($t1)
    andi    $t7, $s1, 0xfff
    addiu   $a0, $a0, 0x8
    lui     $at, 0x23
    or      $t8, $t7, $at
    or      $t3, $a0, $zero
    sw      $t6, 0x0($t2)
    sw      $t8, 0x4($t2)
    addiu   $a0, $a0, 0x8
    lui     $t9, 0xb300
    sw      $t9, 0x0($t3)
    or      $t4, $a0, $zero
    sw      $zero, 0x4($t3)
    lui     $t7, 0x400
    ori     $t7, $t7, 0x400
    lui     $t6, 0xb200
    sw      $t6, 0x0($t4)
    sw      $t7, 0x4($t4)
    lw      $t6, 0x30($sp)
    lw      $t8, 0x34($sp)
    addiu   $at, $zero, 0x8b
    addiu   $s2, $s2, 0x10
    addiu   $t7, $t6, 0x10
    addiu   $t9, $t8, 0x10
    sw      $t9, 0x34($sp)
    sw      $t7, 0x30($sp)
    addiu   $a0, $a0, 0x8
    bne     $s2, $at, branch_0x802c69fc
    addiu   $s0, $s0, 0xb40
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
    addiu   $sp, $sp, 0x68
    jr      $ra
    or      $v0, $a0, $zero

Function_0x802c6c1c: # 0x802c6c1c
    addiu   $sp, $sp, 0xffc8
    lui     $t5, 0x801d
    lw      $t5, -0x4e90($t5)
    sw      $ra, 0x2c($sp)
    sw      $fp, 0x28($sp)
    slti    $at, $t5, 0xa
    sw      $s7, 0x24($sp)
    sw      $s6, 0x20($sp)
    sw      $s5, 0x1c($sp)
    sw      $s4, 0x18($sp)
    sw      $s3, 0x14($sp)
    sw      $s2, 0x10($sp)
    sw      $s1, 0xc($sp)
    beqz    $at, branch_0x802c6c64
    sw      $s0, 0x8($sp)
    addiu   $t6, $zero, 0x1
    b       branch_0x802c6c84
    sw      $t6, 0x30($sp)
branch_0x802c6c64:
    slti    $at, $t5, 0x64
    beqzl   $at, branch_0x802c6c80
    addiu   $t8, $zero, 0x3
    addiu   $t7, $zero, 0x2
    b       branch_0x802c6c84
    sw      $t7, 0x30($sp)

.globl Function_0x802c6c7c
Function_0x802c6c7c: # 0x802c6c7c
    addiu   $t8, $zero, 0x3
branch_0x802c6c80:
    sw      $t8, 0x30($sp)
branch_0x802c6c84:
    lw      $t9, 0x30($sp)
    or      $t0, $zero, $zero
    addiu   $t1, $zero, 0x230
    blez    $t9, branch_0x802c6e0c
    addiu   $t2, $zero, 0x220
    lui     $ra, 0x8
    lui     $fp, 0xf568
    lui     $s6, 0x708
    lui     $s3, 0x708
    lui     $s1, 0x802c
    addiu   $s1, $s1, 0x767c
    ori     $s3, $s3, 0x200
    ori     $s6, $s6, 0xf400
    ori     $fp, $fp, 0x400
    ori     $ra, $ra, 0x200
    lui     $s7, 0xe700
    lui     $s5, 0xf300
    lui     $s4, 0xe600
    lui     $s2, 0xf570
    lui     $s0, 0xfd70
    addiu   $t4, $zero, 0xa
branch_0x802c6cd8:
    div     $zero, $t5, $t4
    mfhi    $a3
    sll     $t6, $a3, 2
    or      $v0, $a0, $zero
    sw      $s0, 0x0($v0)
    addu    $t7, $s1, $t6
    lw      $t8, 0x0($t7)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $t8, 0x4($v0)
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    sw      $s3, 0x4($v1)
    sw      $s2, 0x0($v1)
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($a1)
    sw      $s4, 0x0($a1)
    or      $t3, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $s6, 0x4($a2)
    sw      $s5, 0x0($a2)
    or      $v0, $a0, $zero
    bnez    $t4, branch_0x802c6d44
    nop
    break   0x7
branch_0x802c6d44:
    addiu   $at, $zero, 0xffff
    bne     $t4, $at, branch_0x802c6d5c
    lui     $at, 0x8000
    bne     $t5, $at, branch_0x802c6d5c
    nop
    break   0x6
branch_0x802c6d5c:
    sw      $zero, 0x4($t3)
    sw      $s7, 0x0($t3)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $ra, 0x4($v0)
    sw      $fp, 0x0($v0)
    lui     $t6, 0x3
    lui     $t9, 0xf200
    sll     $t7, $t1, 2
    sw      $t9, 0x0($v1)
    ori     $t6, $t6, 0xc044
    andi    $t8, $t7, 0xfff
    sw      $t6, 0x4($v1)
    sll     $t9, $t8, 12
    lui     $at, 0xe400
    addiu   $a0, $a0, 0x8
    or      $t6, $t9, $at
    ori     $t7, $t6, 0x608
    or      $a1, $a0, $zero
    sll     $t8, $t2, 2
    andi    $t9, $t8, 0xfff
    sll     $t6, $t9, 12
    sw      $t7, 0x0($a1)
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    ori     $t7, $t6, 0x5c0
    sw      $t7, 0x4($a1)
    addiu   $a0, $a0, 0x8
    lui     $t8, 0xb300
    sw      $t8, 0x0($a2)
    or      $v0, $a0, $zero
    sw      $zero, 0x4($a2)
    lui     $t6, 0x400
    ori     $t6, $t6, 0x400
    lui     $t9, 0xb200
    sw      $t9, 0x0($v0)
    sw      $t6, 0x4($v0)
    lw      $t7, 0x30($sp)
    addiu   $t0, $t0, 0x1
    mflo    $t5
    addiu   $t2, $t2, 0xffee
    addiu   $t1, $t1, 0xffee
    bne     $t0, $t7, branch_0x802c6cd8
    addiu   $a0, $a0, 0x8
branch_0x802c6e0c:
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
    addiu   $sp, $sp, 0x38
    jr      $ra
    or      $v0, $a0, $zero

.globl Function_0x802c6e40
Function_0x802c6e40: # 0x802c6e40
    addiu   $sp, $sp, 0xffd0
    addiu   $t5, $a1, 0xc0
    sll     $t6, $t5, 2
    sw      $s0, 0x8($sp)
    andi    $t7, $t6, 0xfff
    sw      $ra, 0x2c($sp)
    sw      $s7, 0x24($sp)
    sw      $s5, 0x1c($sp)
    sw      $s2, 0x10($sp)
    sw      $s1, 0xc($sp)
    sll     $s0, $a1, 2
    sw      $fp, 0x28($sp)
    sw      $s6, 0x20($sp)
    sw      $s4, 0x18($sp)
    sw      $s3, 0x14($sp)
    andi    $t6, $s0, 0xfff
    lui     $s1, 0xfd68
    lui     $s2, 0x708
    lui     $s5, 0x72f
    lui     $s7, 0x8
    lui     $ra, 0x2f
    sll     $t8, $t7, 12
    lui     $t0, 0x801
    lui     $at, 0xe400
    lui     $t4, 0xf568
    ori     $t4, $t4, 0x3000
    or      $t5, $t8, $at
    addiu   $t0, $t0, 0x8510
    ori     $ra, $ra, 0xc028
    ori     $s7, $s7, 0x200
    ori     $s5, $s5, 0xc028
    ori     $s2, $s2, 0x200
    ori     $s1, $s1, 0xbf
    sll     $s0, $t6, 12
    lui     $s3, 0xe600
    lui     $s4, 0xf400
    lui     $s6, 0xe700
    lui     $fp, 0xf200
    or      $t1, $zero, $zero
    or      $a3, $a2, $zero
    addiu   $t2, $a2, 0xb
branch_0x802c6ee4:
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $s1, 0x0($v0)
    sw      $t0, 0x4($v0)
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    sw      $s2, 0x4($v1)
    sw      $t4, 0x0($v1)
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($a1)
    sw      $s3, 0x0($a1)
    or      $t3, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $s5, 0x4($a2)
    sw      $s4, 0x0($a2)
    or      $v0, $a0, $zero
    sw      $zero, 0x4($t3)
    sw      $s6, 0x0($t3)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $s7, 0x4($v0)
    sw      $t4, 0x0($v0)
    sll     $t8, $t2, 2
    addiu   $a0, $a0, 0x8
    andi    $t9, $t8, 0xfff
    or      $t6, $t5, $t9
    or      $a1, $a0, $zero
    sll     $t7, $a3, 2
    sw      $ra, 0x4($v1)
    sw      $fp, 0x0($v1)
    andi    $t8, $t7, 0xfff
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    or      $t9, $s0, $t8
    sw      $t6, 0x0($a1)
    sw      $t9, 0x4($a1)
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    lui     $t6, 0xb300
    lui     $t8, 0x400
    addiu   $t1, $t1, 0xb
    addiu   $at, $zero, 0x2c
    ori     $t8, $t8, 0x400
    sw      $t6, 0x0($a2)
    sw      $zero, 0x4($a2)
    lui     $t7, 0xb200
    addiu   $a3, $a3, 0xb
    addiu   $t2, $t2, 0xb
    addiu   $t0, $t0, 0x840
    sw      $t7, 0x0($v0)
    sw      $t8, 0x4($v0)
    bne     $t1, $at, branch_0x802c6ee4
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

.globl Function_0x802c6ff8
Function_0x802c6ff8: # 0x802c6ff8
    addiu   $sp, $sp, 0xffd0
    sw      $fp, 0x28($sp)
    sw      $s6, 0x20($sp)
    sw      $s4, 0x18($sp)
    sw      $s1, 0xc($sp)
    sw      $s0, 0x8($sp)
    sw      $ra, 0x2c($sp)
    sw      $s7, 0x24($sp)
    sw      $s5, 0x1c($sp)
    sw      $s3, 0x14($sp)
    sw      $s2, 0x10($sp)
    lui     $s0, 0xfd68
    lui     $s1, 0x708
    lui     $s4, 0x77b
    lui     $s6, 0x8
    lui     $fp, 0x7b
    lui     $t0, 0x801
    lui     $t4, 0x802c
    lui     $t3, 0xf568
    ori     $t3, $t3, 0x7c00
    addiu   $t4, $t4, 0x76b0
    addiu   $t0, $t0, 0xa618
    ori     $fp, $fp, 0xc010
    ori     $s6, $s6, 0x200
    ori     $s4, $s4, 0xc010
    ori     $s1, $s1, 0x200
    ori     $s0, $s0, 0x1ef
    lui     $s2, 0xe600
    lui     $s3, 0xf400
    lui     $s5, 0xe700
    lui     $s7, 0xf200
    lui     $ra, 0xe48e
    or      $a3, $zero, $zero
    addiu   $t5, $zero, 0x14
branch_0x802c7080:
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $s0, 0x0($v0)
    sw      $t0, 0x4($v0)
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    sw      $s1, 0x4($v1)
    sw      $t3, 0x0($v1)
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($a1)
    sw      $s2, 0x0($a1)
    or      $t1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $s4, 0x4($a2)
    sw      $s3, 0x0($a2)
    or      $v0, $a0, $zero
    sw      $zero, 0x4($t1)
    sw      $s5, 0x0($t1)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $s6, 0x4($v0)
    sw      $t3, 0x0($v0)
    sw      $fp, 0x4($v1)
    sw      $s7, 0x0($v1)
    lw      $t6, 0x0($t4)
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    multu   $t6, $t5
    addiu   $a0, $a0, 0x8
    lui     $at, 0x12
    or      $a2, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $t2, $a0, $zero
    addiu   $t0, $t0, 0x9b0
    addiu   $a0, $a0, 0x8
    mflo    $t7
    addu    $t8, $t7, $a3
    addiu   $t9, $t8, 0xfd
    sll     $t6, $t9, 2
    andi    $t7, $t6, 0xfff
    or      $t8, $t7, $ra
    sw      $t8, 0x0($a1)
    lw      $t9, 0x0($t4)
    multu   $t9, $t5
    mflo    $t6
    addu    $t7, $t6, $a3
    addiu   $t8, $t7, 0xf8
    sll     $t9, $t8, 2
    andi    $t6, $t9, 0xfff
    or      $t7, $t6, $at
    sw      $t7, 0x4($a1)
    lui     $t6, 0x400
    lui     $t8, 0xb300
    addiu   $at, $zero, 0x14
    addiu   $a3, $a3, 0x5
    sw      $t8, 0x0($a2)
    ori     $t6, $t6, 0x400
    sw      $zero, 0x4($a2)
    lui     $t9, 0xb200
    sw      $t9, 0x0($t2)
    bne     $a3, $at, branch_0x802c7080
    sw      $t6, 0x4($t2)
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

.globl Function_0x802c71b8
Function_0x802c71b8: # 0x802c71b8
    andi    $v0, $a1, 0xff
    slti    $at, $v0, 0x10
    beqz    $at, branch_0x802c71d0
    sw      $a1, 0x4($sp)
    jr      $ra
    or      $v0, $a0, $zero
branch_0x802c71d0:
    slti    $at, $v0, 0x42
    bnez    $at, branch_0x802c71e0
    addiu   $t0, $a0, 0x8
    addiu   $v0, $zero, 0x3b
branch_0x802c71e0:
    addiu   $a1, $v0, 0xfff0
    andi    $t7, $a1, 0xff
    lui     $t3, 0x800
    addiu   $t3, $t3, 0x8
    sll     $t9, $t7, 8
    addu    $t4, $t9, $t3
    lui     $t8, 0xfd70
    sw      $t8, 0x0($a0)
    sw      $t4, 0x4($a0)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t1, $t0, 0x8
    lui     $t5, 0xf570
    sw      $t5, 0x0($t0)
    sw      $t6, 0x4($t0)
    addiu   $t2, $t1, 0x8
    lui     $t7, 0xe600
    sw      $t7, 0x0($t1)
    sw      $zero, 0x4($t1)
    lui     $t9, 0x707
    ori     $t9, $t9, 0xf400
    lui     $t8, 0xf300
    sw      $t8, 0x0($t2)
    sw      $t9, 0x4($t2)
    addiu   $v0, $t2, 0x8
    lui     $t3, 0xe700
    sw      $t3, 0x0($v0)
    addiu   $v1, $v0, 0x8
    sw      $zero, 0x4($v0)
    lui     $t5, 0x8
    lui     $t4, 0xf568
    ori     $t4, $t4, 0x400
    ori     $t5, $t5, 0x200
    sw      $t5, 0x4($v1)
    sw      $t4, 0x0($v1)
    addiu   $a0, $v1, 0x8
    lui     $t7, 0x3
    lui     $t6, 0xf200
    addiu   $t8, $a2, 0x10
    sw      $t6, 0x0($a0)
    ori     $t7, $t7, 0xc03c
    sll     $t9, $t8, 2
    sw      $t7, 0x4($a0)
    andi    $t3, $t9, 0xfff
    addiu   $t6, $a3, 0x10
    sll     $t7, $t6, 2
    sll     $t4, $t3, 12
    lui     $at, 0xe400
    or      $t5, $t4, $at
    andi    $t8, $t7, 0xfff
    or      $t9, $t5, $t8
    sll     $t3, $a2, 2
    addiu   $t0, $a0, 0x8
    andi    $t4, $t3, 0xfff
    sll     $t7, $a3, 2
    andi    $t5, $t7, 0xfff
    sll     $t6, $t4, 12
    or      $t8, $t6, $t5
    addiu   $v1, $t0, 0x8
    sw      $t9, 0x0($t0)
    sw      $t8, 0x4($t0)
    lui     $t9, 0xb300
    addiu   $a1, $v1, 0x8
    sw      $t9, 0x0($v1)
    sw      $zero, 0x4($v1)
    lui     $t4, 0x400
    ori     $t4, $t4, 0x400
    lui     $t3, 0xb200
    sw      $t3, 0x0($a1)
    sw      $t4, 0x4($a1)
    addiu   $v0, $a1, 0x8
    jr      $ra
    nop

.globl Function_0x802c7304
Function_0x802c7304: # 0x802c7304
    addiu   $sp, $sp, 0xffd0
    sw      $s4, 0x24($sp)
    lui     $s4, 0x802c
    addiu   $s4, $s4, 0x7718
    sw      $s3, 0x20($sp)
    sw      $s2, 0x1c($sp)
    sw      $s1, 0x18($sp)
    sw      $s0, 0x14($sp)
    or      $s0, $a1, $zero
    or      $s2, $a2, $zero
    or      $s3, $a0, $zero
    sw      $ra, 0x2c($sp)
    sw      $s5, 0x28($sp)
    or      $s1, $a3, $zero
    beqz    $a2, branch_0x802c7388
    sw      $zero, 0x0($s4)
    lw      $s5, 0x40($sp)
branch_0x802c7348:
    lb      $v0, 0x0($s0)
    or      $a0, $s3, $zero
    or      $a2, $s1, $zero
    beqz    $v0, branch_0x802c736c
    or      $a3, $s5, $zero
    lw      $t6, 0x0($s4)
    addiu   $t7, $t6, 0x1
    sw      $t7, 0x0($s4)
    lb      $v0, 0x0($s0)
branch_0x802c736c:
    andi    $a1, $v0, 0xff
    jal     Function_0x802c71b8
    addiu   $s0, $s0, 0x1
    addiu   $s2, $s2, 0xffff
    or      $s3, $v0, $zero
    bnez    $s2, branch_0x802c7348
    addiu   $s1, $s1, 0x10
branch_0x802c7388:
    lw      $ra, 0x2c($sp)
    or      $v0, $s3, $zero
    lw      $s3, 0x20($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    lw      $s2, 0x1c($sp)
    lw      $s4, 0x24($sp)
    lw      $s5, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x30


.globl Function_0x802c73b0
Function_0x802c73b0: # 0x802c73b0
    addiu   $sp, $sp, -0x8
    or      $v1, $a0, $zero
    sw      $s0, 0x4($sp)
    addiu   $a0, $a0, 0x8
    lui     $t6, 0xb600
    addiu   $t7, $zero, 0xffff
    sw      $t7, 0x4($v1)
    sw      $t6, 0x0($v1)
    or      $a1, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t8, 0xbb00
    sw      $t8, 0x0($a1)
    or      $a2, $a0, $zero
    sw      $zero, 0x4($a1)
    addiu   $a0, $a0, 0x8
    lui     $v0, 0xe700
    or      $a3, $a0, $zero
    sw      $v0, 0x0($a2)
    sw      $zero, 0x4($a2)
    addiu   $a0, $a0, 0x8
    lui     $t9, 0xba00
    ori     $t9, $t9, 0x1402
    lui     $t6, 0x30
    or      $t0, $a0, $zero
    sw      $t6, 0x4($a3)
    sw      $t9, 0x0($a3)
    lui     $t8, 0xfffc
    lui     $t7, 0xfcff
    ori     $t7, $t7, 0xffff
    ori     $t8, $t8, 0xf279
    sw      $t8, 0x4($t0)
    sw      $t7, 0x0($t0)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t9, 0xb900
    ori     $t9, $t9, 0x31d
    or      $a1, $a0, $zero
    sw      $t9, 0x0($v1)
    sw      $zero, 0x4($v1)
    addiu   $a0, $a0, 0x8
    lui     $t6, 0xb900
    ori     $t6, $t6, 0x2
    or      $a2, $a0, $zero
    sw      $t6, 0x0($a1)
    sw      $zero, 0x4($a1)
    lui     $t8, 0x9f
    ori     $t8, $t8, 0xc77c
    lui     $t7, 0xed00
    lui     $t0, %hi(Unknown_0x800d435c)
    lui     $s0, %hi(RamAddrForTrackFile_0x800d4364)
    lui     $t5, 0xf69f
    lui     $t4, 0x1
    lui     $t1, 0xff10
    sw      $t7, 0x0($a2)
    sw      $t8, 0x4($a2)
    addiu   $a0, $a0, 0x8
    ori     $t1, $t1, 0x27f
    ori     $t4, $t4, 0x1
    ori     $t5, $t5, 0xc77c
    addiu   $s0, $s0, %lo(RamAddrForTrackFile_0x800d4364)
    addiu   $t0, $t0, %lo(Unknown_0x800d435c)
    lui     $t3, 0xf700
    lui     $t2, 0x8000
branch_0x802c74b0:
    or      $v1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $v0, 0x0($v1)
    sw      $zero, 0x4($v1)
    or      $a1, $a0, $zero
    sw      $t1, 0x0($a1)
    lw      $t9, 0x0($t0)
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    addu    $t6, $t9, $t2
    sw      $t6, 0x4($a1)
    addiu   $a0, $a0, 0x8
    or      $a3, $a0, $zero
    addiu   $t0, $t0, 0x4
    sw      $t4, 0x4($a2)
    sw      $t3, 0x0($a2)
    sw      $zero, 0x4($a3)
    sw      $t5, 0x0($a3)
    bne     $t0, $s0, branch_0x802c74b0
    addiu   $a0, $a0, 0x8
    lw      $s0, 0x4($sp)
    addiu   $sp, $sp, 0x8
    jr      $ra
    or      $v0, $a0, $zero


.globl Function_0x802c7510
Function_0x802c7510: # 0x802c7510
    lui     $v0, %hi(MainState_0x800da8a4)
    addiu   $v0, $v0, %lo(MainState_0x800da8a4)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_6
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390_MainState)
    sw      $zero, %lo(Unknown_0x801ce390_MainState)($at) # MainState_0
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x13
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    lui     $at, 0x801d
    addiu   $t9, $zero, 0x1
    sw      $t9, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    addiu   $t0, $zero, 0x3
    sw      $t0, -0x5764($at)
    lui     $at, %hi(Unknown_0x800d439c)
    addiu   $t1, $zero, 0x2
    jr      $ra
    sw      $t1, %lo(Unknown_0x800d439c)($at)


.globl Function_0x802c7578
Function_0x802c7578: # 0x802c7578
    or      $v0, $a0, $zero
    addiu   $t0, $a0, 0x8
    lui     $t6, 0xbb00
    sw      $t6, 0x0($v0)
    sw      $zero, 0x4($v0)
    addiu   $t1, $t0, 0x8
    lui     $t7, 0xe700
    sw      $t7, 0x0($t0)
    sw      $zero, 0x4($t0)
    lui     $t8, 0xba00
    ori     $t8, $t8, 0x1402
    sw      $t8, 0x0($t1)
    sw      $zero, 0x4($t1)
    addiu   $a0, $t1, 0x8
    lui     $t9, 0xfa00
    sw      $t9, 0x0($a0)
    lw      $t3, 0x14($sp)
    addiu   $v1, $a0, 0x8
    lui     $t6, 0xfffd
    andi    $t4, $t3, 0xff
    sw      $t4, 0x4($a0)
    lui     $t5, 0xfcff
    ori     $t5, $t5, 0xffff
    ori     $t6, $t6, 0xf6fb
    addiu   $t0, $v1, 0x8
    sw      $t6, 0x4($v1)
    sw      $t5, 0x0($v1)
    lui     $t8, 0x50
    lui     $t7, 0xb900
    ori     $t7, $t7, 0x31d
    ori     $t8, $t8, 0x4240
    sw      $t8, 0x4($t0)
    sw      $t7, 0x0($t0)
    addiu   $t1, $t0, 0x8
    lui     $t9, 0xb900
    ori     $t9, $t9, 0x2
    sw      $t9, 0x0($t1)
    sw      $zero, 0x4($t1)
    lw      $t6, 0x10($sp)
    andi    $t3, $a3, 0x3ff
    sll     $t4, $t3, 14
    lui     $at, 0xf600
    andi    $t7, $t6, 0x3ff
    sll     $t8, $t7, 2
    or      $t5, $t4, $at
    andi    $t6, $a2, 0x3ff
    andi    $t3, $a1, 0x3ff
    addiu   $t2, $t1, 0x8
    sll     $t4, $t3, 14
    sll     $t7, $t6, 2
    or      $t9, $t5, $t8
    or      $t5, $t4, $t7
    sw      $t5, 0x4($t2)
    sw      $t9, 0x0($t2)
    jr      $ra
    addiu   $v0, $t2, 0x8


Unknown_0_0x802c7668: # 0x1b3bc8
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b3bc8, 0x1b3c14 - 0x1b3bc8

Unknown_0_0x802c76a4: # 0x1b3c14
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b3c14, 0x1b3c18 - 0x1b3c14

Unknown_0_0x802c76a8: # 0x1b3c18
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b3c18, 0x1b3c1c - 0x1b3c18

Unknown_0_0x802c76ac: # 0x1b3c1c
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b3c1c, 0x1b3c24 - 0x1b3c1c

Unknown_0_0x802c76b4: # 0x1b3c24
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b3c24, 0x1b3c60 - 0x1b3c24

Unknown_0_0x802c76f0: # 0x1b3c60
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b3c60, 0x1b3c64 - 0x1b3c60

Unknown_0_0x802c76f4: # 0x1b3c64
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b3c64, ROM_0x1b3c80 - 0x1b3c64

# 0x802c7710 0x1b3c80

