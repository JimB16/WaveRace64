

.include "source/constants.s"

.section .textoverlay12, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    lui     $t6, 0x801d
    lw      $t6, -0x1c64($t6)
    lui     $t7, 0x800e
    beqz    $t6, branch_0x802c5960
    nop
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x44
    lui     $v1, 0x802c
    bne     $t7, $at, branch_0x802c5960
    addiu   $v1, $v1, 0x6b40
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6b58
branch_0x802c5830:
    addiu   $v1, $v1, 0x4
    sltu    $at, $v1, $v0
    bnez    $at, branch_0x802c5830
    sw      $zero, -0x4($v1)
    lui     $a0, 0x802c
    addiu   $a0, $a0, 0x6b40
    addiu   $a1, $zero, 0x1
    sw      $a1, 0x10($a0)
    sw      $a1, 0xc($a0)
    lui     $v0, 0x801d
    lb      $v0, -0x5020($v0)
    or      $t8, $a1, $zero
    lui     $v1, 0x802c
    andi    $t9, $v0, 0x1
    beqz    $t9, branch_0x802c5874
    andi    $t0, $v0, 0x2
    sw      $a1, 0x0($a0)
branch_0x802c5874:
    beqz    $t0, branch_0x802c5880
    andi    $t1, $v0, 0x4
    sw      $a1, 0x4($a0)
branch_0x802c5880:
    beqz    $t1, branch_0x802c588c
    or      $v0, $zero, $zero
    sw      $a1, 0x8($a0)
branch_0x802c588c:
    addiu   $v1, $v1, 0x6b40
branch_0x802c5890:
    lw      $t2, 0x0($v1)
    bnezl   $t2, branch_0x802c58b0
    addiu   $v1, $zero, 0x3
    addiu   $v0, $v0, 0x1
    slti    $at, $v0, 0x5
    bnez    $at, branch_0x802c5890
    addiu   $v1, $v1, 0x4
    addiu   $v1, $zero, 0x3
branch_0x802c58b0:
    bne     $v0, $v1, branch_0x802c58cc
    nop
    lui     $at, 0x802c
    sw      $a1, 0x6b30($at)
    lui     $at, 0x802c
    b       branch_0x802c5910
    sw      $a1, 0x6b34($at)
branch_0x802c58cc:
    div     $zero, $v0, $v1
    bnez    $v1, branch_0x802c58dc
    nop
    break   0x7
branch_0x802c58dc:
    addiu   $at, $zero, 0xffff
    bne     $v1, $at, branch_0x802c58f4
    lui     $at, 0x8000
    bne     $v0, $at, branch_0x802c58f4
    nop
    break   0x6
branch_0x802c58f4:
    lui     $at, 0x802c
    mfhi    $t3
    sw      $t3, 0x6b30($at)
    mflo    $t4
    lui     $at, 0x802c
    sw      $t4, 0x6b34($at)
    or      $v0, $zero, $zero
branch_0x802c5910:
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6b14
    lui     $v1, 0x802c
    lui     $a1, 0x802c
    sw      $zero, 0x0($v0)
    addiu   $a1, $a1, 0x6b4c
    addiu   $v1, $v1, 0x6b40
    lw      $t5, 0x0($v1)
branch_0x802c5930:
    addiu   $v1, $v1, 0x4
    beqz    $t5, branch_0x802c5948
    nop
    lw      $t6, 0x0($v0)
    addiu   $t7, $t6, 0x1
    sw      $t7, 0x0($v0)
branch_0x802c5948:
    bnel    $v1, $a1, branch_0x802c5930
    lw      $t5, 0x0($v1)
    lw      $t8, 0x0($v0)
    bnez    $t8, branch_0x802c5960
    nop
    sw      $zero, 0xc($a0)
branch_0x802c5960:
    jr      $ra
    nop


.globl Function_12_0x802c5968
Function_12_0x802c5968: # 0x802c5968
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c59a8
    lui     $t7, 0x800e
    sw      $zero, 0x0($v0)
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x44
    bne     $t7, $at, branch_0x802c59a8
    nop
    jal     Function_0x800939e4
    nop
    b       branch_0x802c5a04
    lw      $ra, 0x14($sp)
branch_0x802c59a8:
    lui     $at, 0x800e
    jal     Function_0x802c6200
    sw      $zero, -0x5754($at)
    lui     $t8, 0x800e
    lw      $t8, -0x575c($t8)
    addiu   $at, $zero, 0x44
    sw      $v0, 0x18($sp)
    bne     $t8, $at, branch_0x802c59dc
    lui     $t9, 0x8023
    jal     Function_0x802c5a10
    nop
    b       branch_0x802c5a00
    lw      $v0, 0x18($sp)
branch_0x802c59dc:
    lh      $t9, -0x782a($t9)
    addiu   $at, $zero, 0x1
    bnel    $t9, $at, branch_0x802c5a00
    lw      $v0, 0x18($sp)
    jal     Function_0x8007c4ac
    nop
    jal     Function_0x801ec094_ChangeStateTo3c
    nop
    lw      $v0, 0x18($sp)
branch_0x802c5a00:
    lw      $ra, 0x14($sp)
branch_0x802c5a04:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5a10
Function_0x802c5a10: # 0x802c5a10
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3b8
    lhu     $v0, 0x3a($v1)
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x14($sp)
    andi    $t6, $v0, 0xb000
    beqz    $t6, branch_0x802c5b68
    or      $t4, $zero, $zero
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3a0
    lw      $v0, 0x0($v1)
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6b34
    beqz    $v0, branch_0x802c5a74
    addiu   $t1, $zero, 0x1
    beq     $v0, $t1, branch_0x802c5b20
    addiu   $t3, $zero, 0x2
    addiu   $t3, $zero, 0x2
    beq     $v0, $t3, branch_0x802c5b34
    addiu   $a3, $zero, 0x3
    addiu   $a3, $zero, 0x3
    beql    $v0, $a3, branch_0x802c5b4c
    addiu   $t4, $zero, 0x1
    b       branch_0x802c5b50
    nop
branch_0x802c5a74:
    lw      $t7, 0x0($a1)
    addiu   $a3, $zero, 0x3
    lui     $t0, 0x802c
    multu   $t7, $a3
    addiu   $t0, $t0, 0x6b30
    lw      $t9, 0x0($t0)
    addiu   $at, $zero, 0x4
    addiu   $t4, $zero, 0x1
    addiu   $a0, $zero, 0x3c
    mflo    $t8
    addu    $v0, $t8, $t9
    bne     $v0, $at, branch_0x802c5ab8
    nop
    jal     Function_0x802c6a00
    sw      $t4, 0x1c($sp)
    b       branch_0x802c5b50
    lw      $t4, 0x1c($sp)
branch_0x802c5ab8:
    bne     $v0, $a3, branch_0x802c5b10
    addiu   $t1, $zero, 0x1
    lui     $a2, 0x801d
    lui     $a1, 0x800e
    lui     $t0, %hi(Unknown_0x800da72c)
    addiu   $t0, $t0, %lo(Unknown_0x800da72c)
    addiu   $a1, $a1, 0xa708
    addiu   $a2, $a2, 0xb068
branch_0x802c5ad8:
    or      $v0, $zero, $zero
    or      $v1, $a2, $zero
    or      $a0, $a1, $zero
branch_0x802c5ae4:
    lw      $t6, 0x0($a0)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x4
    addiu   $a0, $a0, 0x4
    bne     $v0, $a3, branch_0x802c5ae4
    sw      $t6, -0x4($v1)
    addiu   $a1, $a1, 0xc
    bne     $a1, $t0, branch_0x802c5ad8
    addiu   $a2, $a2, 0xc
    b       branch_0x802c5b50
    nop
branch_0x802c5b10:
    sw      $t1, 0x0($v1)
    lui     $at, 0x802c
    b       branch_0x802c5b50
    sw      $zero, 0x6b38($at)
branch_0x802c5b20:
    sw      $t3, 0x0($v1)
    lui     $at, 0x802c
    or      $t4, $t1, $zero
    b       branch_0x802c5b50
    sw      $t1, 0x6b38($at)
branch_0x802c5b34:
    sw      $a3, 0x0($v1)
    lui     $at, 0x802c
    addiu   $t4, $zero, 0x1
    b       branch_0x802c5b50
    sw      $t3, 0x6b38($at)

Function_0x802c5b48: # 0x802c5b48
    addiu   $t4, $zero, 0x1
branch_0x802c5b4c:
    sw      $zero, 0x0($v1)
branch_0x802c5b50:
    beqz    $t4, branch_0x802c61f0
    addiu   $a0, $zero, 0x11
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c61f4
    lw      $ra, 0x14($sp)
branch_0x802c5b68:
    andi    $t7, $v0, 0x4000
    beqzl   $t7, branch_0x802c5c14
    lhu     $v0, 0x2($v1)
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3a0
    lw      $v0, 0x0($v1)
    addiu   $t1, $zero, 0x1
    addiu   $a0, $zero, 0x3c
    beqzl   $v0, branch_0x802c5bbc
    addiu   $t4, $zero, 0x1
    beq     $v0, $t1, branch_0x802c5bcc
    lui     $at, 0x802c
    addiu   $t3, $zero, 0x2
    beq     $v0, $t3, branch_0x802c5bdc
    lui     $at, 0x802c
    addiu   $a3, $zero, 0x3
    beq     $v0, $a3, branch_0x802c5bec
    lui     $at, 0x802c
    b       branch_0x802c5bf8
    nop

.globl Function_0x802c5bb8
Function_0x802c5bb8: # 0x802c5bb8
    addiu   $t4, $zero, 0x1
branch_0x802c5bbc:
    jal     Function_0x802c6a00
    sw      $t4, 0x1c($sp)
    b       branch_0x802c5bf8
    lw      $t4, 0x1c($sp)
branch_0x802c5bcc:
    sw      $zero, 0x0($v1)
    addiu   $t4, $zero, 0x1
    b       branch_0x802c5bf8
    sw      $zero, 0x6b38($at)
branch_0x802c5bdc:
    sw      $t1, 0x0($v1)
    or      $t4, $t1, $zero
    b       branch_0x802c5bf8
    sw      $zero, 0x6b38($at)
branch_0x802c5bec:
    sw      $t3, 0x0($v1)
    or      $t4, $t1, $zero
    sw      $t1, 0x6b38($at)
branch_0x802c5bf8:
    beqz    $t4, branch_0x802c61f0
    addiu   $a0, $zero, 0x16
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c61f4
    lw      $ra, 0x14($sp)

Function_0x802c5c10: # 0x802c5c10
    lhu     $v0, 0x2($v1)
branch_0x802c5c14:
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3a0
    andi    $t8, $v0, 0x800
    beqz    $t8, branch_0x802c5d60
    andi    $t9, $v0, 0x400
    lw      $t9, 0x0($v1)
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6b34
    bnez    $t9, branch_0x802c5d48
    lui     $t2, 0x802c
    lw      $a0, 0x0($a1)
    addiu   $t1, $zero, 0x1
    or      $t4, $t1, $zero
    bne     $t1, $a0, branch_0x802c5c70
    addiu   $t7, $a0, 0xffff
    lui     $t5, 0x802c
    addiu   $t5, $t5, 0x6b10
    lw      $v0, 0x0($t5)
    addiu   $v1, $zero, 0xffff
    lui     $t0, 0x802c
    beq     $v1, $v0, branch_0x802c5c70
    addiu   $t0, $t0, 0x6b30
    sw      $v0, 0x0($t0)
branch_0x802c5c70:
    lw      $t2, 0x6b14($t2)
    lui     $t0, 0x802c
    lui     $t5, 0x802c
    addiu   $t5, $t5, 0x6b10
    bne     $t1, $t2, branch_0x802c5c98
    addiu   $t0, $t0, 0x6b30
    bne     $t1, $a0, branch_0x802c5c98
    addiu   $a3, $zero, 0x3
    b       branch_0x802c5cc0
    sw      $zero, 0x0($t0)
branch_0x802c5c98:
    addiu   $a3, $zero, 0x3
    bnel    $a3, $t2, branch_0x802c5cc4
    addiu   $t3, $zero, 0x2
    bnezl   $a0, branch_0x802c5cc4
    addiu   $t3, $zero, 0x2
    lw      $t6, 0x0($t0)
    addiu   $t3, $zero, 0x2
    bnel    $t3, $t6, branch_0x802c5cc4
    addiu   $t3, $zero, 0x2
    sw      $t1, 0x0($t0)
branch_0x802c5cc0:
    addiu   $t3, $zero, 0x2
branch_0x802c5cc4:
    sw      $t7, 0x0($a1)
    or      $a0, $t7, $zero
    bgez    $t7, branch_0x802c5cdc
    lw      $v1, 0x0($t0)
    sw      $t1, 0x0($a1)
    or      $a0, $t1, $zero
branch_0x802c5cdc:
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6b40
branch_0x802c5ce4:
    multu   $a0, $a3
    mflo    $t8
    addu    $v0, $t8, $v1
    sll     $t9, $v0, 2
    addu    $t6, $a2, $t9
    lw      $t7, 0x0($t6)
    addiu   $t8, $a0, 0xffff
    bnez    $t7, branch_0x802c5d20
    nop
    sw      $t8, 0x0($a1)
    bgez    $t8, branch_0x802c5ce4
    or      $a0, $t8, $zero
    sw      $t1, 0x0($a1)
    b       branch_0x802c5ce4
    or      $a0, $t1, $zero
branch_0x802c5d20:
    bne     $t1, $a0, branch_0x802c5d48
    nop
    bne     $a3, $t2, branch_0x802c5d34
    nop
    sw      $v1, 0x0($t5)
branch_0x802c5d34:
    bne     $a3, $t2, branch_0x802c5d48
    nop
    bne     $t3, $v1, branch_0x802c5d48
    nop
    sw      $t1, 0x0($t0)
branch_0x802c5d48:
    beqz    $t4, branch_0x802c61f0
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c61f4
    lw      $ra, 0x14($sp)
branch_0x802c5d60:
    beqz    $t9, branch_0x802c5eb4
    andi    $t6, $v0, 0x200
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3a0
    lw      $t6, 0x0($v1)
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6b34
    bnez    $t6, branch_0x802c5e9c
    lui     $t2, 0x802c
    lw      $a0, 0x0($a1)
    addiu   $t1, $zero, 0x1
    or      $t4, $t1, $zero
    bne     $t1, $a0, branch_0x802c5dbc
    addiu   $t8, $a0, 0x1
    lui     $t5, 0x802c
    addiu   $t5, $t5, 0x6b10
    lw      $v0, 0x0($t5)
    addiu   $v1, $zero, 0xffff
    lui     $t0, 0x802c
    beq     $v1, $v0, branch_0x802c5dbc
    addiu   $t0, $t0, 0x6b30
    sw      $v0, 0x0($t0)
    sw      $v1, 0x0($t5)
branch_0x802c5dbc:
    lw      $t2, 0x6b14($t2)
    lui     $t0, 0x802c
    lui     $t5, 0x802c
    addiu   $t5, $t5, 0x6b10
    bne     $t1, $t2, branch_0x802c5de4
    addiu   $t0, $t0, 0x6b30
    bne     $t1, $a0, branch_0x802c5de4
    addiu   $a3, $zero, 0x3
    b       branch_0x802c5e0c
    sw      $zero, 0x0($t0)
branch_0x802c5de4:
    addiu   $a3, $zero, 0x3
    bnel    $a3, $t2, branch_0x802c5e10
    slti    $at, $t8, 0x2
    bnezl   $a0, branch_0x802c5e10
    slti    $at, $t8, 0x2
    lw      $t7, 0x0($t0)
    addiu   $t3, $zero, 0x2
    bnel    $t3, $t7, branch_0x802c5e10
    slti    $at, $t8, 0x2
    sw      $t1, 0x0($t0)
branch_0x802c5e0c:
    slti    $at, $t8, 0x2
branch_0x802c5e10:
    addiu   $t3, $zero, 0x2
    sw      $t8, 0x0($a1)
    or      $a0, $t8, $zero
    bnez    $at, branch_0x802c5e2c
    lw      $v1, 0x0($t0)
    sw      $zero, 0x0($a1)
    or      $a0, $zero, $zero
branch_0x802c5e2c:
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6b40
branch_0x802c5e34:
    multu   $a0, $a3
    mflo    $t9
    addu    $v0, $t9, $v1
    sll     $t6, $v0, 2
    addu    $t7, $a2, $t6
    lw      $t8, 0x0($t7)
    addiu   $t9, $a0, 0x1
    slti    $at, $t9, 0x2
    bnez    $t8, branch_0x802c5e74
    nop
    sw      $t9, 0x0($a1)
    bnez    $at, branch_0x802c5e34
    or      $a0, $t9, $zero
    sw      $zero, 0x0($a1)
    b       branch_0x802c5e34
    or      $a0, $zero, $zero
branch_0x802c5e74:
    bne     $t1, $a0, branch_0x802c5e9c
    nop
    bne     $a3, $t2, branch_0x802c5e88
    nop
    sw      $v1, 0x0($t5)
branch_0x802c5e88:
    bne     $a3, $t2, branch_0x802c5e9c
    nop
    bne     $t3, $v1, branch_0x802c5e9c
    nop
    sw      $t1, 0x0($t0)
branch_0x802c5e9c:
    beqz    $t4, branch_0x802c61f0
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c61f4
    lw      $ra, 0x14($sp)
branch_0x802c5eb4:
    beqz    $t6, branch_0x802c604c
    andi    $t8, $v0, 0x100
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3a0
    lw      $v0, 0x0($v1)
    lui     $t0, 0x802c
    addiu   $t0, $t0, 0x6b30
    beqz    $v0, branch_0x802c5efc
    addiu   $t1, $zero, 0x1
    addiu   $t1, $zero, 0x1
    beq     $v0, $t1, branch_0x802c5fac
    addiu   $t3, $zero, 0x2
    beq     $v0, $t3, branch_0x802c5fac
    addiu   $a3, $zero, 0x3
    beq     $v0, $a3, branch_0x802c5fb0
    nop
    b       branch_0x802c6034
    nop
branch_0x802c5efc:
    lw      $t7, 0x0($t0)
    addiu   $t4, $zero, 0x1
    addiu   $t3, $zero, 0x2
    addiu   $v1, $t7, 0xffff
    bgez    $v1, branch_0x802c5f3c
    sw      $v1, 0x0($t0)
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6b34
    lw      $t9, 0x0($a1)
    addiu   $v1, $zero, 0x1
    bnezl   $t9, branch_0x802c5f3c
    sw      $v1, 0x0($t0)
    addiu   $v1, $zero, 0x2
    b       branch_0x802c5f3c
    sw      $v1, 0x0($t0)

.globl Function_0x802c5f38
Function_0x802c5f38: # 0x802c5f38
    sw      $v1, 0x0($t0)
branch_0x802c5f3c:
    lui     $a0, 0x802c
    lw      $a0, 0x6b34($a0)
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6b40
    sll     $a1, $a0, 2
    subu    $a1, $a1, $a0
branch_0x802c5f54:
    addu    $v0, $a1, $v1
    sll     $t6, $v0, 2
    addu    $t7, $a2, $t6
    lw      $t8, 0x0($t7)
    lui     $t5, 0x802c
    addiu   $t5, $t5, 0x6b10
    beqzl   $t8, branch_0x802c5f84
    addiu   $t9, $v1, 0xffff
    addiu   $v1, $zero, 0xffff
    b       branch_0x802c6034
    sw      $v1, 0x0($t5)

.globl Function_0x802c5f80
Function_0x802c5f80: # 0x802c5f80
    addiu   $t9, $v1, 0xffff
branch_0x802c5f84:
    sw      $t9, 0x0($t0)
    bgez    $t9, branch_0x802c5f54
    or      $v1, $t9, $zero
    bnez    $a0, branch_0x802c5fa4
    or      $v1, $t1, $zero
    sw      $t3, 0x0($t0)
    b       branch_0x802c5f54
    or      $v1, $t3, $zero
branch_0x802c5fa4:
    b       branch_0x802c5f54
    sw      $t1, 0x0($t0)
branch_0x802c5fac:
    addiu   $a3, $zero, 0x3
branch_0x802c5fb0:
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6b34
    lw      $t6, 0x0($a1)
    lui     $t0, 0x802c
    addiu   $t0, $t0, 0x6b30
    multu   $t6, $a3
    lw      $t8, 0x0($t0)
    lui     $a2, 0x802c
    lw      $a2, 0x6b38($a2)
    lui     $t6, 0x802c
    addiu   $t6, $t6, 0x6af8
    sll     $t9, $a2, 3
    addu    $a0, $t9, $t6
    lui     $t6, 0x801d
    addiu   $t6, $t6, 0xb068
    mflo    $t7
    addu    $v0, $t7, $t8
    sll     $t7, $v0, 2
    subu    $t7, $t7, $v0
    sll     $t7, $t7, 2
    sll     $t8, $a2, 2
    addu    $t9, $t7, $t8
    addu    $v1, $t9, $t6
    lw      $t7, 0x0($v1)
    addiu   $t4, $zero, 0x1
    addiu   $t8, $t7, 0xffff
    sw      $t8, 0x0($v1)
    lw      $t6, 0x0($a0)
    slt     $at, $t8, $t6
    beqz    $at, branch_0x802c6034
    nop
    lw      $t7, 0x4($a0)
    sw      $t7, 0x0($v1)
branch_0x802c6034:
    beqz    $t4, branch_0x802c61f0
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c61f4
    lw      $ra, 0x14($sp)
branch_0x802c604c:
    beqz    $t8, branch_0x802c61f0
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3a0
    lw      $v0, 0x0($v1)
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6b34
    beqz    $v0, branch_0x802c6090
    lui     $t0, 0x802c
    addiu   $t1, $zero, 0x1
    beq     $v0, $t1, branch_0x802c6158
    addiu   $t3, $zero, 0x2
    beq     $v0, $t3, branch_0x802c6158
    addiu   $a3, $zero, 0x3
    beq     $v0, $a3, branch_0x802c615c
    nop
    b       branch_0x802c61e0
    nop
branch_0x802c6090:
    addiu   $t0, $t0, 0x6b30
    lw      $t9, 0x0($t0)
    lw      $a0, 0x0($a1)
    addiu   $t4, $zero, 0x1
    addiu   $t6, $t9, 0x1
    bnez    $a0, branch_0x802c60c4
    sw      $t6, 0x0($t0)
    slti    $at, $t6, 0x3
    bnez    $at, branch_0x802c60dc
    or      $v1, $t6, $zero
    sw      $zero, 0x0($t0)
    b       branch_0x802c60dc
    or      $v1, $zero, $zero
branch_0x802c60c4:
    lw      $v1, 0x0($t0)
    slti    $at, $v1, 0x2
    bnezl   $at, branch_0x802c60e0
    sll     $a1, $a0, 2
    sw      $zero, 0x0($t0)
    or      $v1, $zero, $zero
branch_0x802c60dc:
    sll     $a1, $a0, 2
branch_0x802c60e0:
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6b40
    subu    $a1, $a1, $a0
branch_0x802c60ec:
    addu    $v0, $a1, $v1
branch_0x802c60f0:
    sll     $t7, $v0, 2
    addu    $t8, $a2, $t7
    lw      $t9, 0x0($t8)
    lui     $t5, 0x802c
    addiu   $t5, $t5, 0x6b10
    beqzl   $t9, branch_0x802c611c
    addiu   $t6, $v1, 0x1
    addiu   $v1, $zero, 0xffff
    b       branch_0x802c61e0
    sw      $v1, 0x0($t5)

Function_0x802c6118: # 0x802c6118
    addiu   $t6, $v1, 0x1
branch_0x802c611c:
    bnez    $a0, branch_0x802c613c
    sw      $t6, 0x0($t0)
    slti    $at, $t6, 0x3
    bnez    $at, branch_0x802c60ec
    or      $v1, $t6, $zero
    sw      $zero, 0x0($t0)
    b       branch_0x802c60ec
    or      $v1, $zero, $zero
branch_0x802c613c:
    lw      $v1, 0x0($t0)
    slti    $at, $v1, 0x2
    bnezl   $at, branch_0x802c60f0
    addu    $v0, $a1, $v1
    sw      $zero, 0x0($t0)
    b       branch_0x802c60ec
    or      $v1, $zero, $zero
branch_0x802c6158:
    addiu   $a3, $zero, 0x3
branch_0x802c615c:
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6b34
    lw      $t7, 0x0($a1)
    lui     $t0, 0x802c
    addiu   $t0, $t0, 0x6b30
    multu   $t7, $a3
    lw      $t9, 0x0($t0)
    lui     $a2, 0x802c
    lw      $a2, 0x6b38($a2)
    lui     $t7, 0x802c
    addiu   $t7, $t7, 0x6af8
    sll     $t6, $a2, 3
    addu    $a0, $t6, $t7
    lui     $t7, 0x801d
    addiu   $t7, $t7, 0xb068
    mflo    $t8
    addu    $v0, $t8, $t9
    sll     $t8, $v0, 2
    subu    $t8, $t8, $v0
    sll     $t8, $t8, 2
    sll     $t9, $a2, 2
    addu    $t6, $t8, $t9
    addu    $v1, $t6, $t7
    lw      $t8, 0x0($v1)
    addiu   $t4, $zero, 0x1
    addiu   $t9, $t8, 0x1
    sw      $t9, 0x0($v1)
    lw      $t6, 0x4($a0)
    slt     $at, $t6, $t9
    beqz    $at, branch_0x802c61e0
    nop
    lw      $t8, 0x0($a0)
    sw      $t8, 0x0($v1)
branch_0x802c61e0:
    beqz    $t4, branch_0x802c61f0
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c61f0:
    lw      $ra, 0x14($sp)
branch_0x802c61f4:
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x802c6200
Function_0x802c6200: # 0x802c6200
    addiu   $sp, $sp, 0xff30
    sw      $s2, 0x48($sp)
    sw      $ra, 0x64($sp)
    sw      $fp, 0x60($sp)
    sw      $s7, 0x5c($sp)
    sw      $s6, 0x58($sp)
    sw      $s5, 0x54($sp)
    sw      $s4, 0x50($sp)
    sw      $s3, 0x4c($sp)
    sw      $s1, 0x44($sp)
    sw      $s0, 0x40($sp)
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
    lui     $t1, 0x107
    lui     $t0, 0x600
    addiu   $t1, $t1, 0xf550
    or      $a3, $s2, $zero
    sw      $t1, 0x4($a1)
    sw      $t0, 0x0($a1)
    lui     $t2, 0x107
    addiu   $t2, $t2, 0xf628
    sw      $t2, 0x4($a3)
    sw      $t0, 0x0($a3)
    addiu   $s2, $s2, 0x8
    addiu   $a2, $zero, 0x1c
    addiu   $t3, $zero, 0x56
branch_0x802c62a4:
    addiu   $t4, $zero, 0x10
    sw      $t4, 0x14($sp)
    sw      $t3, 0x10($sp)
    or      $a0, $s2, $zero
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0x45
    jal     Function_0x800940d8
    sw      $a2, 0x80($sp)
    lw      $a2, 0x80($sp)
    or      $s2, $v0, $zero
    addiu   $a2, $a2, 0x59
    slti    $at, $a2, 0x127
    bnezl   $at, branch_0x802c62a4
    addiu   $t3, $zero, 0x56
    addiu   $t5, $zero, 0x56
    addiu   $t6, $zero, 0x10
    sw      $t6, 0x14($sp)
    sw      $t5, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xa4
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x5a
    addiu   $t7, $zero, 0x56
    addiu   $t8, $zero, 0x10
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x46
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x5a
    or      $s2, $v0, $zero
    addiu   $s1, $zero, 0x7d
    addiu   $s0, $zero, 0x7c
branch_0x802c6330:
    addiu   $t9, $zero, 0x9c
    addiu   $t1, $zero, 0x10
    sw      $t1, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $s2, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1c
    jal     Function_0x800940d8
    or      $a3, $s1, $zero
    addiu   $t2, $zero, 0x69
    addiu   $t3, $zero, 0x10
    sw      $t3, 0x14($sp)
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xbb
    jal     Function_0x800940d8
    or      $a3, $s0, $zero
    addiu   $s0, $s0, 0x14
    slti    $at, $s0, 0xb8
    addiu   $s1, $s1, 0x14
    bnez    $at, branch_0x802c6330
    or      $s2, $v0, $zero
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    sw      $t3, 0x30($sp)
    sw      $t2, 0x2c($sp)
    sw      $t1, 0x28($sp)
    sw      $t9, 0x24($sp)
    sw      $t8, 0x20($sp)
    sw      $t7, 0x1c($sp)
    sw      $t6, 0x18($sp)
    sw      $t5, 0x14($sp)
    sw      $t4, 0x10($sp)
    sw      $t4, 0x34($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    addiu   $t5, $zero, 0x27
    sw      $t5, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x10
    addiu   $a3, $zero, 0x26
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lui     $t6, 0x802c
    lw      $t6, 0x6b34($t6)
    lui     $t8, 0x802c
    lw      $t8, 0x6b30($t8)
    sll     $t7, $t6, 2
    subu    $t7, $t7, $t6
    lui     $s1, 0x802c
    lui     $s6, 0x802c
    addu    $t9, $t7, $t8
    or      $s2, $v0, $zero
    sw      $t9, 0xb0($sp)
    addiu   $s6, $s6, 0x6b40
    addiu   $s1, $s1, 0x6aa0
    or      $s3, $zero, $zero
    addiu   $s5, $zero, 0x61
    addiu   $s4, $zero, 0x4
branch_0x802c644c:
    lw      $t1, 0xb0($sp)
    or      $a0, $s2, $zero
    addiu   $a2, $zero, 0x80
    bne     $s3, $t1, branch_0x802c6468
    addiu   $a3, $zero, 0x80
    b       branch_0x802c6488
    addiu   $s0, $zero, 0x6
branch_0x802c6468:
    sll     $t2, $s3, 2
    addu    $t3, $s6, $t2
    lw      $t4, 0x0($t3)
    or      $s0, $zero, $zero
    bnez    $t4, branch_0x802c6488
    nop
    b       branch_0x802c6488
    addiu   $s0, $zero, 0x7
branch_0x802c6488:
    addiu   $t5, $zero, 0x80
    sw      $t5, 0x10($sp)
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    sw      $t4, 0x30($sp)
    sw      $t3, 0x2c($sp)
    sw      $t2, 0x28($sp)
    sw      $t1, 0x24($sp)
    sw      $t9, 0x20($sp)
    sw      $t8, 0x1c($sp)
    sw      $t7, 0x18($sp)
    sw      $t6, 0x14($sp)
    sw      $t5, 0x34($sp)
    jal     Function_0x801e91f4_changePalette
    or      $a1, $s0, $zero
    bne     $s3, $s4, branch_0x802c6510
    or      $s2, $v0, $zero
    lw      $a2, 0x4($s1)
    addiu   $t6, $zero, 0x5d
    sw      $t6, 0x10($sp)
    sw      $zero, 0x14($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $zero, 0xc1
    b       branch_0x802c6574
    or      $s2, $v0, $zero
branch_0x802c6510:
    addiu   $at, $zero, 0x3
    bne     $s3, $at, branch_0x802c6540
    or      $a0, $s2, $zero
    lw      $a2, 0x4($s1)
    addiu   $t7, $zero, 0x5d
    sw      $t7, 0x10($sp)
    sw      $zero, 0x14($sp)
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $zero, 0x50
    b       branch_0x802c6574
    or      $s2, $v0, $zero
branch_0x802c6540:
    multu   $s3, $s5
    lh      $t9, 0x0($s1)
    lw      $a2, 0x4($s1)
    addiu   $t1, $zero, 0x48
    sw      $t1, 0x10($sp)
    sw      $zero, 0x14($sp)
    or      $a0, $s2, $zero
    addiu   $a1, $zero, 0x1
    mflo    $t8
    addu    $a3, $t8, $t9
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x2c
    or      $s2, $v0, $zero
branch_0x802c6574:
    addiu   $s3, $s3, 0x1
    slti    $at, $s3, 0x5
    bnez    $at, branch_0x802c644c
    addiu   $s1, $s1, 0x8
    lw      $v0, 0xb0($sp)
    addiu   $at, $zero, 0x3
    beql    $v0, $s4, branch_0x802c69d0
    lw      $ra, 0x64($sp)
    beq     $v0, $at, branch_0x802c69cc
    sll     $t2, $v0, 2
    subu    $t2, $t2, $v0
    lui     $t4, 0x801d
    addiu   $t4, $t4, 0xb068
    sll     $t2, $t2, 2
    addu    $s5, $t2, $t4
    lui     $fp, 0x802c
    addiu   $t6, $zero, 0x80
    sw      $s5, 0x78($sp)
    sw      $t2, 0x7c($sp)
    sw      $t6, 0x6c($sp)
    addiu   $fp, $fp, 0x6ac8
    or      $s3, $zero, $zero
    or      $s7, $zero, $zero
    addiu   $s6, $zero, 0x7f
    addiu   $s4, $zero, 0xffff
branch_0x802c65d8:
    lui     $t7, 0x801d
    lw      $t7, -0x1c60($t7)
    or      $a0, $s2, $zero
    addiu   $a2, $zero, 0x80
    beqz    $t7, branch_0x802c6624
    addiu   $a3, $zero, 0x80
    lui     $t8, 0x802c
    lw      $t8, 0x6b38($t8)
    bnel    $s3, $t8, branch_0x802c660c
    lw      $t9, 0x0($s5)
    b       branch_0x802c663c
    addiu   $s0, $zero, 0x6

.globl Function_0x802c6608
Function_0x802c6608: # 0x802c6608
    lw      $t9, 0x0($s5)
branch_0x802c660c:
    bne     $s4, $t9, branch_0x802c661c
    nop
    b       branch_0x802c663c
    addiu   $s0, $zero, 0x7
branch_0x802c661c:
    b       branch_0x802c663c
    or      $s0, $zero, $zero
branch_0x802c6624:
    lw      $t1, 0x0($s5)
    or      $s0, $zero, $zero
    bne     $s4, $t1, branch_0x802c663c
    nop
    b       branch_0x802c663c
    addiu   $s0, $zero, 0x7
branch_0x802c663c:
    addiu   $t2, $zero, 0x80
    sw      $t2, 0x10($sp)
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t1, $zero, 0xff
    sw      $t1, 0x30($sp)
    sw      $t9, 0x2c($sp)
    sw      $t8, 0x28($sp)
    sw      $t7, 0x24($sp)
    sw      $t6, 0x20($sp)
    sw      $t5, 0x1c($sp)
    sw      $t4, 0x18($sp)
    sw      $t3, 0x14($sp)
    sw      $t2, 0x34($sp)
    jal     Function_0x801e91f4_changePalette
    or      $a1, $s0, $zero
    lw      $t3, 0x6c($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    lw      $a2, 0x0($fp)
    addiu   $a3, $zero, 0x29
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $t3, 0x10($sp)
    lui     $a2, 0x802c
    addiu   $a2, $a2, 0x6b20
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a3, $zero, 0xa7
    jal     Function_0x801e95e0
    sw      $s6, 0x10($sp)
    lui     $t4, 0x801d
    lw      $t4, -0x1c60($t4)
    or      $s2, $v0, $zero
    lui     $t5, 0x802c
    beqz    $t4, branch_0x802c6748
    addiu   $at, $zero, 0x1
    lw      $t5, 0x6b38($t5)
    lw      $t6, 0xb0($sp)
    lui     $t9, 0x800e
    bne     $s3, $t5, branch_0x802c672c
    sll     $t7, $t6, 2
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 2
    addu    $t8, $t7, $s7
    addu    $t9, $t9, $t8
    lw      $t9, -0x58f8($t9)
    lw      $v0, 0x0($s5)
    bne     $v0, $t9, branch_0x802c6724
    nop
    b       branch_0x802c6760
    addiu   $s0, $zero, 0x6
branch_0x802c6724:
    b       branch_0x802c6760
    addiu   $s0, $zero, 0x4
branch_0x802c672c:
    lw      $v0, 0x0($s5)
    bne     $s4, $v0, branch_0x802c6740
    nop
    b       branch_0x802c6760
    addiu   $s0, $zero, 0x7
branch_0x802c6740:
    b       branch_0x802c6760
    or      $s0, $zero, $zero
branch_0x802c6748:
    lw      $v0, 0x0($s5)
    or      $s0, $zero, $zero
    bne     $s4, $v0, branch_0x802c6760
    nop
    b       branch_0x802c6760
    addiu   $s0, $zero, 0x7
branch_0x802c6760:
    bnez    $s3, branch_0x802c6790
    lui     $t2, 0x802c
    bne     $s4, $v0, branch_0x802c6778
    or      $s1, $zero, $zero
    b       branch_0x802c677c
    or      $a2, $zero, $zero
branch_0x802c6778:
    or      $a2, $v0, $zero
branch_0x802c677c:
    sll     $t1, $a2, 2
    addu    $t2, $t2, $t1
    lw      $t2, 0x6ad4($t2)
    b       branch_0x802c681c
    sw      $t2, 0xb8($sp)
branch_0x802c6790:
    bne     $s3, $at, branch_0x802c67c0
    addiu   $a0, $sp, 0x94
    bne     $s4, $v0, branch_0x802c67a8
    addiu   $s1, $zero, 0x1
    b       branch_0x802c67ac
    addiu   $a2, $zero, 0x1
branch_0x802c67a8:
    or      $a2, $v0, $zero
branch_0x802c67ac:
    lui     $a1, 0x802c
    jal     Function_0x800c9f70
    addiu   $a1, $a1, 0x6b24
    b       branch_0x802c6820
    addiu   $t5, $zero, 0x80
branch_0x802c67c0:
    addiu   $at, $zero, 0x2
    bne     $s3, $at, branch_0x802c67f8
    lui     $t4, 0x802c
    bne     $s4, $v0, branch_0x802c67dc
    addiu   $s1, $zero, 0x1
    b       branch_0x802c67e0
    addiu   $a2, $zero, 0x1
branch_0x802c67dc:
    or      $a2, $v0, $zero
branch_0x802c67e0:
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6b28
    jal     Function_0x800c9f70
    addiu   $a0, $sp, 0x94
    b       branch_0x802c6820
    addiu   $t5, $zero, 0x80
branch_0x802c67f8:
    bne     $s4, $v0, branch_0x802c6808
    or      $s1, $zero, $zero
    b       branch_0x802c680c
    or      $a2, $zero, $zero
branch_0x802c6808:
    or      $a2, $v0, $zero
branch_0x802c680c:
    sll     $t3, $a2, 2
    addu    $t4, $t4, $t3
    lw      $t4, 0x6ae4($t4)
    sw      $t4, 0xb8($sp)
branch_0x802c681c:
    addiu   $t5, $zero, 0x80
branch_0x802c6820:
    sw      $t5, 0x10($sp)
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    sw      $t4, 0x30($sp)
    sw      $t3, 0x2c($sp)
    sw      $t2, 0x28($sp)
    sw      $t1, 0x24($sp)
    sw      $t9, 0x20($sp)
    sw      $t8, 0x1c($sp)
    sw      $t7, 0x18($sp)
    sw      $t6, 0x14($sp)
    sw      $t5, 0x34($sp)
    or      $a0, $s2, $zero
    or      $a1, $s0, $zero
    addiu   $a2, $zero, 0x80
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0x80
    bnez    $s1, branch_0x802c68ac
    or      $s2, $v0, $zero
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    lw      $a2, 0xb8($sp)
    addiu   $a3, $zero, 0xc6
    sw      $s6, 0x10($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    b       branch_0x802c68c8
    or      $s2, $v0, $zero
branch_0x802c68ac:
    or      $a0, $s2, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $sp, 0x94
    addiu   $a3, $zero, 0xc6
    jal     Function_0x801e95e0
    sw      $s6, 0x10($sp)
    or      $s2, $v0, $zero
branch_0x802c68c8:
    lw      $t6, 0x6c($sp)
    addiu   $s3, $s3, 0x1
    addiu   $at, $zero, 0x3
    addiu   $t7, $t6, 0x14
    sw      $t7, 0x6c($sp)
    addiu   $s7, $s7, 0x4
    addiu   $fp, $fp, 0x4
    addiu   $s6, $s6, 0x14
    bne     $s3, $at, branch_0x802c65d8
    addiu   $s5, $s5, 0x4
    lw      $t8, 0x78($sp)
    lui     $t9, 0x801d
    addiu   $t9, $t9, 0xb098
    beq     $t8, $t9, branch_0x802c6924
    or      $v0, $zero, $zero
    lw      $t2, 0x7c($sp)
    lui     $t3, 0x800e
    lw      $t1, 0x0($t8)
    addu    $t3, $t3, $t2
    lw      $t3, -0x58f8($t3)
    beq     $t1, $t3, branch_0x802c6924
    nop
    addiu   $v0, $zero, 0x1
branch_0x802c6924:
    beqz    $v0, branch_0x802c69cc
    or      $a0, $s2, $zero
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t3, $zero, 0xff
    sw      $t3, 0x30($sp)
    sw      $t1, 0x2c($sp)
    sw      $t2, 0x28($sp)
    sw      $t8, 0x24($sp)
    sw      $t9, 0x20($sp)
    sw      $t7, 0x1c($sp)
    sw      $t6, 0x18($sp)
    sw      $t5, 0x14($sp)
    sw      $t4, 0x10($sp)
    sw      $t4, 0x34($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    addiu   $t5, $zero, 0xca
    sw      $t5, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x41
    addiu   $a3, $zero, 0x1c
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    addiu   $t6, $zero, 0xca
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x44
    addiu   $a3, $zero, 0x62
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    or      $s2, $v0, $zero
branch_0x802c69cc:
    lw      $ra, 0x64($sp)
branch_0x802c69d0:
    or      $v0, $s2, $zero
    lw      $s2, 0x48($sp)
    lw      $s0, 0x40($sp)
    lw      $s1, 0x44($sp)
    lw      $s3, 0x4c($sp)
    lw      $s4, 0x50($sp)
    lw      $s5, 0x54($sp)
    lw      $s6, 0x58($sp)
    lw      $s7, 0x5c($sp)
    lw      $fp, 0x60($sp)
    jr      $ra
    addiu   $sp, $sp, 0xd0

.globl Function_0x802c6a00
Function_0x802c6a00: # 0x802c6a00
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa8a4
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x45
    sw      $t6, -0x1c6c($at)
    lui     $at, 0x801d
    sw      $a0, -0x1c70($at)
    sw      $t7, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0xe
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
    addiu   $a0, $zero, 0x1
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.incbin "./roms/Wave Race 64 (USA).z64", 0x1ca1a4, 0x1ca240 - 0x1ca1a4
