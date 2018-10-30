

.include "source/constants.s"

.section .textoverlay18, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    lui     $t6, 0x801d
    lw      $t6, -0x1c64($t6)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c5830
    lui     $t7, %hi(Unknown_0x800da8a4_mainState)
    lw      $t7, %lo(Unknown_0x800da8a4_mainState)($t7)
    addiu   $at, $zero, 0x28
    bne     $t7, $at, branch_0x802c5830
    nop
    jal     Function_0x802c587c
    nop
branch_0x802c5830:
    lui     $t8, 0x800d
    lw      $t8, 0x7ef0($t8)
    lui     $t9, 0x801d
    bnezl   $t8, branch_0x802c5870
    lw      $ra, 0x14($sp)
    lw      $t9, -0x1c98($t9)
    addiu   $at, $zero, 0x4
    lui     $t0, 0x800e
    bnel    $t9, $at, branch_0x802c5870
    lw      $ra, 0x14($sp)
    lh      $t0, -0x571c($t0)
    bnezl   $t0, branch_0x802c5870
    lw      $ra, 0x14($sp)
    jal     Function_0x802c5900
    nop
    lw      $ra, 0x14($sp)
branch_0x802c5870:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c587c
Function_0x802c587c: # 0x802c587c
    lui     $t6, 0x801d
    lw      $t6, -0x1c98($t6)
    lui     $at, 0x802d
    sw      $zero, -0x6bc0($at)
    addiu   $at, $zero, 0x4
    bne     $t6, $at, branch_0x802c58f8
    lui     $t7, 0x800d
    lw      $t7, 0x7ef0($t7)
    lui     $t8, 0x802d
    addiu   $t8, $t8, 0x96a8
    bnez    $t7, branch_0x802c58dc
    lui     $t2, 0x801d
    lui     $t9, 0x802d
    addiu   $t9, $t9, 0x94c8
    addiu   $t1, $t9, 0x24
branch_0x802c58b8:
    lw      $at, 0x0($t9)
    addiu   $t9, $t9, 0xc
    addiu   $t8, $t8, 0xc
    sw      $at, -0xc($t8)
    lw      $at, -0x8($t9)
    sw      $at, -0x8($t8)
    lw      $at, -0x4($t9)
    bne     $t9, $t1, branch_0x802c58b8
    sw      $at, -0x4($t8)
branch_0x802c58dc:
    lw      $t2, -0x4f68($t2)
    lui     $t4, 0x802d
    lui     $at, 0x802d
    sll     $t3, $t2, 2
    addu    $t4, $t4, $t3
    lw      $t4, -0x6aec($t4)
    sw      $t4, -0x6934($at)
branch_0x802c58f8:
    jr      $ra
    nop

.globl Function_0x802c5900
Function_0x802c5900: # 0x802c5900
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x94ec
    lw      $v0, 0x0($v1)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $v0, branch_0x802c5938
    addiu   $a0, $zero, 0x1
    beq     $v0, $a0, branch_0x802c5960
    addiu   $t9, $zero, 0x2
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c5998
    lui     $t3, 0x802d
    b       branch_0x802c59dc
    lw      $ra, 0x14($sp)
branch_0x802c5938:
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x94f0
    lw      $t6, 0x0($v0)
    addiu   $a0, $zero, 0x1
    addiu   $t7, $t6, 0xffff
    bgtz    $t7, branch_0x802c59d8
    sw      $t7, 0x0($v0)
    sw      $a0, 0x0($v1)
    b       branch_0x802c59d8
    sw      $zero, 0x0($v0)
branch_0x802c5960:
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x94f4
    sw      $t9, 0x0($v1)
    jal     Function_18_0x802c59e8
    lw      $a0, 0x0($v0)
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x94f4
    lw      $t0, 0x0($v0)
    addiu   $t1, $t0, 0x1
    slti    $at, $t1, 0xb
    bnez    $at, branch_0x802c59d8
    sw      $t1, 0x0($v0)
    b       branch_0x802c59d8
    sw      $zero, 0x0($v0)
branch_0x802c5998:
    lw      $t3, -0x6958($t3)
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x94f4
    bnezl   $t3, branch_0x802c59dc
    lw      $ra, 0x14($sp)
    lw      $t4, 0x0($v0)
    lui     $v0, 0x802d
    sw      $zero, 0x0($v1)
    beq     $a0, $t4, branch_0x802c59d4
    addiu   $v0, $v0, 0x94f0
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x94f0
    addiu   $t5, $zero, 0x64
    b       branch_0x802c59d8
    sw      $t5, 0x0($v0)
branch_0x802c59d4:
    sw      $zero, 0x0($v0)
branch_0x802c59d8:
    lw      $ra, 0x14($sp)
branch_0x802c59dc:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_18_0x802c59e8
Function_18_0x802c59e8: # 0x802c59e8
    addiu   $sp, $sp, 0xffe8
    lui     $a3, 0x802d
    lui     $t6, 0x802d
    addiu   $a3, $a3, 0x96a8
    addiu   $t6, $t6, 0x94c8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x18($sp)
    addiu   $t9, $t6, 0x24
    or      $t2, $a3, $zero
branch_0x802c5a0c:
    lw      $at, 0x0($t6)
    addiu   $t6, $t6, 0xc
    addiu   $t2, $t2, 0xc
    sw      $at, -0xc($t2)
    lw      $at, -0x8($t6)
    sw      $at, -0x8($t2)
    lw      $at, -0x4($t6)
    bne     $t6, $t9, branch_0x802c5a0c
    sw      $at, -0x4($t2)
    lw      $t4, 0x18($sp)
    addiu   $t3, $zero, 0x1
    lui     $t8, 0x802d
    sll     $t5, $t4, 2
    subu    $t5, $t5, $t4
    sw      $t3, 0x0($a3)
    sll     $t5, $t5, 2
    addiu   $t8, $t8, 0x9444
    lui     $v1, 0x802d
    lui     $t1, 0x802d
    lui     $t0, 0x8022
    addiu   $a1, $zero, 0x122
    addiu   $t0, $t0, 0x6650
    addiu   $t1, $t1, 0x96b4
    addiu   $v1, $v1, 0x96a8
    addu    $a2, $t5, $t8
    addiu   $a3, $zero, 0xffff
branch_0x802c5a74:
    lw      $a0, 0x0($a2)
    addiu   $v1, $v1, 0x4
    sw      $a1, 0x8($v1)
    beq     $a0, $a3, branch_0x802c5ac4
    sw      $a0, 0x14($v1)
    lui     $t7, 0x802d
    lw      $t7, -0x6954($t7)
    lui     $at, 0x802d
    sll     $t6, $a0, 3
    addiu   $t9, $t7, 0x1
    sw      $t9, -0x6954($at)
    addu    $t2, $t0, $t6
    lw      $v0, 0x4($t2)
    lui     $t3, 0x802d
    lw      $t3, -0x6950($t3)
    addiu   $v0, $v0, 0x1
    lui     $at, 0x802d
    addu    $t4, $t3, $v0
    sw      $t4, -0x6950($at)
    addu    $a1, $a1, $v0
branch_0x802c5ac4:
    bne     $v1, $t1, branch_0x802c5a74
    addiu   $a2, $a2, 0x4
    jal     Function_0x800c3574
    lw      $a0, 0x18($sp)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5ae4
Function_0x802c5ae4: # 0x802c5ae4
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c5b24
    lui     $t7, %hi(Unknown_0x800da8a4_mainState)
    sw      $zero, 0x0($v0)
    lw      $t7, %lo(Unknown_0x800da8a4_mainState)($t7)
    addiu   $at, $zero, 0x28
    bne     $t7, $at, branch_0x802c5b24
    nop
    jal     Function_0x800939e4
    nop
    b       branch_0x802c5de8
    lw      $ra, 0x14($sp)
branch_0x802c5b24:
    jal     Function_0x8009302c
    nop
    lui     $t8, 0x801d
    lh      $t8, -0x1c7c($t8)
    addiu   $at, $zero, 0xffff
    or      $a0, $v0, $zero
    bne     $t8, $at, branch_0x802c5b50
    sw      $v0, 0x18($sp)
    jal     Function_0x801e52b4
    nop
    sw      $v0, 0x18($sp)
branch_0x802c5b50:
    lui     $t9, 0x800e
    lw      $t9, -0x5758($t9)
    addiu   $at, $zero, 0x2
    lw      $a0, 0x18($sp)
    bne     $t9, $at, branch_0x802c5b78
    nop
    jal     Function_18_0x802c6b38
    nop
    sw      $v0, 0x18($sp)
    or      $a0, $v0, $zero
branch_0x802c5b78:
    lui     $t0, 0x800d
    lw      $t0, 0x7ef0($t0)
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe368
    bnez    $t0, branch_0x802c5bb8
    nop
    lw      $t1, 0x0($a1)
    addiu   $at, $zero, 0x4
    lui     $t2, 0x800e
    bne     $t1, $at, branch_0x802c5bb8
    nop
    lh      $t2, -0x571c($t2)
    bnez    $t2, branch_0x802c5bb8
    nop
    jal     Function_0x802c6bd8
    nop
branch_0x802c5bb8:
    lui     $t3, 0x800e
    lw      $t3, -0x5758($t3)
    addiu   $a0, $zero, 0x1
    lui     $a1, 0x801d
    bne     $a0, $t3, branch_0x802c5bf0
    addiu   $a1, $a1, 0xe368
    addiu   $t4, $v0, 0x8
    lui     $t6, 0x107
    addiu   $t6, $t6, 0xf168
    sw      $t4, 0x18($sp)
    lui     $t5, 0x600
    sw      $t5, 0x0($v0)
    b       branch_0x802c5c0c
    sw      $t6, 0x4($v0)
branch_0x802c5bf0:
    addiu   $t7, $v0, 0x8
    sw      $t7, 0x18($sp)
    lui     $t9, 0x107
    addiu   $t9, $t9, 0xf1b8
    lui     $t8, 0x600
    sw      $t8, 0x0($v0)
    sw      $t9, 0x4($v0)
branch_0x802c5c0c:
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    lw      $v0, %lo(Unknown_0x800da8a4_mainState)($v0)
    addiu   $at, $zero, 0x28
    bnel    $v0, $at, branch_0x802c5c3c
    addiu   $at, $zero, 0x29
    jal     Function_0x801de12c
    nop
    jal     Function_0x802c5df4
    nop
    b       branch_0x802c5de4
    lw      $v0, 0x18($sp)

.globl Function_0x802c5c38
Function_0x802c5c38: # 0x802c5c38
    addiu   $at, $zero, 0x29
branch_0x802c5c3c:
    bnel    $v0, $at, branch_0x802c5c58
    addiu   $at, $zero, 0x2a
    jal     Function_18_0x802c63b4
    nop
    b       branch_0x802c5de4
    lw      $v0, 0x18($sp)

.globl Function_0x802c5c54
Function_0x802c5c54: # 0x802c5c54
    addiu   $at, $zero, 0x2a
branch_0x802c5c58:
    bnel    $v0, $at, branch_0x802c5c74
    addiu   $at, $zero, 0x2c
    jal     Function_18_0x802c6550
    nop
    b       branch_0x802c5de4
    lw      $v0, 0x18($sp)

.globl Function_0x802c5c70
Function_0x802c5c70: # 0x802c5c70
    addiu   $at, $zero, 0x2c
branch_0x802c5c74:
    bnel    $v0, $at, branch_0x802c5c90
    addiu   $at, $zero, 0x2b
    jal     Function_18_0x802c6b00
    nop
    b       branch_0x802c5de4
    lw      $v0, 0x18($sp)

.globl Function_0x802c5c8c
Function_0x802c5c8c: # 0x802c5c8c
    addiu   $at, $zero, 0x2b
branch_0x802c5c90:
    bne     $v0, $at, branch_0x802c5de0
    lui     $t0, 0x8023
    lh      $t0, -0x782a($t0)
    addiu   $t1, $zero, 0xffff
    lui     $at, 0x801d
    bne     $a0, $t0, branch_0x802c5de0
    lui     $t2, %hi(Unknown_0x801ce390)
    lw      $t2, %lo(Unknown_0x801ce390)($t2)
    sh      $t1, -0x1c7c($at)
    lui     $at, 0x801d
    sh      $zero, -0x1c78($at)
    addiu   $t3, $t2, 0xfffe
    sltiu   $at, $t3, 0x27
    beqz    $at, branch_0x802c5de0
    sll     $t3, $t3, 2
    lui     $at, %hi(Unknown_802C959C)
    addu    $at, $at, $t3
    lw      $t3, %lo(Unknown_802C959C)($at)
    jr      $t3
    nop

.globl Function_0x802c5ce0
Function_0x802c5ce0: # 0x802c5ce0
    jal     Function_0x801eaf10_ChangeStateTo2
    nop
    jal     Function_0x800ad164
    nop
    b       branch_0x802c5de4
    lw      $v0, 0x18($sp)

.globl Function_0x802c5cf8
Function_0x802c5cf8: # 0x802c5cf8
    jal     Function_0x800931fc
    nop
    jal     Function_0x800ad164
    nop
    b       branch_0x802c5de4
    lw      $v0, 0x18($sp)

.globl Function_0x802c5d10
Function_0x802c5d10: # 0x802c5d10
    jal     Function_0x801ebab8_ChangeStateToA
    nop
    jal     Function_0x800ad164
    nop
    b       branch_0x802c5de4
    lw      $v0, 0x18($sp)

.globl Function_0x802c5d28
Function_0x802c5d28: # 0x802c5d28
    jal     Function_0x801ebd74_ChangeStateTo14
    nop
    jal     Function_0x800ad164
    nop
    b       branch_0x802c5de4
    lw      $v0, 0x18($sp)

.globl Function_0x802c5d40
Function_0x802c5d40: # 0x802c5d40
    lui     $t4, 0x801d
    lw      $t4, -0x4f70($t4)
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xb094
    bnez    $t4, branch_0x802c5db4
    lui     $at, 0x801d
    addiu   $t5, $zero, 0x4
    sh      $t5, 0x6($a1)
    lh      $a0, 0x6($a1)
    or      $v0, $zero, $zero
    lui     $t6, 0x801d
    blez    $a0, branch_0x802c5d9c
    nop
    lw      $t6, -0x4f6c($t6)
    lui     $t8, 0x801d
    addiu   $t8, $t8, 0xb0b0
    sll     $t7, $t6, 4
    addu    $v1, $t7, $t8
branch_0x802c5d88:
    addiu   $v0, $v0, 0x1
    slt     $at, $v0, $a0
    addiu   $v1, $v1, 0x4
    bnez    $at, branch_0x802c5d88
    sw      $zero, -0x4($v1)
branch_0x802c5d9c:
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xb094
    lw      $t9, 0x0($v0)
    addiu   $t0, $t9, 0x1
    b       branch_0x802c5dd0
    sw      $t0, 0x0($v0)
branch_0x802c5db4:
    sw      $a0, -0x1ba8($at)
    sw      $zero, 0x0($v0)
    lui     $t1, 0x801d
    lw      $t1, -0x4f68($t1)
    bnez    $t1, branch_0x802c5dd0
    nop
    sw      $a0, 0x0($v0)
branch_0x802c5dd0:
    jal     Function_0x801eb6ac_ChangeStateTo1e
    nop
    jal     Function_0x800ad164
    nop
branch_0x802c5de0:
    lw      $v0, 0x18($sp)
branch_0x802c5de4:
    lw      $ra, 0x14($sp)
branch_0x802c5de8:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c5df4
Function_0x802c5df4: # 0x802c5df4
    lui     $t6, 0x8023
    lh      $t6, -0x782a($t6)
    addiu   $sp, $sp, 0xffe8
    addiu   $a3, $zero, 0x1
    bne     $a3, $t6, branch_0x802c5e84
    sw      $ra, 0x14($sp)
    lui     $t7, %hi(Unknown_0x800da8a4_mainState)
    lw      $t7, %lo(Unknown_0x800da8a4_mainState)($t7)
    addiu   $at, $zero, 0x28
    lui     $t8, 0x800e
    bne     $t7, $at, branch_0x802c5e84
    nop
    lh      $t8, -0x571c($t8)
    lui     $t9, 0x801d
    lui     $a0, 0x8019
    beqz    $t8, branch_0x802c5e6c
    nop
    lw      $t9, -0x1c80($t9)
    addiu   $at, $zero, 0x4
    lui     $t1, 0x800d
    bne     $t9, $at, branch_0x802c5e6c
    nop
    lw      $t1, 0x7ef0($t1)
    bnez    $t1, branch_0x802c5e6c
    nop
    lui     $a0, 0x8019
    jal     Function_0x800bfc10
    addiu   $a0, $a0, 0x2370
    b       branch_0x802c5e74
    nop
branch_0x802c5e6c:
    jal     Function_0x800bfb70
    addiu   $a0, $a0, 0x2370
branch_0x802c5e74:
    lui     $a0, 0x8019
    jal     Function_0x800bfc98
    addiu   $a0, $a0, 0x2390
    addiu   $a3, $zero, 0x1
branch_0x802c5e84:
    lui     $t2, 0x800d
    lw      $t2, 0x7ef0($t2)
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x9440
    bnez    $t2, branch_0x802c5f08
    lui     $t6, 0x801d
    lui     $t3, 0x801d
    lh      $t3, -0x1ba4($t3)
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x9440
    beqz    $t3, branch_0x802c5efc
    lui     $v0, 0x800e
    lw      $t4, 0x0($v1)
    lui     $at, 0x801d
    addiu   $t5, $zero, 0xffff
    bnez    $t4, branch_0x802c5ed0
    lui     $t6, 0x801d
    sw      $a3, -0x1c50($at)
    sw      $t5, 0x0($v1)
branch_0x802c5ed0:
    lw      $t6, -0x1c50($t6)
    addiu   $t0, $zero, 0x2
    lui     $t7, 0x801d
    bnel    $t0, $t6, branch_0x802c5f00
    addiu   $t0, $zero, 0x2
    lh      $t7, -0x1c7c($t7)
    addiu   $at, $zero, 0xffff
    addiu   $t8, $zero, 0x3
    bne     $t7, $at, branch_0x802c5efc
    lui     $at, 0x801d
    sw      $t8, -0x1c58($at)
branch_0x802c5efc:
    addiu   $t0, $zero, 0x2
branch_0x802c5f00:
    b       branch_0x802c5fd0
    lw      $v0, -0x5758($v0)
branch_0x802c5f08:
    lw      $v0, 0x0($v1)
    or      $a0, $zero, $zero
    lui     $t1, 0x800e
    bltz    $v0, branch_0x802c5fa0
    addiu   $t9, $v0, 0x1
    sw      $t9, 0x0($v1)
    lw      $t1, -0x5758($t1)
    lui     $v0, 0x801d
    addiu   $t5, $zero, 0xffff
    bnel    $a3, $t1, branch_0x802c5f80
    lw      $t4, 0x0($v1)
    lw      $v0, -0x1c80($v0)
    addiu   $at, $zero, 0xb
    beql    $v0, $at, branch_0x802c5f50
    lw      $t2, 0x0($v1)
    bnezl   $v0, branch_0x802c5f68
    lw      $t3, 0x0($v1)
    lw      $t2, 0x0($v1)
branch_0x802c5f50:
    slti    $at, $t2, 0xa
    bnez    $at, branch_0x802c5f90
    nop
    b       branch_0x802c5f90
    or      $a0, $a3, $zero

.globl Function_0x802c5f64
Function_0x802c5f64: # 0x802c5f64
    lw      $t3, 0x0($v1)
branch_0x802c5f68:
    slti    $at, $t3, 0x32
    bnez    $at, branch_0x802c5f90
    nop
    b       branch_0x802c5f90
    or      $a0, $a3, $zero

.globl Function_0x802c5f7c
Function_0x802c5f7c: # 0x802c5f7c
    lw      $t4, 0x0($v1)
branch_0x802c5f80:
    slti    $at, $t4, 0x2e
    bnez    $at, branch_0x802c5f90
    nop
    or      $a0, $a3, $zero
branch_0x802c5f90:
    beqz    $a0, branch_0x802c5fa0
    lui     $at, 0x801d
    sw      $a3, -0x1c50($at)
    sw      $t5, 0x0($v1)
branch_0x802c5fa0:
    lw      $t6, -0x1c50($t6)
    addiu   $t0, $zero, 0x2
    lui     $v0, 0x800e
    bne     $t0, $t6, branch_0x802c5fd0
    lw      $v0, -0x5758($v0)
    lui     $t7, 0x801d
    lh      $t7, -0x1c7c($t7)
    addiu   $at, $zero, 0xffff
    addiu   $t8, $zero, 0x3
    bne     $t7, $at, branch_0x802c5fd0
    lui     $at, 0x801d
    sw      $t8, -0x1c58($at)
branch_0x802c5fd0:
    bne     $a3, $v0, branch_0x802c613c
    lui     $t7, 0x800d
    lui     $t9, 0x800d
    lw      $t9, 0x465c($t9)
    addiu   $a2, $zero, 0x378
    lui     $a1, 0x801c
    multu   $t9, $a2
    addiu   $a1, $a1, 0x2698
    lui     $t3, 0x801d
    lui     $t6, 0x801d
    mflo    $t1
    addu    $v1, $a1, $t1
    lw      $t2, 0x2f4($v1)
    beqz    $t2, branch_0x802c60a0
    nop
    lw      $t3, -0x1c98($t3)
    addiu   $at, $zero, 0x4
    lui     $v0, 0x801d
    bne     $t3, $at, branch_0x802c6090
    lui     $t6, 0x802d
    lw      $v0, -0x4f6c($v0)
    lw      $t6, -0x6934($t6)
    lw      $t4, 0x19c($v1)
    lui     $at, 0x801d
    sll     $t5, $v0, 2
    addu    $at, $at, $t5
    bne     $v0, $t6, branch_0x802c6090
    sw      $t4, -0x4ed0($at)
    lui     $t2, 0x801d
    lw      $t7, 0x4($v1)
    lw      $t2, -0x4f68($t2)
    lui     $t9, 0x800f
    sll     $t4, $v0, 1
    sll     $t8, $t7, 1
    sll     $t3, $t2, 4
    addu    $t9, $t9, $t8
    lui     $t1, 0x801d
    addu    $t5, $t3, $t4
    lui     $a1, 0x800f
    lw      $t1, -0x4f60($t1)
    lh      $t9, -0x56f0($t9)
    addu    $a1, $a1, $t5
    lh      $a1, -0x56e4($a1)
    addu    $a0, $t9, $t1
    slt     $at, $a0, $a1
    bnez    $at, branch_0x802c6090
    lui     $at, 0x802d
    sw      $a3, -0x6af0($at)
branch_0x802c6090:
    jal     Function_0x802c6fe0
    nop
    b       branch_0x802c63a8
    lw      $ra, 0x14($sp)
branch_0x802c60a0:
    lhu     $t6, -0x1b72($t6)
    beqzl   $t6, branch_0x802c63a8
    lw      $ra, 0x14($sp)
    lw      $t7, 0x2ec($v1)
    lui     $t8, 0x801d
    beqzl   $t7, branch_0x802c63a8
    lw      $ra, 0x14($sp)
    lw      $t8, -0x1c98($t8)
    addiu   $at, $zero, 0x4
    lui     $v0, 0x801d
    bne     $t8, $at, branch_0x802c6128
    lui     $t2, 0x802d
    lw      $v0, -0x4f6c($v0)
    lw      $t2, -0x6934($t2)
    lw      $t9, 0x19c($v1)
    lui     $at, 0x801d
    sll     $t1, $v0, 2
    addu    $at, $at, $t1
    bne     $v0, $t2, branch_0x802c6128
    sw      $t9, -0x4ed0($at)
    lui     $t3, 0x801d
    lw      $t3, -0x4f68($t3)
    sll     $t5, $v0, 1
    lui     $a1, 0x800f
    sll     $t4, $t3, 4
    addu    $t6, $t4, $t5
    lui     $a0, 0x801d
    addu    $a1, $a1, $t6
    lw      $a0, -0x4f60($a0)
    lh      $a1, -0x56e4($a1)
    slt     $at, $a0, $a1
    bnez    $at, branch_0x802c6128
    lui     $at, 0x802d
    sw      $a3, -0x6af0($at)
branch_0x802c6128:
    lui     $at, 0x801d
    jal     Function_0x802c6dcc
    sh      $a3, -0x1bb0($at)
    b       branch_0x802c63a8
    lw      $ra, 0x14($sp)
branch_0x802c613c:
    lw      $t7, 0x465c($t7)
    addiu   $a2, $zero, 0x378
    lui     $a1, 0x801c
    multu   $t7, $a2
    addiu   $a1, $a1, 0x2698
    lui     $t9, 0x800d
    mflo    $t8
    addu    $v1, $a1, $t8
    lw      $a0, 0x2f4($v1)
    beqz    $a0, branch_0x802c6230
    nop
    lw      $t9, 0x4660($t9)
    multu   $t9, $a2
    mflo    $t1
    addu    $v0, $a1, $t1
    lw      $t2, 0x2f4($v0)
    beqz    $t2, branch_0x802c6230
    nop
    lw      $a0, 0x19c($v1)
    lw      $a1, 0x19c($v0)
    addiu   $t3, $zero, 0x3
    bne     $a0, $a1, branch_0x802c61b4
    slt     $at, $a0, $a1
    lui     $at, 0x801d
    jal     Function_0x802c7394
    sh      $t3, -0x1bb0($at)
    addiu   $t4, $zero, 0x3
    lui     $at, 0x8023
    b       branch_0x802c63a4
    sw      $t4, -0x7798($at)
branch_0x802c61b4:
    beqz    $at, branch_0x802c61f8
    lui     $v1, 0x801d
    lui     $v1, 0x801d
    lui     $at, 0x801d
    addiu   $v1, $v1, 0xb150
    sh      $t0, -0x1bb0($at)
    lw      $v0, 0x0($v1)
    slti    $at, $v0, 0x63
    beqz    $at, branch_0x802c61e0
    addiu   $t5, $v0, 0x1
    sw      $t5, 0x0($v1)
branch_0x802c61e0:
    jal     Function_0x802c6fe0
    nop
    addiu   $a3, $zero, 0x1
    lui     $at, 0x8023
    b       branch_0x802c63a4
    sw      $a3, -0x7798($at)
branch_0x802c61f8:
    lui     $at, 0x801d
    addiu   $v1, $v1, 0xb150
    sh      $a3, -0x1bb0($at)
    lw      $v0, 0x4($v1)
    slti    $at, $v0, 0x63
    beqz    $at, branch_0x802c6218
    addiu   $t6, $v0, 0x1
    sw      $t6, 0x4($v1)
branch_0x802c6218:
    jal     Function_0x802c6fe0
    nop
    addiu   $t0, $zero, 0x2
    lui     $at, 0x8023
    b       branch_0x802c63a4
    sw      $t0, -0x7798($at)
branch_0x802c6230:
    beqz    $a0, branch_0x802c6274
    lui     $t8, 0x800d
    lui     $v1, 0x801d
    lui     $at, 0x801d
    addiu   $v1, $v1, 0xb150
    sh      $t0, -0x1bb0($at)
    lw      $v0, 0x0($v1)
    slti    $at, $v0, 0x63
    beqz    $at, branch_0x802c625c
    addiu   $t7, $v0, 0x1
    sw      $t7, 0x0($v1)
branch_0x802c625c:
    jal     Function_0x802c6fe0
    nop
    addiu   $a3, $zero, 0x1
    lui     $at, 0x8023
    b       branch_0x802c63a4
    sw      $a3, -0x7798($at)
branch_0x802c6274:
    lw      $t8, 0x4660($t8)
    lui     $at, 0x801d
    lui     $t3, 0x801d
    multu   $t8, $a2
    mflo    $t9
    addu    $v0, $a1, $t9
    lw      $t1, 0x2f4($v0)
    beqz    $t1, branch_0x802c62d0
    nop
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xb150
    sh      $a3, -0x1bb0($at)
    lw      $v0, 0x4($v1)
    slti    $at, $v0, 0x63
    beqz    $at, branch_0x802c62b8
    addiu   $t2, $v0, 0x1
    sw      $t2, 0x4($v1)
branch_0x802c62b8:
    jal     Function_0x802c6fe0
    nop
    addiu   $t0, $zero, 0x2
    lui     $at, 0x8023
    b       branch_0x802c63a4
    sw      $t0, -0x7798($at)
branch_0x802c62d0:
    lhu     $t3, -0x1b72($t3)
    beqzl   $t3, branch_0x802c63a8
    lw      $ra, 0x14($sp)
    lw      $a0, 0x2ec($v1)
    beqz    $a0, branch_0x802c631c
    nop
    lw      $t4, 0x2ec($v0)
    addiu   $t5, $zero, 0x3
    lui     $at, 0x801d
    beqz    $t4, branch_0x802c631c
    nop
    jal     Function_0x802c7394
    sh      $t5, -0x1bb0($at)
    addiu   $t6, $zero, 0x3
    lui     $at, 0x8023
    addiu   $a3, $zero, 0x1
    addiu   $t0, $zero, 0x2
    b       branch_0x802c6384
    sw      $t6, -0x7798($at)
branch_0x802c631c:
    beqz    $a0, branch_0x802c6350
    lui     $v1, 0x801d
    lui     $at, 0x801d
    addiu   $v1, $v1, 0xb150
    sh      $a3, -0x1bb0($at)
    lw      $v0, 0x4($v1)
    slti    $at, $v0, 0x63
    beqz    $at, branch_0x802c6344
    addiu   $t7, $v0, 0x1
    sw      $t7, 0x4($v1)
branch_0x802c6344:
    lui     $at, 0x8023
    b       branch_0x802c6384
    sw      $t0, -0x7798($at)
branch_0x802c6350:
    lw      $t8, 0x2ec($v0)
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xb150
    beqz    $t8, branch_0x802c6384
    lui     $at, 0x801d
    sh      $t0, -0x1bb0($at)
    lw      $v0, 0x0($v1)
    slti    $at, $v0, 0x63
    beqz    $at, branch_0x802c637c
    addiu   $t9, $v0, 0x1
    sw      $t9, 0x0($v1)
branch_0x802c637c:
    lui     $at, 0x8023
    sw      $a3, -0x7798($at)
branch_0x802c6384:
    lui     $v0, 0x801d
    lh      $v0, -0x1bb0($v0)
    beq     $a3, $v0, branch_0x802c639c
    nop
    bnel    $t0, $v0, branch_0x802c63a8
    lw      $ra, 0x14($sp)
branch_0x802c639c:
    jal     Function_0x802c6dcc
    nop
branch_0x802c63a4:
    lw      $ra, 0x14($sp)
branch_0x802c63a8:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_18_0x802c63b4
Function_18_0x802c63b4: # 0x802c63b4
    lui     $t6, 0x800e
    lw      $t6, -0x5758($t6)
    addiu   $sp, $sp, 0xffe8
    addiu   $v1, $zero, 0x1
    bne     $v1, $t6, branch_0x802c6410
    sw      $ra, 0x14($sp)
    lui     $t7, 0x802d
    lw      $t7, -0x6af0($t7)
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x950c
    beqz    $t7, branch_0x802c643c
    nop
    lw      $v0, 0x0($a0)
    blez    $v0, branch_0x802c63f8
    addiu   $t8, $v0, 0xffff
    sw      $t8, 0x0($a0)
    or      $v0, $t8, $zero
branch_0x802c63f8:
    bnez    $v0, branch_0x802c643c
    nop
    jal     Function_0x802c7570
    addiu   $a0, $zero, 0x66
    b       branch_0x802c643c
    addiu   $v1, $zero, 0x1
branch_0x802c6410:
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x96a0
    lw      $t9, 0x0($v0)
    addiu   $t0, $zero, 0x2
    or      $a0, $v1, $zero
    bne     $v1, $t9, branch_0x802c643c
    addiu   $a1, $zero, 0x4
    sw      $t0, 0x0($v0)
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    addiu   $v1, $zero, 0x1
branch_0x802c643c:
    lui     $t1, 0x8023
    lh      $t1, -0x782a($t1)
    lui     $t2, 0x800e
    bnel    $v1, $t1, branch_0x802c6544
    lw      $ra, 0x14($sp)
    lw      $t2, -0x5758($t2)
    bne     $v1, $t2, branch_0x802c6530
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe368
    lw      $v0, 0x0($v1)
    addiu   $a1, $zero, 0x4
    beqz    $v0, branch_0x802c6510
    nop
    beq     $v0, $a1, branch_0x802c648c
    lui     $t3, 0x801d
    addiu   $at, $zero, 0xb
    beq     $v0, $at, branch_0x802c6510
    nop
    b       branch_0x802c6520
    nop
branch_0x802c648c:
    lw      $t3, -0x4f70($t3)
    bnez    $t3, branch_0x802c64f8
    nop
    sh      $a1, 0x6($v1)
    lh      $a0, 0x6($v1)
    or      $v0, $zero, $zero
    lui     $t4, 0x801d
    blez    $a0, branch_0x802c64d8
    nop
    lw      $t4, -0x4f6c($t4)
    lui     $t6, 0x801d
    addiu   $t6, $t6, 0xb0b0
    sll     $t5, $t4, 4
    addu    $v1, $t5, $t6
branch_0x802c64c4:
    addiu   $v0, $v0, 0x1
    slt     $at, $v0, $a0
    addiu   $v1, $v1, 0x4
    bnez    $at, branch_0x802c64c4
    sw      $zero, -0x4($v1)
branch_0x802c64d8:
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xb094
    lw      $t7, 0x0($v0)
    addiu   $t8, $t7, 0x1
    jal     Function_0x801eb6ac_ChangeStateTo1e
    sw      $t8, 0x0($v0)
    b       branch_0x802c6538
    nop
branch_0x802c64f8:
    jal     Function_0x80077efc
    nop
    jal     Function_0x801ebe64_ChangeStateTo34
    nop
    b       branch_0x802c6538
    nop
branch_0x802c6510:
    jal     Function_0x801ec5c0_ChangeStateTo50
    nop
    b       branch_0x802c6538
    nop
branch_0x802c6520:
    jal     Function_0x801eaf10_ChangeStateTo2
    nop
    b       branch_0x802c6538
    nop
branch_0x802c6530:
    jal     Function_0x801ecbe0_ChangeStateTo36
    nop
branch_0x802c6538:
    jal     Function_0x800ad164
    nop
    lw      $ra, 0x14($sp)
branch_0x802c6544:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_18_0x802c6550
Function_18_0x802c6550: # 0x802c6550
    lui     $v0, 0x801d
    lw      $v0, -0x1c98($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $v0, branch_0x802c656c
    addiu   $at, $zero, 0x4
    bne     $v0, $at, branch_0x802c661c
branch_0x802c656c:
    lui     $a3, 0x802d
    addiu   $a3, $a3, 0x9500
    lw      $t6, 0x0($a3)
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x9504
    bnez    $t6, branch_0x802c661c
    nop
    lw      $t7, 0x0($v1)
    lui     $t9, 0x802d
    addiu   $v0, $t7, 0xffff
    bgez    $v0, branch_0x802c65a4
    sw      $v0, 0x0($v1)
    sw      $zero, 0x0($v1)
    or      $v0, $zero, $zero
branch_0x802c65a4:
    bnez    $v0, branch_0x802c661c
    nop
    lw      $t9, -0x6af0($t9)
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x9508
    beqz    $t9, branch_0x802c65d0
    lui     $t1, %hi(Unknown_0x801ce3ba)
    jal     Function_0x802c7570
    addiu   $a0, $zero, 0x66
    b       branch_0x802c661c
    nop
branch_0x802c65d0:
    lw      $v0, 0x0($v1)
    addiu   $t4, $zero, 0x1
    addiu   $a0, $zero, 0x1
    slti    $at, $v0, 0x4b0
    beqz    $at, branch_0x802c65ec
    addiu   $t0, $v0, 0x1
    sw      $t0, 0x0($v1)
branch_0x802c65ec:
    lhu     $t1, %lo(Unknown_0x801ce3ba)($t1)
    addiu   $a1, $zero, 0x4
    or      $a2, $zero, $zero
    andi    $t2, $t1, JOY_START|JOY_Z|JOY_A
    bnez    $t2, branch_0x802c6614
    nop
    lw      $t3, 0x0($v1)
    addiu   $at, $zero, 0x4b0
    bne     $t3, $at, branch_0x802c661c
    nop
branch_0x802c6614:
    jal     Function_0x801e6d10
    sw      $t4, 0x0($a3)
branch_0x802c661c:
    lui     $t5, 0x8023
    lh      $t5, -0x782a($t5)
    addiu   $at, $zero, 0x1
    bnel    $t5, $at, branch_0x802c6af4
    lw      $ra, 0x14($sp)
    jal     Function_0x800ad164
    nop
    lui     $v0, 0x801d
    lw      $v0, -0x1c98($v0)
    addiu   $at, $zero, 0x4
    lui     $a1, 0x801c
    beqz    $v0, branch_0x802c685c
    nop
    beq     $v0, $at, branch_0x802c666c
    lui     $t6, 0x801d
    addiu   $at, $zero, 0xb
    beq     $v0, $at, branch_0x802c6a1c
    lui     $a2, 0x801c
    b       branch_0x802c6ae8
    nop
branch_0x802c666c:
    lw      $t6, -0x4f70($t6)
    addiu   $t7, $zero, 0x4
    lui     $at, 0x801d
    bnez    $t6, branch_0x802c6690
    lui     $a1, 0x801c
    jal     Function_0x801eb6ac_ChangeStateTo1e
    sh      $t7, -0x1c92($at)
    b       branch_0x802c6af4
    lw      $ra, 0x14($sp)
branch_0x802c6690:
    lw      $a1, 0x23b0($a1)
    lui     $t8, 0x800e
    beqz    $a1, branch_0x802c6784
    nop
    lh      $t8, -0x5718($t8)
    or      $v0, $zero, $zero
    lui     $t9, 0x800d
    beqz    $t8, branch_0x802c6710
    lui     $t1, 0x801c
    lui     $t2, 0x800e
    lw      $t2, -0x58d0($t2)
    lw      $t9, 0x7ef0($t9)
    lui     $t4, 0x801d
    sll     $t3, $t2, 3
    sll     $t0, $t9, 2
    subu    $t3, $t3, $t2
    addu    $t0, $t0, $t9
    sll     $t0, $t0, 2
    sll     $t3, $t3, 1
    addiu   $t4, $t4, 0xaff8
    addiu   $t1, $t1, 0x2110
    addu    $a0, $t0, $t1
    addu    $v1, $t3, $t4
    addiu   $a2, $zero, 0x3
branch_0x802c66f0:
    lb      $t5, 0x0($v1)
    addiu   $v0, $v0, 0x1
    addiu   $a0, $a0, 0x1
    addiu   $v1, $v1, 0x1
    bne     $v0, $a2, branch_0x802c66f0
    sb      $t5, 0xf($a0)
    b       branch_0x802c6784
    sb      $zero, 0x10($a0)
branch_0x802c6710:
    lui     $t9, 0x800d
    lw      $t9, 0x7ef0($t9)
    lui     $t6, 0x800e
    lw      $t6, -0x58d0($t6)
    sll     $t1, $a1, 2
    sll     $t0, $t9, 4
    addu    $t1, $t1, $a1
    subu    $t0, $t0, $t9
    sll     $t7, $t6, 3
    sll     $t0, $t0, 2
    sll     $t1, $t1, 2
    lui     $t8, 0x801d
    lui     $t3, 0x801c
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 1
    addiu   $t3, $t3, 0x1d50
    addiu   $t8, $t8, 0xaff8
    addu    $t2, $t0, $t1
    addu    $a0, $t2, $t3
    addu    $v1, $t7, $t8
    or      $v0, $zero, $zero
    addiu   $a2, $zero, 0x3
branch_0x802c6768:
    lb      $t4, 0x0($v1)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    addiu   $a0, $a0, 0x1
    bne     $v0, $a2, branch_0x802c6768
    sb      $t4, -0x5($a0)
    sb      $zero, -0x4($a0)
branch_0x802c6784:
    lui     $t5, 0x801c
    lw      $t5, 0x23b4($t5)
    addiu   $a2, $zero, 0x3
    or      $v0, $zero, $zero
    beqz    $t5, branch_0x802c67f4
    lui     $t6, 0x800e
    lui     $t9, 0x800d
    lw      $t9, 0x7ef0($t9)
    lw      $t6, -0x58d0($t6)
    lui     $t8, 0x801d
    sll     $t0, $t9, 2
    sll     $t7, $t6, 3
    lui     $t1, 0x801c
    addu    $t0, $t0, $t9
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 1
    sll     $t0, $t0, 2
    addiu   $t1, $t1, 0x2020
    addiu   $t8, $t8, 0xaff8
    addu    $v1, $t7, $t8
    addu    $a0, $t0, $t1
branch_0x802c67d8:
    lb      $t2, 0x0($v1)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    addiu   $a0, $a0, 0x1
    bne     $v0, $a2, branch_0x802c67d8
    sb      $t2, 0xf($a0)
    sb      $zero, 0x10($a0)
branch_0x802c67f4:
    jal     Function_0x80077efc
    nop
    lui     $t3, 0x801c
    lw      $t3, 0x23b0($t3)
    lui     $t4, 0x801c
    lui     $t5, 0x800e
    bnez    $t3, branch_0x802c6820
    nop
    lw      $t4, 0x23b4($t4)
    beqz    $t4, branch_0x802c684c
    nop
branch_0x802c6820:
    lh      $t5, -0x5718($t5)
    lui     $a0, 0x800d
    beqz    $t5, branch_0x802c6844
    nop
    lui     $a0, 0x800d
    jal     Function_0x8007c1a4
    lw      $a0, 0x7ef0($a0)
    b       branch_0x802c684c
    nop
branch_0x802c6844:
    jal     Function_0x8007be44
    lw      $a0, 0x7ef0($a0)
branch_0x802c684c:
    jal     Function_0x801ebe64_ChangeStateTo34
    nop
    b       branch_0x802c6af4
    lw      $ra, 0x14($sp)
branch_0x802c685c:
    lw      $a1, 0x23b0($a1)
    lui     $t6, 0x800e
    beqz    $a1, branch_0x802c6950
    nop
    lh      $t6, -0x5718($t6)
    or      $v0, $zero, $zero
    lui     $t7, 0x800d
    beqz    $t6, branch_0x802c68dc
    lui     $t9, 0x801c
    lui     $t0, 0x800e
    lw      $t0, -0x58d0($t0)
    lw      $t7, 0x7ef0($t7)
    lui     $t2, 0x801d
    sll     $t1, $t0, 3
    sll     $t8, $t7, 2
    subu    $t1, $t1, $t0
    addu    $t8, $t8, $t7
    sll     $t8, $t8, 2
    sll     $t1, $t1, 1
    addiu   $t2, $t2, 0xaff8
    addiu   $t9, $t9, 0x2110
    addu    $a0, $t8, $t9
    addu    $v1, $t1, $t2
    addiu   $a2, $zero, 0x3
branch_0x802c68bc:
    lb      $t3, 0x0($v1)
    addiu   $v0, $v0, 0x1
    addiu   $a0, $a0, 0x1
    addiu   $v1, $v1, 0x1
    bne     $v0, $a2, branch_0x802c68bc
    sb      $t3, 0xf($a0)
    b       branch_0x802c6950
    sb      $zero, 0x10($a0)
branch_0x802c68dc:
    lui     $t7, 0x800d
    lw      $t7, 0x7ef0($t7)
    lui     $t4, 0x800e
    lw      $t4, -0x58d0($t4)
    sll     $t9, $a1, 2
    sll     $t8, $t7, 4
    addu    $t9, $t9, $a1
    subu    $t8, $t8, $t7
    sll     $t5, $t4, 3
    sll     $t8, $t8, 2
    sll     $t9, $t9, 2
    lui     $t6, 0x801d
    lui     $t1, 0x801c
    subu    $t5, $t5, $t4
    sll     $t5, $t5, 1
    addiu   $t1, $t1, 0x1d50
    addiu   $t6, $t6, 0xaff8
    addu    $t0, $t8, $t9
    addu    $a0, $t0, $t1
    addu    $v1, $t5, $t6
    or      $v0, $zero, $zero
    addiu   $a2, $zero, 0x3
branch_0x802c6934:
    lb      $t2, 0x0($v1)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    addiu   $a0, $a0, 0x1
    bne     $v0, $a2, branch_0x802c6934
    sb      $t2, -0x5($a0)
    sb      $zero, -0x4($a0)
branch_0x802c6950:
    lui     $a3, 0x801c
    lw      $a3, 0x23b4($a3)
    addiu   $a2, $zero, 0x3
    or      $v0, $zero, $zero
    beqz    $a3, branch_0x802c69c0
    lui     $t3, 0x800e
    lui     $t6, 0x800d
    lw      $t6, 0x7ef0($t6)
    lw      $t3, -0x58d0($t3)
    lui     $t5, 0x801d
    sll     $t7, $t6, 2
    sll     $t4, $t3, 3
    lui     $t8, 0x801c
    addu    $t7, $t7, $t6
    subu    $t4, $t4, $t3
    sll     $t4, $t4, 1
    sll     $t7, $t7, 2
    addiu   $t8, $t8, 0x2020
    addiu   $t5, $t5, 0xaff8
    addu    $v1, $t4, $t5
    addu    $a0, $t7, $t8
branch_0x802c69a4:
    lb      $t9, 0x0($v1)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    addiu   $a0, $a0, 0x1
    bne     $v0, $a2, branch_0x802c69a4
    sb      $t9, 0xf($a0)
    sb      $zero, 0x10($a0)
branch_0x802c69c0:
    bnez    $a1, branch_0x802c69d0
    lui     $t0, 0x800e
    beqz    $a3, branch_0x802c6a0c
    nop
branch_0x802c69d0:
    lh      $t0, -0x5718($t0)
    lui     $a0, 0x800d
    lw      $a0, 0x7ef0($a0)
    beqz    $t0, branch_0x802c69f4
    nop
    jal     Function_0x8007c1a4
    nop
    b       branch_0x802c69fc
    nop
branch_0x802c69f4:
    jal     Function_0x8007be44
    nop
branch_0x802c69fc:
    jal     Function_0x801ec758_ChangeStateTo64
    nop
    b       branch_0x802c6af4
    lw      $ra, 0x14($sp)
branch_0x802c6a0c:
    jal     Function_0x801ebf9c_ChangeStateTo32
    nop
    b       branch_0x802c6af4
    lw      $ra, 0x14($sp)
branch_0x802c6a1c:
    lw      $a2, 0x2688($a2)
    or      $v0, $zero, $zero
    lui     $a0, 0x800d
    beqz    $a2, branch_0x802c6a94
    lui     $t1, 0x800e
    lw      $a0, 0x7ef0($a0)
    lw      $t1, -0x58d0($t1)
    lui     $t3, 0x801d
    sll     $t4, $a0, 2
    subu    $t4, $t4, $a0
    sll     $t2, $t1, 3
    sll     $t4, $t4, 4
    sll     $t5, $a2, 4
    lui     $t7, 0x801c
    subu    $t2, $t2, $t1
    sll     $t2, $t2, 1
    addiu   $t7, $t7, 0x2448
    addu    $t6, $t4, $t5
    addiu   $t3, $t3, 0xaff8
    addu    $v1, $t2, $t3
    addu    $a1, $t6, $t7
    addiu   $a2, $zero, 0x3
branch_0x802c6a74:
    lb      $t8, 0x0($v1)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    addiu   $a1, $a1, 0x1
    bne     $v0, $a2, branch_0x802c6a74
    sb      $t8, -0x5($a1)
    jal     Function_0x8007c058
    sb      $zero, -0x4($a1)
branch_0x802c6a94:
    lui     $t9, 0x801c
    lw      $t9, 0x2690($t9)
    lui     $v1, 0x800e
    addiu   $v1, $v1, 0xa8e0
    beqz    $t9, branch_0x802c6ad8
    nop
    lh      $t0, 0x0($v1)
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xafe0
    bnez    $t0, branch_0x802c6ad8
    nop
    lb      $t1, 0x0($v0)
    addiu   $t3, $zero, 0x1
    sh      $t3, 0x0($v1)
    ori     $t2, $t1, 0x10
    jal     Function_0x8007c434
    sb      $t2, 0x0($v0)
branch_0x802c6ad8:
    jal     Function_0x801ecca8_ChangeStateTo38
    nop
    b       branch_0x802c6af4
    lw      $ra, 0x14($sp)
branch_0x802c6ae8:
    jal     Function_0x801ecbe0_ChangeStateTo36
    nop
    lw      $ra, 0x14($sp)
branch_0x802c6af4:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_18_0x802c6b00
Function_18_0x802c6b00: # 0x802c6b00
    lui     $t6, 0x8023
    lh      $t6, -0x782a($t6)
    addiu   $sp, $sp, 0xffe8
    addiu   $at, $zero, 0x1
    bne     $t6, $at, branch_0x802c6b28
    sw      $ra, 0x14($sp)
    jal     Function_0x800ad164
    nop
    jal     Function_0x801ecbe0_ChangeStateTo36
    nop
branch_0x802c6b28:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_18_0x802c6b38
Function_18_0x802c6b38: # 0x802c6b38
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    lw      $v0, %lo(Unknown_0x800da8a4_mainState)($v0)
    addiu   $at, $zero, 0x2a
    lui     $t6, 0x801d
    bnel    $v0, $at, branch_0x802c6b6c
    addiu   $at, $zero, 0x29
    lh      $t6, -0x1bb0($t6)
    addiu   $v1, $zero, 0x1
    bne     $v1, $t6, branch_0x802c6bd0
    nop
    jr      $ra
    or      $v0, $a0, $zero

.globl Function_0x802c6b68
Function_0x802c6b68: # 0x802c6b68
    addiu   $at, $zero, 0x29
branch_0x802c6b6c:
    bne     $v0, $at, branch_0x802c6bd0
    lui     $a1, 0x802d
    addiu   $a1, $a1, 0x96a4
    lw      $v0, 0x0($a1)
    addiu   $v1, $zero, 0x1
    lui     $t7, 0x801d
    slti    $at, $v0, 0x1e
    beqz    $at, branch_0x802c6bac
    addiu   $t8, $v0, 0x1
    lh      $t7, -0x1bb0($t7)
    addiu   $v1, $zero, 0x1
    lui     $at, 0x800d
    bne     $v1, $t7, branch_0x802c6bac
    sw      $v1, 0x7efc($at)
    b       branch_0x802c6bb0
    slti    $at, $t8, 0x3d
branch_0x802c6bac:
    slti    $at, $t8, 0x3d
branch_0x802c6bb0:
    bnez    $at, branch_0x802c6bd0
    sw      $t8, 0x0($a1)
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x96a0
    lw      $t0, 0x0($v0)
    bnez    $t0, branch_0x802c6bd0
    nop
    sw      $v1, 0x0($v0)
branch_0x802c6bd0:
    jr      $ra
    or      $v0, $a0, $zero

.globl Function_0x802c6bd8
Function_0x802c6bd8: # 0x802c6bd8
    addiu   $sp, $sp, 0xffa8
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
    addiu   $t8, $zero, 0x114
    addiu   $t9, $zero, 0x14
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a0, $s2, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x16
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xc5
    lui     $s0, 0x802d
    addiu   $s0, $s0, 0x96a8
    lw      $t0, 0x0($s0)
    or      $s2, $v0, $zero
    or      $a0, $v0, $zero
    beqz    $t0, branch_0x802c6d78
    or      $a1, $zero, $zero
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
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff
    lui     $t2, 0xed07
    lui     $t3, 0x48
    lui     $t1, 0xe700
    ori     $t3, $t3, 0x8368
    ori     $t2, $t2, 0x8050
    sw      $t1, 0x0($v0)
    sw      $zero, 0x4($v0)
    sw      $t2, 0x8($v0)
    sw      $t3, 0xc($v0)
    lw      $t4, 0x4($s0)
    addiu   $s2, $v0, 0x10
    or      $s4, $s0, $zero
    blez    $t4, branch_0x802c6d54
    or      $s1, $zero, $zero
    lui     $s0, 0x802d
    lui     $s5, 0x801d
    addiu   $s5, $s5, 0xe384
    addiu   $s0, $s0, 0x96a8
    addiu   $s3, $zero, 0xffff
    lw      $a2, 0x18($s0)
branch_0x802c6cfc:
    or      $a0, $s2, $zero
    addiu   $a1, $zero, 0x3
    beq     $s3, $a2, branch_0x802c6d3c
    addiu   $t8, $zero, 0xc8
    lh      $t5, 0x0($s5)
    bnel    $s3, $t5, branch_0x802c6d2c
    lw      $a3, 0xc($s0)
    lw      $t6, 0xc($s0)
    lw      $a2, 0x18($s0)
    addiu   $t7, $t6, 0xfffe
    sw      $t7, 0xc($s0)
    lw      $a3, 0xc($s0)
branch_0x802c6d2c:
    sw      $t8, 0x10($sp)
    jal     Function_0x801e3c40
    sw      $zero, 0x14($sp)
    or      $s2, $v0, $zero
branch_0x802c6d3c:
    lw      $t9, 0x4($s4)
    addiu   $s1, $s1, 0x1
    addiu   $s0, $s0, 0x4
    slt     $at, $s1, $t9
    bnezl   $at, branch_0x802c6cfc
    lw      $a2, 0x18($s0)
branch_0x802c6d54:
    lui     $t1, 0x802d
    lw      $t1, -0x6950($t1)
    lui     $t0, 0x802d
    lw      $t0, -0x694c($t0)
    subu    $t2, $zero, $t1
    slt     $at, $t0, $t2
    beqz    $at, branch_0x802c6d78
    lui     $at, 0x802d
    sw      $zero, -0x6958($at)
branch_0x802c6d78:
    or      $v1, $s2, $zero
    addiu   $s2, $s2, 0x8
    lui     $t3, 0xe700
    sw      $t3, 0x0($v1)
    sw      $zero, 0x4($v1)
    or      $a0, $s2, $zero
    lui     $t5, 0x4f
    ori     $t5, $t5, 0xc3bc
    lui     $t4, 0xed00
    sw      $t4, 0x0($a0)
    sw      $t5, 0x4($a0)
    lw      $ra, 0x54($sp)
    addiu   $v0, $s2, 0x8
    lw      $s2, 0x44($sp)
    lw      $s5, 0x50($sp)
    lw      $s4, 0x4c($sp)
    lw      $s3, 0x48($sp)
    lw      $s1, 0x40($sp)
    lw      $s0, 0x3c($sp)
    jr      $ra
    addiu   $sp, $sp, 0x58

.globl Function_0x802c6dcc
Function_0x802c6dcc: # 0x802c6dcc
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_29
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    addiu   $v1, $zero, 0x1
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    sw      $v1, %lo(Unknown_0x801ce398)($at)
    lui     $at, 0x801d
    sw      $v1, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $at, 0x800d
    addiu   $t8, $zero, 0x3
    sw      $t8, 0x439c($at)
    lui     $at, 0x802d
    sw      $zero, -0x695c($at)
    lui     $t9, 0x801d
    lw      $t9, -0x1c98($t9)
    lui     $at, 0x802d
    sw      $zero, -0x6960($at)
    addiu   $sp, $sp, 0xffe8
    addiu   $at, $zero, 0x4
    bne     $t9, $at, branch_0x802c6f00
    sw      $ra, 0x14($sp)
    lui     $t0, 0x801d
    lui     $t1, 0x801c
    lw      $t1, 0x269c($t1)
    lw      $t0, -0x1b98($t0)
    lui     $t2, 0x801d
    lui     $t3, 0x801c
    slt     $at, $t0, $t1
    bnez    $at, branch_0x802c6e80
    lui     $t4, 0x801d
    lui     $at, 0x801d
    b       branch_0x802c6e88
    sh      $v1, -0x4ea8($at)
branch_0x802c6e80:
    lui     $at, 0x801d
    sh      $zero, -0x4ea8($at)
branch_0x802c6e88:
    lw      $t2, -0x1b94($t2)
    lw      $t3, 0x2a14($t3)
    lui     $t5, 0x801c
    lui     $t6, 0x801d
    slt     $at, $t2, $t3
    bnez    $at, branch_0x802c6eb0
    lui     $t7, 0x801c
    lui     $at, 0x801d
    b       branch_0x802c6eb8
    sh      $v1, -0x4ea6($at)
branch_0x802c6eb0:
    lui     $at, 0x801d
    sh      $zero, -0x4ea6($at)
branch_0x802c6eb8:
    lw      $t4, -0x1b90($t4)
    lw      $t5, 0x2d8c($t5)
    slt     $at, $t4, $t5
    bnez    $at, branch_0x802c6ed4
    lui     $at, 0x801d
    b       branch_0x802c6edc
    sh      $v1, -0x4ea4($at)
branch_0x802c6ed4:
    lui     $at, 0x801d
    sh      $zero, -0x4ea4($at)
branch_0x802c6edc:
    lw      $t6, -0x1b8c($t6)
    lw      $t7, 0x3104($t7)
    slt     $at, $t6, $t7
    bnez    $at, branch_0x802c6ef8
    lui     $at, 0x801d
    b       branch_0x802c6f00
    sh      $v1, -0x4ea2($at)
branch_0x802c6ef8:
    lui     $at, 0x801d
    sh      $zero, -0x4ea2($at)
branch_0x802c6f00:
    lui     $t8, 0x800e
    lw      $t8, -0x5758($t8)
    lui     $t9, 0x802d
    bnel    $v1, $t8, branch_0x802c6f40
    or      $a0, $zero, $zero
    lw      $t9, -0x6af0($t9)
    addiu   $t0, $zero, 0x78
    or      $a0, $v1, $zero
    beqz    $t9, branch_0x802c6f34
    addiu   $a1, $zero, 0x4
    lui     $at, 0x802d
    b       branch_0x802c6f3c
    sw      $t0, -0x6af4($at)
branch_0x802c6f34:
    jal     Function_0x801e6d10
    addiu   $a2, $zero, 0x78
branch_0x802c6f3c:
    or      $a0, $zero, $zero
branch_0x802c6f40:
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $t1, 0x800e
    lw      $t1, -0x5758($t1)
    addiu   $v1, $zero, 0x1
    lui     $t2, 0x800d
    bne     $v1, $t1, branch_0x802c6fa8
    nop
    lw      $t2, 0x465c($t2)
    lui     $v0, 0x801c
    or      $a1, $zero, $zero
    sll     $t3, $t2, 3
    subu    $t3, $t3, $t2
    sll     $t3, $t3, 4
    subu    $t3, $t3, $t2
    sll     $t3, $t3, 3
    addu    $v0, $v0, $t3
    lw      $v0, 0x2984($v0)
    addiu   $at, $zero, 0x2
    beq     $v1, $v0, branch_0x802c6fa0
    nop
    bne     $v0, $at, branch_0x802c6fa0
    nop
    addiu   $a1, $zero, 0x1
branch_0x802c6fa0:
    jal     Function_0x801e67ac
    addiu   $a0, $zero, 0x4
branch_0x802c6fa8:
    lui     $at, 0x801d
    jal     Function_0x800bfad4
    sh      $zero, -0x1c76($at)
    jal     Function_0x800bfb08
    nop
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x4
    addiu   $a0, $zero, 0x4
    jal     Function_0x800c1f94
    or      $a1, $zero, $zero
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c6fe0
Function_0x802c6fe0: # 0x802c6fe0
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_2a
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    addiu   $v1, $zero, 0x1
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    sw      $v1, %lo(Unknown_0x801ce398)($at)
    lui     $at, 0x801d
    sw      $v1, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $t9, 0x801d
    lw      $t9, -0x1c98($t9)
    lui     $at, 0x800d
    addiu   $t8, $zero, 0x3
    sw      $t8, 0x439c($at)
    addiu   $sp, $sp, 0xffd8
    addiu   $a0, $zero, 0x4
    lui     $at, 0x802d
    sw      $ra, 0x14($sp)
    bne     $a0, $t9, branch_0x802c710c
    sw      $zero, -0x6b00($at)
    lui     $t0, 0x801d
    lui     $t1, 0x801c
    lw      $t1, 0x269c($t1)
    lw      $t0, -0x1b98($t0)
    lui     $t2, 0x801d
    lui     $t3, 0x801c
    slt     $at, $t0, $t1
    bnez    $at, branch_0x802c708c
    lui     $t4, 0x801d
    lui     $at, 0x801d
    b       branch_0x802c7094
    sh      $v1, -0x4ea8($at)
branch_0x802c708c:
    lui     $at, 0x801d
    sh      $zero, -0x4ea8($at)
branch_0x802c7094:
    lw      $t2, -0x1b94($t2)
    lw      $t3, 0x2a14($t3)
    lui     $t5, 0x801c
    lui     $t6, 0x801d
    slt     $at, $t2, $t3
    bnez    $at, branch_0x802c70bc
    lui     $t7, 0x801c
    lui     $at, 0x801d
    b       branch_0x802c70c4
    sh      $v1, -0x4ea6($at)
branch_0x802c70bc:
    lui     $at, 0x801d
    sh      $zero, -0x4ea6($at)
branch_0x802c70c4:
    lw      $t4, -0x1b90($t4)
    lw      $t5, 0x2d8c($t5)
    slt     $at, $t4, $t5
    bnez    $at, branch_0x802c70e0
    lui     $at, 0x801d
    b       branch_0x802c70e8
    sh      $v1, -0x4ea4($at)
branch_0x802c70e0:
    lui     $at, 0x801d
    sh      $zero, -0x4ea4($at)
branch_0x802c70e8:
    lw      $t6, -0x1b8c($t6)
    lw      $t7, 0x3104($t7)
    slt     $at, $t6, $t7
    bnez    $at, branch_0x802c7104
    lui     $at, 0x801d
    b       branch_0x802c710c
    sh      $v1, -0x4ea2($at)
branch_0x802c7104:
    lui     $at, 0x801d
    sh      $zero, -0x4ea2($at)
branch_0x802c710c:
    lui     $t8, 0x800e
    lw      $t8, -0x5758($t8)
    lui     $t9, 0x800d
    addiu   $a1, $zero, 0x4
    bne     $v1, $t8, branch_0x802c7228
    addiu   $a2, $zero, 0x64
    lw      $t9, 0x465c($t9)
    lui     $v0, 0x8019
    addiu   $t1, $zero, 0x82
    sll     $t0, $t9, 2
    subu    $t0, $t0, $t9
    sll     $t0, $t0, 3
    subu    $t0, $t0, $t9
    sll     $t0, $t0, 3
    addu    $t0, $t0, $t9
    sll     $t0, $t0, 2
    subu    $t0, $t0, $t9
    sll     $t0, $t0, 3
    addu    $v0, $v0, $t0
    lw      $v0, 0x3ab8($v0)
    bnel    $v0, $v1, branch_0x802c7178
    addiu   $at, $zero, 0x2
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x9504
    b       branch_0x802c71fc
    sw      $t1, 0x0($v0)

.globl Function_0x802c7174
Function_0x802c7174: # 0x802c7174
    addiu   $at, $zero, 0x2
branch_0x802c7178:
    bnel    $v0, $at, branch_0x802c7198
    addiu   $at, $zero, 0x3
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x9504
    addiu   $t2, $zero, 0x8c
    b       branch_0x802c71fc
    sw      $t2, 0x0($v0)

.globl Function_0x802c7194
Function_0x802c7194: # 0x802c7194
    addiu   $at, $zero, 0x3
branch_0x802c7198:
    bne     $v0, $at, branch_0x802c71b4
    nop
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x9504
    addiu   $t3, $zero, 0x64
    b       branch_0x802c71fc
    sw      $t3, 0x0($v0)
branch_0x802c71b4:
    bnel    $v0, $a0, branch_0x802c71d4
    addiu   $at, $zero, 0x5
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x9504
    addiu   $t4, $zero, 0x78
    b       branch_0x802c71fc
    sw      $t4, 0x0($v0)

.globl Function_0x802c71d0
Function_0x802c71d0: # 0x802c71d0
    addiu   $at, $zero, 0x5
branch_0x802c71d4:
    bne     $v0, $at, branch_0x802c71ec
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x9504
    addiu   $t5, $zero, 0x6e
    b       branch_0x802c71fc
    sw      $t5, 0x0($v0)
branch_0x802c71ec:
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x9504
    addiu   $t6, $zero, 0x64
    sw      $t6, 0x0($v0)
branch_0x802c71fc:
    lui     $t7, 0x801d
    lw      $t7, -0x1c80($t7)
    addiu   $at, $zero, 0xb
    bne     $t7, $at, branch_0x802c721c
    or      $a0, $v1, $zero
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    lw      $a2, 0x0($v0)
branch_0x802c721c:
    lui     $at, 0x802d
    b       branch_0x802c7230
    sw      $zero, -0x6af8($at)
branch_0x802c7228:
    jal     Function_0x801e6d10
    or      $a0, $v1, $zero
branch_0x802c7230:
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $t8, 0x800e
    lw      $t8, -0x5758($t8)
    addiu   $v1, $zero, 0x1
    addiu   $a0, $zero, 0x1
    bne     $v1, $t8, branch_0x802c7260
    nop
    jal     Function_0x801e67ac
    addiu   $a1, $zero, 0x1
    addiu   $v1, $zero, 0x1
branch_0x802c7260:
    lui     $v0, 0x801d
    lw      $v0, -0x1c98($v0)
    lui     $at, 0x801d
    sh      $zero, -0x1c76($at)
    beqz    $v0, branch_0x802c7290
    lui     $t9, 0x801c
    beq     $v0, $v1, branch_0x802c7334
    addiu   $at, $zero, 0xb
    beq     $v0, $at, branch_0x802c7374
    nop
    b       branch_0x802c72c8
    nop
branch_0x802c7290:
    lw      $t9, 0x23b0($t9)
    addiu   $a0, $zero, 0x6
    bnel    $v1, $t9, branch_0x802c72ac
    addiu   $a1, $zero, 0x1
    b       branch_0x802c72ac
    or      $a1, $zero, $zero

.globl Function_0x802c72a8
Function_0x802c72a8: # 0x802c72a8
    addiu   $a1, $zero, 0x1
branch_0x802c72ac:
    jal     Function_0x800c1d00
    sw      $a1, 0x18($sp)
    lw      $a1, 0x18($sp)
    jal     Function_0x800c1f94
    addiu   $a0, $zero, 0x6
    b       branch_0x802c7374
    nop
branch_0x802c72c8:
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x6
    lui     $t0, 0x800d
    lw      $t0, 0x465c($t0)
    lui     $v0, 0x801c
    lui     $t2, 0x801d
    sll     $t1, $t0, 3
    subu    $t1, $t1, $t0
    sll     $t1, $t1, 4
    subu    $t1, $t1, $t0
    sll     $t1, $t1, 3
    addu    $v0, $v0, $t1
    lw      $v0, 0x269c($v0)
    lw      $t2, -0x1b9c($t2)
    addiu   $a0, $zero, 0x6
    addiu   $a1, $v0, 0x1
    slt     $at, $t2, $v0
    bnez    $at, branch_0x802c7324
    nop
    jal     Function_0x800c1f94
    addiu   $a0, $zero, 0x6
    b       branch_0x802c7374
    nop
branch_0x802c7324:
    jal     Function_0x800c1f94
    addiu   $a1, $zero, 0x5
    b       branch_0x802c7374
    nop
branch_0x802c7334:
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x6
    lui     $v0, 0x801d
    lh      $v0, -0x1bb0($v0)
    addiu   $at, $zero, 0x3
    addiu   $v1, $zero, 0x1
    bne     $v0, $at, branch_0x802c735c
    nop
    b       branch_0x802c736c
    or      $a1, $zero, $zero
branch_0x802c735c:
    bne     $v1, $v0, branch_0x802c736c
    addiu   $a1, $zero, 0x1
    b       branch_0x802c736c
    addiu   $a1, $zero, 0x2
branch_0x802c736c:
    jal     Function_0x800c1f94
    addiu   $a0, $zero, 0x6
branch_0x802c7374:
    jal     Function_0x800bfad4
    nop
    jal     Function_0x800bfb08
    nop
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x802c7394
Function_0x802c7394: # 0x802c7394
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_2c
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    addiu   $a0, $zero, 0x1
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    sw      $a0, %lo(Unknown_0x801ce398)($at)
    lui     $at, 0x801d
    sw      $a0, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    addiu   $sp, $sp, 0xffe8
    sw      $zero, -0x5764($at)
    sw      $ra, 0x14($sp)
    lui     $at, 0x800d
    addiu   $t8, $zero, 0x3
    sw      $t8, 0x439c($at)
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    addiu   $a2, $zero, 0x64
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $at, 0x801d
    sh      $zero, -0x1c76($at)
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x4
    addiu   $a0, $zero, 0x4
    jal     Function_0x800c1f94
    or      $a1, $zero, $zero
    jal     Function_0x800bfad4
    nop
    jal     Function_0x800bfb08
    nop
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c744c
Function_0x802c744c: # 0x802c744c
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_2b
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $a0, %lo(Unknown_0x801ce390)($at)
    addiu   $v1, $zero, 0x1
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    sw      $v1, %lo(Unknown_0x801ce398)($at)
    lui     $at, 0x801d
    sw      $v1, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    addiu   $sp, $sp, 0xffe8
    sw      $zero, -0x5764($at)
    sw      $ra, 0x14($sp)
    lui     $at, 0x800d
    addiu   $t8, $zero, 0x3
    sw      $t8, 0x439c($at)
    or      $a0, $v1, $zero
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    lui     $at, 0x801d
    jal     Function_0x800bfad4
    sh      $zero, -0x1c76($at)
    jal     Function_0x800bfb08
    nop
    lui     $v0, %hi(Unknown_0x801ce390)
    lw      $v0, %lo(Unknown_0x801ce390)($v0)
    addiu   $at, $zero, 0x2
    bnel    $v0, $at, branch_0x802c74fc
    addiu   $at, $zero, 0x1e
    jal     Function_0x800c1d00
    or      $a0, $zero, $zero
    b       branch_0x802c7564
    lw      $ra, 0x14($sp)

.globl Function_0x802c74f8
Function_0x802c74f8: # 0x802c74f8
    addiu   $at, $zero, 0x1e
branch_0x802c74fc:
    bnel    $v0, $at, branch_0x802c7518
    addiu   $at, $zero, 0x28
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x2
    b       branch_0x802c7564
    lw      $ra, 0x14($sp)

.globl Function_0x802c7514
Function_0x802c7514: # 0x802c7514
    addiu   $at, $zero, 0x28
branch_0x802c7518:
    bnel    $v0, $at, branch_0x802c7534
    addiu   $at, $zero, 0xa
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x7
    b       branch_0x802c7564
    lw      $ra, 0x14($sp)

.globl Function_0x802c7530
Function_0x802c7530: # 0x802c7530
    addiu   $at, $zero, 0xa
branch_0x802c7534:
    bnel    $v0, $at, branch_0x802c7550
    addiu   $at, $zero, 0x14
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x1
    b       branch_0x802c7564
    lw      $ra, 0x14($sp)

.globl Function_0x802c754c
Function_0x802c754c: # 0x802c754c
    addiu   $at, $zero, 0x14
branch_0x802c7550:
    bnel    $v0, $at, branch_0x802c7564
    lw      $ra, 0x14($sp)
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0xa
    lw      $ra, 0x14($sp)
branch_0x802c7564:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c7570
Function_0x802c7570: # 0x802c7570
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_2d
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $a0, %lo(Unknown_0x801ce390)($at)
    addiu   $v1, $zero, 0x1
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    sw      $v1, %lo(Unknown_0x801ce398)($at)
    lui     $at, 0x801d
    sw      $v1, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    addiu   $sp, $sp, 0xffe8
    sw      $zero, -0x5764($at)
    sw      $ra, 0x14($sp)
    lui     $at, 0x800d
    addiu   $t8, $zero, 0x3
    sw      $t8, 0x439c($at)
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    addiu   $t9, $zero, 0x1
    lui     $at, 0x8023
    sw      $t9, -0x779c($at)
    addiu   $a0, $zero, 0x3
    jal     Function_0x800c1f94
    or      $a1, $zero, $zero
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c7608
Function_0x802c7608: # 0x802c7608
    lui     $t6, 0x801d
    lw      $t6, -0x1c64($t6)
    addiu   $sp, $sp, 0xfe58
    sw      $ra, 0x3c($sp)
    beqz    $t6, branch_0x802c783c
    sw      $s0, 0x38($sp)
    lui     $a1, 0x801c
    lw      $a1, 0x23b0($a1)
    lui     $t7, 0x800e
    beqz    $a1, branch_0x802c7718
    nop
    lh      $t7, -0x5718($t7)
    or      $v1, $zero, $zero
    lui     $t8, 0x800d
    beqz    $t7, branch_0x802c76a4
    lui     $t2, 0x801c
    lui     $t3, 0x800e
    lw      $t3, -0x58d0($t3)
    lw      $t8, 0x7ef0($t8)
    lui     $t5, 0x801d
    sll     $t4, $t3, 3
    sll     $t9, $t8, 2
    subu    $t4, $t4, $t3
    addu    $t9, $t9, $t8
    sll     $t9, $t9, 2
    sll     $t4, $t4, 1
    addiu   $t5, $t5, 0xaff8
    addiu   $t2, $t2, 0x2110
    addu    $a0, $t9, $t2
    addu    $v0, $t4, $t5
    addiu   $a1, $zero, 0x3
branch_0x802c7684:
    lb      $t6, 0x0($v0)
    addiu   $v1, $v1, 0x1
    addiu   $a0, $a0, 0x1
    addiu   $v0, $v0, 0x1
    bne     $v1, $a1, branch_0x802c7684
    sb      $t6, 0xf($a0)
    b       branch_0x802c7718
    sb      $zero, 0x10($a0)
branch_0x802c76a4:
    lui     $t2, 0x800d
    lw      $t2, 0x7ef0($t2)
    lui     $t7, 0x800e
    lw      $t7, -0x58d0($t7)
    sll     $t4, $a1, 2
    sll     $t3, $t2, 4
    addu    $t4, $t4, $a1
    subu    $t3, $t3, $t2
    sll     $t8, $t7, 3
    sll     $t3, $t3, 2
    sll     $t4, $t4, 2
    lui     $t9, 0x801d
    lui     $t6, 0x801c
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 1
    addiu   $t6, $t6, 0x1d50
    addiu   $t9, $t9, 0xaff8
    addu    $t5, $t3, $t4
    addu    $a0, $t5, $t6
    addu    $v0, $t8, $t9
    addiu   $a1, $zero, 0x3
    or      $v1, $zero, $zero
branch_0x802c76fc:
    lb      $t7, 0x0($v0)
    addiu   $v1, $v1, 0x1
    addiu   $v0, $v0, 0x1
    addiu   $a0, $a0, 0x1
    bne     $v1, $a1, branch_0x802c76fc
    sb      $t7, -0x5($a0)
    sb      $zero, -0x4($a0)
branch_0x802c7718:
    lui     $t8, 0x801c
    lw      $t8, 0x23b4($t8)
    addiu   $a1, $zero, 0x3
    or      $v1, $zero, $zero
    beqz    $t8, branch_0x802c7788
    lui     $t9, 0x800e
    lui     $t4, 0x800d
    lw      $t4, 0x7ef0($t4)
    lw      $t9, -0x58d0($t9)
    lui     $t3, 0x801d
    sll     $t5, $t4, 2
    sll     $t2, $t9, 3
    lui     $t6, 0x801c
    addu    $t5, $t5, $t4
    subu    $t2, $t2, $t9
    sll     $t2, $t2, 1
    sll     $t5, $t5, 2
    addiu   $t6, $t6, 0x2020
    addiu   $t3, $t3, 0xaff8
    addu    $v0, $t2, $t3
    addu    $a0, $t5, $t6
branch_0x802c776c:
    lb      $t7, 0x0($v0)
    addiu   $v1, $v1, 0x1
    addiu   $v0, $v0, 0x1
    addiu   $a0, $a0, 0x1
    bne     $v1, $a1, branch_0x802c776c
    sb      $t7, 0xf($a0)
    sb      $zero, 0x10($a0)
branch_0x802c7788:
    jal     Function_0x80077efc
    nop
    jal     Function_0x8009486c
    nop
    lui     $v0, 0x801d
    lw      $v0, -0x4f68($v0)
    bnezl   $v0, branch_0x802c77c4
    addiu   $at, $zero, 0x1
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xafe0
    lb      $t8, 0x0($v0)
    ori     $t9, $t8, 0x1
    b       branch_0x802c783c
    sb      $t9, 0x0($v0)

.globl Function_0x802c77c0
Function_0x802c77c0: # 0x802c77c0
    addiu   $at, $zero, 0x1
branch_0x802c77c4:
    bnel    $v0, $at, branch_0x802c77e8
    addiu   $at, $zero, 0x2
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xafe0
    lb      $t2, 0x0($v0)
    ori     $t3, $t2, 0x2
    b       branch_0x802c783c
    sb      $t3, 0x0($v0)

.globl Function_0x802c77e4
Function_0x802c77e4: # 0x802c77e4
    addiu   $at, $zero, 0x2
branch_0x802c77e8:
    bne     $v0, $at, branch_0x802c783c
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xafe0
    lb      $t4, 0x0($v0)
    lui     $t6, 0x800d
    lui     $t8, 0x801c
    ori     $t5, $t4, 0x4
    sb      $t5, 0x0($v0)
    lw      $t6, 0x465c($t6)
    sll     $t7, $t6, 3
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 4
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 3
    addu    $t8, $t8, $t7
    lw      $t8, 0x29d0($t8)
    bnez    $t8, branch_0x802c783c
    nop
    lb      $t9, 0x0($v0)
    ori     $t2, $t9, 0x8
    sb      $t2, 0x0($v0)
branch_0x802c783c:
    lui     $t3, 0x802d
    lw      $t3, -0x6ae0($t3)
    sltiu   $at, $t3, 0x8
    beqz    $at, branch_0x802c7ab8
    sll     $t3, $t3, 2
    lui     $at, %hi(Unknown_802C9638)
    addu    $at, $at, $t3
    lw      $t3, %lo(Unknown_802C9638)($at)
    jr      $t3
    nop

.globl Function_0x802c7864
Function_0x802c7864: # 0x802c7864
    b       branch_0x802c7ab8
    sw      $zero, 0x1a0($sp)

.globl Function_0x802c786c
Function_0x802c786c: # 0x802c786c
    lui     $t4, 0x802d
    lw      $t4, -0x6adc($t4)
    lui     $at, 0x802d
    sw      $zero, 0x1a0($sp)
    addiu   $t5, $t4, 0xffd8
    sw      $t5, -0x6adc($at)
    slti    $at, $t5, 0x14
    beqz    $at, branch_0x802c7ab8
    addiu   $t6, $zero, 0x14
    lui     $at, 0x802d
    b       branch_0x802c7ab8
    sw      $t6, -0x6adc($at)

.globl Function_0x802c789c
Function_0x802c789c: # 0x802c789c
    b       branch_0x802c7ab8
    sw      $zero, 0x1a0($sp)

.globl Function_0x802c78a4
Function_0x802c78a4: # 0x802c78a4
    lui     $t7, 0x802d
    lw      $t7, -0x6adc($t7)
    lui     $at, 0x802d
    sw      $zero, 0x1a0($sp)
    addiu   $t8, $t7, 0xffd8
    sw      $t8, -0x6adc($at)
    slti    $at, $t8, 0xfef7
    beqz    $at, branch_0x802c7ab8
    addiu   $t9, $zero, 0xfef7
    lui     $at, 0x802d
    b       branch_0x802c7ab8
    sw      $t9, -0x6adc($at)

.globl Function_0x802c78d4
Function_0x802c78d4: # 0x802c78d4
    lui     $v1, %hi(Unknown_0x802c96d0)
    addiu   $v1, $v1, %lo(Unknown_0x802c96d0)
    lw      $t3, 0x0($v1)
    addiu   $t2, $zero, 0x1
    sw      $t2, 0x1a0($sp)
    addiu   $t4, $t3, 0x1
    slti    $at, $t4, 0xb
    sw      $t4, 0x0($v1)
    bnez    $at, branch_0x802c7904
    or      $v0, $t4, $zero
    addiu   $v0, $zero, 0xa
    sw      $v0, 0x0($v1)
branch_0x802c7904:
    addiu   $a0, $zero, 0xa
    sll     $t5, $v0, 2
    addu    $t5, $t5, $v0
    sll     $t5, $t5, 2
    addu    $t5, $t5, $v0
    sll     $t5, $t5, 2
    addu    $t5, $t5, $v0
    sll     $t5, $t5, 1
    div     $zero, $t5, $a0
    mflo    $t6
    sll     $t7, $v0, 8
    subu    $t7, $t7, $v0
    div     $zero, $t7, $a0
    bnez    $a0, branch_0x802c7944
    nop
    break   0x7
branch_0x802c7944:
    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x802c795c
    lui     $at, 0x8000
    bne     $t5, $at, branch_0x802c795c
    nop
    break   0x6
branch_0x802c795c:
    lui     $at, 0x802d
    sw      $t6, -0x6ad4($at)
    bnez    $a0, branch_0x802c7970
    nop
    break   0x7
branch_0x802c7970:
    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x802c7988
    lui     $at, 0x8000
    bne     $t7, $at, branch_0x802c7988
    nop
    break   0x6
branch_0x802c7988:
    lui     $at, 0x802d
    mflo    $t8
    sw      $t8, -0x6ad8($at)
    b       branch_0x802c7ab8
    nop

.globl Function_0x802c799c
Function_0x802c799c: # 0x802c799c
    lui     $v1, %hi(Unknown_0x802c96d0)
    addiu   $v1, $v1, %lo(Unknown_0x802c96d0)
    lw      $t2, 0x0($v1)
    addiu   $t9, $zero, 0x1
    sw      $t9, 0x1a0($sp)
    addiu   $t3, $t2, 0x1
    slti    $at, $t3, 0x10
    bnez    $at, branch_0x802c79e8
    sw      $t3, 0x0($v1)
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x9530
    lw      $v0, 0x0($a2)
    sw      $zero, 0x0($v1)
    addiu   $a0, $zero, 0x31
    blez    $v0, branch_0x802c79e8
    addiu   $t5, $v0, 0xffff
    sw      $t5, 0x0($a2)
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c79e8:
    lui     $v0, 0x802d
    lw      $v0, -0x6ad0($v0)
    lui     $v1, 0x802d
    bgtz    $v0, branch_0x802c7a20
    addiu   $t6, $v0, 0xffff
    lw      $v1, -0x6acc($v1)
    lui     $at, 0x802d
    addiu   $v1, $v1, 0xffc4
    sw      $v1, -0x6acc($at)
    slti    $at, $v1, 0x14
    beqz    $at, branch_0x802c7a20
    addiu   $v1, $zero, 0x14
    lui     $at, 0x802d
    sw      $v1, -0x6acc($at)
branch_0x802c7a20:
    bgtz    $t6, branch_0x802c7a50
    addiu   $t7, $v0, 0xfffe
    lui     $v1, 0x802d
    lw      $v1, -0x6ac8($v1)
    lui     $at, 0x802d
    addiu   $v1, $v1, 0xffc4
    sw      $v1, -0x6ac8($at)
    slti    $at, $v1, 0x14
    beqz    $at, branch_0x802c7a50
    addiu   $v1, $zero, 0x14
    lui     $at, 0x802d
    sw      $v1, -0x6ac8($at)
branch_0x802c7a50:
    bgtz    $t7, branch_0x802c7a80
    addiu   $t8, $v0, 0xfffd
    lui     $v1, 0x802d
    lw      $v1, -0x6ac4($v1)
    lui     $at, 0x802d
    addiu   $v1, $v1, 0xffc4
    sw      $v1, -0x6ac4($at)
    slti    $at, $v1, 0x14
    beqz    $at, branch_0x802c7a80
    addiu   $v1, $zero, 0x14
    lui     $at, 0x802d
    sw      $v1, -0x6ac4($at)
branch_0x802c7a80:
    bgtz    $t8, branch_0x802c7ab8
    lui     $v0, 0x802d
    lw      $v0, -0x6ac0($v0)
    lui     $at, 0x802d
    addiu   $v0, $v0, 0xffc4
    sw      $v0, -0x6ac0($at)
    slti    $at, $v0, 0x14
    beqz    $at, branch_0x802c7ab8
    addiu   $v0, $zero, 0x14
    lui     $at, 0x802d
    b       branch_0x802c7ab8
    sw      $v0, -0x6ac0($at)

.globl Function_0x802c7ab0
Function_0x802c7ab0: # 0x802c7ab0
    addiu   $t9, $zero, 0x1
    sw      $t9, 0x1a0($sp)
branch_0x802c7ab8:
    lui     $t2, 0x802d
    lw      $t2, -0x6adc($t2)
    addiu   $t3, $zero, 0x28
    lui     $at, 0x802d
    subu    $t4, $t3, $t2
    sw      $t4, -0x692c($at)
    lui     $at, 0x4180
    mtc1    $at, $a0
    lui     $s0, 0x801d
    mtc1    $zero, $zero
    addiu   $s0, $s0, 0xe358
    lui     $at, 0x4580
    mtc1    $at, $a2
    lw      $a0, 0x0($s0)
    lui     $a1, 0x802d
    addiu   $a1, $a1, 0x96d8
    lui     $a2, 0x4204
    lui     $a3, 0x3f80
    swc1    $f4, 0x10($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    addiu   $a0, $a0, 0xa40
    jal     Function_0x80048180
    swc1    $f6, 0x14($sp)
    mtc1    $zero, $zero
    lui     $at, 0x3f80
    mtc1    $at, $v0
    lui     $at, 0x802d
    lwc1    $f8, -0x69a8($at)
    mfc1    $a1, $zero
    mfc1    $a2, $zero
    mfc1    $a3, $v0
    addiu   $a0, $sp, 0x90
    swc1    $f0, 0x10($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    swc1    $f0, 0x20($sp)
    swc1    $f0, 0x24($sp)
    swc1    $f2, 0x14($sp)
    jal     Function_0x80048a28
    swc1    $f8, 0x28($sp)
    lui     $v0, 0x8015
    addiu   $v0, $v0, 0x40b0
    lui     $at, 0x43fa
    mtc1    $at, $t6
    lwc1    $f10, 0x1000($v0)
    lwc1    $f16, 0x0($v0)
    mtc1    $zero, $zero
    mul.s   $f2, $f10, $f14
    lui     $at, 0x3f80
    mtc1    $at, $s2
    mul.s   $f12, $f16, $f14
    addiu   $a0, $sp, 0x50
    addiu   $a1, $sp, 0x114
    addiu   $a3, $zero, 0x0
    mfc1    $a2, $v0
    swc1    $f0, 0x14($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f12, 0x10($sp)
    swc1    $f0, 0x1c($sp)
    swc1    $f0, 0x20($sp)
    swc1    $f0, 0x28($sp)
    jal     Function_0x80048468
    swc1    $f18, 0x24($sp)
    addiu   $a0, $sp, 0x90
    jal     Function_0x80047e18
    addiu   $a1, $sp, 0x154
    addiu   $a0, $sp, 0x114
    addiu   $a1, $sp, 0x154
    jal     Function_0x80049e58
    addiu   $a2, $sp, 0xd4
    or      $v1, $zero, $zero
    or      $t0, $zero, $zero
    or      $a2, $zero, $zero
    addiu   $t1, $zero, 0x58
branch_0x802c7be4:
    lw      $t5, 0x1a0($sp)
    sll     $t6, $v1, 2
    lui     $v0, 0x802d
    bnez    $t5, branch_0x802c7c18
    addiu   $a0, $sp, 0xd4
    andi    $a3, $v1, 0x1
    beqz    $a3, branch_0x802c7c10
    lui     $v0, 0x802d
    lui     $v0, 0x802d
    b       branch_0x802c7c24
    lw      $v0, -0x692c($v0)
branch_0x802c7c10:
    b       branch_0x802c7c24
    lw      $v0, -0x6adc($v0)
branch_0x802c7c18:
    addu    $v0, $v0, $t6
    lw      $v0, -0x6acc($v0)
    andi    $a3, $v1, 0x1
branch_0x802c7c24:
    lw      $t7, 0x0($s0)
    sw      $v0, 0x19c($sp)
    sw      $v1, 0x1a4($sp)
    addu    $a1, $t7, $t0
    addiu   $a1, $a1, 0xa80
    sw      $a2, 0x44($sp)
    sw      $a3, 0x4c($sp)
    sw      $t0, 0x48($sp)
    jal     Function_0x80047e80
    sw      $t1, 0x40($sp)
    lui     $t3, 0x802d
    lw      $a2, 0x44($sp)
    lw      $t8, 0x0($s0)
    addiu   $t3, $t3, 0x9560
    lw      $at, 0x0($t3)
    lw      $v1, 0x1a4($sp)
    lw      $a3, 0x4c($sp)
    lw      $t0, 0x48($sp)
    lw      $v0, 0x19c($sp)
    lw      $t1, 0x40($sp)
    addu    $t9, $t8, $a2
    sw      $at, 0x1280($t9)
    lw      $t5, 0x4($t3)
    addiu   $v1, $v1, 0x1
    addiu   $t0, $t0, 0x40
    sw      $t5, 0x1284($t9)
    lw      $at, 0x8($t3)
    sw      $at, 0x1288($t9)
    lw      $t5, 0xc($t3)
    addiu   $at, $zero, 0x4
    beqz    $a3, branch_0x802c7cbc
    sw      $t5, 0x128c($t9)
    lw      $t8, 0x0($s0)
    addiu   $t6, $v0, 0x42
    sll     $t7, $t6, 2
    addu    $t4, $t8, $a2
    b       branch_0x802c7cd0
    sh      $t7, 0x1288($t4)
branch_0x802c7cbc:
    lw      $t3, 0x0($s0)
    addiu   $t2, $v0, 0x42
    sll     $t9, $t2, 2
    addu    $t5, $t3, $a2
    sh      $t9, 0x1288($t5)
branch_0x802c7cd0:
    lw      $t8, 0x0($s0)
    sll     $t6, $t1, 2
    addiu   $t1, $t1, 0x20
    addu    $t7, $t8, $a2
    addiu   $a2, $a2, 0x10
    bne     $v1, $at, branch_0x802c7be4
    sh      $t6, 0x128a($t7)
    lw      $ra, 0x3c($sp)
    lw      $s0, 0x38($sp)
    addiu   $sp, $sp, 0x1a8
    jr      $ra
    nop

.globl Function_0x802c7d00
Function_0x802c7d00: # 0x802c7d00
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c7d20
    nop
    sw      $zero, 0x0($v0)
branch_0x802c7d20:
    jal     Function_0x8009302c
    nop
    jal     Function_0x8009389c
    or      $a0, $v0, $zero
    lui     $t8, 0xff10
    lui     $t7, 0xe700
    ori     $t8, $t8, 0x13f
    sw      $t7, 0x0($v0)
    sw      $zero, 0x4($v0)
    sw      $t8, 0x8($v0)
    lui     $t9, 0x8015
    lw      $t9, 0x16a8($t9)
    lui     $t1, 0x8015
    lui     $at, 0x8000
    sll     $t0, $t9, 2
    addu    $t1, $t1, $t0
    lw      $t1, 0x4020($t1)
    lui     $t3, 0xed02
    lui     $t4, 0x4d
    ori     $t4, $t4, 0xc36c
    ori     $t3, $t3, 0x50
    addu    $t2, $t1, $at
    sw      $t2, 0xc($v0)
    sw      $t3, 0x10($v0)
    sw      $t4, 0x14($v0)
    jal     Function_0x802c7e48
    addiu   $a0, $v0, 0x18
    lui     $t5, 0x800e
    lw      $t5, -0x5758($t5)
    addiu   $at, $zero, 0x1
    or      $a0, $v0, $zero
    bne     $t5, $at, branch_0x802c7db8
    lui     $t6, 0x600
    lui     $t7, 0x107
    addiu   $t7, $t7, 0xf168
    sw      $t7, 0x4($v0)
    addiu   $a0, $v0, 0x8
    sw      $t6, 0x0($v0)
branch_0x802c7db8:
    jal     Function_0x802c8e70
    sw      $a0, 0x18($sp)
    lui     $t8, 0x8023
    lh      $t8, -0x782a($t8)
    addiu   $at, $zero, 0x1
    bnel    $t8, $at, branch_0x802c7e38
    lw      $ra, 0x14($sp)
    jal     Function_0x8007c434
    nop
    lui     $t9, 0x801c
    lw      $t9, 0x23b0($t9)
    lui     $t0, 0x801c
    lui     $t1, 0x800e
    bnez    $t9, branch_0x802c7e00
    nop
    lw      $t0, 0x23b4($t0)
    beqz    $t0, branch_0x802c7e2c
    nop
branch_0x802c7e00:
    lh      $t1, -0x5718($t1)
    lui     $a0, 0x800d
    beqz    $t1, branch_0x802c7e24
    nop
    lui     $a0, 0x800d
    jal     Function_0x8007c1a4
    lw      $a0, 0x7ef0($a0)
    b       branch_0x802c7e2c
    nop
branch_0x802c7e24:
    jal     Function_0x8007be44
    lw      $a0, 0x7ef0($a0)
branch_0x802c7e2c:
    jal     Function_0x801ec928_ChangeStateTo66
    nop
    lw      $ra, 0x14($sp)
branch_0x802c7e38:
    lw      $v0, 0x18($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c7e48
Function_0x802c7e48: # 0x802c7e48
    addiu   $sp, $sp, 0xfed8
    lui     $t6, 0x802d
    lw      $t6, -0x6ae0($t6)
    sw      $s6, 0x68($sp)
    or      $s6, $a0, $zero
    sltiu   $at, $t6, 0x8
    sw      $ra, 0x74($sp)
    sw      $fp, 0x70($sp)
    sw      $s7, 0x6c($sp)
    sw      $s5, 0x64($sp)
    sw      $s4, 0x60($sp)
    sw      $s3, 0x5c($sp)
    sw      $s2, 0x58($sp)
    sw      $s1, 0x54($sp)
    beqz    $at, branch_0x802c7ed0
    sw      $s0, 0x50($sp)
    sll     $t6, $t6, 2
    lui     $at, 0x802d
    addu    $at, $at, $t6
    lw      $t6, -0x69a4($at)
    jr      $t6
    nop

.globl Function_0x802c7ea0
Function_0x802c7ea0: # 0x802c7ea0
    addiu   $v1, $zero, 0x24
    addiu   $t0, $zero, 0xbf
    sw      $zero, 0x11c($sp)
    sw      $t0, 0x110($sp)
    b       branch_0x802c7ed0
    sw      $v1, 0x114($sp)

.globl Function_0x802c7eb8
Function_0x802c7eb8: # 0x802c7eb8
    addiu   $t7, $zero, 0x1
    addiu   $v1, $zero, 0xd
    addiu   $t0, $zero, 0xf4
    sw      $t7, 0x11c($sp)
    sw      $t0, 0x110($sp)
    sw      $v1, 0x114($sp)
branch_0x802c7ed0:
    lw      $t8, 0x11c($sp)
    lw      $v1, 0x114($sp)
    lw      $t0, 0x110($sp)
    bnez    $t8, branch_0x802c7eec
    or      $v0, $s6, $zero
    b       branch_0x802c7ef0
    or      $s3, $zero, $zero
branch_0x802c7eec:
    addiu   $s3, $zero, 0x2
branch_0x802c7ef0:
    lui     $t1, 0x107
    addiu   $t1, $t1, 0xf628
    lui     $t9, 0x600
    sw      $t9, 0x0($v0)
    sw      $t1, 0x4($v0)
    lw      $t2, 0x11c($sp)
    addiu   $s6, $s6, 0x8
    bnez    $t2, branch_0x802c8008
    lui     $t3, 0x802d
    lw      $t3, -0x6adc($t3)
    addiu   $t4, $zero, 0x18
    sw      $t4, 0x14($sp)
    addu    $a2, $t3, $v1
    addiu   $a2, $a2, 0x8
    or      $a0, $s6, $zero
    or      $a1, $s3, $zero
    addiu   $a3, $zero, 0x19
    jal     Function_0x800940d8
    sw      $t0, 0x10($sp)
    lui     $a2, 0x802d
    lw      $a2, -0x692c($a2)
    addiu   $t5, $zero, 0x109
    addiu   $t6, $zero, 0x10
    sw      $t6, 0x14($sp)
    sw      $t5, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $s3, $zero
    addiu   $a3, $zero, 0x34
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x8
    lui     $a2, 0x802d
    lw      $a2, -0x6adc($a2)
    addiu   $t7, $zero, 0x109
    addiu   $t8, $zero, 0x10
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $s3, $zero
    addiu   $a3, $zero, 0xc7
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x8
    or      $s6, $v0, $zero
    sw      $zero, 0x124($sp)
    addiu   $s0, $zero, 0x47
    addiu   $s1, $zero, 0x4
branch_0x802c7fa4:
    lw      $t9, 0x124($sp)
    or      $a0, $s6, $zero
    or      $a1, $s3, $zero
    andi    $t1, $t9, 0x1
    beqz    $t1, branch_0x802c7fc8
    or      $a3, $s0, $zero
    lui     $s7, 0x802d
    b       branch_0x802c7fd0
    lw      $s7, -0x692c($s7)
branch_0x802c7fc8:
    lui     $s7, 0x802d
    lw      $s7, -0x6adc($s7)
branch_0x802c7fd0:
    addiu   $t2, $zero, 0x109
    addiu   $t3, $zero, 0x1c
    sw      $t3, 0x14($sp)
    sw      $t2, 0x10($sp)
    jal     Function_0x800940d8
    addiu   $a2, $s7, 0x8
    lw      $v1, 0x124($sp)
    addiu   $s0, $s0, 0x20
    or      $s6, $v0, $zero
    addiu   $v1, $v1, 0x1
    bne     $v1, $s1, branch_0x802c7fa4
    sw      $v1, 0x124($sp)
    b       branch_0x802c80e8
    lw      $t6, 0x11c($sp)
branch_0x802c8008:
    or      $v0, $s6, $zero
    lui     $t4, 0xfa00
    sw      $t4, 0x0($v0)
    lui     $t5, 0x802d
    lw      $t5, -0x6ad4($t5)
    addiu   $at, $zero, 0xff00
    addiu   $t8, $zero, 0x18
    andi    $t6, $t5, 0xff
    or      $t7, $t6, $at
    sw      $t7, 0x4($v0)
    addiu   $a0, $s6, 0x8
    sw      $t8, 0x14($sp)
    sw      $t0, 0x10($sp)
    or      $a1, $s3, $zero
    addiu   $a2, $v1, 0x1c
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x19
    addiu   $t9, $zero, 0x109
    addiu   $t1, $zero, 0x10
    sw      $t1, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $s3, $zero
    addiu   $a2, $zero, 0x1c
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x34
    addiu   $t2, $zero, 0x109
    addiu   $t3, $zero, 0x10
    sw      $t3, 0x14($sp)
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $s3, $zero
    addiu   $a2, $zero, 0x1c
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xc7
    lui     $s1, 0x802d
    lui     $s2, 0x802d
    or      $s6, $v0, $zero
    addiu   $s2, $s2, 0x9544
    addiu   $s1, $s1, 0x9534
    addiu   $s0, $zero, 0x47
branch_0x802c80ac:
    lw      $a2, 0x0($s1)
    addiu   $t4, $zero, 0x109
    addiu   $t5, $zero, 0x1c
    sw      $t5, 0x14($sp)
    sw      $t4, 0x10($sp)
    or      $a0, $s6, $zero
    or      $a1, $s3, $zero
    or      $a3, $s0, $zero
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x8
    addiu   $s1, $s1, 0x4
    addiu   $s0, $s0, 0x20
    bne     $s1, $s2, branch_0x802c80ac
    or      $s6, $v0, $zero
    lw      $t6, 0x11c($sp)
branch_0x802c80e8:
    sw      $zero, 0xf4($sp)
    or      $a0, $s6, $zero
    bnez    $t6, branch_0x802c81b0
    addiu   $a1, $zero, 0xa
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    sw      $t6, 0x30($sp)
    sw      $t5, 0x2c($sp)
    sw      $t4, 0x28($sp)
    sw      $t3, 0x24($sp)
    sw      $t2, 0x20($sp)
    sw      $t1, 0x1c($sp)
    sw      $t9, 0x18($sp)
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    sw      $t7, 0x34($sp)
    or      $a0, $s6, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff
    lui     $a3, 0x802d
    lw      $a3, -0x6adc($a3)
    addiu   $t8, $zero, 0x1c
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x14
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40
    addiu   $a3, $a3, 0x35
    lui     $a3, 0x802d
    lw      $a3, -0x6adc($a3)
    addiu   $t9, $zero, 0xca
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x4f
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40
    addiu   $a3, $a3, 0x18
    b       branch_0x802c8250
    or      $s6, $v0, $zero
branch_0x802c81b0:
    lui     $a2, 0x802d
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x30($sp)
    sw      $t8, 0x2c($sp)
    sw      $t7, 0x28($sp)
    sw      $t6, 0x24($sp)
    sw      $t5, 0x20($sp)
    sw      $t4, 0x1c($sp)
    sw      $t3, 0x18($sp)
    sw      $t2, 0x14($sp)
    sw      $t1, 0x10($sp)
    sw      $t1, 0x34($sp)
    lbu     $a2, -0x6ad5($a2)
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff
    addiu   $t2, $zero, 0x1c
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x15
    addiu   $a3, $zero, 0x3d
    jal     Function_0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $t3, $zero, 0xca
    sw      $t3, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x6
    addiu   $a3, $zero, 0x2c
    jal     Function_0x801e3c40
    sw      $zero, 0x14($sp)
    or      $s6, $v0, $zero
branch_0x802c8250:
    lw      $t4, 0x11c($sp)
    or      $a0, $s6, $zero
    addiu   $a1, $zero, 0x1
    bnez    $t4, branch_0x802c8270
    addiu   $a2, $zero, 0x1f
    lui     $s0, 0x802d
    b       branch_0x802c8274
    lw      $s0, -0x692c($s0)
branch_0x802c8270:
    addiu   $s0, $zero, 0x14
branch_0x802c8274:
    addiu   $t5, $zero, 0x37
    sw      $t5, 0x10($sp)
    addiu   $a3, $s0, 0xd
    jal     Function_0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $t6, $zero, 0x37
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x20
    addiu   $a3, $s0, 0x6d
    jal     Function_0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $t7, $zero, 0x37
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x3a
    addiu   $a3, $s0, 0xd7
    jal     Function_0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    or      $a2, $zero, $zero
    jal     Function_0x801e7bd4
    or      $a3, $zero, $zero
    or      $s6, $v0, $zero
    or      $v1, $zero, $zero
    addiu   $s0, $zero, 0x4a
    addiu   $s1, $zero, 0x5f
branch_0x802c82f4:
    lw      $t9, 0x11c($sp)
    sll     $t2, $v1, 2
    or      $a0, $s6, $zero
    bnez    $t9, branch_0x802c8328
    or      $a2, $s0, $zero
    andi    $t1, $v1, 0x1
    beqz    $t1, branch_0x802c8320
    lui     $s7, 0x802d
    lui     $s7, 0x802d
    b       branch_0x802c8334
    lw      $s7, -0x692c($s7)
branch_0x802c8320:
    b       branch_0x802c8334
    lw      $s7, -0x6adc($s7)
branch_0x802c8328:
    lui     $s7, 0x802d
    addu    $s7, $s7, $t2
    lw      $s7, -0x6acc($s7)
branch_0x802c8334:
    addiu   $a1, $s7, 0x2a
    addiu   $a3, $s7, 0x56
    sw      $s1, 0x10($sp)
    jal     Function_0x801e7d38
    sw      $v1, 0x124($sp)
    lw      $v1, 0x124($sp)
    addiu   $s0, $s0, 0x20
    addiu   $s1, $s1, 0x20
    addiu   $v1, $v1, 0x1
    slti    $at, $v1, 0x4
    sw      $v1, 0x124($sp)
    bnez    $at, branch_0x802c82f4
    or      $s6, $v0, $zero
    addiu   $s6, $v0, 0x8
    lui     $t3, 0xe700
    sw      $t3, 0x0($v0)
    sw      $zero, 0x4($v0)
    or      $a0, $s6, $zero
    lui     $t4, 0xed02
    lui     $t5, 0x4d
    ori     $t5, $t5, 0xc36c
    ori     $t4, $t4, 0x50
    sw      $t4, 0x0($a0)
    sw      $t5, 0x4($a0)
    addiu   $t6, $zero, 0x1
    addiu   $t7, $zero, 0x1
    addiu   $t8, $zero, 0x1
    addiu   $t9, $zero, 0x4b
    addiu   $s6, $s6, 0x8
    sw      $t8, 0xf0($sp)
    sw      $t7, 0xe8($sp)
    sw      $t6, 0xec($sp)
    sw      $t9, 0x84($sp)
    sw      $zero, 0x94($sp)
    sw      $zero, 0x124($sp)
    addiu   $fp, $zero, 0x58
    addiu   $s5, $sp, 0xbc
branch_0x802c83c8:
    lw      $t1, 0x11c($sp)
    lw      $t4, 0x94($sp)
    lui     $s7, 0x802d
    bnez    $t1, branch_0x802c8404
    lw      $t5, 0x11c($sp)
    lw      $t2, 0x124($sp)
    lui     $s7, 0x802d
    andi    $t3, $t2, 0x1
    beqz    $t3, branch_0x802c83fc
    nop
    lui     $s7, 0x802d
    b       branch_0x802c840c
    lw      $s7, -0x692c($s7)
branch_0x802c83fc:
    b       branch_0x802c840c
    lw      $s7, -0x6adc($s7)
branch_0x802c8404:
    addu    $s7, $s7, $t4
    lw      $s7, -0x6acc($s7)
branch_0x802c840c:
    bnez    $t5, branch_0x802c8580
    lw      $t3, 0x94($sp)
    lw      $t8, 0x124($sp)
    lw      $t6, 0x94($sp)
    lui     $t7, 0x801d
    addiu   $t7, $t7, 0xe478
    beqz    $t8, branch_0x802c848c
    addu    $s0, $t6, $t7
    lw      $t9, 0xe8($sp)
    lui     $t2, 0x801d
    lw      $t2, -0x4f6c($t2)
    addiu   $t1, $t9, 0x1
    lw      $t9, -0x4($s0)
    lw      $t5, 0x0($s0)
    lui     $t4, 0x801d
    addiu   $t4, $t4, 0xb0b0
    sll     $t3, $t2, 4
    addu    $v0, $t3, $t4
    sll     $t2, $t9, 2
    sll     $t6, $t5, 2
    addu    $t7, $v0, $t6
    addu    $t3, $v0, $t2
    lw      $t4, 0x0($t3)
    lw      $t8, 0x0($t7)
    sw      $t1, 0xe8($sp)
    lw      $t5, 0xec($sp)
    beql    $t8, $t4, branch_0x802c848c
    sw      $t5, 0xf0($sp)
    sw      $t1, 0xec($sp)
    b       branch_0x802c848c
    sw      $t1, 0xf0($sp)

.globl Function_0x802c8488
Function_0x802c8488: # 0x802c8488
    sw      $t5, 0xf0($sp)
branch_0x802c848c:
    lw      $t6, 0x0($s0)
    lui     $t9, 0x801c
    lui     $a1, 0x802d
    sll     $t7, $t6, 3
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 4
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 3
    addu    $t9, $t9, $t7
    lw      $t9, 0x2984($t9)
    addiu   $t2, $zero, 0x6
    addiu   $a1, $a1, 0x9588
    beqz    $t9, branch_0x802c84e8
    addiu   $a0, $sp, 0xc8
    lui     $a1, 0x802d
    lui     $a2, 0x802d
    sw      $t2, 0xf4($sp)
    addiu   $a2, $a2, 0x9584
    addiu   $a1, $a1, 0x9580
    jal     Function_0x800c9f70
    addiu   $a0, $sp, 0xc8
    b       branch_0x802c84f4
    lw      $v0, 0x0($s0)
branch_0x802c84e8:
    jal     Function_0x800c9f70
    lw      $a2, 0xe8($sp)
    lw      $v0, 0x0($s0)
branch_0x802c84f4:
    lui     $t3, 0x800e
    lui     $t5, 0x801d
    sll     $v1, $v0, 2
    addu    $t3, $t3, $v1
    lw      $t3, -0x58d0($t3)
    lw      $t5, -0x4f6c($t5)
    lui     $t9, 0x800d
    sll     $t8, $t3, 3
    lw      $t9, 0x465c($t9)
    lui     $t4, 0x801d
    subu    $t8, $t8, $t3
    sll     $t6, $t5, 4
    sll     $t8, $t8, 1
    addiu   $t4, $t4, 0xaff8
    addu    $t7, $t6, $v1
    lui     $a2, 0x801d
    addu    $t1, $t8, $t4
    addu    $a2, $a2, $t7
    sw      $t1, 0xd4($sp)
    beq     $t9, $v0, branch_0x802c8558
    lw      $a2, -0x4f50($a2)
    or      $s3, $zero, $zero
    or      $s2, $zero, $zero
    b       branch_0x802c867c
    or      $s4, $zero, $zero
branch_0x802c8558:
    lui     $t2, 0x801c
    lw      $t2, 0x23b0($t2)
    addiu   $at, $zero, 0x1
    addiu   $s3, $zero, 0x6
    beq     $t2, $at, branch_0x802c8578
    addiu   $s4, $zero, 0x6
    b       branch_0x802c867c
    addiu   $s2, $zero, 0x6
branch_0x802c8578:
    b       branch_0x802c867c
    addiu   $s2, $zero, 0x4
branch_0x802c8580:
    lw      $t4, 0x124($sp)
    lui     $t8, 0x800e
    addiu   $t8, $t8, 0xa75c
    beqz    $t4, branch_0x802c85e4
    addu    $s3, $t3, $t8
    lw      $t6, 0x0($s3)
    lw      $t3, -0x4($s3)
    lw      $t1, 0xe8($sp)
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xb0a0
    sll     $t7, $t6, 2
    sll     $t8, $t3, 2
    addu    $t4, $v0, $t8
    addu    $t9, $v0, $t7
    addiu   $t5, $t1, 0x1
    lw      $t1, 0x0($t4)
    lw      $t2, 0x0($t9)
    sw      $t5, 0xe8($sp)
    lw      $t6, 0xec($sp)
    beql    $t2, $t1, branch_0x802c85e4
    sw      $t6, 0xf0($sp)
    sw      $t5, 0xec($sp)
    b       branch_0x802c85e4
    sw      $t5, 0xf0($sp)

.globl Function_0x802c85e0
Function_0x802c85e0: # 0x802c85e0
    sw      $t6, 0xf0($sp)
branch_0x802c85e4:
    lui     $a1, 0x802d
    addiu   $a1, $a1, 0x958c
    addiu   $a0, $sp, 0xc8
    jal     Function_0x800c9f70
    lw      $a2, 0xf0($sp)
    lw      $a0, 0x0($s3)
    lui     $t7, 0x800e
    lui     $a1, 0x800d
    sll     $v1, $a0, 2
    addu    $t7, $t7, $v1
    lw      $t7, -0x58d0($t7)
    lw      $a1, 0x465c($a1)
    lui     $t3, 0x801d
    sll     $t9, $t7, 3
    subu    $t9, $t9, $t7
    sll     $t9, $t9, 1
    addiu   $t3, $t3, 0xaff8
    lui     $a2, 0x801d
    addu    $t8, $t9, $t3
    addu    $a2, $a2, $v1
    sw      $t8, 0xd4($sp)
    beq     $a1, $a0, branch_0x802c864c
    lw      $a2, -0x4f60($a2)
    or      $s3, $zero, $zero
    b       branch_0x802c866c
    or      $s2, $zero, $zero
branch_0x802c864c:
    lui     $t4, 0x801c
    lw      $t4, 0x23b0($t4)
    addiu   $at, $zero, 0x1
    addiu   $s3, $zero, 0x6
    beq     $t4, $at, branch_0x802c866c
    addiu   $s2, $zero, 0x7
    b       branch_0x802c866c
    addiu   $s2, $zero, 0x6
branch_0x802c866c:
    beq     $a1, $a0, branch_0x802c867c
    addiu   $s4, $zero, 0x6
    b       branch_0x802c867c
    or      $s4, $zero, $zero
branch_0x802c867c:
    lui     $a1, 0x802d
    addiu   $a1, $a1, 0x9590
    or      $a0, $s5, $zero
    jal     Function_0x800c9f70
    sw      $a2, 0x104($sp)
    addiu   $a0, $zero, 0xa
    lw      $a2, 0x104($sp)
    lw      $t6, 0xf4($sp)
    or      $a1, $zero, $zero
    div     $zero, $a2, $a0
    mflo    $t2
    addu    $a3, $s7, $t6
    bnez    $a0, branch_0x802c86b8
    nop
    break   0x7
branch_0x802c86b8:
    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x802c86d0
    lui     $at, 0x8000
    bne     $a2, $at, branch_0x802c86d0
    nop
    break   0x6
branch_0x802c86d0:
    div     $zero, $t2, $a0
    mfhi    $v1
    addiu   $a2, $sp, 0xc8
    bnez    $a0, branch_0x802c86e8
    nop
    break   0x7
branch_0x802c86e8:
    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x802c8700
    lui     $at, 0x8000
    bne     $t2, $at, branch_0x802c8700
    nop
    break   0x6
branch_0x802c8700:
    or      $a0, $s6, $zero
    beqz    $v1, branch_0x802c8724
    addiu   $a3, $a3, 0xd
    lui     $t1, 0x8022
    addu    $t1, $t1, $v1
    lbu     $t1, 0x6b30($t1)
    addiu   $t5, $zero, 0xe4
    b       branch_0x802c8728
    subu    $s1, $t5, $t1
branch_0x802c8724:
    addiu   $s1, $zero, 0xe4
branch_0x802c8728:
    lw      $t7, 0x84($sp)
    addiu   $t9, $zero, 0xff
    addiu   $t3, $zero, 0xff
    sw      $t7, 0x10($sp)
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t6, $zero, 0xff
    sw      $t6, 0x34($sp)
    sw      $t1, 0x30($sp)
    sw      $t5, 0x2c($sp)
    sw      $t2, 0x28($sp)
    sw      $t4, 0x24($sp)
    sw      $t8, 0x20($sp)
    sw      $t8, 0x44($sp)
    sw      $t7, 0x38($sp)
    sw      $t3, 0x1c($sp)
    sw      $t3, 0x40($sp)
    sw      $t9, 0x18($sp)
    sw      $t9, 0x3c($sp)
    jal     Function_0x801e9084
    sw      $s3, 0x14($sp)
    lw      $t4, 0x84($sp)
    addiu   $s0, $s7, 0x5c
    addiu   $t2, $zero, 0xff
    sw      $t4, 0x10($sp)
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x34($sp)
    sw      $t3, 0x30($sp)
    sw      $t9, 0x2c($sp)
    sw      $t7, 0x28($sp)
    sw      $t6, 0x24($sp)
    sw      $t1, 0x20($sp)
    sw      $t1, 0x44($sp)
    sw      $t5, 0x1c($sp)
    sw      $t5, 0x40($sp)
    sw      $t4, 0x38($sp)
    sw      $t2, 0x18($sp)
    sw      $t2, 0x3c($sp)
    or      $a3, $s0, $zero
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    lw      $a2, 0xd4($sp)
    jal     Function_0x801e9084
    sw      $zero, 0x14($sp)
    lw      $t6, 0x84($sp)
    addu    $a3, $s7, $s1
    addiu   $t7, $zero, 0xff
    sw      $t6, 0x10($sp)
    addiu   $t6, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    sw      $t1, 0x34($sp)
    sw      $t5, 0x30($sp)
    sw      $t2, 0x2c($sp)
    sw      $t4, 0x28($sp)
    sw      $t8, 0x24($sp)
    sw      $t3, 0x20($sp)
    sw      $t3, 0x44($sp)
    sw      $t9, 0x1c($sp)
    sw      $t9, 0x40($sp)
    sw      $t6, 0x38($sp)
    sw      $t7, 0x18($sp)
    sw      $t7, 0x3c($sp)
    addiu   $a3, $a3, 0x8
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    or      $a2, $s5, $zero
    jal     Function_0x801e9084
    sw      $s4, 0x14($sp)
    lw      $t8, 0x11c($sp)
    or      $s6, $v0, $zero
    or      $a0, $s6, $zero
    bnez    $t8, branch_0x802c89c4
    or      $a1, $s4, $zero
    lw      $t4, 0x94($sp)
    lui     $t2, 0x801d
    lui     $t1, 0x801c
    addu    $t2, $t2, $t4
    lw      $t2, -0x1b88($t2)
    addiu   $t1, $t1, 0x2698
    or      $a0, $s6, $zero
    sll     $t5, $t2, 3
    subu    $t5, $t5, $t2
    sll     $t5, $t5, 4
    subu    $t5, $t5, $t2
    sll     $t5, $t5, 3
    addu    $v0, $t5, $t1
    lw      $t6, 0x2ec($v0)
    addiu   $a1, $zero, 0x1
    or      $a3, $s0, $zero
    beqz    $t6, branch_0x802c895c
    addiu   $t9, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t6, $zero, 0xff
    sw      $t6, 0x30($sp)
    sw      $t1, 0x2c($sp)
    sw      $t5, 0x28($sp)
    sw      $t2, 0x24($sp)
    sw      $t4, 0x20($sp)
    sw      $t8, 0x1c($sp)
    sw      $t3, 0x18($sp)
    sw      $t9, 0x14($sp)
    sw      $t7, 0x10($sp)
    sw      $t7, 0x34($sp)
    or      $a0, $s6, $zero
    or      $a1, $s3, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1b
    or      $a3, $s0, $zero
    sw      $fp, 0x10($sp)
    jal     Function_0x801e3c40
    sw      $zero, 0x14($sp)
    b       branch_0x802c8b6c
    or      $s6, $v0, $zero
branch_0x802c895c:
    addiu   $t3, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x40($sp)
    sw      $t6, 0x3c($sp)
    sw      $t1, 0x38($sp)
    sw      $t5, 0x34($sp)
    sw      $t2, 0x30($sp)
    sw      $t4, 0x2c($sp)
    sw      $t8, 0x28($sp)
    sw      $t3, 0x24($sp)
    lw      $a2, 0x19c($v0)
    sw      $fp, 0x10($sp)
    sw      $s2, 0x14($sp)
    sw      $t9, 0x18($sp)
    sw      $zero, 0x1c($sp)
    sw      $zero, 0x20($sp)
    jal     Function_0x801e87e4
    sw      $t9, 0x44($sp)
    b       branch_0x802c8b6c
    or      $s6, $v0, $zero
branch_0x802c89c4:
    addiu   $t3, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x30($sp)
    sw      $t7, 0x2c($sp)
    sw      $t6, 0x28($sp)
    sw      $t1, 0x24($sp)
    sw      $t5, 0x20($sp)
    sw      $t2, 0x1c($sp)
    sw      $t4, 0x18($sp)
    sw      $t8, 0x14($sp)
    sw      $t3, 0x10($sp)
    sw      $t3, 0x34($sp)
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x18
    or      $a3, $s0, $zero
    sw      $fp, 0x10($sp)
    jal     Function_0x801e3c40
    sw      $zero, 0x14($sp)
    lui     $t8, 0x801d
    lw      $t8, -0x4f68($t8)
    or      $s6, $v0, $zero
    or      $v0, $zero, $zero
    bnez    $t8, branch_0x802c8a58
    lui     $v1, 0x801d
    b       branch_0x802c8a58
    addiu   $v0, $zero, 0x1
branch_0x802c8a58:
    lw      $v1, -0x4f6c($v1)
    or      $s0, $v0, $zero
    lw      $t4, 0x94($sp)
    slt     $at, $v1, $v0
    bnez    $at, branch_0x802c8b6c
    lui     $t2, 0x800e
    subu    $t6, $v0, $v0
    sll     $t7, $t6, 2
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 2
    lui     $t1, 0x801d
    addiu   $t1, $t1, 0xb0b0
    addu    $s2, $s7, $t7
    addiu   $t2, $t2, 0xa75c
    sll     $t5, $v0, 4
    addu    $s1, $t5, $t1
    addu    $s3, $t4, $t2
    addiu   $s2, $s2, 0x84
branch_0x802c8aa0:
    lw      $t9, 0x0($s3)
    or      $a0, $s5, $zero
    lui     $a1, 0x802d
    sll     $t3, $t9, 2
    addu    $t8, $s1, $t3
    beq     $s0, $v1, branch_0x802c8ad4
    lw      $a2, 0x0($t8)
    lui     $a1, 0x802d
    addiu   $a1, $a1, 0x9594
    jal     Function_0x800c9f70
    or      $a0, $s5, $zero
    b       branch_0x802c8ae0
    addiu   $t4, $zero, 0xff
branch_0x802c8ad4:
    jal     Function_0x800c9f70
    addiu   $a1, $a1, 0x9598
    addiu   $t4, $zero, 0xff
branch_0x802c8ae0:
    addiu   $t2, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x38($sp)
    sw      $t3, 0x34($sp)
    sw      $t9, 0x30($sp)
    sw      $t7, 0x2c($sp)
    sw      $t6, 0x28($sp)
    sw      $t1, 0x24($sp)
    sw      $t5, 0x20($sp)
    sw      $t5, 0x44($sp)
    sw      $t2, 0x1c($sp)
    sw      $t2, 0x40($sp)
    sw      $t4, 0x18($sp)
    sw      $t4, 0x3c($sp)
    or      $a0, $s6, $zero
    addiu   $a1, $zero, 0x1
    or      $a2, $s5, $zero
    or      $a3, $s2, $zero
    sw      $fp, 0x10($sp)
    jal     Function_0x801e9084
    sw      $s4, 0x14($sp)
    lui     $v1, 0x801d
    lw      $v1, -0x4f6c($v1)
    addiu   $s0, $s0, 0x1
    addiu   $s1, $s1, 0x10
    slt     $at, $v1, $s0
    addiu   $s2, $s2, 0xc
    beqz    $at, branch_0x802c8aa0
    or      $s6, $v0, $zero
branch_0x802c8b6c:
    lw      $t1, 0x124($sp)
    lw      $t7, 0x94($sp)
    lw      $t3, 0x84($sp)
    addiu   $t6, $t1, 0x1
    slti    $at, $t6, 0x4
    addiu   $t9, $t7, 0x4
    addiu   $t8, $t3, 0x20
    sw      $t8, 0x84($sp)
    sw      $t9, 0x94($sp)
    sw      $t6, 0x124($sp)
    bnez    $at, branch_0x802c83c8
    addiu   $fp, $fp, 0x20
    lw      $t4, 0x11c($sp)
    lui     $t9, 0x802d
    or      $a0, $s6, $zero
    bnez    $t4, branch_0x802c8c54
    lui     $a2, 0x802d
    addiu   $t2, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t4, $zero, 0xff
    sw      $t4, 0x30($sp)
    sw      $t6, 0x2c($sp)
    sw      $t8, 0x28($sp)
    sw      $t3, 0x24($sp)
    sw      $t9, 0x20($sp)
    sw      $t7, 0x1c($sp)
    sw      $t1, 0x18($sp)
    sw      $t5, 0x14($sp)
    sw      $t2, 0x10($sp)
    sw      $t2, 0x34($sp)
    or      $a0, $s6, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff
    lui     $t5, 0x801d
    lw      $t5, -0x1b9c($t5)
    lui     $a3, 0x802d
    lw      $a3, -0x6adc($a3)
    lui     $a2, 0x802d
    sll     $t1, $t5, 2
    addu    $a2, $a2, $t1
    addiu   $t7, $zero, 0xca
    sw      $t7, 0x10($sp)
    lw      $a2, -0x6abc($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40
    addiu   $a3, $a3, 0xa0
    b       branch_0x802c8d08
    lui     $t7, 0xb400
branch_0x802c8c54:
    lw      $t9, -0x6aa8($t9)
    addiu   $a3, $zero, 0xff
    addiu   $t3, $zero, 0xff
    bnez    $t9, branch_0x802c8c70
    addiu   $t8, $zero, 0xff
    b       branch_0x802c8c74
    addiu   $s3, $zero, 0xa
branch_0x802c8c70:
    addiu   $s3, $zero, 0x6
branch_0x802c8c74:
    addiu   $t6, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x30($sp)
    sw      $t7, 0x2c($sp)
    sw      $t1, 0x28($sp)
    sw      $t5, 0x24($sp)
    sw      $t2, 0x20($sp)
    sw      $t4, 0x1c($sp)
    sw      $t6, 0x18($sp)
    or      $a1, $s3, $zero
    lbu     $a2, -0x6ad5($a2)
    sw      $t3, 0x10($sp)
    sw      $t8, 0x14($sp)
    jal     Function_0x801e91f4
    sw      $t3, 0x34($sp)
    lui     $t8, 0x801d
    lui     $t4, 0x801d
    lw      $t4, -0x4f6c($t4)
    lw      $t8, -0x4f68($t8)
    lui     $a2, 0x800f
    sll     $t2, $t4, 1
    sll     $t6, $t8, 4
    addu    $t5, $t6, $t2
    addu    $a2, $a2, $t5
    addiu   $t1, $zero, 0xc9
    sw      $t1, 0x10($sp)
    lh      $a2, -0x56e4($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801ead94
    addiu   $a3, $zero, 0x106
    lui     $t7, 0xb400
branch_0x802c8d08:
    sw      $t7, 0x0($v0)
    lui     $t9, 0x802d
    lhu     $t9, -0x6928($t9)
    addiu   $s6, $v0, 0x8
    or      $a0, $s6, $zero
    lui     $t3, 0x103
    lui     $t8, 0x700
    sw      $t9, 0x4($v0)
    addiu   $t8, $t8, 0xa40
    ori     $t3, $t3, 0x40
    addiu   $s6, $s6, 0x8
    sw      $t3, 0x0($a0)
    sw      $t8, 0x4($a0)
    or      $a1, $s6, $zero
    lui     $t6, 0x107
    addiu   $t6, $t6, 0xf488
    lui     $t4, 0x600
    sw      $t4, 0x0($a1)
    sw      $t6, 0x4($a1)
    lui     $s1, 0x700
    lui     $s2, 0x700
    lui     $fp, 0x801d
    lui     $s5, 0x800e
    lui     $s4, 0x102
    lui     $s3, 0x380
    addiu   $s6, $s6, 0x8
    ori     $s3, $s3, 0x10
    ori     $s4, $s4, 0x40
    addiu   $s5, $s5, 0xa75c
    addiu   $fp, $fp, 0xe358
    addiu   $s2, $s2, 0xa80
    addiu   $s1, $s1, 0x1280
    sw      $zero, 0x94($sp)
    or      $s0, $zero, $zero
    addiu   $s7, $zero, 0x2
branch_0x802c8d94:
    or      $v0, $s6, $zero
    lw      $t0, 0x94($sp)
    addiu   $s6, $s6, 0x8
    sw      $s1, 0x4($v0)
    sw      $s3, 0x0($v0)
    or      $v1, $s6, $zero
    sw      $s4, 0x0($v1)
    sw      $s2, 0x4($v1)
    lw      $t2, 0x11c($sp)
    addiu   $s6, $s6, 0x8
    addiu   $at, $zero, 0x1
    bne     $t2, $at, branch_0x802c8dd4
    or      $a0, $s6, $zero
    addu    $t5, $s5, $t0
    b       branch_0x802c8de0
    lw      $a1, 0x0($t5)
branch_0x802c8dd4:
    lui     $a1, 0x801d
    addu    $a1, $a1, $t0
    lw      $a1, -0x1b88($a1)
branch_0x802c8de0:
    bne     $a1, $s7, branch_0x802c8df0
    or      $a2, $zero, $zero
    b       branch_0x802c8e00
    addiu   $a1, $zero, 0x3
branch_0x802c8df0:
    addiu   $at, $zero, 0x3
    bnel    $a1, $at, branch_0x802c8e04
    lw      $t1, 0x0($fp)
    addiu   $a1, $zero, 0x5
branch_0x802c8e00:
    lw      $t1, 0x0($fp)
branch_0x802c8e04:
    or      $a3, $zero, $zero
    sw      $t0, 0x94($sp)
    addu    $t7, $t1, $s0
    addiu   $t9, $t7, 0xc80
    jal     Function_0x801e4d48
    sw      $t9, 0x10($sp)
    lw      $t3, 0x94($sp)
    addiu   $s0, $s0, 0xc0
    addiu   $at, $zero, 0x300
    addiu   $t8, $t3, 0x4
    sw      $t8, 0x94($sp)
    addiu   $s1, $s1, 0x10
    addiu   $s2, $s2, 0x40
    bne     $s0, $at, branch_0x802c8d94
    or      $s6, $v0, $zero
    lw      $ra, 0x74($sp)
    lw      $s0, 0x50($sp)
    lw      $s1, 0x54($sp)
    lw      $s2, 0x58($sp)
    lw      $s3, 0x5c($sp)
    lw      $s4, 0x60($sp)
    lw      $s5, 0x64($sp)
    lw      $s6, 0x68($sp)
    lw      $s7, 0x6c($sp)
    lw      $fp, 0x70($sp)
    jr      $ra
    addiu   $sp, $sp, 0x128

.globl Function_0x802c8e70
Function_0x802c8e70: # 0x802c8e70
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x9520
    lw      $t6, 0x0($t0)
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x14($sp)
    sltiu   $at, $t6, 0x8
    beqz    $at, branch_0x802c9114
    sw      $zero, 0x1c($sp)
    sll     $t6, $t6, 2
    lui     $at, 0x802d
    addu    $at, $at, $t6
    lw      $t6, -0x6984($at)
    jr      $t6
    nop

.globl Function_0x802c8ea8
Function_0x802c8ea8: # 0x802c8ea8
    lui     $a3, %hi(Unknown_0x802c96d0)
    addiu   $a3, $a3, %lo(Unknown_0x802c96d0)
    lw      $t7, 0x0($a3)
    addiu   $t1, $zero, 0x1
    addiu   $t2, $zero, 0x1
    addiu   $t8, $t7, 0x1
    slti    $at, $t8, 0x3c
    bnez    $at, branch_0x802c9114
    sw      $t8, 0x0($a3)
    sw      $t1, 0x0($t0)
    sw      $zero, 0x0($a3)
    b       branch_0x802c9114
    sw      $t2, 0x1c($sp)

.globl Function_0x802c8edc
Function_0x802c8edc: # 0x802c8edc
    lui     $t3, 0x802d
    lw      $t3, -0x6adc($t3)
    addiu   $v1, $zero, 0x14
    lui     $a3, %hi(Unknown_0x802c96d0)
    bne     $v1, $t3, branch_0x802c9114
    addiu   $a3, $a3, %lo(Unknown_0x802c96d0)
    addiu   $t4, $zero, 0x2
    sw      $t4, 0x0($t0)
    b       branch_0x802c9114
    sw      $zero, 0x0($a3)

.globl Function_0x802c8f04
Function_0x802c8f04: # 0x802c8f04
    lui     $a3, %hi(Unknown_0x802c96d0)
    addiu   $a3, $a3, %lo(Unknown_0x802c96d0)
    lw      $v1, 0x0($a3)
    lui     $t6, %hi(Unknown_0x801ce3ba)
    slti    $at, $v1, 0x258
    beqz    $at, branch_0x802c8f28
    addiu   $t5, $v1, 0x1
    sw      $t5, 0x0($a3)
    or      $v1, $t5, $zero
branch_0x802c8f28:
    slti    $at, $v1, 0x15
    bnezl   $at, branch_0x802c9118
    lw      $t1, 0x1c($sp)
    lhu     $t6, %lo(Unknown_0x801ce3ba)($t6)
    addiu   $t8, $zero, 0x3
    addiu   $a0, $zero, 0x11
    andi    $t7, $t6, JOY_START|JOY_Z|JOY_A
    beqz    $t7, branch_0x802c8f64
    slti    $at, $v1, 0x258
    sw      $t8, 0x0($t0)
    sw      $zero, 0x0($a3)
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c9118
    lw      $t1, 0x1c($sp)
branch_0x802c8f64:
    bnez    $at, branch_0x802c9114
    addiu   $t9, $zero, 0x3
    sw      $t9, 0x0($t0)
    b       branch_0x802c9114
    sw      $zero, 0x0($a3)

.globl Function_0x802c8f78
Function_0x802c8f78: # 0x802c8f78
    lui     $t1, 0x802d
    lw      $t1, -0x6adc($t1)
    addiu   $at, $zero, 0xfef7
    lui     $a3, %hi(Unknown_0x802c96d0)
    bne     $t1, $at, branch_0x802c9114
    addiu   $a3, $a3, %lo(Unknown_0x802c96d0)
    addiu   $t2, $zero, 0x4
    sw      $t2, 0x0($t0)
    lui     $at, 0x802d
    sw      $zero, -0x6ad4($at)
    b       branch_0x802c9114
    sw      $zero, 0x0($a3)

.globl Function_0x802c8fa8
Function_0x802c8fa8: # 0x802c8fa8
    lui     $a3, %hi(Unknown_0x802c96d0)
    addiu   $a3, $a3, %lo(Unknown_0x802c96d0)
    lw      $t3, 0x0($a3)
    addiu   $at, $zero, 0xa
    addiu   $t4, $zero, 0x5
    bne     $t3, $at, branch_0x802c9114
    addiu   $t5, $zero, 0xaa
    sw      $t4, 0x0($t0)
    sw      $zero, 0x0($a3)
    lui     $at, 0x802d
    sw      $t5, -0x6ad4($at)
    lui     $at, 0x802d
    addiu   $t6, $zero, 0xff
    sw      $t6, -0x6ad8($at)
    lui     $at, 0x802d
    addiu   $t7, $zero, 0x3
    sw      $t7, -0x6ad0($at)
    addiu   $a0, $zero, 0x31
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c9118
    lw      $t1, 0x1c($sp)

.globl Function_0x802c9000
Function_0x802c9000: # 0x802c9000
    lui     $t8, 0x802d
    lw      $t8, -0x6acc($t8)
    addiu   $v1, $zero, 0x14
    or      $v0, $zero, $zero
    bne     $v1, $t8, branch_0x802c901c
    lui     $t9, 0x802d
    addiu   $v0, $zero, 0x1
branch_0x802c901c:
    lw      $t9, -0x6ac8($t9)
    lui     $t1, 0x802d
    lui     $t2, 0x802d
    bne     $v1, $t9, branch_0x802c9034
    lui     $a3, %hi(Unknown_0x802c96d0)
    addiu   $v0, $v0, 0x1
branch_0x802c9034:
    lw      $t1, -0x6ac4($t1)
    addiu   $a3, $a3, %lo(Unknown_0x802c96d0)
    addiu   $t3, $zero, 0x6
    bne     $v1, $t1, branch_0x802c904c
    nop
    addiu   $v0, $v0, 0x1
branch_0x802c904c:
    lw      $t2, -0x6ac0($t2)
    bnel    $v1, $t2, branch_0x802c9060
    addiu   $v1, $zero, 0x4
    addiu   $v0, $v0, 0x1
    addiu   $v1, $zero, 0x4
branch_0x802c9060:
    bnel    $v1, $v0, branch_0x802c9118
    lw      $t1, 0x1c($sp)
    sw      $t3, 0x0($t0)
    b       branch_0x802c9114
    sw      $zero, 0x0($a3)

.globl Function_0x802c9074
Function_0x802c9074: # 0x802c9074
    lui     $a3, %hi(Unknown_0x802c96d0)
    addiu   $a3, $a3, %lo(Unknown_0x802c96d0)
    lw      $t4, 0x0($a3)
    or      $v0, $zero, $zero
    lui     $t6, %hi(Unknown_0x801ce3ba)
    addiu   $v1, $t4, 0x1
    slti    $at, $v1, 0x190
    bnez    $at, branch_0x802c909c
    sw      $v1, 0x0($a3)
    addiu   $v0, $zero, 0x1
branch_0x802c909c:
    slti    $at, $v1, 0x28
    bnez    $at, branch_0x802c90e0
    nop
    lhu     $t6, %lo(Unknown_0x801ce3ba)($t6)
    addiu   $a0, $zero, 0x11
    or      $a1, $zero, $zero
    andi    $t7, $t6, JOY_START|JOY_Z|JOY_A
    beqz    $t7, branch_0x802c90e0
    nop
    addiu   $v0, $zero, 0x1
    jal     Function_0x800c3594
    sw      $v0, 0x20($sp)
    lui     $a3, %hi(Unknown_0x802c96d0)
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x9520
    addiu   $a3, $a3, %lo(Unknown_0x802c96d0)
    lw      $v0, 0x20($sp)
branch_0x802c90e0:
    beqz    $v0, branch_0x802c9114
    addiu   $t8, $zero, 0x7
    sw      $t8, 0x0($t0)
    sw      $zero, 0x0($a3)
    addiu   $t9, $zero, 0x1
    lui     $at, 0x802d
    sw      $t9, -0x6aa8($at)
    addiu   $a0, $zero, 0x3
    addiu   $a1, $zero, 0x14
    jal     Function_0x801e6d10
    addiu   $a2, $zero, 0x14
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0xb
branch_0x802c9114:
    lw      $t1, 0x1c($sp)
branch_0x802c9118:
    addiu   $a0, $zero, 0x31
    beqzl   $t1, branch_0x802c9130
    lw      $ra, 0x14($sp)
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    lw      $ra, 0x14($sp)
branch_0x802c9130:
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x802c913c
Function_0x802c913c: # 0x802c913c
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c9184
    or      $a3, $a0, $zero
    sw      $zero, 0x0($v0)
    lui     $t7, %hi(Unknown_0x800da8a4_mainState)
    lw      $t7, %lo(Unknown_0x800da8a4_mainState)($t7)
    addiu   $at, $zero, 0x7
    lui     $a1, 0x802d
    bne     $t7, $at, branch_0x802c9184
    addiu   $a1, $a1, 0x9440
    jal     Function_0x800939e4
    sw      $zero, 0x0($a1)
    b       branch_0x802c9374
    lw      $ra, 0x14($sp)
branch_0x802c9184:
    lui     $t8, 0x8023
    lh      $t8, -0x782a($t8)
    addiu   $a2, $zero, 0x1
    lui     $t9, %hi(Unknown_0x800da8a4_mainState)
    bne     $a2, $t8, branch_0x802c91cc
    nop
    lw      $t9, %lo(Unknown_0x800da8a4_mainState)($t9)
    addiu   $at, $zero, 0x7
    lui     $a0, 0x8019
    bne     $t9, $at, branch_0x802c91cc
    addiu   $a0, $a0, 0x2370
    jal     Function_0x800bfb70
    sw      $a3, 0x18($sp)
    lui     $a0, 0x8019
    jal     Function_0x800bfc98
    addiu   $a0, $a0, 0x2390
    addiu   $a2, $zero, 0x1
    lw      $a3, 0x18($sp)
branch_0x802c91cc:
    lui     $a1, 0x802d
    addiu   $a1, $a1, 0x9440
    lw      $v0, 0x0($a1)
    lui     $t1, 0x800e
    or      $a0, $a3, $zero
    bltz    $v0, branch_0x802c926c
    addiu   $t0, $v0, 0x1
    sw      $t0, 0x0($a1)
    lw      $t1, -0x5758($t1)
    or      $v1, $zero, $zero
    lui     $v0, 0x801d
    bne     $a2, $t1, branch_0x802c9248
    addiu   $t5, $zero, 0xffff
    lw      $v0, -0x1c80($v0)
    addiu   $at, $zero, 0xb
    beql    $v0, $at, branch_0x802c921c
    lw      $t2, 0x0($a1)
    bnezl   $v0, branch_0x802c9234
    lw      $t3, 0x0($a1)
    lw      $t2, 0x0($a1)
branch_0x802c921c:
    slti    $at, $t2, 0xa
    bnez    $at, branch_0x802c925c
    nop
    b       branch_0x802c925c
    or      $v1, $a2, $zero

.globl Function_0x802c9230
Function_0x802c9230: # 0x802c9230
    lw      $t3, 0x0($a1)
branch_0x802c9234:
    slti    $at, $t3, 0x32
    bnez    $at, branch_0x802c925c
    nop
    b       branch_0x802c925c
    or      $v1, $a2, $zero
branch_0x802c9248:
    lw      $t4, 0x0($a1)
    slti    $at, $t4, 0x2e
    bnez    $at, branch_0x802c925c
    nop
    or      $v1, $a2, $zero
branch_0x802c925c:
    beqz    $v1, branch_0x802c926c
    lui     $at, 0x801d
    sw      $a2, -0x1c50($at)
    sw      $t5, 0x0($a1)
branch_0x802c926c:
    lui     $at, 0x800e
    jal     Function_0x8009302c
    sw      $zero, -0x5754($at)
    lui     $t6, 0xe700
    sw      $t6, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t7, 0x800e
    lw      $t7, -0x5758($t7)
    addiu   $a2, $zero, 0x1
    addiu   $v1, $v0, 0x8
    bne     $a2, $t7, branch_0x802c92c0
    lui     $t2, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v1, $v0, 0x8
    lui     $t8, 0xed02
    lui     $t9, 0x4d
    ori     $t9, $t9, 0xc36c
    ori     $t8, $t8, 0x50
    sw      $t8, 0x0($v1)
    sw      $t9, 0x4($v1)
    b       branch_0x802c92dc
    addiu   $a3, $v1, 0x8
branch_0x802c92c0:
    lui     $t0, 0xed02
    lui     $t1, 0x4d
    ori     $t1, $t1, 0xc394
    ori     $t0, $t0, 0x30
    sw      $t0, 0x0($v1)
    sw      $t1, 0x4($v1)
    addiu   $a3, $v1, 0x8
branch_0x802c92dc:
    lw      $t2, %lo(Unknown_0x800da8a4_mainState)($t2)
    addiu   $at, $zero, 0x7
    lui     $v1, 0x802d
    bne     $t2, $at, branch_0x802c9354
    lui     $t9, 0x8023
    addiu   $v1, $v1, 0x9570
    lw      $t3, 0x0($v1)
    lui     $t5, 0x801d
    addiu   $at, $zero, 0xb
    addiu   $t4, $t3, 0x1
    sw      $t4, 0x0($v1)
    lw      $t5, -0x1c80($t5)
    addiu   $v0, $zero, 0x320
    lui     $t6, %hi(Unknown_0x801ce3ba)
    bne     $t5, $at, branch_0x802c9324
    addiu   $a0, $zero, 0x2
    b       branch_0x802c9324
    addiu   $v0, $zero, 0x258
branch_0x802c9324:
    lhu     $t6, %lo(Unknown_0x801ce3ba)($t6)
    andi    $t7, $t6, JOY_START|JOY_Z|JOY_A
    bnez    $t7, branch_0x802c9344
    nop
    lw      $t8, 0x0($v1)
    slt     $at, $v0, $t8
    beqzl   $at, branch_0x802c9370
    or      $v0, $a3, $zero
branch_0x802c9344:
    jal     Function_0x802c9380
    sw      $a3, 0x18($sp)
    b       branch_0x802c936c
    lw      $a3, 0x18($sp)
branch_0x802c9354:
    lh      $t9, -0x782a($t9)
    bnel    $a2, $t9, branch_0x802c9370
    or      $v0, $a3, $zero
    jal     Function_0x801eaf10_ChangeStateTo2
    sw      $a3, 0x18($sp)
    lw      $a3, 0x18($sp)
branch_0x802c936c:
    or      $v0, $a3, $zero
branch_0x802c9370:
    lw      $ra, 0x14($sp)
branch_0x802c9374:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c9380
Function_0x802c9380: # 0x802c9380
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_8
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
    jal     Function_0x800bfad4
    nop
    jal     Function_0x800bfb08
    nop
    lui     $t0, %hi(Unknown_0x801ce390)
    lw      $t0, %lo(Unknown_0x801ce390)($t0)
    addiu   $at, $zero, 0x2
    bnel    $t0, $at, branch_0x802c9430
    lw      $ra, 0x14($sp)
    jal     Function_0x800c1d00
    or      $a0, $zero, $zero
    lw      $ra, 0x14($sp)
branch_0x802c9430:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


Unknown_0x802c943c: # 0x802c943c
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b8f9c, 0x1b90fc - 0x1b8f9c

Unknown_802C959C: # 802C959C
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b90fc, 0x1b9198 - 0x1b90fc

Unknown_802C9638: # 802C9638
.word Function_0x802c7864, Function_0x802c786c, Function_0x802c789c, Function_0x802c78a4
.word Function_0x802c78d4, Function_0x802c799c, Function_0x802c7ab0, Function_0x802c7ab0

.word 0x3D23D70A

.word 0x802C7EA0, 0x802C7EA0, 0x802C7EA0, 0x802C7EA0
.word 0x802C7EB8, 0x802C7EB8, 0x802C7EB8, 0x802C7EB8

# 802C967c
.incbin "./roms/Wave Race 64 (USA).z64", 0x1b91dc, ROM_0x1b9200 - 0x1b91dc
