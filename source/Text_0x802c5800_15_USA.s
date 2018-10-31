

.include "source/constants.s"

.section .textoverlay15, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    addiu   $sp, $sp, 0xfe28
    lui     $a1, 0x802d
    addiu   $a1, $a1, 0x8d88
    lw      $v1, 0x0($a1)
    sw      $ra, 0x74($sp)
    sw      $fp, 0x70($sp)
    sw      $s7, 0x6c($sp)
    sw      $s6, 0x68($sp)
    sw      $s5, 0x64($sp)
    sw      $s4, 0x60($sp)
    sw      $s3, 0x5c($sp)
    sw      $s2, 0x58($sp)
    sw      $s1, 0x54($sp)
    sw      $s0, 0x50($sp)
    sdc1    $24, 0x48($29)
    sdc1    $22, 0x40($29)
    bnez    $v1, branch_0x802c5904
    sdc1    $20, 0x38($29)
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x8d8c
    lw      $v0, 0x0($a0)
    lui     $at, 0x437f
    mtc1    $at, $zero
    mtc1    $v0, $a0
    lui     $at, 0x4080
    mtc1    $at, $v0
    cvt.s.w $f6, $f4
    addiu   $t7, $zero, 0x1
    lui     $at, 0x4f00
    mul.s   $f8, $f6, $f0
    div.s   $f10, $f8, $f2
    cfc1    $t6, $ra
    ctc1    $t7, $ra
    nop
    cvt.w.s $f16, $f10
    cfc1    $t7, $ra
    nop
    andi    $t7, $t7, 0x78
    beqzl   $t7, branch_0x802c58e8
    mfc1    $t7, $s0
    mtc1    $at, $s0
    addiu   $t7, $zero, 0x1
    sub.s   $f16, $f10, $f16
    ctc1    $t7, $ra
    nop
    cvt.w.s $f16, $f16
    cfc1    $t7, $ra
    nop
    andi    $t7, $t7, 0x78
    bnez    $t7, branch_0x802c58dc
    nop
    mfc1    $t7, $s0
    lui     $at, 0x8000
    b       branch_0x802c58f4
    or      $t7, $t7, $at
branch_0x802c58dc:
    b       branch_0x802c58f4
    addiu   $t7, $zero, 0xffff

.globl Function_0x802c58e4
Function_0x802c58e4: # 0x802c58e4
    mfc1    $t7, $s0
branch_0x802c58e8:
    nop
    bltz    $t7, branch_0x802c58dc
    nop
branch_0x802c58f4:
    ctc1    $t6, $ra
    lui     $at, 0x802d
    b       branch_0x802c59c0
    sw      $t7, -0x7160($at)
branch_0x802c5904:
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x8d8c
    lw      $v0, 0x0($a0)
    lui     $at, 0x437f
    mtc1    $at, $zero
    mtc1    $v0, $s2
    lui     $at, 0x4080
    mtc1    $at, $v0
    cvt.s.w $f4, $f18
    addiu   $t9, $zero, 0x1
    lui     $at, 0x4f00
    sub.s   $f6, $f2, $f4
    mul.s   $f8, $f6, $f0
    div.s   $f10, $f8, $f2
    cfc1    $t8, $ra
    ctc1    $t9, $ra
    nop
    cvt.w.s $f16, $f10
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    beqzl   $t9, branch_0x802c59a8
    mfc1    $t9, $s0
    mtc1    $at, $s0
    addiu   $t9, $zero, 0x1
    sub.s   $f16, $f10, $f16
    ctc1    $t9, $ra
    nop
    cvt.w.s $f16, $f16
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    bnez    $t9, branch_0x802c599c
    nop
    mfc1    $t9, $s0
    lui     $at, 0x8000
    b       branch_0x802c59b4
    or      $t9, $t9, $at
branch_0x802c599c:
    b       branch_0x802c59b4
    addiu   $t9, $zero, 0xffff

.globl Function_0x802c59a4
Function_0x802c59a4: # 0x802c59a4
    mfc1    $t9, $s0
branch_0x802c59a8:
    nop
    bltz    $t9, branch_0x802c599c
    nop
branch_0x802c59b4:
    ctc1    $t8, $ra
    lui     $at, 0x802d
    sw      $t9, -0x7160($at)
branch_0x802c59c0:
    addiu   $t0, $v0, 0x1
    slti    $at, $t0, 0x4
    bnez    $at, branch_0x802c59dc
    sw      $t0, 0x0($a0)
    xori    $t2, $v1, 0x1
    sw      $zero, 0x0($a0)
    sw      $t2, 0x0($a1)
branch_0x802c59dc:
    lui     $a1, 0x802d
    addiu   $a1, $a1, 0x8d90
    lw      $a0, 0x0($a1)
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x8d94
    beqz    $a0, branch_0x802c5a30
    or      $v0, $a0, $zero
    addiu   $at, $zero, 0x1
    beq     $v0, $at, branch_0x802c5ae8
    lui     $a2, 0x802d
    addiu   $v1, $zero, 0x2
    beq     $v0, $v1, branch_0x802c5ba8
    lui     $a2, 0x802d
    addiu   $at, $zero, 0x3
    beq     $v0, $at, branch_0x802c5c6c
    lui     $a2, 0x802d
    lui     $v0, 0x802d
    lui     $a2, 0x802d
    addiu   $a2, $a2, 0x8d94
    b       branch_0x802c5d28
    lw      $v0, -0x726c($v0)
branch_0x802c5a30:
    lw      $v0, 0x0($a2)
    lui     $at, 0x3f00
    mtc1    $at, $t0
    mtc1    $v0, $s2
    addiu   $t4, $zero, 0x1
    lui     $at, 0x4f00
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f10, $f6, $f8
    cfc1    $t3, $ra
    ctc1    $t4, $ra
    nop
    cvt.w.s $f16, $f10
    cfc1    $t4, $ra
    nop
    andi    $t4, $t4, 0x78
    beqz    $t4, branch_0x802c5ac0
    nop
    mtc1    $at, $s0
    addiu   $t4, $zero, 0x1
    sub.s   $f16, $f10, $f16
    ctc1    $t4, $ra
    nop
    cvt.w.s $f16, $f16
    cfc1    $t4, $ra
    nop
    andi    $t4, $t4, 0x78
    bnez    $t4, branch_0x802c5ab8
    nop
    mfc1    $t4, $s0
    lui     $at, 0x8000
    b       branch_0x802c5ad0
    or      $t4, $t4, $at
branch_0x802c5ab8:
    b       branch_0x802c5ad0
    addiu   $t4, $zero, 0xffff
branch_0x802c5ac0:
    mfc1    $t4, $s0
    nop
    bltz    $t4, branch_0x802c5ab8
    nop
branch_0x802c5ad0:
    lui     $at, 0x802d
    sw      $t4, -0x715c($at)
    ctc1    $t3, $ra
    lui     $at, 0x802d
    b       branch_0x802c5d28
    sw      $zero, -0x7158($at)
branch_0x802c5ae8:
    addiu   $t5, $zero, 0xff
    lui     $at, 0x802d
    addiu   $a2, $a2, 0x8d94
    sw      $t5, -0x715c($at)
    lw      $v0, 0x0($a2)
    lui     $at, 0x3f00
    mtc1    $at, $t0
    mtc1    $v0, $s2
    addiu   $t7, $zero, 0x1
    lui     $at, 0x4f00
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f10, $f6, $f8
    cfc1    $t6, $ra
    ctc1    $t7, $ra
    nop
    cvt.w.s $f16, $f10
    cfc1    $t7, $ra
    nop
    andi    $t7, $t7, 0x78
    beqz    $t7, branch_0x802c5b88
    nop
    mtc1    $at, $s0
    addiu   $t7, $zero, 0x1
    sub.s   $f16, $f10, $f16
    ctc1    $t7, $ra
    nop
    cvt.w.s $f16, $f16
    cfc1    $t7, $ra
    nop
    andi    $t7, $t7, 0x78
    bnez    $t7, branch_0x802c5b80
    nop
    mfc1    $t7, $s0
    lui     $at, 0x8000
    b       branch_0x802c5b98
    or      $t7, $t7, $at
branch_0x802c5b80:
    b       branch_0x802c5b98
    addiu   $t7, $zero, 0xffff
branch_0x802c5b88:
    mfc1    $t7, $s0
    nop
    bltz    $t7, branch_0x802c5b80
    nop
branch_0x802c5b98:
    ctc1    $t6, $ra
    lui     $at, 0x802d
    b       branch_0x802c5d28
    sw      $t7, -0x7158($at)
branch_0x802c5ba8:
    addiu   $t8, $zero, 0xff
    lui     $at, 0x802d
    addiu   $a2, $a2, 0x8d94
    sw      $t8, -0x715c($at)
    lw      $v0, 0x0($a2)
    lui     $at, 0x3f00
    mtc1    $at, $t0
    subu    $t9, $v1, $v0
    mtc1    $t9, $s2
    addiu   $t1, $zero, 0x1
    lui     $at, 0x4f00
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f10, $f6, $f8
    cfc1    $t0, $ra
    ctc1    $t1, $ra
    nop
    cvt.w.s $f16, $f10
    cfc1    $t1, $ra
    nop
    andi    $t1, $t1, 0x78
    beqz    $t1, branch_0x802c5c4c
    nop
    mtc1    $at, $s0
    addiu   $t1, $zero, 0x1
    sub.s   $f16, $f10, $f16
    ctc1    $t1, $ra
    nop
    cvt.w.s $f16, $f16
    cfc1    $t1, $ra
    nop
    andi    $t1, $t1, 0x78
    bnez    $t1, branch_0x802c5c44
    nop
    mfc1    $t1, $s0
    lui     $at, 0x8000
    b       branch_0x802c5c5c
    or      $t1, $t1, $at
branch_0x802c5c44:
    b       branch_0x802c5c5c
    addiu   $t1, $zero, 0xffff
branch_0x802c5c4c:
    mfc1    $t1, $s0
    nop
    bltz    $t1, branch_0x802c5c44
    nop
branch_0x802c5c5c:
    ctc1    $t0, $ra
    lui     $at, 0x802d
    b       branch_0x802c5d28
    sw      $t1, -0x7158($at)
branch_0x802c5c6c:
    addiu   $a2, $a2, 0x8d94
    lw      $v0, 0x0($a2)
    lui     $at, 0x3f00
    mtc1    $at, $t0
    subu    $t2, $v1, $v0
    mtc1    $t2, $s2
    addiu   $t4, $zero, 0x1
    lui     $at, 0x4f00
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f10, $f6, $f8
    cfc1    $t3, $ra
    ctc1    $t4, $ra
    nop
    cvt.w.s $f16, $f10
    cfc1    $t4, $ra
    nop
    andi    $t4, $t4, 0x78
    beqz    $t4, branch_0x802c5d04
    nop
    mtc1    $at, $s0
    addiu   $t4, $zero, 0x1
    sub.s   $f16, $f10, $f16
    ctc1    $t4, $ra
    nop
    cvt.w.s $f16, $f16
    cfc1    $t4, $ra
    nop
    andi    $t4, $t4, 0x78
    bnez    $t4, branch_0x802c5cfc
    nop
    mfc1    $t4, $s0
    lui     $at, 0x8000
    b       branch_0x802c5d14
    or      $t4, $t4, $at
branch_0x802c5cfc:
    b       branch_0x802c5d14
    addiu   $t4, $zero, 0xffff
branch_0x802c5d04:
    mfc1    $t4, $s0
    nop
    bltz    $t4, branch_0x802c5cfc
    nop
branch_0x802c5d14:
    lui     $at, 0x802d
    sw      $t4, -0x715c($at)
    ctc1    $t3, $ra
    lui     $at, 0x802d
    sw      $zero, -0x7158($at)
branch_0x802c5d28:
    addiu   $t5, $v0, 0x1
    slti    $at, $t5, 0x2
    bnez    $at, branch_0x802c5d50
    sw      $t5, 0x0($a2)
    addiu   $t7, $a0, 0x1
    addiu   $at, $zero, 0x4
    sw      $zero, 0x0($a2)
    bne     $t7, $at, branch_0x802c5d50
    sw      $t7, 0x0($a1)
    sw      $zero, 0x0($a1)
branch_0x802c5d50:
    lui     $v0, 0x801d
    lw      $v0, -0x1c60($v0)
    addiu   $at, $zero, 0x4
    lui     $fp, 0x801d
    beq     $v0, $at, branch_0x802c5d80
    addiu   $fp, $fp, 0xe358
    addiu   $at, $zero, 0x7
    beq     $v0, $at, branch_0x802c5d80
    addiu   $at, $zero, 0xb
    beq     $v0, $at, branch_0x802c5d80
    addiu   $at, $zero, 0x8
    bne     $v0, $at, branch_0x802c5f30
branch_0x802c5d80:
    lui     $at, 0x3f80
    mtc1    $at, $t8
    lui     $at, 0x4180
    mtc1    $at, $s2
    mtc1    $zero, $s6
    lui     $at, 0x4480
    mtc1    $at, $a0
    lw      $a0, 0x0($fp)
    lui     $a1, 0x802d
    mfc1    $a3, $t8
    addiu   $a1, $a1, 0x8eac
    lui     $a2, 0x4204
    swc1    $f18, 0x10($sp)
    swc1    $f22, 0x18($sp)
    swc1    $f22, 0x1c($sp)
    addiu   $a0, $a0, 0xa40
    jal     0x80048180
    swc1    $f4, 0x14($sp)
    lui     $at, 0x802d
    lwc1    $f6, -0x7210($at)
    mfc1    $a1, $s6
    mfc1    $a2, $s6
    mfc1    $a3, $t8
    addiu   $a0, $sp, 0xc8
    swc1    $f22, 0x10($sp)
    swc1    $f24, 0x14($sp)
    swc1    $f22, 0x18($sp)
    swc1    $f22, 0x1c($sp)
    swc1    $f22, 0x20($sp)
    swc1    $f22, 0x24($sp)
    jal     0x80048a28
    swc1    $f6, 0x28($sp)
    lui     $at, 0x43fa
    lui     $s7, 0x802d
    lui     $s6, 0x802d
    lui     $s1, 0x8015
    mtc1    $at, $s4
    addiu   $s1, $s1, 0x40b0
    addiu   $s6, $s6, 0x8d98
    addiu   $s7, $s7, 0x8d5c
    or      $s0, $zero, $zero
    or      $s2, $zero, $zero
    addiu   $s5, $sp, 0x10c
    addiu   $s4, $sp, 0x18c
    addiu   $s3, $sp, 0x14c
branch_0x802c5e34:
    lw      $t9, 0x0($s7)
    mfc1    $a3, $s4
    addiu   $a0, $sp, 0x88
    bne     $s0, $t9, branch_0x802c5e98
    or      $a1, $s3, $zero
    lw      $v0, 0x0($s6)
    bgez    $v0, branch_0x802c5e60
    andi    $t0, $v0, 0xfff
    beqz    $t0, branch_0x802c5e60
    nop
    addiu   $t0, $t0, 0xf000
branch_0x802c5e60:
    addiu   $t1, $t0, 0x400
    andi    $t2, $t1, 0xfff
    sll     $t3, $t2, 2
    addu    $t4, $s1, $t3
    lwc1    $f8, 0x0($t4)
    andi    $t5, $t0, 0xfff
    sll     $t6, $t5, 2
    addu    $t7, $s1, $t6
    lwc1    $f10, 0x0($t7)
    mul.s   $f0, $f8, $f20
    nop
    mul.s   $f2, $f10, $f20
    b       branch_0x802c5eb0
    nop
branch_0x802c5e98:
    lwc1    $f16, 0x1800($s1)
    lwc1    $f18, 0x800($s1)
    mul.s   $f0, $f16, $f20
    nop
    mul.s   $f2, $f18, $f20
    nop
branch_0x802c5eb0:
    mfc1    $a2, $zero
    swc1    $f2, 0x10($sp)
    swc1    $f22, 0x14($sp)
    swc1    $f22, 0x18($sp)
    swc1    $f22, 0x1c($sp)
    swc1    $f22, 0x20($sp)
    swc1    $f24, 0x24($sp)
    jal     0x80048468
    swc1    $f22, 0x28($sp)
    addiu   $a0, $sp, 0xc8
    jal     0x80047e18
    or      $a1, $s4, $zero
    or      $a0, $s3, $zero
    or      $a1, $s4, $zero
    jal     0x80049e58
    or      $a2, $s5, $zero
    lw      $t8, 0x0($fp)
    or      $a0, $s5, $zero
    addu    $a1, $t8, $s2
    jal     0x80047e80
    addiu   $a1, $a1, 0xa80
    addiu   $s0, $s0, 0x1
    addiu   $at, $zero, 0x4
    bne     $s0, $at, branch_0x802c5e34
    addiu   $s2, $s2, 0x40
    lw      $t9, 0x0($s6)
    addiu   $t0, $t9, 0x18
    slti    $at, $t0, 0x1000
    bnez    $at, branch_0x802c5f30
    sw      $t0, 0x0($s6)
    addiu   $t1, $t0, 0xf000
    sw      $t1, 0x0($s6)
branch_0x802c5f30:
    lw      $ra, 0x74($sp)
    ldc1    $20, 0x38($29)
    ldc1    $22, 0x40($29)
    ldc1    $24, 0x48($29)
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
    addiu   $sp, $sp, 0x1d8

Function_0x802c5f6c: # 0x802c5f6c
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe0
    sw      $s0, 0x18($sp)
    or      $s0, $a0, $zero
    beqz    $t6, branch_0x802c5fb4
    sw      $ra, 0x1c($sp)
    sw      $zero, 0x0($v0)
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x40
    bne     $t7, $at, branch_0x802c5fb4
    nop
    jal     0x800939e4
    nop
    b       branch_0x802c6058
    lw      $ra, 0x1c($sp)
branch_0x802c5fb4:
    lui     $at, 0x800e
    sw      $zero, -0x5754($at)
    jal     Function_0x802c711c
    or      $a0, $s0, $zero
    lui     $a0, 0x802d
    lw      $a0, -0x728c($a0)
    or      $s0, $v0, $zero
    beqz    $a0, branch_0x802c5fe8
    nop
    jal     Function_0x802c81ac
    nop
    lui     $at, 0x802d
    sw      $zero, -0x728c($at)
branch_0x802c5fe8:
    jal     Function_0x802c832c
    or      $a0, $s0, $zero
    lui     $t8, 0x800e
    lw      $t8, -0x575c($t8)
    addiu   $at, $zero, 0x40
    or      $s0, $v0, $zero
    bne     $t8, $at, branch_0x802c6038
    lui     $t0, 0x8023
    lui     $t9, 0x802d
    lw      $t9, -0x7288($t9)
    bnez    $t9, branch_0x802c6028
    nop
    jal     Function_0x802c6068
    nop
    b       branch_0x802c6054
    or      $v0, $s0, $zero
branch_0x802c6028:
    jal     Function_0x802c7060
    nop
    b       branch_0x802c6054
    or      $v0, $s0, $zero
branch_0x802c6038:
    lh      $t0, -0x782a($t0)
    addiu   $at, $zero, 0x1
    bnel    $t0, $at, branch_0x802c6054
    or      $v0, $s0, $zero
    jal     0x801ec094
    nop
    or      $v0, $s0, $zero
branch_0x802c6054:
    lw      $ra, 0x1c($sp)
branch_0x802c6058:
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x802c6068
Function_0x802c6068: # 0x802c6068
    lui     $t6, 0x801d
    lw      $t6, -0x1c60($t6)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    sltiu   $at, $t6, 0xc
    beqz    $at, branch_0x802c6144
    sll     $t6, $t6, 2
    lui     $at, 0x802d
    addu    $at, $at, $t6
    lw      $t6, -0x720c($at)
    jr      $t6
    nop

Function_0x802c6098: # 0x802c6098
    jal     Function_0x802c61e0
    nop
    b       branch_0x802c6144
    sw      $v0, 0x18($sp)

.globl Function_0x802c60a8
Function_0x802c60a8: # 0x802c60a8
    jal     Function_0x802c62ec
    nop
    b       branch_0x802c6144
    sw      $v0, 0x18($sp)

.globl Function_0x802c60b8
Function_0x802c60b8: # 0x802c60b8
    jal     Function_0x802c64ac
    nop
    b       branch_0x802c6144
    sw      $v0, 0x18($sp)

.globl Function_0x802c60c8
Function_0x802c60c8: # 0x802c60c8
    jal     Function_0x802c65d4
    nop
    b       branch_0x802c6144
    sw      $v0, 0x18($sp)

.globl Function_0x802c60d8
Function_0x802c60d8: # 0x802c60d8
    jal     Function_0x802c6700
    nop
    b       branch_0x802c6144
    sw      $v0, 0x18($sp)

.globl Function_0x802c60e8
Function_0x802c60e8: # 0x802c60e8
    jal     Function_0x802c69cc
    nop
    b       branch_0x802c6144
    sw      $v0, 0x18($sp)

.globl Function_0x802c60f8
Function_0x802c60f8: # 0x802c60f8
    jal     Function_0x802c6abc
    nop
    b       branch_0x802c6144
    sw      $v0, 0x18($sp)

.globl Function_0x802c6108
Function_0x802c6108: # 0x802c6108
    jal     Function_0x802c6bc4
    nop
    b       branch_0x802c6144
    sw      $v0, 0x18($sp)

Function_0x802c6118: # 0x802c6118
    jal     Function_0x802c6ce4
    nop
    b       branch_0x802c6144
    sw      $v0, 0x18($sp)

.globl Function_0x802c6128
Function_0x802c6128: # 0x802c6128
    jal     Function_0x802c6e48
    nop
    b       branch_0x802c6144
    sw      $v0, 0x18($sp)

Function_0x802c6138: # 0x802c6138
    jal     Function_0x802c6f0c
    nop
    sw      $v0, 0x18($sp)
branch_0x802c6144:
    lw      $v1, 0x18($sp)
    addiu   $at, $zero, 0x1
    addiu   $a0, $zero, 0x11
    bnel    $v1, $at, branch_0x802c616c
    addiu   $at, $zero, 0x2
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c61d4
    lw      $ra, 0x14($sp)

.globl Function_0x802c6168
Function_0x802c6168: # 0x802c6168
    addiu   $at, $zero, 0x2
branch_0x802c616c:
    bne     $v1, $at, branch_0x802c6184
    addiu   $a0, $zero, 0x16
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c61d4
    lw      $ra, 0x14($sp)
branch_0x802c6184:
    addiu   $at, $zero, 0x3
    bne     $v1, $at, branch_0x802c61a0
    addiu   $a0, $zero, 0x10
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c61d4
    lw      $ra, 0x14($sp)
branch_0x802c61a0:
    addiu   $at, $zero, 0x4
    bne     $v1, $at, branch_0x802c61bc
    addiu   $a0, $zero, 0x10
    jal     0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c61d4
    lw      $ra, 0x14($sp)
branch_0x802c61bc:
    addiu   $at, $zero, 0x5
    bne     $v1, $at, branch_0x802c61d0
    addiu   $a0, $zero, 0x37
    jal     0x800c3594
    or      $a1, $zero, $zero
branch_0x802c61d0:
    lw      $ra, 0x14($sp)
branch_0x802c61d4:
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x802c61e0
Function_0x802c61e0: # 0x802c61e0
    lui     $v0, 0x801d
    lhu     $v0, -0x1c46($v0)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    andi    $t6, $v0, 0xb000
    beqz    $t6, branch_0x802c6260
    or      $v1, $zero, $zero
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d50
    lw      $v1, 0x0($v0)
    addiu   $t7, $zero, 0x1
    addiu   $at, $zero, 0x1
    bnez    $v1, branch_0x802c6230
    nop
    lui     $at, 0x801d
    sw      $t7, -0x1c60($at)
    lui     $at, 0x802d
    sw      $zero, -0x72ac($at)
    b       branch_0x802c62d8
    addiu   $v1, $zero, 0x1
branch_0x802c6230:
    bne     $v1, $at, branch_0x802c6250
    addiu   $t8, $zero, 0x2
    lui     $at, 0x801d
    sw      $t8, -0x1c60($at)
    lui     $at, 0x802d
    sw      $zero, -0x72ac($at)
    b       branch_0x802c62d8
    addiu   $v1, $zero, 0x1
branch_0x802c6250:
    jal     Function_0x802c8cbc
    nop
    b       branch_0x802c62d8
    addiu   $v1, $zero, 0x1
branch_0x802c6260:
    andi    $t9, $v0, 0x4000
    beqz    $t9, branch_0x802c6280
    andi    $t0, $v0, 0x200
    addiu   $v1, $zero, 0x2
    jal     Function_0x802c8cbc
    sw      $v1, 0x1c($sp)
    b       branch_0x802c62d8
    lw      $v1, 0x1c($sp)
branch_0x802c6280:
    beqz    $t0, branch_0x802c62b0
    andi    $t5, $v0, 0x100
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d50
    lw      $t1, 0x0($v0)
    addiu   $v1, $zero, 0x3
    addiu   $t4, $zero, 0x2
    addiu   $t2, $t1, 0xffff
    bgez    $t2, branch_0x802c62d8
    sw      $t2, 0x0($v0)
    b       branch_0x802c62d8
    sw      $t4, 0x0($v0)
branch_0x802c62b0:
    beqz    $t5, branch_0x802c62d8
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d50
    lw      $t6, 0x0($v0)
    addiu   $v1, $zero, 0x4
    addiu   $t7, $t6, 0x1
    slti    $at, $t7, 0x3
    bnez    $at, branch_0x802c62d8
    sw      $t7, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x802c62d8:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    or      $v0, $v1, $zero
    jr      $ra
    nop

.globl Function_0x802c62ec
Function_0x802c62ec: # 0x802c62ec
    lui     $v0, 0x801d
    lhu     $v0, -0x1c46($v0)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    andi    $t6, $v0, 0xb000
    beqz    $t6, branch_0x802c6414
    or      $a1, $zero, $zero
    lui     $t7, 0x801d
    lw      $t7, -0x1c60($t7)
    addiu   $v1, $zero, 0x1
    or      $a1, $v1, $zero
    bne     $v1, $t7, branch_0x802c63b0
    lui     $v0, 0x802d
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d54
    lw      $t8, 0x0($v0)
    bnez    $t8, branch_0x802c6354
    nop
    jal     0x8007d158
    sw      $a1, 0x1c($sp)
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x8d74
    sw      $v0, 0x0($a0)
    lw      $a1, 0x1c($sp)
    b       branch_0x802c6394
    or      $v1, $v0, $zero
branch_0x802c6354:
    jal     0x8007d158
    sw      $a1, 0x1c($sp)
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x8d74
    addiu   $at, $zero, 0x4
    sw      $v0, 0x0($a0)
    lw      $a1, 0x1c($sp)
    bne     $v0, $at, branch_0x802c6394
    or      $v1, $v0, $zero
    jal     0x8007d1ec
    sw      $a1, 0x1c($sp)
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x8d74
    sw      $v0, 0x0($a0)
    lw      $a1, 0x1c($sp)
    or      $v1, $v0, $zero
branch_0x802c6394:
    bnez    $v1, branch_0x802c6498
    addiu   $t9, $zero, 0x3
    lui     $at, 0x801d
    sw      $t9, -0x1c60($at)
    lui     $at, 0x802d
    b       branch_0x802c6498
    sw      $zero, -0x72a8($at)
branch_0x802c63b0:
    addiu   $v0, $v0, 0x8d54
    lw      $t0, 0x0($v0)
    bne     $v1, $t0, branch_0x802c63dc
    nop
    jal     0x8007d158
    sw      $a1, 0x1c($sp)
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x8d74
    sw      $v0, 0x0($a0)
    addiu   $v1, $zero, 0x1
    lw      $a1, 0x1c($sp)
branch_0x802c63dc:
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x8d74
    lw      $t1, 0x0($a0)
    addiu   $t2, $zero, 0x5
    lui     $at, 0x801d
    bnez    $t1, branch_0x802c6498
    addiu   $a0, $zero, 0x3
    sw      $t2, -0x1c60($at)
    lui     $at, 0x802d
    sw      $v1, -0x7290($at)
    jal     0x800c3c0c
    sw      $a1, 0x1c($sp)
    b       branch_0x802c6498
    lw      $a1, 0x1c($sp)
branch_0x802c6414:
    andi    $t3, $v0, 0x4000
    beqz    $t3, branch_0x802c6438
    lui     $at, 0x801d
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d54
    sw      $zero, -0x1c60($at)
    addiu   $a1, $zero, 0x2
    b       branch_0x802c6498
    sw      $zero, 0x0($v0)
branch_0x802c6438:
    andi    $t4, $v0, 0x200
    beqzl   $t4, branch_0x802c6470
    andi    $t8, $v0, 0x100
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d54
    lw      $t5, 0x0($v0)
    addiu   $a1, $zero, 0x3
    addiu   $v1, $zero, 0x1
    addiu   $t6, $t5, 0xffff
    bgez    $t6, branch_0x802c6498
    sw      $t6, 0x0($v0)
    b       branch_0x802c6498
    sw      $v1, 0x0($v0)

.globl Function_0x802c646c
Function_0x802c646c: # 0x802c646c
    andi    $t8, $v0, 0x100
branch_0x802c6470:
    beqz    $t8, branch_0x802c6498
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d54
    lw      $t9, 0x0($v0)
    addiu   $a1, $zero, 0x4
    addiu   $t0, $t9, 0x1
    slti    $at, $t0, 0x2
    bnez    $at, branch_0x802c6498
    sw      $t0, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x802c6498:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    or      $v0, $a1, $zero
    jr      $ra
    nop

.globl Function_0x802c64ac
Function_0x802c64ac: # 0x802c64ac
    lui     $v0, 0x801d
    lhu     $v0, -0x1c46($v0)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    andi    $t6, $v0, 0xb000
    beqz    $t6, branch_0x802c6548
    or      $v1, $zero, $zero
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d58
    lw      $t7, 0x0($v0)
    addiu   $v1, $zero, 0x1
    addiu   $t0, $zero, 0x6
    bnez    $t7, branch_0x802c6508
    lui     $at, 0x801d
    addiu   $t8, $zero, 0x4
    lui     $at, 0x801d
    sw      $t8, -0x1c60($at)
    lui     $at, 0x802d
    sw      $zero, -0x72a4($at)
    lui     $at, 0x802d
    addiu   $t9, $zero, 0x200
    b       branch_0x802c65c0
    sw      $t9, -0x7268($at)
branch_0x802c6508:
    lui     $t2, 0x802d
    lw      $t2, -0x72ac($t2)
    sw      $t0, -0x1c60($at)
    lui     $at, 0x802d
    addiu   $t1, $zero, 0x1
    bnez    $t2, branch_0x802c6534
    sw      $t1, -0x7290($at)
    addiu   $a0, $zero, 0x2
    jal     Function_0x802c82a4
    sw      $v1, 0x1c($sp)
    lw      $v1, 0x1c($sp)
branch_0x802c6534:
    addiu   $a0, $zero, 0x3
    jal     0x800c3c0c
    sw      $v1, 0x1c($sp)
    b       branch_0x802c65c0
    lw      $v1, 0x1c($sp)
branch_0x802c6548:
    andi    $t3, $v0, 0x4000
    beqz    $t3, branch_0x802c6568
    andi    $t5, $v0, 0x200
    addiu   $t4, $zero, 0x1
    lui     $at, 0x801d
    addiu   $v1, $zero, 0x2
    b       branch_0x802c65c0
    sw      $t4, -0x1c60($at)
branch_0x802c6568:
    beqz    $t5, branch_0x802c6598
    andi    $t0, $v0, 0x100
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d58
    lw      $t6, 0x0($v0)
    addiu   $v1, $zero, 0x3
    addiu   $t9, $zero, 0x1
    addiu   $t7, $t6, 0xffff
    bgez    $t7, branch_0x802c65c0
    sw      $t7, 0x0($v0)
    b       branch_0x802c65c0
    sw      $t9, 0x0($v0)
branch_0x802c6598:
    beqz    $t0, branch_0x802c65c0
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d58
    lw      $t1, 0x0($v0)
    addiu   $v1, $zero, 0x4
    addiu   $t2, $t1, 0x1
    slti    $at, $t2, 0x2
    bnez    $at, branch_0x802c65c0
    sw      $t2, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x802c65c0:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    or      $v0, $v1, $zero
    jr      $ra
    nop

Function_0x802c65d4: # 0x802c65d4
    lui     $v0, 0x801d
    lhu     $v0, -0x1c46($v0)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    andi    $t6, $v0, 0xb000
    beqz    $t6, branch_0x802c665c
    or      $v1, $zero, $zero
    lui     $t7, 0x802d
    lw      $t7, -0x72ac($t7)
    addiu   $v1, $zero, 0x1
    addiu   $t9, $zero, 0x7
    bnez    $t7, branch_0x802c6638
    lui     $at, 0x801d
    addiu   $t8, $zero, 0x8
    lui     $at, 0x801d
    sw      $t8, -0x1c60($at)
    lui     $at, 0x802d
    sw      $zero, -0x723c($at)
    lui     $at, 0x802d
    sw      $zero, -0x7238($at)
    lui     $at, 0x802d
    sw      $zero, -0x7234($at)
    lui     $at, 0x802d
    b       branch_0x802c66ec
    sw      $zero, -0x7230($at)
branch_0x802c6638:
    sw      $t9, -0x1c60($at)
    lui     $at, 0x802d
    addiu   $t0, $zero, 0x1
    sw      $t0, -0x7290($at)
    addiu   $a0, $zero, 0x3
    jal     0x800c3c0c
    sw      $v1, 0x1c($sp)
    b       branch_0x802c66ec
    lw      $v1, 0x1c($sp)
branch_0x802c665c:
    andi    $t1, $v0, 0x4000
    beqz    $t1, branch_0x802c667c
    andi    $t3, $v0, 0x200
    addiu   $t2, $zero, 0x3
    lui     $at, 0x801d
    addiu   $v1, $zero, 0x2
    b       branch_0x802c66ec
    sw      $t2, -0x1c60($at)
branch_0x802c667c:
    beqz    $t3, branch_0x802c66b8
    andi    $t9, $v0, 0x100
    lui     $v0, 0x802d
    addiu   $t4, $zero, 0x200
    lui     $at, 0x802d
    addiu   $v0, $v0, 0x8d5c
    sw      $t4, -0x7268($at)
    lw      $t5, 0x0($v0)
    addiu   $v1, $zero, 0x3
    addiu   $t8, $zero, 0x3
    addiu   $t6, $t5, 0xffff
    bgez    $t6, branch_0x802c66ec
    sw      $t6, 0x0($v0)
    b       branch_0x802c66ec
    sw      $t8, 0x0($v0)
branch_0x802c66b8:
    beqz    $t9, branch_0x802c66ec
    lui     $v0, 0x802d
    addiu   $t0, $zero, 0x200
    lui     $at, 0x802d
    addiu   $v0, $v0, 0x8d5c
    sw      $t0, -0x7268($at)
    lw      $t1, 0x0($v0)
    addiu   $v1, $zero, 0x4
    addiu   $t2, $t1, 0x1
    slti    $at, $t2, 0x4
    bnez    $at, branch_0x802c66ec
    sw      $t2, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x802c66ec:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    or      $v0, $v1, $zero
    jr      $ra
    nop

.globl Function_0x802c6700
Function_0x802c6700: # 0x802c6700
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x8dd0
    lw      $v0, 0x0($a0)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    beqz    $v0, branch_0x802c6738
    or      $a2, $zero, $zero
    addiu   $a1, $zero, 0x1
    beq     $v0, $a1, branch_0x802c6824
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c68d4
    lui     $v1, 0x802d
    b       branch_0x802c69bc
    lw      $ra, 0x14($sp)
branch_0x802c6738:
    lui     $at, 0x40a0
    mtc1    $at, $t4
    lui     $v1, 0x802d
    addiu   $a1, $zero, 0x1
    lui     $at, 0x802d
    addiu   $v1, $v1, 0x8dcc
    sw      $a1, -0x7238($at)
    lw      $t6, 0x0($v1)
    addiu   $t8, $zero, 0x5
    lui     $at, 0x4301
    addiu   $v0, $t6, 0x1
    subu    $t9, $t8, $v0
    mtc1    $t9, $a0
    mtc1    $at, $s0
    mtc1    $v0, $t0
    cvt.s.w $f6, $f4
    sw      $v0, 0x0($v1)
    lui     $at, 0x802d
    cvt.s.w $f10, $f8
    div.s   $f0, $f6, $f12
    div.s   $f2, $f10, $f12
    mul.s   $f18, $f16, $f0
    trunc.w.s   $f4, $f18
    mfc1    $t1, $a0
    nop
    addiu   $t2, $t1, 0x1f
    sw      $t2, -0x7150($at)
    lui     $at, 0x41a0
    mtc1    $at, $a2
    lui     $at, 0x802d
    mul.s   $f8, $f6, $f0
    trunc.w.s   $f10, $f8
    mfc1    $t4, $t2
    nop
    addiu   $t5, $t4, 0x89
    sw      $t5, -0x714c($at)
    lui     $at, 0x4381
    mtc1    $at, $s0
    lui     $at, 0x802d
    mul.s   $f18, $f16, $f2
    trunc.w.s   $f4, $f18
    mfc1    $t7, $a0
    nop
    sw      $t7, -0x7148($at)
    lui     $at, 0x4220
    mtc1    $at, $a2
    lui     $at, 0x802d
    mul.s   $f8, $f6, $f2
    trunc.w.s   $f10, $f8
    mfc1    $t9, $t2
    nop
    sw      $t9, -0x7144($at)
    slti    $at, $v0, 0x5
    bnezl   $at, branch_0x802c69bc
    lw      $ra, 0x14($sp)
    sw      $a1, 0x0($a0)
    lui     $at, 0x802d
    b       branch_0x802c69b8
    sw      $a1, -0x722c($at)
branch_0x802c6824:
    lui     $v0, 0x801d
    lhu     $v0, -0x1c46($v0)
    addiu   $t1, $zero, 0x7
    lui     $at, 0x801d
    andi    $t0, $v0, 0xb000
    beqz    $t0, branch_0x802c6860
    andi    $t2, $v0, 0x4000
    sw      $t1, -0x1c60($at)
    lui     $at, 0x802d
    sw      $a1, -0x7290($at)
    addiu   $a0, $zero, 0x3
    jal     0x800c3c0c
    sw      $a1, 0x1c($sp)
    b       branch_0x802c69b8
    lw      $a2, 0x1c($sp)
branch_0x802c6860:
    beqz    $t2, branch_0x802c6888
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x8dcc
    addiu   $t3, $zero, 0x2
    sw      $t3, 0x0($a0)
    sw      $zero, 0x0($v1)
    lui     $at, 0x802d
    addiu   $a2, $zero, 0x2
    b       branch_0x802c69b8
    sw      $zero, -0x722c($at)
branch_0x802c6888:
    andi    $t4, $v0, 0x200
    beqzl   $t4, branch_0x802c68b4
    andi    $t7, $v0, 0x100
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8dc4
    lw      $t5, 0x0($v0)
    addiu   $a2, $zero, 0x3
    xori    $t6, $t5, 0x1
    b       branch_0x802c69b8
    sw      $t6, 0x0($v0)

.globl Function_0x802c68b0
Function_0x802c68b0: # 0x802c68b0
    andi    $t7, $v0, 0x100
branch_0x802c68b4:
    beqz    $t7, branch_0x802c69b8
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8dc4
    lw      $t8, 0x0($v0)
    addiu   $a2, $zero, 0x4
    xori    $t9, $t8, 0x1
    b       branch_0x802c69b8
    sw      $t9, 0x0($v0)
branch_0x802c68d4:
    lui     $at, 0x40a0
    mtc1    $at, $t4
    lui     $at, 0x802d
    addiu   $v1, $v1, 0x8dcc
    sw      $a1, -0x7238($at)
    lw      $t0, 0x0($v1)
    lui     $at, 0x4301
    mtc1    $at, $t0
    addiu   $v0, $t0, 0x1
    mtc1    $v0, $a0
    addiu   $t2, $zero, 0x5
    subu    $t3, $t2, $v0
    cvt.s.w $f6, $f4
    mtc1    $t3, $s0
    sw      $v0, 0x0($v1)
    lui     $at, 0x802d
    addiu   $t4, $zero, 0x4
    cvt.s.w $f18, $f16
    div.s   $f0, $f6, $f12
    div.s   $f2, $f18, $f12
    mul.s   $f10, $f8, $f0
    trunc.w.s   $f16, $f10
    mfc1    $t5, $s0
    nop
    addiu   $t6, $t5, 0x1f
    sw      $t6, -0x7150($at)
    lui     $at, 0x41a0
    mtc1    $at, $s2
    lui     $at, 0x802d
    mul.s   $f4, $f18, $f0
    trunc.w.s   $f6, $f4
    mfc1    $t8, $a2
    nop
    addiu   $t9, $t8, 0x89
    sw      $t9, -0x714c($at)
    lui     $at, 0x4381
    mtc1    $at, $t0
    lui     $at, 0x802d
    mul.s   $f10, $f8, $f2
    trunc.w.s   $f16, $f10
    mfc1    $t1, $s0
    nop
    sw      $t1, -0x7148($at)
    lui     $at, 0x4220
    mtc1    $at, $s2
    lui     $at, 0x802d
    mul.s   $f4, $f18, $f2
    trunc.w.s   $f6, $f4
    mfc1    $t3, $a2
    nop
    sw      $t3, -0x7144($at)
    slti    $at, $v0, 0x5
    bnezl   $at, branch_0x802c69bc
    lw      $ra, 0x14($sp)
    sw      $zero, 0x0($a0)
    lui     $at, 0x801d
    sw      $t4, -0x1c60($at)
branch_0x802c69b8:
    lw      $ra, 0x14($sp)
branch_0x802c69bc:
    addiu   $sp, $sp, 0x20
    or      $v0, $a2, $zero
    jr      $ra
    nop

.globl Function_0x802c69cc
Function_0x802c69cc: # 0x802c69cc
    lui     $v0, 0x801d
    lhu     $v0, -0x1c46($v0)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    andi    $t6, $v0, 0xb000
    beqz    $t6, branch_0x802c6a30
    or      $v1, $zero, $zero
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d70
    lw      $t7, 0x0($v0)
    addiu   $v1, $zero, 0x1
    addiu   $t9, $zero, 0x2
    bnez    $t7, branch_0x802c6a28
    lui     $at, 0x801d
    addiu   $v1, $zero, 0x5
    addiu   $t8, $zero, 0x9
    lui     $at, 0x801d
    sw      $t8, -0x1c60($at)
    sw      $v1, 0x1c($sp)
    jal     Function_0x802c82a4
    addiu   $a0, $zero, 0x4
    b       branch_0x802c6aa8
    lw      $v1, 0x1c($sp)
branch_0x802c6a28:
    b       branch_0x802c6aa8
    sw      $t9, -0x1c60($at)
branch_0x802c6a30:
    andi    $t0, $v0, 0x4000
    beqz    $t0, branch_0x802c6a50
    andi    $t2, $v0, 0x200
    addiu   $t1, $zero, 0x2
    lui     $at, 0x801d
    addiu   $v1, $zero, 0x2
    b       branch_0x802c6aa8
    sw      $t1, -0x1c60($at)
branch_0x802c6a50:
    beqz    $t2, branch_0x802c6a80
    andi    $t7, $v0, 0x100
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d70
    lw      $t3, 0x0($v0)
    addiu   $v1, $zero, 0x3
    addiu   $t6, $zero, 0x1
    addiu   $t4, $t3, 0xffff
    bgez    $t4, branch_0x802c6aa8
    sw      $t4, 0x0($v0)
    b       branch_0x802c6aa8
    sw      $t6, 0x0($v0)
branch_0x802c6a80:
    beqz    $t7, branch_0x802c6aa8
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d70
    lw      $t8, 0x0($v0)
    addiu   $v1, $zero, 0x4
    addiu   $t9, $t8, 0x1
    slti    $at, $t9, 0x2
    bnez    $at, branch_0x802c6aa8
    sw      $t9, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x802c6aa8:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    or      $v0, $v1, $zero
    jr      $ra
    nop

.globl Function_0x802c6abc
Function_0x802c6abc: # 0x802c6abc
    lui     $v0, 0x801d
    lhu     $v0, -0x1c46($v0)
    addiu   $sp, $sp, 0xffe0
    lui     $at, 0x802d
    andi    $t6, $v0, 0xb000
    sw      $ra, 0x14($sp)
    or      $v1, $zero, $zero
    beqz    $t6, branch_0x802c6b30
    sw      $zero, -0x7280($at)
    lui     $v0, 0x802d
    lui     $at, 0x802d
    addiu   $v0, $v0, 0x8d70
    sw      $zero, -0x727c($at)
    lw      $t7, 0x0($v0)
    addiu   $v1, $zero, 0x1
    lui     $at, 0x801d
    bnez    $t7, branch_0x802c6b28
    addiu   $t9, $zero, 0x1
    addiu   $v1, $zero, 0x5
    addiu   $t8, $zero, 0xa
    lui     $at, 0x801d
    sw      $t8, -0x1c60($at)
    sw      $v1, 0x1c($sp)
    jal     Function_0x802c82a4
    addiu   $a0, $zero, 0x3
    b       branch_0x802c6bb0
    lw      $v1, 0x1c($sp)
branch_0x802c6b28:
    b       branch_0x802c6bb0
    sw      $t9, -0x1c60($at)
branch_0x802c6b30:
    andi    $t0, $v0, 0x4000
    beqz    $t0, branch_0x802c6b58
    andi    $t2, $v0, 0x200
    addiu   $t1, $zero, 0x3
    lui     $at, 0x801d
    sw      $t1, -0x1c60($at)
    lui     $at, 0x802d
    addiu   $v1, $zero, 0x2
    b       branch_0x802c6bb0
    sw      $zero, -0x727c($at)
branch_0x802c6b58:
    beqz    $t2, branch_0x802c6b88
    andi    $t7, $v0, 0x100
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d70
    lw      $t3, 0x0($v0)
    addiu   $v1, $zero, 0x3
    addiu   $t6, $zero, 0x1
    addiu   $t4, $t3, 0xffff
    bgez    $t4, branch_0x802c6bb0
    sw      $t4, 0x0($v0)
    b       branch_0x802c6bb0
    sw      $t6, 0x0($v0)
branch_0x802c6b88:
    beqz    $t7, branch_0x802c6bb0
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d70
    lw      $t8, 0x0($v0)
    addiu   $v1, $zero, 0x4
    addiu   $t9, $t8, 0x1
    slti    $at, $t9, 0x2
    bnez    $at, branch_0x802c6bb0
    sw      $t9, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x802c6bb0:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    or      $v0, $v1, $zero
    jr      $ra
    nop

.globl Function_0x802c6bc4
Function_0x802c6bc4: # 0x802c6bc4
    lui     $v0, 0x801d
    lhu     $v0, -0x1c46($v0)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    andi    $t6, $v0, 0xb000
    beqz    $t6, branch_0x802c6c40
    or      $v1, $zero, $zero
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d70
    lw      $t7, 0x0($v0)
    addiu   $v1, $zero, 0x1
    addiu   $t9, $zero, 0x4
    bnez    $t7, branch_0x802c6c20
    lui     $at, 0x801d
    addiu   $v1, $zero, 0x5
    addiu   $t8, $zero, 0xb
    lui     $at, 0x801d
    sw      $t8, -0x1c60($at)
    sw      $v1, 0x1c($sp)
    jal     Function_0x802c82a4
    addiu   $a0, $zero, 0x3
    b       branch_0x802c6cd0
    lw      $v1, 0x1c($sp)
branch_0x802c6c20:
    sw      $t9, -0x1c60($at)
    lui     $at, 0x802d
    sw      $zero, -0x7238($at)
    lui     $at, 0x802d
    sw      $zero, -0x722c($at)
    lui     $at, 0x802d
    b       branch_0x802c6cd0
    sw      $zero, -0x7230($at)
branch_0x802c6c40:
    andi    $t0, $v0, 0x4000
    beqz    $t0, branch_0x802c6c78
    andi    $t2, $v0, 0x200
    addiu   $t1, $zero, 0x4
    lui     $at, 0x801d
    sw      $t1, -0x1c60($at)
    lui     $at, 0x802d
    sw      $zero, -0x7238($at)
    lui     $at, 0x802d
    sw      $zero, -0x722c($at)
    lui     $at, 0x802d
    addiu   $v1, $zero, 0x2
    b       branch_0x802c6cd0
    sw      $zero, -0x7230($at)
branch_0x802c6c78:
    beqz    $t2, branch_0x802c6ca8
    andi    $t7, $v0, 0x100
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d70
    lw      $t3, 0x0($v0)
    addiu   $v1, $zero, 0x3
    addiu   $t6, $zero, 0x1
    addiu   $t4, $t3, 0xffff
    bgez    $t4, branch_0x802c6cd0
    sw      $t4, 0x0($v0)
    b       branch_0x802c6cd0
    sw      $t6, 0x0($v0)
branch_0x802c6ca8:
    beqz    $t7, branch_0x802c6cd0
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d70
    lw      $t8, 0x0($v0)
    addiu   $v1, $zero, 0x4
    addiu   $t9, $t8, 0x1
    slti    $at, $t9, 0x2
    bnez    $at, branch_0x802c6cd0
    sw      $t9, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x802c6cd0:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    or      $v0, $v1, $zero
    jr      $ra
    nop

.globl Function_0x802c6ce4
Function_0x802c6ce4: # 0x802c6ce4
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d80
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    bnez    $t6, branch_0x802c6d08
    or      $a1, $zero, $zero
    b       branch_0x802c6e38
    or      $v0, $zero, $zero
branch_0x802c6d08:
    sw      $zero, 0x0($v0)
    lui     $t7, 0x802d
    lw      $t7, -0x72ac($t7)
    lui     $at, 0x802d
    sw      $zero, -0x727c($at)
    bnez    $t7, branch_0x802c6dbc
    lui     $t6, 0x802d
    lui     $t8, 0x802d
    lw      $t8, -0x72a4($t8)
    lui     $t0, 0x802d
    lui     $t2, 0x802d
    sll     $t9, $t8, 2
    addu    $t0, $t0, $t9
    lw      $t0, -0x7220($t0)
    lw      $t2, -0x723c($t2)
    lui     $a0, 0x802d
    sll     $t1, $t0, 2
    addu    $a0, $a0, $t1
    beqz    $t2, branch_0x802c6d5c
    lw      $a0, -0x72a0($a0)
    addiu   $a0, $a0, 0x80
branch_0x802c6d5c:
    jal     0x8007d274
    sw      $a1, 0x1c($sp)
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x8d74
    sw      $v0, 0x0($v1)
    bnez    $v0, branch_0x802c6d94
    lw      $a1, 0x1c($sp)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x802d
    addiu   $t4, $zero, 0x3
    sw      $t4, -0x7284($at)
    b       branch_0x802c6da0
    addiu   $a1, $zero, 0x1
branch_0x802c6d94:
    addiu   $t5, $zero, 0x4
    lui     $at, 0x801d
    sw      $t5, -0x1c60($at)
branch_0x802c6da0:
    lui     $at, 0x802d
    sw      $zero, -0x7238($at)
    lui     $at, 0x802d
    sw      $zero, -0x722c($at)
    lui     $at, 0x802d
    b       branch_0x802c6e24
    sw      $zero, -0x7230($at)
branch_0x802c6dbc:
    lw      $t6, -0x72a4($t6)
    lui     $t8, 0x802d
    lui     $a0, 0x802d
    sll     $t7, $t6, 2
    addu    $t8, $t8, $t7
    lw      $t8, -0x7220($t8)
    sw      $a1, 0x1c($sp)
    sll     $t9, $t8, 2
    addu    $a0, $a0, $t9
    jal     0x8007d5b4
    lw      $a0, -0x72a0($a0)
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x8d74
    sw      $v0, 0x0($v1)
    bnez    $v0, branch_0x802c6e18
    lw      $a1, 0x1c($sp)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x802d
    addiu   $t1, $zero, 0x3
    sw      $t1, -0x7284($at)
    b       branch_0x802c6e24
    addiu   $a1, $zero, 0x1
branch_0x802c6e18:
    addiu   $t2, $zero, 0x4
    lui     $at, 0x801d
    sw      $t2, -0x1c60($at)
branch_0x802c6e24:
    beqzl   $a1, branch_0x802c6e38
    or      $v0, $zero, $zero
    jal     0x800c3c0c
    addiu   $a0, $zero, 0x1
    or      $v0, $zero, $zero
branch_0x802c6e38:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x802c6e48
Function_0x802c6e48: # 0x802c6e48
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d80
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    bnez    $t6, branch_0x802c6e6c
    or      $v1, $zero, $zero
    b       branch_0x802c6efc
    or      $v0, $zero, $zero
branch_0x802c6e6c:
    sw      $zero, 0x0($v0)
    lui     $t7, 0x802d
    lw      $t7, -0x72ac($t7)
    lui     $at, 0x802d
    sw      $zero, -0x727c($at)
    bnez    $t7, branch_0x802c6ea4
    addiu   $a0, $zero, 0x5
    jal     0x8007d274
    sw      $v1, 0x1c($sp)
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x8d74
    sw      $v0, 0x0($a0)
    b       branch_0x802c6ec0
    lw      $v1, 0x1c($sp)
branch_0x802c6ea4:
    addiu   $a0, $zero, 0x5
    jal     0x8007d5b4
    sw      $v1, 0x1c($sp)
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x8d74
    sw      $v0, 0x0($a0)
    lw      $v1, 0x1c($sp)
branch_0x802c6ec0:
    lw      $t8, 0x0($a0)
    addiu   $t9, $zero, 0x1
    addiu   $t0, $zero, 0x3
    bnez    $t8, branch_0x802c6ee4
    lui     $at, 0x801d
    lui     $at, 0x801d
    sw      $t9, -0x1c60($at)
    b       branch_0x802c6ee8
    addiu   $v1, $zero, 0x1
branch_0x802c6ee4:
    sw      $t0, -0x1c60($at)
branch_0x802c6ee8:
    beqzl   $v1, branch_0x802c6efc
    or      $v0, $zero, $zero
    jal     0x800c3c0c
    addiu   $a0, $zero, 0x1
    or      $v0, $zero, $zero
branch_0x802c6efc:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x802c6f0c
Function_0x802c6f0c: # 0x802c6f0c
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8d80
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    bnez    $t6, branch_0x802c6f30
    sw      $zero, 0x1c($sp)
    b       branch_0x802c7050
    or      $v0, $zero, $zero
branch_0x802c6f30:
    sw      $zero, 0x0($v0)
    lui     $t7, 0x802d
    lw      $t7, -0x72ac($t7)
    lui     $at, 0x802d
    sw      $zero, -0x727c($at)
    bnez    $t7, branch_0x802c7010
    nop
    jal     0x8007bd58
    nop
    lui     $v1, 0x801d
    lb      $v1, -0x5020($v1)
    addiu   $t8, $zero, 0x1
    lui     $at, 0x801d
    andi    $t9, $v1, 0xc0
    sll     $t0, $t9, 24
    sra     $v1, $t0, 24
    andi    $t2, $v1, 0x40
    sw      $t8, 0x1c($sp)
    beqz    $t2, branch_0x802c6f9c
    sw      $zero, -0x1c60($at)
    addiu   $t3, $zero, 0x1
    lui     $at, 0x800e
    sw      $t3, -0x5894($at)
    jal     0x800c2db0
    addiu   $a0, $zero, 0x3
    b       branch_0x802c6fd0
    nop
branch_0x802c6f9c:
    andi    $t4, $v1, 0x80
    beqz    $t4, branch_0x802c6fc4
    lui     $at, 0x800e
    addiu   $t5, $zero, 0x2
    lui     $at, 0x800e
    sw      $t5, -0x5894($at)
    jal     0x800c2db0
    addiu   $a0, $zero, 0x1
    b       branch_0x802c6fd0
    nop
branch_0x802c6fc4:
    sw      $zero, -0x5894($at)
    jal     0x800c2db0
    or      $a0, $zero, $zero
branch_0x802c6fd0:
    lui     $t6, 0x801d
    lb      $t6, -0x5020($t6)
    addiu   $t8, $zero, 0x1
    lui     $at, 0x800e
    andi    $t7, $t6, 0x20
    beqz    $t7, branch_0x802c7000
    nop
    lui     $at, 0x800e
    jal     0x800c2de4
    sw      $zero, -0x5890($at)
    b       branch_0x802c703c
    lw      $t1, 0x1c($sp)
branch_0x802c7000:
    jal     0x800c2dd4
    sw      $t8, -0x5890($at)
    b       branch_0x802c703c
    lw      $t1, 0x1c($sp)
branch_0x802c7010:
    jal     0x8007dae0
    nop
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x8d74
    bnez    $v0, branch_0x802c7030
    sw      $v0, 0x0($v1)
    addiu   $t0, $zero, 0x1
    sw      $t0, 0x1c($sp)
branch_0x802c7030:
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lw      $t1, 0x1c($sp)
branch_0x802c703c:
    beqzl   $t1, branch_0x802c7050
    or      $v0, $zero, $zero
    jal     0x800c3c0c
    addiu   $a0, $zero, 0x2
    or      $v0, $zero, $zero
branch_0x802c7050:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

Function_0x802c7060: # 0x802c7060
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x8d78
    lw      $v0, 0x0($v1)
    addiu   $at, $zero, 0x1
    lui     $a0, 0x802d
    beq     $v0, $at, branch_0x802c709c
    addiu   $a0, $a0, 0x8e98
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c70bc
    lui     $a0, 0x802d
    addiu   $at, $zero, 0x3
    beq     $v0, $at, branch_0x802c70e4
    nop
    jr      $ra
    nop
branch_0x802c709c:
    lw      $t6, 0x0($a0)
    addiu   $t7, $zero, 0x2
    slti    $at, $t6, 0x5
    bnez    $at, branch_0x802c7114
    nop
    sw      $t7, 0x0($v1)
    jr      $ra
    sw      $zero, 0x0($a0)
branch_0x802c70bc:
    addiu   $a0, $a0, 0x8e98
    lw      $t8, 0x0($a0)
    addiu   $t1, $zero, 0x3
    addiu   $t9, $t8, 0x1
    slti    $at, $t9, 0xa
    bnez    $at, branch_0x802c7114
    sw      $t9, 0x0($a0)
    sw      $t1, 0x0($v1)
    jr      $ra
    sw      $zero, 0x0($a0)
branch_0x802c70e4:
    lui     $v0, 0x802d
    addiu   $v0, $v0, 0x8dc0
    lw      $t2, 0x0($v0)
    lui     $a0, 0x802d
    addiu   $a0, $a0, 0x8e98
    addiu   $t3, $t2, 0x1
    slti    $at, $t3, 0x5b
    bnez    $at, branch_0x802c7114
    sw      $t3, 0x0($v0)
    sw      $zero, 0x0($v1)
    sw      $zero, 0x0($a0)
    sw      $zero, 0x0($v0)
branch_0x802c7114:
    jr      $ra
    nop

.globl Function_0x802c711c
Function_0x802c711c: # 0x802c711c
    lui     $a1, 0x801d
    lw      $a1, -0x1c60($a1)
    addiu   $sp, $sp, 0xfeb0
    sw      $ra, 0x3c($sp)
    or      $t3, $zero, $zero
    or      $t2, $zero, $zero
    beqz    $a1, branch_0x802c7140
    or      $t5, $zero, $zero
    addiu   $t5, $zero, 0x1
branch_0x802c7140:
    sltiu   $at, $a1, 0xc
    beqz    $at, branch_0x802c7198
    or      $t4, $zero, $zero
    sll     $t6, $a1, 2
    lui     $at, 0x802d
    addu    $at, $at, $t6
    lw      $t6, -0x71dc($at)
    jr      $t6
    nop

.globl Function_0x802c7164
Function_0x802c7164: # 0x802c7164
    b       branch_0x802c7198
    addiu   $t3, $zero, 0x1

.globl Function_0x802c716c
Function_0x802c716c: # 0x802c716c
    addiu   $t3, $zero, 0x1
    b       branch_0x802c7198
    addiu   $t2, $zero, 0x1

.globl Function_0x802c7178
Function_0x802c7178: # 0x802c7178
    addiu   $t3, $zero, 0x1
    b       branch_0x802c7198
    addiu   $t4, $zero, 0x1

.globl Function_0x802c7184
Function_0x802c7184: # 0x802c7184
    addiu   $t3, $zero, 0x1
    addiu   $t2, $zero, 0x1
    b       branch_0x802c7198
    addiu   $t4, $zero, 0x1

Function_0x802c7194: # 0x802c7194
    addiu   $t4, $zero, 0x1
branch_0x802c7198:
    or      $v0, $a0, $zero
    lui     $t7, 0x103
    ori     $t7, $t7, 0x40
    addiu   $a0, $a0, 0x8
    lui     $t8, 0x700
    addiu   $t8, $t8, 0x0
    sw      $t7, 0x0($v0)
    or      $a1, $a0, $zero
    sw      $t8, 0x4($v0)
    addiu   $a0, $a0, 0x8
    lui     $t9, 0x102
    lui     $t6, 0x200
    addiu   $t6, $t6, 0xa40
    ori     $t9, $t9, 0x40
    or      $a3, $a0, $zero
    sw      $t9, 0x0($a1)
    sw      $t6, 0x4($a1)
    lui     $t7, 0x107
    lui     $t1, 0x600
    addiu   $t7, $t7, 0xf550
    addiu   $a0, $a0, 0x8
    sw      $t7, 0x4($a3)
    sw      $t1, 0x0($a3)
    or      $t0, $a0, $zero
    lui     $ra, 0x107
    addiu   $ra, $ra, 0xf628
    sw      $ra, 0x4($t0)
    sw      $t1, 0x0($t0)
    addiu   $a0, $a0, 0x8
    sw      $ra, 0x40($sp)
    sb      $t5, 0x124($sp)
    sb      $t4, 0x123($sp)
    sb      $t3, 0x127($sp)
    sb      $t2, 0x126($sp)
    addiu   $a2, $zero, 0x1c
    addiu   $t8, $zero, 0x56
branch_0x802c7228:
    addiu   $t9, $zero, 0x10
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0x30
    jal     0x800940d8
    sw      $a2, 0x44($sp)
    lw      $a2, 0x44($sp)
    or      $a0, $v0, $zero
    addiu   $a2, $a2, 0x59
    slti    $at, $a2, 0x127
    bnezl   $at, branch_0x802c7228
    addiu   $t8, $zero, 0x56
    addiu   $t6, $zero, 0x108
    addiu   $t7, $zero, 0x28
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1c
    jal     0x800940d8
    addiu   $a3, $zero, 0x44
    lb      $t8, 0x127($sp)
    or      $a0, $v0, $zero
    beqz    $t8, branch_0x802c72d0
    addiu   $t9, $zero, 0x64
    addiu   $t6, $zero, 0x10
    sw      $t6, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x38
    jal     0x800940d8
    addiu   $a3, $zero, 0x70
    addiu   $t7, $zero, 0x64
    addiu   $t8, $zero, 0x10
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xa4
    jal     0x800940d8
    addiu   $a3, $zero, 0x70
    or      $a0, $v0, $zero
branch_0x802c72d0:
    lb      $t9, 0x126($sp)
    beqz    $t9, branch_0x802c72fc
    addiu   $t6, $zero, 0x108
    addiu   $t7, $zero, 0x32
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1c
    jal     0x800940d8
    addiu   $a3, $zero, 0x84
    or      $a0, $v0, $zero
branch_0x802c72fc:
    addiu   $a3, $zero, 0xba
    addiu   $t9, $zero, 0x64
    addiu   $t6, $zero, 0x10
    sw      $a3, 0x148($sp)
    sw      $t6, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a1, $zero, $zero
    jal     0x800940d8
    addiu   $a2, $zero, 0x38
    addiu   $t7, $zero, 0x64
    addiu   $t8, $zero, 0x10
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xa4
    jal     0x800940d8
    lw      $a3, 0x148($sp)
    lb      $t9, 0x126($sp)
    or      $a0, $v0, $zero
    beqz    $t9, branch_0x802c7368
    lui     $t6, 0x807
    lui     $t0, 0x600
    addiu   $t6, $t6, 0xfd08
    sw      $t6, 0x4($v0)
    sw      $t0, 0x0($v0)
    addiu   $a0, $v0, 0x8
branch_0x802c7368:
    lb      $t7, 0x126($sp)
    lui     $t0, 0x600
    beqzl   $t7, branch_0x802c7548
    or      $v0, $a0, $zero
    jal     0x8009389c
    nop
    lui     $t9, 0xff10
    lui     $t8, 0xe700
    ori     $t9, $t9, 0x13f
    sw      $t8, 0x0($v0)
    sw      $zero, 0x4($v0)
    sw      $t9, 0x8($v0)
    lui     $t6, 0x8015
    lw      $t6, 0x16a8($t6)
    lui     $t8, 0x8015
    lui     $at, 0x8000
    sll     $t7, $t6, 2
    addu    $t8, $t8, $t7
    lw      $t8, 0x4020($t8)
    lui     $t6, 0xb400
    sw      $t6, 0x10($v0)
    addu    $t9, $t8, $at
    sw      $t9, 0xc($v0)
    lui     $t7, 0x802d
    lhu     $t7, -0x7154($t7)
    lui     $t9, 0x700
    lui     $t8, 0x103
    sw      $t7, 0x14($v0)
    lui     $t7, 0x107
    ori     $t8, $t8, 0x40
    addiu   $t9, $t9, 0xa40
    addiu   $t7, $t7, 0xf488
    lui     $t6, 0x600
    sw      $t9, 0x1c($v0)
    sw      $t8, 0x18($v0)
    sw      $t6, 0x20($v0)
    sw      $t7, 0x24($v0)
    lui     $t8, 0x600
    lui     $t9, 0x807
    lui     $t7, 0x700
    lui     $t6, 0x102
    addiu   $t9, $t9, 0xfdd0
    sw      $t8, 0x28($v0)
    ori     $t6, $t6, 0x40
    addiu   $t7, $t7, 0xa80
    sw      $t9, 0x2c($v0)
    sw      $t7, 0x34($v0)
    sw      $t6, 0x30($v0)
    lui     $t8, 0x801d
    lw      $t8, -0x1ca8($t8)
    addiu   $a0, $v0, 0x38
    or      $a1, $zero, $zero
    addiu   $t9, $t8, 0xc80
    sw      $t9, 0x10($sp)
    or      $a2, $zero, $zero
    jal     0x801e4d48
    or      $a3, $zero, $zero
    lui     $t6, 0x600
    lui     $t7, 0x807
    lui     $t8, 0x102
    lui     $t9, 0x700
    addiu   $t7, $t7, 0xfde0
    sw      $t6, 0x0($v0)
    addiu   $t9, $t9, 0xac0
    ori     $t8, $t8, 0x40
    sw      $t7, 0x4($v0)
    sw      $t8, 0x8($v0)
    sw      $t9, 0xc($v0)
    lui     $t6, 0x801d
    lw      $t6, -0x1ca8($t6)
    addiu   $a0, $v0, 0x10
    addiu   $a1, $zero, 0x2
    addiu   $t7, $t6, 0xd40
    sw      $t7, 0x10($sp)
    or      $a2, $zero, $zero
    jal     0x801e4d48
    or      $a3, $zero, $zero
    lui     $t8, 0x600
    lui     $t9, 0x807
    lui     $t6, 0x102
    lui     $t7, 0x700
    addiu   $t9, $t9, 0xfdf0
    sw      $t8, 0x0($v0)
    addiu   $t7, $t7, 0xb00
    ori     $t6, $t6, 0x40
    sw      $t9, 0x4($v0)
    sw      $t6, 0x8($v0)
    sw      $t7, 0xc($v0)
    lui     $t8, 0x801d
    lw      $t8, -0x1ca8($t8)
    addiu   $a0, $v0, 0x10
    addiu   $a1, $zero, 0x3
    addiu   $t9, $t8, 0xe00
    sw      $t9, 0x10($sp)
    or      $a2, $zero, $zero
    jal     0x801e4d48
    or      $a3, $zero, $zero
    lui     $t6, 0x600
    lui     $t7, 0x807
    lui     $t8, 0x102
    lui     $t9, 0x700
    addiu   $t7, $t7, 0xfe00
    sw      $t6, 0x0($v0)
    addiu   $t9, $t9, 0xb40
    ori     $t8, $t8, 0x40
    sw      $t7, 0x4($v0)
    sw      $t8, 0x8($v0)
    sw      $t9, 0xc($v0)
    lui     $t6, 0x801d
    lw      $t6, -0x1ca8($t6)
    addiu   $a0, $v0, 0x10
    addiu   $a1, $zero, 0x1
    addiu   $t7, $t6, 0xec0
    sw      $t7, 0x10($sp)
    or      $a2, $zero, $zero
    jal     0x801e4d48
    or      $a3, $zero, $zero
    or      $a0, $v0, $zero
    lui     $t0, 0x600
    or      $v0, $a0, $zero
branch_0x802c7548:
    addiu   $a0, $a0, 0x8
    lui     $t8, 0x807
    addiu   $t8, $t8, 0xfab0
    or      $v1, $a0, $zero
    sw      $t8, 0x4($v0)
    sw      $t0, 0x0($v0)
    lui     $t9, 0x807
    addiu   $t9, $t9, 0xfb30
    addiu   $a0, $a0, 0x8
    sw      $t9, 0x4($v1)
    sw      $t0, 0x0($v1)
    or      $a1, $a0, $zero
    lui     $t6, 0x807
    addiu   $t6, $t6, 0xfb88
    sw      $t6, 0x4($a1)
    sw      $t0, 0x0($a1)
    lb      $t7, 0x124($sp)
    addiu   $a0, $a0, 0x8
    beqz    $t7, branch_0x802c77b4
    or      $v0, $a0, $zero
    lui     $t8, 0x807
    addiu   $t8, $t8, 0xfbe0
    sw      $t8, 0x4($v0)
    sw      $t0, 0x0($v0)
    lui     $t9, 0x802d
    lw      $t9, -0x72b0($t9)
    addiu   $a0, $a0, 0x8
    lui     $t6, 0x802d
    bnez    $t9, branch_0x802c7668
    lui     $a1, 0x801d
    lw      $t6, -0x72ac($t6)
    lui     $t1, 0xfa00
    or      $v0, $a0, $zero
    bnez    $t6, branch_0x802c75f0
    lui     $at, 0xff
    or      $v0, $a0, $zero
    lui     $t7, 0x807
    addiu   $t7, $t7, 0xfc08
    sw      $t7, 0x4($v0)
    sw      $t0, 0x0($v0)
    b       branch_0x802c7604
    addiu   $a0, $a0, 0x8
branch_0x802c75f0:
    lui     $t8, 0x807
    addiu   $t8, $t8, 0xfc68
    sw      $t8, 0x4($v0)
    addiu   $a0, $a0, 0x8
    sw      $t0, 0x0($v0)
branch_0x802c7604:
    or      $v1, $a0, $zero
    sw      $t1, 0x0($v1)
    lui     $v0, 0x802d
    lw      $v0, -0x7160($v0)
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    andi    $t9, $v0, 0xff
    sll     $t6, $t9, 24
    or      $t7, $t6, $at
    sll     $t8, $t9, 8
    or      $t9, $t7, $t8
    ori     $t6, $t9, 0xff
    sw      $t6, 0x4($v1)
    lui     $t7, 0x807
    addiu   $a0, $a0, 0x8
    addiu   $t7, $t7, 0xfc48
    or      $a2, $a0, $zero
    lui     $t8, 0x807
    sw      $t7, 0x4($a1)
    sw      $t0, 0x0($a1)
    addiu   $t8, $t8, 0xfca8
    sw      $t8, 0x4($a2)
    sw      $t0, 0x0($a2)
    b       branch_0x802c77b4
    addiu   $a0, $a0, 0x8
branch_0x802c7668:
    lui     $t9, 0x801d
    lw      $t9, -0x1c60($t9)
    lui     $t6, 0x802d
    beqzl   $t9, branch_0x802c76e0
    or      $v0, $a0, $zero
    lw      $t6, -0x72ac($t6)
    lui     $t1, 0xfa00
    or      $v0, $a0, $zero
    bnez    $t6, branch_0x802c76cc
    lui     $t9, 0x8080
    lui     $t1, 0xfa00
    or      $v1, $a0, $zero
    sw      $t1, 0x0($v1)
    lui     $v0, 0x802d
    lw      $v0, -0x7160($v0)
    lui     $at, 0xff
    addiu   $a0, $a0, 0x8
    andi    $t7, $v0, 0xff
    sll     $t8, $t7, 24
    or      $t9, $t8, $at
    sll     $t6, $t7, 8
    or      $t7, $t9, $t6
    ori     $t8, $t7, 0xff
    b       branch_0x802c76dc
    sw      $t8, 0x4($v1)
branch_0x802c76cc:
    ori     $t9, $t9, 0x80ff
    sw      $t9, 0x4($v0)
    addiu   $a0, $a0, 0x8
    sw      $t1, 0x0($v0)
branch_0x802c76dc:
    or      $v0, $a0, $zero
branch_0x802c76e0:
    lui     $t6, 0x807
    addiu   $t6, $t6, 0xfc08
    addiu   $a0, $a0, 0x8
    sw      $t6, 0x4($v0)
    sw      $t0, 0x0($v0)
    or      $v1, $a0, $zero
    lui     $t7, 0x807
    addiu   $t7, $t7, 0xfc48
    sw      $t7, 0x4($v1)
    sw      $t0, 0x0($v1)
    lw      $a1, -0x1c60($a1)
    lui     $t1, 0xfa00
    addiu   $a0, $a0, 0x8
    beqz    $a1, branch_0x802c7784
    lui     $t8, 0x802d
    lw      $t8, -0x72ac($t8)
    addiu   $at, $zero, 0x1
    or      $v0, $a0, $zero
    bne     $t8, $at, branch_0x802c7770
    lui     $t7, 0x4040
    beqz    $a1, branch_0x802c7770
    or      $v1, $a0, $zero
    sw      $t1, 0x0($v1)
    lui     $v0, 0x802d
    lw      $v0, -0x7160($v0)
    lui     $at, 0xff
    addiu   $a0, $a0, 0x8
    andi    $t9, $v0, 0xff
    sll     $t6, $t9, 24
    or      $t7, $t6, $at
    sll     $t8, $t9, 8
    or      $t9, $t7, $t8
    ori     $t6, $t9, 0xff
    sw      $t6, 0x4($v1)
    b       branch_0x802c7784
    lui     $t0, 0x600
branch_0x802c7770:
    ori     $t7, $t7, 0x40ff
    sw      $t7, 0x4($v0)
    addiu   $a0, $a0, 0x8
    sw      $t1, 0x0($v0)
    lui     $t0, 0x600
branch_0x802c7784:
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t8, 0x807
    addiu   $t8, $t8, 0xfc68
    or      $v1, $a0, $zero
    sw      $t8, 0x4($v0)
    sw      $t0, 0x0($v0)
    lui     $t9, 0x807
    addiu   $t9, $t9, 0xfca8
    sw      $t9, 0x4($v1)
    sw      $t0, 0x0($v1)
    addiu   $a0, $a0, 0x8
branch_0x802c77b4:
    lui     $t6, 0x801d
    lw      $t6, -0x1c60($t6)
    lui     $t1, 0xfa00
    beqz    $t6, branch_0x802c7898
    or      $v0, $a0, $zero
    lui     $t7, 0x807
    addiu   $t7, $t7, 0xfcc8
    sw      $t7, 0x4($v0)
    addiu   $a0, $a0, 0x8
    sw      $t0, 0x0($v0)
    or      $v1, $a0, $zero
    sw      $t1, 0x0($v1)
    lui     $t7, 0x802d
    lui     $t8, 0x802d
    lw      $t9, -0x715c($t8)
    lw      $t7, -0x7158($t7)
    addiu   $a0, $a0, 0x8
    sll     $t6, $t9, 24
    andi    $t8, $t7, 0xff
    sll     $t9, $t8, 16
    or      $t7, $t6, $t9
    ori     $t8, $t7, 0xff
    sw      $t8, 0x4($v1)
    lui     $t6, 0x802d
    lw      $t6, -0x72ac($t6)
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    bnez    $t6, branch_0x802c7830
    lui     $at, 0xe400
    b       branch_0x802c7834
    addiu   $a2, $zero, 0x18
branch_0x802c7830:
    addiu   $a2, $zero, 0xf8
branch_0x802c7834:
    addiu   $t9, $a2, 0x28
    sll     $t7, $t9, 2
    andi    $t8, $t7, 0xfff
    sll     $t6, $t8, 12
    or      $t9, $t6, $at
    ori     $t7, $t9, 0x1a0
    addiu   $t8, $a2, 0x8
    sll     $t6, $t8, 2
    andi    $t9, $t6, 0xfff
    sw      $t7, 0x0($v0)
    sll     $t7, $t9, 12
    ori     $t8, $t7, 0x120
    or      $v1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $t8, 0x4($v0)
    or      $a1, $a0, $zero
    lui     $t6, 0xb300
    sw      $t6, 0x0($v1)
    sw      $zero, 0x4($v1)
    lui     $t7, 0x400
    ori     $t7, $t7, 0x400
    lui     $t9, 0xb200
    sw      $t9, 0x0($a1)
    sw      $t7, 0x4($a1)
    addiu   $a0, $a0, 0x8
branch_0x802c7898:
    lb      $t8, 0x126($sp)
    beqz    $t8, branch_0x802c7a20
    or      $v1, $a0, $zero
    sw      $t1, 0x0($v1)
    lui     $v0, 0x802d
    lw      $v0, -0x7160($v0)
    lui     $at, 0xff
    addiu   $a0, $a0, 0x8
    andi    $t6, $v0, 0xff
    sll     $t9, $t6, 24
    or      $t7, $t9, $at
    sll     $t8, $t6, 8
    or      $t6, $t7, $t8
    ori     $t9, $t6, 0xff
    or      $a1, $a0, $zero
    sw      $t9, 0x4($v1)
    lui     $t8, 0x806
    lui     $t7, 0xfd68
    ori     $t7, $t7, 0x3e
    addiu   $t8, $t8, 0x1b10
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    sw      $t8, 0x4($a1)
    sw      $t7, 0x0($a1)
    lui     $t2, 0xf568
    addiu   $a0, $a0, 0x8
    lui     $t6, 0x708
    ori     $t2, $t2, 0x1000
    ori     $t6, $t6, 0x200
    or      $a3, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $t6, 0x4($a2)
    sw      $t2, 0x0($a2)
    or      $t0, $a0, $zero
    lui     $t9, 0xe600
    sw      $t9, 0x0($a3)
    sw      $zero, 0x4($a3)
    lui     $t8, 0x70f
    ori     $t8, $t8, 0x809c
    lui     $t7, 0xf400
    sw      $t7, 0x0($t0)
    sw      $t8, 0x4($t0)
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    lui     $t6, 0xe700
    sw      $t6, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t9, 0x8
    ori     $t9, $t9, 0x200
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    sw      $t9, 0x4($v1)
    sw      $t2, 0x0($v1)
    lui     $t8, 0xf
    ori     $t8, $t8, 0x809c
    lui     $t0, 0x802d
    lui     $t7, 0xf200
    sw      $t7, 0x0($a1)
    addiu   $t0, $t0, 0x8d5c
    sw      $t8, 0x4($a1)
    lw      $t6, 0x0($t0)
    addiu   $t1, $zero, 0x41
    lui     $at, 0xe400
    multu   $t6, $t1
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $a3, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    mflo    $t9
    addiu   $t7, $t9, 0x5e
    sll     $t8, $t7, 2
    andi    $t6, $t8, 0xfff
    sll     $t9, $t6, 12
    or      $t7, $t9, $at
    ori     $t8, $t7, 0x2c4
    sw      $t8, 0x0($a2)
    lw      $t6, 0x0($t0)
    multu   $t6, $t1
    mflo    $t9
    addiu   $t7, $t9, 0x1f
    sll     $t8, $t7, 2
    andi    $t6, $t8, 0xfff
    sll     $t9, $t6, 12
    ori     $t7, $t9, 0x224
    sw      $t7, 0x4($a2)
    lui     $t8, 0xb300
    sw      $t8, 0x0($a3)
    sw      $zero, 0x4($a3)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    lui     $t6, 0xb200
    sw      $t6, 0x0($v0)
    sw      $t9, 0x4($v0)
branch_0x802c7a20:
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x1c($sp)
    sw      $t9, 0x2c($sp)
    sw      $t6, 0x18($sp)
    sw      $t6, 0x28($sp)
    sw      $t8, 0x14($sp)
    sw      $t8, 0x24($sp)
    sw      $t8, 0x34($sp)
    sw      $t7, 0x10($sp)
    sw      $t7, 0x20($sp)
    sw      $t7, 0x30($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     0x801e91f4
    addiu   $a3, $zero, 0xff
    addiu   $t6, $zero, 0x16
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    or      $a2, $zero, $zero
    addiu   $a3, $zero, 0x42
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $t9, $zero, 0xce
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x4
    addiu   $a2, $zero, 0xc
    addiu   $a3, $zero, 0x57
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $t7, $zero, 0xce
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x4
    addiu   $a2, $zero, 0xd
    addiu   $a3, $zero, 0xa9
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    lui     $v1, 0x802d
    lw      $v1, -0x72b0($v1)
    lui     $t0, 0x802d
    lui     $a2, 0x802d
    sll     $t6, $v1, 2
    addu    $t0, $t0, $t6
    lw      $t0, -0x724c($t0)
    sll     $t8, $v1, 3
    addu    $a2, $a2, $t8
    addiu   $t9, $zero, 0x52
    lw      $a2, -0x7260($a2)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    sw      $zero, 0x14($sp)
    jal     0x801e3c40
    addiu   $a3, $t0, 0x8b
    addiu   $t7, $zero, 0x5f
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    or      $a2, $zero, $zero
    addiu   $a3, $zero, 0x43
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $t8, $zero, 0x5f
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1
    addiu   $a3, $zero, 0xa1
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    lui     $t0, 0x802d
    or      $a0, $v0, $zero
    addiu   $t0, $t0, 0x8d9c
    or      $v1, $zero, $zero
    or      $t1, $zero, $zero
branch_0x802c7b60:
    lui     $t6, 0x802d
    lw      $t6, -0x72b0($t6)
    addiu   $a2, $zero, 0xff
    addiu   $a3, $zero, 0xff
    bne     $v1, $t6, branch_0x802c7b80
    addiu   $t9, $zero, 0xff
    b       branch_0x802c7b84
    addiu   $a1, $zero, 0x6
branch_0x802c7b80:
    or      $a1, $zero, $zero
branch_0x802c7b84:
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t6, $zero, 0xff
    sw      $t6, 0x1c($sp)
    sw      $t6, 0x2c($sp)
    sw      $t8, 0x18($sp)
    sw      $t8, 0x28($sp)
    sw      $t7, 0x14($sp)
    sw      $t7, 0x24($sp)
    sw      $t7, 0x34($sp)
    sw      $t9, 0x10($sp)
    sw      $t9, 0x20($sp)
    sw      $t9, 0x30($sp)
    sw      $v1, 0x14c($sp)
    sw      $t0, 0x11c($sp)
    jal     0x801e91f4
    sw      $t1, 0x44($sp)
    lw      $t0, 0x11c($sp)
    lw      $t1, 0x44($sp)
    addiu   $t6, $zero, 0x33
    lh      $t8, 0x0($t0)
    lw      $a2, 0x4($t0)
    sw      $zero, 0x14($sp)
    addu    $a3, $t1, $t8
    addiu   $a3, $a3, 0x35
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    jal     0x801e3c40
    addiu   $a1, $zero, 0x1
    lw      $v1, 0x14c($sp)
    lw      $t0, 0x11c($sp)
    lw      $t1, 0x44($sp)
    addiu   $at, $zero, 0x3
    addiu   $v1, $v1, 0x1
    or      $a0, $v0, $zero
    addiu   $t0, $t0, 0x8
    bne     $v1, $at, branch_0x802c7b60
    addiu   $t1, $t1, 0x59
    lb      $t9, 0x127($sp)
    lui     $t7, 0x802d
    addiu   $a2, $zero, 0xff
    beqz    $t9, branch_0x802c7d1c
    addiu   $a3, $zero, 0xff
    lw      $t7, -0x72a8($t7)
    or      $a1, $zero, $zero
    addiu   $t6, $zero, 0xff
    bnez    $t7, branch_0x802c7c50
    addiu   $t9, $zero, 0xff
    addiu   $a1, $zero, 0x6
    b       branch_0x802c7c58
    sw      $zero, 0x128($sp)
branch_0x802c7c50:
    addiu   $t8, $zero, 0x6
    sw      $t8, 0x128($sp)
branch_0x802c7c58:
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x1c($sp)
    sw      $t8, 0x2c($sp)
    sw      $t7, 0x18($sp)
    sw      $t7, 0x28($sp)
    sw      $t6, 0x10($sp)
    sw      $t9, 0x14($sp)
    sw      $t6, 0x20($sp)
    sw      $t9, 0x24($sp)
    sw      $t6, 0x30($sp)
    jal     0x801e91f4
    sw      $t9, 0x34($sp)
    addiu   $t7, $zero, 0x73
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x2
    addiu   $a3, $zero, 0x44
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $t8, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x1c($sp)
    sw      $t7, 0x2c($sp)
    sw      $t9, 0x18($sp)
    sw      $t9, 0x28($sp)
    sw      $t6, 0x14($sp)
    sw      $t6, 0x24($sp)
    sw      $t6, 0x34($sp)
    sw      $t8, 0x10($sp)
    sw      $t8, 0x20($sp)
    sw      $t8, 0x30($sp)
    or      $a0, $v0, $zero
    lw      $a1, 0x128($sp)
    addiu   $a2, $zero, 0xff
    jal     0x801e91f4
    addiu   $a3, $zero, 0xff
    addiu   $t9, $zero, 0x73
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x40
    addiu   $a3, $zero, 0xaa
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    or      $a0, $v0, $zero
branch_0x802c7d1c:
    lb      $t7, 0x123($sp)
    addiu   $t9, $zero, 0x7
    addiu   $a2, $zero, 0x80
    beqz    $t7, branch_0x802c7d5c
    addiu   $a3, $zero, 0x80
    lui     $t8, 0x802d
    lw      $t8, -0x7290($t8)
    or      $a1, $zero, $zero
    addiu   $t6, $zero, 0x6
    bnez    $t8, branch_0x802c7d54
    nop
    addiu   $a1, $zero, 0x6
    b       branch_0x802c7d64
    sw      $zero, 0x128($sp)
branch_0x802c7d54:
    b       branch_0x802c7d64
    sw      $t6, 0x128($sp)
branch_0x802c7d5c:
    sw      $t9, 0x128($sp)
    addiu   $a1, $zero, 0x7
branch_0x802c7d64:
    addiu   $t7, $zero, 0x80
    sw      $t7, 0x10($sp)
    addiu   $t8, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x1c($sp)
    sw      $t9, 0x2c($sp)
    sw      $t6, 0x18($sp)
    sw      $t6, 0x28($sp)
    sw      $t7, 0x20($sp)
    sw      $t7, 0x30($sp)
    sw      $t8, 0x14($sp)
    sw      $t8, 0x24($sp)
    jal     0x801e91f4
    sw      $t8, 0x34($sp)
    lw      $v1, 0x148($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $v1, $v1, 0x3
    sw      $v1, 0x10($sp)
    sw      $v1, 0x44($sp)
    addiu   $a2, $zero, 0x4
    addiu   $a3, $zero, 0x4c
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $t6, $zero, 0x80
    sw      $t6, 0x10($sp)
    addiu   $t9, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x1c($sp)
    sw      $t8, 0x2c($sp)
    sw      $t7, 0x18($sp)
    sw      $t7, 0x28($sp)
    sw      $t6, 0x20($sp)
    sw      $t6, 0x30($sp)
    sw      $t9, 0x14($sp)
    sw      $t9, 0x24($sp)
    sw      $t9, 0x34($sp)
    or      $a0, $v0, $zero
    lw      $a1, 0x128($sp)
    addiu   $a2, $zero, 0x80
    jal     0x801e91f4
    addiu   $a3, $zero, 0x80
    lw      $t7, 0x44($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x5
    addiu   $a3, $zero, 0xbb
    sw      $zero, 0x14($sp)
    jal     0x801e3c40
    sw      $t7, 0x10($sp)
    lui     $t8, 0x802d
    lw      $t8, -0x7238($t8)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    beqz    $t8, branch_0x802c7ea4
    or      $a2, $zero, $zero
    addiu   $t6, $zero, 0xff
    sw      $t6, 0x10($sp)
    jal     0x801e7bd4
    or      $a3, $zero, $zero
    lui     $t0, 0x802d
    lui     $t7, 0x802d
    lw      $t7, -0x7144($t7)
    lw      $t0, -0x714c($t0)
    lui     $v1, 0x802d
    lw      $v1, -0x7150($v1)
    lui     $t9, 0x802d
    lw      $t9, -0x7148($t9)
    addu    $t8, $t0, $t7
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a2, $t0, $zero
    or      $a1, $v1, $zero
    jal     0x801e7d38
    addu    $a3, $v1, $t9
    or      $a0, $v0, $zero
branch_0x802c7ea4:
    lui     $t6, 0x802d
    lw      $t6, -0x722c($t6)
    or      $v0, $a0, $zero
    lui     $t9, 0x600
    beqz    $t6, branch_0x802c8008
    or      $a1, $zero, $zero
    sw      $t9, 0x0($v0)
    lw      $t7, 0x40($sp)
    addiu   $t8, $zero, 0x64
    addiu   $t6, $zero, 0x10
    sw      $t7, 0x4($v0)
    addiu   $a0, $a0, 0x8
    sw      $t6, 0x14($sp)
    sw      $t8, 0x10($sp)
    addiu   $a2, $zero, 0x38
    jal     0x800940d8
    addiu   $a3, $zero, 0x93
    addiu   $t9, $zero, 0x64
    addiu   $t7, $zero, 0x10
    sw      $t7, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xa4
    jal     0x800940d8
    addiu   $a3, $zero, 0x93
    lui     $t8, 0x802d
    lw      $t8, -0x723c($t8)
    or      $a0, $v0, $zero
    addiu   $a2, $zero, 0xff
    bnez    $t8, branch_0x802c7f30
    addiu   $a3, $zero, 0xff
    addiu   $a1, $zero, 0x6
    b       branch_0x802c7f3c
    sw      $zero, 0x130($sp)
branch_0x802c7f30:
    addiu   $t6, $zero, 0x6
    or      $a1, $zero, $zero
    sw      $t6, 0x130($sp)
branch_0x802c7f3c:
    addiu   $t9, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t6, $zero, 0xff
    sw      $t6, 0x1c($sp)
    sw      $t6, 0x2c($sp)
    sw      $t8, 0x18($sp)
    sw      $t8, 0x28($sp)
    sw      $t7, 0x14($sp)
    sw      $t7, 0x24($sp)
    sw      $t7, 0x34($sp)
    sw      $t9, 0x10($sp)
    sw      $t9, 0x20($sp)
    jal     0x801e91f4
    sw      $t9, 0x30($sp)
    addiu   $t8, $zero, 0x96
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x26
    addiu   $a3, $zero, 0x54
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    addiu   $t6, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x1c($sp)
    sw      $t8, 0x2c($sp)
    sw      $t7, 0x18($sp)
    sw      $t7, 0x28($sp)
    sw      $t9, 0x14($sp)
    sw      $t9, 0x24($sp)
    sw      $t9, 0x34($sp)
    sw      $t6, 0x10($sp)
    sw      $t6, 0x20($sp)
    sw      $t6, 0x30($sp)
    or      $a0, $v0, $zero
    lw      $a1, 0x130($sp)
    addiu   $a2, $zero, 0xff
    jal     0x801e91f4
    addiu   $a3, $zero, 0xff
    addiu   $t7, $zero, 0x96
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x27
    addiu   $a3, $zero, 0xc0
    jal     0x801e3c40
    sw      $zero, 0x14($sp)
    or      $a0, $v0, $zero
branch_0x802c8008:
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x8d84
    lw      $v0, 0x0($t0)
    addiu   $at, $zero, 0x1
    lui     $v1, 0x802d
    beq     $v0, $at, branch_0x802c8044
    addiu   $v1, $v1, 0x8e98
    addiu   $at, $zero, 0x5
    beq     $v0, $at, branch_0x802c8100
    or      $a1, $zero, $zero
    addiu   $at, $zero, 0x6
    beql    $v0, $at, branch_0x802c8104
    addiu   $t7, $zero, 0xff
    b       branch_0x802c819c
    lw      $ra, 0x3c($sp)
branch_0x802c8044:
    lw      $t8, 0x0($v1)
    addiu   $at, $zero, 0x5
    addiu   $t7, $zero, 0x1c
    addiu   $t6, $t8, 0x1
    sll     $t1, $t6, 2
    addu    $t1, $t1, $t6
    sll     $t1, $t1, 2
    div     $zero, $t1, $at
    mflo    $t1
    slti    $at, $t6, 0x5
    bnez    $at, branch_0x802c8098
    sw      $t6, 0x0($v1)
    lui     $at, 0x802d
    sw      $t7, -0x7170($at)
    lui     $at, 0x802d
    addiu   $t8, $zero, 0x44
    sw      $t8, -0x716c($at)
    addiu   $t6, $zero, 0x5
    sw      $t6, 0x0($t0)
    b       branch_0x802c80a8
    sw      $zero, 0x0($v1)
branch_0x802c8098:
    addiu   $t9, $zero, 0x58
    subu    $t7, $t9, $t1
    lui     $at, 0x802d
    sw      $t7, -0x716c($at)
branch_0x802c80a8:
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x10($sp)
    or      $a1, $zero, $zero
    or      $a2, $zero, $zero
    or      $a3, $zero, $zero
    jal     0x801e7bd4
    sw      $t1, 0x13c($sp)
    lw      $t1, 0x13c($sp)
    lui     $t0, 0x802d
    lw      $t0, -0x716c($t0)
    lui     $v1, 0x802d
    lw      $v1, -0x7170($v1)
    sll     $t6, $t1, 1
    addu    $t9, $t6, $t0
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a2, $t0, $zero
    or      $a1, $v1, $zero
    jal     0x801e7d38
    addiu   $a3, $v1, 0x108
    b       branch_0x802c8198
    or      $a0, $v0, $zero
branch_0x802c8100:
    addiu   $t7, $zero, 0xff
branch_0x802c8104:
    sw      $t7, 0x10($sp)
    or      $a2, $zero, $zero
    jal     0x801e7bd4
    or      $a3, $zero, $zero
    lui     $t0, 0x802d
    lw      $t0, -0x716c($t0)
    lui     $v1, 0x802d
    lw      $v1, -0x7170($v1)
    addiu   $t8, $t0, 0x28
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a2, $t0, $zero
    or      $a1, $v1, $zero
    jal     0x801e7d38
    addiu   $a3, $v1, 0x108
    or      $a0, $v0, $zero
    jal     Function_0x802c8484
    addiu   $a1, $zero, 0x1
    lui     $a1, 0x802d
    addiu   $a1, $a1, 0x8d84
    lw      $t6, 0x0($a1)
    addiu   $at, $zero, 0x5
    or      $a0, $v0, $zero
    bne     $t6, $at, branch_0x802c8190
    addiu   $t9, $zero, 0x1
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x8e98
    lw      $t9, 0x0($v1)
    addiu   $t6, $zero, 0x6
    addiu   $t7, $t9, 0x1
    slti    $at, $t7, 0x2
    bnez    $at, branch_0x802c8198
    sw      $t7, 0x0($v1)
    b       branch_0x802c8198
    sw      $t6, 0x0($a1)
branch_0x802c8190:
    lui     $at, 0x802d
    sw      $t9, -0x7280($at)
branch_0x802c8198:
    lw      $ra, 0x3c($sp)
branch_0x802c819c:
    addiu   $sp, $sp, 0x150
    or      $v0, $a0, $zero
    jr      $ra
    nop

.globl Function_0x802c81ac
Function_0x802c81ac: # 0x802c81ac
    lui     $at, 0x802d
    sw      $zero, -0x727c($at)
    addiu   $v1, $zero, 0x1
    lui     $at, 0x802d
    sw      $v1, -0x7288($at)
    lui     $at, 0x802d
    addiu   $t6, $zero, 0x1c
    sw      $t6, -0x7170($at)
    lui     $at, 0x802d
    addiu   $t7, $zero, 0x44
    sw      $t7, -0x716c($at)
    lui     $at, 0x802d
    sw      $zero, -0x7168($at)
    addiu   $t8, $a0, 0xffff
    addiu   $sp, $sp, 0xffe8
    sltiu   $at, $t8, 0x6
    sw      $ra, 0x14($sp)
    beqz    $at, branch_0x802c8284
    or      $v0, $zero, $zero
    sll     $t8, $t8, 2
    lui     $at, 0x802d
    addu    $at, $at, $t8
    lw      $t8, -0x71ac($at)
    jr      $t8
    nop

.globl Function_0x802c8210
Function_0x802c8210: # 0x802c8210
    addiu   $t9, $zero, 0x4
    lui     $at, 0x802d
    addiu   $v0, $zero, 0x1
    b       branch_0x802c8284
    sw      $t9, -0x7164($at)

.globl Function_0x802c8224
Function_0x802c8224: # 0x802c8224
    addiu   $t0, $zero, 0x6
    lui     $at, 0x802d
    addiu   $v0, $zero, 0x1
    b       branch_0x802c8284
    sw      $t0, -0x7164($at)

.globl Function_0x802c8238
Function_0x802c8238: # 0x802c8238
    lui     $at, 0x802d
    addiu   $v0, $zero, 0x1
    b       branch_0x802c8284
    sw      $zero, -0x7164($at)

.globl Function_0x802c8248
Function_0x802c8248: # 0x802c8248
    addiu   $t1, $zero, 0x2
    lui     $at, 0x802d
    addiu   $v0, $zero, 0x1
    b       branch_0x802c8284
    sw      $t1, -0x7164($at)

.globl Function_0x802c825c
Function_0x802c825c: # 0x802c825c
    lui     $t2, 0x802d
    lw      $t2, -0x72b0($t2)
    or      $v0, $v1, $zero
    addiu   $t3, $zero, 0x3
    bnez    $t2, branch_0x802c8280
    lui     $at, 0x802d
    lui     $at, 0x802d
    b       branch_0x802c8284
    sw      $v1, -0x7164($at)
branch_0x802c8280:
    sw      $t3, -0x7164($at)
branch_0x802c8284:
    beqzl   $v0, branch_0x802c8298
    lw      $ra, 0x14($sp)
    jal     0x800c3c0c
    or      $a0, $zero, $zero
    lw      $ra, 0x14($sp)
branch_0x802c8298:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c82a4
Function_0x802c82a4: # 0x802c82a4
    lui     $at, 0x802d
    sw      $zero, -0x7280($at)
    lui     $at, 0x802d
    addiu   $t6, $zero, 0x1
    sw      $t6, -0x727c($at)
    lui     $at, 0x802d
    addiu   $t7, $zero, 0x1c
    sw      $t7, -0x7170($at)
    lui     $at, 0x802d
    addiu   $t8, $zero, 0x44
    sw      $t8, -0x716c($at)
    lui     $at, 0x802d
    sw      $zero, -0x7168($at)
    addiu   $at, $zero, 0x2
    beq     $a0, $at, branch_0x802c8304
    addiu   $t9, $zero, 0x5
    addiu   $at, $zero, 0x3
    beq     $a0, $at, branch_0x802c8310
    addiu   $t0, $zero, 0x7
    addiu   $at, $zero, 0x4
    beq     $a0, $at, branch_0x802c831c
    addiu   $t1, $zero, 0x8
    jr      $ra
    nop
branch_0x802c8304:
    lui     $at, 0x802d
    jr      $ra
    sw      $t9, -0x7164($at)
branch_0x802c8310:
    lui     $at, 0x802d
    jr      $ra
    sw      $t0, -0x7164($at)
branch_0x802c831c:
    lui     $at, 0x802d
    sw      $t1, -0x7164($at)
    jr      $ra
    nop

.globl Function_0x802c832c
Function_0x802c832c: # 0x802c832c
    lui     $v0, 0x802d
    lw      $v0, -0x7288($v0)
    addiu   $sp, $sp, 0xffd8
    addiu   $at, $zero, 0x1
    beq     $v0, $at, branch_0x802c836c
    sw      $ra, 0x1c($sp)
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c8420
    or      $a1, $zero, $zero
    addiu   $at, $zero, 0x3
    beq     $v0, $at, branch_0x802c8420
    addiu   $at, $zero, 0x5
    beql    $v0, $at, branch_0x802c8424
    addiu   $t8, $zero, 0xff
    b       branch_0x802c8474
    lw      $ra, 0x1c($sp)
branch_0x802c836c:
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x8e98
    lw      $t6, 0x0($v1)
    addiu   $at, $zero, 0x5
    addiu   $t3, $zero, 0x58
    addiu   $t7, $t6, 0x1
    sll     $t1, $t7, 2
    addu    $t1, $t1, $t7
    sll     $t1, $t1, 2
    div     $zero, $t1, $at
    mflo    $t1
    slti    $at, $t7, 0x5
    bnez    $at, branch_0x802c83bc
    sw      $t7, 0x0($v1)
    addiu   $t9, $zero, 0x1c
    lui     $at, 0x802d
    sw      $t9, -0x7170($at)
    lui     $at, 0x802d
    addiu   $t2, $zero, 0x44
    sw      $t2, -0x716c($at)
branch_0x802c83bc:
    subu    $t4, $t3, $t1
    lui     $at, 0x802d
    addiu   $t5, $zero, 0xff
    sw      $t4, -0x716c($at)
    sw      $t5, 0x10($sp)
    or      $a1, $zero, $zero
    or      $a2, $zero, $zero
    or      $a3, $zero, $zero
    jal     0x801e7bd4
    sw      $t1, 0x24($sp)
    lw      $t1, 0x24($sp)
    lui     $t0, 0x802d
    lw      $t0, -0x716c($t0)
    lui     $v1, 0x802d
    lw      $v1, -0x7170($v1)
    sll     $t6, $t1, 1
    addu    $t7, $t6, $t0
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a2, $t0, $zero
    or      $a1, $v1, $zero
    jal     0x801e7d38
    addiu   $a3, $v1, 0x108
    b       branch_0x802c8470
    or      $a0, $v0, $zero
branch_0x802c8420:
    addiu   $t8, $zero, 0xff
branch_0x802c8424:
    sw      $t8, 0x10($sp)
    or      $a2, $zero, $zero
    jal     0x801e7bd4
    or      $a3, $zero, $zero
    lui     $t0, 0x802d
    lw      $t0, -0x716c($t0)
    lui     $v1, 0x802d
    lw      $v1, -0x7170($v1)
    addiu   $t9, $t0, 0x28
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a2, $t0, $zero
    or      $a1, $v1, $zero
    jal     0x801e7d38
    addiu   $a3, $v1, 0x108
    or      $a0, $v0, $zero
    jal     Function_0x802c8484
    or      $a1, $zero, $zero
    or      $a0, $v0, $zero
branch_0x802c8470:
    lw      $ra, 0x1c($sp)
branch_0x802c8474:
    addiu   $sp, $sp, 0x28
    or      $v0, $a0, $zero
    jr      $ra
    nop

.globl Function_0x802c8484
Function_0x802c8484: # 0x802c8484
    addiu   $sp, $sp, 0xff98
    sw      $s0, 0x40($sp)
    or      $s0, $a0, $zero
    sw      $ra, 0x64($sp)
    sw      $fp, 0x60($sp)
    sw      $s7, 0x5c($sp)
    sw      $s6, 0x58($sp)
    sw      $s5, 0x54($sp)
    sw      $s4, 0x50($sp)
    sw      $s3, 0x4c($sp)
    sw      $s2, 0x48($sp)
    bnez    $a1, branch_0x802c8508
    sw      $s1, 0x44($sp)
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x1c($sp)
    sw      $t9, 0x2c($sp)
    sw      $t8, 0x18($sp)
    sw      $t8, 0x28($sp)
    sw      $t7, 0x14($sp)
    sw      $t7, 0x24($sp)
    sw      $t7, 0x34($sp)
    sw      $t6, 0x10($sp)
    sw      $t6, 0x20($sp)
    sw      $t6, 0x30($sp)
    addiu   $a1, $zero, 0x4
    addiu   $a2, $zero, 0xff
    jal     0x801e91f4
    addiu   $a3, $zero, 0xff
    b       branch_0x802c8558
    or      $s0, $v0, $zero
branch_0x802c8508:
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x1c($sp)
    sw      $t7, 0x2c($sp)
    sw      $t6, 0x18($sp)
    sw      $t6, 0x28($sp)
    sw      $t9, 0x14($sp)
    sw      $t9, 0x24($sp)
    sw      $t9, 0x34($sp)
    sw      $t8, 0x10($sp)
    sw      $t8, 0x20($sp)
    sw      $t8, 0x30($sp)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     0x801e91f4
    addiu   $a3, $zero, 0xff
    or      $s0, $v0, $zero
branch_0x802c8558:
    lui     $t6, 0x802d
    lw      $t6, -0x7164($t6)
    sltiu   $at, $t6, 0x9
    beqz    $at, branch_0x802c8c88
    sll     $t6, $t6, 2
    lui     $at, 0x802d
    addu    $at, $at, $t6
    lw      $t6, -0x7194($at)
    jr      $t6
    nop

.globl Function_0x802c8580
Function_0x802c8580: # 0x802c8580
    lui     $t0, 0x807
    lui     $fp, 0x73f
    lui     $s7, 0xfd68
    lui     $s6, 0x400
    lui     $s2, 0x8
    lui     $t4, 0x708
    lui     $t3, 0xf568
    ori     $t3, $t3, 0x4000
    ori     $t4, $t4, 0x200
    ori     $s2, $s2, 0x200
    ori     $s6, $s6, 0x400
    ori     $s7, $s7, 0xff
    ori     $fp, $fp, 0xc038
    addiu   $t0, $t0, 0xaa78
    addiu   $a3, $zero, 0x58
    addiu   $a2, $zero, 0x49
    lui     $s5, 0xb200
    lui     $s4, 0xb300
    lui     $s3, 0xf200
    lui     $s1, 0xe700
    lui     $ra, 0xf400
    lui     $t5, 0xe600
branch_0x802c85d8:
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    sw      $s7, 0x0($v0)
    sw      $t0, 0x4($v0)
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    sw      $t4, 0x4($v1)
    sw      $t3, 0x0($v1)
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($a0)
    sw      $t5, 0x0($a0)
    or      $t1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $fp, 0x4($a1)
    sw      $ra, 0x0($a1)
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($t1)
    sw      $s1, 0x0($t1)
    or      $v1, $s0, $zero
    lui     $t7, 0x3f
    ori     $t7, $t7, 0xc038
    sw      $s2, 0x4($v0)
    sw      $t3, 0x0($v0)
    sll     $t8, $a3, 2
    sw      $t7, 0x4($v1)
    addiu   $s0, $s0, 0x8
    andi    $t9, $t8, 0xfff
    lui     $at, 0xe448
    or      $t6, $t9, $at
    or      $a0, $s0, $zero
    sll     $t7, $a2, 2
    sw      $s3, 0x0($v1)
    andi    $t8, $t7, 0xfff
    addiu   $s0, $s0, 0x8
    lui     $at, 0x8
    or      $t9, $t8, $at
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $t9, 0x4($a0)
    sw      $t6, 0x0($a0)
    or      $t2, $s0, $zero
    addiu   $at, $zero, 0x67
    addiu   $a2, $a2, 0xf
    sw      $zero, 0x4($a1)
    sw      $s4, 0x0($a1)
    addiu   $a3, $a3, 0xf
    addiu   $t0, $t0, 0xf00
    sw      $s6, 0x4($t2)
    sw      $s5, 0x0($t2)
    bne     $a2, $at, branch_0x802c85d8
    addiu   $s0, $s0, 0x8
    b       branch_0x802c8c8c
    lw      $ra, 0x64($sp)

.globl Function_0x802c86bc
Function_0x802c86bc: # 0x802c86bc
    addiu   $t6, $zero, 0x50
    addiu   $t7, $zero, 0x2
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x3
    addiu   $a2, $zero, 0x7
    jal     0x801e3c40
    addiu   $a3, $zero, 0x48
    b       branch_0x802c8c88
    or      $s0, $v0, $zero

.globl Function_0x802c86e8
Function_0x802c86e8: # 0x802c86e8
    addiu   $t8, $zero, 0x50
    addiu   $t9, $zero, 0x2
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x3
    addiu   $a2, $zero, 0x9
    jal     0x801e3c40
    addiu   $a3, $zero, 0x44
    b       branch_0x802c8c88
    or      $s0, $v0, $zero

.globl Function_0x802c8714
Function_0x802c8714: # 0x802c8714
    lui     $t0, 0x807
    lui     $fp, 0x72f
    lui     $s7, 0xfd68
    lui     $s6, 0x400
    lui     $s2, 0x8
    lui     $t4, 0x708
    lui     $t3, 0xf568
    ori     $t3, $t3, 0x3000
    ori     $t4, $t4, 0x200
    ori     $s2, $s2, 0x200
    ori     $s6, $s6, 0x400
    ori     $s7, $s7, 0xbf
    ori     $fp, $fp, 0xc038
    addiu   $t0, $t0, 0xc880
    addiu   $a3, $zero, 0x58
    addiu   $a2, $zero, 0x49
    lui     $s5, 0xb200
    lui     $s4, 0xb300
    lui     $s3, 0xf200
    lui     $s1, 0xe700
    lui     $ra, 0xf400
    lui     $t5, 0xe600
branch_0x802c876c:
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    sw      $s7, 0x0($v0)
    sw      $t0, 0x4($v0)
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    sw      $t4, 0x4($v1)
    sw      $t3, 0x0($v1)
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($a0)
    sw      $t5, 0x0($a0)
    or      $t1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $fp, 0x4($a1)
    sw      $ra, 0x0($a1)
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($t1)
    sw      $s1, 0x0($t1)
    or      $v1, $s0, $zero
    lui     $t6, 0x2f
    sll     $t7, $a3, 2
    lui     $at, 0xe440
    ori     $t6, $t6, 0xc038
    sw      $s2, 0x4($v0)
    sw      $t3, 0x0($v0)
    ori     $at, $at, 0xc000
    andi    $t8, $t7, 0xfff
    sw      $t6, 0x4($v1)
    addiu   $s0, $s0, 0x8
    or      $t9, $t8, $at
    lui     $at, 0x10
    or      $a0, $s0, $zero
    sll     $t6, $a2, 2
    sw      $s3, 0x0($v1)
    andi    $t7, $t6, 0xfff
    addiu   $s0, $s0, 0x8
    ori     $at, $at, 0xc000
    or      $t8, $t7, $at
    or      $a1, $s0, $zero
    sw      $t9, 0x0($a0)
    addiu   $s0, $s0, 0x8
    sw      $t8, 0x4($a0)
    lui     $t9, 0x807
    or      $t2, $s0, $zero
    addiu   $t9, $t9, 0xdf00
    addiu   $t0, $t0, 0xb40
    sw      $zero, 0x4($a1)
    sw      $s4, 0x0($a1)
    addiu   $a2, $a2, 0xf
    addiu   $a3, $a3, 0xf
    sw      $s6, 0x4($t2)
    sw      $s5, 0x0($t2)
    bne     $t0, $t9, branch_0x802c876c
    addiu   $s0, $s0, 0x8
    b       branch_0x802c8c8c
    lw      $ra, 0x64($sp)

.globl Function_0x802c885c
Function_0x802c885c: # 0x802c885c
    lui     $t0, 0x807
    lui     $fp, 0x73b
    lui     $s7, 0xfd68
    lui     $s6, 0x400
    lui     $s2, 0x8
    lui     $t4, 0x708
    lui     $t3, 0xf568
    ori     $t3, $t3, 0x3c00
    ori     $t4, $t4, 0x200
    ori     $s2, $s2, 0x200
    ori     $s6, $s6, 0x400
    ori     $s7, $s7, 0xef
    ori     $fp, $fp, 0xc038
    addiu   $t0, $t0, 0x8e50
    addiu   $a3, $zero, 0x58
    addiu   $a2, $zero, 0x49
    lui     $s5, 0xb200
    lui     $s4, 0xb300
    lui     $s3, 0xf200
    lui     $s1, 0xe700
    lui     $ra, 0xf400
    lui     $t5, 0xe600
branch_0x802c88b4:
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    sw      $s7, 0x0($v0)
    sw      $t0, 0x4($v0)
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    sw      $t4, 0x4($v1)
    sw      $t3, 0x0($v1)
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($a0)
    sw      $t5, 0x0($a0)
    or      $t1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $fp, 0x4($a1)
    sw      $ra, 0x0($a1)
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($t1)
    sw      $s1, 0x0($t1)
    or      $v1, $s0, $zero
    lui     $t6, 0x3b
    sll     $t7, $a3, 2
    lui     $at, 0xe447
    ori     $t6, $t6, 0xc038
    sw      $s2, 0x4($v0)
    sw      $t3, 0x0($v0)
    ori     $at, $at, 0x8000
    andi    $t8, $t7, 0xfff
    sw      $t6, 0x4($v1)
    addiu   $s0, $s0, 0x8
    or      $t9, $t8, $at
    lui     $at, 0xb
    or      $a0, $s0, $zero
    sll     $t6, $a2, 2
    sw      $s3, 0x0($v1)
    andi    $t7, $t6, 0xfff
    addiu   $s0, $s0, 0x8
    ori     $at, $at, 0x8000
    or      $t8, $t7, $at
    or      $a1, $s0, $zero
    sw      $t9, 0x0($a0)
    addiu   $s0, $s0, 0x8
    sw      $t8, 0x4($a0)
    lui     $t9, 0x807
    or      $t2, $s0, $zero
    addiu   $t9, $t9, 0xaa70
    addiu   $t0, $t0, 0xe10
    sw      $zero, 0x4($a1)
    sw      $s4, 0x0($a1)
    addiu   $a2, $a2, 0xf
    addiu   $a3, $a3, 0xf
    sw      $s6, 0x4($t2)
    sw      $s5, 0x0($t2)
    bne     $t0, $t9, branch_0x802c88b4
    addiu   $s0, $s0, 0x8
    b       branch_0x802c8c8c
    lw      $ra, 0x64($sp)

.globl Function_0x802c89a4
Function_0x802c89a4: # 0x802c89a4
    lui     $t0, 0x806
    lui     $fp, 0x73f
    lui     $s7, 0xfd68
    lui     $s6, 0x400
    lui     $s2, 0x8
    lui     $t4, 0x708
    lui     $t3, 0xf568
    ori     $t3, $t3, 0x4000
    ori     $t4, $t4, 0x200
    ori     $s2, $s2, 0x200
    ori     $s6, $s6, 0x400
    ori     $s7, $s7, 0xff
    ori     $fp, $fp, 0xc038
    addiu   $t0, $t0, 0x7048
    addiu   $a3, $zero, 0x58
    addiu   $a2, $zero, 0x49
    lui     $s5, 0xb200
    lui     $s4, 0xb300
    lui     $s3, 0xf200
    lui     $s1, 0xe700
    lui     $ra, 0xf400
    lui     $t5, 0xe600
branch_0x802c89fc:
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    sw      $s7, 0x0($v0)
    sw      $t0, 0x4($v0)
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    sw      $t4, 0x4($v1)
    sw      $t3, 0x0($v1)
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($a0)
    sw      $t5, 0x0($a0)
    or      $t1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $fp, 0x4($a1)
    sw      $ra, 0x0($a1)
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($t1)
    sw      $s1, 0x0($t1)
    or      $v1, $s0, $zero
    lui     $t6, 0x3f
    sll     $t7, $a3, 2
    lui     $at, 0xe448
    ori     $t6, $t6, 0xc038
    sw      $s2, 0x4($v0)
    sw      $t3, 0x0($v0)
    ori     $at, $at, 0x4000
    andi    $t8, $t7, 0xfff
    sw      $t6, 0x4($v1)
    addiu   $s0, $s0, 0x8
    or      $t9, $t8, $at
    lui     $at, 0x8
    or      $a0, $s0, $zero
    sll     $t6, $a2, 2
    sw      $s3, 0x0($v1)
    andi    $t7, $t6, 0xfff
    addiu   $s0, $s0, 0x8
    ori     $at, $at, 0x4000
    or      $t8, $t7, $at
    or      $a1, $s0, $zero
    sw      $t9, 0x0($a0)
    addiu   $s0, $s0, 0x8
    sw      $t8, 0x4($a0)
    lui     $t9, 0x807
    or      $t2, $s0, $zero
    addiu   $t9, $t9, 0x8e48
    addiu   $t0, $t0, 0xf00
    sw      $zero, 0x4($a1)
    sw      $s4, 0x0($a1)
    addiu   $a2, $a2, 0xf
    addiu   $a3, $a3, 0xf
    sw      $s6, 0x4($t2)
    sw      $s5, 0x0($t2)
    bne     $t0, $t9, branch_0x802c89fc
    addiu   $s0, $s0, 0x8
    b       branch_0x802c8c8c
    lw      $ra, 0x64($sp)

.globl Function_0x802c8aec
Function_0x802c8aec: # 0x802c8aec
    lui     $t0, 0x806
    lui     $fp, 0x737
    lui     $s7, 0xfd68
    lui     $s6, 0x400
    lui     $s2, 0x8
    lui     $t4, 0x708
    lui     $t3, 0xf568
    ori     $t3, $t3, 0x3800
    ori     $t4, $t4, 0x200
    ori     $s2, $s2, 0x200
    ori     $s6, $s6, 0x400
    ori     $s7, $s7, 0xdf
    ori     $fp, $fp, 0xc038
    addiu   $t0, $t0, 0x5078
    addiu   $a3, $zero, 0x58
    addiu   $a2, $zero, 0x49
    lui     $s5, 0xb200
    lui     $s4, 0xb300
    lui     $s3, 0xf200
    lui     $s1, 0xe700
    lui     $ra, 0xf400
    lui     $t5, 0xe600
branch_0x802c8b44:
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    sw      $s7, 0x0($v0)
    sw      $t0, 0x4($v0)
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    sw      $t4, 0x4($v1)
    sw      $t3, 0x0($v1)
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($a0)
    sw      $t5, 0x0($a0)
    or      $t1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $fp, 0x4($a1)
    sw      $ra, 0x0($a1)
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($t1)
    sw      $s1, 0x0($t1)
    or      $v1, $s0, $zero
    lui     $t6, 0x37
    sll     $t7, $a3, 2
    lui     $at, 0xe445
    ori     $t6, $t6, 0xc038
    sw      $s2, 0x4($v0)
    sw      $t3, 0x0($v0)
    ori     $at, $at, 0x4000
    andi    $t8, $t7, 0xfff
    sw      $t6, 0x4($v1)
    addiu   $s0, $s0, 0x8
    or      $t9, $t8, $at
    lui     $at, 0xd
    or      $a0, $s0, $zero
    sll     $t6, $a2, 2
    sw      $s3, 0x0($v1)
    andi    $t7, $t6, 0xfff
    addiu   $s0, $s0, 0x8
    ori     $at, $at, 0x4000
    or      $t8, $t7, $at
    or      $a1, $s0, $zero
    sw      $t9, 0x0($a0)
    addiu   $s0, $s0, 0x8
    sw      $t8, 0x4($a0)
    lui     $t9, 0x806
    or      $t2, $s0, $zero
    addiu   $t9, $t9, 0x6ab8
    addiu   $t0, $t0, 0xd20
    sw      $zero, 0x4($a1)
    sw      $s4, 0x0($a1)
    addiu   $a2, $a2, 0xf
    addiu   $a3, $a3, 0xf
    sw      $s6, 0x4($t2)
    sw      $s5, 0x0($t2)
    bne     $t0, $t9, branch_0x802c8b44
    addiu   $s0, $s0, 0x8
    b       branch_0x802c8c8c
    lw      $ra, 0x64($sp)

.globl Function_0x802c8c34
Function_0x802c8c34: # 0x802c8c34
    addiu   $t6, $zero, 0x50
    addiu   $t7, $zero, 0x2
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x3
    addiu   $a2, $zero, 0xf
    jal     0x801e3c40
    addiu   $a3, $zero, 0x77
    b       branch_0x802c8c88
    or      $s0, $v0, $zero

.globl Function_0x802c8c60
Function_0x802c8c60: # 0x802c8c60
    addiu   $t8, $zero, 0x50
    addiu   $t9, $zero, 0x2
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x3
    addiu   $a2, $zero, 0x10
    jal     0x801e3c40
    addiu   $a3, $zero, 0x78
    or      $s0, $v0, $zero
branch_0x802c8c88:
    lw      $ra, 0x64($sp)
branch_0x802c8c8c:
    or      $v0, $s0, $zero
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
    addiu   $sp, $sp, 0x68

.globl Function_0x802c8cbc
Function_0x802c8cbc: # 0x802c8cbc
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa8a4
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x41
    sw      $t6, -0x1c6c($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c70($at)
    sw      $t7, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0xb
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

.incbin "./roms/Wave Race 64 (USA).z64", 0x1cedf4, 0x1cef40 - 0x1cedf4
