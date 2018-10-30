

.include "source/constants.s"

.section .textmain2, "ax"

.set noreorder


.globl Function_0x801dad00
Function_0x801dad00: # 0x801dad00 ROM_0xa9330
    sw      $a1, 0x4($sp)
    lui     $at, 0x4040
    mtc1    $at, $a0
    lw      $t6, 0x0($a0)
    jr      $ra
    swc1    $f4, 0x50($t6)

.globl Function_0x801dad18
Function_0x801dad18: # 0x801dad18
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    jal     Function_0x80047df0
    sw      $a0, 0x18($sp)
    andi    $t6, $v0, 0x7
    beqz    $t6, branch_0x801dad54
    nop
    jal     Function_0x80047df0
    nop
    addiu   $at, $zero, 0xf
    divu    $zero, $v0, $at
    lw      $t8, 0x18($sp)
    mfhi    $t7
    b       branch_0x801dad74
    sw      $t7, 0x8($t8)
branch_0x801dad54:
    jal     Function_0x80047df0
    nop
    addiu   $at, $zero, 0x13
    divu    $zero, $v0, $at
    lw      $t1, 0x18($sp)
    mfhi    $t9
    addiu   $t0, $t9, 0x19
    sw      $t0, 0x8($t1)
branch_0x801dad74:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801dad84
Function_0x801dad84: # 0x801dad84
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    lw      $v0, 0x8($a0)
    bltz    $v0, branch_0x801dadd4
    slti    $at, $v0, 0x10
    beqz    $at, branch_0x801dadd4
    addiu   $t6, $v0, 0x2
    slti    $at, $t6, 0x10
    bnez    $at, branch_0x801dae34
    sw      $t6, 0x8($a0)
    jal     Function_0x80047df0
    sw      $a0, 0x18($sp)
    andi    $t8, $v0, 0x7
    beqz    $t8, branch_0x801dadc8
    lw      $a0, 0x18($sp)
    b       branch_0x801dae34
    sw      $zero, 0x8($a0)
branch_0x801dadc8:
    addiu   $t9, $zero, 0x10
    b       branch_0x801dae34
    sw      $t9, 0x8($a0)
branch_0x801dadd4:
    slti    $at, $v0, 0x19
    bnez    $at, branch_0x801dae24
    addiu   $t5, $v0, 0x1
    slti    $at, $v0, 0x2d
    beqz    $at, branch_0x801dae24
    addiu   $t0, $v0, 0x1
    slti    $at, $t0, 0x2d
    bnez    $at, branch_0x801dae34
    sw      $t0, 0x8($a0)
    jal     Function_0x80047df0
    sw      $a0, 0x18($sp)
    andi    $t2, $v0, 0xf
    beqz    $t2, branch_0x801dae18
    lw      $a0, 0x18($sp)
    addiu   $t3, $zero, 0x2d
    b       branch_0x801dae34
    sw      $t3, 0x8($a0)
branch_0x801dae18:
    addiu   $t4, $zero, 0x19
    b       branch_0x801dae34
    sw      $t4, 0x8($a0)
branch_0x801dae24:
    slti    $at, $t5, 0x37
    bnez    $at, branch_0x801dae34
    sw      $t5, 0x8($a0)
    sw      $zero, 0x8($a0)
branch_0x801dae34:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801dae44
Function_0x801dae44: # 0x801dae44
    addiu   $sp, $sp, 0xffc8
    sw      $ra, 0x14($sp)
    sw      $a1, 0x3c($sp)
    sw      $a2, 0x40($sp)
    addiu   $t6, $zero, 0x3
    sw      $t6, 0x0($a0)
    sw      $zero, 0x4($a0)
    jal     Function_0x801dad18
    sw      $a0, 0x38($sp)
    lw      $a3, 0x38($sp)
    lw      $a0, 0x3c($sp)
    addiu   $v0, $sp, 0x2c
    addiu   $a1, $sp, 0x38
    or      $v1, $a3, $zero
branch_0x801dae7c:
    lwc1    $f4, 0x0($a0)
    addiu   $v0, $v0, 0x4
    sltu    $at, $v0, $a1
    swc1    $f4, 0xc($v1)
    lwc1    $f8, 0x0($a0)
    lwc1    $f6, 0xc($a0)
    addiu   $v1, $v1, 0x4
    addiu   $a0, $a0, 0x4
    sub.s   $f10, $f6, $f8
    bnez    $at, branch_0x801dae7c
    swc1    $f10, -0x4($v0)
    lwc1    $f2, 0x2c($sp)
    lwc1    $f14, 0x30($sp)
    lwc1    $f0, 0x34($sp)
    mul.s   $f16, $f2, $f2
    sw      $a3, 0x38($sp)
    mul.s   $f18, $f14, $f14
    add.s   $f4, $f16, $f18
    mul.s   $f6, $f0, $f0
    jal     sqrtf
    add.s   $f12, $f6, $f4
    lw      $a3, 0x38($sp)
    addiu   $v0, $sp, 0x2c
    addiu   $a0, $sp, 0x38
    or      $v1, $a3, $zero
branch_0x801daee0:
    lwc1    $f8, 0x0($v0)
    addiu   $v0, $v0, 0x4
    addiu   $v1, $v1, 0x4
    div.s   $f10, $f8, $f0
    bne     $v0, $a0, branch_0x801daee0
    swc1    $f10, 0x14($v1)
    mtc1    $zero, $zero
    lui     $at, 0x3f80
    mtc1    $at, $s0
    lui     $at, 0x8022
    swc1    $f0, 0x24($a3)
    swc1    $f0, 0x2c($a3)
    swc1    $f16, 0x28($a3)
    lwc1    $f18, 0x5cd0($at)
    swc1    $f18, 0x30($a3)
    lw      $t7, 0x3c($sp)
    lw      $t9, 0x40($sp)
    lw      $t8, 0x1c($t7)
    sw      $t8, 0x0($t9)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop

.globl Function_0x801daf3c
Function_0x801daf3c: # 0x801daf3c
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    sw      $a2, 0x20($sp)
    sw      $a0, 0x18($sp)
    jal     Function_0x801dad84
    sw      $a1, 0x1c($sp)
    lw      $t6, 0x20($sp)
    lw      $a0, 0x18($sp)
    lw      $a1, 0x1c($sp)
    lw      $t7, 0x0($t6)
    or      $v1, $zero, $zero
    or      $v0, $a0, $zero
    blezl   $t7, branch_0x801dafd4
    sw      $zero, 0x0($a0)
    addiu   $a0, $zero, 0x3
    lwc1    $f12, 0x18($v0)
    lwc1    $f14, 0x18($a1)
    addiu   $v1, $v1, 0x1
    lwc1    $f16, 0xc($v0)
    mul.s   $f18, $f12, $f14
    beql    $v1, $a0, branch_0x801dafc0
    add.s   $f14, $f16, $f18
    add.s   $f14, $f16, $f18
branch_0x801daf98:
    lwc1    $f12, 0x1c($v0)
    lwc1    $f16, 0x10($v0)
    addiu   $v1, $v1, 0x1
    swc1    $f14, 0xc($v0)
    lwc1    $f14, 0x18($a1)
    addiu   $v0, $v0, 0x4
    mul.s   $f18, $f12, $f14
    bnel    $v1, $a0, branch_0x801daf98
    add.s   $f14, $f16, $f18
    add.s   $f14, $f16, $f18
branch_0x801dafc0:
    addiu   $v0, $v0, 0x4
    swc1    $f14, 0x8($v0)
    b       branch_0x801dafd8
    lw      $ra, 0x14($sp)

.globl Function_0x801dafd0
Function_0x801dafd0: # 0x801dafd0
    sw      $zero, 0x0($a0)
branch_0x801dafd4:
    lw      $ra, 0x14($sp)
branch_0x801dafd8:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801dafe4
Function_0x801dafe4: # 0x801dafe4
    addiu   $sp, $sp, 0xffa8
    sw      $fp, 0x50($sp)
    sw      $s6, 0x48($sp)
    sw      $s4, 0x40($sp)
    or      $s4, $a0, $zero
    or      $fp, $a3, $zero
    sw      $ra, 0x54($sp)
    sw      $s7, 0x4c($sp)
    sw      $s5, 0x44($sp)
    sw      $s3, 0x3c($sp)
    sw      $s2, 0x38($sp)
    sw      $s1, 0x34($sp)
    sw      $s0, 0x30($sp)
    sdc1    $24, 0x28($29)
    sdc1    $22, 0x20($29)
    sdc1    $20, 0x18($29)
    sw      $a1, 0x5c($sp)
    blez    $a3, branch_0x801db154
    or      $s6, $zero, $zero
    lui     $at, 0x8022
    lwc1    $f24, 0x5cd4($at)
    lui     $at, 0x3f00
    mtc1    $at, $s6
    lui     $at, 0x4380
    mtc1    $at, $s4
    or      $s5, $a2, $zero
    addiu   $s7, $zero, 0x168
    addiu   $s3, $zero, 0x3
branch_0x801db054:
    sw      $s3, 0x0($s4)
    sw      $zero, 0x4($s4)
    jal     Function_0x801dad18
    or      $a0, $s4, $zero
    or      $s1, $zero, $zero
    or      $s2, $s4, $zero
    lw      $s0, 0x5c($sp)
branch_0x801db070:
    jal     Function_0x80047df0
    nop
    lwc1    $f0, 0x18($s0)
    lwc1    $f4, 0x0($s0)
    lwc1    $f6, 0xc($s0)
    mul.s   $f10, $f0, $f22
    andi    $t6, $v0, 0xff
    add.s   $f8, $f4, $f6
    mtc1    $t6, $s2
    lui     $at, 0x4f80
    cvt.s.w $f4, $f18
    bgez    $t6, branch_0x801db0b0
    sub.s   $f16, $f8, $f10
    mtc1    $at, $a2
    nop
    add.s   $f4, $f4, $f6
branch_0x801db0b0:
    div.s   $f8, $f4, $f20
    addiu   $s1, $s1, 0x1
    addiu   $s2, $s2, 0x4
    addiu   $s0, $s0, 0x4
    mul.s   $f10, $f0, $f8
    add.s   $f18, $f10, $f16
    bne     $s1, $s3, branch_0x801db070
    swc1    $f18, 0x8($s2)
    jal     Function_0x80047df0
    swc1    $f24, 0x30($s4)
    divu    $zero, $v0, $s7
    mfhi    $t7
    mtc1    $t7, $a2
    bnez    $s7, branch_0x801db0f0
    nop
    break   0x7
branch_0x801db0f0:
    lui     $at, 0x4f80
    bgez    $t7, branch_0x801db108
    cvt.s.w $f4, $f6
    mtc1    $at, $t0
    nop
    add.s   $f4, $f4, $f8
branch_0x801db108:
    jal     Function_0x80047df0
    swc1    $f4, 0x0($s5)
    divu    $zero, $v0, $s7
    mfhi    $t8
    mtc1    $t8, $t2
    bnez    $s7, branch_0x801db128
    nop
    break   0x7
branch_0x801db128:
    addiu   $s6, $s6, 0x1
    bgez    $t8, branch_0x801db144
    cvt.s.w $f16, $f10
    lui     $at, 0x4f80
    mtc1    $at, $s2
    nop
    add.s   $f16, $f16, $f18
branch_0x801db144:
    addiu   $s5, $s5, 0x8
    addiu   $s4, $s4, 0x34
    bne     $s6, $fp, branch_0x801db054
    swc1    $f16, -0x4($s5)
branch_0x801db154:
    lw      $ra, 0x54($sp)
    ldc1    $20, 0x18($29)
    ldc1    $22, 0x20($29)
    ldc1    $24, 0x28($29)
    lw      $s0, 0x30($sp)
    lw      $s1, 0x34($sp)
    lw      $s2, 0x38($sp)
    lw      $s3, 0x3c($sp)
    lw      $s4, 0x40($sp)
    lw      $s5, 0x44($sp)
    lw      $s6, 0x48($sp)
    lw      $s7, 0x4c($sp)
    lw      $fp, 0x50($sp)
    jr      $ra
    addiu   $sp, $sp, 0x58

.globl Function_0x801db190
Function_0x801db190: # 0x801db190
    addiu   $sp, $sp, 0xff60
    sw      $s7, 0x64($sp)
    sw      $s4, 0x58($sp)
    sw      $s2, 0x50($sp)
    or      $s2, $a1, $zero
    or      $s4, $a0, $zero
    sw      $ra, 0x6c($sp)
    sw      $fp, 0x68($sp)
    sw      $s6, 0x60($sp)
    sw      $s5, 0x5c($sp)
    sw      $s3, 0x54($sp)
    sw      $s1, 0x4c($sp)
    sw      $s0, 0x48($sp)
    sdc1    $30, 0x40($29)
    sdc1    $28, 0x38($29)
    sdc1    $26, 0x30($29)
    sdc1    $24, 0x28($29)
    sdc1    $22, 0x20($29)
    sdc1    $20, 0x18($29)
    sw      $a3, 0xac($sp)
    blez    $a3, branch_0x801db608
    or      $s7, $zero, $zero
    lui     $at, 0x41a0
    mtc1    $at, $fp
    lui     $at, 0x3f80
    mtc1    $at, $gp
    lui     $at, 0x4580
    mtc1    $at, $k0
    lui     $at, 0x43b4
    lui     $s6, 0x8015
    mtc1    $at, $s6
    mtc1    $zero, $t8
    addiu   $s6, $s6, 0x40b0
    or      $s3, $a2, $zero
    addiu   $fp, $zero, 0x1f
    addiu   $s5, $sp, 0x98
branch_0x801db220:
    jal     Function_0x801dad84
    or      $a0, $s4, $zero
    lwc1    $f4, 0x0($s3)
    mul.s   $f6, $f4, $f26
    div.s   $f8, $f6, $f22
    trunc.w.s   $f10, $f8
    mfc1    $t8, $t2
    nop
    addiu   $t9, $t8, 0x400
    andi    $t0, $t9, 0xfff
    sll     $t1, $t0, 2
    addu    $t2, $s6, $t1
    lwc1    $f16, 0x0($t2)
    swc1    $f16, 0x8c($sp)
    lwc1    $f18, 0x0($s3)
    mul.s   $f4, $f18, $f26
    div.s   $f6, $f4, $f22
    trunc.w.s   $f8, $f6
    mfc1    $t4, $t0
    nop
    andi    $t5, $t4, 0xfff
    sll     $t6, $t5, 2
    addu    $t7, $s6, $t6
    lwc1    $f10, 0x0($t7)
    jal     Function_0x80047df0
    swc1    $f10, 0x94($sp)
    lwc1    $f16, 0x4($s3)
    lwc1    $f10, 0x30($s2)
    andi    $t3, $v0, 0x3
    mul.s   $f18, $f16, $f26
    lui     $at, 0x4f80
    div.s   $f4, $f18, $f22
    mtc1    $t3, $s2
    trunc.w.s   $f6, $f4
    cvt.s.w $f4, $f18
    mfc1    $t9, $a2
    nop
    andi    $t0, $t9, 0xfff
    sll     $t1, $t0, 2
    addu    $t2, $s6, $t1
    lwc1    $f8, 0x0($t2)
    mul.s   $f16, $f8, $f10
    bgezl   $t3, branch_0x801db2e0
    div.s   $f8, $f4, $f30
    mtc1    $at, $a2
    nop
    add.s   $f4, $f4, $f6
    div.s   $f8, $f4, $f30
branch_0x801db2e0:
    mtc1    $zero, $a2
    lui     $at, 0x8022
    sub.s   $f10, $f28, $f8
    mul.s   $f18, $f10, $f16
    swc1    $f18, 0x90($sp)
    lwc1    $f8, 0x10($s4)
    lwc1    $f4, 0x4($s2)
    sub.s   $f10, $f4, $f8
    mul.s   $f16, $f10, $f18
    c.lt.s $f6, $f16
    nop
    bc1fl   branch_0x801db324
    lwc1    $f0, 0x8c($sp)
    lwc1    $f4, 0x5cd8($at)
    mul.s   $f14, $f18, $f4
    swc1    $f14, 0x90($sp)
    lwc1    $f0, 0x8c($sp)
branch_0x801db324:
    lwc1    $f14, 0x90($sp)
    lwc1    $f2, 0x94($sp)
    mul.s   $f8, $f0, $f0
    nop
    mul.s   $f10, $f14, $f14
    add.s   $f6, $f8, $f10
    mul.s   $f16, $f2, $f2
    jal     sqrtf
    add.s   $f12, $f16, $f6
    mov.s   $f20, $f0
    or      $s0, $s4, $zero
    addiu   $s1, $sp, 0x8c
branch_0x801db354:
    lwc1    $f18, 0x0($s1)
    div.s   $f4, $f18, $f20
    jal     Function_0x80047df0
    swc1    $f4, 0x18($s0)
    andi    $t4, $v0, 0x1
    mtc1    $t4, $t2
    lwc1    $f8, 0x24($s2)
    bgez    $t4, branch_0x801db388
    cvt.s.w $f16, $f10
    lui     $at, 0x4f80
    mtc1    $at, $a2
    nop
    add.s   $f16, $f16, $f6
branch_0x801db388:
    add.s   $f18, $f8, $f16
    lwc1    $f4, 0x18($s0)
    lwc1    $f6, 0xc($s0)
    addiu   $s1, $s1, 0x4
    mul.s   $f10, $f4, $f18
    addiu   $s0, $s0, 0x4
    add.s   $f8, $f6, $f10
    bne     $s1, $s5, branch_0x801db354
    swc1    $f8, 0x8($s0)
    lwc1    $f16, 0x0($s2)
    lwc1    $f4, 0xc($s4)
    sub.s   $f18, $f16, $f4
    swc1    $f18, 0x8c($sp)
    lwc1    $f10, 0x14($s4)
    lwc1    $f6, 0x8($s2)
    lwc1    $f18, 0x8c($sp)
    sub.s   $f8, $f6, $f10
    swc1    $f8, 0x94($sp)
    lwc1    $f16, 0x94($sp)
    mul.s   $f4, $f16, $f16
    nop
    mul.s   $f6, $f18, $f18
    jal     sqrtf
    add.s   $f12, $f4, $f6
    c.lt.s $f24, $f0
    mov.s   $f20, $f0
    lui     $at, 0x3f80
    bc1fl   branch_0x801db40c
    lui     $at, 0x4040
    mtc1    $at, $t2
    nop
    div.s   $f20, $f10, $f0
    lui     $at, 0x4040
branch_0x801db40c:
    mtc1    $at, $t0
    lwc1    $f16, 0x8c($sp)
    lwc1    $f4, 0x94($sp)
    mul.s   $f0, $f20, $f8
    nop
    mul.s   $f18, $f16, $f0
    nop
    mul.s   $f6, $f4, $f0
    swc1    $f18, 0x8c($sp)
    mul.s   $f4, $f18, $f18
    swc1    $f6, 0x94($sp)
    lwc1    $f8, 0x28($s2)
    lwc1    $f10, 0x24($s2)
    div.s   $f16, $f10, $f8
    swc1    $f16, 0x90($sp)
    lwc1    $f10, 0x90($sp)
    mul.s   $f8, $f10, $f10
    add.s   $f16, $f4, $f8
    mul.s   $f18, $f6, $f6
    jal     sqrtf
    add.s   $f12, $f18, $f16
    lwc1    $f10, 0x8c($sp)
    div.s   $f4, $f10, $f0
    lwc1    $f10, 0x18($s4)
    swc1    $f4, 0x24($s4)
    lwc1    $f8, 0x90($sp)
    div.s   $f6, $f8, $f0
    swc1    $f6, 0x28($s4)
    lwc1    $f18, 0x94($sp)
    div.s   $f16, $f18, $f0
    lwc1    $f18, 0x20($s4)
    swc1    $f16, 0x2c($s4)
    lwc1    $f4, 0x94($sp)
    lwc1    $f6, 0x8c($sp)
    mul.s   $f8, $f10, $f4
    nop
    mul.s   $f16, $f6, $f18
    jal     Function_0x80047df0
    sub.s   $f20, $f8, $f16
    mtc1    $zero, $t2
    nop
    c.le.s $f10, $f20
    nop
    bc1fl   branch_0x801db4cc
    lui     $at, 0xbf80
    b       branch_0x801db4d4
    mov.s   $f0, $f28

.globl Function_0x801db4c8
Function_0x801db4c8: # 0x801db4c8
    lui     $at, 0xbf80
branch_0x801db4cc:
    mtc1    $at, $zero
    nop
branch_0x801db4d4:
    divu    $zero, $v0, $fp
    mfhi    $t5
    mtc1    $t5, $a0
    bnez    $fp, branch_0x801db4ec
    nop
    break   0x7
branch_0x801db4ec:
    lui     $at, 0x4f80
    bgez    $t5, branch_0x801db504
    cvt.s.w $f6, $f4
    mtc1    $at, $s2
    nop
    add.s   $f6, $f6, $f18
branch_0x801db504:
    lui     $at, 0x3e00
    mtc1    $at, $t0
    lwc1    $f10, 0x28($s2)
    lui     $at, 0xc3b4
    mul.s   $f16, $f6, $f8
    lwc1    $f6, 0x0($s3)
    add.s   $f4, $f10, $f16
    mul.s   $f18, $f0, $f4
    add.s   $f8, $f6, $f18
    swc1    $f8, 0x0($s3)
    lwc1    $f2, 0x0($s3)
    c.lt.s $f2, $f24
    nop
    bc1fl   branch_0x801db54c
    mov.s   $f12, $f24
    b       branch_0x801db54c
    mov.s   $f12, $f22

.globl Function_0x801db548
Function_0x801db548: # 0x801db548
    mov.s   $f12, $f24
branch_0x801db54c:
    c.lt.s $f22, $f2
    nop
    bc1fl   branch_0x801db56c
    mov.s   $f0, $f24
    mtc1    $at, $zero
    b       branch_0x801db570
    add.s   $f10, $f0, $f12

.globl Function_0x801db568
Function_0x801db568: # 0x801db568
    mov.s   $f0, $f24
branch_0x801db56c:
    add.s   $f10, $f0, $f12
branch_0x801db570:
    add.s   $f16, $f2, $f10
    jal     Function_0x80047df0
    swc1    $f16, 0x0($s3)
    andi    $t6, $v0, 0x3
    mtc1    $t6, $a2
    lui     $at, 0x8022
    lwc1    $f4, 0x5cdc($at)
    bgez    $t6, branch_0x801db5a4
    cvt.s.w $f18, $f6
    lui     $at, 0x4f80
    mtc1    $at, $t0
    nop
    add.s   $f18, $f18, $f8
branch_0x801db5a4:
    div.s   $f10, $f18, $f30
    lwc1    $f6, 0x2c($s2)
    lwc1    $f18, 0x4($s3)
    lui     $at, 0xc3b4
    add.s   $f16, $f4, $f10
    mul.s   $f8, $f6, $f16
    add.s   $f4, $f18, $f8
    swc1    $f4, 0x4($s3)
    lwc1    $f2, 0x4($s3)
    c.lt.s $f22, $f2
    nop
    bc1fl   branch_0x801db5e8
    mov.s   $f0, $f24
    mtc1    $at, $zero
    b       branch_0x801db5ec
    add.s   $f10, $f2, $f0

.globl Function_0x801db5e4
Function_0x801db5e4: # 0x801db5e4
    mov.s   $f0, $f24
branch_0x801db5e8:
    add.s   $f10, $f2, $f0
branch_0x801db5ec:
    addiu   $s7, $s7, 0x1
    addiu   $s3, $s3, 0x8
    addiu   $s4, $s4, 0x34
    swc1    $f10, -0x4($s3)
    lw      $t7, 0xac($sp)
    bne     $s7, $t7, branch_0x801db220
    nop
branch_0x801db608:
    lw      $ra, 0x6c($sp)
    ldc1    $20, 0x18($29)
    ldc1    $22, 0x20($29)
    ldc1    $24, 0x28($29)
    ldc1    $26, 0x30($29)
    ldc1    $28, 0x38($29)
    ldc1    $30, 0x40($29)
    lw      $s0, 0x48($sp)
    lw      $s1, 0x4c($sp)
    lw      $s2, 0x50($sp)
    lw      $s3, 0x54($sp)
    lw      $s4, 0x58($sp)
    lw      $s5, 0x5c($sp)
    lw      $s6, 0x60($sp)
    lw      $s7, 0x64($sp)
    lw      $fp, 0x68($sp)
    jr      $ra
    addiu   $sp, $sp, 0xa0

.globl Function_0x801db650
Function_0x801db650: # 0x801db650
    addiu   $sp, $sp, 0xff28
    lui     $t7, 0x8022
    sw      $ra, 0x5c($sp)
    sw      $s6, 0x58($sp)
    sw      $s5, 0x54($sp)
    sw      $s4, 0x50($sp)
    sw      $s3, 0x4c($sp)
    sw      $s2, 0x48($sp)
    sw      $s1, 0x44($sp)
    sw      $s0, 0x40($sp)
    sdc1    $28, 0x38($29)
    sdc1    $26, 0x30($29)
    sdc1    $24, 0x28($29)
    sdc1    $22, 0x20($29)
    sdc1    $20, 0x18($29)
    sw      $a0, 0xd8($sp)
    addiu   $t7, $t7, 0x5a74
    lw      $at, 0x0($t7)
    addiu   $t6, $sp, 0xb0
    lw      $t0, 0x4($t7)
    sw      $at, 0x0($t6)
    lw      $at, 0x8($t7)
    lui     $t2, 0x8022
    addiu   $t2, $t2, 0x5a80
    addiu   $t5, $t2, 0x30
    addiu   $t1, $sp, 0x7c
    sw      $t0, 0x4($t6)
    sw      $at, 0x8($t6)
branch_0x801db6c0:
    lw      $at, 0x0($t2)
    addiu   $t2, $t2, 0xc
    addiu   $t1, $t1, 0xc
    sw      $at, -0xc($t1)
    lw      $at, -0x8($t2)
    sw      $at, -0x8($t1)
    lw      $at, -0x4($t2)
    bne     $t2, $t5, branch_0x801db6c0
    sw      $at, -0x4($t1)
    lw      $at, 0x0($t2)
    sw      $at, 0x0($t1)
    lw      $t9, 0xd8($sp)
    lw      $t8, 0x8($t9)
    bnezl   $t8, branch_0x801db708
    lw      $t7, 0xd8($sp)
    jal     Function_0x800ab6cc
    nop
    lw      $t7, 0xd8($sp)
branch_0x801db708:
    addiu   $t6, $zero, 0xb
    lui     $at, 0x8023
    sw      $t6, -0x7a98($at)
    lw      $v0, 0x8($t7)
    lui     $s1, 0x8022
    addiu   $s1, $s1, 0x7f84
    slti    $at, $v0, 0x35c
    bnez    $at, branch_0x801dbbf0
    slti    $at, $v0, 0x5dd
    beqz    $at, branch_0x801dbbf0
    addiu   $at, $zero, 0x35c
    bne     $v0, $at, branch_0x801db9f8
    or      $s3, $zero, $zero
    lui     $at, 0x8022
    lwc1    $f28, 0x5ce0($at)
    lui     $at, 0x4080
    mtc1    $at, $t8
    lui     $at, 0x3f80
    lui     $s1, 0x8022
    lui     $s5, 0x8022
    lui     $s2, 0x8022
    mtc1    $at, $s6
    mtc1    $zero, $k0
    addiu   $s2, $s2, 0x7ee0
    addiu   $s5, $s5, 0x7ed0
    addiu   $s1, $s1, 0x7f50
    addiu   $s6, $zero, 0xf
    addiu   $s4, $zero, 0x3
branch_0x801db778:
    sw      $s4, 0x0($s1)
    jal     Function_0x80047df0
    sw      $zero, 0x4($s1)
    divu    $zero, $v0, $s6
    mfhi    $t0
    sw      $t0, 0x8($s1)
    bnez    $s6, branch_0x801db79c
    nop
    break   0x7
branch_0x801db79c:
    jal     Function_0x80047df0
    nop
    mtc1    $s3, $a0
    lui     $at, 0x420c
    mtc1    $at, $t0
    cvt.s.w $f20, $f4
    andi    $t4, $v0, 0x7
    mtc1    $t4, $s2
    lwc1    $f6, 0xb0($sp)
    lui     $at, 0x4f80
    cvt.s.w $f4, $f18
    mul.s   $f10, $f20, $f8
    bgez    $t4, branch_0x801db7e0
    add.s   $f16, $f6, $f10
    mtc1    $at, $t0
    nop
    add.s   $f4, $f4, $f8
branch_0x801db7e0:
    add.s   $f6, $f4, $f16
    jal     Function_0x80047df0
    swc1    $f6, 0xc($s1)
    andi    $t3, $v0, 0x7ff
    multu   $t3, $s3
    lui     $at, 0x4f80
    mflo    $t5
    mtc1    $t5, $t2
    bgez    $t5, branch_0x801db814
    cvt.s.w $f12, $f10
    mtc1    $at, $s2
    nop
    add.s   $f12, $f12, $f18
branch_0x801db814:
    jal     sqrtf
    nop
    lui     $at, 0x8022
    lwc1    $f8, 0x5ce4($at)
    lwc1    $f16, 0xb4($sp)
    mul.s   $f4, $f0, $f8
    add.s   $f6, $f4, $f16
    jal     Function_0x80047df0
    swc1    $f6, 0x10($s1)
    andi    $t2, $v0, 0x1ff
    multu   $t2, $s3
    lui     $at, 0x4f80
    mflo    $t1
    mtc1    $t1, $t2
    bgez    $t1, branch_0x801db860
    cvt.s.w $f12, $f10
    mtc1    $at, $s2
    nop
    add.s   $f12, $f12, $f18
branch_0x801db860:
    jal     sqrtf
    nop
    andi    $t9, $s3, 0x4
    beqz    $t9, branch_0x801db87c
    mov.s   $f12, $f0
    b       branch_0x801db888
    mov.s   $f2, $f22
branch_0x801db87c:
    lui     $at, 0xbf80
    mtc1    $at, $v0
    nop
branch_0x801db888:
    mul.s   $f8, $f2, $f12
    lwc1    $f4, 0xb8($sp)
    swc1    $f26, 0x24($s1)
    swc1    $f22, 0x28($s1)
    swc1    $f26, 0x2c($s1)
    swc1    $f28, 0x30($s1)
    add.s   $f16, $f8, $f4
    jal     Function_0x80047df0
    swc1    $f16, 0x14($s1)
    andi    $t8, $v0, 0xf
    addiu   $t6, $t8, 0x3
    sw      $t6, 0x0($s5)
    jal     Function_0x80047df0
    swc1    $f26, 0x0($s2)
    or      $s0, $v0, $zero
    jal     sqrtf
    div.s   $f12, $f20, $f24
    andi    $t7, $s0, 0x3
    addiu   $t0, $t7, 0x1
    mtc1    $t0, $a2
    lui     $at, 0x4f80
    bgez    $t0, branch_0x801db8f0
    cvt.s.w $f2, $f6
    mtc1    $at, $t2
    nop
    add.s   $f2, $f2, $f10
branch_0x801db8f0:
    add.s   $f18, $f2, $f2
    lui     $at, 0x4130
    mtc1    $at, $a0
    addiu   $s3, $s3, 0x1
    mul.s   $f8, $f0, $f18
    slti    $at, $s3, 0x4
    addiu   $s5, $s5, 0x4
    addiu   $s2, $s2, 0x8
    addiu   $s1, $s1, 0x34
    add.s   $f16, $f8, $f4
    bnez    $at, branch_0x801db778
    swc1    $f16, -0x4($s2)
    jal     Function_0x80047df0
    or      $s3, $zero, $zero
    andi    $t4, $v0, 0x3
    addiu   $t3, $t4, 0x2
    beqz    $t3, branch_0x801db9f8
    lui     $at, 0x4148
    lui     $s5, 0x8022
    lui     $s1, 0x8022
    mtc1    $at, $s4
    addiu   $s1, $s1, 0x7ed0
    addiu   $s5, $s5, 0x7ee0
    ori     $s2, $zero, 0xffff
branch_0x801db950:
    jal     Function_0x80047df0
    nop
    andi    $t5, $v0, 0x3
    mtc1    $t5, $a2
    lui     $at, 0x4f80
    bgez    $t5, branch_0x801db978
    cvt.s.w $f10, $f6
    mtc1    $at, $s2
    nop
    add.s   $f10, $f10, $f18
branch_0x801db978:
    jal     sqrtf
    div.s   $f12, $f10, $f24
    jal     sqrtf
    mov.s   $f12, $f0
    mul.s   $f8, $f0, $f24
    trunc.w.s   $f4, $f8
    mfc1    $v0, $a0
    nop
    sll     $t1, $v0, 2
    addu    $t9, $s1, $t1
    sw      $s2, 0x0($t9)
    jal     Function_0x80047df0
    or      $s0, $v0, $zero
    andi    $t8, $v0, 0x3
    mtc1    $t8, $s0
    sll     $t7, $s0, 3
    bgez    $t8, branch_0x801db9d0
    cvt.s.w $f6, $f16
    lui     $at, 0x4f80
    mtc1    $at, $s2
    nop
    add.s   $f6, $f6, $f18
branch_0x801db9d0:
    add.s   $f10, $f6, $f20
    addu    $t0, $s5, $t7
    addiu   $s3, $s3, 0x1
    jal     Function_0x80047df0
    swc1    $f10, 0x4($t0)
    andi    $t4, $v0, 0x3
    addiu   $t3, $t4, 0x2
    sltu    $at, $s3, $t3
    bnez    $at, branch_0x801db950
    nop
branch_0x801db9f8:
    lui     $at, 0x8022
    lwc1    $f28, 0x5ce8($at)
    lui     $at, 0x4334
    mtc1    $at, $t8
    lui     $at, 0x43b4
    mtc1    $at, $s6
    lui     $at, 0x4580
    lui     $s1, 0x8022
    lui     $s5, 0x8022
    lui     $s2, 0x8022
    lui     $s6, 0x8015
    mtc1    $zero, $k0
    mtc1    $at, $s4
    addiu   $s4, $zero, 0x3
    addiu   $s6, $s6, 0x40b0
    addiu   $s2, $s2, 0x7ee0
    addiu   $s5, $s5, 0x7ed0
    addiu   $s1, $s1, 0x7f50
    addiu   $s3, $sp, 0xcc
branch_0x801dba44:
    lw      $v0, 0x8($s1)
    mul.s   $f10, $f28, $f28
    addiu   $s0, $zero, 0x1
    slti    $at, $v0, 0x10
    beqz    $at, branch_0x801dba64
    nop
    b       branch_0x801dba64
    addiu   $s0, $zero, 0x2
branch_0x801dba64:
    addu    $t5, $v0, $s0
    sw      $t5, 0x8($s1)
    lw      $t2, 0x0($s5)
    slti    $at, $t5, 0x10
    blezl   $t2, branch_0x801dba9c
    lw      $t6, 0x8($s1)
    bnezl   $at, branch_0x801dbab4
    lwc1    $f8, 0x0($s2)
    sw      $zero, 0x8($s1)
    lw      $t9, 0x0($s5)
    addiu   $t8, $t9, 0xffff
    b       branch_0x801dbab0
    sw      $t8, 0x0($s5)

.globl Function_0x801dba98
Function_0x801dba98: # 0x801dba98
    lw      $t6, 0x8($s1)
branch_0x801dba9c:
    addiu   $t7, $zero, 0x19
    slti    $at, $t6, 0x2d
    bnezl   $at, branch_0x801dbab4
    lwc1    $f8, 0x0($s2)
    sw      $t7, 0x8($s1)
branch_0x801dbab0:
    lwc1    $f8, 0x0($s2)
branch_0x801dbab4:
    mul.s   $f4, $f8, $f20
    div.s   $f16, $f4, $f22
    trunc.w.s   $f18, $f16
    mfc1    $v0, $s2
    nop
    addiu   $t4, $v0, 0x400
    andi    $t3, $t4, 0xfff
    sll     $t5, $t3, 2
    addu    $t2, $s6, $t5
    lwc1    $f0, 0x0($t2)
    andi    $t1, $v0, 0xfff
    sll     $t9, $t1, 2
    mul.s   $f6, $f0, $f0
    addu    $t8, $s6, $t9
    lwc1    $f14, 0x0($t8)
    swc1    $f28, 0xc4($sp)
    swc1    $f0, 0xc0($sp)
    mul.s   $f4, $f14, $f14
    swc1    $f14, 0xc8($sp)
    add.s   $f8, $f6, $f10
    jal     sqrtf
    add.s   $f12, $f4, $f8
    or      $v0, $s1, $zero
    addiu   $v1, $sp, 0xc0
branch_0x801dbb14:
    lwc1    $f16, 0x0($v1)
    addiu   $v1, $v1, 0x4
    sltu    $at, $v1, $s3
    div.s   $f18, $f16, $f0
    addiu   $v0, $v0, 0x4
    bnez    $at, branch_0x801dbb14
    swc1    $f18, 0x14($v0)
    or      $s0, $zero, $zero
    or      $v0, $s1, $zero
    lwc1    $f12, 0x18($v0)
    lwc1    $f14, 0x4($s2)
    addiu   $s0, $s0, 0x1
    lwc1    $f16, 0xc($v0)
    mul.s   $f18, $f12, $f14
    beql    $s0, $s4, branch_0x801dbb80
    add.s   $f14, $f16, $f18
    add.s   $f14, $f16, $f18
branch_0x801dbb58:
    lwc1    $f12, 0x1c($v0)
    lwc1    $f16, 0x10($v0)
    addiu   $s0, $s0, 0x1
    swc1    $f14, 0xc($v0)
    lwc1    $f14, 0x4($s2)
    addiu   $v0, $v0, 0x4
    mul.s   $f18, $f12, $f14
    bnel    $s0, $s4, branch_0x801dbb58
    add.s   $f14, $f16, $f18
    add.s   $f14, $f16, $f18
branch_0x801dbb80:
    addiu   $v0, $v0, 0x4
    swc1    $f14, 0x8($v0)
    lwc1    $f18, 0x14($s1)
    lwc1    $f6, 0xb8($sp)
    sub.s   $f14, $f18, $f6
    c.le.s $f26, $f14
    nop
    bc1f    branch_0x801dbbb4
    nop
    jal     sqrtf
    mov.s   $f12, $f14
    b       branch_0x801dbbc0
    mov.s   $f2, $f0
branch_0x801dbbb4:
    jal     sqrtf
    neg.s   $f12, $f14
    neg.s   $f2, $f0
branch_0x801dbbc0:
    div.s   $f8, $f2, $f24
    lwc1    $f10, 0x0($s2)
    lui     $t6, 0x8022
    addiu   $t6, $t6, 0x7f00
    addiu   $s2, $s2, 0x8
    addiu   $s5, $s5, 0x4
    addiu   $s1, $s1, 0x34
    add.s   $f4, $f10, $f8
    bne     $s2, $t6, branch_0x801dba44
    swc1    $f4, -0x8($s2)
    b       branch_0x801dbc0c
    lw      $t7, 0xd8($sp)
branch_0x801dbbf0:
    lui     $at, 0x8022
    sw      $zero, 0x7f50($at)
    sw      $zero, 0x68($s1)
    sw      $zero, 0x34($s1)
    sw      $zero, 0x0($s1)
    addiu   $s1, $s1, 0x68
    lw      $t7, 0xd8($sp)
branch_0x801dbc0c:
    lui     $s1, 0x8023
    addiu   $s1, $s1, 0x8054
    lw      $v0, 0x8($t7)
    slti    $at, $v0, 0x320
    bnez    $at, branch_0x801dbc68
    addiu   $at, $zero, 0x320
    bne     $v0, $at, branch_0x801dbc44
    lui     $a0, 0x8023
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x7f00
    addiu   $a0, $a0, 0x8020
    addiu   $a1, $sp, 0x7c
    jal     Function_0x801dafe4
    addiu   $a3, $zero, 0x7
branch_0x801dbc44:
    lui     $a0, 0x8023
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x7f00
    addiu   $a0, $a0, 0x8020
    addiu   $a1, $sp, 0x7c
    jal     Function_0x801db190
    addiu   $a3, $zero, 0x7
    b       branch_0x801dbc90
    lw      $ra, 0x5c($sp)
branch_0x801dbc68:
    lui     $at, 0x8023
    sw      $zero, -0x7fe0($at)
    sw      $zero, 0x104($s1)
    sw      $zero, 0xd0($s1)
    sw      $zero, 0x9c($s1)
    sw      $zero, 0x34($s1)
    sw      $zero, 0x0($s1)
    addiu   $s1, $s1, 0x104
    sw      $zero, -0x9c($s1)
    lw      $ra, 0x5c($sp)
branch_0x801dbc90:
    ldc1    $20, 0x18($29)
    ldc1    $22, 0x20($29)
    ldc1    $24, 0x28($29)
    ldc1    $26, 0x30($29)
    ldc1    $28, 0x38($29)
    lw      $s0, 0x40($sp)
    lw      $s1, 0x44($sp)
    lw      $s2, 0x48($sp)
    lw      $s3, 0x4c($sp)
    lw      $s4, 0x50($sp)
    lw      $s5, 0x54($sp)
    lw      $s6, 0x58($sp)
    jr      $ra
    addiu   $sp, $sp, 0xd8

.globl Function_0x801dbcc8
Function_0x801dbcc8: # 0x801dbcc8
    addiu   $sp, $sp, 0xff10
    lui     $t7, 0x8022
    sw      $s5, 0x28($sp)
    addiu   $t7, $t7, 0x5ab4
    or      $s5, $a0, $zero
    sw      $ra, 0x34($sp)
    sw      $s7, 0x30($sp)
    sw      $s6, 0x2c($sp)
    sw      $s4, 0x24($sp)
    sw      $s3, 0x20($sp)
    sw      $s2, 0x1c($sp)
    sw      $s1, 0x18($sp)
    sw      $s0, 0x14($sp)
    addiu   $t0, $t7, 0x9c
    addiu   $t6, $sp, 0x4c
branch_0x801dbd04:
    lw      $at, 0x0($t7)
    addiu   $t7, $t7, 0xc
    addiu   $t6, $t6, 0xc
    sw      $at, -0xc($t6)
    lw      $at, -0x8($t7)
    sw      $at, -0x8($t6)
    lw      $at, -0x4($t7)
    bne     $t7, $t0, branch_0x801dbd04
    sw      $at, -0x4($t6)
    lw      $at, 0x0($t7)
    sw      $at, 0x0($t6)
    lw      $t1, 0x8($s5)
    bnez    $t1, branch_0x801dbd44
    nop
    jal     Function_0x800ab6cc
    nop
branch_0x801dbd44:
    lui     $a0, 0x8023
    lw      $a0, -0x7a94($a0)
    or      $s2, $zero, $zero
    addiu   $s0, $sp, 0x4c
    blez    $a0, branch_0x801dbde0
    addiu   $s7, $zero, 0x1
    lui     $s6, 0x8023
    lui     $s4, 0x8022
    lui     $s3, 0x8022
    addiu   $s3, $s3, 0x7f50
    addiu   $s4, $s4, 0x7ed0
    addiu   $s6, $s6, 0x8568
branch_0x801dbd74:
    lw      $v0, 0x8($s5)
    lw      $v1, 0x0($s0)
    slt     $at, $v0, $v1
    bnezl   $at, branch_0x801dbdd4
    addiu   $s2, $s2, 0x1
    lw      $t2, 0x4($s0)
    slt     $at, $v0, $t2
    beqzl   $at, branch_0x801dbdd4
    addiu   $s2, $s2, 0x1
    sw      $s7, 0x0($s6)
    lw      $t3, 0x8($s5)
    addiu   $s1, $s0, 0x8
    or      $a1, $s1, $zero
    bne     $t3, $v1, branch_0x801dbdb8
    or      $a0, $s3, $zero
    jal     Function_0x801dae44
    or      $a2, $s4, $zero
branch_0x801dbdb8:
    or      $a0, $s3, $zero
    or      $a1, $s1, $zero
    jal     Function_0x801daf3c
    or      $a2, $s4, $zero
    lui     $a0, 0x8023
    lw      $a0, -0x7a94($a0)
    addiu   $s2, $s2, 0x1
branch_0x801dbdd4:
    slt     $at, $s2, $a0
    bnez    $at, branch_0x801dbd74
    addiu   $s0, $s0, 0x28
branch_0x801dbde0:
    lw      $ra, 0x34($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    lw      $s2, 0x1c($sp)
    lw      $s3, 0x20($sp)
    lw      $s4, 0x24($sp)
    lw      $s5, 0x28($sp)
    lw      $s6, 0x2c($sp)
    lw      $s7, 0x30($sp)
    jr      $ra
    addiu   $sp, $sp, 0xf0

.globl Function_0x801dbe0c
Function_0x801dbe0c: # 0x801dbe0c
    addiu   $sp, $sp, 0xff18
    lui     $t7, 0x8022
    sw      $s5, 0x2c($sp)
    addiu   $t7, $t7, 0x5b54
    or      $s5, $a0, $zero
    sw      $ra, 0x34($sp)
    sw      $s6, 0x30($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    addiu   $t0, $t7, 0x78
    addiu   $t6, $sp, 0x6c
branch_0x801dbe44:
    lw      $at, 0x0($t7)
    addiu   $t7, $t7, 0xc
    addiu   $t6, $t6, 0xc
    sw      $at, -0xc($t6)
    lw      $at, -0x8($t7)
    sw      $at, -0x8($t6)
    lw      $at, -0x4($t7)
    bne     $t7, $t0, branch_0x801dbe44
    sw      $at, -0x4($t6)
    lui     $t2, 0x8022
    addiu   $t2, $t2, 0x5bcc
    addiu   $t5, $t2, 0x24
    addiu   $t1, $sp, 0x44
branch_0x801dbe78:
    lw      $at, 0x0($t2)
    addiu   $t2, $t2, 0xc
    addiu   $t1, $t1, 0xc
    sw      $at, -0xc($t1)
    lw      $at, -0x8($t2)
    sw      $at, -0x8($t1)
    lw      $at, -0x4($t2)
    bne     $t2, $t5, branch_0x801dbe78
    sw      $at, -0x4($t1)
    lw      $at, 0x0($t2)
    sw      $at, 0x0($t1)
    lw      $v1, 0x8($s5)
    bnez    $v1, branch_0x801dbebc
    nop
    jal     Function_0x800ab6cc
    nop
    lw      $v1, 0x8($s5)
branch_0x801dbebc:
    lui     $s4, 0x8023
    lui     $s3, 0x8022
    lui     $s2, 0x8022
    addiu   $s2, $s2, 0x7f50
    addiu   $s3, $s3, 0x7ed0
    addiu   $s4, $s4, 0x8568
    addiu   $s0, $sp, 0x6c
    addiu   $s6, $sp, 0xe4
    lw      $v0, 0x0($s0)
branch_0x801dbee0:
    slt     $at, $v1, $v0
    bnezl   $at, branch_0x801dbf40
    addiu   $s0, $s0, 0x28
    lw      $t9, 0x4($s0)
    slt     $at, $v1, $t9
    beqzl   $at, branch_0x801dbf40
    addiu   $s0, $s0, 0x28
    lw      $t8, 0x0($s4)
    addiu   $s1, $s0, 0x8
    or      $a1, $s1, $zero
    addiu   $t0, $t8, 0x1
    sw      $t0, 0x0($s4)
    lw      $t7, 0x8($s5)
    or      $a0, $s2, $zero
    bnel    $t7, $v0, branch_0x801dbf2c
    or      $a0, $s2, $zero
    jal     Function_0x801dae44
    or      $a2, $s3, $zero
    or      $a0, $s2, $zero
branch_0x801dbf2c:
    or      $a1, $s1, $zero
    jal     Function_0x801daf3c
    or      $a2, $s3, $zero
    lw      $v1, 0x8($s5)
    addiu   $s0, $s0, 0x28
branch_0x801dbf40:
    bnel    $s0, $s6, branch_0x801dbee0
    lw      $v0, 0x0($s0)
    lw      $t6, 0x44($sp)
    lw      $t4, 0x48($sp)
    slt     $at, $v1, $t6
    bnez    $at, branch_0x801dbfac
    slt     $at, $v1, $t4
    beqzl   $at, branch_0x801dbfb0
    lw      $ra, 0x34($sp)
    lw      $t3, 0x0($s4)
    lw      $t2, 0x44($sp)
    lui     $a0, 0x8022
    addiu   $t5, $t3, 0x1
    sw      $t5, 0x0($s4)
    lw      $t1, 0x8($s5)
    addiu   $a0, $a0, 0x7f84
    addiu   $a1, $sp, 0x4c
    bne     $t2, $t1, branch_0x801dbf94
    lui     $a2, 0x8022
    jal     Function_0x801dae44
    addiu   $a2, $a2, 0x7ed4
branch_0x801dbf94:
    lui     $a0, 0x8022
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x7ed4
    addiu   $a0, $a0, 0x7f84
    jal     Function_0x801daf3c
    addiu   $a1, $sp, 0x4c
branch_0x801dbfac:
    lw      $ra, 0x34($sp)
branch_0x801dbfb0:
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    lw      $s5, 0x2c($sp)
    lw      $s6, 0x30($sp)
    jr      $ra
    addiu   $sp, $sp, 0xe8

.globl Function_0x801dbfd4
Function_0x801dbfd4: # 0x801dbfd4
    addiu   $sp, $sp, 0xffc8
    sw      $ra, 0x14($sp)
    lw      $t6, 0x4($a0)
    lui     $t7, 0x8022
    addiu   $t7, $t7, 0x37f0
    addiu   $at, $zero, 0xc
    subu    $a1, $t6, $t7
    div     $zero, $a1, $at
    mflo    $t8
    addiu   $at, $zero, 0x2
    bne     $t8, $at, branch_0x801dc154
    addiu   $v0, $zero, 0x1
    lui     $at, 0x8023
    sw      $v0, -0x7a98($at)
    lw      $t9, 0x8($a0)
    bne     $v0, $t9, branch_0x801dc094
    nop
    jal     Function_0x800ab6cc
    nop
    lui     $at, 0x8022
    addiu   $t0, $zero, 0x6
    addiu   $t1, $zero, 0x2
    sw      $t0, 0x7f50($at)
    sw      $t1, 0x7f54($at)
    lui     $at, 0x8022
    sw      $zero, 0x7f58($at)
    lui     $at, 0x8022
    lwc1    $f4, 0x5cec($at)
    lui     $at, 0x8022
    mtc1    $zero, $s0
    swc1    $f4, 0x7f80($at)
    lui     $at, 0xc396
    mtc1    $at, $a2
    lui     $at, 0x8022
    swc1    $f6, 0x7f5c($at)
    lui     $at, 0x8022
    swc1    $f16, 0x7f60($at)
    lui     $at, 0xc407
    mtc1    $at, $t0
    lui     $at, 0x8022
    swc1    $f8, 0x7f64($at)
    lui     $at, 0x8022
    swc1    $f16, 0x7f74($at)
    lui     $at, 0x3f80
    mtc1    $at, $t2
    lui     $at, 0x8022
    swc1    $f16, 0x7f7c($at)
    swc1    $f10, 0x7f78($at)
branch_0x801dc094:
    lui     $t2, 0x8022
    lw      $t2, 0x7f58($t2)
    lui     $at, 0x8022
    mtc1    $zero, $v0
    addiu   $t3, $t2, 0x1
    sw      $t3, 0x7f58($at)
    lui     $at, 0xc040
    mtc1    $at, $zero
    lui     $at, 0xc0a0
    mtc1    $at, $t6
    mul.s   $f18, $f0, $f0
    swc1    $f2, 0x2c($sp)
    swc1    $f0, 0x28($sp)
    mul.s   $f4, $f2, $f2
    swc1    $f14, 0x30($sp)
    mul.s   $f8, $f14, $f14
    add.s   $f6, $f18, $f4
    jal     sqrtf
    add.s   $f12, $f8, $f6
    lui     $at, 0x4100
    lui     $v0, 0x8022
    lui     $a0, 0x8022
    mtc1    $at, $v0
    addiu   $a0, $a0, 0x7f5c
    addiu   $v0, $v0, 0x7f50
    addiu   $v1, $sp, 0x28
    lwc1    $f12, 0x0($v1)
    addiu   $v0, $v0, 0x4
    beq     $v0, $a0, branch_0x801dc138
    div.s   $f18, $f12, $f0
branch_0x801dc10c:
    lwc1    $f16, 0x8($v0)
    swc1    $f18, 0x14($v0)
    lwc1    $f14, 0x14($v0)
    lwc1    $f12, 0x4($v1)
    addiu   $v0, $v0, 0x4
    mul.s   $f14, $f14, $f2
    div.s   $f18, $f12, $f0
    addiu   $v1, $v1, 0x4
    add.s   $f14, $f16, $f14
    bne     $v0, $a0, branch_0x801dc10c
    swc1    $f14, 0x4($v0)
branch_0x801dc138:
    swc1    $f18, 0x14($v0)
    lwc1    $f14, 0x14($v0)
    lwc1    $f16, 0x8($v0)
    addiu   $v1, $v1, 0x4
    mul.s   $f14, $f14, $f2
    add.s   $f14, $f16, $f14
    swc1    $f14, 0x8($v0)
branch_0x801dc154:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop

.globl Function_0x801dc164
Function_0x801dc164: # 0x801dc164
    addiu   $sp, $sp, 0xff70
    lui     $t6, 0x8022
    addiu   $v1, $sp, 0x54
    addiu   $t6, $t6, 0x5bf4
    sw      $ra, 0x14($sp)
    sw      $a0, 0x90($sp)
    addiu   $t9, $t6, 0x30
    or      $t0, $v1, $zero
branch_0x801dc184:
    lw      $at, 0x0($t6)
    addiu   $t6, $t6, 0xc
    addiu   $t0, $t0, 0xc
    sw      $at, -0xc($t0)
    lw      $at, -0x8($t6)
    sw      $at, -0x8($t0)
    lw      $at, -0x4($t6)
    bne     $t6, $t9, branch_0x801dc184
    sw      $at, -0x4($t0)
    lw      $at, 0x0($t6)
    addiu   $t1, $sp, 0x20
    or      $t5, $v1, $zero
    addiu   $t4, $v1, 0x30
    sw      $at, 0x0($t0)
branch_0x801dc1bc:
    lw      $at, 0x0($t5)
    addiu   $t5, $t5, 0xc
    addiu   $t1, $t1, 0xc
    sw      $at, -0xc($t1)
    lw      $at, -0x8($t5)
    sw      $at, -0x8($t1)
    lw      $at, -0x4($t5)
    bne     $t5, $t4, branch_0x801dc1bc
    sw      $at, -0x4($t1)
    lw      $at, 0x0($t5)
    lui     $t9, 0x8022
    addiu   $t9, $t9, 0x48d4
    sw      $at, 0x0($t1)
    lw      $t8, 0x90($sp)
    addiu   $at, $zero, 0xc
    addiu   $t0, $zero, 0x8
    lw      $t7, 0x4($t8)
    subu    $v0, $t7, $t9
    div     $zero, $v0, $at
    mflo    $t6
    addiu   $at, $zero, 0x2
    bnel    $t6, $at, branch_0x801dc2fc
    lw      $ra, 0x14($sp)
    lw      $t3, 0x90($sp)
    lui     $at, 0x8023
    sw      $t0, -0x7a98($at)
    lw      $v0, 0x8($t3)
    addiu   $at, $zero, 0x1
    bnel    $v0, $at, branch_0x801dc264
    lw      $t4, 0x90($sp)
    jal     Function_0x800ab6cc
    nop
    lui     $a0, 0x8022
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x7ee0
    addiu   $a0, $a0, 0x7f50
    addiu   $a1, $sp, 0x20
    jal     Function_0x801dafe4
    addiu   $a3, $zero, 0x8
    lw      $t2, 0x90($sp)
    lw      $v0, 0x8($t2)
    lw      $t4, 0x90($sp)
branch_0x801dc264:
    lwc1    $f6, 0x20($sp)
    lui     $a0, 0x8022
    lw      $t5, 0x4($t4)
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x7ee0
    lw      $t1, 0x0($t5)
    addiu   $a0, $a0, 0x7f50
    addiu   $a1, $sp, 0x20
    div     $zero, $v0, $t1
    mflo    $t8
    mtc1    $t8, $a0
    bnez    $t1, branch_0x801dc29c
    nop
    break   0x7
branch_0x801dc29c:
    addiu   $at, $zero, 0xffff
    bne     $t1, $at, branch_0x801dc2b4
    lui     $at, 0x8000
    bne     $v0, $at, branch_0x801dc2b4
    nop
    break   0x6
branch_0x801dc2b4:
    cvt.s.w $f0, $f4
    lui     $at, 0x4396
    mtc1    $at, $t0
    lui     $at, 0xc348
    mtc1    $at, $s2
    lwc1    $f4, 0x24($sp)
    mul.s   $f10, $f8, $f0
    addiu   $a3, $zero, 0x8
    mul.s   $f2, $f18, $f0
    add.s   $f16, $f6, $f10
    lwc1    $f6, 0x28($sp)
    add.s   $f8, $f4, $f2
    swc1    $f16, 0x20($sp)
    add.s   $f10, $f6, $f2
    swc1    $f8, 0x24($sp)
    jal     Function_0x801db190
    swc1    $f10, 0x28($sp)
    lw      $ra, 0x14($sp)
branch_0x801dc2fc:
    addiu   $sp, $sp, 0x90
    jr      $ra
    nop

.globl Function_0x801dc308
Function_0x801dc308: # 0x801dc308
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    lw      $t6, 0x4($a0)
    lui     $t7, 0x8022
    addiu   $t7, $t7, 0x3d3c
    addiu   $at, $zero, 0xc
    subu    $v0, $t6, $t7
    div     $zero, $v0, $at
    mflo    $t8
    addiu   $at, $zero, 0x2
    bnel    $t8, $at, branch_0x801dc360
    lw      $ra, 0x14($sp)
    lw      $t9, 0x8($a0)
    addiu   $at, $zero, 0x1
    bnel    $t9, $at, branch_0x801dc360
    lw      $ra, 0x14($sp)
    jal     Function_0x800ab6cc
    nop
    addiu   $a0, $zero, 0x1
    jal     Function_0x800ab6fc
    or      $a1, $zero, $zero
    lw      $ra, 0x14($sp)
branch_0x801dc360:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801dc36c
Function_0x801dc36c: # 0x801dc36c
    addiu   $sp, $sp, 0xff50
    sw      $ra, 0x6c($sp)
    sw      $fp, 0x68($sp)
    sw      $s7, 0x64($sp)
    sw      $s6, 0x60($sp)
    sw      $s5, 0x5c($sp)
    sw      $s4, 0x58($sp)
    sw      $s3, 0x54($sp)
    sw      $s2, 0x50($sp)
    sw      $s1, 0x4c($sp)
    sw      $s0, 0x48($sp)
    sdc1    $30, 0x40($29)
    sdc1    $28, 0x38($29)
    sdc1    $26, 0x30($29)
    sdc1    $24, 0x28($29)
    sdc1    $22, 0x20($29)
    sdc1    $20, 0x18($29)
    lw      $v1, 0x4($a0)
    lui     $t8, 0x8022
    addiu   $t8, $t8, 0x3fa0
    addiu   $at, $zero, 0xc
    subu    $s4, $v1, $t8
    div     $zero, $s4, $at
    lw      $t6, 0x0($a0)
    mflo    $t9
    addiu   $at, $zero, 0x2
    addiu   $t7, $t6, 0x5c
    bne     $t9, $at, branch_0x801dca4c
    sw      $t7, 0xa8($sp)
    addiu   $t0, $zero, 0x18
    lui     $at, 0x8023
    sw      $t0, -0x7a98($at)
    lw      $v0, 0x8($a0)
    addiu   $at, $zero, 0x1
    bne     $v0, $at, branch_0x801dc6a4
    addiu   $s4, $v0, 0xffe2
    jal     Function_0x800ab6cc
    nop
    lui     $at, 0x4188
    mtc1    $at, $fp
    lui     $at, 0x8022
    lwc1    $f28, 0x5cf0($at)
    lui     $fp, 0x8022
    lui     $at, 0x3f80
    addiu   $fp, $fp, 0x7f50
    lui     $s2, 0x8022
    lui     $s7, 0x8015
    mtc1    $at, $k0
    mtc1    $zero, $t8
    addiu   $s7, $s7, 0x40b0
    addiu   $s2, $s2, 0x7ee0
    or      $s1, $fp, $zero
    or      $s4, $zero, $zero
    addiu   $s6, $zero, 0x7
    addiu   $s5, $zero, 0xa
branch_0x801dc448:
    addiu   $t1, $zero, 0x1
    sw      $t1, 0x0($s1)
    jal     Function_0x80047df0
    sw      $zero, 0x4($s1)
    divu    $zero, $v0, $s5
    mfhi    $t2
    sw      $t2, 0x8($s1)
    bnez    $s5, branch_0x801dc470
    nop
    break   0x7
branch_0x801dc470:
    jal     Function_0x80047df0
    nop
    divu    $zero, $v0, $s6
    mtc1    $s4, $a0
    lui     $at, 0x41f0
    mtc1    $at, $t0
    cvt.s.w $f20, $f4
    lw      $t3, 0xa8($sp)
    mfhi    $t4
    mtc1    $t4, $a0
    lwc1    $f6, 0x0($t3)
    lui     $at, 0x4f80
    mul.s   $f10, $f20, $f8
    cvt.s.w $f8, $f4
    sub.s   $f18, $f6, $f10
    bnez    $s6, branch_0x801dc4b8
    nop
    break   0x7
branch_0x801dc4b8:
    bgezl   $t4, branch_0x801dc4d0
    sub.s   $f10, $f18, $f8
    mtc1    $at, $a2
    nop
    add.s   $f8, $f8, $f6
    sub.s   $f10, $f18, $f8
branch_0x801dc4d0:
    lui     $at, 0x4396
    mtc1    $at, $a0
    nop
    sub.s   $f6, $f10, $f4
    jal     Function_0x80047df0
    swc1    $f6, 0xc($s1)
    jal     Function_0x80047df0
    or      $s3, $v0, $zero
    lui     $at, 0x41c0
    mtc1    $at, $s2
    lui     $at, 0x4334
    mtc1    $at, $t0
    div.s   $f22, $f20, $f18
    lui     $at, 0x4580
    mtc1    $at, $a0
    lui     $at, 0x43b4
    mtc1    $at, $s2
    andi    $t9, $v0, 0x3f
    lui     $at, 0x4f80
    andi    $t1, $s3, 0x1f
    mul.s   $f10, $f22, $f8
    nop
    mul.s   $f6, $f10, $f4
    mtc1    $t9, $a0
    div.s   $f8, $f6, $f18
    cvt.s.w $f6, $f4
    trunc.w.s   $f10, $f8
    mfc1    $t6, $t2
    nop
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 2
    bgez    $t9, branch_0x801dc560
    addu    $s0, $s7, $t8
    mtc1    $at, $s2
    nop
    add.s   $f6, $f6, $f18
branch_0x801dc560:
    multu   $s4, $t1
    lui     $at, 0x8022
    lwc1    $f8, 0x5cf4($at)
    lwc1    $f4, 0x0($s0)
    lw      $t0, 0xa8($sp)
    mul.s   $f10, $f6, $f8
    lui     $at, 0x4f80
    lwc1    $f6, 0x4($t0)
    mflo    $t2
    mtc1    $t2, $t0
    mul.s   $f18, $f4, $f10
    bgez    $t2, branch_0x801dc5a0
    cvt.s.w $f4, $f8
    mtc1    $at, $t2
    nop
    add.s   $f4, $f4, $f10
branch_0x801dc5a0:
    sub.s   $f8, $f6, $f4
    add.s   $f10, $f18, $f8
    jal     Function_0x80047df0
    swc1    $f10, 0x10($s1)
    andi    $t3, $v0, 0x7f
    mtc1    $t3, $a0
    lwc1    $f6, 0x0($s0)
    bgez    $t3, branch_0x801dc5d4
    cvt.s.w $f18, $f4
    lui     $at, 0x4f80
    mtc1    $at, $t0
    nop
    add.s   $f18, $f18, $f8
branch_0x801dc5d4:
    lw      $t4, 0xa8($sp)
    mul.s   $f10, $f6, $f18
    lwc1    $f4, 0x8($t4)
    swc1    $f24, 0x18($s1)
    swc1    $f24, 0x1c($s1)
    swc1    $f26, 0x20($s1)
    swc1    $f24, 0x24($s1)
    sub.s   $f8, $f4, $f10
    swc1    $f26, 0x28($s1)
    swc1    $f24, 0x2c($s1)
    swc1    $f28, 0x30($s1)
    bnez    $s4, branch_0x801dc610
    swc1    $f8, 0x14($s1)
    b       branch_0x801dc688
    swc1    $f30, 0x0($s2)
branch_0x801dc610:
    jal     Function_0x80047df0
    nop
    jal     Function_0x80047df0
    or      $s3, $v0, $zero
    or      $s0, $v0, $zero
    jal     sqrtf
    mov.s   $f12, $f22
    andi    $t5, $s3, 0x3
    mtc1    $t5, $s2
    lui     $at, 0x4170
    mtc1    $at, $a2
    bgez    $t5, branch_0x801dc654
    cvt.s.w $f4, $f18
    lui     $at, 0x4f80
    mtc1    $at, $t2
    nop
    add.s   $f4, $f4, $f10
branch_0x801dc654:
    andi    $t6, $s0, 0x3
    addiu   $t7, $t6, 0x1
    mtc1    $t7, $s2
    add.s   $f8, $f6, $f4
    lui     $at, 0x4f80
    bgez    $t7, branch_0x801dc67c
    cvt.s.w $f10, $f18
    mtc1    $at, $a2
    nop
    add.s   $f10, $f10, $f6
branch_0x801dc67c:
    mul.s   $f4, $f0, $f10
    add.s   $f18, $f4, $f8
    swc1    $f18, 0x0($s2)
branch_0x801dc688:
    addiu   $s4, $s4, 0x1
    addiu   $at, $zero, 0x18
    addiu   $s2, $s2, 0x4
    bne     $s4, $at, branch_0x801dc448
    addiu   $s1, $s1, 0x34
    b       branch_0x801dca50
    lw      $ra, 0x6c($sp)
branch_0x801dc6a4:
    bltz    $s4, branch_0x801dca4c
    lui     $at, 0x3f80
    mtc1    $s4, $a2
    mtc1    $at, $k0
    lui     $at, 0x4080
    cvt.s.w $f20, $f6
    lw      $a1, 0x0($v1)
    mtc1    $at, $t2
    lui     $at, 0x8022
    lwc1    $f4, 0x5cf8($at)
    addiu   $a1, $a1, 0xffe2
    mtc1    $a1, $a2
    mul.s   $f8, $f20, $f4
    lui     $at, 0x4334
    lui     $s7, 0x8015
    addiu   $s7, $s7, 0x40b0
    cvt.s.w $f4, $f6
    sub.s   $f18, $f10, $f8
    mtc1    $at, $t0
    lui     $at, 0x4580
    div.s   $f10, $f20, $f4
    mtc1    $at, $a0
    lui     $at, 0x43b4
    swc1    $f18, 0x98($sp)
    mul.s   $f6, $f10, $f8
    mtc1    $at, $t0
    mul.s   $f10, $f6, $f4
    div.s   $f6, $f10, $f8
    mul.s   $f8, $f18, $f18
    trunc.w.s   $f4, $f6
    mfc1    $t9, $a0
    nop
    andi    $t0, $t9, 0xfff
    sll     $t1, $t0, 2
    addu    $t2, $s7, $t1
    lwc1    $f10, 0x0($t2)
    swc1    $f26, 0xa0($sp)
    lwc1    $f18, 0xa0($sp)
    swc1    $f10, 0x9c($sp)
    lwc1    $f6, 0x9c($sp)
    mul.s   $f4, $f6, $f6
    add.s   $f10, $f8, $f4
    mul.s   $f6, $f18, $f18
    jal     sqrtf
    add.s   $f12, $f6, $f10
    lui     $a0, 0x8022
    addiu   $a0, $a0, 0x7f50
    addiu   $v1, $sp, 0x98
    addiu   $v0, $sp, 0xa4
    addiu   $v1, $v1, 0x4
    beq     $v1, $v0, branch_0x801dc78c
    lwc1    $f30, -0x4($v1)
branch_0x801dc774:
    div.s   $f28, $f30, $f0
    lwc1    $f30, 0x0($v1)
    addiu   $v1, $v1, 0x4
    addiu   $a0, $a0, 0x4
    bne     $v1, $v0, branch_0x801dc774
    swc1    $f28, 0x14($a0)
branch_0x801dc78c:
    div.s   $f28, $f30, $f0
    addiu   $a0, $a0, 0x4
    swc1    $f28, 0x14($a0)
    lui     $at, 0x4188
    mtc1    $at, $fp
    lui     $at, 0x8022
    lwc1    $f28, 0x5cfc($at)
    lui     $at, 0x3e00
    mtc1    $at, $s6
    addiu   $s4, $sp, 0xa4
    lui     $fp, 0x8022
    lui     $at, 0x40e0
    addiu   $fp, $fp, 0x7f50
    lui     $s2, 0x8022
    mtc1    $at, $s4
    mtc1    $zero, $t8
    addiu   $s2, $s2, 0x7ee0
    or      $s1, $fp, $zero
    or      $s7, $s4, $zero
    or      $s6, $s4, $zero
    or      $s5, $s4, $zero
branch_0x801dc7e0:
    lwc1    $f0, 0x0($s2)
    lui     $at, 0x4180
    mtc1    $at, $s2
    c.lt.s $f30, $f0
    lui     $at, 0x4190
    mtc1    $at, $a2
    addiu   $at, $zero, 0xa
    bc1f    branch_0x801dc80c
    or      $v0, $zero, $zero
    b       branch_0x801dc80c
    addiu   $v0, $zero, 0x1
branch_0x801dc80c:
    c.lt.s $f18, $f0
    lui     $a0, 0x8022
    or      $s3, $zero, $zero
    or      $s0, $zero, $zero
    bc1f    branch_0x801dc82c
    addiu   $a0, $a0, 0x7f50
    b       branch_0x801dc82c
    addiu   $s3, $zero, 0x1
branch_0x801dc82c:
    c.lt.s $f6, $f0
    addiu   $v1, $sp, 0x98
    bc1f    branch_0x801dc844
    nop
    b       branch_0x801dc844
    addiu   $s0, $zero, 0x1
branch_0x801dc844:
    lw      $t4, 0x8($s1)
    lui     $t0, 0x8022
    addiu   $t0, $t0, 0x7ee4
    addu    $t5, $s0, $t4
    addu    $t6, $t5, $s3
    addu    $t7, $t6, $v0
    addiu   $t8, $t7, 0x1
    div     $zero, $t8, $at
    mfhi    $t9
    sltu    $at, $s2, $t0
    bnez    $at, branch_0x801dc994
    sw      $t9, 0x8($s1)
    or      $v0, $s1, $zero
branch_0x801dc878:
    lwc1    $f10, 0xc($a0)
    lwc1    $f8, 0xc($v0)
    addiu   $v1, $v1, 0x4
    sltu    $at, $v1, $s4
    sub.s   $f4, $f10, $f8
    addiu   $a0, $a0, 0x4
    addiu   $v0, $v0, 0x4
    bnez    $at, branch_0x801dc878
    swc1    $f4, -0x4($v1)
    lwc1    $f0, 0x98($sp)
    lwc1    $f14, 0x9c($sp)
    lwc1    $f16, 0xa0($sp)
    mul.s   $f18, $f0, $f0
    nop
    mul.s   $f6, $f14, $f14
    add.s   $f10, $f18, $f6
    mul.s   $f8, $f16, $f16
    jal     sqrtf
    add.s   $f12, $f8, $f10
    c.lt.s $f0, $f28
    lui     $a0, 0x8022
    mov.s   $f2, $f0
    addiu   $a0, $a0, 0x7f50
    bc1f    branch_0x801dc8f4
    addiu   $v1, $sp, 0x98
branch_0x801dc8dc:
    lwc1    $f4, 0x18($a0)
    addiu   $v1, $v1, 0x4
    addiu   $a0, $a0, 0x4
    bne     $v1, $s5, branch_0x801dc8dc
    swc1    $f4, -0x4($v1)
    mov.s   $f2, $f26
branch_0x801dc8f4:
    lwc1    $f0, 0x98($sp)
    lwc1    $f6, 0x18($fp)
    lwc1    $f14, 0x9c($sp)
    div.s   $f18, $f0, $f2
    lui     $at, 0x40a0
    lwc1    $f4, 0x1c($fp)
    lwc1    $f16, 0xa0($sp)
    mul.s   $f8, $f6, $f20
    mtc1    $at, $a2
    lui     $at, 0x40c0
    add.s   $f10, $f18, $f8
    div.s   $f8, $f14, $f2
    mul.s   $f0, $f10, $f22
    nop
    mul.s   $f18, $f4, $f6
    mtc1    $at, $a0
    swc1    $f0, 0x98($sp)
    div.s   $f6, $f16, $f2
    add.s   $f10, $f8, $f18
    lwc1    $f8, 0x20($fp)
    mul.s   $f18, $f8, $f20
    div.s   $f14, $f10, $f4
    add.s   $f10, $f6, $f18
    mul.s   $f16, $f10, $f22
    swc1    $f16, 0xa0($sp)
    mul.s   $f4, $f0, $f0
    swc1    $f14, 0x9c($sp)
    mul.s   $f8, $f14, $f14
    add.s   $f6, $f4, $f8
    mul.s   $f18, $f16, $f16
    jal     sqrtf
    add.s   $f12, $f18, $f6
    addiu   $v1, $sp, 0x98
    or      $v0, $s1, $zero
branch_0x801dc97c:
    lwc1    $f10, 0x0($v1)
    addiu   $v1, $v1, 0x4
    addiu   $v0, $v0, 0x4
    div.s   $f4, $f10, $f0
    bne     $v1, $s6, branch_0x801dc97c
    swc1    $f4, 0x14($v0)
branch_0x801dc994:
    or      $a1, $zero, $zero
    or      $v0, $s1, $zero
branch_0x801dc99c:
    lwc1    $f8, 0x18($v0)
    lwc1    $f18, 0x0($s2)
    lwc1    $f10, 0xc($v0)
    addiu   $a1, $a1, 0x1
    mul.s   $f6, $f8, $f18
    slti    $at, $a1, 0x3
    addiu   $v0, $v0, 0x4
    add.s   $f4, $f10, $f6
    bnez    $at, branch_0x801dc99c
    swc1    $f4, 0x8($v0)
    lw      $t1, 0xa8($sp)
    lwc1    $f18, 0xc($s1)
    lui     $at, 0x4496
    lwc1    $f8, 0x0($t1)
    mtc1    $at, $a2
    swc1    $f24, 0xa0($sp)
    sub.s   $f10, $f8, $f18
    swc1    $f6, 0x9c($sp)
    mul.s   $f4, $f10, $f10
    swc1    $f10, 0x98($sp)
    lwc1    $f10, 0xa0($sp)
    mul.s   $f8, $f6, $f6
    add.s   $f18, $f4, $f8
    mul.s   $f6, $f10, $f10
    jal     sqrtf
    add.s   $f12, $f6, $f18
    addiu   $v1, $sp, 0x98
    or      $v0, $s1, $zero
branch_0x801dca0c:
    lwc1    $f4, 0x0($v1)
    addiu   $v1, $v1, 0x4
    addiu   $v0, $v0, 0x4
    div.s   $f8, $f4, $f0
    bne     $v1, $s7, branch_0x801dca0c
    swc1    $f8, 0x20($v0)
    lui     $at, 0x8022
    lwc1    $f6, 0x5d00($at)
    lwc1    $f10, 0x0($s2)
    lui     $t2, 0x8022
    addiu   $t2, $t2, 0x7f40
    sub.s   $f18, $f10, $f6
    addiu   $s2, $s2, 0x4
    addiu   $s1, $s1, 0x34
    bne     $s2, $t2, branch_0x801dc7e0
    swc1    $f18, -0x4($s2)
branch_0x801dca4c:
    lw      $ra, 0x6c($sp)
branch_0x801dca50:
    ldc1    $20, 0x18($29)
    ldc1    $22, 0x20($29)
    ldc1    $24, 0x28($29)
    ldc1    $26, 0x30($29)
    ldc1    $28, 0x38($29)
    ldc1    $30, 0x40($29)
    lw      $s0, 0x48($sp)
    lw      $s1, 0x4c($sp)
    lw      $s2, 0x50($sp)
    lw      $s3, 0x54($sp)
    lw      $s4, 0x58($sp)
    lw      $s5, 0x5c($sp)
    lw      $s6, 0x60($sp)
    lw      $s7, 0x64($sp)
    lw      $fp, 0x68($sp)
    jr      $ra
    addiu   $sp, $sp, 0xb0

.globl Function_0x801dca94
Function_0x801dca94: # 0x801dca94
    addiu   $sp, $sp, 0xffc8
    sw      $ra, 0x34($sp)
    sw      $s3, 0x30($sp)
    sw      $s2, 0x2c($sp)
    sw      $s1, 0x28($sp)
    sw      $s0, 0x24($sp)
    sdc1    $22, 0x18($29)
    sdc1    $20, 0x10($29)
    lw      $t6, 0x4($a0)
    lui     $t7, 0x8022
    addiu   $t7, $t7, 0x4080
    addiu   $at, $zero, 0xc
    subu    $a1, $t6, $t7
    div     $zero, $a1, $at
    mflo    $t8
    addiu   $at, $zero, 0x2
    bne     $t8, $at, branch_0x801dd00c
    or      $s3, $a0, $zero
    addiu   $s1, $zero, 0x1
    lui     $at, 0x8023
    sw      $s1, -0x7a98($at)
    lui     $at, 0x8022
    lwc1    $f4, 0x5d04($at)
    lui     $s0, 0x8023
    addiu   $s0, $s0, 0x8580
    swc1    $f4, 0x0($s0)
    lw      $v0, 0x8($a0)
    addiu   $t9, $zero, 0x96
    slti    $at, $v0, 0x96
    beqz    $at, branch_0x801dcb34
    subu    $t0, $t9, $v0
    mtc1    $t0, $a2
    jal     sqrtf
    cvt.s.w $f12, $f6
    lui     $at, 0x4140
    mtc1    $at, $t0
    mtc1    $zero, $s6
    mul.s   $f2, $f0, $f8
    b       branch_0x801dcb40
    nop
branch_0x801dcb34:
    mtc1    $zero, $s6
    nop
    mov.s   $f2, $f22
branch_0x801dcb40:
    lui     $at, 0x8022
    lwc1    $f10, 0x5d08($at)
    lui     $at, 0x8022
    add.s   $f4, $f2, $f10
    swc1    $f4, 0x4($s0)
    lwc1    $f6, 0x5d0c($at)
    swc1    $f6, 0x8($s0)
    lw      $t1, 0x8($s3)
    bne     $s1, $t1, branch_0x801dcbec
    nop
    jal     Function_0x800ab6cc
    nop
    lui     $at, 0x8022
    addiu   $t2, $zero, 0xc
    sw      $t2, 0x7f50($at)
    sw      $zero, 0x7f54($at)
    lui     $at, 0x8022
    sw      $zero, 0x7f58($at)
    lui     $at, 0x8022
    lwc1    $f10, 0x5d10($at)
    lwc1    $f8, 0x0($s0)
    lui     $at, 0x43e1
    lwc1    $f6, 0x4($s0)
    sub.s   $f4, $f8, $f10
    mtc1    $at, $t0
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x8570
    add.s   $f10, $f6, $f8
    swc1    $f4, 0x0($v0)
    lui     $at, 0x8022
    lwc1    $f4, 0x8($s0)
    swc1    $f10, 0x4($v0)
    lwc1    $f6, 0x5d14($at)
    lui     $at, 0x428c
    mtc1    $at, $t2
    sub.s   $f8, $f4, $f6
    lui     $at, 0x8022
    swc1    $f8, 0x8($v0)
    swc1    $f10, 0x7ee0($at)
    lui     $at, 0x3e80
    mtc1    $at, $a0
    lui     $at, 0x8022
    swc1    $f4, 0x7f80($at)
branch_0x801dcbec:
    lui     $s1, 0x8023
    lui     $s0, 0x8023
    lui     $at, 0x8022
    lui     $s2, 0x8023
    addiu   $s2, $s2, 0x857c
    lwc1    $f20, 0x5d18($at)
    addiu   $s0, $s0, 0x8570
    addiu   $s1, $s1, 0x8580
branch_0x801dcc0c:
    lwc1    $f6, 0x0($s1)
    lwc1    $f8, 0x0($s0)
    lui     $at, 0x8023
    sub.s   $f14, $f6, $f8
    c.le.s $f22, $f14
    nop
    bc1fl   branch_0x801dcc48
    neg.s   $f12, $f14
    lui     $at, 0x8023
    swc1    $f14, -0x7a64($at)
    jal     sqrtf
    mov.s   $f12, $f14
    b       branch_0x801dcc54
    mov.s   $f2, $f0

.globl Function_0x801dcc44
Function_0x801dcc44: # 0x801dcc44
    neg.s   $f12, $f14
branch_0x801dcc48:
    jal     sqrtf
    swc1    $f14, -0x7a64($at)
    neg.s   $f2, $f0
branch_0x801dcc54:
    mul.s   $f4, $f2, $f20
    lwc1    $f10, 0x0($s0)
    addiu   $s0, $s0, 0x4
    sltu    $at, $s0, $s2
    addiu   $s1, $s1, 0x4
    add.s   $f6, $f10, $f4
    bnez    $at, branch_0x801dcc0c
    swc1    $f6, -0x4($s0)
    lw      $t3, 0x8($s3)
    lui     $at, 0x4580
    mtc1    $at, $s0
    addiu   $t4, $t3, 0xff6a
    mtc1    $t4, $t0
    lui     $at, 0x43b4
    mtc1    $at, $s2
    cvt.s.w $f10, $f8
    lui     $at, 0x4100
    mtc1    $at, $a0
    lui     $v0, 0x8015
    addiu   $v0, $v0, 0x40b0
    lui     $at, 0x41a0
    mul.s   $f6, $f10, $f4
    lui     $s0, 0x8023
    addiu   $s0, $s0, 0x8590
    mul.s   $f8, $f6, $f16
    div.s   $f10, $f8, $f18
    mtc1    $at, $t0
    lui     $at, 0x8023
    trunc.w.s   $f4, $f10
    mfc1    $t6, $a0
    lwc1    $f4, -0x7a90($at)
    lui     $at, 0x8022
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 2
    addu    $t9, $v0, $t8
    lwc1    $f6, 0x0($t9)
    mul.s   $f10, $f6, $f8
    sub.s   $f6, $f4, $f10
    swc1    $f6, 0x7f5c($at)
    lw      $t0, 0x8($s3)
    lui     $at, 0x4090
    mtc1    $at, $t2
    addiu   $t1, $t0, 0xff6a
    mtc1    $t1, $t0
    lui     $at, 0x4140
    cvt.s.w $f4, $f8
    mul.s   $f6, $f4, $f10
    nop
    mul.s   $f8, $f6, $f16
    div.s   $f4, $f8, $f18
    mtc1    $at, $t0
    lui     $at, 0x8023
    trunc.w.s   $f10, $f4
    mfc1    $t3, $t2
    lwc1    $f10, -0x7a8c($at)
    lui     $at, 0x8022
    andi    $t4, $t3, 0xfff
    sll     $t5, $t4, 2
    addu    $t6, $v0, $t5
    lwc1    $f6, 0x0($t6)
    mul.s   $f4, $f6, $f8
    sub.s   $f6, $f10, $f4
    swc1    $f6, 0x7f60($at)
    lw      $t7, 0x8($s3)
    lui     $at, 0x40f0
    mtc1    $at, $a0
    addiu   $t8, $t7, 0xff6a
    mtc1    $t8, $t0
    lui     $at, 0x41c8
    cvt.s.w $f10, $f8
    mul.s   $f6, $f10, $f4
    nop
    mul.s   $f8, $f6, $f16
    div.s   $f10, $f8, $f18
    mtc1    $at, $t0
    lui     $at, 0x8023
    trunc.w.s   $f4, $f10
    mfc1    $t0, $a0
    lwc1    $f4, -0x7a88($at)
    lui     $at, 0x8022
    andi    $t1, $t0, 0xfff
    sll     $t2, $t1, 2
    addu    $t3, $v0, $t2
    lwc1    $f6, 0x0($t3)
    mul.s   $f10, $f6, $f8
    sub.s   $f6, $f4, $f10
    swc1    $f6, 0x7f64($at)
    lui     $at, 0x8022
    lwc1    $f8, 0x7ee0($at)
    mul.s   $f4, $f8, $f16
    div.s   $f10, $f4, $f18
    trunc.w.s   $f6, $f10
    mfc1    $v1, $a2
    nop
    addiu   $t5, $v1, 0x400
    andi    $t6, $t5, 0xfff
    sll     $t7, $t6, 2
    addu    $t8, $v0, $t7
    lwc1    $f8, 0x0($t8)
    andi    $t3, $v1, 0xfff
    sll     $t4, $t3, 2
    swc1    $f8, 0x0($s0)
    lw      $t0, 0x4($s3)
    lw      $t9, 0x8($s3)
    lwc1    $f2, 0x0($s0)
    lw      $t1, 0x0($t0)
    addu    $t5, $v0, $t4
    div     $zero, $t9, $t1
    mflo    $t2
    mtc1    $t2, $a0
    bnez    $t1, branch_0x801dce18
    nop
    break   0x7
branch_0x801dce18:
    addiu   $at, $zero, 0xffff
    bne     $t1, $at, branch_0x801dce30
    lui     $at, 0x8000
    bne     $t9, $at, branch_0x801dce30
    nop
    break   0x6
branch_0x801dce30:
    cvt.s.w $f10, $f4
    lui     $at, 0x8022
    lwc1    $f6, 0x5d1c($at)
    lui     $at, 0x8022
    lwc1    $f4, 0x5d20($at)
    mul.s   $f8, $f10, $f6
    lwc1    $f6, 0x0($t5)
    swc1    $f6, 0x8($s0)
    lwc1    $f0, 0x8($s0)
    add.s   $f10, $f8, $f4
    mul.s   $f8, $f2, $f2
    swc1    $f10, 0x4($s0)
    lwc1    $f14, 0x4($s0)
    mul.s   $f4, $f14, $f14
    add.s   $f10, $f8, $f4
    mul.s   $f6, $f0, $f0
    jal     sqrtf
    add.s   $f12, $f6, $f10
    lui     $v1, 0x8023
    lui     $v0, 0x8022
    lui     $at, 0x8023
    lui     $a0, 0x8022
    addiu   $a0, $a0, 0x7f5c
    swc1    $f0, -0x7a64($at)
    addiu   $v0, $v0, 0x7f50
    addiu   $v1, $v1, 0x8590
    addiu   $v0, $v0, 0x4
    sltu    $at, $v0, $a0
    beqz    $at, branch_0x801dcec4
    lwc1    $f22, 0x0($v1)
branch_0x801dcea8:
    div.s   $f20, $f22, $f0
    lwc1    $f22, 0x4($v1)
    addiu   $v0, $v0, 0x4
    sltu    $at, $v0, $a0
    addiu   $v1, $v1, 0x4
    bnez    $at, branch_0x801dcea8
    swc1    $f20, 0x10($v0)
branch_0x801dcec4:
    div.s   $f20, $f22, $f0
    addiu   $v1, $v1, 0x4
    swc1    $f20, 0x14($v0)
    lw      $t6, 0x4($s3)
    lui     $at, 0x4320
    mtc1    $at, $a2
    lw      $t7, 0x0($t6)
    lui     $at, 0x8022
    mtc1    $t7, $t2
    nop
    cvt.s.w $f8, $f10
    lwc1    $f10, 0x7ee0($at)
    div.s   $f4, $f6, $f8
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x7ee0($at)
    lui     $at, 0x8023
    lwc1    $f8, -0x7a90($at)
    lui     $at, 0x8022
    lwc1    $f10, 0x7f5c($at)
    lui     $at, 0x8023
    sub.s   $f4, $f8, $f10
    jal     Function_0x80047df0
    swc1    $f4, -0x7a70($at)
    andi    $t8, $v0, 0x1f
    mtc1    $t8, $a2
    lui     $at, 0x4f80
    bgez    $t8, branch_0x801dcf40
    cvt.s.w $f8, $f6
    mtc1    $at, $t2
    nop
    add.s   $f8, $f8, $f10
branch_0x801dcf40:
    lui     $at, 0x4416
    mtc1    $at, $a0
    lui     $at, 0x8023
    add.s   $f6, $f8, $f4
    swc1    $f6, 0x4($s0)
    lwc1    $f10, -0x7a88($at)
    lui     $at, 0x8022
    lwc1    $f8, 0x7f64($at)
    lui     $at, 0x8023
    sub.s   $f4, $f10, $f8
    swc1    $f4, -0x7a68($at)
    lwc1    $f2, 0x0($s0)
    lwc1    $f14, 0x4($s0)
    lwc1    $f0, 0x8($s0)
    mul.s   $f6, $f2, $f2
    nop
    mul.s   $f10, $f14, $f14
    add.s   $f8, $f6, $f10
    mul.s   $f4, $f0, $f0
    jal     sqrtf
    add.s   $f12, $f4, $f8
    lui     $v1, 0x8023
    lui     $v0, 0x8022
    lui     $at, 0x8023
    lui     $a0, 0x8022
    addiu   $a0, $a0, 0x7f5c
    swc1    $f0, -0x7a64($at)
    addiu   $v0, $v0, 0x7f50
    addiu   $v1, $v1, 0x8590
    addiu   $v0, $v0, 0x4
    beq     $v0, $a0, branch_0x801dcfd8
    lwc1    $f22, 0x0($v1)
branch_0x801dcfc0:
    div.s   $f20, $f22, $f0
    lwc1    $f22, 0x4($v1)
    addiu   $v0, $v0, 0x4
    addiu   $v1, $v1, 0x4
    bne     $v0, $a0, branch_0x801dcfc0
    swc1    $f20, 0x1c($v0)
branch_0x801dcfd8:
    div.s   $f20, $f22, $f0
    addiu   $v1, $v1, 0x4
    swc1    $f20, 0x20($v0)
    lui     $t0, 0x8022
    lw      $t0, 0x7f58($t0)
    lui     $at, 0x8022
    addiu   $t9, $t0, 0x1
    bgez    $t9, branch_0x801dd008
    andi    $t1, $t9, 0x1
    beqz    $t1, branch_0x801dd008
    nop
    addiu   $t1, $t1, 0xfffe
branch_0x801dd008:
    sw      $t1, 0x7f58($at)
branch_0x801dd00c:
    lw      $ra, 0x34($sp)
    ldc1    $20, 0x10($29)
    ldc1    $22, 0x18($29)
    lw      $s0, 0x24($sp)
    lw      $s1, 0x28($sp)
    lw      $s2, 0x2c($sp)
    lw      $s3, 0x30($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38

.globl Function_0x801dd030
Function_0x801dd030: # 0x801dd030
    addiu   $sp, $sp, 0xfed8
    lui     $t7, 0x8022
    addiu   $t7, $t7, 0x5c28
    sw      $ra, 0x44($sp)
    sw      $fp, 0x40($sp)
    sw      $s7, 0x3c($sp)
    sw      $s6, 0x38($sp)
    sw      $s5, 0x34($sp)
    sw      $s4, 0x30($sp)
    sw      $s3, 0x2c($sp)
    sw      $s2, 0x28($sp)
    sw      $s1, 0x24($sp)
    sw      $s0, 0x20($sp)
    sdc1    $20, 0x18($29)
    addiu   $t1, $t7, 0x30
    addiu   $t6, $sp, 0xdc
branch_0x801dd070:
    lw      $at, 0x0($t7)
    addiu   $t7, $t7, 0xc
    addiu   $t6, $t6, 0xc
    sw      $at, -0xc($t6)
    lw      $at, -0x8($t7)
    sw      $at, -0x8($t6)
    lw      $at, -0x4($t7)
    bne     $t7, $t1, branch_0x801dd070
    sw      $at, -0x4($t6)
    lui     $t3, 0x8022
    addiu   $t3, $t3, 0x5c58
    addiu   $t9, $t3, 0x78
    addiu   $t2, $sp, 0x64
branch_0x801dd0a4:
    lw      $at, 0x0($t3)
    addiu   $t3, $t3, 0xc
    addiu   $t2, $t2, 0xc
    sw      $at, -0xc($t2)
    lw      $at, -0x8($t3)
    sw      $at, -0x8($t2)
    lw      $at, -0x4($t3)
    bne     $t3, $t9, branch_0x801dd0a4
    sw      $at, -0x4($t2)
    lw      $t8, 0x4($a0)
    lui     $t1, 0x8022
    addiu   $t1, $t1, 0x4374
    addiu   $at, $zero, 0xc
    subu    $v0, $t8, $t1
    div     $zero, $v0, $at
    mflo    $t7
    addiu   $at, $zero, 0x2
    bne     $t7, $at, branch_0x801dd3e0
    addiu   $t6, $zero, 0x10
    lui     $at, 0x8023
    sw      $t6, -0x7a98($at)
    lw      $t5, 0x8($a0)
    addiu   $at, $zero, 0x1
    bnel    $t5, $at, branch_0x801dd210
    lui     $at, 0x4140
    jal     Function_0x800ab6cc
    nop
    lui     $at, 0x8022
    lwc1    $f12, 0x5d24($at)
    lui     $at, 0x3f80
    lui     $s2, 0x8022
    lui     $s5, 0x8022
    lui     $a3, 0x8022
    lui     $a1, 0x8022
    mtc1    $at, $v0
    mtc1    $zero, $zero
    addiu   $a1, $a1, 0x7ed0
    addiu   $a3, $a3, 0x7ed8
    addiu   $s5, $s5, 0x7ed0
    addiu   $s2, $s2, 0x7f50
    addiu   $s6, $sp, 0xdc
    ori     $t0, $zero, 0xffff
    addiu   $a2, $zero, 0x6
    addiu   $a0, $zero, 0x3
branch_0x801dd154:
    sw      $a0, 0x0($s2)
    sw      $zero, 0x4($s2)
    sw      $zero, 0x8($s2)
    or      $v1, $zero, $zero
    or      $v0, $s2, $zero
    or      $s1, $s6, $zero
branch_0x801dd16c:
    lwc1    $f4, 0x0($s1)
    addiu   $v1, $v1, 0x1
    addiu   $v0, $v0, 0x4
    addiu   $s1, $s1, 0x4
    bne     $v1, $a0, branch_0x801dd16c
    swc1    $f4, 0x8($v0)
    swc1    $f0, 0x24($s2)
    swc1    $f2, 0x28($s2)
    swc1    $f0, 0x2c($s2)
    bne     $s5, $a1, branch_0x801dd1a0
    swc1    $f12, 0x30($s2)
    b       branch_0x801dd1a4
    sw      $a2, 0x0($s5)
branch_0x801dd1a0:
    sw      $t0, 0x0($s5)
branch_0x801dd1a4:
    addiu   $s5, $s5, 0x4
    sltu    $at, $s5, $a3
    addiu   $s6, $s6, 0x18
    bnez    $at, branch_0x801dd154
    addiu   $s2, $s2, 0x34
    lui     $fp, 0x8022
    addiu   $fp, $fp, 0x7ee0
    addiu   $s0, $sp, 0x64
    addiu   $s1, $sp, 0x6c
    addiu   $s7, $zero, 0x34
    addiu   $s2, $sp, 0xe4
branch_0x801dd1d0:
    lw      $v0, 0x0($s0)
    lw      $t3, 0x4($s0)
    lui     $t9, 0x8022
    multu   $v0, $s7
    addiu   $t9, $t9, 0x7f50
    or      $a1, $s1, $zero
    or      $a2, $fp, $zero
    subu    $a3, $t3, $v0
    mflo    $t4
    addu    $a0, $t4, $t9
    jal     Function_0x801dafe4
    nop
    addiu   $s1, $s1, 0x3c
    bne     $s1, $s2, branch_0x801dd1d0
    addiu   $s0, $s0, 0x3c
    lui     $at, 0x4140
branch_0x801dd210:
    lui     $fp, 0x8022
    lui     $s2, 0x8022
    lui     $s5, 0x8022
    addiu   $s3, $sp, 0x124
    mtc1    $at, $s4
    addiu   $fp, $fp, 0x7ee0
    addiu   $s7, $zero, 0x34
    or      $s4, $s3, $zero
    addiu   $s5, $s5, 0x7ed0
    addiu   $s2, $s2, 0x7f50
    addiu   $s6, $sp, 0xdc
branch_0x801dd23c:
    lw      $v0, 0x8($s2)
    addiu   $v1, $zero, 0x1
    or      $s1, $s6, $zero
    slti    $at, $v0, 0x10
    beqz    $at, branch_0x801dd25c
    addiu   $s0, $sp, 0x118
    b       branch_0x801dd25c
    addiu   $v1, $zero, 0x2
branch_0x801dd25c:
    addu    $t8, $v0, $v1
    sw      $t8, 0x8($s2)
    lw      $t1, 0x0($s5)
    slti    $at, $t8, 0x10
    blezl   $t1, branch_0x801dd294
    lw      $t4, 0x8($s2)
    bnez    $at, branch_0x801dd2a8
    nop
    sw      $zero, 0x8($s2)
    lw      $t6, 0x0($s5)
    addiu   $t5, $t6, 0xffff
    b       branch_0x801dd2a8
    sw      $t5, 0x0($s5)

.globl Function_0x801dd290
Function_0x801dd290: # 0x801dd290
    lw      $t4, 0x8($s2)
branch_0x801dd294:
    addiu   $t9, $zero, 0x19
    slti    $at, $t4, 0x2d
    bnez    $at, branch_0x801dd2a8
    nop
    sw      $t9, 0x8($s2)
branch_0x801dd2a8:
    jal     Function_0x80047df0
    nop
    andi    $t3, $v0, 0x3
    mtc1    $t3, $a2
    lui     $at, 0x4f80
    bgez    $t3, branch_0x801dd2d0
    cvt.s.w $f8, $f6
    mtc1    $at, $t2
    nop
    add.s   $f8, $f8, $f10
branch_0x801dd2d0:
    lwc1    $f16, 0xc($s1)
    addiu   $s0, $s0, 0x4
    sltu    $at, $s0, $s3
    add.s   $f18, $f8, $f16
    addiu   $s1, $s1, 0x4
    bnez    $at, branch_0x801dd2a8
    swc1    $f18, -0x4($s0)
    lwc1    $f2, 0x118($sp)
    lwc1    $f14, 0x11c($sp)
    lwc1    $f0, 0x120($sp)
    mul.s   $f4, $f2, $f2
    nop
    mul.s   $f6, $f14, $f14
    add.s   $f10, $f4, $f6
    mul.s   $f8, $f0, $f0
    jal     sqrtf
    add.s   $f12, $f8, $f10
    or      $v0, $s2, $zero
    addiu   $s0, $sp, 0x118
    addiu   $s0, $s0, 0x4
    lwc1    $f16, -0x4($s0)
    div.s   $f16, $f16, $f0
    swc1    $f16, 0x18($v0)
    lwc1    $f16, 0x18($v0)
    mul.s   $f18, $f16, $f20
    beql    $s0, $s4, branch_0x801dd370
    lwc1    $f16, 0xc($v0)
    lwc1    $f16, 0xc($v0)
branch_0x801dd340:
    addiu   $s0, $s0, 0x4
    addiu   $v0, $v0, 0x4
    add.s   $f16, $f16, $f18
    swc1    $f16, 0x8($v0)
    lwc1    $f16, -0x4($s0)
    div.s   $f16, $f16, $f0
    swc1    $f16, 0x18($v0)
    lwc1    $f16, 0x18($v0)
    mul.s   $f18, $f16, $f20
    bnel    $s0, $s4, branch_0x801dd340
    lwc1    $f16, 0xc($v0)
    lwc1    $f16, 0xc($v0)
branch_0x801dd370:
    addiu   $v0, $v0, 0x4
    add.s   $f16, $f16, $f18
    swc1    $f16, 0x8($v0)
    lui     $t2, 0x8022
    addiu   $t2, $t2, 0x7ed8
    addiu   $s5, $s5, 0x4
    sltu    $at, $s5, $t2
    addiu   $s6, $s6, 0x18
    bnez    $at, branch_0x801dd23c
    addiu   $s2, $s2, 0x34
    addiu   $s0, $sp, 0x64
    addiu   $s1, $sp, 0x6c
    addiu   $s2, $sp, 0xe4
branch_0x801dd3a4:
    lw      $v0, 0x0($s0)
    lw      $t7, 0x4($s0)
    lui     $t1, 0x8022
    multu   $v0, $s7
    addiu   $t1, $t1, 0x7f50
    or      $a1, $s1, $zero
    or      $a2, $fp, $zero
    subu    $a3, $t7, $v0
    mflo    $t8
    addu    $a0, $t8, $t1
    jal     Function_0x801db190
    nop
    addiu   $s1, $s1, 0x3c
    bne     $s1, $s2, branch_0x801dd3a4
    addiu   $s0, $s0, 0x3c
branch_0x801dd3e0:
    lw      $ra, 0x44($sp)
    ldc1    $20, 0x18($29)
    lw      $s0, 0x20($sp)
    lw      $s1, 0x24($sp)
    lw      $s2, 0x28($sp)
    lw      $s3, 0x2c($sp)
    lw      $s4, 0x30($sp)
    lw      $s5, 0x34($sp)
    lw      $s6, 0x38($sp)
    lw      $s7, 0x3c($sp)
    lw      $fp, 0x40($sp)
    jr      $ra
    addiu   $sp, $sp, 0x128

.globl Function_0x801dd414
Function_0x801dd414: # 0x801dd414
    lui     $v0, %hi(Unknown_0x801ce398)
    lw      $v0, %lo(Unknown_0x801ce398)($v0)
    lui     $at, 0x8023
    sw      $zero, -0x7a98($at)
    addiu   $sp, $sp, 0xffe8
    addiu   $at, $zero, 0x8
    sw      $ra, 0x14($sp)
    or      $a2, $a0, $zero
    beq     $v0, $at, branch_0x801dd450
    or      $v1, $zero, $zero
    addiu   $at, $zero, 0x15
    beq     $v0, $at, branch_0x801dd4d4
    nop
    b       branch_0x801dd588
    nop
branch_0x801dd450:
    lui     $t6, 0x800d
    lw      $t6, 0x7ef0($t6)
    sltiu   $at, $t6, 0x8
    beqz    $at, branch_0x801dd588
    sll     $t6, $t6, 2
    lui     $at, 0x8022
    addu    $at, $at, $t6
    lw      $t6, 0x5d28($at)
    jr      $t6
    nop

.globl Function_0x801dd478
Function_0x801dd478: # 0x801dd478
    lui     $v1, 0x801e
    b       branch_0x801dd588
    addiu   $v1, $v1, 0xbfd4

.globl Function_0x801dd484
Function_0x801dd484: # 0x801dd484
    lui     $t7, 0x801d
    lw      $t7, -0x4f68($t7)
    addiu   $a1, $zero, 0x2
    bne     $a1, $t7, branch_0x801dd588
    nop
    lui     $v1, 0x801e
    b       branch_0x801dd588
    addiu   $v1, $v1, 0xc164

.globl Function_0x801dd4a4
Function_0x801dd4a4: # 0x801dd4a4
    lui     $v1, 0x801e
    b       branch_0x801dd588
    addiu   $v1, $v1, 0xc308

.globl Function_0x801dd4b0
Function_0x801dd4b0: # 0x801dd4b0
    lui     $v1, 0x801e
    b       branch_0x801dd588
    addiu   $v1, $v1, 0xc36c

.globl Function_0x801dd4bc
Function_0x801dd4bc: # 0x801dd4bc
    lui     $v1, 0x801e
    b       branch_0x801dd588
    addiu   $v1, $v1, 0xca94

.globl Function_0x801dd4c8
Function_0x801dd4c8: # 0x801dd4c8
    lui     $v1, 0x801e
    b       branch_0x801dd588
    addiu   $v1, $v1, 0xd030
branch_0x801dd4d4:
    lui     $v0, 0x801d
    lw      $v0, -0x4f68($v0)
    addiu   $a0, $zero, 0x1
    lui     $t8, 0x801c
    beqz    $v0, branch_0x801dd504
    nop
    beq     $v0, $a0, branch_0x801dd504
    addiu   $a1, $zero, 0x2
    beq     $v0, $a1, branch_0x801dd528
    nop
    b       branch_0x801dd588
    nop
branch_0x801dd504:
    lw      $t8, 0x29d0($t8)
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x856c
    slti    $at, $t8, 0x3
    beqz    $at, branch_0x801dd588
    sw      $t8, 0x0($v0)
    lui     $v1, 0x801e
    b       branch_0x801dd588
    addiu   $v1, $v1, 0xbe0c
branch_0x801dd528:
    lui     $v0, 0x801c
    lw      $v0, 0x29d0($v0)
    beqz    $v0, branch_0x801dd550
    nop
    beq     $v0, $a0, branch_0x801dd55c
    addiu   $t0, $zero, 0x4
    beq     $v0, $a1, branch_0x801dd574
    addiu   $t1, $zero, 0x3
    b       branch_0x801dd588
    nop
branch_0x801dd550:
    lui     $v1, 0x801e
    b       branch_0x801dd588
    addiu   $v1, $v1, 0xb650
branch_0x801dd55c:
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x856c
    lui     $v1, 0x801e
    sw      $t0, 0x0($v0)
    b       branch_0x801dd588
    addiu   $v1, $v1, 0xbcc8
branch_0x801dd574:
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x856c
    lui     $v1, 0x801e
    sw      $t1, 0x0($v0)
    addiu   $v1, $v1, 0xbcc8
branch_0x801dd588:
    beqzl   $v1, branch_0x801dd5b0
    lw      $ra, 0x14($sp)
    jalr    $v1
    or      $a0, $a2, $zero
    lui     $a0, 0x8022
    lui     $a1, 0x8023
    lw      $a1, -0x7a98($a1)
    jal     Function_0x800abe38
    addiu   $a0, $a0, 0x7f50
    lw      $ra, 0x14($sp)
branch_0x801dd5b0:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801dd5bc
Function_0x801dd5bc: # 0x801dd5bc
    addiu   $sp, $sp, 0xff60
    sw      $fp, 0x60($sp)
    sw      $s7, 0x5c($sp)
    sw      $s6, 0x58($sp)
    sw      $s5, 0x54($sp)
    sw      $s4, 0x50($sp)
    sw      $s3, 0x4c($sp)
    sw      $s1, 0x44($sp)
    sw      $s0, 0x40($sp)
    sdc1    $20, 0x38($29)
    lui     $t6, 0x8022
    lui     $t7, 0x8022
    lui     $t8, 0x8022
    lui     $t9, 0x8022
    lui     $t0, 0x8022
    sw      $s2, 0x48($sp)
    addiu   $t0, $t0, 0x7a58
    addiu   $t9, $t9, 0x7a54
    addiu   $t8, $t8, 0x7a50
    addiu   $t7, $t7, 0x7a64
    addiu   $t6, $t6, 0x7a60
    lui     $s0, 0x8022
    lui     $s1, 0x8022
    lui     $s3, 0x8022
    lui     $s4, 0x8022
    lui     $s5, 0x8022
    lui     $s6, 0x8022
    lui     $s7, 0x8022
    lui     $fp, 0x8022
    mtc1    $zero, $s4
    sw      $ra, 0x64($sp)
    addiu   $fp, $fp, 0x7a5c
    addiu   $s7, $s7, 0x7a4c
    addiu   $s6, $s6, 0x7a48
    addiu   $s5, $s5, 0x7a44
    addiu   $s4, $s4, 0x7e88
    addiu   $s3, $s3, 0x7c58
    addiu   $s1, $s1, 0x7e18
    addiu   $s0, $s0, 0x7a40
    sw      $t6, 0x78($sp)
    sw      $t7, 0x74($sp)
    sw      $t8, 0x70($sp)
    sw      $t9, 0x6c($sp)
    sw      $t0, 0x68($sp)
    or      $s2, $zero, $zero
branch_0x801dd670:
    addiu   $t1, $zero, 0x1
    sw      $s2, 0xe8($s0)
    sw      $t1, 0xec($s0)
    sw      $zero, 0xf8($s0)
    swc1    $f20, 0xfc($s0)
    or      $a0, $s1, $zero
    jal     Function_0x801dfaec
    or      $a1, $s3, $zero
    or      $a0, $s1, $zero
    jal     Function_0x801dfb00
    or      $a1, $s4, $zero
    lw      $t2, 0x78($sp)
    lw      $t3, 0x74($sp)
    lw      $t4, 0x70($sp)
    lw      $t5, 0x6c($sp)
    lw      $t6, 0x68($sp)
    lui     $t7, 0x8022
    addiu   $t7, $t7, 0x7ec8
    sw      $t7, 0x28($sp)
    or      $a0, $s1, $zero
    or      $a1, $s5, $zero
    or      $a2, $s6, $zero
    or      $a3, $s7, $zero
    sw      $fp, 0x10($sp)
    sw      $t2, 0x14($sp)
    sw      $t3, 0x18($sp)
    sw      $t4, 0x1c($sp)
    sw      $t5, 0x20($sp)
    jal     Function_0x801dfb08
    sw      $t6, 0x24($sp)
    lw      $t8, 0x78($sp)
    lw      $t0, 0x74($sp)
    lw      $t2, 0x70($sp)
    lw      $t4, 0x6c($sp)
    lw      $t6, 0x68($sp)
    addiu   $s2, $s2, 0x1
    addiu   $at, $zero, 0x2
    addiu   $t9, $t8, 0x10c
    addiu   $t1, $t0, 0x10c
    addiu   $t3, $t2, 0x10c
    addiu   $t5, $t4, 0x10c
    addiu   $t7, $t6, 0x10c
    sw      $t7, 0x68($sp)
    sw      $t5, 0x6c($sp)
    sw      $t3, 0x70($sp)
    sw      $t1, 0x74($sp)
    sw      $t9, 0x78($sp)
    addiu   $s0, $s0, 0x10c
    addiu   $s1, $s1, 0x38
    addiu   $s3, $s3, 0xe0
    addiu   $s4, $s4, 0x20
    addiu   $s5, $s5, 0x10c
    addiu   $s6, $s6, 0x10c
    addiu   $s7, $s7, 0x10c
    bne     $s2, $at, branch_0x801dd670
    addiu   $fp, $fp, 0x10c
    lw      $ra, 0x64($sp)
    ldc1    $20, 0x38($29)
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
    addiu   $sp, $sp, 0xa0

.globl Function_0x801dd784
Function_0x801dd784: # 0x801dd784
    addiu   $sp, $sp, 0xffd0
    sw      $s4, 0x28($sp)
    lui     $s4, 0x800e
    addiu   $s4, $s4, 0xa8a8
    lw      $t6, 0x0($s4)
    sw      $s0, 0x18($sp)
    sw      $ra, 0x2c($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    blez    $t6, branch_0x801dd7f8
    or      $s0, $zero, $zero
    lui     $s1, 0x8022
    lui     $s2, 0x8022
    lui     $s3, 0x8022
    addiu   $s3, $s3, 0x7e18
    addiu   $s2, $s2, 0x7c58
    addiu   $s1, $s1, 0x7a40
branch_0x801dd7cc:
    or      $a0, $s1, $zero
    or      $a1, $s2, $zero
    jal     Function_0x801dd818
    or      $a2, $s3, $zero
    lw      $t7, 0x0($s4)
    addiu   $s0, $s0, 0x1
    addiu   $s1, $s1, 0x10c
    slt     $at, $s0, $t7
    addiu   $s2, $s2, 0xe0
    bnez    $at, branch_0x801dd7cc
    addiu   $s3, $s3, 0x38
branch_0x801dd7f8:
    lw      $ra, 0x2c($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x30

.globl Function_0x801dd818
Function_0x801dd818: # 0x801dd818
    lui     $at, 0x4120
    mtc1    $at, $a0
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    sw      $s0, 0x18($sp)
    lui     $at, 0x8022
    swc1    $f4, 0x9c($a0)
    lwc1    $f6, 0x5d48($at)
    lui     $t6, 0x8019
    lui     $at, 0x8022
    swc1    $f6, 0xa0($a0)
    lw      $t6, 0x21b8($t6)
    or      $s0, $a1, $zero
    or      $a3, $a0, $zero
    mtc1    $t6, $t0
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x7ec8($at)
    lw      $t7, 0x0($a0)
    addiu   $t8, $t7, 0xffff
    sltiu   $at, $t8, 0x8
    beqz    $at, branch_0x801ddb5c
    sll     $t8, $t8, 2
    lui     $at, 0x8022
    addu    $at, $at, $t8
    lw      $t8, 0x5d4c($at)
    jr      $t8
    nop

.globl Function_0x801dd888
Function_0x801dd888: # 0x801dd888
    lui     $a1, 0x8022
    addiu   $a1, $a1, 0x5844
    or      $a0, $s0, $zero
    jal     Function_0x801ded68
    sw      $a3, 0x28($sp)
    b       branch_0x801ddb5c
    lw      $a3, 0x28($sp)

.globl Function_0x801dd8a4
Function_0x801dd8a4: # 0x801dd8a4
    lui     $a1, 0x8022
    addiu   $a1, $a1, 0x58bc
    or      $a0, $s0, $zero
    jal     Function_0x801df350
    sw      $a3, 0x28($sp)
    lui     $at, 0x42c8
    mtc1    $at, $zero
    lui     $at, 0x8022
    lwc1    $f16, 0x7ec8($at)
    lw      $a3, 0x28($sp)
    lui     $at, 0x42b4
    swc1    $f16, 0x68($s0)
    lwc1    $f4, 0x1c($a3)
    lwc1    $f18, 0x4($a3)
    mul.s   $f6, $f4, $f0
    sub.s   $f8, $f18, $f6
    mtc1    $at, $a2
    swc1    $f8, 0x74($s0)
    lwc1    $f16, 0x24($a3)
    lwc1    $f10, 0xc($a3)
    swc1    $f6, 0xb4($s0)
    mul.s   $f4, $f16, $f0
    sub.s   $f18, $f10, $f4
    b       branch_0x801ddb5c
    swc1    $f18, 0x78($s0)

.globl Function_0x801dd908
Function_0x801dd908: # 0x801dd908
    lui     $a1, 0x8022
    addiu   $a1, $a1, 0x5998
    or      $a0, $s0, $zero
    jal     Function_0x801df350
    sw      $a3, 0x28($sp)
    lui     $at, 0x42c8
    mtc1    $at, $zero
    lui     $at, 0x8022
    lwc1    $f8, 0x7ec8($at)
    lw      $a3, 0x28($sp)
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    swc1    $f8, 0x68($s0)
    lwc1    $f10, 0x1c($a3)
    lwc1    $f16, 0x4($a3)
    addiu   $at, $zero, 0x7
    mul.s   $f4, $f10, $f0
    addiu   $t7, $zero, 0x4
    sub.s   $f18, $f16, $f4
    swc1    $f18, 0x74($s0)
    lwc1    $f8, 0x24($a3)
    lwc1    $f6, 0xc($a3)
    mul.s   $f10, $f8, $f0
    sub.s   $f16, $f6, $f10
    swc1    $f16, 0x78($s0)
    lw      $v0, %lo(Unknown_0x800da8a4_mainState)($v0)
    beq     $v0, $at, branch_0x801dd97c
    addiu   $at, $zero, 0x8
    bnel    $v0, $at, branch_0x801dd98c
    lw      $t9, 0xec($a3)
branch_0x801dd97c:
    mtc1    $zero, $zero
    b       branch_0x801dd9e8
    swc1    $f0, 0xfc($a3)

.globl Function_0x801dd988
Function_0x801dd988: # 0x801dd988
    lw      $t9, 0xec($a3)
branch_0x801dd98c:
    lui     $at, 0x8022
    sll     $t0, $t9, 2
    addu    $at, $at, $t0
    lwc1    $f4, 0x3700($at)
    lui     $at, 0x8022
    swc1    $f4, 0x38($s0)
    lw      $t1, 0xec($a3)
    sll     $t2, $t1, 2
    addu    $at, $at, $t2
    lwc1    $f18, 0x3710($at)
    lui     $at, 0x8022
    swc1    $f18, 0xa4($s0)
    lw      $t3, 0xec($a3)
    sll     $t4, $t3, 2
    addu    $at, $at, $t4
    lwc1    $f8, 0x3720($at)
    lui     $at, 0x8022
    swc1    $f8, 0xbc($s0)
    lw      $t5, 0xec($a3)
    sll     $t6, $t5, 2
    addu    $at, $at, $t6
    lwc1    $f6, 0x3730($at)
    swc1    $f6, 0xfc($a3)
branch_0x801dd9e8:
    b       branch_0x801ddb5c
    sw      $t7, 0x0($a3)

.globl Function_0x801dd9f0
Function_0x801dd9f0: # 0x801dd9f0
    lui     $v0, %hi(Unknown_0x801ce398)
    lw      $v0, %lo(Unknown_0x801ce398)($v0)
    addiu   $at, $zero, 0x8
    addiu   $t9, $zero, 0x6
    beqz    $v0, branch_0x801dda18
    lui     $t0, 0x800d
    beql    $v0, $at, branch_0x801dda28
    sw      $t9, 0x0($a3)
    b       branch_0x801dda28
    sw      $t9, 0x0($a3)
branch_0x801dda18:
    addiu   $t8, $zero, 0x3
    b       Function_0x801dd908
    sw      $t8, 0x0($a3)

.globl Function_0x801dda24
Function_0x801dda24: # 0x801dda24
    sw      $t9, 0x0($a3)
branch_0x801dda28:
    lw      $t0, 0x7ef0($t0)
    sltiu   $at, $t0, 0x9
    beqz    $at, branch_0x801ddb1c
    sll     $t0, $t0, 2
    lui     $at, 0x8022
    addu    $at, $at, $t0
    lw      $t0, 0x5d6c($at)
    jr      $t0
    nop

.globl Function_0x801dda4c
Function_0x801dda4c: # 0x801dda4c
    lui     $t1, 0x8022
    addiu   $t1, $t1, 0x37f0
    b       branch_0x801ddb1c
    sw      $t1, 0x24($sp)

.globl Function_0x801dda5c
Function_0x801dda5c: # 0x801dda5c
    lui     $v0, 0x801d
    lw      $v0, -0x4f68($v0)
    lui     $t2, 0x8022
    addiu   $at, $zero, 0x1
    beqz    $v0, branch_0x801dda90
    addiu   $t2, $t2, 0x3af8
    beq     $v0, $at, branch_0x801dda98
    lui     $t3, 0x8022
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x801ddaa4
    lui     $t4, 0x8022
    b       branch_0x801ddb20
    or      $a0, $a2, $zero
branch_0x801dda90:
    b       branch_0x801ddb1c
    sw      $t2, 0x24($sp)
branch_0x801dda98:
    addiu   $t3, $t3, 0x4704
    b       branch_0x801ddb1c
    sw      $t3, 0x24($sp)
branch_0x801ddaa4:
    addiu   $t4, $t4, 0x48d4
    b       branch_0x801ddb1c
    sw      $t4, 0x24($sp)

.globl Function_0x801ddab0
Function_0x801ddab0: # 0x801ddab0
    lui     $t5, 0x8022
    addiu   $t5, $t5, 0x3d3c
    b       branch_0x801ddb1c
    sw      $t5, 0x24($sp)

.globl Function_0x801ddac0
Function_0x801ddac0: # 0x801ddac0
    lui     $t6, 0x8022
    addiu   $t6, $t6, 0x3e20
    b       branch_0x801ddb1c
    sw      $t6, 0x24($sp)

.globl Function_0x801ddad0
Function_0x801ddad0: # 0x801ddad0
    lui     $t7, 0x8022
    addiu   $t7, $t7, 0x3fa0
    b       branch_0x801ddb1c
    sw      $t7, 0x24($sp)

.globl Function_0x801ddae0
Function_0x801ddae0: # 0x801ddae0
    lui     $t8, 0x8022
    addiu   $t8, $t8, 0x4080
    b       branch_0x801ddb1c
    sw      $t8, 0x24($sp)

.globl Function_0x801ddaf0
Function_0x801ddaf0: # 0x801ddaf0
    lui     $t9, 0x8022
    addiu   $t9, $t9, 0x41f0
    b       branch_0x801ddb1c
    sw      $t9, 0x24($sp)

.globl Function_0x801ddb00
Function_0x801ddb00: # 0x801ddb00
    lui     $t0, 0x8022
    addiu   $t0, $t0, 0x4374
    b       branch_0x801ddb1c
    sw      $t0, 0x24($sp)

.globl Function_0x801ddb10
Function_0x801ddb10: # 0x801ddb10
    lui     $t1, 0x8022
    addiu   $t1, $t1, 0x4474
    sw      $t1, 0x24($sp)
branch_0x801ddb1c:
    or      $a0, $a2, $zero
branch_0x801ddb20:
    lw      $a1, 0x24($sp)
    jal     Function_0x801dfaf4
    sw      $a3, 0x28($sp)
    b       branch_0x801ddb5c
    lw      $a3, 0x28($sp)

.globl Function_0x801ddb34
Function_0x801ddb34: # 0x801ddb34
    lui     $at, 0x4200
    mtc1    $at, $t2
    mtc1    $zero, $zero
    sw      $zero, 0x8($a2)
    lui     $at, 0x4580
    mtc1    $at, $s0
    swc1    $f10, 0x9c($a3)
    swc1    $f0, 0x94($a3)
    swc1    $f0, 0x98($a3)
    swc1    $f16, 0xa0($a3)
branch_0x801ddb5c:
    or      $a0, $a3, $zero
    or      $a1, $s0, $zero
    jal     Function_0x801e0cec
    sw      $a3, 0x28($sp)
    jal     Function_0x801e0d50
    lw      $a0, 0x28($sp)
    lui     $a0, 0x8012
    lw      $a1, 0x28($sp)
    jal     Function_0x801e0f14
    addiu   $a0, $a0, 0xf648
    lui     $a0, 0x8014
    lw      $a1, 0x28($sp)
    jal     Function_0x801e0f14
    addiu   $a0, $a0, 0x8630
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x801ddba8
Function_0x801ddba8: # 0x801ddba8
    addiu   $sp, $sp, 0xffd0
    sw      $s4, 0x28($sp)
    lui     $s4, 0x800e
    addiu   $s4, $s4, 0xa8a8
    lw      $t6, 0x0($s4)
    sw      $s0, 0x18($sp)
    sw      $ra, 0x2c($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    blez    $t6, branch_0x801ddc1c
    or      $s0, $zero, $zero
    lui     $s1, 0x8022
    lui     $s2, 0x8022
    lui     $s3, 0x8022
    addiu   $s3, $s3, 0x7e18
    addiu   $s2, $s2, 0x7c58
    addiu   $s1, $s1, 0x7a40
branch_0x801ddbf0:
    or      $a0, $s1, $zero
    or      $a1, $s2, $zero
    jal     Function_0x801ddc3c
    or      $a2, $s3, $zero
    lw      $t7, 0x0($s4)
    addiu   $s0, $s0, 0x1
    addiu   $s1, $s1, 0x10c
    slt     $at, $s0, $t7
    addiu   $s2, $s2, 0xe0
    bnez    $at, branch_0x801ddbf0
    addiu   $s3, $s3, 0x38
branch_0x801ddc1c:
    lw      $ra, 0x2c($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x30

.globl Function_0x801ddc3c
Function_0x801ddc3c: # 0x801ddc3c
    lui     $t6, 0x8019
    lw      $t6, 0x21b8($t6)
    addiu   $sp, $sp, 0xffc8
    lui     $v1, 0x8022
    mtc1    $t6, $a0
    addiu   $v1, $v1, 0x7ec8
    sw      $ra, 0x1c($sp)
    cvt.s.w $f6, $f4
    sw      $s1, 0x18($sp)
    sw      $s0, 0x14($sp)
    or      $s0, $a1, $zero
    or      $s1, $a0, $zero
    swc1    $f6, 0x0($v1)
    lwc1    $f8, 0x4c($a0)
    swc1    $f8, 0x2c($sp)
    lwc1    $f10, 0x50($a0)
    swc1    $f10, 0x28($sp)
    lwc1    $f16, 0x54($a0)
    swc1    $f16, 0x24($sp)
    lw      $t7, 0x0($a0)
    addiu   $t8, $t7, 0xffff
    sltiu   $at, $t8, 0x8
    beqz    $at, branch_0x801de0ac
    sll     $t8, $t8, 2
    lui     $at, 0x8022
    addu    $at, $at, $t8
    lw      $t8, 0x5d90($at)
    jr      $t8
    nop

.globl Function_0x801ddcb0
Function_0x801ddcb0: # 0x801ddcb0
    lwc1    $f18, 0x4($s1)
    lui     $at, 0x3f80
    mtc1    $at, $v0
    lui     $at, 0x41f0
    swc1    $f18, 0x5c($s0)
    lwc1    $f4, 0x8($s1)
    mtc1    $at, $a2
    nop
    add.s   $f8, $f4, $f6
    lwc1    $f6, 0xb4($s0)
    swc1    $f8, 0x60($s0)
    lwc1    $f10, 0xc($s1)
    add.s   $f8, $f6, $f2
    swc1    $f10, 0x64($s0)
    lwc1    $f16, 0x0($v1)
    swc1    $f16, 0x68($s0)
    lwc1    $f18, 0x1c($s1)
    swc1    $f18, 0x80($s0)
    lwc1    $f4, 0x24($s1)
    swc1    $f8, 0xb4($s0)
    b       branch_0x801de0ac
    swc1    $f4, 0x84($s0)

.globl Function_0x801ddd08
Function_0x801ddd08: # 0x801ddd08
    lui     $v0, 0x801d
    lw      $v0, -0x1c80($v0)
    or      $a1, $zero, $zero
    addiu   $at, $zero, 0x4
    beqzl   $v0, branch_0x801ddd34
    lw      $t9, 0xe8($s1)
    beq     $v0, $at, branch_0x801ddd30
    addiu   $at, $zero, 0xb
    bne     $v0, $at, branch_0x801dddcc
    nop
branch_0x801ddd30:
    lw      $t9, 0xe8($s1)
branch_0x801ddd34:
    lui     $t1, 0x8019
    sll     $t0, $t9, 2
    subu    $t0, $t0, $t9
    sll     $t0, $t0, 3
    subu    $t0, $t0, $t9
    sll     $t0, $t0, 3
    addu    $t0, $t0, $t9
    sll     $t0, $t0, 2
    subu    $t0, $t0, $t9
    sll     $t0, $t0, 3
    addu    $t1, $t1, $t0
    lw      $t1, 0x3ab8($t1)
    addiu   $t2, $t1, 0xffff
    sltiu   $at, $t2, 0x6
    beqz    $at, branch_0x801dddcc
    sll     $t2, $t2, 2
    lui     $at, 0x8022
    addu    $at, $at, $t2
    lw      $t2, 0x5db0($at)
    jr      $t2
    nop

.globl Function_0x801ddd88
Function_0x801ddd88: # 0x801ddd88
    lui     $a1, 0x8022
    b       branch_0x801dddcc
    addiu   $a1, $a1, 0x4b5c

.globl Function_0x801ddd94
Function_0x801ddd94: # 0x801ddd94
    lui     $a1, 0x8022
    b       branch_0x801dddcc
    addiu   $a1, $a1, 0x4d58

.globl Function_0x801ddda0
Function_0x801ddda0: # 0x801ddda0
    lui     $a1, 0x8022
    b       branch_0x801dddcc
    addiu   $a1, $a1, 0x4eec

.globl Function_0x801dddac
Function_0x801dddac: # 0x801dddac
    lui     $a1, 0x8022
    b       branch_0x801dddcc
    addiu   $a1, $a1, 0x5074

.globl Function_0x801dddb8
Function_0x801dddb8: # 0x801dddb8
    lui     $a1, 0x8022
    b       branch_0x801dddcc
    addiu   $a1, $a1, 0x52b4

.globl Function_0x801dddc4
Function_0x801dddc4: # 0x801dddc4
    lui     $a1, 0x8022
    addiu   $a1, $a1, 0x55c4
branch_0x801dddcc:
    beqz    $a1, branch_0x801dde10
    lui     $at, 0x3f80
    mtc1    $zero, $zero
    mtc1    $at, $v0
    sw      $zero, 0xdc($s0)
    swc1    $f0, 0x28($s0)
    swc1    $f0, 0x30($s0)
    swc1    $f2, 0x2c($s0)
    sw      $a2, 0x40($sp)
    jal     Function_0x801dfaf4
    or      $a0, $a2, $zero
    lui     $v1, 0x8022
    lw      $a2, 0x40($sp)
    addiu   $t3, $zero, 0x7
    addiu   $v1, $v1, 0x7ec8
    b       branch_0x801dde6c
    sw      $t3, 0x0($s1)
branch_0x801dde10:
    lwc1    $f10, 0x4($s1)
    swc1    $f10, 0x5c($s0)
    lwc1    $f18, 0xfc($s1)
    lwc1    $f16, 0x8($s1)
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x60($s0)
    lwc1    $f6, 0xc($s1)
    swc1    $f6, 0x64($s0)
    lwc1    $f8, 0x0($v1)
    swc1    $f8, 0x68($s0)
    lwc1    $f10, 0x1c($s1)
    swc1    $f10, 0x80($s0)
    lwc1    $f16, 0x24($s1)
    swc1    $f16, 0x84($s0)
    lwc1    $f0, 0x10($s1)
    lwc1    $f2, 0x18($s1)
    mul.s   $f18, $f0, $f0
    nop
    mul.s   $f4, $f2, $f2
    jal     sqrtf
    add.s   $f12, $f18, $f4
    b       branch_0x801de0ac
    swc1    $f0, 0x90($s0)
branch_0x801dde6c:
    lwc1    $f0, 0xfc($s1)
    mtc1    $zero, $a2
    lui     $at, 0x8022
    lwc1    $f10, 0x5dc8($at)
    sub.s   $f8, $f6, $f0
    addiu   $at, $zero, 0xfffe
    mul.s   $f16, $f8, $f10
    add.s   $f18, $f0, $f16
    swc1    $f18, 0xfc($s1)
    lw      $t4, 0x4($a2)
    lw      $t5, 0x0($t4)
    bnel    $t5, $at, branch_0x801ddf98
    lwc1    $f18, 0x8($s1)
    lw      $t6, 0x8($a2)
    lui     $a1, 0x8022
    addiu   $a1, $a1, 0x5998
    bnez    $t6, branch_0x801ddef8
    or      $a0, $s0, $zero
    jal     Function_0x801df350
    sw      $a2, 0x40($sp)
    lui     $at, 0x42c8
    mtc1    $at, $zero
    lwc1    $f6, 0x1c($s1)
    lwc1    $f4, 0x4($s1)
    lw      $a2, 0x40($sp)
    mul.s   $f8, $f6, $f0
    lui     $v1, 0x8022
    addiu   $v1, $v1, 0x7ec8
    sub.s   $f10, $f4, $f8
    swc1    $f10, 0x74($s0)
    lwc1    $f18, 0x24($s1)
    lwc1    $f16, 0xc($s1)
    mul.s   $f6, $f18, $f0
    sub.s   $f4, $f16, $f6
    swc1    $f4, 0x78($s0)
branch_0x801ddef8:
    addiu   $t7, $zero, 0x1
    sw      $t7, 0x8($a2)
    lwc1    $f8, 0x4($s1)
    swc1    $f8, 0x5c($s0)
    lwc1    $f18, 0xfc($s1)
    lwc1    $f10, 0x8($s1)
    add.s   $f16, $f10, $f18
    swc1    $f16, 0x60($s0)
    lwc1    $f6, 0xc($s1)
    swc1    $f6, 0x64($s0)
    lwc1    $f4, 0x0($v1)
    swc1    $f4, 0x68($s0)
    lwc1    $f8, 0x1c($s1)
    swc1    $f8, 0x80($s0)
    lwc1    $f10, 0x24($s1)
    swc1    $f10, 0x84($s0)
    lwc1    $f0, 0x10($s1)
    lwc1    $f2, 0x18($s1)
    mul.s   $f18, $f0, $f0
    nop
    mul.s   $f16, $f2, $f2
    jal     sqrtf
    add.s   $f12, $f18, $f16
    lui     $at, 0x43b4
    mtc1    $at, $t4
    swc1    $f0, 0x90($s0)
    lui     $at, 0x8022
    lwc1    $f4, 0x5dcc($at)
    lwc1    $f6, 0xb4($s0)
    add.s   $f8, $f6, $f4
    swc1    $f8, 0xb4($s0)
    lwc1    $f2, 0xb4($s0)
    c.lt.s $f12, $f2
    nop
    bc1f    branch_0x801de0ac
    nop
    sub.s   $f10, $f2, $f12
    b       branch_0x801de0ac
    swc1    $f10, 0xb4($s0)

.globl Function_0x801ddf94
Function_0x801ddf94: # 0x801ddf94
    lwc1    $f18, 0x8($s1)
branch_0x801ddf98:
    lwc1    $f16, 0xfc($s1)
    or      $a0, $a2, $zero
    add.s   $f6, $f18, $f16
    swc1    $f6, 0x8($s1)
    jal     Function_0x801dfa18
    sw      $a2, 0x40($sp)
    lwc1    $f4, 0x8($s1)
    lwc1    $f8, 0xfc($s1)
    lw      $a2, 0x40($sp)
    lui     $at, 0x3f80
    sub.s   $f10, $f4, $f8
    mtc1    $at, $v0
    addiu   $at, $zero, 0x5
    swc1    $f10, 0x8($s1)
    lw      $t8, 0x0($a2)
    lw      $t9, 0x0($t8)
    bne     $t9, $at, branch_0x801de0ac
    nop
    lwc1    $f18, 0x40($s0)
    lui     $at, 0x8022
    ldc1    $0, 0x5dd0($1)
    cvt.d.s $f16, $f18
    add.d   $f6, $f16, $f0
    cvt.s.d $f4, $f6
    swc1    $f4, 0x40($s0)
    lwc1    $f8, 0x40($s0)
    c.lt.s $f2, $f8
    nop
    bc1fl   branch_0x801de018
    lwc1    $f10, 0xac($s0)
    swc1    $f2, 0x40($s0)
    lwc1    $f10, 0xac($s0)
branch_0x801de018:
    cvt.d.s $f18, $f10
    add.d   $f16, $f18, $f0
    cvt.s.d $f6, $f16
    swc1    $f6, 0xac($s0)
    lwc1    $f4, 0xac($s0)
    c.lt.s $f2, $f4
    nop
    bc1fl   branch_0x801de044
    lwc1    $f8, 0xc4($s0)
    swc1    $f2, 0xac($s0)
    lwc1    $f8, 0xc4($s0)
branch_0x801de044:
    cvt.d.s $f10, $f8
    add.d   $f18, $f10, $f0
    cvt.s.d $f16, $f18
    swc1    $f16, 0xc4($s0)
    lwc1    $f6, 0xc4($s0)
    c.lt.s $f2, $f6
    nop
    bc1f    branch_0x801de0ac
    nop
    b       branch_0x801de0ac
    swc1    $f2, 0xc4($s0)

.globl Function_0x801de070
Function_0x801de070: # 0x801de070
    or      $a0, $a2, $zero
    jal     Function_0x801dfa18
    sw      $a2, 0x40($sp)
    jal     Function_0x801dd414
    lw      $a0, 0x40($sp)
    b       branch_0x801de0ac
    nop

.globl Function_0x801de08c
Function_0x801de08c: # 0x801de08c
    or      $a0, $a2, $zero
    jal     Function_0x801dd414
    sw      $a2, 0x40($sp)
    lw      $a2, 0x40($sp)
    lw      $t0, 0x8($a2)
    addiu   $t1, $t0, 0x1
    b       branch_0x801de0b4
    sw      $t1, 0x8($a2)
branch_0x801de0ac:
    jal     Function_0x801df9a8
    or      $a0, $s0, $zero
branch_0x801de0b4:
    or      $a0, $s1, $zero
    jal     Function_0x801e0cec
    or      $a1, $s0, $zero
    jal     Function_0x8009c908
    nop
    jal     Function_0x8009ca88
    or      $a0, $s1, $zero
    lwc1    $f4, 0x4c($s1)
    lwc1    $f8, 0x2c($sp)
    lwc1    $f18, 0x50($s1)
    or      $a0, $s1, $zero
    sub.s   $f10, $f4, $f8
    lwc1    $f4, 0x54($s1)
    swc1    $f10, 0x58($s1)
    lwc1    $f16, 0x28($sp)
    sub.s   $f6, $f18, $f16
    swc1    $f6, 0x5c($s1)
    lwc1    $f8, 0x24($sp)
    sub.s   $f10, $f4, $f8
    jal     Function_0x801e0d50
    swc1    $f10, 0x60($s1)
    lui     $a0, 0x8015
    lw      $a0, 0x1618($a0)
    jal     Function_0x801e0f14
    or      $a1, $s1, $zero
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38

.globl Function_0x801de12c
Function_0x801de12c: # 0x801de12c
    addiu   $sp, $sp, 0xffa8
    lui     $t6, 0x800e
    lw      $t6, -0x5758($t6)
    sw      $s3, 0x3c($sp)
    sw      $ra, 0x54($sp)
    sw      $fp, 0x50($sp)
    sw      $s7, 0x4c($sp)
    sw      $s6, 0x48($sp)
    sw      $s5, 0x44($sp)
    sw      $s4, 0x40($sp)
    sw      $s2, 0x38($sp)
    sw      $s1, 0x34($sp)
    sw      $s0, 0x30($sp)
    sdc1    $24, 0x28($29)
    sdc1    $22, 0x20($29)
    sdc1    $20, 0x18($29)
    blez    $t6, branch_0x801de3b4
    or      $s3, $zero, $zero
    lui     $s1, 0x8022
    lui     $s5, 0x8022
    lui     $s4, 0x8022
    lui     $s7, 0x8015
    lui     $s6, 0x8019
    lui     $at, 0x8022
    lui     $fp, 0x8022
    mtc1    $zero, $t8
    addiu   $fp, $fp, 0x3730
    lwc1    $f22, 0x5dd8($at)
    addiu   $s6, $s6, 0x23f0
    addiu   $s7, $s7, 0x4090
    addiu   $s4, $s4, 0x7cb4
    addiu   $s5, $s5, 0x7c58
    addiu   $s1, $s1, 0x7a40
    lw      $t7, 0x0($s7)
branch_0x801de1b4:
    lui     $t0, 0x8015
    addiu   $t0, $t0, 0x4068
    sll     $t8, $t7, 2
    addu    $t8, $t8, $t7
    sll     $t8, $t8, 1
    addiu   $t9, $t8, 0x2
    addu    $s2, $t9, $t0
    lhu     $t1, 0x0($s2)
    lui     $at, 0x8022
    lw      $s0, 0xec($s1)
    andi    $t2, $t1, 0x3
    beqz    $t2, branch_0x801de218
    lwc1    $f20, 0x5ddc($at)
    lw      $t3, 0xf8($s1)
    or      $a1, $s3, $zero
    addiu   $a0, $zero, 0x16
    xori    $t4, $t3, 0x1
    beqz    $t4, branch_0x801de210
    sw      $t4, 0xf8($s1)
    jal     Function_0x800c3594
    addiu   $a0, $zero, 0x11
    b       branch_0x801de21c
    lw      $t6, 0xf8($s1)
branch_0x801de210:
    jal     Function_0x800c3594
    or      $a1, $s3, $zero
branch_0x801de218:
    lw      $t6, 0xf8($s1)
branch_0x801de21c:
    addiu   $a0, $zero, 0x1d
    sw      $t6, 0x80($s4)
    lhu     $v0, 0x0($s2)
    andi    $t7, $v0, 0x8
    beqz    $t7, branch_0x801de238
    andi    $t8, $v0, 0x4
    addiu   $s0, $s0, 0x1
branch_0x801de238:
    beqz    $t8, branch_0x801de244
    nop
    addiu   $s0, $s0, 0xffff
branch_0x801de244:
    bgez    $s0, branch_0x801de258
    slti    $at, $s0, 0x4
    addiu   $s0, $zero, 0x3
    b       branch_0x801de268
    mov.s   $f20, $f22
branch_0x801de258:
    bnezl   $at, branch_0x801de26c
    lw      $v0, 0xec($s1)
    or      $s0, $zero, $zero
    mov.s   $f20, $f22
branch_0x801de268:
    lw      $v0, 0xec($s1)
branch_0x801de26c:
    slt     $at, $v0, $s0
    beqzl   $at, branch_0x801de28c
    slt     $at, $s0, $v0
    jal     Function_0x800c3594
    or      $a1, $s3, $zero
    b       branch_0x801de2a0
    swc1    $f20, 0x68($s4)

.globl Function_0x801de288
Function_0x801de288: # 0x801de288
    slt     $at, $s0, $v0
branch_0x801de28c:
    beqz    $at, branch_0x801de29c
    addiu   $a0, $zero, 0x1e
    jal     Function_0x800c3594
    or      $a1, $s3, $zero
branch_0x801de29c:
    swc1    $f20, 0x68($s4)
branch_0x801de2a0:
    swc1    $f20, 0x50($s4)
    sll     $v1, $s0, 2
    lui     $at, 0x8022
    swc1    $f20, 0x40($s5)
    addu    $at, $at, $v1
    lwc1    $f4, 0x3700($at)
    lui     $at, 0x8022
    addu    $at, $at, $v1
    swc1    $f4, 0x3c($s5)
    lwc1    $f6, 0x3710($at)
    lui     $at, 0x8022
    addu    $at, $at, $v1
    swc1    $f6, 0x4c($s4)
    lwc1    $f8, 0x3720($at)
    lui     $at, 0x8022
    swc1    $f8, 0x64($s4)
    lw      $t9, 0xec($s1)
    bnel    $s0, $t9, branch_0x801de2f4
    lw      $v0, 0xc54($s6)
    lwc1    $f20, 0x5de0($at)
    lw      $v0, 0xc54($s6)
branch_0x801de2f4:
    addiu   $at, $zero, 0x7
    beq     $v0, $at, branch_0x801de348
    addiu   $at, $zero, 0x17
    beq     $v0, $at, branch_0x801de320
    addiu   $at, $zero, 0x18
    beq     $v0, $at, branch_0x801de320
    addiu   $at, $zero, 0x19
    beq     $v0, $at, branch_0x801de328
    addu    $t2, $fp, $v1
    b       branch_0x801de370
    lwc1    $f2, 0x0($t2)
branch_0x801de320:
    lui     $at, 0x8022
    lwc1    $f20, 0x5de4($at)
branch_0x801de328:
    slti    $at, $s0, 0x2
    bnez    $at, branch_0x801de340
    lui     $at, 0x4120
    mtc1    $at, $v0
    b       branch_0x801de374
    lwc1    $f0, 0xfc($s1)
branch_0x801de340:
    b       branch_0x801de370
    mov.s   $f2, $f24
branch_0x801de348:
    lw      $t0, 0xc58($s6)
    addu    $t1, $fp, $v1
    slti    $at, $t0, 0x38
    beqz    $at, branch_0x801de364
    nop
    b       branch_0x801de370
    mov.s   $f2, $f24
branch_0x801de364:
    b       branch_0x801de370
    lwc1    $f2, 0x0($t1)

.globl Function_0x801de36c
Function_0x801de36c: # 0x801de36c
    lwc1    $f2, 0x0($t2)
branch_0x801de370:
    lwc1    $f0, 0xfc($s1)
branch_0x801de374:
    lui     $t3, 0x800e
    sw      $s0, 0xec($s1)
    sub.s   $f10, $f2, $f0
    addiu   $s3, $s3, 0x1
    addiu   $s1, $s1, 0x10c
    addiu   $s5, $s5, 0xe0
    mul.s   $f16, $f10, $f20
    addiu   $s4, $s4, 0xe0
    addiu   $s7, $s7, 0x4
    addiu   $s6, $s6, 0x1718
    add.s   $f18, $f0, $f16
    swc1    $f18, -0x10($s1)
    lw      $t3, -0x5758($t3)
    slt     $at, $s3, $t3
    bnezl   $at, branch_0x801de1b4
    lw      $t7, 0x0($s7)
branch_0x801de3b4:
    lw      $ra, 0x54($sp)
    ldc1    $20, 0x18($29)
    ldc1    $22, 0x20($29)
    ldc1    $24, 0x28($29)
    lw      $s0, 0x30($sp)
    lw      $s1, 0x34($sp)
    lw      $s2, 0x38($sp)
    lw      $s3, 0x3c($sp)
    lw      $s4, 0x40($sp)
    lw      $s5, 0x44($sp)
    lw      $s6, 0x48($sp)
    lw      $s7, 0x4c($sp)
    lw      $fp, 0x50($sp)
    jr      $ra
    addiu   $sp, $sp, 0x58

.globl Function_0x801de3f0
Function_0x801de3f0: # 0x801de3f0
    bnez    $a1, branch_0x801de4ac
    addiu   $sp, $sp, 0xffd8
    lui     $at, 0x3f00
    mtc1    $at, $s0
    lui     $at, 0x4040
    mtc1    $at, $s2
    lui     $at, 0x3f80
    mtc1    $at, $a0
    lui     $at, 0x41a8
    mtc1    $at, $t2
    sub.s   $f0, $f4, $f12
    lui     $at, 0x4140
    mul.s   $f6, $f0, $f0
    nop
    mul.s   $f8, $f6, $f0
    mtc1    $at, $a2
    lui     $at, 0x4110
    mul.s   $f2, $f12, $f12
    swc1    $f8, 0x4($sp)
    mul.s   $f14, $f2, $f12
    nop
    mul.s   $f4, $f14, $f10
    mtc1    $at, $t2
    lui     $at, 0x4130
    div.s   $f8, $f4, $f6
    mul.s   $f4, $f2, $f10
    nop
    mul.s   $f6, $f4, $f16
    sub.s   $f10, $f8, $f6
    mul.s   $f4, $f12, $f18
    neg.s   $f6, $f14
    add.s   $f8, $f10, $f4
    mtc1    $at, $t2
    lui     $at, 0x4140
    mul.s   $f4, $f6, $f10
    swc1    $f8, 0x8($sp)
    mtc1    $at, $t0
    mul.s   $f10, $f2, $f18
    lui     $at, 0x40c0
    div.s   $f6, $f4, $f8
    mul.s   $f4, $f10, $f16
    mtc1    $at, $t2
    add.s   $f8, $f6, $f4
    div.s   $f6, $f14, $f10
    swc1    $f8, 0xc($sp)
    b       branch_0x801de7a8
    swc1    $f6, 0x10($sp)
branch_0x801de4ac:
    addiu   $at, $zero, 0x1
    bne     $a1, $at, branch_0x801de57c
    lui     $at, 0x3f00
    mtc1    $at, $s0
    lui     $at, 0x3e80
    mtc1    $at, $s2
    lui     $at, 0x3f80
    mtc1    $at, $a0
    lui     $at, 0x40e0
    sub.s   $f0, $f4, $f12
    mtc1    $at, $a0
    lui     $at, 0x4140
    mul.s   $f8, $f0, $f0
    nop
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f6, $f10, $f18
    mtc1    $at, $t2
    lui     $at, 0x40a0
    mul.s   $f2, $f12, $f12
    swc1    $f6, 0x4($sp)
    mul.s   $f14, $f2, $f12
    nop
    mul.s   $f8, $f14, $f4
    mtc1    $at, $a0
    lui     $at, 0x8022
    div.s   $f6, $f8, $f10
    mul.s   $f8, $f2, $f4
    nop
    mul.s   $f10, $f8, $f18
    sub.s   $f4, $f6, $f10
    mul.s   $f8, $f12, $f18
    lwc1    $f10, 0x5de8($at)
    lui     $at, 0x8022
    add.s   $f6, $f4, $f8
    neg.s   $f8, $f14
    add.s   $f4, $f6, $f10
    mul.s   $f6, $f8, $f16
    nop
    mul.s   $f10, $f2, $f16
    swc1    $f4, 0x8($sp)
    mul.s   $f8, $f12, $f16
    add.s   $f4, $f6, $f10
    lwc1    $f10, 0x5dec($at)
    lui     $at, 0x40c0
    add.s   $f6, $f4, $f8
    mtc1    $at, $t0
    add.s   $f4, $f6, $f10
    div.s   $f6, $f14, $f8
    swc1    $f4, 0xc($sp)
    b       branch_0x801de7a8
    swc1    $f6, 0x10($sp)
branch_0x801de57c:
    slti    $at, $a3, 0x7
    bnez    $at, branch_0x801de594
    addiu   $t6, $a3, 0xfffb
    slt     $at, $a1, $t6
    beqz    $at, branch_0x801de628
    addiu   $t7, $a1, 0x5
branch_0x801de594:
    lui     $at, 0x3f00
    mtc1    $at, $s0
    lui     $at, 0x3f80
    mtc1    $at, $t2
    lui     $at, 0x40c0
    mtc1    $at, $a2
    sub.s   $f0, $f10, $f12
    lui     $at, 0x8022
    mul.s   $f4, $f0, $f0
    nop
    mul.s   $f8, $f4, $f0
    div.s   $f10, $f8, $f6
    lwc1    $f6, 0x5df0($at)
    lui     $at, 0x8022
    mul.s   $f2, $f12, $f12
    nop
    mul.s   $f14, $f2, $f12
    swc1    $f10, 0x4($sp)
    mul.s   $f4, $f14, $f16
    sub.s   $f8, $f4, $f2
    neg.s   $f4, $f14
    add.s   $f10, $f8, $f6
    mul.s   $f8, $f4, $f16
    nop
    mul.s   $f6, $f2, $f16
    swc1    $f10, 0x8($sp)
    mul.s   $f4, $f12, $f16
    add.s   $f10, $f8, $f6
    lwc1    $f6, 0x5df4($at)
    lui     $at, 0x40c0
    add.s   $f8, $f10, $f4
    mtc1    $at, $a0
    add.s   $f10, $f8, $f6
    div.s   $f8, $f14, $f4
    swc1    $f10, 0xc($sp)
    b       branch_0x801de7a8
    swc1    $f8, 0x10($sp)
branch_0x801de628:
    bne     $a3, $t7, branch_0x801de6f0
    addiu   $t8, $a1, 0x4
    lui     $at, 0x3f00
    mtc1    $at, $s0
    lui     $at, 0x3e80
    mtc1    $at, $s2
    lui     $at, 0x3f80
    mtc1    $at, $a2
    lui     $at, 0x40c0
    mtc1    $at, $t2
    sub.s   $f0, $f6, $f12
    lui     $at, 0x8022
    mul.s   $f2, $f0, $f0
    nop
    mul.s   $f14, $f2, $f0
    div.s   $f4, $f14, $f10
    neg.s   $f8, $f14
    mul.s   $f6, $f8, $f16
    nop
    mul.s   $f10, $f2, $f16
    swc1    $f4, 0x4($sp)
    mul.s   $f8, $f0, $f16
    add.s   $f4, $f6, $f10
    lwc1    $f10, 0x5df8($at)
    lui     $at, 0x40e0
    add.s   $f6, $f4, $f8
    mtc1    $at, $t0
    lui     $at, 0x4140
    add.s   $f4, $f6, $f10
    mul.s   $f6, $f14, $f8
    mtc1    $at, $t2
    lui     $at, 0x40a0
    swc1    $f4, 0x8($sp)
    mtc1    $at, $t0
    lui     $at, 0x8022
    div.s   $f4, $f6, $f10
    mul.s   $f6, $f2, $f8
    nop
    mul.s   $f10, $f6, $f18
    sub.s   $f8, $f4, $f10
    mul.s   $f6, $f0, $f18
    lwc1    $f10, 0x5dfc($at)
    add.s   $f4, $f8, $f6
    mul.s   $f6, $f12, $f12
    add.s   $f8, $f4, $f10
    mul.s   $f4, $f6, $f12
    swc1    $f8, 0xc($sp)
    mul.s   $f10, $f4, $f18
    b       branch_0x801de7a8
    swc1    $f10, 0x10($sp)
branch_0x801de6f0:
    bne     $a3, $t8, branch_0x801de7a8
    lui     $at, 0x3f00
    mtc1    $at, $s0
    lui     $at, 0x4040
    mtc1    $at, $s2
    lui     $at, 0x3f80
    mtc1    $at, $t0
    lui     $at, 0x40c0
    mtc1    $at, $a2
    sub.s   $f0, $f8, $f12
    lui     $at, 0x4130
    mtc1    $at, $t0
    lui     $at, 0x4140
    mul.s   $f2, $f0, $f0
    nop
    mul.s   $f14, $f2, $f0
    div.s   $f4, $f14, $f6
    neg.s   $f10, $f14
    mul.s   $f6, $f10, $f8
    nop
    mul.s   $f8, $f2, $f18
    swc1    $f4, 0x4($sp)
    mtc1    $at, $a0
    lui     $at, 0x41a8
    div.s   $f10, $f6, $f4
    mul.s   $f6, $f8, $f16
    mtc1    $at, $t0
    lui     $at, 0x4140
    add.s   $f4, $f10, $f6
    mul.s   $f10, $f14, $f8
    mtc1    $at, $a2
    lui     $at, 0x4110
    swc1    $f4, 0x8($sp)
    mtc1    $at, $t0
    div.s   $f4, $f10, $f6
    mul.s   $f10, $f2, $f8
    nop
    mul.s   $f6, $f10, $f16
    sub.s   $f8, $f4, $f6
    mul.s   $f10, $f0, $f18
    nop
    mul.s   $f6, $f12, $f12
    add.s   $f4, $f8, $f10
    mul.s   $f8, $f6, $f12
    swc1    $f4, 0xc($sp)
    swc1    $f8, 0x10($sp)
branch_0x801de7a8:
    sll     $t9, $a1, 2
    addu    $v0, $a2, $t9
    lwc1    $f4, 0x0($v0)
    lwc1    $f10, 0x4($sp)
    lwc1    $f8, 0x8($sp)
    mul.s   $f6, $f10, $f4
    lwc1    $f10, 0x4($v0)
    mul.s   $f4, $f8, $f10
    lwc1    $f10, 0xc($sp)
    add.s   $f8, $f6, $f4
    lwc1    $f6, 0x8($v0)
    mul.s   $f4, $f10, $f6
    lwc1    $f6, 0xc($v0)
    add.s   $f10, $f8, $f4
    lwc1    $f8, 0x10($sp)
    addiu   $sp, $sp, 0x28
    mul.s   $f4, $f6, $f8
    jr      $ra
    add.s   $f0, $f4, $f10

.globl Function_0x801de7f4
Function_0x801de7f4: # 0x801de7f4
    blez    $a1, branch_0x801de860
    or      $v0, $zero, $zero
    andi    $a3, $a1, 0x3
    beqz    $a3, branch_0x801de828
    or      $a2, $a3, $zero
    sll     $t6, $zero, 3
    addu    $v1, $a0, $t6
branch_0x801de810:
    addiu   $v0, $v0, 0x1
    sw      $zero, 0x4($v1)
    sw      $zero, 0x0($v1)
    bne     $a2, $v0, branch_0x801de810
    addiu   $v1, $v1, 0x8
    beq     $v0, $a1, branch_0x801de860
branch_0x801de828:
    sll     $t7, $v0, 3
    sll     $t8, $a1, 3
    addu    $a2, $t8, $a0
    addu    $v1, $a0, $t7
branch_0x801de838:
    addiu   $v1, $v1, 0x20
    sw      $zero, -0x14($v1)
    sw      $zero, -0x18($v1)
    sw      $zero, -0xc($v1)
    sw      $zero, -0x10($v1)
    sw      $zero, -0x4($v1)
    sw      $zero, -0x8($v1)
    sw      $zero, -0x1c($v1)
    bne     $v1, $a2, branch_0x801de838
    sw      $zero, -0x20($v1)
branch_0x801de860:
    jr      $ra
    nop

.globl Function_0x801de868
Function_0x801de868: # 0x801de868
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    sw      $a0, 0x28($sp)
    lw      $s0, 0x4($a1)
    lw      $t6, 0x8($a2)
    or      $s1, $a1, $zero
    sll     $t7, $s0, 2
    addu    $t8, $t6, $t7
    lw      $v0, 0x0($t8)
    or      $s2, $a2, $zero
    bnez    $v0, branch_0x801de8c4
    addiu   $t9, $s0, 0x1
branch_0x801de8a4:
    sw      $t9, 0x4($s1)
    lw      $t0, 0x8($s2)
    sll     $t1, $t9, 2
    or      $s0, $t9, $zero
    addu    $t2, $t0, $t1
    lw      $v0, 0x0($t2)
    beqzl   $v0, branch_0x801de8a4
    addiu   $t9, $s0, 0x1
branch_0x801de8c4:
    lw      $t3, 0x0($s1)
    mtc1    $v0, $t0
    or      $a1, $s0, $zero
    mtc1    $t3, $a0
    cvt.s.w $f10, $f8
    lw      $a2, 0x4($s2)
    lw      $a3, 0x0($s2)
    cvt.s.w $f6, $f4
    jal     Function_0x801de3f0
    div.s   $f12, $f6, $f10
    lw      $t4, 0x28($sp)
    swc1    $f0, 0x0($t4)
    lw      $t5, 0x0($s1)
    lw      $s0, 0x4($s1)
    addiu   $t6, $t5, 0x1
    sw      $t6, 0x0($s1)
    lw      $t8, 0x8($s2)
    sll     $t9, $s0, 2
    addiu   $t2, $s0, 0x1
    addu    $t0, $t8, $t9
    lw      $t1, 0x0($t0)
    slt     $at, $t6, $t1
    bnezl   $at, branch_0x801de94c
    lw      $ra, 0x24($sp)
    sw      $zero, 0x0($s1)
    sw      $t2, 0x4($s1)
    lw      $t4, 0x0($s2)
    addiu   $t6, $zero, 0xffff
    addiu   $t5, $t4, 0xfffd
    slt     $at, $t2, $t5
    bnezl   $at, branch_0x801de94c
    lw      $ra, 0x24($sp)
    sw      $t6, 0x4($s1)
    lw      $ra, 0x24($sp)
branch_0x801de94c:
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x28

.globl Function_0x801de960
Function_0x801de960: # 0x801de960
    addiu   $sp, $sp, 0xffc8
    sw      $ra, 0x34($sp)
    sw      $s6, 0x30($sp)
    sw      $s5, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    lw      $s0, 0x4($a1)
    lw      $t6, 0x10($a2)
    or      $s5, $a2, $zero
    sll     $t7, $s0, 2
    addu    $t8, $t6, $t7
    lw      $t9, 0x0($t8)
    or      $s4, $a1, $zero
    or      $s2, $s5, $zero
    bnez    $t9, branch_0x801de9d0
    or      $s1, $zero, $zero
    addiu   $t0, $s0, 0x1
branch_0x801de9b0:
    sw      $t0, 0x4($s4)
    lw      $t1, 0x10($s5)
    sll     $t2, $t0, 2
    or      $s0, $t0, $zero
    addu    $t3, $t1, $t2
    lw      $t4, 0x0($t3)
    beqzl   $t4, branch_0x801de9b0
    addiu   $t0, $s0, 0x1
branch_0x801de9d0:
    or      $s3, $a0, $zero
    addiu   $s6, $zero, 0x3
branch_0x801de9d8:
    lw      $s0, 0x4($s4)
    lw      $t5, 0x10($s5)
    lw      $t9, 0x0($s4)
    sll     $t6, $s0, 2
    addu    $t7, $t5, $t6
    lw      $t8, 0x0($t7)
    mtc1    $t9, $t0
    lw      $a2, 0x4($s2)
    mtc1    $t8, $a0
    cvt.s.w $f10, $f8
    lw      $a3, 0x0($s5)
    or      $a1, $s0, $zero
    cvt.s.w $f6, $f4
    jal     Function_0x801de3f0
    div.s   $f12, $f10, $f6
    addiu   $s1, $s1, 0x1
    addiu   $s2, $s2, 0x4
    addiu   $s3, $s3, 0x4
    bne     $s1, $s6, branch_0x801de9d8
    swc1    $f0, -0x4($s3)
    lw      $t0, 0x0($s4)
    lw      $s0, 0x4($s4)
    addiu   $t1, $t0, 0x1
    sw      $t1, 0x0($s4)
    lw      $t3, 0x10($s5)
    sll     $t4, $s0, 2
    addiu   $t7, $s0, 0x1
    addu    $t5, $t3, $t4
    lw      $t6, 0x0($t5)
    slt     $at, $t1, $t6
    bnezl   $at, branch_0x801dea80
    lw      $ra, 0x34($sp)
    sw      $zero, 0x0($s4)
    sw      $t7, 0x4($s4)
    lw      $t9, 0x0($s5)
    addiu   $t1, $zero, 0xffff
    addiu   $t0, $t9, 0xfffd
    slt     $at, $t7, $t0
    bnezl   $at, branch_0x801dea80
    lw      $ra, 0x34($sp)
    sw      $t1, 0x4($s4)
    lw      $ra, 0x34($sp)
branch_0x801dea80:
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    lw      $s5, 0x2c($sp)
    lw      $s6, 0x30($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38

.globl Function_0x801deaa4
Function_0x801deaa4: # 0x801deaa4
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x18($sp)
    sw      $a1, 0x1c($sp)
    jal     Function_0x801de960
    sw      $a2, 0x20($sp)
    lw      $a0, 0x18($sp)
    lw      $a1, 0x1c($sp)
    lw      $a2, 0x20($sp)
    addiu   $a0, $a0, 0xc
    addiu   $a1, $a1, 0x8
    jal     Function_0x801de960
    addiu   $a2, $a2, 0x14
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801deae8
Function_0x801deae8: # 0x801deae8
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x18($sp)
    sw      $a1, 0x1c($sp)
    jal     Function_0x801de960
    sw      $a2, 0x20($sp)
    lw      $a0, 0x18($sp)
    lw      $a1, 0x1c($sp)
    lw      $a2, 0x20($sp)
    addiu   $a0, $a0, 0xc
    addiu   $a1, $a1, 0x8
    jal     Function_0x801de960
    addiu   $a2, $a2, 0x14
    lw      $a0, 0x18($sp)
    lw      $a1, 0x1c($sp)
    lw      $a2, 0x20($sp)
    addiu   $a0, $a0, 0x18
    addiu   $a1, $a1, 0x10
    jal     Function_0x801de960
    addiu   $a2, $a2, 0x28
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801deb48
Function_0x801deb48: # 0x801deb48
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x18($sp)
    sw      $a1, 0x1c($sp)
    jal     Function_0x801de960
    sw      $a2, 0x20($sp)
    lw      $a0, 0x18($sp)
    lw      $a1, 0x1c($sp)
    lw      $a2, 0x20($sp)
    addiu   $a0, $a0, 0xc
    addiu   $a1, $a1, 0x8
    jal     Function_0x801de960
    addiu   $a2, $a2, 0x14
    lw      $a0, 0x18($sp)
    lw      $a1, 0x1c($sp)
    lw      $a2, 0x20($sp)
    addiu   $a0, $a0, 0x18
    addiu   $a1, $a1, 0x10
    jal     Function_0x801de868
    addiu   $a2, $a2, 0x28
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801deba8
Function_0x801deba8: # 0x801deba8
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x18($sp)
    sw      $a1, 0x1c($sp)
    jal     Function_0x801de960
    sw      $a2, 0x20($sp)
    lw      $a0, 0x18($sp)
    lw      $a1, 0x1c($sp)
    lw      $a2, 0x20($sp)
    addiu   $a0, $a0, 0xc
    addiu   $a1, $a1, 0x8
    jal     Function_0x801de960
    addiu   $a2, $a2, 0x14
    lw      $a0, 0x18($sp)
    lw      $a1, 0x1c($sp)
    lw      $a2, 0x20($sp)
    addiu   $a0, $a0, 0x18
    addiu   $a1, $a1, 0x10
    jal     Function_0x801de960
    addiu   $a2, $a2, 0x28
    lw      $a0, 0x18($sp)
    lw      $a1, 0x1c($sp)
    lw      $a2, 0x20($sp)
    addiu   $a0, $a0, 0x24
    addiu   $a1, $a1, 0x18
    jal     Function_0x801de868
    addiu   $a2, $a2, 0x3c
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801dec24
Function_0x801dec24: # 0x801dec24
    addiu   $v0, $a0, 0x4
    or      $a1, $v0, $zero
    or      $v1, $zero, $zero
branch_0x801dec30:
    lwc1    $f0, 0x18($a1)
    lwc1    $f4, 0x24($a1)
    lwc1    $f8, 0x30($v0)
    addiu   $v1, $v1, 0x1
    sub.s   $f6, $f4, $f0
    slti    $at, $v1, 0x3
    addiu   $a1, $a1, 0x4
    mul.s   $f10, $f6, $f8
    add.s   $f16, $f0, $f10
    bnez    $at, branch_0x801dec30
    swc1    $f16, 0x14($a1)
    lwc1    $f0, 0x34($v0)
    lwc1    $f18, 0x38($v0)
    lwc1    $f6, 0x3c($v0)
    or      $a1, $v0, $zero
    sub.s   $f4, $f18, $f0
    or      $v1, $zero, $zero
    mul.s   $f8, $f4, $f6
    add.s   $f10, $f0, $f8
    swc1    $f10, 0x34($v0)
    addiu   $v0, $zero, 0x2
    lwc1    $f18, 0x40($a1)
    lwc1    $f12, 0x48($a1)
    lwc1    $f10, 0x50($a1)
    addiu   $v1, $v1, 0x1
    sub.s   $f12, $f12, $f18
    mul.s   $f16, $f12, $f10
    beql    $v1, $v0, branch_0x801decd4
    add.s   $f14, $f18, $f16
    add.s   $f14, $f18, $f16
branch_0x801deca8:
    lwc1    $f18, 0x44($a1)
    lwc1    $f12, 0x4c($a1)
    lwc1    $f10, 0x54($a1)
    addiu   $v1, $v1, 0x1
    sub.s   $f12, $f12, $f18
    swc1    $f14, 0x40($a1)
    addiu   $a1, $a1, 0x4
    mul.s   $f16, $f12, $f10
    bnel    $v1, $v0, branch_0x801deca8
    add.s   $f14, $f18, $f16
    add.s   $f14, $f18, $f16
branch_0x801decd4:
    addiu   $a1, $a1, 0x4
    swc1    $f14, 0x3c($a1)
    jr      $ra
    nop

.globl Function_0x801dece4
Function_0x801dece4: # 0x801dece4
    addiu   $t6, $zero, 0x1
    sw      $t6, 0x0($a0)
    or      $t9, $a1, $zero
    or      $t0, $a0, $zero
    addiu   $t8, $a1, 0x54
branch_0x801decf8:
    lw      $at, 0x0($t9)
    addiu   $t9, $t9, 0xc
    addiu   $t0, $t0, 0xc
    sw      $at, -0x8($t0)
    lw      $at, -0x8($t9)
    sw      $at, -0x4($t0)
    lw      $at, -0x4($t9)
    bne     $t9, $t8, branch_0x801decf8
    sw      $at, 0x0($t0)
    lw      $at, 0x0($t9)
    sw      $at, 0x4($t0)
    lw      $at, 0x0($a2)
    sw      $at, 0x5c($a0)
    lw      $t2, 0x4($a2)
    sw      $t2, 0x60($a0)
    lw      $at, 0x8($a2)
    sw      $at, 0x64($a0)
    lw      $t2, 0xc($a2)
    sw      $t2, 0x68($a0)
    lw      $at, 0x10($a2)
    sw      $at, 0x6c($a0)
    lw      $t2, 0x14($a2)
    sw      $t2, 0x70($a0)
    lw      $at, 0x18($a2)
    sw      $at, 0x74($a0)
    lw      $t2, 0x1c($a2)
    jr      $ra
    sw      $t2, 0x78($a0)

.globl Function_0x801ded68
Function_0x801ded68: # 0x801ded68
    addiu   $t6, $zero, 0x1
    sw      $t6, 0x0($a0)
    or      $t9, $a1, $zero
    or      $t0, $a0, $zero
    addiu   $t8, $a1, 0x54
branch_0x801ded7c:
    lw      $at, 0x0($t9)
    addiu   $t9, $t9, 0xc
    addiu   $t0, $t0, 0xc
    sw      $at, -0x8($t0)
    lw      $at, -0x8($t9)
    sw      $at, -0x4($t0)
    lw      $at, -0x4($t9)
    bne     $t9, $t8, branch_0x801ded7c
    sw      $at, 0x0($t0)
    lw      $at, 0x0($t9)
    sw      $at, 0x4($t0)
    lw      $at, 0x58($a1)
    sw      $at, 0x5c($a0)
    lw      $t2, 0x5c($a1)
    sw      $t2, 0x60($a0)
    lw      $at, 0x60($a1)
    sw      $at, 0x64($a0)
    lw      $t2, 0x64($a1)
    sw      $t2, 0x68($a0)
    lw      $at, 0x68($a1)
    sw      $at, 0x6c($a0)
    lw      $t2, 0x6c($a1)
    sw      $t2, 0x70($a0)
    lw      $at, 0x70($a1)
    sw      $at, 0x74($a0)
    lw      $t2, 0x74($a1)
    jr      $ra
    sw      $t2, 0x78($a0)

.globl Function_0x801dedec
Function_0x801dedec: # 0x801dedec
    beqz    $a1, branch_0x801dee18
    or      $v0, $zero, $zero
    or      $v1, $a1, $zero
    addiu   $t0, $a0, 0x5c
    addiu   $t1, $zero, 0x3
branch_0x801dee00:
    lwc1    $f4, 0x0($v1)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x4
    addiu   $t0, $t0, 0x4
    bne     $v0, $t1, branch_0x801dee00
    swc1    $f4, -0x4($t0)
branch_0x801dee18:
    beqz    $a2, branch_0x801dee44
    addiu   $t1, $zero, 0x3
    or      $v0, $zero, $zero
    or      $v1, $a2, $zero
    addiu   $t0, $a0, 0x5c
branch_0x801dee2c:
    lwc1    $f6, 0x0($v1)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x4
    addiu   $t0, $t0, 0x4
    bne     $v0, $t1, branch_0x801dee2c
    swc1    $f6, 0xc($t0)
branch_0x801dee44:
    beqz    $a3, branch_0x801dee6c
    or      $v0, $zero, $zero
    or      $v1, $a3, $zero
    addiu   $a1, $a0, 0x4
branch_0x801dee54:
    lwc1    $f8, 0x0($v1)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x4
    addiu   $a1, $a1, 0x4
    bne     $v0, $t1, branch_0x801dee54
    swc1    $f8, 0x20($a1)
branch_0x801dee6c:
    lw      $v0, 0x10($sp)
    beqz    $v0, branch_0x801dee80
    nop
    lwc1    $f10, 0x0($v0)
    swc1    $f10, 0x3c($a0)
branch_0x801dee80:
    jr      $ra
    nop

.globl Function_0x801dee88
Function_0x801dee88: # 0x801dee88
    addiu   $a2, $a0, 0x5c
    addiu   $sp, $sp, 0xffe8
    or      $a3, $a0, $zero
    addiu   $v0, $a0, 0x4
    sw      $ra, 0x14($sp)
    addiu   $a0, $zero, 0x3
    or      $v1, $a2, $zero
    or      $a1, $zero, $zero
    lwc1    $f18, 0x0($v0)
    lwc1    $f10, 0x0($v1)
    lwc1    $f12, 0xc($a2)
    addiu   $a1, $a1, 0x1
    sub.s   $f10, $f10, $f18
    mul.s   $f16, $f10, $f12
    beql    $a1, $a0, branch_0x801def18
    add.s   $f14, $f18, $f16
    add.s   $f14, $f18, $f16
branch_0x801deecc:
    lwc1    $f12, 0xc($v0)
    lwc1    $f18, 0x4($v0)
    addiu   $a1, $a1, 0x1
    swc1    $f14, 0x0($v0)
    lwc1    $f14, 0x10($v1)
    lwc1    $f10, 0x1c($a2)
    addiu   $v0, $v0, 0x4
    sub.s   $f14, $f14, $f12
    addiu   $v1, $v1, 0x4
    mul.s   $f10, $f14, $f10
    add.s   $f10, $f12, $f10
    swc1    $f10, 0x8($v0)
    lwc1    $f10, 0x0($v1)
    lwc1    $f12, 0xc($a2)
    sub.s   $f10, $f10, $f18
    mul.s   $f16, $f10, $f12
    bnel    $a1, $a0, branch_0x801deecc
    add.s   $f14, $f18, $f16
    add.s   $f14, $f18, $f16
branch_0x801def18:
    lwc1    $f12, 0xc($v0)
    addiu   $v0, $v0, 0x4
    addiu   $v1, $v1, 0x4
    swc1    $f14, -0x4($v0)
    lwc1    $f14, 0xc($v1)
    lwc1    $f10, 0x1c($a2)
    sub.s   $f14, $f14, $f12
    mul.s   $f10, $f14, $f10
    add.s   $f10, $f12, $f10
    swc1    $f10, 0x8($v0)
    jal     Function_0x801dec24
    or      $a0, $a3, $zero
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801def58
Function_0x801def58: # 0x801def58
    sw      $a1, 0x0($a0)
    or      $t8, $a2, $zero
    or      $t9, $a0, $zero
    addiu   $t7, $a2, 0x54
branch_0x801def68:
    lw      $at, 0x0($t8)
    addiu   $t8, $t8, 0xc
    addiu   $t9, $t9, 0xc
    sw      $at, -0x8($t9)
    lw      $at, -0x8($t8)
    sw      $at, -0x4($t9)
    lw      $at, -0x4($t8)
    bne     $t8, $t7, branch_0x801def68
    sw      $at, 0x0($t9)
    lw      $at, 0x0($t8)
    or      $t2, $a3, $zero
    or      $t3, $a0, $zero
    addiu   $t1, $a3, 0x30
    sw      $at, 0x4($t9)
branch_0x801defa0:
    lw      $at, 0x0($t2)
    addiu   $t2, $t2, 0xc
    addiu   $t3, $t3, 0xc
    sw      $at, 0x50($t3)
    lw      $at, -0x8($t2)
    sw      $at, 0x54($t3)
    lw      $at, -0x4($t2)
    bne     $t2, $t1, branch_0x801defa0
    sw      $at, 0x58($t3)
    lw      $at, 0x0($t2)
    sw      $at, 0x5c($t3)
    lw      $t1, 0x4($t2)
    jr      $ra
    sw      $t1, 0x60($t3)

.globl Function_0x801defd8
Function_0x801defd8: # 0x801defd8
    sw      $a1, 0x0($a0)
    or      $t8, $a2, $zero
    or      $t9, $a0, $zero
    addiu   $t7, $a2, 0x54
branch_0x801defe8:
    lw      $at, 0x0($t8)
    addiu   $t8, $t8, 0xc
    addiu   $t9, $t9, 0xc
    sw      $at, -0x8($t9)
    lw      $at, -0x8($t8)
    sw      $at, -0x4($t9)
    lw      $at, -0x4($t8)
    bne     $t8, $t7, branch_0x801defe8
    sw      $at, 0x0($t9)
    lw      $at, 0x0($t8)
    or      $t2, $a2, $zero
    or      $t3, $a0, $zero
    addiu   $t1, $a2, 0x30
    sw      $at, 0x4($t9)
branch_0x801df020:
    lw      $at, 0x58($t2)
    addiu   $t2, $t2, 0xc
    addiu   $t3, $t3, 0xc
    sw      $at, 0x50($t3)
    lw      $at, 0x50($t2)
    sw      $at, 0x54($t3)
    lw      $at, 0x54($t2)
    bne     $t2, $t1, branch_0x801df020
    sw      $at, 0x58($t3)
    lw      $at, 0x58($t2)
    sw      $at, 0x5c($t3)
    lw      $t1, 0x5c($t2)
    jr      $ra
    sw      $t1, 0x60($t3)

.globl Function_0x801df058
Function_0x801df058: # 0x801df058
    beqz    $a1, branch_0x801df084
    or      $v0, $zero, $zero
    or      $v1, $a1, $zero
    addiu   $t0, $a0, 0x5c
    addiu   $t1, $zero, 0x3
branch_0x801df06c:
    lwc1    $f4, 0x0($v1)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x4
    addiu   $t0, $t0, 0x4
    bne     $v0, $t1, branch_0x801df06c
    swc1    $f4, -0x4($t0)
branch_0x801df084:
    beqz    $a2, branch_0x801df0a8
    addiu   $t1, $zero, 0x3
    lwc1    $f6, 0x0($a2)
    addiu   $v0, $a0, 0x5c
    swc1    $f6, 0x18($v0)
    lwc1    $f8, 0x4($a2)
    swc1    $f8, 0x24($v0)
    lwc1    $f10, 0x8($a2)
    swc1    $f10, 0x30($v0)
branch_0x801df0a8:
    beqz    $a3, branch_0x801df0d0
    or      $v0, $zero, $zero
    or      $v1, $a3, $zero
    addiu   $a1, $a0, 0x4
branch_0x801df0b8:
    lwc1    $f16, 0x0($v1)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x4
    addiu   $a1, $a1, 0x4
    bne     $v0, $t1, branch_0x801df0b8
    swc1    $f16, 0x20($a1)
branch_0x801df0d0:
    lw      $v0, 0x10($sp)
    beqz    $v0, branch_0x801df0e4
    nop
    lwc1    $f18, 0x0($v0)
    swc1    $f18, 0x3c($a0)
branch_0x801df0e4:
    jr      $ra
    nop

.globl Function_0x801df0ec
Function_0x801df0ec: # 0x801df0ec
    addiu   $sp, $sp, 0xffb8
    sw      $ra, 0x14($sp)
    lwc1    $f0, 0x70($a0)
    lwc1    $f4, 0x74($a0)
    lwc1    $f8, 0x78($a0)
    lwc1    $f2, 0x7c($a0)
    sub.s   $f6, $f4, $f0
    lwc1    $f12, 0x88($a0)
    lui     $at, 0x4580
    lui     $a1, 0x8015
    mul.s   $f10, $f6, $f8
    lwc1    $f6, 0x80($a0)
    addiu   $a1, $a1, 0x40b0
    or      $a2, $a0, $zero
    sub.s   $f8, $f6, $f2
    add.s   $f4, $f0, $f10
    lwc1    $f10, 0x84($a0)
    swc1    $f4, 0x70($a0)
    mul.s   $f4, $f8, $f10
    lwc1    $f8, 0x8c($a0)
    sub.s   $f10, $f8, $f12
    add.s   $f6, $f2, $f4
    lwc1    $f4, 0x90($a0)
    swc1    $f6, 0x7c($a0)
    mul.s   $f6, $f10, $f4
    lwc1    $f4, 0x7c($a0)
    lwc1    $f10, 0x68($a0)
    add.s   $f16, $f10, $f4
    mtc1    $at, $t2
    lui     $at, 0x43b4
    add.s   $f8, $f12, $f6
    mul.s   $f4, $f16, $f10
    lwc1    $f6, 0x6c($a0)
    swc1    $f8, 0x88($a0)
    lwc1    $f8, 0x88($a0)
    add.s   $f18, $f6, $f8
    mtc1    $at, $a2
    lui     $at, 0x4580
    div.s   $f8, $f4, $f6
    mtc1    $at, $a0
    lui     $at, 0x43b4
    mul.s   $f6, $f18, $f4
    trunc.w.s   $f10, $f8
    mtc1    $at, $t0
    addiu   $at, $zero, 0x2
    mfc1    $v0, $t2
    div.s   $f10, $f6, $f8
    lwc1    $f8, 0x70($a0)
    addiu   $t2, $v0, 0x400
    andi    $t3, $t2, 0xfff
    sll     $t4, $t3, 2
    addu    $t5, $a1, $t4
    lwc1    $f6, 0x0($t5)
    trunc.w.s   $f4, $f10
    mfc1    $v1, $a0
    nop
    addiu   $t8, $v1, 0x400
    andi    $t9, $t8, 0xfff
    sll     $t0, $t9, 2
    addu    $t1, $a1, $t0
    lwc1    $f14, 0x0($t1)
    andi    $t6, $v1, 0xfff
    sll     $t7, $t6, 2
    mul.s   $f10, $f8, $f14
    addu    $t8, $a1, $t7
    lwc1    $f8, 0x0($t8)
    andi    $t9, $v0, 0xfff
    sll     $t0, $t9, 2
    addu    $t1, $a1, $t0
    addiu   $a1, $sp, 0x38
    mul.s   $f4, $f6, $f10
    addiu   $v0, $sp, 0x2c
    addiu   $v1, $a2, 0x4
    swc1    $f4, 0x2c($sp)
    lwc1    $f6, 0x70($a0)
    lwc1    $f4, 0x0($t1)
    mul.s   $f10, $f8, $f6
    swc1    $f10, 0x30($sp)
    lwc1    $f8, 0x70($a0)
    mul.s   $f6, $f8, $f14
    nop
    mul.s   $f10, $f4, $f6
    swc1    $f10, 0x34($sp)
    lw      $a3, 0x0($a0)
    addiu   $a0, $a2, 0x5c
    beq     $a3, $at, branch_0x801df25c
    nop
    addiu   $at, $zero, 0x3
    beq     $a3, $at, branch_0x801df28c
    addiu   $v0, $sp, 0x2c
    b       branch_0x801df2c0
    nop
branch_0x801df25c:
    lwc1    $f8, 0x0($a0)
    addiu   $v0, $v0, 0x4
    addiu   $v1, $v1, 0x4
    swc1    $f8, -0x4($v1)
    lwc1    $f6, 0x0($a0)
    lwc1    $f4, -0x4($v0)
    addiu   $a0, $a0, 0x4
    add.s   $f10, $f4, $f6
    bne     $v0, $a1, branch_0x801df25c
    swc1    $f10, 0x8($v1)
    b       branch_0x801df2c0
    nop
branch_0x801df28c:
    addiu   $v1, $a2, 0x4
    addiu   $a0, $a2, 0x5c
    addiu   $a1, $sp, 0x38
branch_0x801df298:
    lwc1    $f8, 0x0($a0)
    addiu   $v0, $v0, 0x4
    addiu   $v1, $v1, 0x4
    swc1    $f8, 0x8($v1)
    lwc1    $f6, 0x0($a0)
    lwc1    $f4, -0x4($v0)
    addiu   $a0, $a0, 0x4
    add.s   $f10, $f4, $f6
    bne     $v0, $a1, branch_0x801df298
    swc1    $f10, -0x4($v1)
branch_0x801df2c0:
    jal     Function_0x801dec24
    or      $a0, $a2, $zero
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x48
    jr      $ra
    nop

.globl Function_0x801df2d8
Function_0x801df2d8: # 0x801df2d8
    addiu   $t6, $zero, 0x5
    sw      $t6, 0x0($a0)
    or      $t9, $a1, $zero
    or      $t0, $a0, $zero
    addiu   $t8, $a1, 0x54
branch_0x801df2ec:
    lw      $at, 0x0($t9)
    addiu   $t9, $t9, 0xc
    addiu   $t0, $t0, 0xc
    sw      $at, -0x8($t0)
    lw      $at, -0x8($t9)
    sw      $at, -0x4($t0)
    lw      $at, -0x4($t9)
    bne     $t9, $t8, branch_0x801df2ec
    sw      $at, 0x0($t0)
    lw      $at, 0x0($t9)
    or      $t3, $a2, $zero
    or      $t4, $a0, $zero
    addiu   $t2, $a2, 0x84
    sw      $at, 0x4($t0)
branch_0x801df324:
    lw      $at, 0x0($t3)
    addiu   $t3, $t3, 0xc
    addiu   $t4, $t4, 0xc
    sw      $at, 0x50($t4)
    lw      $at, -0x8($t3)
    sw      $at, 0x54($t4)
    lw      $at, -0x4($t3)
    bne     $t3, $t2, branch_0x801df324
    sw      $at, 0x58($t4)
    jr      $ra
    nop

.globl Function_0x801df350
Function_0x801df350: # 0x801df350
    addiu   $t6, $zero, 0x5
    sw      $t6, 0x0($a0)
    or      $t9, $a1, $zero
    or      $t0, $a0, $zero
    addiu   $t8, $a1, 0x54
branch_0x801df364:
    lw      $at, 0x0($t9)
    addiu   $t9, $t9, 0xc
    addiu   $t0, $t0, 0xc
    sw      $at, -0x8($t0)
    lw      $at, -0x8($t9)
    sw      $at, -0x4($t0)
    lw      $at, -0x4($t9)
    bne     $t9, $t8, branch_0x801df364
    sw      $at, 0x0($t0)
    lw      $at, 0x0($t9)
    or      $t3, $a1, $zero
    or      $t4, $a0, $zero
    addiu   $t2, $a1, 0x84
    sw      $at, 0x4($t0)
branch_0x801df39c:
    lw      $at, 0x58($t3)
    addiu   $t3, $t3, 0xc
    addiu   $t4, $t4, 0xc
    sw      $at, 0x50($t4)
    lw      $at, 0x50($t3)
    sw      $at, 0x54($t4)
    lw      $at, 0x54($t3)
    bne     $t3, $t2, branch_0x801df39c
    sw      $at, 0x58($t4)
    jr      $ra
    nop

.globl Function_0x801df3c8
Function_0x801df3c8: # 0x801df3c8
    beqz    $a1, branch_0x801df3f4
    or      $v0, $zero, $zero
    or      $v1, $a1, $zero
    addiu   $t0, $a0, 0x5c
    addiu   $t1, $zero, 0x3
branch_0x801df3dc:
    lwc1    $f4, 0x0($v1)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x4
    addiu   $t0, $t0, 0x4
    bne     $v0, $t1, branch_0x801df3dc
    swc1    $f4, -0x4($t0)
branch_0x801df3f4:
    beqz    $a2, branch_0x801df428
    addiu   $t1, $zero, 0x3
    addiu   $v0, $a0, 0x5c
    lw      $t6, 0x74($v0)
    lw      $t9, 0x78($v0)
    sll     $t7, $t6, 2
    addu    $t8, $a2, $t7
    lwc1    $f6, 0x0($t8)
    sll     $t2, $t9, 2
    addu    $t3, $a2, $t2
    swc1    $f6, 0x24($v0)
    lwc1    $f8, 0x0($t3)
    swc1    $f8, 0x28($v0)
branch_0x801df428:
    beqz    $a3, branch_0x801df438
    addiu   $a2, $a0, 0x4
    lwc1    $f10, 0x0($a3)
    swc1    $f10, 0x90($a0)
branch_0x801df438:
    lw      $v1, 0x10($sp)
    beqzl   $v1, branch_0x801df464
    lw      $v1, 0x14($sp)
    lwc1    $f16, 0x0($v1)
    addiu   $v0, $a0, 0x5c
    swc1    $f16, 0x4c($v0)
    lwc1    $f18, 0x4($v1)
    swc1    $f18, 0x58($v0)
    lwc1    $f4, 0x8($v1)
    swc1    $f4, 0x64($v0)
    lw      $v1, 0x14($sp)
branch_0x801df464:
    or      $v0, $zero, $zero
    beqz    $v1, branch_0x801df488
    or      $a1, $v1, $zero
branch_0x801df470:
    lwc1    $f6, 0x0($a1)
    addiu   $v0, $v0, 0x1
    addiu   $a1, $a1, 0x4
    addiu   $a2, $a2, 0x4
    bne     $v0, $t1, branch_0x801df470
    swc1    $f6, 0x20($a2)
branch_0x801df488:
    lw      $v0, 0x18($sp)
    beqz    $v0, branch_0x801df49c
    nop
    lwc1    $f8, 0x0($v0)
    swc1    $f8, 0x3c($a0)
branch_0x801df49c:
    jr      $ra
    nop

.globl Function_0x801df4a4
Function_0x801df4a4: # 0x801df4a4
    addiu   $sp, $sp, 0xffb0
    sw      $ra, 0x1c($sp)
    sw      $s0, 0x18($sp)
    lwc1    $f0, 0xa4($a0)
    lwc1    $f4, 0xa8($a0)
    lwc1    $f6, 0xac($a0)
    lwc1    $f2, 0xbc($a0)
    sub.s   $f8, $f4, $f0
    lwc1    $f4, 0xc0($a0)
    lwc1    $f14, 0xb0($a0)
    lw      $t8, 0xd0($a0)
    mul.s   $f18, $f8, $f6
    sub.s   $f8, $f4, $f2
    lwc1    $f6, 0xc4($a0)
    lwc1    $f4, 0xb4($a0)
    sll     $t9, $t8, 2
    addu    $t1, $a0, $t9
    or      $s0, $a0, $zero
    add.s   $f10, $f0, $f18
    mul.s   $f18, $f8, $f6
    lwc1    $f6, 0xb8($a0)
    sub.s   $f8, $f4, $f14
    swc1    $f10, 0xa4($a0)
    lwc1    $f4, 0x74($a0)
    add.s   $f10, $f2, $f18
    mul.s   $f18, $f8, $f6
    swc1    $f10, 0xbc($a0)
    add.s   $f10, $f14, $f18
    swc1    $f10, 0xb0($a0)
    lwc1    $f8, 0x5c($t1)
    sub.s   $f6, $f4, $f8
    swc1    $f6, 0x40($sp)
    lw      $t2, 0xd4($a0)
    lwc1    $f18, 0x78($a0)
    sll     $t3, $t2, 2
    addu    $t4, $a0, $t3
    lwc1    $f10, 0x5c($t4)
    sub.s   $f4, $f18, $f10
    lwc1    $f18, 0x40($sp)
    swc1    $f4, 0x44($sp)
    lwc1    $f8, 0x44($sp)
    mul.s   $f6, $f8, $f8
    nop
    mul.s   $f10, $f18, $f18
    jal     sqrtf
    add.s   $f12, $f6, $f10
    addiu   $v0, $s0, 0x5c
    lwc1    $f4, 0x20($v0)
    lwc1    $f8, 0x40($sp)
    lw      $t5, 0x74($v0)
    div.s   $f2, $f4, $f0
    lw      $t8, 0x78($v0)
    sll     $t6, $t5, 2
    addu    $t7, $v0, $t6
    lwc1    $f6, 0x0($t7)
    sll     $t9, $t8, 2
    addu    $t1, $v0, $t9
    mul.s   $f18, $f8, $f2
    add.s   $f10, $f18, $f6
    swc1    $f10, 0x18($v0)
    lwc1    $f4, 0x44($sp)
    lwc1    $f18, 0x0($t1)
    mul.s   $f8, $f4, $f2
    add.s   $f6, $f8, $f18
    swc1    $f6, 0x1c($v0)
    sw      $v0, 0x28($sp)
    lwc1    $f14, 0x40($sp)
    jal     Function_0x801ecee4
    lwc1    $f12, 0x44($sp)
    lw      $v0, 0x28($sp)
    lui     $at, 0x4580
    mtc1    $at, $t6
    lwc1    $f10, 0x54($v0)
    lui     $at, 0x43b4
    mtc1    $at, $s0
    add.s   $f2, $f0, $f10
    lwc1    $f10, 0x60($v0)
    lui     $v1, 0x8015
    addiu   $v1, $v1, 0x40b0
    mul.s   $f4, $f2, $f14
    lw      $a1, 0x74($v0)
    lwc1    $f6, 0x48($v0)
    addiu   $t0, $s0, 0x4
    sll     $t2, $a1, 2
    or      $a1, $t2, $zero
    lui     $at, 0x3f80
    div.s   $f8, $f4, $f16
    mul.s   $f4, $f10, $f14
    trunc.w.s   $f18, $f8
    div.s   $f8, $f4, $f16
    mfc1    $a0, $s2
    nop
    addiu   $t1, $a0, 0x400
    andi    $t2, $t1, 0xfff
    sll     $t3, $t2, 2
    addu    $t4, $v1, $t3
    trunc.w.s   $f18, $f8
    lwc1    $f8, 0x0($t4)
    mfc1    $t5, $s2
    nop
    addiu   $t6, $t5, 0x400
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 2
    addu    $t9, $v1, $t8
    lwc1    $f10, 0x0($t9)
    addu    $t5, $v0, $a1
    addu    $t6, $t0, $a1
    mul.s   $f4, $f6, $f10
    lwc1    $f6, 0x0($t5)
    andi    $t5, $a0, 0xfff
    mul.s   $f18, $f8, $f4
    add.s   $f10, $f18, $f6
    swc1    $f10, 0xc($t6)
    lwc1    $f4, 0x60($v0)
    lwc1    $f8, 0x48($v0)
    lw      $a2, 0x78($v0)
    mul.s   $f18, $f4, $f14
    sll     $t6, $t5, 2
    sll     $t7, $a2, 2
    or      $a2, $t7, $zero
    addu    $t7, $v1, $t6
    addu    $t8, $v0, $a2
    div.s   $f6, $f18, $f16
    trunc.w.s   $f10, $f6
    lwc1    $f6, 0x0($t7)
    mfc1    $t9, $t2
    nop
    addiu   $t1, $t9, 0x400
    andi    $t2, $t1, 0xfff
    sll     $t3, $t2, 2
    addu    $t4, $v1, $t3
    lwc1    $f4, 0x0($t4)
    addu    $t9, $t0, $a2
    mul.s   $f18, $f8, $f4
    lwc1    $f8, 0x0($t8)
    mul.s   $f10, $f6, $f18
    add.s   $f4, $f10, $f8
    swc1    $f4, 0xc($t9)
    lwc1    $f6, 0x60($v0)
    lw      $a3, 0x7c($v0)
    lwc1    $f12, 0xc($v0)
    mul.s   $f18, $f6, $f14
    sll     $t1, $a3, 2
    addu    $t7, $v0, $t1
    lwc1    $f6, 0x48($v0)
    addu    $t8, $t0, $t1
    div.s   $f10, $f18, $f16
    trunc.w.s   $f8, $f10
    lwc1    $f10, 0x0($t7)
    mfc1    $t3, $t0
    sub.s   $f8, $f10, $f12
    andi    $t4, $t3, 0xfff
    sll     $t5, $t4, 2
    addu    $t6, $v1, $t5
    lwc1    $f4, 0x0($t6)
    mul.s   $f18, $f4, $f6
    lwc1    $f4, 0x6c($v0)
    mul.s   $f6, $f8, $f4
    add.s   $f10, $f6, $f12
    add.s   $f8, $f18, $f10
    swc1    $f8, 0xc($t8)
    lwc1    $f6, 0x38($v0)
    lwc1    $f4, 0x34($v0)
    lwc1    $f0, 0x3c($v0)
    mul.s   $f2, $f4, $f6
    c.lt.s $f2, $f0
    nop
    bc1fl   branch_0x801df754
    mtc1    $at, $v0
    b       branch_0x801df758
    div.s   $f2, $f2, $f0

.globl Function_0x801df750
Function_0x801df750: # 0x801df750
    mtc1    $at, $v0
branch_0x801df754:
    nop
branch_0x801df758:
    lui     $at, 0xc000
    mtc1    $at, $s2
    lui     $at, 0x4040
    mtc1    $at, $a2
    mul.s   $f10, $f18, $f2
    nop
    mul.s   $f8, $f10, $f2
    nop
    mul.s   $f4, $f8, $f2
    lwc1    $f8, 0x24($v0)
    mul.s   $f18, $f6, $f2
    nop
    mul.s   $f10, $f18, $f2
    add.s   $f2, $f4, $f10
    lwc1    $f10, 0x40($sp)
    mul.s   $f6, $f8, $f2
    swc1    $f6, 0x38($sp)
    lwc1    $f18, 0x28($v0)
    lwc1    $f8, 0x38($sp)
    swc1    $f10, 0x20($sp)
    mul.s   $f4, $f18, $f2
    lwc1    $f18, 0x44($sp)
    swc1    $f8, 0x24($sp)
    mul.s   $f6, $f10, $f8
    lwc1    $f8, 0x20($sp)
    swc1    $f4, 0x3c($sp)
    lwc1    $f4, 0x3c($sp)
    mul.s   $f10, $f18, $f4
    swc1    $f4, 0x20($sp)
    add.s   $f6, $f6, $f10
    neg.s   $f10, $f6
    mul.s   $f6, $f18, $f18
    nop
    mul.s   $f4, $f8, $f8
    add.s   $f6, $f6, $f4
    div.s   $f0, $f10, $f6
    lwc1    $f10, 0x24($sp)
    mul.s   $f4, $f8, $f0
    lwc1    $f8, 0x2c($v0)
    add.s   $f6, $f4, $f10
    mul.s   $f4, $f6, $f8
    lwc1    $f6, 0x20($sp)
    mul.s   $f10, $f18, $f0
    swc1    $f4, 0x40($sp)
    lwc1    $f18, 0x2c($v0)
    sw      $t0, 0x2c($sp)
    add.s   $f8, $f10, $f6
    sw      $v0, 0x28($sp)
    mul.s   $f10, $f8, $f18
    nop
    mul.s   $f6, $f10, $f10
    swc1    $f10, 0x44($sp)
    mul.s   $f8, $f4, $f4
    jal     sqrtf
    add.s   $f12, $f6, $f8
    lw      $v0, 0x28($sp)
    lw      $t0, 0x2c($sp)
    lwc1    $f12, 0x30($v0)
    c.lt.s $f12, $f0
    nop
    bc1fl   branch_0x801df874
    lw      $a1, 0x74($v0)
    div.s   $f2, $f12, $f0
    lwc1    $f18, 0x40($sp)
    lwc1    $f4, 0x44($sp)
    mul.s   $f10, $f18, $f2
    nop
    mul.s   $f6, $f4, $f2
    swc1    $f10, 0x40($sp)
    swc1    $f6, 0x44($sp)
    lw      $a1, 0x74($v0)
branch_0x801df874:
    lwc1    $f8, 0x40($sp)
    sll     $t9, $a1, 2
    addu    $t1, $v0, $t9
    lwc1    $f18, 0x0($t1)
    addu    $t2, $t0, $t9
    add.s   $f10, $f8, $f18
    swc1    $f10, 0x0($t2)
    lw      $a2, 0x78($v0)
    lwc1    $f4, 0x44($sp)
    sll     $t3, $a2, 2
    addu    $t4, $v0, $t3
    lwc1    $f6, 0x0($t4)
    addu    $t5, $t0, $t3
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0($t5)
    lw      $t6, 0x80($v0)
    lwc1    $f18, 0x40($sp)
    beqzl   $t6, branch_0x801df8ec
    mtc1    $zero, $zero
    lwc1    $f10, 0x70($v0)
    mul.s   $f4, $f18, $f10
    swc1    $f4, 0x28($s0)
    lwc1    $f6, 0x30($v0)
    swc1    $f6, 0x2c($s0)
    lwc1    $f18, 0x70($v0)
    lwc1    $f8, 0x44($sp)
    mul.s   $f10, $f8, $f18
    b       branch_0x801df900
    swc1    $f10, 0x30($s0)

.globl Function_0x801df8e8
Function_0x801df8e8: # 0x801df8e8
    mtc1    $zero, $zero
branch_0x801df8ec:
    lui     $at, 0x3f80
    mtc1    $at, $a0
    swc1    $f0, 0x28($s0)
    swc1    $f0, 0x30($s0)
    swc1    $f4, 0x2c($s0)
branch_0x801df900:
    lw      $a3, 0x7c($v0)
    lwc1    $f12, 0x10($v0)
    sll     $t7, $a3, 2
    addu    $t8, $v0, $t7
    lwc1    $f14, 0x0($t8)
    or      $a3, $t7, $zero
    c.le.s $f14, $f12
    nop
    bc1fl   branch_0x801df934
    lwc1    $f16, 0x14($v0)
    b       branch_0x801df974
    lwc1    $f2, 0x40($v0)

.globl Function_0x801df930
Function_0x801df930: # 0x801df930
    lwc1    $f16, 0x14($v0)
branch_0x801df934:
    c.le.s $f16, $f14
    nop
    bc1fl   branch_0x801df950
    sub.s   $f6, $f14, $f12
    b       branch_0x801df974
    lwc1    $f2, 0x44($v0)

.globl Function_0x801df94c
Function_0x801df94c: # 0x801df94c
    sub.s   $f6, $f14, $f12
branch_0x801df950:
    lwc1    $f0, 0x40($v0)
    lwc1    $f10, 0x44($v0)
    sub.s   $f8, $f16, $f12
    sub.s   $f4, $f10, $f0
    div.s   $f2, $f6, $f8
    mul.s   $f18, $f2, $f2
    nop
    mul.s   $f6, $f18, $f4
    add.s   $f2, $f6, $f0
branch_0x801df974:
    lwc1    $f12, 0xc($v0)
    addu    $t9, $t0, $a3
    or      $a0, $s0, $zero
    sub.s   $f8, $f14, $f12
    mul.s   $f10, $f8, $f2
    add.s   $f18, $f10, $f12
    jal     Function_0x801dec24
    swc1    $f18, 0x0($t9)
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x50
    jr      $ra
    nop

.globl Function_0x801df9a8
Function_0x801df9a8: # 0x801df9a8
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    lw      $v0, 0x0($a0)
    addiu   $at, $zero, 0x1
    beq     $v0, $at, branch_0x801df9e0
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x801df9f0
    addiu   $at, $zero, 0x3
    beq     $v0, $at, branch_0x801df9f0
    addiu   $at, $zero, 0x5
    beq     $v0, $at, branch_0x801dfa00
    nop
    b       branch_0x801dfa0c
    lw      $ra, 0x14($sp)
branch_0x801df9e0:
    jal     Function_0x801dee88
    nop
    b       branch_0x801dfa0c
    lw      $ra, 0x14($sp)
branch_0x801df9f0:
    jal     Function_0x801df0ec
    nop
    b       branch_0x801dfa0c
    lw      $ra, 0x14($sp)
branch_0x801dfa00:
    jal     Function_0x801df4a4
    nop
    lw      $ra, 0x14($sp)
branch_0x801dfa0c:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801dfa18
Function_0x801dfa18: # 0x801dfa18
    addiu   $sp, $sp, 0xffd8
    sw      $s3, 0x20($sp)
    sw      $s2, 0x1c($sp)
    sw      $s1, 0x18($sp)
    or      $s1, $a0, $zero
    sw      $ra, 0x24($sp)
    sw      $s0, 0x14($sp)
    addiu   $s2, $zero, 0xfffe
    addiu   $s3, $zero, 0xffff
branch_0x801dfa3c:
    lw      $s0, 0x4($s1)
    or      $a0, $s1, $zero
    beqzl   $s0, branch_0x801dfad4
    lw      $ra, 0x24($sp)
    lw      $v0, 0x4($s0)
    beqzl   $v0, branch_0x801dfa64
    lw      $v0, 0x0($s0)
    jalr    $v0
    lw      $a1, 0x8($s0)
    lw      $v0, 0x0($s0)
branch_0x801dfa64:
    beql    $v0, $s2, branch_0x801dfa9c
    lw      $t8, 0x8($s1)
    beql    $v0, $s3, branch_0x801dfa90
    or      $s0, $zero, $zero
    bnezl   $v0, branch_0x801dfaac
    lw      $t0, 0x8($s1)
    lw      $t6, 0x4($s1)
    addiu   $t7, $t6, 0xc
    b       branch_0x801dfa3c
    sw      $t7, 0x4($s1)

.globl Function_0x801dfa8c
Function_0x801dfa8c: # 0x801dfa8c
    or      $s0, $zero, $zero
branch_0x801dfa90:
    b       branch_0x801dfacc
    sw      $zero, 0x8($s1)

.globl Function_0x801dfa98
Function_0x801dfa98: # 0x801dfa98
    lw      $t8, 0x8($s1)
branch_0x801dfa9c:
    addiu   $t9, $t8, 0x1
    b       branch_0x801dfacc
    sw      $t9, 0x8($s1)

.globl Function_0x801dfaa8
Function_0x801dfaa8: # 0x801dfaa8
    lw      $t0, 0x8($s1)
branch_0x801dfaac:
    addiu   $t1, $t0, 0x1
    sw      $t1, 0x8($s1)
    lw      $t3, 0x0($s0)
    slt     $at, $t1, $t3
    bnezl   $at, branch_0x801dfad0
    sw      $s0, 0x4($s1)
    addiu   $s0, $s0, 0xc
    sw      $zero, 0x8($s1)
branch_0x801dfacc:
    sw      $s0, 0x4($s1)
branch_0x801dfad0:
    lw      $ra, 0x24($sp)
branch_0x801dfad4:
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    lw      $s2, 0x1c($sp)
    lw      $s3, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x28

.globl Function_0x801dfaec
Function_0x801dfaec: # 0x801dfaec
    jr      $ra
    sw      $a1, 0x0($a0)

.globl Function_0x801dfaf4
Function_0x801dfaf4: # 0x801dfaf4
    sw      $a1, 0x4($a0)
    jr      $ra
    sw      $zero, 0x8($a0)

.globl Function_0x801dfb00
Function_0x801dfb00: # 0x801dfb00
    jr      $ra
    sw      $a1, 0xc($a0)

.globl Function_0x801dfb08
Function_0x801dfb08: # 0x801dfb08
    sw      $a1, 0x10($a0)
    sw      $a2, 0x14($a0)
    sw      $a3, 0x18($a0)
    lw      $t6, 0x10($sp)
    sw      $t6, 0x1c($a0)
    lw      $t7, 0x14($sp)
    sw      $t7, 0x20($a0)
    lw      $t8, 0x18($sp)
    sw      $t8, 0x24($a0)
    lw      $t9, 0x1c($sp)
    sw      $t9, 0x28($a0)
    lw      $t0, 0x20($sp)
    sw      $t0, 0x2c($a0)
    lw      $t1, 0x24($sp)
    sw      $t1, 0x30($a0)
    lw      $t2, 0x28($sp)
    jr      $ra
    sw      $t2, 0x34($a0)

.globl Function_0x801dfb50
Function_0x801dfb50: # 0x801dfb50
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    jal     Function_0x801de7f4
    lw      $a0, 0xc($a0)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801dfb70
Function_0x801dfb70: # 0x801dfb70
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    jal     Function_0x801ded68
    lw      $a0, 0x0($a0)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801dfb90
Function_0x801dfb90: # 0x801dfb90
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    or      $a2, $a1, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801defd8
    lw      $a0, 0x0($a0)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801dfbb8
Function_0x801dfbb8: # 0x801dfbb8
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    or      $a2, $a1, $zero
    addiu   $a1, $zero, 0x3
    jal     Function_0x801defd8
    lw      $a0, 0x0($a0)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801dfbe0
Function_0x801dfbe0: # 0x801dfbe0
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    or      $a3, $a0, $zero
    lw      $a0, 0x0($a0)
    jal     Function_0x801df350
    sw      $a3, 0x18($sp)
    lw      $a3, 0x18($sp)
    or      $v1, $zero, $zero
    addiu   $a2, $zero, 0x2
    lw      $a1, 0x0($a3)
    or      $a0, $a3, $zero
    addiu   $a1, $a1, 0x5c
    or      $v0, $a1, $zero
branch_0x801dfc14:
    lw      $t6, 0x10($a0)
    addiu   $v1, $v1, 0x1
    slti    $at, $v1, 0x3
    lwc1    $f4, 0x0($t6)
    addiu   $v0, $v0, 0x4
    addiu   $a0, $a0, 0x4
    bnez    $at, branch_0x801dfc14
    swc1    $f4, -0x4($v0)
    lui     $at, 0x42c8
    mtc1    $at, $zero
    or      $v1, $zero, $zero
    or      $v0, $a1, $zero
    lw      $a1, 0x74($v0)
    addiu   $v1, $v1, 0x1
    sll     $t7, $a1, 2
    addu    $a0, $a3, $t7
    beq     $v1, $a2, branch_0x801dfc90
    lw      $t9, 0x1c($a0)
branch_0x801dfc5c:
    lwc1    $f18, 0x0($t9)
    lw      $t8, 0x10($a0)
    lw      $a1, 0x78($v0)
    mul.s   $f18, $f18, $f0
    lwc1    $f16, 0x0($t8)
    sll     $t7, $a1, 2
    addu    $a0, $a3, $t7
    addiu   $v1, $v1, 0x1
    addiu   $v0, $v0, 0x4
    sub.s   $f18, $f16, $f18
    swc1    $f18, 0x14($v0)
    bne     $v1, $a2, branch_0x801dfc5c
    lw      $t9, 0x1c($a0)
branch_0x801dfc90:
    lwc1    $f18, 0x0($t9)
    lw      $t8, 0x10($a0)
    addiu   $v0, $v0, 0x4
    mul.s   $f18, $f18, $f0
    lwc1    $f16, 0x0($t8)
    sub.s   $f18, $f16, $f18
    swc1    $f18, 0x14($v0)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801dfcbc
Function_0x801dfcbc: # 0x801dfcbc
    addiu   $sp, $sp, 0xffc8
    sw      $a0, 0x38($sp)
    lw      $t6, 0x38($sp)
    sw      $ra, 0x1c($sp)
    or      $a2, $a1, $zero
    addiu   $a0, $sp, 0x20
    jal     Function_0x801deaa4
    lw      $a1, 0xc($t6)
    lw      $t7, 0x38($sp)
    addiu   $a1, $sp, 0x20
    addiu   $a2, $sp, 0x2c
    lw      $a0, 0x0($t7)
    sw      $zero, 0x10($sp)
    jal     Function_0x801dedec
    or      $a3, $zero, $zero
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop

.globl Function_0x801dfd08
Function_0x801dfd08: # 0x801dfd08
    addiu   $sp, $sp, 0xffb8
    sw      $a0, 0x48($sp)
    lw      $t6, 0x48($sp)
    sw      $ra, 0x1c($sp)
    or      $a2, $a1, $zero
    addiu   $a0, $sp, 0x24
    jal     Function_0x801deae8
    lw      $a1, 0xc($t6)
    lw      $t7, 0x48($sp)
    addiu   $a1, $sp, 0x24
    addiu   $a2, $sp, 0x30
    lw      $a0, 0x0($t7)
    sw      $zero, 0x10($sp)
    jal     Function_0x801dedec
    addiu   $a3, $sp, 0x3c
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x48
    jr      $ra
    nop

.globl Function_0x801dfd54
Function_0x801dfd54: # 0x801dfd54
    addiu   $sp, $sp, 0xffc0
    sw      $a0, 0x40($sp)
    lw      $t6, 0x40($sp)
    sw      $ra, 0x1c($sp)
    or      $a2, $a1, $zero
    addiu   $a0, $sp, 0x24
    jal     Function_0x801deb48
    lw      $a1, 0xc($t6)
    lw      $t7, 0x40($sp)
    addiu   $t8, $sp, 0x3c
    addiu   $a1, $sp, 0x24
    lw      $a0, 0x0($t7)
    sw      $t8, 0x10($sp)
    addiu   $a2, $sp, 0x30
    jal     Function_0x801dedec
    or      $a3, $zero, $zero
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop

.globl Function_0x801dfda4
Function_0x801dfda4: # 0x801dfda4
    addiu   $sp, $sp, 0xffb8
    sw      $a0, 0x48($sp)
    lw      $t6, 0x48($sp)
    sw      $ra, 0x1c($sp)
    or      $a2, $a1, $zero
    addiu   $a0, $sp, 0x20
    jal     Function_0x801deba8
    lw      $a1, 0xc($t6)
    lw      $t7, 0x48($sp)
    addiu   $t8, $sp, 0x44
    addiu   $a1, $sp, 0x20
    lw      $a0, 0x0($t7)
    sw      $t8, 0x10($sp)
    addiu   $a2, $sp, 0x2c
    jal     Function_0x801dedec
    addiu   $a3, $sp, 0x38
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x48
    jr      $ra
    nop

.globl Function_0x801dfdf4
Function_0x801dfdf4: # 0x801dfdf4
    addiu   $sp, $sp, 0xffc8
    sw      $a0, 0x38($sp)
    lw      $t6, 0x38($sp)
    sw      $ra, 0x1c($sp)
    or      $a2, $a1, $zero
    addiu   $a0, $sp, 0x20
    jal     Function_0x801deaa4
    lw      $a1, 0xc($t6)
    lw      $t7, 0x38($sp)
    addiu   $a1, $sp, 0x20
    addiu   $a2, $sp, 0x2c
    lw      $a0, 0x0($t7)
    sw      $zero, 0x10($sp)
    jal     Function_0x801df058
    or      $a3, $zero, $zero
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop

.globl Function_0x801dfe40
Function_0x801dfe40: # 0x801dfe40
    addiu   $sp, $sp, 0xffb8
    sw      $a0, 0x48($sp)
    lw      $t6, 0x48($sp)
    sw      $ra, 0x1c($sp)
    or      $a2, $a1, $zero
    addiu   $a0, $sp, 0x24
    jal     Function_0x801deae8
    lw      $a1, 0xc($t6)
    lw      $t7, 0x48($sp)
    addiu   $a1, $sp, 0x24
    addiu   $a2, $sp, 0x30
    lw      $a0, 0x0($t7)
    sw      $zero, 0x10($sp)
    jal     Function_0x801df058
    addiu   $a3, $sp, 0x3c
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x48
    jr      $ra
    nop

.globl Function_0x801dfe8c
Function_0x801dfe8c: # 0x801dfe8c
    addiu   $sp, $sp, 0xffc0
    sw      $a0, 0x40($sp)
    lw      $t6, 0x40($sp)
    sw      $ra, 0x1c($sp)
    or      $a2, $a1, $zero
    addiu   $a0, $sp, 0x24
    jal     Function_0x801deb48
    lw      $a1, 0xc($t6)
    lw      $t7, 0x40($sp)
    addiu   $t8, $sp, 0x3c
    addiu   $a1, $sp, 0x24
    lw      $a0, 0x0($t7)
    sw      $t8, 0x10($sp)
    addiu   $a2, $sp, 0x30
    jal     Function_0x801df058
    or      $a3, $zero, $zero
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop

.globl Function_0x801dfedc
Function_0x801dfedc: # 0x801dfedc
    addiu   $sp, $sp, 0xffb8
    sw      $a0, 0x48($sp)
    lw      $t6, 0x48($sp)
    sw      $ra, 0x1c($sp)
    or      $a2, $a1, $zero
    addiu   $a0, $sp, 0x20
    jal     Function_0x801deba8
    lw      $a1, 0xc($t6)
    lw      $t7, 0x48($sp)
    addiu   $t8, $sp, 0x44
    addiu   $a1, $sp, 0x20
    lw      $a0, 0x0($t7)
    sw      $t8, 0x10($sp)
    addiu   $a2, $sp, 0x2c
    jal     Function_0x801df058
    addiu   $a3, $sp, 0x38
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x48
    jr      $ra
    nop

.globl Function_0x801dff2c
Function_0x801dff2c: # 0x801dff2c
    addiu   $sp, $sp, 0xffc8
    sw      $a0, 0x38($sp)
    lw      $t6, 0x38($sp)
    sw      $ra, 0x1c($sp)
    or      $a2, $a1, $zero
    addiu   $a0, $sp, 0x20
    jal     Function_0x801deaa4
    lw      $a1, 0xc($t6)
    lw      $t7, 0x38($sp)
    addiu   $a1, $sp, 0x2c
    addiu   $a2, $sp, 0x20
    lw      $a0, 0x0($t7)
    sw      $zero, 0x10($sp)
    jal     Function_0x801df058
    or      $a3, $zero, $zero
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop

.globl Function_0x801dff78
Function_0x801dff78: # 0x801dff78
    addiu   $sp, $sp, 0xffb8
    sw      $a0, 0x48($sp)
    lw      $t6, 0x48($sp)
    sw      $ra, 0x1c($sp)
    or      $a2, $a1, $zero
    addiu   $a0, $sp, 0x24
    jal     Function_0x801deae8
    lw      $a1, 0xc($t6)
    lw      $t7, 0x48($sp)
    addiu   $a1, $sp, 0x30
    addiu   $a2, $sp, 0x24
    lw      $a0, 0x0($t7)
    sw      $zero, 0x10($sp)
    jal     Function_0x801df058
    addiu   $a3, $sp, 0x3c
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x48
    jr      $ra
    nop

.globl Function_0x801dffc4
Function_0x801dffc4: # 0x801dffc4
    addiu   $sp, $sp, 0xffc0
    sw      $a0, 0x40($sp)
    lw      $t6, 0x40($sp)
    sw      $ra, 0x1c($sp)
    or      $a2, $a1, $zero
    addiu   $a0, $sp, 0x24
    jal     Function_0x801deb48
    lw      $a1, 0xc($t6)
    lw      $t7, 0x40($sp)
    addiu   $t8, $sp, 0x3c
    addiu   $a1, $sp, 0x30
    lw      $a0, 0x0($t7)
    sw      $t8, 0x10($sp)
    addiu   $a2, $sp, 0x24
    jal     Function_0x801df058
    or      $a3, $zero, $zero
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop

.globl Function_0x801e0014
Function_0x801e0014: # 0x801e0014
    addiu   $sp, $sp, 0xffb8
    sw      $a0, 0x48($sp)
    lw      $t6, 0x48($sp)
    sw      $ra, 0x1c($sp)
    or      $a2, $a1, $zero
    addiu   $a0, $sp, 0x20
    jal     Function_0x801deba8
    lw      $a1, 0xc($t6)
    lw      $t7, 0x48($sp)
    addiu   $t8, $sp, 0x44
    addiu   $a1, $sp, 0x2c
    lw      $a0, 0x0($t7)
    sw      $t8, 0x10($sp)
    addiu   $a2, $sp, 0x20
    jal     Function_0x801df058
    addiu   $a3, $sp, 0x38
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x48
    jr      $ra
    nop

.globl Function_0x801e0064
Function_0x801e0064: # 0x801e0064
    addiu   $sp, $sp, 0xff98
    sw      $s0, 0x20($sp)
    or      $s0, $a0, $zero
    sw      $ra, 0x24($sp)
    or      $a2, $a1, $zero
    lw      $a1, 0xc($s0)
    jal     Function_0x801deaa4
    addiu   $a0, $sp, 0x50
    lw      $t1, 0x0($s0)
    lw      $t6, 0x24($s0)
    lw      $t7, 0x1c($s0)
    addiu   $t1, $t1, 0x5c
    lwc1    $f12, 0x0($t6)
    lwc1    $f14, 0x0($t7)
    jal     Function_0x801ecee4
    sw      $t1, 0x38($sp)
    lw      $t1, 0x38($sp)
    mtc1    $zero, $a2
    lui     $at, 0x4580
    swc1    $f0, 0xc($t1)
    lwc1    $f4, 0x54($sp)
    mtc1    $at, $s0
    swc1    $f6, 0x10($t1)
    add.s   $f12, $f4, $f0
    lwc1    $f14, 0x58($sp)
    lui     $at, 0x43b4
    mtc1    $at, $s2
    mul.s   $f8, $f12, $f16
    lui     $t0, 0x8015
    addiu   $t0, $t0, 0x40b0
    mul.s   $f6, $f14, $f16
    addiu   $a1, $sp, 0x44
    addiu   $a2, $sp, 0x5c
    or      $a3, $zero, $zero
    div.s   $f10, $f8, $f18
    div.s   $f8, $f6, $f18
    trunc.w.s   $f4, $f10
    mfc1    $v0, $a0
    lwc1    $f4, 0x50($sp)
    addiu   $t6, $v0, 0x400
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 2
    addu    $t9, $t0, $t8
    andi    $t7, $v0, 0xfff
    sll     $t8, $t7, 2
    trunc.w.s   $f10, $f8
    lwc1    $f8, 0x0($t9)
    addu    $t9, $t0, $t8
    mfc1    $v1, $t2
    nop
    addiu   $t2, $v1, 0x400
    andi    $t3, $t2, 0xfff
    sll     $t4, $t3, 2
    addu    $t5, $t0, $t4
    lwc1    $f6, 0x0($t5)
    lw      $t2, 0x10($s0)
    andi    $t3, $v1, 0xfff
    mul.s   $f2, $f4, $f6
    lwc1    $f6, 0x0($t2)
    sll     $t4, $t3, 2
    addu    $t5, $t0, $t4
    mul.s   $f10, $f8, $f2
    add.s   $f8, $f10, $f6
    lwc1    $f10, 0x0($t5)
    mul.s   $f6, $f10, $f4
    swc1    $f8, 0x44($sp)
    lw      $t6, 0x14($s0)
    lwc1    $f4, 0x0($t9)
    lwc1    $f8, 0x0($t6)
    add.s   $f10, $f6, $f8
    mul.s   $f6, $f4, $f2
    swc1    $f10, 0x48($sp)
    lw      $t2, 0x18($s0)
    lwc1    $f8, 0x0($t2)
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x4c($sp)
    lw      $a0, 0x0($s0)
    jal     Function_0x801df058
    sw      $zero, 0x10($sp)
    lw      $ra, 0x24($sp)
    lw      $s0, 0x20($sp)
    addiu   $sp, $sp, 0x68
    jr      $ra
    nop

.globl Function_0x801e01b4
Function_0x801e01b4: # 0x801e01b4
    addiu   $sp, $sp, 0xff90
    sw      $s0, 0x20($sp)
    or      $s0, $a0, $zero
    sw      $ra, 0x24($sp)
    or      $a2, $a1, $zero
    lw      $a1, 0xc($s0)
    jal     Function_0x801deae8
    addiu   $a0, $sp, 0x4c
    lw      $t1, 0x0($s0)
    lw      $t6, 0x24($s0)
    lw      $t7, 0x1c($s0)
    addiu   $t1, $t1, 0x5c
    lwc1    $f12, 0x0($t6)
    lwc1    $f14, 0x0($t7)
    jal     Function_0x801ecee4
    sw      $t1, 0x34($sp)
    lw      $t1, 0x34($sp)
    mtc1    $zero, $a2
    lui     $at, 0x4580
    swc1    $f0, 0xc($t1)
    lwc1    $f4, 0x50($sp)
    mtc1    $at, $s0
    swc1    $f6, 0x10($t1)
    add.s   $f12, $f4, $f0
    lwc1    $f14, 0x54($sp)
    lui     $at, 0x43b4
    mtc1    $at, $s2
    mul.s   $f8, $f12, $f16
    lui     $t0, 0x8015
    addiu   $t0, $t0, 0x40b0
    mul.s   $f6, $f14, $f16
    addiu   $a1, $sp, 0x40
    addiu   $a2, $sp, 0x58
    addiu   $a3, $sp, 0x64
    div.s   $f10, $f8, $f18
    div.s   $f8, $f6, $f18
    trunc.w.s   $f4, $f10
    mfc1    $v0, $a0
    lwc1    $f4, 0x4c($sp)
    addiu   $t6, $v0, 0x400
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 2
    addu    $t9, $t0, $t8
    andi    $t7, $v0, 0xfff
    sll     $t8, $t7, 2
    trunc.w.s   $f10, $f8
    lwc1    $f8, 0x0($t9)
    addu    $t9, $t0, $t8
    mfc1    $v1, $t2
    nop
    addiu   $t2, $v1, 0x400
    andi    $t3, $t2, 0xfff
    sll     $t4, $t3, 2
    addu    $t5, $t0, $t4
    lwc1    $f6, 0x0($t5)
    lw      $t2, 0x10($s0)
    andi    $t3, $v1, 0xfff
    mul.s   $f2, $f4, $f6
    lwc1    $f6, 0x0($t2)
    sll     $t4, $t3, 2
    addu    $t5, $t0, $t4
    mul.s   $f10, $f8, $f2
    add.s   $f8, $f10, $f6
    lwc1    $f10, 0x0($t5)
    mul.s   $f6, $f10, $f4
    swc1    $f8, 0x40($sp)
    lw      $t6, 0x14($s0)
    lwc1    $f4, 0x0($t9)
    lwc1    $f8, 0x0($t6)
    add.s   $f10, $f6, $f8
    mul.s   $f6, $f4, $f2
    swc1    $f10, 0x44($sp)
    lw      $t2, 0x18($s0)
    lwc1    $f8, 0x0($t2)
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x48($sp)
    lw      $a0, 0x0($s0)
    jal     Function_0x801df058
    sw      $zero, 0x10($sp)
    lw      $ra, 0x24($sp)
    lw      $s0, 0x20($sp)
    addiu   $sp, $sp, 0x70
    jr      $ra
    nop

.globl Function_0x801e0304
Function_0x801e0304: # 0x801e0304
    addiu   $sp, $sp, 0xff98
    sw      $s0, 0x20($sp)
    or      $s0, $a0, $zero
    sw      $ra, 0x24($sp)
    or      $a2, $a1, $zero
    lw      $a1, 0xc($s0)
    jal     Function_0x801deb48
    addiu   $a0, $sp, 0x4c
    lw      $t1, 0x0($s0)
    lw      $t6, 0x24($s0)
    lw      $t7, 0x1c($s0)
    addiu   $t1, $t1, 0x5c
    lwc1    $f12, 0x0($t6)
    lwc1    $f14, 0x0($t7)
    jal     Function_0x801ecee4
    sw      $t1, 0x34($sp)
    lw      $t1, 0x34($sp)
    mtc1    $zero, $a2
    lui     $at, 0x4580
    swc1    $f0, 0xc($t1)
    lwc1    $f4, 0x50($sp)
    mtc1    $at, $s0
    swc1    $f6, 0x10($t1)
    add.s   $f12, $f4, $f0
    lwc1    $f14, 0x54($sp)
    lui     $at, 0x43b4
    mtc1    $at, $s2
    mul.s   $f8, $f12, $f16
    lui     $t0, 0x8015
    addiu   $t0, $t0, 0x40b0
    mul.s   $f6, $f14, $f16
    addiu   $a1, $sp, 0x40
    addiu   $a2, $sp, 0x58
    or      $a3, $zero, $zero
    div.s   $f10, $f8, $f18
    div.s   $f8, $f6, $f18
    trunc.w.s   $f4, $f10
    mfc1    $v0, $a0
    lwc1    $f4, 0x4c($sp)
    addiu   $t6, $v0, 0x400
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 2
    addu    $t9, $t0, $t8
    andi    $t7, $v0, 0xfff
    sll     $t8, $t7, 2
    trunc.w.s   $f10, $f8
    lwc1    $f8, 0x0($t9)
    addu    $t9, $t0, $t8
    mfc1    $v1, $t2
    nop
    addiu   $t2, $v1, 0x400
    andi    $t3, $t2, 0xfff
    sll     $t4, $t3, 2
    addu    $t5, $t0, $t4
    lwc1    $f6, 0x0($t5)
    lw      $t2, 0x10($s0)
    andi    $t3, $v1, 0xfff
    mul.s   $f2, $f4, $f6
    lwc1    $f6, 0x0($t2)
    sll     $t4, $t3, 2
    addu    $t5, $t0, $t4
    addiu   $t3, $sp, 0x64
    mul.s   $f10, $f8, $f2
    add.s   $f8, $f10, $f6
    lwc1    $f10, 0x0($t5)
    mul.s   $f6, $f10, $f4
    swc1    $f8, 0x40($sp)
    lw      $t6, 0x14($s0)
    lwc1    $f4, 0x0($t9)
    lwc1    $f8, 0x0($t6)
    add.s   $f10, $f6, $f8
    mul.s   $f6, $f4, $f2
    swc1    $f10, 0x44($sp)
    lw      $t2, 0x18($s0)
    lwc1    $f8, 0x0($t2)
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x48($sp)
    lw      $a0, 0x0($s0)
    jal     Function_0x801df058
    sw      $t3, 0x10($sp)
    lw      $ra, 0x24($sp)
    lw      $s0, 0x20($sp)
    addiu   $sp, $sp, 0x68
    jr      $ra
    nop

.globl Function_0x801e0458
Function_0x801e0458: # 0x801e0458
    addiu   $sp, $sp, 0xff88
    sw      $s0, 0x20($sp)
    or      $s0, $a0, $zero
    sw      $ra, 0x24($sp)
    or      $a2, $a1, $zero
    lw      $a1, 0xc($s0)
    jal     Function_0x801deba8
    addiu   $a0, $sp, 0x50
    lw      $t1, 0x0($s0)
    lw      $t6, 0x24($s0)
    lw      $t7, 0x1c($s0)
    addiu   $t1, $t1, 0x5c
    lwc1    $f12, 0x0($t6)
    lwc1    $f14, 0x0($t7)
    jal     Function_0x801ecee4
    sw      $t1, 0x38($sp)
    lw      $t1, 0x38($sp)
    mtc1    $zero, $a2
    lui     $at, 0x4580
    swc1    $f0, 0xc($t1)
    lwc1    $f4, 0x54($sp)
    mtc1    $at, $s0
    swc1    $f6, 0x10($t1)
    add.s   $f12, $f4, $f0
    lwc1    $f14, 0x58($sp)
    lui     $at, 0x43b4
    mtc1    $at, $s2
    mul.s   $f8, $f12, $f16
    lui     $t0, 0x8015
    addiu   $t0, $t0, 0x40b0
    mul.s   $f6, $f14, $f16
    addiu   $a1, $sp, 0x44
    addiu   $a2, $sp, 0x5c
    addiu   $a3, $sp, 0x68
    div.s   $f10, $f8, $f18
    div.s   $f8, $f6, $f18
    trunc.w.s   $f4, $f10
    mfc1    $v0, $a0
    lwc1    $f4, 0x50($sp)
    addiu   $t6, $v0, 0x400
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 2
    addu    $t9, $t0, $t8
    andi    $t7, $v0, 0xfff
    sll     $t8, $t7, 2
    trunc.w.s   $f10, $f8
    lwc1    $f8, 0x0($t9)
    addu    $t9, $t0, $t8
    mfc1    $v1, $t2
    nop
    addiu   $t2, $v1, 0x400
    andi    $t3, $t2, 0xfff
    sll     $t4, $t3, 2
    addu    $t5, $t0, $t4
    lwc1    $f6, 0x0($t5)
    lw      $t2, 0x10($s0)
    andi    $t3, $v1, 0xfff
    mul.s   $f2, $f4, $f6
    lwc1    $f6, 0x0($t2)
    sll     $t4, $t3, 2
    addu    $t5, $t0, $t4
    addiu   $t3, $sp, 0x74
    mul.s   $f10, $f8, $f2
    add.s   $f8, $f10, $f6
    lwc1    $f10, 0x0($t5)
    mul.s   $f6, $f10, $f4
    swc1    $f8, 0x44($sp)
    lw      $t6, 0x14($s0)
    lwc1    $f4, 0x0($t9)
    lwc1    $f8, 0x0($t6)
    add.s   $f10, $f6, $f8
    mul.s   $f6, $f4, $f2
    swc1    $f10, 0x48($sp)
    lw      $t2, 0x18($s0)
    lwc1    $f8, 0x0($t2)
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x4c($sp)
    lw      $a0, 0x0($s0)
    jal     Function_0x801df058
    sw      $t3, 0x10($sp)
    lw      $ra, 0x24($sp)
    lw      $s0, 0x20($sp)
    addiu   $sp, $sp, 0x78
    jr      $ra
    nop

.globl Function_0x801e05ac
Function_0x801e05ac: # 0x801e05ac
    addiu   $sp, $sp, 0xff90
    sw      $s0, 0x28($sp)
    or      $s0, $a0, $zero
    sw      $ra, 0x2c($sp)
    or      $a2, $a1, $zero
    lw      $a1, 0xc($s0)
    jal     Function_0x801deaa4
    addiu   $a0, $sp, 0x58
    lw      $v0, 0x0($s0)
    lw      $t6, 0x24($s0)
    lw      $t7, 0x1c($s0)
    addiu   $v0, $v0, 0x5c
    lwc1    $f12, 0x0($t6)
    lwc1    $f14, 0x0($t7)
    jal     Function_0x801ecee4
    sw      $v0, 0x40($sp)
    lwc1    $f4, 0x5c($sp)
    lui     $at, 0x4580
    mtc1    $at, $t0
    add.s   $f18, $f4, $f0
    lui     $at, 0x43b4
    mtc1    $at, $a0
    lui     $at, 0x4580
    mul.s   $f10, $f18, $f8
    lwc1    $f6, 0x60($sp)
    lui     $a3, 0x8015
    addiu   $a3, $a3, 0x40b0
    swc1    $f6, 0x44($sp)
    lw      $t8, 0x10($s0)
    lw      $v0, 0x40($sp)
    div.s   $f8, $f10, $f4
    mtc1    $at, $a0
    lui     $at, 0x43b4
    trunc.w.s   $f10, $f8
    mul.s   $f8, $f6, $f4
    mfc1    $v1, $t2
    mtc1    $at, $t2
    addiu   $t4, $v1, 0x400
    div.s   $f6, $f8, $f10
    lwc1    $f8, 0x58($sp)
    andi    $t5, $t4, 0xfff
    sll     $t6, $t5, 2
    addu    $t7, $a3, $t6
    trunc.w.s   $f4, $f6
    lwc1    $f6, 0x0($t7)
    mfc1    $a0, $a0
    nop
    addiu   $t0, $a0, 0x400
    andi    $t1, $t0, 0xfff
    sll     $t2, $t1, 2
    addu    $t3, $a3, $t2
    lwc1    $f10, 0x0($t3)
    andi    $t9, $a0, 0xfff
    sll     $t0, $t9, 2
    mul.s   $f2, $f8, $f10
    lwc1    $f10, 0x0($t8)
    addu    $t1, $a3, $t0
    andi    $t3, $v1, 0xfff
    sll     $t4, $t3, 2
    addu    $t5, $a3, $t4
    mul.s   $f4, $f6, $f2
    add.s   $f6, $f4, $f10
    lwc1    $f4, 0x0($t1)
    mul.s   $f10, $f4, $f8
    swc1    $f6, 0x4c($sp)
    lw      $t2, 0x14($s0)
    lwc1    $f8, 0x0($t5)
    lwc1    $f6, 0x0($t2)
    add.s   $f4, $f10, $f6
    mul.s   $f10, $f8, $f2
    swc1    $f4, 0x50($sp)
    lw      $t6, 0x18($s0)
    lwc1    $f6, 0x0($t6)
    add.s   $f4, $f10, $f6
    swc1    $f4, 0x54($sp)
    lw      $t7, 0x34($s0)
    lw      $t8, 0x74($v0)
    lw      $t1, 0x78($v0)
    lwc1    $f8, 0x0($t7)
    sll     $t9, $t8, 2
    addu    $a1, $s0, $t9
    swc1    $f8, 0xc($v0)
    lw      $t0, 0x1c($a1)
    sll     $t2, $t1, 2
    addu    $a2, $s0, $t2
    lwc1    $f10, 0x0($t0)
    swc1    $f10, 0x24($v0)
    lw      $t3, 0x1c($a2)
    lwc1    $f6, 0x0($t3)
    swc1    $f6, 0x28($v0)
    lw      $t4, 0x28($a2)
    lw      $t5, 0x28($a1)
    lwc1    $f14, 0x0($t4)
    lwc1    $f16, 0x0($t5)
    mul.s   $f4, $f14, $f14
    nop
    mul.s   $f8, $f16, $f16
    jal     sqrtf
    add.s   $f12, $f4, $f8
    lw      $v0, 0x40($sp)
    addiu   $t6, $sp, 0x64
    addiu   $a1, $sp, 0x4c
    swc1    $f0, 0x34($v0)
    lw      $a0, 0x0($s0)
    sw      $zero, 0x18($sp)
    sw      $zero, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801df3c8
    or      $a3, $zero, $zero
    lw      $ra, 0x2c($sp)
    lw      $s0, 0x28($sp)
    addiu   $sp, $sp, 0x70
    jr      $ra
    nop

.globl Function_0x801e0778
Function_0x801e0778: # 0x801e0778
    addiu   $sp, $sp, 0xff80
    sw      $s0, 0x28($sp)
    or      $s0, $a0, $zero
    sw      $ra, 0x2c($sp)
    or      $a2, $a1, $zero
    lw      $a1, 0xc($s0)
    jal     Function_0x801deae8
    addiu   $a0, $sp, 0x5c
    lw      $v0, 0x0($s0)
    lw      $t6, 0x24($s0)
    lw      $t7, 0x1c($s0)
    addiu   $v0, $v0, 0x5c
    lwc1    $f12, 0x0($t6)
    lwc1    $f14, 0x0($t7)
    jal     Function_0x801ecee4
    sw      $v0, 0x44($sp)
    lwc1    $f4, 0x60($sp)
    lui     $at, 0x4580
    mtc1    $at, $t0
    add.s   $f18, $f4, $f0
    lui     $at, 0x43b4
    mtc1    $at, $a0
    lui     $at, 0x4580
    mul.s   $f10, $f18, $f8
    lwc1    $f6, 0x64($sp)
    lui     $a3, 0x8015
    addiu   $a3, $a3, 0x40b0
    swc1    $f6, 0x48($sp)
    lw      $t8, 0x10($s0)
    lw      $v0, 0x44($sp)
    div.s   $f8, $f10, $f4
    mtc1    $at, $a0
    lui     $at, 0x43b4
    trunc.w.s   $f10, $f8
    mul.s   $f8, $f6, $f4
    mfc1    $v1, $t2
    mtc1    $at, $t2
    addiu   $t4, $v1, 0x400
    div.s   $f6, $f8, $f10
    lwc1    $f8, 0x5c($sp)
    andi    $t5, $t4, 0xfff
    sll     $t6, $t5, 2
    addu    $t7, $a3, $t6
    trunc.w.s   $f4, $f6
    lwc1    $f6, 0x0($t7)
    mfc1    $a0, $a0
    nop
    addiu   $t0, $a0, 0x400
    andi    $t1, $t0, 0xfff
    sll     $t2, $t1, 2
    addu    $t3, $a3, $t2
    lwc1    $f10, 0x0($t3)
    andi    $t9, $a0, 0xfff
    sll     $t0, $t9, 2
    mul.s   $f2, $f8, $f10
    lwc1    $f10, 0x0($t8)
    addu    $t1, $a3, $t0
    andi    $t3, $v1, 0xfff
    sll     $t4, $t3, 2
    addu    $t5, $a3, $t4
    mul.s   $f4, $f6, $f2
    add.s   $f6, $f4, $f10
    lwc1    $f4, 0x0($t1)
    mul.s   $f10, $f4, $f8
    swc1    $f6, 0x50($sp)
    lw      $t2, 0x14($s0)
    lwc1    $f8, 0x0($t5)
    lwc1    $f6, 0x0($t2)
    add.s   $f4, $f10, $f6
    mul.s   $f10, $f8, $f2
    swc1    $f4, 0x54($sp)
    lw      $t6, 0x18($s0)
    lwc1    $f6, 0x0($t6)
    add.s   $f4, $f10, $f6
    swc1    $f4, 0x58($sp)
    lw      $t7, 0x34($s0)
    lw      $t8, 0x74($v0)
    lw      $t1, 0x78($v0)
    lwc1    $f8, 0x0($t7)
    sll     $t9, $t8, 2
    addu    $a1, $s0, $t9
    swc1    $f8, 0xc($v0)
    lw      $t0, 0x1c($a1)
    sll     $t2, $t1, 2
    addu    $a2, $s0, $t2
    lwc1    $f10, 0x0($t0)
    swc1    $f10, 0x24($v0)
    lw      $t3, 0x1c($a2)
    lwc1    $f6, 0x0($t3)
    swc1    $f6, 0x28($v0)
    lw      $t4, 0x28($a2)
    lw      $t5, 0x28($a1)
    lwc1    $f14, 0x0($t4)
    lwc1    $f16, 0x0($t5)
    mul.s   $f4, $f14, $f14
    nop
    mul.s   $f8, $f16, $f16
    jal     sqrtf
    add.s   $f12, $f4, $f8
    lw      $v0, 0x44($sp)
    addiu   $t6, $sp, 0x68
    addiu   $t7, $sp, 0x74
    swc1    $f0, 0x34($v0)
    lw      $a0, 0x0($s0)
    sw      $zero, 0x18($sp)
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    addiu   $a1, $sp, 0x50
    or      $a2, $zero, $zero
    jal     Function_0x801df3c8
    or      $a3, $zero, $zero
    lw      $ra, 0x2c($sp)
    lw      $s0, 0x28($sp)
    addiu   $sp, $sp, 0x80
    jr      $ra
    nop

.globl Function_0x801e0948
Function_0x801e0948: # 0x801e0948
    addiu   $sp, $sp, 0xff88
    sw      $s0, 0x28($sp)
    or      $s0, $a0, $zero
    sw      $ra, 0x2c($sp)
    or      $a2, $a1, $zero
    lw      $a1, 0xc($s0)
    jal     Function_0x801deb48
    addiu   $a0, $sp, 0x5c
    lw      $v0, 0x0($s0)
    lw      $t6, 0x24($s0)
    lw      $t7, 0x1c($s0)
    addiu   $v0, $v0, 0x5c
    lwc1    $f12, 0x0($t6)
    lwc1    $f14, 0x0($t7)
    jal     Function_0x801ecee4
    sw      $v0, 0x44($sp)
    lwc1    $f4, 0x60($sp)
    lui     $at, 0x4580
    mtc1    $at, $t0
    add.s   $f18, $f4, $f0
    lui     $at, 0x43b4
    mtc1    $at, $a0
    lui     $at, 0x4580
    mul.s   $f10, $f18, $f8
    lwc1    $f6, 0x64($sp)
    lui     $a3, 0x8015
    addiu   $a3, $a3, 0x40b0
    swc1    $f6, 0x48($sp)
    lw      $t8, 0x10($s0)
    lw      $v0, 0x44($sp)
    div.s   $f8, $f10, $f4
    mtc1    $at, $a0
    lui     $at, 0x43b4
    trunc.w.s   $f10, $f8
    mul.s   $f8, $f6, $f4
    mfc1    $v1, $t2
    mtc1    $at, $t2
    addiu   $t4, $v1, 0x400
    div.s   $f6, $f8, $f10
    lwc1    $f8, 0x5c($sp)
    andi    $t5, $t4, 0xfff
    sll     $t6, $t5, 2
    addu    $t7, $a3, $t6
    trunc.w.s   $f4, $f6
    lwc1    $f6, 0x0($t7)
    mfc1    $a0, $a0
    nop
    addiu   $t0, $a0, 0x400
    andi    $t1, $t0, 0xfff
    sll     $t2, $t1, 2
    addu    $t3, $a3, $t2
    lwc1    $f10, 0x0($t3)
    andi    $t9, $a0, 0xfff
    sll     $t0, $t9, 2
    mul.s   $f2, $f8, $f10
    lwc1    $f10, 0x0($t8)
    addu    $t1, $a3, $t0
    andi    $t3, $v1, 0xfff
    sll     $t4, $t3, 2
    addu    $t5, $a3, $t4
    mul.s   $f4, $f6, $f2
    add.s   $f6, $f4, $f10
    lwc1    $f4, 0x0($t1)
    mul.s   $f10, $f4, $f8
    swc1    $f6, 0x50($sp)
    lw      $t2, 0x14($s0)
    lwc1    $f8, 0x0($t5)
    lwc1    $f6, 0x0($t2)
    add.s   $f4, $f10, $f6
    mul.s   $f10, $f8, $f2
    swc1    $f4, 0x54($sp)
    lw      $t6, 0x18($s0)
    lwc1    $f6, 0x0($t6)
    add.s   $f4, $f10, $f6
    swc1    $f4, 0x58($sp)
    lw      $t7, 0x34($s0)
    lw      $t8, 0x74($v0)
    lw      $t1, 0x78($v0)
    lwc1    $f8, 0x0($t7)
    sll     $t9, $t8, 2
    addu    $a1, $s0, $t9
    swc1    $f8, 0xc($v0)
    lw      $t0, 0x1c($a1)
    sll     $t2, $t1, 2
    addu    $a2, $s0, $t2
    lwc1    $f10, 0x0($t0)
    swc1    $f10, 0x24($v0)
    lw      $t3, 0x1c($a2)
    lwc1    $f6, 0x0($t3)
    swc1    $f6, 0x28($v0)
    lw      $t4, 0x28($a2)
    lw      $t5, 0x28($a1)
    lwc1    $f14, 0x0($t4)
    lwc1    $f16, 0x0($t5)
    mul.s   $f4, $f14, $f14
    nop
    mul.s   $f8, $f16, $f16
    jal     sqrtf
    add.s   $f12, $f4, $f8
    lw      $v0, 0x44($sp)
    addiu   $t6, $sp, 0x68
    addiu   $t7, $sp, 0x74
    swc1    $f0, 0x34($v0)
    lw      $a0, 0x0($s0)
    sw      $t7, 0x18($sp)
    sw      $zero, 0x14($sp)
    sw      $t6, 0x10($sp)
    addiu   $a1, $sp, 0x50
    or      $a2, $zero, $zero
    jal     Function_0x801df3c8
    or      $a3, $zero, $zero
    lw      $ra, 0x2c($sp)
    lw      $s0, 0x28($sp)
    addiu   $sp, $sp, 0x78
    jr      $ra
    nop

.globl Function_0x801e0b18
Function_0x801e0b18: # 0x801e0b18
    addiu   $sp, $sp, 0xff80
    sw      $s0, 0x28($sp)
    or      $s0, $a0, $zero
    sw      $ra, 0x2c($sp)
    or      $a2, $a1, $zero
    lw      $a1, 0xc($s0)
    jal     Function_0x801deba8
    addiu   $a0, $sp, 0x58
    lw      $v0, 0x0($s0)
    lw      $t6, 0x24($s0)
    lw      $t7, 0x1c($s0)
    addiu   $v0, $v0, 0x5c
    lwc1    $f12, 0x0($t6)
    lwc1    $f14, 0x0($t7)
    jal     Function_0x801ecee4
    sw      $v0, 0x40($sp)
    lwc1    $f4, 0x5c($sp)
    lui     $at, 0x4580
    mtc1    $at, $t0
    add.s   $f18, $f4, $f0
    lui     $at, 0x43b4
    mtc1    $at, $a0
    lui     $at, 0x4580
    mul.s   $f10, $f18, $f8
    lwc1    $f6, 0x60($sp)
    lui     $a3, 0x8015
    addiu   $a3, $a3, 0x40b0
    swc1    $f6, 0x44($sp)
    lw      $t8, 0x10($s0)
    lw      $v0, 0x40($sp)
    div.s   $f8, $f10, $f4
    mtc1    $at, $a0
    lui     $at, 0x43b4
    trunc.w.s   $f10, $f8
    mul.s   $f8, $f6, $f4
    mfc1    $v1, $t2
    mtc1    $at, $t2
    addiu   $t4, $v1, 0x400
    div.s   $f6, $f8, $f10
    lwc1    $f8, 0x58($sp)
    andi    $t5, $t4, 0xfff
    sll     $t6, $t5, 2
    addu    $t7, $a3, $t6
    trunc.w.s   $f4, $f6
    lwc1    $f6, 0x0($t7)
    mfc1    $a0, $a0
    nop
    addiu   $t0, $a0, 0x400
    andi    $t1, $t0, 0xfff
    sll     $t2, $t1, 2
    addu    $t3, $a3, $t2
    lwc1    $f10, 0x0($t3)
    andi    $t9, $a0, 0xfff
    sll     $t0, $t9, 2
    mul.s   $f2, $f8, $f10
    lwc1    $f10, 0x0($t8)
    addu    $t1, $a3, $t0
    andi    $t3, $v1, 0xfff
    sll     $t4, $t3, 2
    addu    $t5, $a3, $t4
    mul.s   $f4, $f6, $f2
    add.s   $f6, $f4, $f10
    lwc1    $f4, 0x0($t1)
    mul.s   $f10, $f4, $f8
    swc1    $f6, 0x4c($sp)
    lw      $t2, 0x14($s0)
    lwc1    $f8, 0x0($t5)
    lwc1    $f6, 0x0($t2)
    add.s   $f4, $f10, $f6
    mul.s   $f10, $f8, $f2
    swc1    $f4, 0x50($sp)
    lw      $t6, 0x18($s0)
    lwc1    $f6, 0x0($t6)
    add.s   $f4, $f10, $f6
    swc1    $f4, 0x54($sp)
    lw      $t7, 0x34($s0)
    lw      $t8, 0x74($v0)
    lw      $t1, 0x78($v0)
    lwc1    $f8, 0x0($t7)
    sll     $t9, $t8, 2
    addu    $a1, $s0, $t9
    swc1    $f8, 0xc($v0)
    lw      $t0, 0x1c($a1)
    sll     $t2, $t1, 2
    addu    $a2, $s0, $t2
    lwc1    $f10, 0x0($t0)
    swc1    $f10, 0x24($v0)
    lw      $t3, 0x1c($a2)
    lwc1    $f6, 0x0($t3)
    swc1    $f6, 0x28($v0)
    lw      $t4, 0x28($a2)
    lw      $t5, 0x28($a1)
    lwc1    $f14, 0x0($t4)
    lwc1    $f16, 0x0($t5)
    mul.s   $f4, $f14, $f14
    nop
    mul.s   $f8, $f16, $f16
    jal     sqrtf
    add.s   $f12, $f4, $f8
    lw      $v0, 0x40($sp)
    addiu   $t6, $sp, 0x64
    addiu   $t7, $sp, 0x70
    swc1    $f0, 0x34($v0)
    lw      $a0, 0x0($s0)
    addiu   $t8, $sp, 0x7c
    sw      $t8, 0x18($sp)
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    addiu   $a1, $sp, 0x4c
    or      $a2, $zero, $zero
    jal     Function_0x801df3c8
    or      $a3, $zero, $zero
    lw      $ra, 0x2c($sp)
    lw      $s0, 0x28($sp)
    addiu   $sp, $sp, 0x80
    jr      $ra
    nop

.globl Function_0x801e0cec
Function_0x801e0cec: # 0x801e0cec
    lwc1    $f4, 0x10($a1)
    swc1    $f4, 0x4c($a0)
    lwc1    $f6, 0x14($a1)
    swc1    $f6, 0x50($a0)
    lwc1    $f8, 0x18($a1)
    swc1    $f8, 0x54($a0)
    lwc1    $f10, 0x4($a1)
    swc1    $f10, 0x7c($a0)
    lwc1    $f16, 0x8($a1)
    swc1    $f16, 0x80($a0)
    lwc1    $f18, 0xc($a1)
    swc1    $f18, 0x84($a0)
    lwc1    $f4, 0x1c($a1)
    swc1    $f4, 0x70($a0)
    lwc1    $f6, 0x20($a1)
    swc1    $f6, 0x74($a0)
    lwc1    $f8, 0x24($a1)
    swc1    $f8, 0x78($a0)
    lwc1    $f10, 0x38($a1)
    swc1    $f10, 0x88($a0)
    lwc1    $f16, 0x44($a1)
    swc1    $f16, 0x94($a0)
    lwc1    $f18, 0x48($a1)
    jr      $ra
    swc1    $f18, 0x98($a0)

.globl Function_0x801e0d50
Function_0x801e0d50: # 0x801e0d50
    addiu   $sp, $sp, 0xffc8
    sw      $ra, 0x34($sp)
    sw      $s0, 0x30($sp)
    sdc1    $24, 0x28($29)
    sdc1    $22, 0x20($29)
    sdc1    $20, 0x18($29)
    lwc1    $f6, 0x4c($a0)
    lwc1    $f4, 0x7c($a0)
    lwc1    $f10, 0x50($a0)
    lwc1    $f8, 0x80($a0)
    sub.s   $f0, $f4, $f6
    lwc1    $f6, 0x54($a0)
    lwc1    $f4, 0x84($a0)
    sub.s   $f2, $f8, $f10
    mul.s   $f8, $f0, $f0
    or      $s0, $a0, $zero
    sub.s   $f14, $f4, $f6
    mul.s   $f10, $f2, $f2
    swc1    $f0, 0x64($a0)
    swc1    $f2, 0x68($a0)
    mul.s   $f6, $f14, $f14
    swc1    $f14, 0x6c($a0)
    add.s   $f4, $f8, $f10
    jal     sqrtf
    add.s   $f12, $f4, $f6
    lwc1    $f8, 0x64($s0)
    lwc1    $f4, 0x68($s0)
    div.s   $f10, $f8, $f0
    lwc1    $f8, 0x6c($s0)
    div.s   $f6, $f4, $f0
    swc1    $f10, 0x64($s0)
    lwc1    $f2, 0x64($s0)
    mul.s   $f4, $f2, $f2
    div.s   $f10, $f8, $f0
    swc1    $f6, 0x68($s0)
    swc1    $f10, 0x6c($s0)
    lwc1    $f14, 0x6c($s0)
    mul.s   $f6, $f14, $f14
    jal     sqrtf
    add.s   $f12, $f4, $f6
    lwc1    $f14, 0x6c($s0)
    lwc1    $f2, 0x64($s0)
    lwc1    $f24, 0x68($s0)
    div.s   $f10, $f14, $f0
    lwc1    $f18, 0x70($s0)
    lwc1    $f20, 0x74($s0)
    lwc1    $f22, 0x78($s0)
    mul.s   $f4, $f2, $f2
    nop
    mul.s   $f6, $f24, $f24
    div.s   $f8, $f2, $f0
    swc1    $f10, 0xf4($s0)
    mul.s   $f10, $f14, $f14
    swc1    $f8, 0xf0($s0)
    add.s   $f8, $f4, $f6
    mul.s   $f4, $f2, $f18
    nop
    mul.s   $f6, $f24, $f20
    add.s   $f16, $f8, $f10
    mul.s   $f10, $f14, $f22
    add.s   $f8, $f4, $f6
    add.s   $f4, $f8, $f10
    neg.s   $f6, $f4
    div.s   $f16, $f6, $f16
    mul.s   $f8, $f2, $f16
    add.s   $f10, $f18, $f8
    mul.s   $f4, $f24, $f16
    swc1    $f10, 0x70($s0)
    mul.s   $f8, $f14, $f16
    lwc1    $f18, 0x70($s0)
    add.s   $f6, $f20, $f4
    mul.s   $f4, $f18, $f18
    add.s   $f10, $f22, $f8
    swc1    $f6, 0x74($s0)
    lwc1    $f20, 0x74($s0)
    swc1    $f10, 0x78($s0)
    mul.s   $f6, $f20, $f20
    lwc1    $f22, 0x78($s0)
    mul.s   $f10, $f22, $f22
    add.s   $f8, $f4, $f6
    jal     sqrtf
    add.s   $f12, $f8, $f10
    lwc1    $f4, 0x70($s0)
    lwc1    $f8, 0x74($s0)
    div.s   $f6, $f4, $f0
    lwc1    $f4, 0x78($s0)
    div.s   $f10, $f8, $f0
    swc1    $f6, 0x70($s0)
    lwc1    $f8, 0x4c($s0)
    div.s   $f6, $f4, $f0
    swc1    $f10, 0x74($s0)
    lwc1    $f10, 0x7c($s0)
    lwc1    $f4, 0x54($s0)
    sub.s   $f2, $f8, $f10
    mul.s   $f8, $f2, $f2
    swc1    $f6, 0x78($s0)
    lwc1    $f6, 0x84($s0)
    sub.s   $f14, $f4, $f6
    mul.s   $f10, $f14, $f14
    jal     sqrtf
    add.s   $f12, $f8, $f10
    lwc1    $f4, 0x50($s0)
    lwc1    $f6, 0x80($s0)
    swc1    $f0, 0x8c($s0)
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x90($s0)
    lw      $ra, 0x34($sp)
    lw      $s0, 0x30($sp)
    ldc1    $24, 0x28($29)
    ldc1    $22, 0x20($29)
    ldc1    $20, 0x18($29)
    jr      $ra
    addiu   $sp, $sp, 0x38

.globl Function_0x801e0f14
Function_0x801e0f14: # 0x801e0f14
    addiu   $sp, $sp, 0xffc0
    sw      $s0, 0x38($sp)
    or      $s0, $a1, $zero
    sw      $ra, 0x3c($sp)
    sw      $a0, 0x40($sp)
    lwc1    $f4, 0x9c($s0)
    lw      $t7, 0xe8($a1)
    lw      $a2, 0x88($s0)
    swc1    $f4, 0x10($sp)
    lwc1    $f6, 0xa0($s0)
    sll     $t8, $t7, 6
    addu    $a0, $a0, $t8
    swc1    $f6, 0x14($sp)
    lwc1    $f8, 0x94($s0)
    ori     $at, $zero, 0xe008
    lui     $a3, 0x3faa
    swc1    $f8, 0x18($sp)
    lwc1    $f10, 0x98($s0)
    ori     $a3, $a3, 0xaaab
    addu    $a0, $a0, $at
    addiu   $a1, $a1, 0xe4
    jal     Function_0x80048180
    swc1    $f10, 0x1c($sp)
    lwc1    $f16, 0x54($s0)
    lw      $t0, 0xe8($s0)
    lw      $a2, 0x4c($s0)
    lw      $a3, 0x50($s0)
    swc1    $f16, 0x10($sp)
    lwc1    $f18, 0x7c($s0)
    lw      $t9, 0x40($sp)
    sll     $t1, $t0, 6
    swc1    $f18, 0x14($sp)
    lwc1    $f4, 0x80($s0)
    ori     $at, $zero, 0xe088
    addu    $a0, $t9, $t1
    swc1    $f4, 0x18($sp)
    lwc1    $f6, 0x84($s0)
    addu    $a0, $a0, $at
    addiu   $a1, $s0, 0xa4
    swc1    $f6, 0x1c($sp)
    lwc1    $f8, 0x70($s0)
    swc1    $f8, 0x20($sp)
    lwc1    $f10, 0x74($s0)
    swc1    $f10, 0x24($sp)
    lwc1    $f16, 0x78($s0)
    jal     Function_0x80048468
    swc1    $f16, 0x28($sp)
    lw      $ra, 0x3c($sp)
    lw      $s0, 0x38($sp)
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop

.globl Function_0x801e0fe4
Function_0x801e0fe4: # 0x801e0fe4
    nop
    nop
    nop

.globl Function_0x801e0ff0
Function_0x801e0ff0: # 0x801e0ff0
    addiu   $sp, $sp, 0xfda8
    lui     $t6, 0x801d
    lw      $t6, -0x1c64($t6)
    sw      $ra, 0x54($sp)
    sw      $s5, 0x50($sp)
    sw      $s4, 0x4c($sp)
    sw      $s3, 0x48($sp)
    sw      $s2, 0x44($sp)
    sw      $s1, 0x40($sp)
    sw      $s0, 0x3c($sp)
    sdc1    $20, 0x30($29)
    beqz    $t6, branch_0x801e1040
    sw      $zero, 0x248($sp)
    lui     $t7, %hi(Unknown_0x800da8a4_mainState)
    lw      $t7, %lo(Unknown_0x800da8a4_mainState)($t7)
    addiu   $at, $zero, 0x64
    bne     $t7, $at, branch_0x801e1040
    nop
    jal     Function_0x801e1908
    nop
branch_0x801e1040:
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x5f88
    lw      $v0, 0x0($a2)
    sltiu   $at, $v0, 0xa
    beqz    $at, branch_0x801e1554
    sll     $t8, $v0, 2
    lui     $at, 0x8022
    addu    $at, $at, $t8
    lw      $t8, 0x6048($at)
    jr      $t8
    nop

.globl Function_0x801e106c
Function_0x801e106c: # 0x801e106c
    lui     $v1, 0x8022
    addiu   $v1, $v1, 0x5fa0
    lw      $v0, 0x0($v1)
    lui     $at, 0x8022
    lwc1    $f2, 0x6070($at)
    mtc1    $v0, $a0
    lui     $at, 0x41f0
    mtc1    $at, $t2
    cvt.s.w $f6, $f4
    lui     $at, 0x8022
    addiu   $t9, $v0, 0x1
    addiu   $t1, $zero, 0x1
    addiu   $t2, $zero, 0x1
    mul.s   $f8, $f6, $f2
    div.s   $f16, $f8, $f10
    swc1    $f16, 0x5f8c($at)
    slti    $at, $t9, 0x1f
    bnez    $at, branch_0x801e1554
    sw      $t9, 0x0($v1)
    sw      $zero, 0x0($v1)
    sw      $t1, 0x0($a2)
    lui     $at, 0x8022
    swc1    $f2, 0x5f8c($at)
    lui     $at, 0x8022
    b       branch_0x801e1554
    sw      $t2, 0x5fa8($at)

.globl Function_0x801e10d4
Function_0x801e10d4: # 0x801e10d4
    addiu   $t3, $zero, 0x1
    b       branch_0x801e1554
    sw      $t3, 0x248($sp)

.globl Function_0x801e10e0
Function_0x801e10e0: # 0x801e10e0
    addiu   $s0, $zero, 0x8
    addiu   $t4, $zero, 0x1
    bne     $s0, $v0, branch_0x801e10fc
    sw      $t4, 0x248($sp)
    lui     $at, 0x8022
    b       branch_0x801e113c
    lwc1    $f12, 0x6074($at)
branch_0x801e10fc:
    lui     $t5, 0x8022
    lh      $t5, 0x5f9c($t5)
    beqz    $t5, branch_0x801e1124
    nop
    jal     Function_0x801e2f00
    nop
    lui     $at, 0x8022
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x5f88
    swc1    $f0, 0x5f98($at)
branch_0x801e1124:
    lui     $at, 0x8022
    lwc1    $f18, 0x6078($at)
    lui     $at, 0x8022
    lwc1    $f4, 0x5f98($at)
    mul.s   $f12, $f18, $f4
    nop
branch_0x801e113c:
    lui     $at, 0x8022
    lwc1    $f6, 0x5f90($at)
    mtc1    $zero, $s4
    sub.s   $f8, $f6, $f12
    c.lt.s $f8, $f20
    swc1    $f8, 0x5f90($at)
    mov.s   $f0, $f8
    lui     $at, 0x8022
    bc1f    branch_0x801e1190
    nop
    lwc1    $f10, 0x5f94($at)
    lui     $at, 0x8022
    c.eq.s $f20, $f10
    nop
    bc1t    branch_0x801e1190
    nop
    lwc1    $f16, 0x607c($at)
    lui     $at, 0x8022
    add.s   $f18, $f8, $f16
    swc1    $f18, 0x5f90($at)
    lwc1    $f0, 0x5f90($at)
branch_0x801e1190:
    lui     $at, 0x8022
    lwc1    $f2, 0x5f94($at)
    lui     $at, 0x8022
    c.le.s $f0, $f2
    nop
    bc1f    branch_0x801e1554
    nop
    swc1    $f2, 0x5f90($at)
    lw      $t6, 0x0($a2)
    lui     $t7, 0x8023
    addiu   $t0, $zero, 0x1
    bne     $s0, $t6, branch_0x801e11e0
    nop
    lhu     $t7, -0x7954($t7)
    addiu   $t9, $zero, 0xa
    andi    $t8, $t7, 0x1
    beqz    $t8, branch_0x801e11e0
    nop
    b       branch_0x801e1554
    sw      $t9, 0x0($a2)
branch_0x801e11e0:
    b       branch_0x801e1554
    sw      $t0, 0x0($a2)

.globl Function_0x801e11e8
Function_0x801e11e8: # 0x801e11e8
    addiu   $s0, $zero, 0x9
    addiu   $t1, $zero, 0x1
    bne     $s0, $v0, branch_0x801e1204
    sw      $t1, 0x248($sp)
    lui     $at, 0x8022
    b       branch_0x801e1244
    lwc1    $f12, 0x6080($at)
branch_0x801e1204:
    lui     $t2, 0x8022
    lh      $t2, 0x5f9c($t2)
    beqz    $t2, branch_0x801e122c
    nop
    jal     Function_0x801e2f00
    nop
    lui     $at, 0x8022
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x5f88
    swc1    $f0, 0x5f98($at)
branch_0x801e122c:
    lui     $at, 0x8022
    lwc1    $f4, 0x6084($at)
    lui     $at, 0x8022
    lwc1    $f6, 0x5f98($at)
    mul.s   $f12, $f4, $f6
    nop
branch_0x801e1244:
    lui     $at, 0x8022
    lwc1    $f8, 0x5f90($at)
    add.s   $f0, $f8, $f12
    swc1    $f0, 0x5f90($at)
    lui     $at, 0x8022
    lwc1    $f2, 0x5f94($at)
    lui     $at, 0x8022
    c.le.s $f2, $f0
    nop
    bc1f    branch_0x801e12b4
    nop
    swc1    $f2, 0x5f90($at)
    lw      $t3, 0x0($a2)
    lui     $t4, 0x8023
    lui     $at, 0x8022
    bne     $s0, $t3, branch_0x801e12ac
    addiu   $t7, $zero, 0x1
    lhu     $t4, -0x7954($t4)
    addiu   $t6, $zero, 0xa
    andi    $t5, $t4, 0x2
    beqzl   $t5, branch_0x801e12b0
    sw      $t7, 0x0($a2)
    sw      $t6, 0x0($a2)
    lui     $at, 0x8022
    b       branch_0x801e12b4
    lwc1    $f0, 0x5f90($at)
branch_0x801e12ac:
    sw      $t7, 0x0($a2)
branch_0x801e12b0:
    lwc1    $f0, 0x5f90($at)
branch_0x801e12b4:
    lui     $at, 0x8022
    lwc1    $f16, 0x6088($at)
    lui     $at, 0x8022
    c.le.s $f16, $f0
    nop
    bc1f    branch_0x801e1554
    nop
    lwc1    $f18, 0x608c($at)
    lui     $at, 0x8022
    sub.s   $f4, $f0, $f18
    b       branch_0x801e1554
    swc1    $f4, 0x5f90($at)

.globl Function_0x801e12e4
Function_0x801e12e4: # 0x801e12e4
    lui     $v1, 0x8022
    addiu   $v1, $v1, 0x5fa0
    lw      $t9, 0x0($v1)
    lui     $at, 0x8022
    mtc1    $zero, $s2
    addiu   $v0, $t9, 0x1
    mtc1    $v0, $a2
    sw      $v0, 0x0($v1)
    ldc1    $10, 0x6090($1)
    cvt.s.w $f0, $f6
    lui     $at, 0x4030
    mtc1    $at, $s3
    addiu   $t8, $zero, 0x1
    slti    $at, $v0, 0x10
    sw      $t8, 0x248($sp)
    cvt.d.s $f8, $f0
    lui     $t1, 0x8022
    mul.d   $f16, $f8, $f10
    lui     $a1, 0x8023
    div.d   $f4, $f16, $f18
    cvt.s.d $f6, $f4
    bnez    $at, branch_0x801e1450
    swc1    $f6, 0x238($sp)
    lw      $t1, 0x5f84($t1)
    lui     $at, 0x8022
    lwc1    $f2, 0x6098($at)
    sll     $t2, $t1, 2
    addu    $a1, $a1, $t2
    lw      $a1, -0x7a58($a1)
    addiu   $at, $zero, 0x1e
    swc1    $f2, 0x23c($sp)
    bne     $a1, $at, branch_0x801e139c
    or      $a0, $a1, $zero
    lui     $t3, 0x801d
    lw      $t3, -0x1c98($t3)
    addiu   $at, $zero, 0x4
    addiu   $t4, $zero, 0x5
    bne     $t3, $at, branch_0x801e1388
    addiu   $t5, $zero, 0x7
    b       branch_0x801e1554
    sw      $t4, 0x0($a2)
branch_0x801e1388:
    sw      $t5, 0x0($a2)
    lui     $at, 0x8022
    sw      $zero, 0x5fa8($at)
    b       branch_0x801e1554
    sw      $zero, 0x0($v1)
branch_0x801e139c:
    addiu   $at, $zero, 0x1d
    bne     $a0, $at, branch_0x801e13dc
    lui     $v1, 0x8022
    lui     $v1, 0x8022
    addiu   $v1, $v1, 0x5fa4
    lw      $v0, 0x0($v1)
    addiu   $t6, $zero, 0x1
    sw      $t6, 0x0($a2)
    blez    $v0, branch_0x801e13d0
    lui     $at, 0x8023
    addiu   $t7, $v0, 0xffff
    sw      $t7, 0x0($v1)
    or      $v0, $t7, $zero
branch_0x801e13d0:
    addu    $at, $at, $v0
    b       branch_0x801e1554
    sb      $zero, -0x7958($at)
branch_0x801e13dc:
    sll     $t8, $a0, 2
    lui     $t9, 0x8022
    addu    $t9, $t9, $t8
    lw      $t9, 0x5e7c($t9)
    addiu   $v1, $v1, 0x5fa4
    lw      $v0, 0x0($v1)
    lb      $t0, 0x0($t9)
    lui     $at, 0x8023
    addu    $at, $at, $v0
    sb      $t0, -0x7958($at)
    addiu   $at, $zero, 0x3
    addiu   $t1, $v0, 0x1
    bne     $t1, $at, branch_0x801e1444
    sw      $t1, 0x0($v1)
    addiu   $t3, $zero, 0xa
    slti    $at, $a1, 0x10
    bnez    $at, branch_0x801e1434
    sw      $t3, 0x0($a2)
    addiu   $t4, $zero, 0x2
    lui     $at, 0x8023
    b       branch_0x801e1554
    sh      $t4, -0x7954($at)
branch_0x801e1434:
    addiu   $t5, $zero, 0x1
    lui     $at, 0x8023
    b       branch_0x801e1554
    sh      $t5, -0x7954($at)
branch_0x801e1444:
    addiu   $t6, $zero, 0x1
    b       branch_0x801e1554
    sw      $t6, 0x0($a2)
branch_0x801e1450:
    slti    $at, $v0, 0x8
    bnez    $at, branch_0x801e1490
    addiu   $t7, $v0, 0xfff8
    mtc1    $t7, $t0
    lui     $at, 0x43c8
    mtc1    $at, $s0
    cvt.s.w $f10, $f8
    lui     $at, 0x4100
    mtc1    $at, $a0
    lui     $at, 0x43af
    mtc1    $at, $t0
    mul.s   $f18, $f10, $f16
    div.s   $f6, $f18, $f4
    add.s   $f10, $f6, $f8
    b       branch_0x801e1554
    swc1    $f10, 0x23c($sp)
branch_0x801e1490:
    lui     $at, 0x8022
    lwc1    $f2, 0x609c($at)
    lui     $at, 0x43c8
    mtc1    $at, $s0
    lui     $at, 0x4100
    mtc1    $at, $a0
    mul.s   $f18, $f0, $f16
    div.s   $f6, $f18, $f4
    sub.s   $f8, $f2, $f6
    b       branch_0x801e1554
    swc1    $f8, 0x23c($sp)

.globl Function_0x801e14bc
Function_0x801e14bc: # 0x801e14bc
    lui     $v1, 0x8022
    addiu   $v1, $v1, 0x5fa0
    lw      $t8, 0x0($v1)
    addiu   $t1, $zero, 0x7
    addiu   $t9, $t8, 0x1
    slti    $at, $t9, 0xb
    bnez    $at, branch_0x801e1554
    sw      $t9, 0x0($v1)
    sw      $t1, 0x0($a2)
    lui     $at, 0x8022
    sw      $zero, 0x5fa8($at)
    b       branch_0x801e1554
    sw      $zero, 0x0($v1)

.globl Function_0x801e14f0
Function_0x801e14f0: # 0x801e14f0
    lui     $v1, 0x8022
    addiu   $v1, $v1, 0x5fa0
    lw      $v0, 0x0($v1)
    addiu   $t2, $zero, 0x1e
    lui     $at, 0x8022
    subu    $t3, $t2, $v0
    mtc1    $t3, $t2
    lwc1    $f2, 0x60a0($at)
    lui     $at, 0x41f0
    cvt.s.w $f16, $f10
    mtc1    $at, $a0
    lui     $at, 0x8022
    addiu   $t4, $v0, 0x1
    addiu   $t6, $zero, 0x5
    mul.s   $f18, $f16, $f2
    div.s   $f6, $f18, $f4
    swc1    $f6, 0x5f8c($at)
    slti    $at, $t4, 0x1f
    bnez    $at, branch_0x801e1554
    sw      $t4, 0x0($v1)
    mtc1    $zero, $t0
    sw      $zero, 0x0($v1)
    sw      $t6, 0x0($a2)
    lui     $at, 0x8022
    swc1    $f8, 0x5f8c($at)
branch_0x801e1554:
    lui     $v0, 0x8022
    lw      $v0, 0x5f84($v0)
    lui     $a0, 0x8023
    addiu   $a0, $a0, 0x85a0
    mtc1    $zero, $s4
    addiu   $t7, $v0, 0xfffd
    bgez    $t7, branch_0x801e157c
    sw      $t7, 0x0($a0)
    addiu   $t8, $t7, 0x10
    sw      $t8, 0x0($a0)
branch_0x801e157c:
    lui     $a0, 0x8023
    addiu   $t9, $v0, 0x3
    addiu   $a0, $a0, 0x85a4
    slti    $at, $t9, 0x10
    bnez    $at, branch_0x801e159c
    sw      $t9, 0x0($a0)
    addiu   $t0, $t9, 0xfff0
    sw      $t0, 0x0($a0)
branch_0x801e159c:
    lui     $s4, 0x8023
    lui     $s2, 0x8023
    lui     $s3, 0x8023
    addiu   $s3, $s3, 0x8668
    addiu   $s2, $s2, 0x85e8
    addiu   $s4, $s4, 0x8628
    or      $s1, $zero, $zero
    or      $s5, $zero, $zero
branch_0x801e15bc:
    mtc1    $s1, $t2
    lui     $at, 0x8022
    lwc1    $f18, 0x60a4($at)
    cvt.s.w $f16, $f10
    lui     $at, 0x4180
    mtc1    $at, $a2
    lui     $at, 0x8022
    lwc1    $f10, 0x5f90($at)
    lui     $at, 0xc407
    mul.s   $f4, $f16, $f18
    mtc1    $at, $s2
    mfc1    $a2, $s4
    lui     $a3, 0xbe4c
    ori     $a3, $a3, 0xcccd
    addiu   $a0, $sp, 0x1f0
    addiu   $a1, $sp, 0x170
    div.s   $f8, $f4, $f6
    swc1    $f20, 0x14($sp)
    swc1    $f20, 0x1c($sp)
    or      $s0, $zero, $zero
    swc1    $f18, 0x18($sp)
    sub.s   $f16, $f10, $f8
    jal     Function_0x80049a34
    swc1    $f16, 0x10($sp)
    lui     $t1, 0x8022
    lw      $t1, 0x5f88($t1)
    addiu   $at, $zero, 0x4
    lui     $t2, 0x8022
    bne     $t1, $at, branch_0x801e1678
    addiu   $a0, $sp, 0x1f0
    lw      $t2, 0x5f84($t2)
    addiu   $a1, $sp, 0x130
    lw      $a2, 0x238($sp)
    bne     $s1, $t2, branch_0x801e1678
    lui     $a3, 0x3fe2
    lui     $at, 0x8022
    lwc1    $f4, 0x60a8($at)
    lwc1    $f6, 0x23c($sp)
    addiu   $a0, $sp, 0x1f0
    ori     $a3, $a3, 0xa975
    swc1    $f20, 0x14($sp)
    swc1    $f20, 0x1c($sp)
    swc1    $f4, 0x10($sp)
    jal     Function_0x80049a34
    swc1    $f6, 0x18($sp)
    b       branch_0x801e16b0
    addiu   $a0, $sp, 0x170
branch_0x801e1678:
    lui     $at, 0x8022
    lwc1    $f10, 0x60ac($at)
    lui     $at, 0x8022
    lwc1    $f8, 0x5f8c($at)
    mfc1    $a2, $s4
    lui     $a3, 0x3fe2
    ori     $a3, $a3, 0xa975
    addiu   $a1, $sp, 0x130
    swc1    $f20, 0x14($sp)
    swc1    $f20, 0x1c($sp)
    swc1    $f10, 0x10($sp)
    jal     Function_0x80049a34
    swc1    $f8, 0x18($sp)
    addiu   $a0, $sp, 0x170
branch_0x801e16b0:
    addiu   $a1, $sp, 0x130
    jal     Function_0x80049e58
    addiu   $a2, $sp, 0xf0
    lui     $at, 0x3f80
    mtc1    $at, $zero
    lui     $at, 0x8022
    lwc1    $f16, 0x60b0($at)
    mfc1    $a1, $s4
    mfc1    $a2, $s4
    mfc1    $a3, $zero
    addiu   $a0, $sp, 0x1b0
    swc1    $f20, 0x10($sp)
    swc1    $f20, 0x18($sp)
    swc1    $f20, 0x1c($sp)
    swc1    $f20, 0x20($sp)
    swc1    $f20, 0x24($sp)
    swc1    $f0, 0x14($sp)
    jal     Function_0x80048a28
    swc1    $f16, 0x28($sp)
    addiu   $a0, $sp, 0x1b0
    jal     Function_0x80047e18
    addiu   $a1, $sp, 0xb0
    addiu   $a0, $sp, 0xf0
    addiu   $a1, $sp, 0xb0
    jal     Function_0x80049e58
    addiu   $a2, $sp, 0x70
    lui     $t3, 0x801d
    lw      $t3, -0x1ca8($t3)
    addiu   $a0, $sp, 0x70
    addu    $a1, $t3, $s5
    jal     Function_0x80047e80
    addiu   $a1, $a1, 0x1380
    lui     $t4, 0x801d
    lw      $t4, -0x1c64($t4)
    lw      $t5, 0x248($sp)
    bnezl   $t4, branch_0x801e18b0
    lwc1    $f6, 0x120($sp)
    lwc1    $f0, 0x0($s4)
    lwc1    $f18, 0x124($sp)
    addiu   $at, $zero, 0x1
    c.lt.s $f0, $f20
    lui     $t8, 0x8022
    bc1fl   branch_0x801e177c
    c.le.s $f20, $f0
    c.le.s $f20, $f18
    nop
    bc1fl   branch_0x801e177c
    c.le.s $f20, $f0
    b       branch_0x801e179c
    addiu   $s0, $zero, 0x1

.globl Function_0x801e1778
Function_0x801e1778: # 0x801e1778
    c.le.s $f20, $f0
branch_0x801e177c:
    lwc1    $f4, 0x124($sp)
    bc1f    branch_0x801e179c
    nop
    c.lt.s $f4, $f20
    nop
    bc1f    branch_0x801e179c
    nop
    addiu   $s0, $zero, 0x2
branch_0x801e179c:
    bnez    $t5, branch_0x801e1804
    nop
    bne     $s0, $at, branch_0x801e17d0
    lui     $at, 0x8022
    lwc1    $f6, 0x5fbc($at)
    lwc1    $f12, 0x120($sp)
    lwc1    $f14, 0x128($sp)
    trunc.w.s   $f10, $f6
    mfc1    $a2, $t2
    jal     Function_0x8004ef54
    nop
    b       branch_0x801e18b0
    lwc1    $f6, 0x120($sp)
branch_0x801e17d0:
    addiu   $at, $zero, 0x2
    bne     $s0, $at, branch_0x801e18ac
    lui     $at, 0x8022
    lwc1    $f8, 0x5fbc($at)
    lwc1    $f12, 0x120($sp)
    lwc1    $f14, 0x128($sp)
    sub.s   $f16, $f20, $f8
    trunc.w.s   $f18, $f16
    mfc1    $a2, $s2
    jal     Function_0x8004ef54
    nop
    b       branch_0x801e18b0
    lwc1    $f6, 0x120($sp)
branch_0x801e1804:
    lw      $t8, 0x5f84($t8)
    lwc1    $f4, 0x124($sp)
    lwc1    $f6, 0x120($sp)
    bne     $s1, $t8, branch_0x801e183c
    addiu   $at, $zero, 0x1
    c.lt.s $f4, $f20
    lwc1    $f12, 0x120($sp)
    lwc1    $f14, 0x128($sp)
    bc1fl   branch_0x801e18b0
    lwc1    $f6, 0x120($sp)
    jal     Function_0x8004ef54
    addiu   $a2, $zero, 0xffce
    b       branch_0x801e18b0
    lwc1    $f6, 0x120($sp)
branch_0x801e183c:
    c.le.s $f20, $f6
    or      $a3, $zero, $zero
    bc1f    branch_0x801e1854
    nop
    b       branch_0x801e1854
    addiu   $a3, $zero, 0x1
branch_0x801e1854:
    bne     $s0, $at, branch_0x801e1880
    lui     $at, 0x8022
    lwc1    $f10, 0x5fbc($at)
    lwc1    $f12, 0x0($s2)
    lwc1    $f14, 0x0($s3)
    trunc.w.s   $f8, $f10
    mfc1    $a2, $t0
    jal     Function_0x8004f18c
    nop
    b       branch_0x801e18b0
    lwc1    $f6, 0x120($sp)
branch_0x801e1880:
    addiu   $at, $zero, 0x2
    bne     $s0, $at, branch_0x801e18ac
    lui     $at, 0x8022
    lwc1    $f16, 0x5fbc($at)
    lwc1    $f12, 0x0($s2)
    lwc1    $f14, 0x0($s3)
    sub.s   $f18, $f20, $f16
    trunc.w.s   $f4, $f18
    mfc1    $a2, $a0
    jal     Function_0x8004f18c
    nop
branch_0x801e18ac:
    lwc1    $f6, 0x120($sp)
branch_0x801e18b0:
    lwc1    $f10, 0x124($sp)
    lwc1    $f8, 0x128($sp)
    addiu   $s1, $s1, 0x1
    addiu   $at, $zero, 0x10
    addiu   $s5, $s5, 0x40
    addiu   $s4, $s4, 0x4
    addiu   $s2, $s2, 0x4
    addiu   $s3, $s3, 0x4
    swc1    $f6, -0x4($s2)
    swc1    $f10, -0x4($s4)
    bne     $s1, $at, branch_0x801e15bc
    swc1    $f8, -0x4($s3)
    lw      $ra, 0x54($sp)
    ldc1    $20, 0x30($29)
    lw      $s0, 0x3c($sp)
    lw      $s1, 0x40($sp)
    lw      $s2, 0x44($sp)
    lw      $s3, 0x48($sp)
    lw      $s4, 0x4c($sp)
    lw      $s5, 0x50($sp)
    jr      $ra
    addiu   $sp, $sp, 0x258

.globl Function_0x801e1908
Function_0x801e1908: # 0x801e1908
    lui     $a3, 0x8022
    addiu   $a3, $a3, 0x5f84
    mtc1    $zero, $zero
    sw      $zero, 0x0($a3)
    lui     $at, 0x8022
    sw      $zero, 0x5f88($at)
    lui     $at, 0x8022
    swc1    $f0, 0x5f8c($at)
    lui     $t0, 0x8022
    lui     $t1, 0x8022
    addiu   $t1, $t1, 0x5f94
    addiu   $t0, $t0, 0x5f90
    lui     $at, 0x8022
    swc1    $f0, 0x0($t0)
    swc1    $f0, 0x0($t1)
    lui     $t2, 0x8022
    sw      $zero, 0x5fa0($at)
    addiu   $t2, $t2, 0x5fa4
    sw      $zero, 0x0($t2)
    lui     $at, 0x8022
    sw      $zero, 0x5fa8($at)
    lui     $at, 0x8023
    lui     $v1, 0x8023
    sh      $zero, -0x7954($at)
    addiu   $v1, $v1, 0x85a8
    or      $v0, $zero, $zero
branch_0x801e1970:
    slti    $at, $v0, 0x8
    beqz    $at, branch_0x801e1984
    addiu   $t6, $v0, 0xf
    b       branch_0x801e1988
    sw      $v0, 0x0($v1)
branch_0x801e1984:
    sw      $t6, 0x0($v1)
branch_0x801e1988:
    addiu   $v0, $v0, 0x1
    slti    $at, $v0, 0x10
    bnez    $at, branch_0x801e1970
    addiu   $v1, $v1, 0x4
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa8ec
    lh      $t7, 0x0($v0)
    lui     $v1, 0x8023
    addiu   $v1, $v1, 0x86a8
    beqz    $t7, branch_0x801e19d0
    lui     $a0, 0x801d
    sh      $zero, 0x0($v0)
    lui     $at, 0x8023
    sb      $zero, -0x7958($at)
    sb      $zero, -0x7957($at)
    sb      $zero, -0x7956($at)
    b       branch_0x801e1acc
    sb      $zero, -0x7955($at)
branch_0x801e19d0:
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe464
    addiu   $a0, $a0, 0xe460
branch_0x801e19dc:
    lb      $t8, 0x0($a0)
    addiu   $a0, $a0, 0x1
    sltu    $at, $a0, $v0
    addiu   $v1, $v1, 0x1
    bnez    $at, branch_0x801e19dc
    sb      $t8, -0x1($v1)
    lui     $v1, 0x8023
    addiu   $v1, $v1, 0x86a8
    or      $v0, $zero, $zero
    addiu   $a0, $zero, 0x3
branch_0x801e1a04:
    lb      $t9, 0x0($v1)
    beqzl   $t9, branch_0x801e1a20
    lw      $a0, 0x0($a3)
    addiu   $v0, $v0, 0x1
    bne     $v0, $a0, branch_0x801e1a04
    addiu   $v1, $v1, 0x1
    lw      $a0, 0x0($a3)
branch_0x801e1a20:
    lui     $t3, 0x8023
    addiu   $t3, $t3, 0x85a8
    addiu   $v1, $a0, 0x8
    sw      $v0, 0x0($t2)
    bgez    $v1, branch_0x801e1a44
    andi    $t4, $v1, 0xf
    beqz    $t4, branch_0x801e1a44
    nop
    addiu   $t4, $t4, 0xfff0
branch_0x801e1a44:
    addiu   $t6, $t4, 0x1
    or      $v1, $t4, $zero
    sll     $t5, $t4, 2
    addu    $a1, $t3, $t5
    bgez    $t6, branch_0x801e1a68
    andi    $t7, $t6, 0xf
    beqz    $t7, branch_0x801e1a68
    nop
    addiu   $t7, $t7, 0xfff0
branch_0x801e1a68:
    sll     $t8, $t7, 2
    addu    $t9, $t3, $t8
    lw      $t4, 0x0($t9)
    addiu   $t7, $a0, 0xffff
    or      $a0, $t7, $zero
    addiu   $t5, $t4, 0xffff
    bgez    $t5, branch_0x801e1a90
    sw      $t5, 0x0($a1)
    addiu   $t6, $t5, 0x1f
    sw      $t6, 0x0($a1)
branch_0x801e1a90:
    bgez    $t7, branch_0x801e1aa0
    sw      $t7, 0x0($a3)
    addiu   $a0, $zero, 0xf
    sw      $a0, 0x0($a3)
branch_0x801e1aa0:
    mtc1    $a0, $a0
    lui     $at, 0x8022
    lwc1    $f8, 0x60b4($at)
    cvt.s.w $f6, $f4
    lui     $at, 0x4180
    mtc1    $at, $s0
    mul.s   $f10, $f6, $f8
    div.s   $f18, $f10, $f16
    swc1    $f18, 0x0($t1)
    lwc1    $f4, 0x0($t1)
    swc1    $f4, 0x0($t0)
branch_0x801e1acc:
    lui     $t0, 0x8022
    addiu   $t0, $t0, 0x5fb8
    sw      $zero, 0x0($t0)
    lui     $v0, 0x801d
    lw      $v0, -0x1c98($v0)
    addiu   $at, $zero, 0x4
    lui     $t4, 0x801c
    beqz    $v0, branch_0x801e1ba8
    nop
    beq     $v0, $at, branch_0x801e1b0c
    lui     $v1, 0x801d
    addiu   $at, $zero, 0xb
    beq     $v0, $at, branch_0x801e1bd0
    lui     $t6, 0x801c
    jr      $ra
    nop
branch_0x801e1b0c:
    lw      $v1, -0x4f68($v1)
    or      $a0, $zero, $zero
    lui     $a1, 0x801d
    bnez    $v1, branch_0x801e1b28
    sll     $t9, $v1, 4
    b       branch_0x801e1b28
    addiu   $a0, $zero, 0x1
branch_0x801e1b28:
    lw      $a1, -0x4f6c($a1)
    lui     $t5, 0x800f
    addiu   $t5, $t5, 0xa974
    addiu   $a1, $a1, 0x1
    slt     $at, $a0, $a1
    beqz    $at, branch_0x801e1be4
    sll     $a0, $a0, 1
    addu    $t4, $t9, $a0
    sll     $a3, $a1, 1
    lui     $t2, 0x801c
    lui     $t1, 0x801c
    addiu   $t1, $t1, 0x23c0
    addiu   $t2, $t2, 0x23f0
    addiu   $a1, $zero, 0x1
    addu    $a2, $t4, $t5
branch_0x801e1b64:
    lh      $v0, 0x0($a2)
    addiu   $a0, $a0, 0x2
    slt     $at, $a0, $a3
    sll     $v1, $v0, 2
    addu    $t6, $t1, $v1
    lw      $t7, 0x0($t6)
    addu    $t8, $t2, $v1
    beql    $a1, $t7, branch_0x801e1b98
    sw      $a1, 0x0($t0)
    lw      $t9, 0x0($t8)
    beqz    $t9, branch_0x801e1b98
    nop
    sw      $a1, 0x0($t0)
branch_0x801e1b98:
    bnez    $at, branch_0x801e1b64
    addiu   $a2, $a2, 0x2
    jr      $ra
    nop
branch_0x801e1ba8:
    lw      $t4, 0x23b0($t4)
    addiu   $a1, $zero, 0x1
    lui     $t5, 0x801c
    beq     $a1, $t4, branch_0x801e1bc8
    nop
    lw      $t5, 0x23b4($t5)
    beqz    $t5, branch_0x801e1be4
    nop
branch_0x801e1bc8:
    jr      $ra
    sw      $a1, 0x0($t0)
branch_0x801e1bd0:
    lw      $t6, 0x2688($t6)
    addiu   $a1, $zero, 0x1
    bne     $a1, $t6, branch_0x801e1be4
    nop
    sw      $a1, 0x0($t0)
branch_0x801e1be4:
    jr      $ra
    nop

.globl Function_0x801e1bec
Function_0x801e1bec: # 0x801e1bec
    addiu   $sp, $sp, 0xffc8
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    sw      $ra, 0x34($sp)
    sw      $s6, 0x30($sp)
    sw      $s5, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    beqz    $t6, branch_0x801e1c24
    sw      $s0, 0x18($sp)
    sw      $zero, 0x0($v0)
branch_0x801e1c24:
    lui     $at, 0x800e
    jal     Function_0x80093d18
    sw      $zero, -0x5754($at)
    jal     Function_0x8008f914
    or      $a0, $v0, $zero
    jal     Function_0x801e1db8
    or      $a0, $v0, $zero
    lui     $t7, 0x102
    lui     $t8, 0x8012
    addiu   $t8, $t8, 0xf580
    ori     $t7, $t7, 0x40
    sw      $t7, 0x0($v0)
    sw      $t8, 0x4($v0)
    lui     $a1, 0x800d
    lw      $a1, 0x7ef0($a1)
    jal     Function_0x800947e4
    addiu   $a0, $v0, 0x8
    jal     Function_0x80090cf8
    or      $a0, $v0, $zero
    jal     Function_0x801e1ffc
    or      $a0, $v0, $zero
    lui     $t9, %hi(Unknown_0x800da8a4_mainState)
    lw      $t9, %lo(Unknown_0x800da8a4_mainState)($t9)
    addiu   $at, $zero, 0x64
    sw      $v0, 0x38($sp)
    bne     $t9, $at, branch_0x801e1ca0
    lui     $t0, 0x8023
    jal     Function_0x801e2290
    nop
    b       branch_0x801e1d90
    lw      $ra, 0x34($sp)
branch_0x801e1ca0:
    lh      $t0, -0x782a($t0)
    addiu   $at, $zero, 0x1
    lui     $t1, 0x801d
    bnel    $t0, $at, branch_0x801e1d90
    lw      $ra, 0x34($sp)
    lw      $t1, -0x1c98($t1)
    addiu   $at, $zero, 0x4
    lui     $v1, 0x801d
    bne     $t1, $at, branch_0x801e1d84
    nop
    lw      $v1, -0x4f6c($v1)
    or      $s0, $zero, $zero
    or      $s1, $zero, $zero
    addiu   $v1, $v1, 0x1
    blez    $v1, branch_0x801e1d84
    lui     $s6, 0x800e
    lui     $s5, 0x801c
    lui     $s4, 0x801c
    lui     $s3, 0x801d
    lui     $s2, 0x800f
    addiu   $s2, $s2, 0xa974
    addiu   $s3, $s3, 0xb098
    addiu   $s4, $s4, 0x23c0
    addiu   $s5, $s5, 0x23f0
    addiu   $s6, $s6, 0xa8e8
branch_0x801e1d04:
    lw      $t2, 0x0($s3)
    sll     $t3, $t2, 4
    addu    $t4, $s2, $t3
    addu    $t5, $t4, $s1
    lh      $a0, 0x0($t5)
    sll     $v0, $a0, 2
    addu    $t6, $s4, $v0
    lw      $t7, 0x0($t6)
    addu    $t8, $s5, $v0
    bnezl   $t7, branch_0x801e1d40
    lh      $t0, 0x0($s6)
    lw      $t9, 0x0($t8)
    beqzl   $t9, branch_0x801e1d78
    addiu   $s0, $s0, 0x1
    lh      $t0, 0x0($s6)
branch_0x801e1d40:
    beqz    $t0, branch_0x801e1d60
    nop
    jal     Function_0x8007c1a4
    nop
    lui     $v1, 0x801d
    lw      $v1, -0x4f6c($v1)
    b       branch_0x801e1d74
    addiu   $v1, $v1, 0x1
branch_0x801e1d60:
    jal     Function_0x8007be44
    nop
    lui     $v1, 0x801d
    lw      $v1, -0x4f6c($v1)
    addiu   $v1, $v1, 0x1
branch_0x801e1d74:
    addiu   $s0, $s0, 0x1
branch_0x801e1d78:
    slt     $at, $s0, $v1
    bnez    $at, branch_0x801e1d04
    addiu   $s1, $s1, 0x2
branch_0x801e1d84:
    jal     Function_0x801ec290_ChangeStateTo42
    nop
    lw      $ra, 0x34($sp)
branch_0x801e1d90:
    lw      $v0, 0x38($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    lw      $s5, 0x2c($sp)
    lw      $s6, 0x30($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38

.globl Function_0x801e1db8
Function_0x801e1db8: # 0x801e1db8
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x1c($sp)
    lui     $a1, 0x800d
    sw      $s0, 0x18($sp)
    sw      $a0, 0x20($sp)
    jal     Function_0x80094758
    lw      $a1, 0x7ef0($a1)
    addiu   $t6, $v0, 0x8
    sw      $t6, 0x20($sp)
    lui     $t7, 0x107
    lui     $s0, 0x600
    addiu   $t7, $t7, 0xf6c0
    sw      $t7, 0x4($v0)
    sw      $s0, 0x0($v0)
    lui     $t8, 0x8022
    lw      $t8, 0x5fb8($t8)
    beqz    $t8, branch_0x801e1e08
    nop
    jal     Function_0x8006ddc4
    addiu   $a0, $sp, 0x20
branch_0x801e1e08:
    lui     $t0, 0x8023
    addiu   $t0, $t0, 0x85a4
    lui     $t9, 0x8023
    lw      $t9, -0x7a60($t9)
    lw      $t6, 0x0($t0)
    or      $a1, $zero, $zero
    lui     $ra, 0xbd00
    slt     $at, $t9, $t6
    beqz    $at, branch_0x801e1e38
    lui     $t5, 0x8023
    b       branch_0x801e1e3c
    or      $t1, $zero, $zero
branch_0x801e1e38:
    addiu   $t1, $zero, 0x1
branch_0x801e1e3c:
    lui     $t4, 0x8022
    lui     $t3, 0x801d
    lui     $t2, 0x106
    ori     $t2, $t2, 0x40
    addiu   $t3, $t3, 0xe358
    addiu   $t4, $t4, 0x5e00
    addiu   $t5, $t5, 0x85a8
branch_0x801e1e58:
    lui     $a3, 0x8023
    or      $a2, $zero, $zero
    bnez    $t1, branch_0x801e1e8c
    lw      $a3, -0x7a60($a3)
    slt     $at, $a1, $a3
    bnezl   $at, branch_0x801e1eb0
    sltu    $v0, $zero, $a2
    lw      $t7, 0x0($t0)
    slt     $at, $t7, $a1
    bnezl   $at, branch_0x801e1eb0
    sltu    $v0, $zero, $a2
    b       branch_0x801e1eac
    addiu   $a2, $zero, 0x1
branch_0x801e1e8c:
    slt     $at, $a1, $a3
    beqzl   $at, branch_0x801e1eac
    addiu   $a2, $zero, 0x1
    lw      $t8, 0x0($t0)
    slt     $at, $t8, $a1
    bnezl   $at, branch_0x801e1eb0
    sltu    $v0, $zero, $a2
    addiu   $a2, $zero, 0x1
branch_0x801e1eac:
    sltu    $v0, $zero, $a2
branch_0x801e1eb0:
    beqz    $v0, branch_0x801e1f24
    or      $a2, $zero, $zero
    lw      $v0, 0x20($sp)
    sll     $t8, $a1, 6
    lui     $a3, 0x8023
    addiu   $t6, $v0, 0x8
    sw      $t6, 0x20($sp)
    sw      $t2, 0x0($v0)
    lw      $t7, 0x0($t3)
    addu    $t9, $t7, $t8
    addiu   $t6, $t9, 0x1380
    sw      $t6, 0x4($v0)
    lw      $v1, 0x20($sp)
    sll     $t9, $a1, 2
    addu    $t6, $t5, $t9
    addiu   $t8, $v1, 0x8
    sw      $t8, 0x20($sp)
    sw      $s0, 0x0($v1)
    lw      $t7, 0x0($t6)
    sll     $t8, $t7, 2
    addu    $t9, $t4, $t8
    lw      $t6, 0x0($t9)
    sw      $t6, 0x4($v1)
    lw      $t7, 0x20($sp)
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x20($sp)
    sw      $zero, 0x4($t7)
    sw      $ra, 0x0($t7)
    lw      $a3, -0x7a60($a3)
branch_0x801e1f24:
    bnez    $t1, branch_0x801e1f50
    addiu   $v0, $a3, 0xffff
    slt     $at, $a1, $v0
    bnez    $at, branch_0x801e1f70
    nop
    lw      $t9, 0x0($t0)
    slt     $at, $a1, $t9
    beqz    $at, branch_0x801e1f70
    nop
    b       branch_0x801e1f70
    addiu   $a2, $zero, 0x1
branch_0x801e1f50:
    slt     $at, $a1, $v0
    beqzl   $at, branch_0x801e1f70
    addiu   $a2, $zero, 0x1
    lw      $t6, 0x0($t0)
    slt     $at, $a1, $t6
    beqz    $at, branch_0x801e1f70
    nop
    addiu   $a2, $zero, 0x1
branch_0x801e1f70:
    beqz    $a2, branch_0x801e1fdc
    addiu   $at, $zero, 0x10
    lw      $v0, 0x20($sp)
    sll     $t6, $a1, 6
    addiu   $t8, $v0, 0x8
    sw      $t8, 0x20($sp)
    sw      $t2, 0x0($v0)
    lw      $t9, 0x0($t3)
    addu    $t7, $t9, $t6
    addiu   $t8, $t7, 0x13c0
    sw      $t8, 0x4($v0)
    lw      $v1, 0x20($sp)
    sll     $t7, $a1, 2
    addu    $t8, $t5, $t7
    addiu   $t6, $v1, 0x8
    sw      $t6, 0x20($sp)
    sw      $s0, 0x0($v1)
    lw      $t9, 0x4($t8)
    sll     $t6, $t9, 2
    addu    $t7, $t4, $t6
    lw      $t8, 0x0($t7)
    sw      $t8, 0x4($v1)
    lw      $t9, 0x20($sp)
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x20($sp)
    sw      $zero, 0x4($t9)
    sw      $ra, 0x0($t9)
branch_0x801e1fdc:
    addiu   $a1, $a1, 0x2
    bne     $a1, $at, branch_0x801e1e58
    nop
    lw      $ra, 0x1c($sp)
    lw      $v0, 0x20($sp)
    lw      $s0, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x20

.globl Function_0x801e1ffc
Function_0x801e1ffc: # 0x801e1ffc
    addiu   $sp, $sp, 0xff78
    lui     $t6, 0x8022
    lw      $t6, 0x5fa8($t6)
    sw      $s3, 0x4c($sp)
    or      $s3, $a0, $zero
    sw      $ra, 0x5c($sp)
    sw      $s6, 0x58($sp)
    sw      $s5, 0x54($sp)
    sw      $s4, 0x50($sp)
    sw      $s2, 0x48($sp)
    sw      $s1, 0x44($sp)
    bnez    $t6, branch_0x801e2038
    sw      $s0, 0x40($sp)
    b       branch_0x801e2268
    or      $v0, $a0, $zero
branch_0x801e2038:
    or      $v0, $s3, $zero
    lui     $t7, 0x107
    lui     $s4, 0x600
    addiu   $t7, $t7, 0xf628
    sw      $t7, 0x4($v0)
    sw      $s4, 0x0($v0)
    addiu   $t8, $zero, 0xd3
    addiu   $t9, $zero, 0x18
    addiu   $a0, $s3, 0x8
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x36
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x20
    addiu   $t0, $zero, 0x75
    addiu   $t1, $zero, 0x1c
    sw      $t1, 0x14($sp)
    sw      $t0, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x65
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xb1
    lui     $s1, 0x8022
    lui     $s2, 0x8022
    or      $s3, $v0, $zero
    addiu   $s2, $s2, 0x5fa4
    addiu   $s1, $s1, 0x5fac
    or      $s0, $zero, $zero
branch_0x801e20b0:
    lw      $t2, 0x0($s2)
    or      $a0, $s3, $zero
    addiu   $a2, $zero, 0xff
    bne     $s0, $t2, branch_0x801e20cc
    addiu   $a3, $zero, 0xff
    b       branch_0x801e20d0
    addiu   $a1, $zero, 0x6
branch_0x801e20cc:
    or      $a1, $zero, $zero
branch_0x801e20d0:
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
    sw      $t2, 0x34($sp)
    sw      $t1, 0x30($sp)
    sw      $t0, 0x2c($sp)
    sw      $t9, 0x28($sp)
    sw      $t8, 0x24($sp)
    sw      $t7, 0x20($sp)
    sw      $t6, 0x1c($sp)
    sw      $t5, 0x18($sp)
    sw      $t4, 0x14($sp)
    jal     Function_0x801e91f4
    sw      $t3, 0x10($sp)
    sw      $s4, 0x0($v0)
    lw      $t3, 0x0($s1)
    addiu   $s0, $s0, 0x1
    slti    $at, $s0, 0x3
    addiu   $s1, $s1, 0x4
    addiu   $s3, $v0, 0x8
    bnez    $at, branch_0x801e20b0
    sw      $t3, 0x4($v0)
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
    or      $a0, $s3, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff
    addiu   $t4, $zero, 0x23
    sw      $t4, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x1d
    addiu   $a3, $zero, 0x48
    jal     Function_0x801e3c40
    sw      $zero, 0x14($sp)
    lui     $s2, 0x8023
    lui     $s6, 0x8022
    or      $s3, $v0, $zero
    addiu   $s6, $s6, 0x5f10
    addiu   $s2, $s2, 0x86a8
    or      $s1, $zero, $zero
    addiu   $s5, $zero, 0x4e
    addiu   $s4, $sp, 0x74
    addiu   $s0, $zero, 0x1d
branch_0x801e21ec:
    lb      $t5, 0x0($s2)
    lui     $v0, 0x8022
    sb      $zero, 0x75($sp)
    addiu   $v0, $v0, 0x5ef0
    or      $v1, $zero, $zero
    sb      $t5, 0x74($sp)
branch_0x801e2204:
    lb      $t6, 0x74($sp)
    lb      $t7, 0x0($v0)
    beq     $t6, $t7, branch_0x801e2220
    nop
    addiu   $v1, $v1, 0x1
    bne     $v1, $s0, branch_0x801e2204
    addiu   $v0, $v0, 0x1
branch_0x801e2220:
    bne     $v1, $s0, branch_0x801e2230
    or      $a0, $s3, $zero
    b       branch_0x801e223c
    or      $v0, $zero, $zero
branch_0x801e2230:
    sll     $t8, $v1, 2
    addu    $t9, $s6, $t8
    lw      $v0, 0x0($t9)
branch_0x801e223c:
    addu    $a3, $s1, $v0
    addiu   $t0, $zero, 0xb4
    sw      $t0, 0x10($sp)
    addiu   $a3, $a3, 0x7a
    or      $a1, $zero, $zero
    jal     Function_0x801e95e0
    or      $a2, $s4, $zero
    addiu   $s1, $s1, 0x1a
    addiu   $s2, $s2, 0x1
    bne     $s1, $s5, branch_0x801e21ec
    or      $s3, $v0, $zero
branch_0x801e2268:
    lw      $ra, 0x5c($sp)
    lw      $s0, 0x40($sp)
    lw      $s1, 0x44($sp)
    lw      $s2, 0x48($sp)
    lw      $s3, 0x4c($sp)
    lw      $s4, 0x50($sp)
    lw      $s5, 0x54($sp)
    lw      $s6, 0x58($sp)
    jr      $ra
    addiu   $sp, $sp, 0x88

.globl Function_0x801e2290
Function_0x801e2290: # 0x801e2290
    lui     $t1, 0x8022
    addiu   $t1, $t1, 0x5f88
    lw      $v0, 0x0($t1)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    sltiu   $at, $v0, 0xb
    beqz    $at, branch_0x801e2528
    sll     $t6, $v0, 2
    lui     $at, 0x8022
    addu    $at, $at, $t6
    lw      $t6, 0x60b8($at)
    jr      $t6
    nop

.globl Function_0x801e22c4
Function_0x801e22c4: # 0x801e22c4
    jal     Function_0x801e2974
    nop
    lui     $a0, 0x801d
    lui     $a1, 0x8022
    lui     $a2, 0x8023
    addiu   $a2, $a2, 0x86a8
    addiu   $a1, $a1, 0x6044
    jal     Function_0x800c9f70
    addiu   $a0, $a0, 0xe460
    lui     $v0, 0x801d
    lw      $v0, -0x1c98($v0)
    addiu   $at, $zero, 0x4
    bne     $v0, $at, branch_0x801e230c
    nop
    jal     Function_0x801e28ec
    addiu   $a0, $zero, MainState_42
    b       branch_0x801e28e0
    lw      $ra, 0x14($sp)
branch_0x801e230c:
    bnez    $v0, branch_0x801e2324
    addiu   $at, $zero, 0xb
    jal     Function_0x801ebf9c_ChangeStateTo32
    nop
    b       branch_0x801e28e0
    lw      $ra, 0x14($sp)
branch_0x801e2324:
    bnel    $v0, $at, branch_0x801e28e0
    lw      $ra, 0x14($sp)
    jal     Function_0x801ecd94_ChangeStateTo39
    nop
    b       branch_0x801e28e0
    lw      $ra, 0x14($sp)

.globl Function_0x801e233c
Function_0x801e233c: # 0x801e233c
    lui     $t2, 0x8023
    addiu   $t2, $t2, 0x86ac
    lhu     $v0, 0x0($t2)
    lui     $a3, 0x8022
    addiu   $a3, $a3, 0x5f84
    andi    $t7, $v0, 0x1
    beqz    $t7, branch_0x801e2438
    andi    $t9, $v0, 0x2
    lw      $v1, 0x0($a3)
    lui     $t0, 0x8023
    addiu   $t0, $t0, 0x85a8
    addiu   $a0, $v1, 0x8
    addiu   $t8, $zero, 0x8
    sw      $t8, 0x0($t1)
    bgez    $a0, branch_0x801e2388
    andi    $t9, $a0, 0xf
    beqz    $t9, branch_0x801e2388
    nop
    addiu   $t9, $t9, 0xfff0
branch_0x801e2388:
    addiu   $t4, $t9, 0x1
    sll     $t3, $t9, 2
    or      $a0, $t9, $zero
    addu    $v0, $t0, $t3
    bgez    $t4, branch_0x801e23ac
    andi    $t5, $t4, 0xf
    beqz    $t5, branch_0x801e23ac
    nop
    addiu   $t5, $t5, 0xfff0
branch_0x801e23ac:
    sll     $t6, $t5, 2
    addu    $t7, $t0, $t6
    lw      $t8, 0x0($t7)
    addiu   $t4, $v1, 0xffff
    or      $v1, $t4, $zero
    addiu   $t9, $t8, 0xffff
    bgez    $t9, branch_0x801e23d4
    sw      $t9, 0x0($v0)
    addiu   $t3, $t9, 0x1f
    sw      $t3, 0x0($v0)
branch_0x801e23d4:
    bgez    $t4, branch_0x801e23e4
    sw      $t4, 0x0($a3)
    addiu   $v1, $zero, 0xf
    sw      $v1, 0x0($a3)
branch_0x801e23e4:
    sll     $t6, $v1, 2
    addu    $t7, $t0, $t6
    lw      $t8, 0x0($t7)
    mtc1    $v1, $a0
    addiu   $at, $zero, 0x1e
    bne     $t8, $at, branch_0x801e2404
    cvt.s.w $f6, $f4
    sh      $zero, 0x0($t2)
branch_0x801e2404:
    lui     $at, 0x8022
    lwc1    $f8, 0x60e4($at)
    lui     $at, 0x4180
    mtc1    $at, $s0
    mul.s   $f10, $f6, $f8
    lui     $at, 0x8022
    addiu   $a0, $zero, 0x2e
    or      $a1, $zero, $zero
    div.s   $f18, $f10, $f16
    jal     Function_0x800c3594
    swc1    $f18, 0x5f94($at)
    b       branch_0x801e28e0
    lw      $ra, 0x14($sp)
branch_0x801e2438:
    beqz    $t9, branch_0x801e28dc
    lui     $a3, 0x8022
    addiu   $a3, $a3, 0x5f84
    lw      $v1, 0x0($a3)
    addiu   $t3, $zero, 0x9
    sw      $t3, 0x0($t1)
    addiu   $a0, $v1, 0x8
    bgez    $a0, branch_0x801e2468
    andi    $t4, $a0, 0xf
    beqz    $t4, branch_0x801e2468
    nop
    addiu   $t4, $t4, 0xfff0
branch_0x801e2468:
    addiu   $v0, $t4, 0xffff
    or      $a0, $t4, $zero
    bgez    $v0, branch_0x801e247c
    or      $a2, $v0, $zero
    addiu   $a2, $v0, 0x10
branch_0x801e247c:
    lui     $t0, 0x8023
    addiu   $t0, $t0, 0x85a8
    sll     $t6, $a2, 2
    addu    $t7, $t0, $t6
    lw      $t8, 0x0($t7)
    sll     $t5, $a0, 2
    addu    $v0, $t0, $t5
    addiu   $t9, $t8, 0x1
    slti    $at, $t9, 0x1f
    bnez    $at, branch_0x801e24b0
    sw      $t9, 0x0($v0)
    addiu   $t3, $t9, 0xffe1
    sw      $t3, 0x0($v0)
branch_0x801e24b0:
    addiu   $t4, $v1, 0x1
    or      $v1, $t4, $zero
    mtc1    $v1, $a0
    sw      $t4, 0x0($a3)
    lui     $at, 0x8022
    cvt.s.w $f6, $f4
    lwc1    $f8, 0x60e8($at)
    lui     $at, 0x4180
    mtc1    $at, $s0
    lui     $at, 0x8022
    addiu   $a0, $zero, 0x2f
    mul.s   $f10, $f6, $f8
    div.s   $f18, $f10, $f16
    swc1    $f18, 0x5f94($at)
    slti    $at, $t4, 0x10
    bnezl   $at, branch_0x801e2500
    sll     $t5, $v1, 2
    sw      $zero, 0x0($a3)
    or      $v1, $zero, $zero
    sll     $t5, $v1, 2
branch_0x801e2500:
    addu    $t6, $t0, $t5
    lw      $t7, 0x0($t6)
    addiu   $at, $zero, 0x1e
    bne     $t7, $at, branch_0x801e2518
    nop
    sh      $zero, 0x0($t2)
branch_0x801e2518:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x801e28e0
    lw      $ra, 0x14($sp)
branch_0x801e2528:
    lui     $v1, %hi(Unknown_0x801ce3ba)
    lhu     $v1, %lo(Unknown_0x801ce3ba)($v1)
    addiu   $a0, $zero, 0x1
    andi    $t8, $v1, JOY_START|JOY_Z|JOY_A
    beqz    $t8, branch_0x801e2618
    andi    $t7, $v1, JOY_B
    bne     $a0, $v0, branch_0x801e28dc
    lui     $a1, 0x8022
    lui     $a3, 0x8022
    addiu   $a3, $a3, 0x5f84
    lw      $t9, 0x0($a3)
    addiu   $a1, $a1, 0x5fa4
    lw      $t5, 0x0($a1)
    lui     $t0, 0x8023
    addiu   $t0, $t0, 0x85a8
    sll     $t3, $t9, 2
    addu    $t4, $t0, $t3
    slti    $at, $t5, 0x3
    or      $v0, $zero, $zero
    beqz    $at, branch_0x801e2590
    lw      $v1, 0x0($t4)
    addiu   $at, $zero, 0x1e
    bne     $v1, $at, branch_0x801e25b4
    or      $v0, $a0, $zero
    b       branch_0x801e25b4
    addiu   $v0, $zero, 0x2
branch_0x801e2590:
    addiu   $at, $zero, 0x1e
    bnel    $v1, $at, branch_0x801e25a8
    addiu   $at, $zero, 0x1d
    b       branch_0x801e25b4
    addiu   $v0, $zero, 0x2

.globl Function_0x801e25a4
Function_0x801e25a4: # 0x801e25a4
    addiu   $at, $zero, 0x1d
branch_0x801e25a8:
    bne     $v1, $at, branch_0x801e25b4
    nop
    or      $v0, $a0, $zero
branch_0x801e25b4:
    beqz    $v0, branch_0x801e28dc
    addiu   $t6, $zero, 0x4
    sw      $t6, 0x0($t1)
    lui     $at, 0x8022
    bne     $v0, $a0, branch_0x801e25e0
    sw      $zero, 0x5fa0($at)
    addiu   $a0, $zero, 0x1a
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x801e28e0
    lw      $ra, 0x14($sp)
branch_0x801e25e0:
    addiu   $at, $zero, 0x2
    bne     $v0, $at, branch_0x801e25fc
    addiu   $a0, $zero, 0x30
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x801e28e0
    lw      $ra, 0x14($sp)
branch_0x801e25fc:
    addiu   $at, $zero, 0x3
    bne     $v0, $at, branch_0x801e28dc
    addiu   $a0, $zero, 0x12
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x801e28e0
    lw      $ra, 0x14($sp)
branch_0x801e2618:
    beqz    $t7, branch_0x801e2664
    lui     $t9, 0x8015
    addiu   $a0, $zero, 0x1
    bne     $a0, $v0, branch_0x801e28dc
    lui     $a1, 0x8022
    addiu   $a1, $a1, 0x5fa4
    lw      $v0, 0x0($a1)
    lui     $at, 0x8023
    addiu   $a0, $zero, 0x12
    blez    $v0, branch_0x801e264c
    addiu   $t8, $v0, 0xffff
    sw      $t8, 0x0($a1)
    or      $v0, $t8, $zero
branch_0x801e264c:
    addu    $at, $at, $v0
    sb      $zero, -0x7958($at)
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x801e28e0
    lw      $ra, 0x14($sp)
branch_0x801e2664:
    lw      $t9, 0x4090($t9)
    lui     $t4, 0x8015
    addiu   $t4, $t4, 0x4068
    sll     $t3, $t9, 2
    addu    $t3, $t3, $t9
    sll     $t3, $t3, 1
    addu    $v1, $t3, $t4
    lhu     $a0, 0x0($v1)
    andi    $a1, $a0, 0x200
    bnezl   $a1, branch_0x801e26a8
    addiu   $a0, $zero, 0x1
    lb      $a2, 0x8($v1)
    andi    $v1, $a0, 0x100
    slti    $at, $a2, 0xfff4
    beqz    $at, branch_0x801e27c0
    nop
    addiu   $a0, $zero, 0x1
branch_0x801e26a8:
    bnel    $a0, $v0, branch_0x801e28e0
    lw      $ra, 0x14($sp)
    beqz    $a1, branch_0x801e26d0
    lui     $at, 0x3f80
    mtc1    $at, $a0
    lui     $at, 0x8022
    swc1    $f4, 0x5f98($at)
    lui     $at, 0x8022
    b       branch_0x801e26f4
    sh      $zero, 0x5f9c($at)
branch_0x801e26d0:
    jal     Function_0x801e2f00
    nop
    lui     $at, 0x8022
    swc1    $f0, 0x5f98($at)
    addiu   $a0, $zero, 0x1
    lui     $t1, 0x8022
    lui     $at, 0x8022
    addiu   $t1, $t1, 0x5f88
    sh      $a0, 0x5f9c($at)
branch_0x801e26f4:
    lui     $a3, 0x8022
    addiu   $a3, $a3, 0x5f84
    lw      $v1, 0x0($a3)
    lui     $t0, 0x8023
    addiu   $t0, $t0, 0x85a8
    addiu   $a0, $v1, 0x8
    addiu   $t5, $zero, 0x2
    sw      $t5, 0x0($t1)
    bgez    $a0, branch_0x801e2728
    andi    $t6, $a0, 0xf
    beqz    $t6, branch_0x801e2728
    nop
    addiu   $t6, $t6, 0xfff0
branch_0x801e2728:
    addiu   $t8, $t6, 0x1
    sll     $t7, $t6, 2
    or      $a0, $t6, $zero
    addu    $v0, $t0, $t7
    bgez    $t8, branch_0x801e274c
    andi    $t9, $t8, 0xf
    beqz    $t9, branch_0x801e274c
    nop
    addiu   $t9, $t9, 0xfff0
branch_0x801e274c:
    sll     $t3, $t9, 2
    addu    $t4, $t0, $t3
    lw      $t5, 0x0($t4)
    addiu   $t8, $v1, 0xffff
    or      $v1, $t8, $zero
    addiu   $t6, $t5, 0xffff
    bgez    $t6, branch_0x801e2774
    sw      $t6, 0x0($v0)
    addiu   $t7, $t6, 0x1f
    sw      $t7, 0x0($v0)
branch_0x801e2774:
    bgez    $t8, branch_0x801e2784
    sw      $t8, 0x0($a3)
    addiu   $v1, $zero, 0xf
    sw      $v1, 0x0($a3)
branch_0x801e2784:
    mtc1    $v1, $a2
    lui     $at, 0x8022
    lwc1    $f10, 0x60ec($at)
    cvt.s.w $f8, $f6
    lui     $at, 0x4180
    mtc1    $at, $s2
    lui     $at, 0x8022
    addiu   $a0, $zero, 0x2e
    or      $a1, $zero, $zero
    mul.s   $f16, $f8, $f10
    div.s   $f4, $f16, $f18
    jal     Function_0x800c3594
    swc1    $f4, 0x5f94($at)
    b       branch_0x801e28e0
    lw      $ra, 0x14($sp)
branch_0x801e27c0:
    bnez    $v1, branch_0x801e27cc
    slti    $at, $a2, 0xd
    bnez    $at, branch_0x801e28dc
branch_0x801e27cc:
    addiu   $a0, $zero, 0x1
    bnel    $a0, $v0, branch_0x801e28e0
    lw      $ra, 0x14($sp)
    beqz    $v1, branch_0x801e27f8
    lui     $at, 0x3f80
    mtc1    $at, $a2
    lui     $at, 0x8022
    swc1    $f6, 0x5f98($at)
    lui     $at, 0x8022
    b       branch_0x801e281c
    sh      $zero, 0x5f9c($at)
branch_0x801e27f8:
    jal     Function_0x801e2f00
    nop
    lui     $at, 0x8022
    swc1    $f0, 0x5f98($at)
    addiu   $a0, $zero, 0x1
    lui     $t1, 0x8022
    lui     $at, 0x8022
    addiu   $t1, $t1, 0x5f88
    sh      $a0, 0x5f9c($at)
branch_0x801e281c:
    lui     $a3, 0x8022
    addiu   $a3, $a3, 0x5f84
    lw      $v1, 0x0($a3)
    addiu   $t3, $zero, 0x3
    sw      $t3, 0x0($t1)
    addiu   $a0, $v1, 0x8
    bgez    $a0, branch_0x801e2848
    andi    $t4, $a0, 0xf
    beqz    $t4, branch_0x801e2848
    nop
    addiu   $t4, $t4, 0xfff0
branch_0x801e2848:
    addiu   $v0, $t4, 0xffff
    or      $a0, $t4, $zero
    bgez    $v0, branch_0x801e285c
    or      $a2, $v0, $zero
    addiu   $a2, $v0, 0x10
branch_0x801e285c:
    lui     $t0, 0x8023
    addiu   $t0, $t0, 0x85a8
    sll     $t6, $a2, 2
    addu    $t7, $t0, $t6
    lw      $t8, 0x0($t7)
    sll     $t5, $a0, 2
    addu    $v0, $t0, $t5
    addiu   $t9, $t8, 0x1
    slti    $at, $t9, 0x1f
    bnez    $at, branch_0x801e2890
    sw      $t9, 0x0($v0)
    addiu   $t3, $t9, 0xffe1
    sw      $t3, 0x0($v0)
branch_0x801e2890:
    addiu   $t4, $v1, 0x1
    mtc1    $t4, $t0
    sw      $t4, 0x0($a3)
    lui     $at, 0x8022
    cvt.s.w $f10, $f8
    lwc1    $f16, 0x60f0($at)
    lui     $at, 0x4180
    mtc1    $at, $a0
    lui     $at, 0x8022
    addiu   $a0, $zero, 0x2f
    mul.s   $f18, $f10, $f16
    div.s   $f6, $f18, $f4
    swc1    $f6, 0x5f94($at)
    slti    $at, $t4, 0x10
    bnez    $at, branch_0x801e28d4
    nop
    sw      $zero, 0x0($a3)
branch_0x801e28d4:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x801e28dc:
    lw      $ra, 0x14($sp)
branch_0x801e28e0:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801e28ec
Function_0x801e28ec: # 0x801e28ec
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_65
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $a0, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x6
    sw      $t8, %lo(Unknown_0x801ce398)($at)
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
    addiu   $a1, $zero, 0xe
    jal     Function_0x801e6d10
    addiu   $a2, $zero, 0x14
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801e2974
Function_0x801e2974: # 0x801e2974
    lui     $t6, 0x8023
    lb      $t6, -0x7958($t6)
    addiu   $sp, $sp, 0xffc8
    sw      $s2, 0xc($sp)
    sw      $s1, 0x8($sp)
    bnez    $t6, branch_0x801e29e4
    sw      $s0, 0x4($sp)
    lui     $t7, 0x800e
    lw      $t7, -0x58d0($t7)
    lui     $t9, 0x801d
    addiu   $t9, $t9, 0xaff8
    sll     $t8, $t7, 3
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 1
    lui     $v1, 0x8023
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x86ab
    addiu   $v1, $v1, 0x86a8
    addu    $a0, $t8, $t9
branch_0x801e29c0:
    lb      $t6, 0x0($a0)
    addiu   $v1, $v1, 0x1
    addiu   $a0, $a0, 0x1
    bne     $v1, $v0, branch_0x801e29c0
    sb      $t6, -0x1($v1)
    sb      $zero, 0x0($v1)
    addiu   $t7, $zero, 0x1
    lui     $at, 0x800e
    sh      $t7, -0x5714($at)
branch_0x801e29e4:
    lui     $v0, 0x801d
    lw      $v0, -0x1c98($v0)
    addiu   $at, $zero, 0x4
    lui     $v1, 0x801d
    bnel    $v0, $at, branch_0x801e2c38
    addiu   $at, $zero, 0xb
    lw      $v1, -0x4f6c($v1)
    or      $t1, $zero, $zero
    lui     $t8, 0x801d
    addiu   $v1, $v1, 0x1
    blez    $v1, branch_0x801e2eec
    lui     $t6, 0x800f
    lw      $t8, -0x4f68($t8)
    sll     $t7, $v1, 1
    lui     $v1, 0x8023
    addiu   $t6, $t6, 0xa974
    lui     $s2, 0x801c
    lui     $s1, 0x801c
    lui     $s0, 0x801c
    lui     $a3, 0x801c
    lui     $a2, 0x8023
    lui     $a1, 0x8023
    lui     $a0, 0x8023
    sll     $t9, $t8, 4
    addu    $t2, $t9, $t6
    lb      $a0, -0x7956($a0)
    lb      $a1, -0x7958($a1)
    lb      $a2, -0x7957($a2)
    addiu   $a3, $a3, 0x23c0
    addiu   $s0, $s0, 0x2110
    addiu   $s1, $s1, 0x1d50
    addiu   $s2, $s2, 0x2020
    lb      $v1, -0x7955($v1)
    sw      $t7, 0x10($sp)
    lh      $t0, 0x0($t2)
branch_0x801e2a70:
    lui     $t5, 0x800e
    sll     $t3, $t0, 2
    addu    $t8, $a3, $t3
    lw      $t4, 0x0($t8)
    beqz    $t4, branch_0x801e2bd8
    nop
    lh      $t5, -0x5718($t5)
    sll     $t7, $t0, 4
    subu    $t7, $t7, $t0
    beqz    $t5, branch_0x801e2ab4
    sll     $t7, $t7, 2
    sll     $t9, $t0, 2
    addu    $t9, $t9, $t0
    sll     $t9, $t9, 2
    addu    $t6, $s0, $t9
    b       branch_0x801e2acc
    sb      $a1, 0x10($t6)
branch_0x801e2ab4:
    sll     $t9, $t4, 2
    addu    $t9, $t9, $t4
    sll     $t9, $t9, 2
    addu    $t8, $s1, $t7
    addu    $t6, $t8, $t9
    sb      $a1, -0x4($t6)
branch_0x801e2acc:
    beqz    $t5, branch_0x801e2aec
    sll     $t9, $t0, 4
    sll     $t7, $t0, 2
    addu    $t7, $t7, $t0
    sll     $t7, $t7, 2
    addu    $t8, $s0, $t7
    b       branch_0x801e2b0c
    sb      $a2, 0x11($t8)
branch_0x801e2aec:
    subu    $t9, $t9, $t0
    sll     $t7, $t4, 2
    addu    $t7, $t7, $t4
    sll     $t9, $t9, 2
    addu    $t6, $s1, $t9
    sll     $t7, $t7, 2
    addu    $t8, $t6, $t7
    sb      $a2, -0x3($t8)
branch_0x801e2b0c:
    beqz    $t5, branch_0x801e2b2c
    sll     $t7, $t0, 4
    sll     $t9, $t0, 2
    addu    $t9, $t9, $t0
    sll     $t9, $t9, 2
    addu    $t6, $s0, $t9
    b       branch_0x801e2b4c
    sb      $a0, 0x12($t6)
branch_0x801e2b2c:
    subu    $t7, $t7, $t0
    sll     $t9, $t4, 2
    addu    $t9, $t9, $t4
    sll     $t7, $t7, 2
    addu    $t8, $s1, $t7
    sll     $t9, $t9, 2
    addu    $t6, $t8, $t9
    sb      $a0, -0x2($t6)
branch_0x801e2b4c:
    beqz    $t5, branch_0x801e2b6c
    sll     $t9, $t0, 4
    sll     $t7, $t0, 2
    addu    $t7, $t7, $t0
    sll     $t7, $t7, 2
    addu    $t8, $s0, $t7
    b       branch_0x801e2b8c
    sb      $v1, 0x13($t8)
branch_0x801e2b6c:
    subu    $t9, $t9, $t0
    sll     $t7, $t4, 2
    addu    $t7, $t7, $t4
    sll     $t9, $t9, 2
    addu    $t6, $s1, $t9
    sll     $t7, $t7, 2
    addu    $t8, $t6, $t7
    sb      $v1, -0x1($t8)
branch_0x801e2b8c:
    beqz    $t5, branch_0x801e2bb0
    addiu   $v0, $zero, 0x4
    sll     $t9, $t0, 2
    addu    $t9, $t9, $t0
    sll     $t9, $t9, 2
    addu    $t6, $s0, $t9
    addu    $t7, $t6, $v0
    b       branch_0x801e2bd8
    sb      $zero, 0x10($t7)
branch_0x801e2bb0:
    sll     $t8, $t0, 4
    subu    $t8, $t8, $t0
    sll     $t6, $t4, 2
    addu    $t6, $t6, $t4
    sll     $t8, $t8, 2
    addu    $t9, $s1, $t8
    sll     $t6, $t6, 2
    addu    $t7, $t9, $t6
    addu    $t8, $t7, $v0
    sb      $zero, -0x4($t8)
branch_0x801e2bd8:
    lui     $t9, 0x801c
    addu    $t9, $t9, $t3
    lw      $t9, 0x23f0($t9)
    sll     $t6, $t0, 2
    addu    $t6, $t6, $t0
    beqz    $t9, branch_0x801e2c14
    sll     $t6, $t6, 2
    addu    $t3, $s2, $t6
    addiu   $v0, $zero, 0x4
    sb      $a2, 0x11($t3)
    sb      $a0, 0x12($t3)
    sb      $v1, 0x13($t3)
    sb      $a1, 0x10($t3)
    addu    $t7, $t3, $v0
    sb      $zero, 0x10($t7)
branch_0x801e2c14:
    lw      $t8, 0x10($sp)
    addiu   $t1, $t1, 0x2
    addiu   $t2, $t2, 0x2
    slt     $at, $t1, $t8
    bnezl   $at, branch_0x801e2a70
    lh      $t0, 0x0($t2)
    b       branch_0x801e2ef0
    lw      $s0, 0x4($sp)

.globl Function_0x801e2c34
Function_0x801e2c34: # 0x801e2c34
    addiu   $at, $zero, 0xb
branch_0x801e2c38:
    bne     $v0, $at, branch_0x801e2cb4
    lui     $t0, 0x800d
    lui     $a3, 0x801c
    lw      $a3, 0x2688($a3)
    lui     $v1, 0x8023
    lui     $a0, 0x8023
    beqz    $a3, branch_0x801e2eec
    lui     $a1, 0x8023
    lui     $t9, 0x800d
    lw      $t9, 0x7ef0($t9)
    sll     $t7, $a3, 4
    lui     $a2, 0x8023
    sll     $t6, $t9, 2
    subu    $t6, $t6, $t9
    sll     $t6, $t6, 4
    lui     $t9, 0x801c
    addiu   $t9, $t9, 0x2448
    addu    $t8, $t6, $t7
    addu    $t0, $t8, $t9
    lb      $a2, -0x7957($a2)
    lb      $v1, -0x7955($v1)
    lb      $a0, -0x7956($a0)
    lb      $a1, -0x7958($a1)
    addiu   $v0, $zero, 0x4
    addu    $t6, $t0, $v0
    sb      $a2, -0x3($t0)
    sb      $v1, -0x1($t0)
    sb      $a0, -0x2($t0)
    sb      $a1, -0x4($t0)
    b       branch_0x801e2eec
    sb      $zero, -0x4($t6)
branch_0x801e2cb4:
    lw      $t0, 0x7ef0($t0)
    lui     $a3, 0x801c
    addiu   $a3, $a3, 0x23c0
    sll     $t1, $t0, 2
    addu    $t7, $a3, $t1
    lw      $t2, 0x0($t7)
    lui     $t5, 0x800e
    beqz    $t2, branch_0x801e2e88
    nop
    lh      $t5, -0x5718($t5)
    lui     $s0, 0x801c
    addiu   $s0, $s0, 0x2110
    beqz    $t5, branch_0x801e2d10
    lui     $a1, 0x8023
    sll     $t8, $t0, 2
    addu    $t8, $t8, $t0
    lb      $a1, -0x7958($a1)
    sll     $t8, $t8, 2
    addu    $t9, $s0, $t8
    lui     $s1, 0x801c
    addiu   $s1, $s1, 0x1d50
    b       branch_0x801e2d4c
    sb      $a1, 0x10($t9)
branch_0x801e2d10:
    sll     $t6, $t0, 4
    lui     $a1, 0x8023
    lui     $s1, 0x801c
    subu    $t6, $t6, $t0
    sll     $t8, $t2, 2
    lb      $a1, -0x7958($a1)
    addiu   $s1, $s1, 0x1d50
    addu    $t8, $t8, $t2
    sll     $t6, $t6, 2
    addu    $t7, $s1, $t6
    sll     $t8, $t8, 2
    addu    $t9, $t7, $t8
    lui     $s0, 0x801c
    addiu   $s0, $s0, 0x2110
    sb      $a1, -0x4($t9)
branch_0x801e2d4c:
    beqz    $t5, branch_0x801e2d74
    lui     $a2, 0x8023
    sll     $t6, $t0, 2
    addu    $t6, $t6, $t0
    lui     $a2, 0x8023
    lb      $a2, -0x7957($a2)
    sll     $t6, $t6, 2
    addu    $t7, $s0, $t6
    b       branch_0x801e2d9c
    sb      $a2, 0x11($t7)
branch_0x801e2d74:
    sll     $t8, $t0, 4
    subu    $t8, $t8, $t0
    sll     $t6, $t2, 2
    lb      $a2, -0x7957($a2)
    addu    $t6, $t6, $t2
    sll     $t8, $t8, 2
    addu    $t9, $s1, $t8
    sll     $t6, $t6, 2
    addu    $t7, $t9, $t6
    sb      $a2, -0x3($t7)
branch_0x801e2d9c:
    beqz    $t5, branch_0x801e2dc4
    lui     $a0, 0x8023
    sll     $t8, $t0, 2
    addu    $t8, $t8, $t0
    lui     $a0, 0x8023
    lb      $a0, -0x7956($a0)
    sll     $t8, $t8, 2
    addu    $t9, $s0, $t8
    b       branch_0x801e2dec
    sb      $a0, 0x12($t9)
branch_0x801e2dc4:
    sll     $t6, $t0, 4
    subu    $t6, $t6, $t0
    sll     $t8, $t2, 2
    lb      $a0, -0x7956($a0)
    addu    $t8, $t8, $t2
    sll     $t6, $t6, 2
    addu    $t7, $s1, $t6
    sll     $t8, $t8, 2
    addu    $t9, $t7, $t8
    sb      $a0, -0x2($t9)
branch_0x801e2dec:
    beqz    $t5, branch_0x801e2e14
    lui     $v1, 0x8023
    sll     $t6, $t0, 2
    addu    $t6, $t6, $t0
    lui     $v1, 0x8023
    lb      $v1, -0x7955($v1)
    sll     $t6, $t6, 2
    addu    $t7, $s0, $t6
    b       branch_0x801e2e3c
    sb      $v1, 0x13($t7)
branch_0x801e2e14:
    sll     $t8, $t0, 4
    subu    $t8, $t8, $t0
    sll     $t6, $t2, 2
    lb      $v1, -0x7955($v1)
    addu    $t6, $t6, $t2
    sll     $t8, $t8, 2
    addu    $t9, $s1, $t8
    sll     $t6, $t6, 2
    addu    $t7, $t9, $t6
    sb      $v1, -0x1($t7)
branch_0x801e2e3c:
    beqz    $t5, branch_0x801e2e60
    addiu   $v0, $zero, 0x4
    sll     $t8, $t0, 2
    addu    $t8, $t8, $t0
    sll     $t8, $t8, 2
    addu    $t9, $s0, $t8
    addu    $t6, $t9, $v0
    b       branch_0x801e2e88
    sb      $zero, 0x10($t6)
branch_0x801e2e60:
    sll     $t7, $t0, 4
    subu    $t7, $t7, $t0
    sll     $t9, $t2, 2
    addu    $t9, $t9, $t2
    sll     $t7, $t7, 2
    addu    $t8, $s1, $t7
    sll     $t9, $t9, 2
    addu    $t6, $t8, $t9
    addu    $t7, $t6, $v0
    sb      $zero, -0x4($t7)
branch_0x801e2e88:
    lui     $t8, 0x801c
    addu    $t8, $t8, $t1
    lw      $t8, 0x23f0($t8)
    lui     $v1, 0x8023
    lui     $a0, 0x8023
    lui     $a1, 0x8023
    lui     $a2, 0x8023
    lb      $a2, -0x7957($a2)
    lb      $a1, -0x7958($a1)
    lb      $a0, -0x7956($a0)
    beqz    $t8, branch_0x801e2eec
    lb      $v1, -0x7955($v1)
    sll     $t9, $t0, 2
    lui     $s2, 0x801c
    addu    $t9, $t9, $t0
    addiu   $s2, $s2, 0x2020
    sll     $t9, $t9, 2
    addu    $a3, $s2, $t9
    addiu   $v0, $zero, 0x4
    sb      $a2, 0x11($a3)
    sb      $a0, 0x12($a3)
    sb      $v1, 0x13($a3)
    sb      $a1, 0x10($a3)
    addu    $t6, $a3, $v0
    sb      $zero, 0x10($t6)
branch_0x801e2eec:
    lw      $s0, 0x4($sp)
branch_0x801e2ef0:
    lw      $s1, 0x8($sp)
    lw      $s2, 0xc($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38

.globl Function_0x801e2f00
Function_0x801e2f00: # 0x801e2f00
    lui     $t6, 0x8015
    lw      $t6, 0x4090($t6)
    lui     $v0, 0x8015
    sll     $t7, $t6, 2
    addu    $t7, $t7, $t6
    sll     $t7, $t7, 1
    addu    $v0, $v0, $t7
    lb      $v0, 0x4070($v0)
    bgezl   $v0, branch_0x801e2f30
    slti    $at, $v0, 0x47
    subu    $v0, $zero, $v0
    slti    $at, $v0, 0x47
branch_0x801e2f30:
    bnezl   $at, branch_0x801e2f44
    slti    $at, $v0, 0xc
    b       branch_0x801e2f50
    addiu   $v0, $zero, 0x46

.globl Function_0x801e2f40
Function_0x801e2f40: # 0x801e2f40
    slti    $at, $v0, 0xc
branch_0x801e2f44:
    beqzl   $at, branch_0x801e2f54
    addiu   $v0, $v0, 0xfff4
    addiu   $v0, $zero, 0xc
branch_0x801e2f50:
    addiu   $v0, $v0, 0xfff4
branch_0x801e2f54:
    mtc1    $v0, $a0
    addiu   $t8, $zero, 0x3a
    mtc1    $t8, $t0
    cvt.s.w $f0, $f4
    lui     $at, 0x4000
    mtc1    $at, $t6
    lui     $at, 0x8022
    cvt.s.w $f10, $f8
    add.s   $f6, $f0, $f0
    div.s   $f2, $f6, $f10
    c.lt.s $f14, $f2
    nop
    bc1f    branch_0x801e2f90
    nop
    mov.s   $f2, $f14
branch_0x801e2f90:
    lwc1    $f0, 0x60f4($at)
    c.lt.s $f2, $f0
    nop
    bc1f    branch_0x801e2fa8
    nop
    mov.s   $f2, $f0
branch_0x801e2fa8:
    jr      $ra
    mov.s   $f0, $f2

.globl Function_0x801e2fb0
Function_0x801e2fb0: # 0x801e2fb0
    addiu   $sp, $sp, 0xfe48
    lui     $t6, 0x801d
    lw      $t6, -0x1c64($t6)
    sw      $ra, 0x5c($sp)
    sw      $fp, 0x58($sp)
    sw      $s7, 0x54($sp)
    sw      $s6, 0x50($sp)
    sw      $s5, 0x4c($sp)
    sw      $s4, 0x48($sp)
    sw      $s3, 0x44($sp)
    sw      $s2, 0x40($sp)
    sw      $s1, 0x3c($sp)
    beqz    $t6, branch_0x801e3010
    sw      $s0, 0x38($sp)
    lui     $at, 0x8023
    sw      $zero, -0x794c($at)
    lui     $at, 0x8023
    sw      $zero, -0x7950($at)
    lui     $at, 0x8023
    addiu   $t7, $zero, 0x140
    sw      $t7, -0x7948($at)
    lui     $at, 0x8023
    addiu   $t8, $zero, 0xfef8
    sw      $t8, -0x7944($at)
branch_0x801e3010:
    lui     $at, 0x4180
    mtc1    $at, $a0
    lui     $s5, 0x801d
    mtc1    $zero, $zero
    addiu   $s5, $s5, 0xe358
    lui     $at, 0x4580
    mtc1    $at, $a2
    lw      $a0, 0x0($s5)
    lui     $a1, 0x8023
    addiu   $a1, $a1, 0x86c0
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
    lui     $at, 0x8022
    lwc1    $f8, 0x6164($at)
    addiu   $s0, $sp, 0xb0
    mfc1    $a1, $zero
    mfc1    $a2, $zero
    mfc1    $a3, $v0
    or      $a0, $s0, $zero
    swc1    $f0, 0x10($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    swc1    $f0, 0x20($sp)
    swc1    $f0, 0x24($sp)
    swc1    $f2, 0x14($sp)
    jal     Function_0x80048a28
    swc1    $f8, 0x28($sp)
    mtc1    $zero, $zero
    lui     $at, 0x3f80
    mtc1    $at, $t2
    addiu   $s1, $sp, 0x130
    mfc1    $a3, $zero
    or      $a1, $s1, $zero
    addiu   $a0, $sp, 0x70
    lui     $a2, 0x43fa
    swc1    $f0, 0x10($sp)
    swc1    $f0, 0x14($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    swc1    $f0, 0x20($sp)
    swc1    $f0, 0x28($sp)
    jal     Function_0x80048468
    swc1    $f10, 0x24($sp)
    addiu   $s2, $sp, 0x170
    or      $a1, $s2, $zero
    jal     Function_0x80047e18
    or      $a0, $s0, $zero
    addiu   $fp, $sp, 0xf0
    or      $a2, $fp, $zero
    or      $a0, $s1, $zero
    jal     Function_0x80049e58
    or      $a1, $s2, $zero
    lui     $s7, 0x8022
    addiu   $s7, $s7, 0x6100
    or      $s1, $zero, $zero
    or      $s3, $zero, $zero
    or      $s2, $zero, $zero
    addiu   $s4, $zero, 0x7a
    addiu   $s6, $zero, 0x3
branch_0x801e3120:
    andi    $t9, $s1, 0x1
    beqz    $t9, branch_0x801e3138
    lui     $s0, 0x8023
    lui     $s0, 0x8023
    b       branch_0x801e313c
    lw      $s0, -0x7944($s0)
branch_0x801e3138:
    lw      $s0, -0x7948($s0)
branch_0x801e313c:
    lw      $t0, 0x0($s5)
    or      $a0, $fp, $zero
    addu    $a1, $t0, $s3
    jal     Function_0x80047e80
    addiu   $a1, $a1, 0xa80
    lw      $t1, 0x0($s5)
    lw      $at, 0x0($s7)
    addiu   $t6, $s0, 0x38
    addu    $t2, $t1, $s2
    sw      $at, 0x1280($t2)
    lw      $t5, 0x4($s7)
    sll     $t7, $t6, 2
    addiu   $s1, $s1, 0x1
    sw      $t5, 0x1284($t2)
    lw      $at, 0x8($s7)
    sll     $t0, $s4, 2
    addiu   $s4, $s4, 0x12
    sw      $at, 0x1288($t2)
    lw      $t5, 0xc($s7)
    addiu   $s3, $s3, 0x40
    sw      $t5, 0x128c($t2)
    lw      $t8, 0x0($s5)
    addu    $t9, $t8, $s2
    sh      $t7, 0x1288($t9)
    lw      $t1, 0x0($s5)
    addu    $t4, $t1, $s2
    addiu   $s2, $s2, 0x10
    bne     $s1, $s6, branch_0x801e3120
    sh      $t0, 0x128a($t4)
    lui     $t3, 0x801c
    lw      $t3, 0x2688($t3)
    bnezl   $t3, branch_0x801e322c
    lw      $ra, 0x5c($sp)
    lw      $t2, 0x0($s5)
    or      $a0, $fp, $zero
    addu    $a1, $t2, $s3
    jal     Function_0x80047e80
    addiu   $a1, $a1, 0xa80
    lw      $t5, 0x0($s5)
    lw      $at, 0x0($s7)
    lui     $t9, 0x8023
    addu    $t6, $t5, $s2
    sw      $at, 0x1280($t6)
    lw      $t7, 0x4($s7)
    addiu   $t2, $zero, 0x338
    sw      $t7, 0x1284($t6)
    lw      $at, 0x8($s7)
    sw      $at, 0x1288($t6)
    lw      $t7, 0xc($s7)
    sw      $t7, 0x128c($t6)
    lw      $t9, -0x7944($t9)
    lw      $t4, 0x0($s5)
    addiu   $t1, $t9, 0x38
    sll     $t0, $t1, 2
    addu    $t3, $t4, $s2
    sh      $t0, 0x1288($t3)
    lw      $t5, 0x0($s5)
    addu    $t8, $t5, $s2
    sh      $t2, 0x128a($t8)
    lw      $ra, 0x5c($sp)
branch_0x801e322c:
    lw      $s0, 0x38($sp)
    lw      $s1, 0x3c($sp)
    lw      $s2, 0x40($sp)
    lw      $s3, 0x44($sp)
    lw      $s4, 0x48($sp)
    lw      $s5, 0x4c($sp)
    lw      $s6, 0x50($sp)
    lw      $s7, 0x54($sp)
    lw      $fp, 0x58($sp)
    jr      $ra
    addiu   $sp, $sp, 0x1b8

.globl Function_0x801e3258
Function_0x801e3258: # 0x801e3258
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe39c
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x801e3278
    lui     $at, 0x800e
    sw      $zero, 0x0($v0)
branch_0x801e3278:
    jal     Function_0x8008f914
    sw      $zero, -0x5754($at)
    lui     $a1, 0x800d
    lw      $a1, 0x7ef0($a1)
    jal     Function_0x80094758
    or      $a0, $v0, $zero
    jal     Function_0x80090cf8
    or      $a0, $v0, $zero
    jal     Function_0x801e33f8
    or      $a0, $v0, $zero
    jal     Function_0x801e32bc
    sw      $v0, 0x18($sp)
    lw      $ra, 0x14($sp)
    lw      $v0, 0x18($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801e32bc
Function_0x801e32bc: # 0x801e32bc
    lui     $v1, 0x8023
    addiu   $v1, $v1, 0x86b0
    lw      $t6, 0x0($v1)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    sltiu   $at, $t6, 0x5
    beqz    $at, branch_0x801e33b8
    or      $a1, $zero, $zero
    sll     $t6, $t6, 2
    lui     $at, 0x8022
    addu    $at, $at, $t6
    lw      $t6, 0x6168($at)
    jr      $t6
    nop

.globl Function_0x801e32f4
Function_0x801e32f4: # 0x801e32f4
    addiu   $t7, $zero, 0x1
    addiu   $a1, $zero, 0x1
    b       branch_0x801e33b8
    sw      $t7, 0x0($v1)

.globl Function_0x801e3304
Function_0x801e3304: # 0x801e3304
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x86b8
    lw      $t8, 0x0($v0)
    addiu   $t1, $zero, 0x2
    addiu   $t2, $zero, 0x14
    addiu   $t9, $t8, 0xffec
    slti    $at, $t9, 0x14
    beqz    $at, branch_0x801e33b8
    sw      $t9, 0x0($v0)
    sw      $t1, 0x0($v1)
    b       branch_0x801e33b8
    sw      $t2, 0x0($v0)

.globl Function_0x801e3334
Function_0x801e3334: # 0x801e3334
    lui     $t3, %hi(Unknown_0x801ce3ba)
    lhu     $t3, %lo(Unknown_0x801ce3ba)($t3)
    andi    $t4, $t3, JOY_START|JOY_Z|JOY_A
    beqz    $t4, branch_0x801e33b8
    addiu   $t5, $zero, 0x3
    sw      $t5, 0x0($v1)
    b       branch_0x801e33b8
    addiu   $a1, $zero, 0x1

.globl Function_0x801e3354
Function_0x801e3354: # 0x801e3354
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x86b8
    lw      $t6, 0x0($v0)
    lui     $a0, 0x8023
    addiu   $a0, $a0, 0x86b4
    addiu   $t7, $t6, 0xffec
    slti    $at, $t7, 0xfef8
    beqz    $at, branch_0x801e33b8
    sw      $t7, 0x0($v0)
    addiu   $t9, $zero, 0xfef8
    addiu   $t0, $zero, 0x4
    sw      $t9, 0x0($v0)
    sw      $t0, 0x0($v1)
    b       branch_0x801e33b8
    sw      $zero, 0x0($a0)

.globl Function_0x801e3390
Function_0x801e3390: # 0x801e3390
    lui     $a0, 0x8023
    addiu   $a0, $a0, 0x86b4
    lw      $t1, 0x0($a0)
    addiu   $t2, $t1, 0x1
    slti    $at, $t2, 0x3
    bnez    $at, branch_0x801e33b8
    sw      $t2, 0x0($a0)
    jal     Function_0x801ec5c0_ChangeStateTo50
    sw      $a1, 0x1c($sp)
    lw      $a1, 0x1c($sp)
branch_0x801e33b8:
    lui     $v0, 0x8023
    beqz    $a1, branch_0x801e33d8
    addiu   $v0, $v0, 0x86b8
    addiu   $a0, $zero, 0x31
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x86b8
branch_0x801e33d8:
    lw      $t4, 0x0($v0)
    lw      $ra, 0x14($sp)
    addiu   $t5, $zero, 0x28
    lui     $at, 0x8023
    subu    $t6, $t5, $t4
    sw      $t6, -0x7944($at)
    jr      $ra
    addiu   $sp, $sp, 0x20

.globl Function_0x801e33f8
Function_0x801e33f8: # 0x801e33f8
    addiu   $sp, $sp, 0xff48
    sw      $s5, 0x54($sp)
    sw      $ra, 0x64($sp)
    sw      $fp, 0x60($sp)
    sw      $s7, 0x5c($sp)
    sw      $s6, 0x58($sp)
    sw      $s4, 0x50($sp)
    sw      $s3, 0x4c($sp)
    sw      $s2, 0x48($sp)
    sw      $s1, 0x44($sp)
    sw      $s0, 0x40($sp)
    lui     $t6, 0x107
    lui     $s5, 0x600
    addiu   $t6, $t6, 0xf628
    sw      $t6, 0x4($a0)
    sw      $s5, 0x0($a0)
    lui     $a2, 0x8023
    lw      $a2, -0x7948($a2)
    addiu   $s3, $a0, 0x8
    addiu   $t7, $zero, 0x108
    addiu   $t8, $zero, 0x18
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $s3, $zero
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0x1e
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x8
    lui     $a2, 0x8023
    lw      $a2, -0x7944($a2)
    addiu   $t9, $zero, 0x108
    addiu   $t0, $zero, 0x10
    sw      $t0, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0x58
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x8
    or      $s3, $v0, $zero
    or      $s1, $zero, $zero
    addiu   $s2, $zero, 0x6e
branch_0x801e34a0:
    andi    $t1, $s1, 0x1
    beqz    $t1, branch_0x801e34b8
    or      $a0, $s3, $zero
    lui     $s0, 0x8023
    b       branch_0x801e34c0
    lw      $s0, -0x7944($s0)
branch_0x801e34b8:
    lui     $s0, 0x8023
    lw      $s0, -0x7948($s0)
branch_0x801e34c0:
    addiu   $t2, $zero, 0x108
    addiu   $t3, $zero, 0x10
    sw      $t3, 0x14($sp)
    sw      $t2, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $s0, 0x8
    jal     Function_0x800940d8
    or      $a3, $s2, $zero
    addiu   $s1, $s1, 0x1
    slti    $at, $s1, 0x3
    addiu   $s2, $s2, 0x12
    bnez    $at, branch_0x801e34a0
    or      $s3, $v0, $zero
    lui     $t4, 0x801c
    lw      $t4, 0x2688($t4)
    bnez    $t4, branch_0x801e355c
    lui     $a2, 0x8023
    lw      $a2, -0x7944($a2)
    addiu   $t5, $zero, 0x108
    addiu   $t6, $zero, 0xa
    sw      $t6, 0x14($sp)
    sw      $t5, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0xb7
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x8
    lui     $a2, 0x8023
    lw      $a2, -0x7944($a2)
    addiu   $t7, $zero, 0x108
    addiu   $t8, $zero, 0x10
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0xc2
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x8
    or      $s3, $v0, $zero
branch_0x801e355c:
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x10($sp)
    or      $a0, $s3, $zero
    or      $a1, $zero, $zero
    or      $a2, $zero, $zero
    jal     Function_0x801e7bd4
    or      $a3, $zero, $zero
    or      $s3, $v0, $zero
    or      $s1, $zero, $zero
    addiu   $s4, $zero, 0x70
    addiu   $s2, $zero, 0x7c
branch_0x801e3588:
    andi    $t0, $s1, 0x1
    beqz    $t0, branch_0x801e35a0
    or      $a0, $s3, $zero
    lui     $s0, 0x8023
    b       branch_0x801e35a8
    lw      $s0, -0x7944($s0)
branch_0x801e35a0:
    lui     $s0, 0x8023
    lw      $s0, -0x7948($s0)
branch_0x801e35a8:
    addiu   $a1, $s0, 0x28
    or      $a2, $s4, $zero
    addiu   $a3, $s0, 0x42
    jal     Function_0x801e7d38
    sw      $s2, 0x10($sp)
    addiu   $s1, $s1, 0x1
    slti    $at, $s1, 0x3
    addiu   $s4, $s4, 0x12
    addiu   $s2, $s2, 0x12
    bnez    $at, branch_0x801e3588
    or      $s3, $v0, $zero
    lui     $t1, 0x801c
    lw      $t1, 0x2688($t1)
    bnezl   $t1, branch_0x801e360c
    addiu   $s3, $v0, 0x8
    lui     $v0, 0x8023
    lw      $v0, -0x7944($v0)
    addiu   $t2, $zero, 0xd0
    sw      $t2, 0x10($sp)
    or      $a0, $s3, $zero
    addiu   $a2, $zero, 0xc4
    addiu   $a1, $v0, 0x28
    jal     Function_0x801e7d38
    addiu   $a3, $v0, 0x42
    addiu   $s3, $v0, 0x8
branch_0x801e360c:
    lui     $t3, 0xe700
    or      $a0, $s3, $zero
    sw      $t3, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t4, 0xed02
    lui     $t5, 0x4d
    ori     $t5, $t5, 0x8368
    ori     $t4, $t4, 0x50
    addiu   $s3, $s3, 0x8
    sw      $t4, 0x0($a0)
    sw      $t5, 0x4($a0)
    or      $a1, $s3, $zero
    lui     $t6, 0xb400
    sw      $t6, 0x0($a1)
    lui     $t7, 0x8023
    lhu     $t7, -0x7940($t7)
    addiu   $s3, $s3, 0x8
    or      $a2, $s3, $zero
    lui     $t8, 0x103
    lui     $t9, 0x700
    sw      $t7, 0x4($a1)
    addiu   $t9, $t9, 0xa40
    ori     $t8, $t8, 0x40
    addiu   $s3, $s3, 0x8
    sw      $t8, 0x0($a2)
    sw      $t9, 0x4($a2)
    or      $a3, $s3, $zero
    sw      $s5, 0x0($a3)
    lui     $t0, 0x107
    addiu   $t0, $t0, 0xf488
    lui     $s5, 0x700
    lui     $s4, 0x700
    lui     $s1, 0x380
    sw      $t0, 0x4($a3)
    addiu   $s3, $s3, 0x8
    ori     $s1, $s1, 0x10
    addiu   $s4, $s4, 0x1280
    addiu   $s5, $s5, 0xa80
    or      $s6, $zero, $zero
    or      $s0, $zero, $zero
branch_0x801e36ac:
    lui     $t1, 0x800d
    lw      $t1, 0x7ef0($t1)
    or      $v0, $s3, $zero
    sw      $s1, 0x0($v0)
    sw      $s4, 0x4($v0)
    addiu   $v1, $s3, 0x8
    lui     $t5, 0x102
    ori     $t5, $t5, 0x40
    sw      $t5, 0x0($v1)
    sw      $s5, 0x4($v1)
    lui     $t6, 0x801d
    sll     $t2, $t1, 2
    lw      $t6, -0x1ca8($t6)
    subu    $t2, $t2, $t1
    sll     $t2, $t2, 4
    lui     $t4, 0x801c
    addiu   $t4, $t4, 0x2448
    addu    $t3, $t2, $s6
    addu    $s2, $t3, $t4
    addu    $t7, $t6, $s0
    addiu   $t8, $t7, 0xc80
    lw      $a1, 0x4($s2)
    addiu   $a0, $v1, 0x8
    sw      $t8, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    addiu   $s0, $s0, 0xc0
    slti    $at, $s0, 0x240
    addiu   $s6, $s6, 0x10
    addiu   $s4, $s4, 0x10
    addiu   $s5, $s5, 0x40
    bnez    $at, branch_0x801e36ac
    or      $s3, $v0, $zero
    lui     $t9, 0x801c
    lw      $t9, 0x2688($t9)
    addiu   $v1, $s3, 0x8
    addiu   $a0, $v1, 0x8
    bnez    $t9, branch_0x801e379c
    lui     $t0, 0x102
    sw      $s1, 0x0($v0)
    sw      $s4, 0x4($v0)
    ori     $t0, $t0, 0x40
    sw      $t0, 0x0($v1)
    sw      $s5, 0x4($v1)
    lui     $t1, 0x800d
    lui     $t3, 0x801d
    lw      $t3, -0x1ca8($t3)
    lw      $t1, 0x465c($t1)
    lui     $a1, 0x800e
    addu    $t4, $t3, $s0
    sll     $t2, $t1, 2
    addu    $a1, $a1, $t2
    addiu   $t5, $t4, 0xc80
    sw      $t5, 0x10($sp)
    lw      $a1, -0x58d0($a1)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    or      $s3, $v0, $zero
branch_0x801e379c:
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
    or      $a0, $s3, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff
    lui     $v1, 0x800d
    lw      $v1, 0x7ef0($v1)
    lui     $t7, 0x8022
    lui     $t8, 0x8023
    sll     $t6, $v1, 2
    addu    $t7, $t7, $t6
    lw      $t7, 0x6110($t7)
    lw      $t8, -0x7948($t8)
    lui     $a2, 0x800e
    addu    $a2, $a2, $t6
    addiu   $t9, $zero, 0x21
    addu    $a3, $t7, $t8
    addiu   $a3, $a3, 0x38
    sw      $t9, 0x10($sp)
    lw      $a2, -0x584c($a2)
    or      $v1, $t6, $zero
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e3c40
    sw      $zero, 0x14($sp)
    lui     $a3, 0x8023
    lw      $a3, -0x7944($a3)
    addiu   $t0, $zero, 0x5b
    sw      $t0, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1f
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40
    addiu   $a3, $a3, 0x17
    lui     $a3, 0x8023
    lw      $a3, -0x7944($a3)
    addiu   $t1, $zero, 0x5b
    sw      $t1, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x20
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40
    addiu   $a3, $a3, 0x77
    lui     $a3, 0x8023
    lw      $a3, -0x7944($a3)
    addiu   $t2, $zero, 0x5b
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x3e
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40
    addiu   $a3, $a3, 0xda
    lui     $v1, 0x801c
    addiu   $v1, $v1, 0x2688
    lw      $t3, 0x0($v1)
    or      $s3, $v0, $zero
    or      $a0, $v0, $zero
    bnez    $t3, branch_0x801e3908
    or      $a1, $zero, $zero
    lui     $a3, 0x8023
    lw      $a3, -0x7944($a3)
    addiu   $t4, $zero, 0xb8
    sw      $t4, 0x10($sp)
    addiu   $a2, $zero, 0x1a
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40
    addiu   $a3, $a3, 0x12
    or      $s3, $v0, $zero
branch_0x801e3908:
    lui     $fp, 0x8022
    addiu   $fp, $fp, 0x6c04
    or      $s1, $zero, $zero
    addiu   $s4, $zero, 0x70
    or      $s6, $zero, $zero
    addiu   $s7, $sp, 0xa4
branch_0x801e3920:
    lui     $v1, 0x801c
    addiu   $v1, $v1, 0x2688
    lw      $v0, 0x0($v1)
    or      $a0, $s3, $zero
    addiu   $a2, $zero, 0xff
    beqz    $v0, branch_0x801e397c
    addiu   $a3, $zero, 0xff
    addiu   $at, $zero, 0x1
    bne     $v0, $at, branch_0x801e3964
    addiu   $t6, $s1, 0x1
    addiu   $t5, $s1, 0x1
    bne     $t5, $v0, branch_0x801e395c
    nop
    b       branch_0x801e3980
    addiu   $a1, $zero, 0x4
branch_0x801e395c:
    b       branch_0x801e3980
    or      $a1, $zero, $zero
branch_0x801e3964:
    bne     $t6, $v0, branch_0x801e3974
    nop
    b       branch_0x801e3980
    addiu   $a1, $zero, 0x6
branch_0x801e3974:
    b       branch_0x801e3980
    or      $a1, $zero, $zero
branch_0x801e397c:
    or      $a1, $zero, $zero
branch_0x801e3980:
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    sw      $t6, 0x34($sp)
    sw      $t5, 0x30($sp)
    sw      $t4, 0x2c($sp)
    sw      $t3, 0x28($sp)
    sw      $t2, 0x24($sp)
    sw      $t1, 0x20($sp)
    sw      $t0, 0x1c($sp)
    sw      $t9, 0x18($sp)
    sw      $t8, 0x14($sp)
    jal     Function_0x801e91f4
    sw      $t7, 0x10($sp)
    lui     $t7, 0x800d
    lw      $t7, 0x7ef0($t7)
    lui     $t0, 0x801c
    addiu   $t0, $t0, 0x2448
    sll     $t8, $t7, 2
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 4
    addu    $t9, $t8, $s6
    andi    $t1, $s1, 0x1
    or      $s3, $v0, $zero
    beqz    $t1, branch_0x801e3a10
    addu    $s2, $t9, $t0
    lui     $s0, 0x8023
    b       branch_0x801e3a18
    lw      $s0, -0x7944($s0)
branch_0x801e3a10:
    lui     $s0, 0x8023
    lw      $s0, -0x7948($s0)
branch_0x801e3a18:
    lui     $a1, 0x8022
    addiu   $s5, $s1, 0x1
    or      $a2, $s5, $zero
    addiu   $a1, $a1, 0x6140
    jal     Function_0x800c9f70
    or      $a0, $s7, $zero
    lb      $t2, 0x1($fp)
    or      $a0, $s3, $zero
    addiu   $a1, $zero, 0x2
    addu    $a3, $t2, $s0
    addiu   $a3, $a3, 0x11
    or      $a2, $s7, $zero
    jal     Function_0x801e95e0
    sw      $s4, 0x10($sp)
    lw      $t3, 0x8($s2)
    or      $s3, $v0, $zero
    or      $a0, $s7, $zero
    bnez    $t3, branch_0x801e3a84
    lui     $a1, 0x8022
    lui     $a1, 0x8022
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x6148
    addiu   $a1, $a1, 0x6144
    jal     Function_0x800c9f70
    or      $a0, $s7, $zero
    b       branch_0x801e3a98
    or      $a0, $s3, $zero
branch_0x801e3a84:
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x6150
    jal     Function_0x800c9f70
    addiu   $a1, $a1, 0x614c
    or      $a0, $s3, $zero
branch_0x801e3a98:
    addiu   $a1, $zero, 0x1
    or      $a2, $s7, $zero
    addiu   $a3, $s0, 0x3b
    jal     Function_0x801e95e0
    sw      $s4, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $s2, 0xc
    addiu   $a3, $s0, 0x77
    jal     Function_0x801e95e0
    sw      $s4, 0x10($sp)
    lw      $a2, 0x0($s2)
    sw      $s4, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x80093fa0
    addiu   $a3, $s0, 0xd0
    addiu   $at, $zero, 0x3
    or      $s1, $s5, $zero
    addiu   $s4, $s4, 0x12
    addiu   $s6, $s6, 0x10
    addiu   $fp, $fp, 0x1
    bne     $s5, $at, branch_0x801e3920
    or      $s3, $v0, $zero
    lui     $t4, 0x801c
    lw      $t4, 0x2688($t4)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x6
    bnez    $t4, branch_0x801e3c00
    addiu   $a2, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    sw      $t4, 0x34($sp)
    sw      $t3, 0x30($sp)
    sw      $t2, 0x2c($sp)
    sw      $t1, 0x28($sp)
    sw      $t0, 0x24($sp)
    sw      $t9, 0x20($sp)
    sw      $t8, 0x1c($sp)
    sw      $t7, 0x18($sp)
    sw      $t6, 0x14($sp)
    sw      $t5, 0x10($sp)
    jal     Function_0x801e91f4
    addiu   $a3, $zero, 0xff
    lui     $t5, 0x801d
    lw      $t5, -0x4f74($t5)
    or      $s3, $v0, $zero
    or      $a0, $s7, $zero
    bnez    $t5, branch_0x801e3ba0
    lui     $a1, 0x8022
    lui     $a1, 0x8022
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x6158
    addiu   $a1, $a1, 0x6154
    jal     Function_0x800c9f70
    or      $a0, $s7, $zero
    b       branch_0x801e3bb0
    nop
branch_0x801e3ba0:
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x6160
    jal     Function_0x800c9f70
    addiu   $a1, $a1, 0x615c
branch_0x801e3bb0:
    lui     $a3, 0x8023
    lw      $a3, -0x7944($a3)
    addiu   $t6, $zero, 0xc4
    sw      $t6, 0x10($sp)
    or      $a0, $s3, $zero
    addiu   $a1, $zero, 0x1
    or      $a2, $s7, $zero
    jal     Function_0x801e95e0
    addiu   $a3, $a3, 0x3b
    lui     $a3, 0x8023
    lw      $a3, -0x7944($a3)
    lui     $a2, 0x801c
    addiu   $t7, $zero, 0xc4
    sw      $t7, 0x10($sp)
    lw      $a2, 0x2430($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x80093fa0
    addiu   $a3, $a3, 0xd0
    or      $s3, $v0, $zero
branch_0x801e3c00:
    lw      $ra, 0x64($sp)
    or      $v0, $s3, $zero
    lw      $s3, 0x4c($sp)
    lw      $s0, 0x40($sp)
    lw      $s1, 0x44($sp)
    lw      $s2, 0x48($sp)
    lw      $s4, 0x50($sp)
    lw      $s5, 0x54($sp)
    lw      $s6, 0x58($sp)
    lw      $s7, 0x5c($sp)
    lw      $fp, 0x60($sp)
    jr      $ra
    addiu   $sp, $sp, 0xb8

.globl Function_0x801e3c34
Function_0x801e3c34: # 0x801e3c34
    nop
    nop
    nop

.globl Function_0x801e3c40
Function_0x801e3c40: # 0x801e3c40
    addiu   $sp, $sp, 0xffb8
    sltiu   $at, $a1, 0x5
    sw      $ra, 0x2c($sp)
    sw      $fp, 0x28($sp)
    sw      $s7, 0x24($sp)
    sw      $s6, 0x20($sp)
    sw      $s5, 0x1c($sp)
    sw      $s4, 0x18($sp)
    sw      $s3, 0x14($sp)
    sw      $s2, 0x10($sp)
    sw      $s1, 0xc($sp)
    sw      $s0, 0x8($sp)
    sw      $a3, 0x54($sp)
    addiu   $v0, $zero, 0x1
    beqz    $at, branch_0x801e3d90
    addiu   $v1, $zero, 0x1
    sll     $t6, $a1, 2
    lui     $at, 0x8022
    addu    $at, $at, $t6
    lw      $t6, 0x6940($at)
    jr      $t6
    nop

.globl Function_0x801e3c98
Function_0x801e3c98: # 0x801e3c98
    lui     $t8, 0x8022
    addiu   $t8, $t8, 0x6180
    sll     $t7, $a2, 3
    addiu   $t4, $zero, 0x8
    addu    $t1, $t7, $t8
    sw      $t1, 0x34($sp)
    b       branch_0x801e3d90
    sw      $t4, 0x40($sp)

.globl Function_0x801e3cb8
Function_0x801e3cb8: # 0x801e3cb8
    lui     $t6, 0x8022
    addiu   $t6, $t6, 0x62b8
    sll     $t9, $a2, 3
    addiu   $t4, $zero, 0xa
    addu    $t1, $t9, $t6
    sw      $t1, 0x34($sp)
    b       branch_0x801e3d90
    sw      $t4, 0x40($sp)

.globl Function_0x801e3cd8
Function_0x801e3cd8: # 0x801e3cd8
    lw      $a1, 0x5c($sp)
    lui     $t8, 0x8022
    addiu   $t8, $t8, 0x6328
    sll     $t7, $a2, 3
    addu    $a3, $t7, $t8
    addiu   $t4, $a1, 0xa
    or      $v0, $zero, $zero
    sw      $t4, 0x40($sp)
    b       branch_0x801e3d90
    sw      $a3, 0x34($sp)

.globl Function_0x801e3d00
Function_0x801e3d00: # 0x801e3d00
    lui     $t6, 0x8022
    addiu   $t6, $t6, 0x6808
    sll     $t9, $a2, 3
    addu    $t1, $t9, $t6
    lw      $t7, 0x4($t1)
    addiu   $t4, $zero, 0x12
    or      $v0, $zero, $zero
    slti    $at, $t7, 0xe4
    bnezl   $at, branch_0x801e3d34
    sw      $t1, 0x34($sp)
    addiu   $v1, $zero, 0x2
    addiu   $t4, $zero, 0x9
    sw      $t1, 0x34($sp)
branch_0x801e3d34:
    b       branch_0x801e3d90
    sw      $t4, 0x40($sp)

.globl Function_0x801e3d3c
Function_0x801e3d3c: # 0x801e3d3c
    lw      $a1, 0x5c($sp)
    lui     $t9, 0x8022
    addiu   $t9, $t9, 0x6650
    sll     $t8, $a2, 3
    addu    $a3, $t8, $t9
    addiu   $at, $zero, 0x6
    or      $t1, $a3, $zero
    or      $v0, $zero, $zero
    bne     $a1, $at, branch_0x801e3d70
    addiu   $t4, $a1, 0xe
    addiu   $v1, $zero, 0x5
    b       branch_0x801e3d88
    addiu   $t4, $zero, 0x4
branch_0x801e3d70:
    lw      $t6, 0x4($a3)
    slti    $at, $t6, 0x123
    bnezl   $at, branch_0x801e3d8c
    sw      $t1, 0x34($sp)
    addiu   $v1, $zero, 0x2
    addiu   $t4, $zero, 0x7
branch_0x801e3d88:
    sw      $t1, 0x34($sp)
branch_0x801e3d8c:
    sw      $t4, 0x40($sp)
branch_0x801e3d90:
    lw      $t1, 0x34($sp)
    lw      $t4, 0x40($sp)
    or      $t5, $zero, $zero
    sw      $v0, 0x3c($sp)
    blez    $v1, branch_0x801e4168
    sw      $v1, 0x38($sp)
    lw      $s3, 0x54($sp)
    lw      $s0, 0x58($sp)
    lui     $ra, 0x8
    sll     $t7, $s3, 2
    sll     $s4, $t7, 10
    sra     $t8, $s4, 7
    lui     $s5, 0x708
    ori     $s5, $s5, 0x200
    or      $s4, $t8, $zero
    or      $s3, $t7, $zero
    ori     $ra, $ra, 0x200
    lui     $fp, 0xe700
    lui     $s7, 0x700
    lui     $s6, 0xe600
    lui     $s2, 0xf568
    addu    $s1, $s0, $t4
branch_0x801e3de8:
    lw      $t9, 0x3c($sp)
    or      $v0, $a0, $zero
    lui     $t6, 0xfd70
    beqz    $t9, branch_0x801e3f38
    lui     $t8, 0xf570
    sw      $t6, 0x0($v0)
    lw      $t7, 0x0($t1)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $t7, 0x4($v0)
    or      $a1, $a0, $zero
    sw      $s5, 0x4($v1)
    sw      $t8, 0x0($v1)
    addiu   $a0, $a0, 0x8
    or      $t2, $a0, $zero
    sw      $zero, 0x4($a1)
    sw      $s6, 0x0($a1)
    lui     $t9, 0xf300
    sw      $t9, 0x0($t2)
    lw      $a2, 0x4($t1)
    addiu   $t3, $t4, 0xffff
    sll     $t7, $t3, 2
    multu   $a2, $t4
    andi    $t8, $t7, 0xfff
    srl     $v1, $a2, 3
    or      $v0, $v1, $zero
    or      $t3, $t8, $zero
    addiu   $a0, $a0, 0x8
    addiu   $t0, $zero, 0x7ff
    mflo    $a3
    addiu   $a3, $a3, 0x1
    srl     $t6, $a3, 1
    addiu   $a3, $t6, 0xffff
    sltiu   $at, $a3, 0x7ff
    beqz    $at, branch_0x801e3e84
    nop
    b       branch_0x801e3e84
    or      $t0, $a3, $zero
branch_0x801e3e84:
    bnez    $v1, branch_0x801e3e94
    or      $a3, $v1, $zero
    b       branch_0x801e3e94
    addiu   $a3, $zero, 0x1
branch_0x801e3e94:
    bnez    $v1, branch_0x801e3ea4
    addiu   $t9, $a3, 0x7ff
    b       branch_0x801e3ea4
    addiu   $v0, $zero, 0x1
branch_0x801e3ea4:
    divu    $zero, $t9, $v0
    mflo    $t6
    andi    $t7, $t6, 0xfff
    andi    $t9, $t0, 0xfff
    sll     $t6, $t9, 12
    or      $t8, $t7, $s7
    or      $t7, $t8, $t6
    sw      $t7, 0x4($t2)
    or      $v1, $a0, $zero
    sw      $fp, 0x0($v1)
    sw      $zero, 0x4($v1)
    lw      $t9, 0x4($t1)
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    addiu   $t8, $t9, 0x7
    srl     $t6, $t8, 3
    andi    $t7, $t6, 0x1ff
    sll     $t9, $t7, 9
    or      $t8, $t9, $s2
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    sw      $t8, 0x0($a1)
    lui     $t6, 0xf200
    sw      $ra, 0x4($a1)
    sw      $t6, 0x0($a2)
    lw      $t7, 0x4($t1)
    bnez    $v0, branch_0x801e3f18
    nop
    break   0x7
branch_0x801e3f18:
    addiu   $t9, $t7, 0xffff
    sll     $t8, $t9, 2
    andi    $t6, $t8, 0xfff
    sll     $t7, $t6, 12
    or      $t9, $t7, $t3
    sw      $t9, 0x4($a2)
    b       branch_0x801e4058
    addiu   $a0, $a0, 0x8
branch_0x801e3f38:
    lw      $t8, 0x4($t1)
    lui     $at, 0xfd68
    or      $v0, $a0, $zero
    addiu   $t6, $t8, 0xffff
    andi    $t7, $t6, 0xfff
    or      $t9, $t7, $at
    sw      $t9, 0x0($v0)
    lw      $t6, 0x4($t1)
    lw      $t8, 0x0($t1)
    addiu   $a0, $a0, 0x8
    multu   $t6, $t4
    or      $v1, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    addiu   $a3, $t4, 0xffff
    addiu   $a0, $a0, 0x8
    mflo    $t7
    nop
    nop
    multu   $t7, $t5
    mflo    $t9
    addu    $t6, $t8, $t9
    sw      $t6, 0x4($v0)
    lw      $t7, 0x4($t1)
    sw      $s5, 0x4($v1)
    or      $v0, $a0, $zero
    addiu   $t8, $t7, 0x7
    srl     $t9, $t8, 3
    andi    $t6, $t9, 0x1ff
    sll     $t7, $t6, 9
    or      $t8, $t7, $s2
    sw      $t8, 0x0($v1)
    sw      $zero, 0x4($a1)
    sw      $s6, 0x0($a1)
    lui     $t7, 0xf400
    sw      $t7, 0x0($a2)
    lw      $t8, 0x4($t1)
    sll     $t9, $a3, 2
    andi    $a3, $t9, 0xfff
    addiu   $t9, $t8, 0xffff
    sll     $t6, $t9, 2
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 12
    or      $t9, $t8, $s7
    or      $t6, $t9, $a3
    sw      $t6, 0x4($a2)
    sw      $zero, 0x4($v0)
    sw      $fp, 0x0($v0)
    lw      $t7, 0x4($t1)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    addiu   $t8, $t7, 0x7
    srl     $t9, $t8, 3
    andi    $t6, $t9, 0x1ff
    sll     $t7, $t6, 9
    or      $t8, $t7, $s2
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    sw      $t8, 0x0($v1)
    lui     $t9, 0xf200
    sw      $ra, 0x4($v1)
    sw      $t9, 0x0($a1)
    lw      $t6, 0x4($t1)
    addiu   $a0, $a0, 0x8
    addiu   $t7, $t6, 0xffff
    sll     $t8, $t7, 2
    andi    $t9, $t8, 0xfff
    sll     $t6, $t9, 12
    or      $t7, $t6, $a3
    sw      $t7, 0x4($a1)
branch_0x801e4058:
    lw      $t8, 0x4($t1)
    lw      $t9, 0x54($sp)
    or      $t0, $a0, $zero
    addiu   $a0, $a0, 0x8
    addu    $v0, $t8, $t9
    sll     $t6, $v0, 2
    blez    $t6, branch_0x801e4080
    sll     $v1, $s1, 2
    b       branch_0x801e4084
    or      $a3, $t6, $zero
branch_0x801e4080:
    or      $a3, $zero, $zero
branch_0x801e4084:
    blez    $v1, branch_0x801e4094
    lui     $at, 0xe400
    b       branch_0x801e4098
    or      $v0, $v1, $zero
branch_0x801e4094:
    or      $v0, $zero, $zero
branch_0x801e4098:
    andi    $t7, $v0, 0xfff
    andi    $t9, $a3, 0xfff
    sll     $t6, $t9, 12
    or      $t8, $t7, $at
    or      $t7, $t8, $t6
    blez    $s3, branch_0x801e40bc
    sw      $t7, 0x0($t0)
    b       branch_0x801e40c0
    or      $a3, $s3, $zero
branch_0x801e40bc:
    or      $a3, $zero, $zero
branch_0x801e40c0:
    sll     $a1, $s0, 2
    blez    $a1, branch_0x801e40d4
    andi    $t8, $a3, 0xfff
    b       branch_0x801e40d8
    or      $v0, $a1, $zero
branch_0x801e40d4:
    or      $v0, $zero, $zero
branch_0x801e40d8:
    andi    $t9, $v0, 0xfff
    sll     $t6, $t8, 12
    or      $t7, $t9, $t6
    sw      $t7, 0x4($t0)
    lui     $t8, 0xb300
    or      $a2, $a0, $zero
    sw      $t8, 0x0($a2)
    bgez    $s4, branch_0x801e4104
    addiu   $a0, $a0, 0x8
    b       branch_0x801e4108
    or      $a3, $s4, $zero
branch_0x801e4104:
    or      $a3, $zero, $zero
branch_0x801e4108:
    sll     $v1, $a1, 10
    sra     $t9, $v1, 7
    bgez    $t9, branch_0x801e4120
    or      $v1, $a0, $zero
    b       branch_0x801e4124
    or      $v0, $t9, $zero
branch_0x801e4120:
    or      $v0, $zero, $zero
branch_0x801e4124:
    subu    $t6, $zero, $v0
    andi    $t7, $t6, 0xffff
    subu    $t9, $zero, $a3
    sll     $t6, $t9, 16
    or      $t8, $t7, $t6
    sw      $t8, 0x4($a2)
    lui     $t7, 0x400
    ori     $t7, $t7, 0x400
    lui     $t9, 0xb200
    sw      $t9, 0x0($v1)
    sw      $t7, 0x4($v1)
    lw      $t6, 0x38($sp)
    addiu   $t5, $t5, 0x1
    addu    $s0, $s0, $t4
    addu    $s1, $s1, $t4
    bne     $t5, $t6, branch_0x801e3de8
    addiu   $a0, $a0, 0x8
branch_0x801e4168:
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
    addiu   $sp, $sp, 0x48
    jr      $ra
    or      $v0, $a0, $zero

.globl Function_0x801e419c
Function_0x801e419c: # 0x801e419c
    nop

.globl Function_0x801e41a0
Function_0x801e41a0: # 0x801e41a0
    lui     $t0, 0x801d
    addiu   $t0, $t0, 0xe384
    lh      $a1, 0x0($t0)
    addiu   $sp, $sp, 0xff90
    addiu   $at, $zero, 0xffff
    sw      $ra, 0x3c($sp)
    sw      $a0, 0x70($sp)
    bne     $a1, $at, branch_0x801e43a4
    sw      $zero, 0x60($sp)
    lui     $a2, 0x801d
    addiu   $a2, $a2, 0xe388
    lh      $t6, 0x0($a2)
    lui     $t7, 0x801d
    lui     $t8, 0x800e
    beqz    $t6, branch_0x801e41e4
    nop
    sh      $zero, 0x0($a2)
branch_0x801e41e4:
    lh      $t7, -0x1c76($t7)
    beqz    $t7, branch_0x801e4390
    nop
    lw      $t8, -0x5758($t8)
    addiu   $a2, $zero, 0x1
    sw      $zero, 0x68($sp)
    bne     $a2, $t8, branch_0x801e424c
    lui     $a0, %hi(Unknown_0x801ce3b8)
    lui     $a0, %hi(Unknown_0x801ce3b8)
    addiu   $a0, $a0, %lo(Unknown_0x801ce3b8)
    lhu     $t9, Unknown_0x801ce3b8_2($a0)
    lui     $at, 0x801d
    addiu   $a0, $zero, 0x3
    andi    $t3, $t9, JOY_START
    beqz    $t3, branch_0x801e42d4
    addiu   $a1, $zero, 0x2
    sw      $a2, 0x68($sp)
    jal     Function_0x801e67ac
    sh      $a2, -0x1c74($at)
    addiu   $a0, $zero, 0x3
    jal     Function_0x801e67ac
    addiu   $a1, $zero, 0x3
    lui     $t0, 0x801d
    addiu   $t0, $t0, 0xe384
    b       branch_0x801e42d4
    addiu   $a2, $zero, 0x1
branch_0x801e424c:
    addiu   $a0, $a0, %lo(Unknown_0x801ce3b8)
    lhu     $t4, Unknown_0x801ce3b8_2($a0)
    lui     $at, 0x801d
    addiu   $a1, $zero, 0x4
    andi    $t5, $t4, JOY_START
    beqzl   $t5, branch_0x801e4298
    lhu     $t6, 0x1e($a0)
    sw      $a2, 0x68($sp)
    sh      $a2, -0x1c74($at)
    jal     Function_0x801e67ac
    addiu   $a0, $zero, 0x3
    addiu   $a0, $zero, 0x3
    jal     Function_0x801e67ac
    addiu   $a1, $zero, 0x5
    lui     $t0, 0x801d
    addiu   $t0, $t0, 0xe384
    b       branch_0x801e42d4
    addiu   $a2, $zero, 0x1

.globl Function_0x801e4294
Function_0x801e4294: # 0x801e4294
    lhu     $t6, 0x1e($a0)
branch_0x801e4298:
    addiu   $t8, $zero, 0x2
    lui     $at, 0x801d
    andi    $t7, $t6, 0x1000
    beqz    $t7, branch_0x801e42d4
    addiu   $a0, $zero, 0x3
    sw      $a2, 0x68($sp)
    sh      $t8, -0x1c74($at)
    jal     Function_0x801e67ac
    addiu   $a1, $zero, 0x6
    addiu   $a0, $zero, 0x3
    jal     Function_0x801e67ac
    addiu   $a1, $zero, 0x7
    lui     $t0, 0x801d
    addiu   $t0, $t0, 0xe384
    addiu   $a2, $zero, 0x1
branch_0x801e42d4:
    lw      $t9, 0x68($sp)
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3a8
    beqz    $t9, branch_0x801e4390
    lui     $v0, 0x801d
    sh      $zero, 0x0($t0)
    lw      $v0, -0x1c98($v0)
    addiu   $a0, $zero, 0x4
    lui     $t3, 0x800d
    bne     $a0, $v0, branch_0x801e4310
    addiu   $t5, $zero, 0x5
    lw      $t3, 0x7ef0($t3)
    bnezl   $t3, branch_0x801e4314
    lw      $t4, 0x0($v1)
    sh      $a2, 0x0($t0)
branch_0x801e4310:
    lw      $t4, 0x0($v1)
branch_0x801e4314:
    lui     $at, 0x8023
    sw      $t4, -0x7930($at)
    beqz    $v0, branch_0x801e432c
    sw      $zero, 0x0($v1)
    addiu   $at, $zero, 0xb
    bne     $v0, $at, branch_0x801e4338
branch_0x801e432c:
    lui     $at, 0x801d
    b       branch_0x801e4374
    sh      $t5, -0x1c7a($at)
branch_0x801e4338:
    bne     $a0, $v0, branch_0x801e436c
    addiu   $t8, $zero, 0x2
    lui     $t6, 0x800d
    lw      $t6, 0x7ef0($t6)
    addiu   $t7, $zero, 0x3
    lui     $at, 0x801d
    bnez    $t6, branch_0x801e4364
    nop
    lui     $at, 0x801d
    b       branch_0x801e4374
    sh      $t7, -0x1c7a($at)
branch_0x801e4364:
    b       branch_0x801e4374
    sh      $a0, -0x1c7a($at)
branch_0x801e436c:
    lui     $at, 0x801d
    sh      $t8, -0x1c7a($at)
branch_0x801e4374:
    jal     Function_0x800c3b80
    nop
    addiu   $a0, $zero, 0x20
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    lui     $t0, 0x801d
    addiu   $t0, $t0, 0xe384
branch_0x801e4390:
    lui     $v0, 0x800e
    lw      $v0, -0x5758($v0)
    addiu   $a2, $zero, 0x1
    b       branch_0x801e4734
    lh      $a1, 0x0($t0)
branch_0x801e43a4:
    lui     $a2, 0x801d
    addiu   $a2, $a2, 0xe388
    lh      $t9, 0x0($a2)
    or      $v1, $zero, $zero
    lui     $t3, 0x800e
    bnez    $t9, branch_0x801e4498
    addiu   $at, $zero, 0x2
    lw      $t3, -0x5758($t3)
    addiu   $a3, $zero, 0x1
    lui     $a0, %hi(Unknown_0x801ce3b8)
    bne     $a3, $t3, branch_0x801e4410
    lui     $t7, 0x801d
    addiu   $a0, $a0, %lo(Unknown_0x801ce3b8)
    lhu     $v0, Unknown_0x801ce3b8_2($a0)
    andi    $t4, $v0, JOY_START|JOY_Z|JOY_A
    beqz    $t4, branch_0x801e43f0
    andi    $t5, $v0, JOY_UP
    b       branch_0x801e4498
    or      $v1, $a3, $zero
branch_0x801e43f0:
    beqz    $t5, branch_0x801e4400
    andi    $t6, $v0, JOY_DOWN
    b       branch_0x801e4498
    addiu   $v1, $zero, 0x2
branch_0x801e4400:
    beqzl   $t6, branch_0x801e449c
    addiu   $a3, $zero, 0x1
    b       branch_0x801e4498
    addiu   $v1, $zero, 0x3
branch_0x801e4410:
    lh      $t7, -0x1c74($t7)
    lui     $a0, %hi(Unknown_0x801ce3b8)
    addiu   $a0, $a0, %lo(Unknown_0x801ce3b8)
    bnel    $a3, $t7, branch_0x801e4468
    lhu     $v0, Unknown_0x801ce3b8_1e($a0)
    lui     $a0, %hi(Unknown_0x801ce3b8)
    addiu   $a0, $a0, %lo(Unknown_0x801ce3b8)
    lhu     $v0, Unknown_0x801ce3b8_2($a0)
    andi    $t8, $v0, JOY_START|JOY_Z|JOY_A
    beqz    $t8, branch_0x801e4444
    andi    $t9, $v0, JOY_UP
    b       branch_0x801e4498
    or      $v1, $a3, $zero
branch_0x801e4444:
    beqz    $t9, branch_0x801e4454
    andi    $t3, $v0, JOY_DOWN
    b       branch_0x801e4498
    addiu   $v1, $zero, 0x2
branch_0x801e4454:
    beqzl   $t3, branch_0x801e449c
    addiu   $a3, $zero, 0x1
    b       branch_0x801e4498
    addiu   $v1, $zero, 0x3

.globl Function_0x801e4464
Function_0x801e4464: # 0x801e4464
    lhu     $v0, Unknown_0x801ce3b8_1e($a0)
branch_0x801e4468:
    andi    $t4, $v0, JOY_START|JOY_Z|JOY_A
    beqz    $t4, branch_0x801e447c
    andi    $t5, $v0, JOY_UP
    b       branch_0x801e4498
    or      $v1, $a3, $zero
branch_0x801e447c:
    beqz    $t5, branch_0x801e448c
    andi    $t6, $v0, JOY_DOWN
    b       branch_0x801e4498
    addiu   $v1, $zero, 0x2
branch_0x801e448c:
    beqzl   $t6, branch_0x801e449c
    addiu   $a3, $zero, 0x1
    addiu   $v1, $zero, 0x3
branch_0x801e4498:
    addiu   $a3, $zero, 0x1
branch_0x801e449c:
    beq     $v1, $a3, branch_0x801e44c8
    lui     $v0, 0x801d
    beq     $v1, $at, branch_0x801e46b4
    addiu   $t9, $a1, 0xffff
    addiu   $at, $zero, 0x3
    beq     $v1, $at, branch_0x801e46f8
    addiu   $t6, $a1, 0x1
    lui     $v0, 0x800e
    lw      $v0, -0x5758($v0)
    b       branch_0x801e4734
    addiu   $a2, $zero, 0x1
branch_0x801e44c8:
    lw      $v0, -0x1c98($v0)
    addiu   $at, $zero, 0xb
    sll     $t7, $a1, 3
    beqz    $v0, branch_0x801e44e0
    lui     $t8, 0x8022
    bne     $v0, $at, branch_0x801e44ec
branch_0x801e44e0:
    addiu   $t8, $t8, 0x69a8
    b       branch_0x801e4538
    addu    $v1, $t7, $t8
branch_0x801e44ec:
    addiu   $at, $zero, 0x4
    bne     $v0, $at, branch_0x801e452c
    sll     $t7, $a1, 3
    lui     $t9, 0x800d
    lw      $t9, 0x7ef0($t9)
    lui     $t6, 0x8022
    addiu   $t6, $t6, 0x6970
    bnez    $t9, branch_0x801e4524
    sll     $t5, $a1, 3
    lui     $t4, 0x8022
    addiu   $t4, $t4, 0x6990
    sll     $t3, $a1, 3
    b       branch_0x801e4538
    addu    $v1, $t3, $t4
branch_0x801e4524:
    b       branch_0x801e4538
    addu    $v1, $t5, $t6
branch_0x801e452c:
    lui     $t8, 0x8022
    addiu   $t8, $t8, 0x6960
    addu    $v1, $t7, $t8
branch_0x801e4538:
    lhu     $t9, 0x0($v1)
    sltiu   $at, $t9, 0x8
    beqz    $at, branch_0x801e467c
    sll     $t9, $t9, 2
    lui     $at, 0x8022
    addu    $at, $at, $t9
    lw      $t9, 0x69d0($at)
    jr      $t9
    nop

.globl Function_0x801e455c
Function_0x801e455c: # 0x801e455c
    addiu   $t3, $zero, 0xffff
    sh      $t3, 0x0($t0)
    lui     $t4, 0x8023
    lw      $t4, -0x7930($t4)
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3a8
    sh      $zero, 0x0($a2)
    b       branch_0x801e467c
    sw      $t4, 0x0($v1)

.globl Function_0x801e4580
Function_0x801e4580: # 0x801e4580
    addiu   $t5, $zero, 0x4
    sh      $t5, 0x0($a2)
    lui     $at, 0x800d
    sw      $a3, 0x60($sp)
    sw      $a3, 0x7efc($at)
    jal     0x802c744c
    addiu   $a0, $zero, 0x2
    b       branch_0x801e467c
    nop

.globl Function_0x801e45a4
Function_0x801e45a4: # 0x801e45a4
    addiu   $t6, $zero, 0xffff
    sh      $t6, 0x0($t0)
    lui     $t7, 0x8023
    lw      $t7, -0x7930($t7)
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe3a8
    lui     $t8, 0x801d
    sw      $t7, 0x0($v1)
    lh      $t8, -0x1c74($t8)
    addiu   $t9, $zero, 0x2
    bne     $a3, $t8, branch_0x801e45dc
    nop
    b       branch_0x801e467c
    sh      $a3, 0x0($a2)
branch_0x801e45dc:
    b       branch_0x801e467c
    sh      $t9, 0x0($a2)

.globl Function_0x801e45e4
Function_0x801e45e4: # 0x801e45e4
    addiu   $t3, $zero, 0x3
    sh      $t3, 0x0($a2)
    lui     $at, 0x800d
    sw      $a3, 0x7efc($at)
    jal     0x802c744c
    addiu   $a0, $zero, 0x28
    b       branch_0x801e467c
    nop

.globl Function_0x801e4604
Function_0x801e4604: # 0x801e4604
    addiu   $t4, $zero, 0x5
    sh      $t4, 0x0($a2)
    lui     $at, 0x800d
    sw      $a3, 0x7efc($at)
    jal     0x802c744c
    addiu   $a0, $zero, 0xa
    b       branch_0x801e467c
    nop

.globl Function_0x801e4624
Function_0x801e4624: # 0x801e4624
    addiu   $t5, $zero, 0x6
    sh      $t5, 0x0($a2)
    lui     $at, 0x800d
    sw      $a3, 0x7efc($at)
    jal     0x802c744c
    addiu   $a0, $zero, 0x14
    b       branch_0x801e467c
    nop

.globl Function_0x801e4644
Function_0x801e4644: # 0x801e4644
    addiu   $t6, $zero, 0x7
    sh      $t6, 0x0($a2)
    lui     $at, 0x800d
    sw      $a3, 0x7efc($at)
    jal     0x802c744c
    addiu   $a0, $zero, 0x1e
    b       branch_0x801e467c
    nop

.globl Function_0x801e4664
Function_0x801e4664: # 0x801e4664
    addiu   $t7, $zero, 0x8
    sh      $t7, 0x0($a2)
    lui     $at, 0x800d
    sw      $a3, 0x7efc($at)
    jal     0x802c744c
    addiu   $a0, $zero, 0x1e
branch_0x801e467c:
    jal     Function_0x800c3bb8
    nop
    lw      $t8, 0x60($sp)
    addiu   $a0, $zero, 0x11
    beqz    $t8, branch_0x801e469c
    nop
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x801e469c:
    lui     $a1, 0x801d
    lui     $v0, 0x800e
    lw      $v0, -0x5758($v0)
    lh      $a1, -0x1c7c($a1)
    b       branch_0x801e4734
    addiu   $a2, $zero, 0x1
branch_0x801e46b4:
    sh      $t9, 0x0($t0)
    lh      $t3, 0x0($t0)
    lui     $t4, 0x801d
    addiu   $a0, $zero, 0x10
    bgez    $t3, branch_0x801e46d8
    nop
    lh      $t4, -0x1c7a($t4)
    addiu   $t5, $t4, 0xffff
    sh      $t5, 0x0($t0)
branch_0x801e46d8:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    lui     $a1, 0x801d
    lui     $v0, 0x800e
    lw      $v0, -0x5758($v0)
    lh      $a1, -0x1c7c($a1)
    b       branch_0x801e4734
    addiu   $a2, $zero, 0x1
branch_0x801e46f8:
    sh      $t6, 0x0($t0)
    lui     $t7, 0x801d
    lh      $t7, -0x1c7a($t7)
    lh      $t8, 0x0($t0)
    addiu   $a0, $zero, 0x10
    bne     $t7, $t8, branch_0x801e4718
    nop
    sh      $zero, 0x0($t0)
branch_0x801e4718:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    lui     $a1, 0x801d
    lui     $v0, 0x800e
    lw      $v0, -0x5758($v0)
    lh      $a1, -0x1c7c($a1)
    addiu   $a2, $zero, 0x1
branch_0x801e4734:
    bne     $a2, $v0, branch_0x801e4748
    addiu   $at, $zero, 0xffff
    addiu   $t9, $zero, 0x41
    b       branch_0x801e476c
    sw      $t9, 0x54($sp)
branch_0x801e4748:
    lui     $t3, 0x801d
    lh      $t3, -0x1c74($t3)
    addiu   $t4, $zero, 0x28
    addiu   $t5, $zero, 0x96
    bnel    $a2, $t3, branch_0x801e476c
    sw      $t5, 0x54($sp)
    b       branch_0x801e476c
    sw      $t4, 0x54($sp)

.globl Function_0x801e4768
Function_0x801e4768: # 0x801e4768
    sw      $t5, 0x54($sp)
branch_0x801e476c:
    beql    $a1, $at, branch_0x801e4958
    lw      $ra, 0x3c($sp)
    bne     $a2, $v0, branch_0x801e47b4
    lw      $a0, 0x70($sp)
    addiu   $t6, $zero, 0xdb
    addiu   $t7, $zero, 0xa0
    sw      $t7, 0x20($sp)
    sw      $t6, 0x10($sp)
    lw      $a0, 0x70($sp)
    addiu   $a1, $zero, 0x8
    addiu   $a2, $zero, 0x14
    addiu   $a3, $zero, 0x137
    sw      $zero, 0x14($sp)
    sw      $zero, 0x18($sp)
    jal     Function_0x801e79b8
    sw      $zero, 0x1c($sp)
    b       branch_0x801e47e4
    sw      $v0, 0x70($sp)
branch_0x801e47b4:
    addiu   $t8, $zero, 0xe5
    addiu   $t9, $zero, 0xa0
    sw      $t9, 0x20($sp)
    sw      $t8, 0x10($sp)
    addiu   $a1, $zero, 0x8
    addiu   $a2, $zero, 0xc
    addiu   $a3, $zero, 0x137
    sw      $zero, 0x14($sp)
    sw      $zero, 0x18($sp)
    jal     Function_0x801e79b8
    sw      $zero, 0x1c($sp)
    sw      $v0, 0x70($sp)
branch_0x801e47e4:
    lui     $t3, 0x801d
    lh      $t3, -0x1c7a($t3)
    lw      $a0, 0x70($sp)
    or      $t1, $zero, $zero
    blez    $t3, branch_0x801e4948
    or      $t0, $zero, $zero
    or      $t2, $zero, $zero
    sw      $a0, 0x70($sp)
branch_0x801e4804:
    lui     $v0, 0x801d
    lw      $v0, -0x1c98($v0)
    lw      $a0, 0x70($sp)
    lui     $t9, 0x801d
    beqz    $v0, branch_0x801e4824
    addiu   $a2, $zero, 0xff
    addiu   $at, $zero, 0xb
    bne     $v0, $at, branch_0x801e4834
branch_0x801e4824:
    lui     $t4, 0x8022
    addiu   $t4, $t4, 0x69a8
    b       branch_0x801e4874
    addu    $v1, $t0, $t4
branch_0x801e4834:
    addiu   $at, $zero, 0x4
    bne     $v0, $at, branch_0x801e486c
    lui     $t8, 0x8022
    lui     $t5, 0x800d
    lw      $t5, 0x7ef0($t5)
    lui     $t7, 0x8022
    lui     $t6, 0x8022
    bnez    $t5, branch_0x801e4864
    addiu   $t7, $t7, 0x6970
    addiu   $t6, $t6, 0x6990
    b       branch_0x801e4874
    addu    $v1, $t0, $t6
branch_0x801e4864:
    b       branch_0x801e4874
    addu    $v1, $t0, $t7
branch_0x801e486c:
    addiu   $t8, $t8, 0x6960
    addu    $v1, $t0, $t8
branch_0x801e4874:
    lh      $t9, -0x1c7c($t9)
    addiu   $a3, $zero, 0xff
    addiu   $t3, $zero, 0xff
    bne     $t1, $t9, branch_0x801e4890
    addiu   $t4, $zero, 0xff
    b       branch_0x801e4894
    addiu   $a1, $zero, 0x6
branch_0x801e4890:
    or      $a1, $zero, $zero
branch_0x801e4894:
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x28($sp)
    sw      $t8, 0x24($sp)
    sw      $t7, 0x20($sp)
    sw      $t6, 0x1c($sp)
    sw      $t5, 0x18($sp)
    sw      $t5, 0x34($sp)
    sw      $t3, 0x10($sp)
    sw      $t4, 0x14($sp)
    sw      $t3, 0x2c($sp)
    sw      $t4, 0x30($sp)
    sw      $v1, 0x50($sp)
    sw      $t0, 0x48($sp)
    sw      $t1, 0x6c($sp)
    jal     Function_0x801e91f4
    sw      $t2, 0x40($sp)
    lw      $v1, 0x50($sp)
    lw      $t2, 0x40($sp)
    lw      $t6, 0x54($sp)
    lh      $a3, 0x2($v1)
    lw      $a2, 0x4($v1)
    addu    $t7, $t6, $t2
    addiu   $t8, $t7, 0x1e
    sw      $t8, 0x10($sp)
    sw      $zero, 0x14($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e3c40
    addiu   $a3, $a3, 0x80
    lw      $t1, 0x6c($sp)
    lui     $t9, 0x801d
    lh      $t9, -0x1c7a($t9)
    lw      $t0, 0x48($sp)
    lw      $t2, 0x40($sp)
    addiu   $t1, $t1, 0x1
    slt     $at, $t1, $t9
    sw      $v0, 0x70($sp)
    addiu   $t0, $t0, 0x8
    bnez    $at, branch_0x801e4804
    addiu   $t2, $t2, 0xf
    or      $a0, $v0, $zero
branch_0x801e4948:
    jal     Function_0x801e52b4
    nop
    sw      $v0, 0x70($sp)
    lw      $ra, 0x3c($sp)
branch_0x801e4958:
    lw      $v0, 0x70($sp)
    addiu   $sp, $sp, 0x70
    jr      $ra
    nop

.globl Function_0x801e4968
Function_0x801e4968: # 0x801e4968
    addiu   $t6, $zero, 0x1
    lui     $at, 0x801d
    sh      $t6, -0x1c74($at)
    lui     $v0, 0x801d
    lui     $at, 0x801d
    addiu   $v0, $v0, 0xe3a8
    sh      $zero, -0x1c7c($at)
    lw      $t7, 0x0($v0)
    lui     $at, 0x8023
    sw      $t7, -0x7930($at)
    jr      $ra
    sw      $zero, 0x0($v0)

.globl Function_0x801e4998
Function_0x801e4998: # 0x801e4998
    lui     $t7, 0x8023
    lw      $t7, -0x7930($t7)
    addiu   $t6, $zero, 0xffff
    lui     $at, 0x801d
    sh      $t6, -0x1c7c($at)
    lui     $at, 0x801d
    sw      $t7, -0x1c58($at)
    lui     $at, 0x801d
    jr      $ra
    sh      $zero, -0x1c78($at)

.globl Function_0x801e49c0
Function_0x801e49c0: # 0x801e49c0
    mtc1    $a1, $t6
    lui     $at, 0x8022
    ldc1    $0, 0x6a00($1)
    cvt.d.s $f4, $f14
    addiu   $sp, $sp, 0xff90
    div.d   $f6, $f4, $f0
    sdc1    $20, 0x10($29)
    mtc1    $a2, $s4
    sdc1    $22, 0x18($29)
    mtc1    $a3, $s6
    cvt.d.s $f8, $f20
    sdc1    $24, 0x20($29)
    cvt.d.s $f4, $f22
    lwc1    $f24, 0x80($sp)
    sdc1    $26, 0x28($29)
    lwc1    $f26, 0x84($sp)
    sdc1    $28, 0x30($29)
    lwc1    $f28, 0x88($sp)
    lui     $at, 0x4780
    sw      $ra, 0x3c($sp)
    lui     $t1, 0xffff
    div.d   $f10, $f8, $f0
    cvt.s.d $f14, $f6
    cvt.d.s $f8, $f24
    div.d   $f6, $f4, $f0
    cvt.s.d $f20, $f10
    cvt.d.s $f4, $f26
    div.d   $f10, $f8, $f0
    cvt.s.d $f22, $f6
    cvt.d.s $f8, $f28
    div.d   $f6, $f4, $f0
    lwc1    $f4, 0x98($sp)
    cvt.s.d $f24, $f10
    div.d   $f10, $f8, $f0
    cvt.s.d $f26, $f6
    mtc1    $at, $a2
    nop
    mul.s   $f16, $f4, $f6
    nop
    mul.s   $f8, $f14, $f16
    nop
    mul.s   $f4, $f20, $f16
    trunc.w.s   $f6, $f4
    cvt.s.d $f28, $f10
    mfc1    $v1, $a2
    trunc.w.s   $f10, $f8
    mul.s   $f8, $f22, $f16
    andi    $t6, $v1, 0xffff
    srl     $t9, $v1, 16
    mul.s   $f4, $f26, $f22
    mfc1    $v0, $t2
    mul.s   $f6, $f28, $f20
    and     $t8, $v0, $t1
    or      $t2, $t8, $t9
    sll     $t5, $v0, 16
    or      $t7, $t5, $t6
    sw      $t2, 0x10($a0)
    trunc.w.s   $f10, $f8
    mul.s   $f8, $f28, $f14
    sw      $t7, 0x30($a0)
    sub.s   $f18, $f4, $f6
    mfc1    $a1, $t2
    mul.s   $f10, $f24, $f22
    and     $t4, $a1, $t1
    mul.s   $f4, $f24, $f20
    sll     $t8, $a1, 16
    sw      $t4, 0x14($a0)
    mul.s   $f6, $f26, $f14
    sw      $t8, 0x34($a0)
    sub.s   $f2, $f8, $f10
    swc1    $f2, 0x48($sp)
    lwc1    $f8, 0x48($sp)
    sub.s   $f0, $f4, $f6
    swc1    $f2, 0x64($sp)
    mul.s   $f10, $f8, $f8
    swc1    $f0, 0x60($sp)
    mul.s   $f4, $f18, $f18
    mtc1    $zero, $a1
    mul.s   $f8, $f0, $f0
    add.s   $f6, $f4, $f10
    mtc1    $zero, $a0
    add.s   $f2, $f6, $f8
    cvt.d.s $f10, $f2
    c.eq.d $f4, $f10
    nop
    bc1t    branch_0x801e4d28
    nop
    mov.s   $f12, $f2
    sw      $a0, 0x70($sp)
    swc1    $f14, 0x74($sp)
    swc1    $f16, 0x50($sp)
    jal     sqrtf
    swc1    $f18, 0x68($sp)
    lwc1    $f16, 0x50($sp)
    lwc1    $f18, 0x68($sp)
    lwc1    $f4, 0x64($sp)
    div.s   $f2, $f16, $f0
    lw      $a0, 0x70($sp)
    lui     $t1, 0xffff
    lwc1    $f14, 0x74($sp)
    mul.s   $f6, $f18, $f2
    nop
    mul.s   $f10, $f4, $f2
    trunc.w.s   $f8, $f6
    trunc.w.s   $f6, $f10
    mfc1    $v0, $t0
    mfc1    $v1, $a2
    and     $t3, $v0, $t1
    sll     $t8, $v0, 16
    srl     $t4, $v1, 16
    or      $t5, $t3, $t4
    sw      $t5, 0x0($a0)
    lwc1    $f8, 0x60($sp)
    andi    $t9, $v1, 0xffff
    or      $t2, $t8, $t9
    mul.s   $f4, $f8, $f2
    sw      $t2, 0x20($a0)
    trunc.w.s   $f10, $f4
    mfc1    $a1, $t2
    nop
    and     $t7, $a1, $t1
    sll     $t3, $a1, 16
    sw      $t7, 0x4($a0)
    sw      $t3, 0x24($a0)
    lwc1    $f6, 0x60($sp)
    lwc1    $f4, 0x64($sp)
    swc1    $f16, 0x50($sp)
    mul.s   $f8, $f20, $f6
    sw      $a0, 0x70($sp)
    mul.s   $f10, $f22, $f4
    sub.s   $f12, $f8, $f10
    mul.s   $f8, $f22, $f18
    nop
    mul.s   $f10, $f14, $f6
    swc1    $f12, 0x4c($sp)
    lwc1    $f0, 0x4c($sp)
    mov.s   $f24, $f12
    sub.s   $f26, $f8, $f10
    mul.s   $f8, $f14, $f4
    nop
    mul.s   $f10, $f20, $f18
    swc1    $f26, 0x48($sp)
    sub.s   $f28, $f8, $f10
    mul.s   $f8, $f0, $f0
    nop
    mul.s   $f10, $f26, $f26
    swc1    $f28, 0x44($sp)
    mul.s   $f4, $f28, $f28
    add.s   $f6, $f8, $f10
    jal     sqrtf
    add.s   $f12, $f6, $f4
    lui     $at, 0x4780
    mtc1    $at, $t4
    lui     $at, 0x3ff0
    mtc1    $at, $t1
    mtc1    $zero, $t0
    cvt.d.s $f10, $f0
    lwc1    $f16, 0x50($sp)
    div.d   $f6, $f8, $f10
    lw      $a0, 0x70($sp)
    lui     $t1, 0xffff
    cvt.s.d $f2, $f6
    mul.s   $f24, $f24, $f2
    nop
    mul.s   $f26, $f26, $f2
    nop
    mul.s   $f28, $f28, $f2
    nop
    mul.s   $f4, $f24, $f16
    trunc.w.s   $f8, $f4
    mul.s   $f10, $f26, $f16
    nop
    mul.s   $f4, $f28, $f16
    mfc1    $v0, $t0
    nop
    and     $t6, $v0, $t1
    sll     $t3, $v0, 16
    trunc.w.s   $f6, $f10
    trunc.w.s   $f8, $f4
    mfc1    $v1, $a2
    mfc1    $a1, $t0
    srl     $t7, $v1, 16
    or      $t8, $t6, $t7
    andi    $t4, $v1, 0xffff
    or      $t5, $t3, $t4
    and     $t2, $a1, $t1
    sll     $t6, $a1, 16
    sw      $t8, 0x8($a0)
    sw      $t2, 0xc($a0)
    sw      $t5, 0x28($a0)
    sw      $t6, 0x2c($a0)
    lwc1    $f10, 0x8c($sp)
    lwc1    $f8, 0x90($sp)
    mul.s   $f6, $f12, $f10
    nop
    mul.s   $f10, $f12, $f8
    trunc.w.s   $f4, $f6
    trunc.w.s   $f6, $f10
    mfc1    $a2, $a0
    mfc1    $a3, $a2
    and     $t9, $a2, $t1
    sll     $t7, $a2, 16
    srl     $t2, $a3, 16
    or      $t3, $t9, $t2
    sw      $t3, 0x18($a0)
    lwc1    $f4, 0x94($sp)
    andi    $t8, $a3, 0xffff
    or      $t9, $t7, $t8
    mul.s   $f8, $f12, $f4
    sw      $t9, 0x38($a0)
    trunc.w.s   $f10, $f8
    mfc1    $t0, $t2
    nop
    and     $t5, $t0, $t1
    ori     $t6, $t5, 0x1
    sll     $t2, $t0, 16
    sw      $t6, 0x1c($a0)
    sw      $t2, 0x3c($a0)
branch_0x801e4d28:
    lw      $ra, 0x3c($sp)
    ldc1    $20, 0x10($29)
    ldc1    $22, 0x18($29)
    ldc1    $24, 0x20($29)
    ldc1    $26, 0x28($29)
    ldc1    $28, 0x30($29)
    jr      $ra
    addiu   $sp, $sp, 0x70

.globl Function_0x801e4d48
Function_0x801e4d48: # 0x801e4d48
    addiu   $sp, $sp, 0xff80
    lui     $t7, 0x8023
    lw      $t7, -0x7920($t7)
    sw      $s0, 0x38($sp)
    or      $s0, $a0, $zero
    sw      $ra, 0x3c($sp)
    sw      $a1, 0x84($sp)
    sw      $a2, 0x88($sp)
    beq     $a2, $t7, branch_0x801e4d78
    sw      $a3, 0x8c($sp)
    lui     $at, 0x8022
    sw      $zero, 0x69f0($at)
branch_0x801e4d78:
    lw      $t8, 0x88($sp)
    lui     $t4, 0x8022
    lui     $at, 0x8023
    sll     $t9, $t8, 2
    addu    $t4, $t4, $t9
    lw      $t4, 0x369c($t4)
    lui     $t6, 0x8022
    lw      $t6, 0x69f0($t6)
    sw      $t8, -0x7920($at)
    lw      $t5, 0x44($t4)
    sll     $t7, $t6, 1
    lw      $t9, 0x4($t4)
    addu    $t8, $t5, $t7
    lh      $v1, 0x0($t8)
    lui     $at, 0x3f80
    lw      $a0, 0x90($sp)
    sll     $t6, $v1, 2
    subu    $t6, $t6, $v1
    sll     $t6, $t6, 2
    addu    $v0, $t9, $t6
    lb      $t9, 0x9($v0)
    lb      $t5, 0x6($v0)
    lb      $t7, 0x7($v0)
    mtc1    $t9, $t2
    mtc1    $t5, $a0
    lb      $t8, 0x8($v0)
    cvt.s.w $f16, $f10
    mtc1    $t7, $a2
    mtc1    $t8, $t0
    cvt.s.w $f4, $f4
    swc1    $f16, 0x10($sp)
    lb      $t6, 0xa($v0)
    mtc1    $t6, $s2
    mfc1    $a1, $a0
    cvt.s.w $f6, $f6
    cvt.s.w $f4, $f18
    mfc1    $a2, $a2
    cvt.s.w $f8, $f8
    swc1    $f4, 0x14($sp)
    lb      $t5, 0xb($v0)
    mtc1    $t5, $a2
    mfc1    $a3, $t0
    cvt.s.w $f8, $f6
    swc1    $f8, 0x18($sp)
    lh      $t7, 0x0($v0)
    mtc1    $t7, $t2
    nop
    cvt.s.w $f16, $f10
    mtc1    $at, $t2
    swc1    $f16, 0x1c($sp)
    lh      $t8, 0x2($v0)
    mtc1    $t8, $s2
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x20($sp)
    lh      $t9, 0x4($v0)
    sw      $t4, 0x7c($sp)
    swc1    $f10, 0x28($sp)
    mtc1    $t9, $a2
    nop
    cvt.s.w $f8, $f6
    jal     Function_0x801e49c0
    swc1    $f8, 0x24($sp)
    lw      $t1, 0x90($sp)
    lui     $at, 0x1fff
    lw      $v1, 0x84($sp)
    lw      $t4, 0x7c($sp)
    ori     $at, $at, 0xffff
    or      $v0, $s0, $zero
    lui     $t6, 0x104
    ori     $t6, $t6, 0x40
    and     $t5, $t1, $at
    sw      $t5, 0x4($v0)
    sw      $t6, 0x0($v0)
    lui     $t7, %hi(Unknown_0x801ce398)
    lw      $t7, %lo(Unknown_0x801ce398)($t7)
    addiu   $s0, $s0, 0x8
    addiu   $at, $zero, 0x15
    bne     $t7, $at, branch_0x801e4ef8
    or      $v0, $s0, $zero
    or      $v0, $s0, $zero
    lui     $t8, 0x600
    sll     $t9, $v1, 2
    lui     $t6, 0x801d
    addu    $t6, $t6, $t9
    sw      $t8, 0x0($v0)
    sll     $t5, $v1, 4
    lw      $t6, -0x1900($t6)
    addu    $t5, $t5, $v1
    lui     $t7, 0x8022
    addiu   $t7, $t7, 0x7820
    sll     $t5, $t5, 2
    addu    $t3, $t5, $t7
    addiu   $s0, $s0, 0x8
    b       branch_0x801e4f24
    sw      $t6, 0x4($v0)
branch_0x801e4ef8:
    sll     $t9, $v1, 4
    addu    $t9, $t9, $v1
    lui     $t6, 0x8022
    addiu   $t6, $t6, 0x7820
    sll     $t9, $t9, 2
    lui     $t8, 0x600
    sw      $t8, 0x0($v0)
    addu    $t3, $t9, $t6
    lw      $t5, 0x8($t3)
    addiu   $s0, $s0, 0x8
    sw      $t5, 0x4($v0)
branch_0x801e4f24:
    or      $t0, $s0, $zero
    lui     $t7, 0xbd00
    sw      $t7, 0x0($t0)
    sw      $zero, 0x4($t0)
    lui     $t9, 0x8022
    lw      $t9, 0x69f0($t9)
    lw      $t8, 0x48($t4)
    lw      $t7, 0x4($t4)
    sll     $t6, $t9, 1
    addu    $t5, $t8, $t6
    lh      $v1, 0x0($t5)
    lui     $at, 0x3f80
    addiu   $a0, $t1, 0x40
    sll     $t9, $v1, 2
    subu    $t9, $t9, $v1
    sll     $t9, $t9, 2
    addu    $v0, $t7, $t9
    lb      $t7, 0x9($v0)
    lb      $t8, 0x6($v0)
    lb      $t6, 0x7($v0)
    mtc1    $t7, $a2
    mtc1    $t8, $s0
    lb      $t5, 0x8($v0)
    cvt.s.w $f8, $f6
    mtc1    $t6, $s2
    mtc1    $t5, $a0
    addiu   $s0, $s0, 0x8
    cvt.s.w $f16, $f16
    swc1    $f8, 0x10($sp)
    lb      $t9, 0xa($v0)
    mtc1    $t9, $t2
    mfc1    $a1, $s0
    cvt.s.w $f18, $f18
    cvt.s.w $f16, $f10
    mfc1    $a2, $s2
    cvt.s.w $f4, $f4
    swc1    $f16, 0x14($sp)
    lb      $t8, 0xb($v0)
    mtc1    $t8, $s2
    mfc1    $a3, $a0
    cvt.s.w $f4, $f18
    swc1    $f4, 0x18($sp)
    lh      $t6, 0x0($v0)
    mtc1    $t6, $a2
    nop
    cvt.s.w $f8, $f6
    mtc1    $at, $a2
    swc1    $f8, 0x1c($sp)
    lh      $t5, 0x2($v0)
    mtc1    $t5, $t2
    nop
    cvt.s.w $f16, $f10
    swc1    $f16, 0x20($sp)
    lh      $t7, 0x4($v0)
    sw      $t4, 0x7c($sp)
    sw      $t3, 0x4c($sp)
    mtc1    $t7, $s2
    sw      $a0, 0x48($sp)
    swc1    $f6, 0x28($sp)
    cvt.s.w $f4, $f18
    jal     Function_0x801e49c0
    swc1    $f4, 0x24($sp)
    lui     $t9, 0x104
    lw      $t3, 0x4c($sp)
    lw      $t4, 0x7c($sp)
    ori     $t9, $t9, 0x40
    or      $t0, $s0, $zero
    sw      $t9, 0x0($t0)
    lw      $t8, 0x48($sp)
    lui     $at, 0x1fff
    ori     $at, $at, 0xffff
    addiu   $s0, $s0, 0x8
    and     $t6, $t8, $at
    sw      $t6, 0x4($t0)
    or      $t1, $s0, $zero
    lui     $t5, 0x600
    sw      $t5, 0x0($t1)
    lw      $t7, 0x4($t3)
    addiu   $s0, $s0, 0x8
    or      $t2, $s0, $zero
    sw      $t7, 0x4($t1)
    lui     $t9, 0xbd00
    sw      $t9, 0x0($t2)
    sw      $zero, 0x4($t2)
    lui     $t6, 0x8022
    lw      $t6, 0x69f0($t6)
    lw      $t8, 0x4c($t4)
    lw      $t9, 0x4($t4)
    sll     $t5, $t6, 1
    addu    $t7, $t8, $t5
    lh      $v1, 0x0($t7)
    lw      $a0, 0x90($sp)
    lui     $at, 0x3f80
    sll     $t6, $v1, 2
    subu    $t6, $t6, $v1
    sll     $t6, $t6, 2
    addu    $v0, $t9, $t6
    lb      $t9, 0x9($v0)
    lb      $t8, 0x6($v0)
    lb      $t5, 0x7($v0)
    mtc1    $t9, $s2
    mtc1    $t8, $t0
    lb      $t7, 0x8($v0)
    cvt.s.w $f4, $f18
    mtc1    $t5, $t2
    mtc1    $t7, $s0
    addiu   $a0, $a0, 0x80
    addiu   $s0, $s0, 0x8
    cvt.s.w $f8, $f8
    swc1    $f4, 0x10($sp)
    lb      $t6, 0xa($v0)
    mtc1    $t6, $a2
    mfc1    $a1, $t0
    cvt.s.w $f10, $f10
    cvt.s.w $f8, $f6
    mfc1    $a2, $t2
    cvt.s.w $f16, $f16
    swc1    $f8, 0x14($sp)
    lb      $t8, 0xb($v0)
    mtc1    $t8, $t2
    mfc1    $a3, $s0
    cvt.s.w $f16, $f10
    swc1    $f16, 0x18($sp)
    lh      $t5, 0x0($v0)
    mtc1    $t5, $s2
    nop
    cvt.s.w $f4, $f18
    mtc1    $at, $s2
    swc1    $f4, 0x1c($sp)
    lh      $t7, 0x2($v0)
    mtc1    $t7, $a2
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x20($sp)
    lh      $t9, 0x4($v0)
    sw      $a0, 0x44($sp)
    swc1    $f18, 0x28($sp)
    mtc1    $t9, $t2
    nop
    cvt.s.w $f16, $f10
    jal     Function_0x801e49c0
    swc1    $f16, 0x24($sp)
    lui     $t6, 0x104
    lw      $t3, 0x4c($sp)
    ori     $t6, $t6, 0x40
    or      $v1, $s0, $zero
    sw      $t6, 0x0($v1)
    lw      $t8, 0x44($sp)
    lui     $at, 0x1fff
    ori     $at, $at, 0xffff
    addiu   $s0, $s0, 0x8
    and     $t5, $t8, $at
    sw      $t5, 0x4($v1)
    or      $a0, $s0, $zero
    lui     $t7, 0x600
    sw      $t7, 0x0($a0)
    lw      $t9, 0x0($t3)
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    sw      $t9, 0x4($a0)
    lui     $t6, 0xbd00
    sw      $t6, 0x0($a1)
    sw      $zero, 0x4($a1)
    lw      $ra, 0x3c($sp)
    addiu   $v0, $s0, 0x8
    lw      $s0, 0x38($sp)
    jr      $ra
    addiu   $sp, $sp, 0x80

.globl Function_0x801e51c4
Function_0x801e51c4: # 0x801e51c4
    nop
    nop
    nop

.globl Function_0x801e51d0
Function_0x801e51d0: # 0x801e51d0
    addiu   $sp, $sp, 0xffc8
    sw      $s6, 0x30($sp)
    sw      $s0, 0x18($sp)
    sw      $s5, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    lui     $s0, 0x8023
    lui     $s6, 0x8023
    sw      $ra, 0x34($sp)
    addiu   $s6, $s6, 0x87cc
    addiu   $s0, $s0, 0x86f0
    addiu   $s1, $zero, 0x1
    addiu   $s2, $zero, 0x1
    addiu   $s3, $zero, 0x2
    addiu   $s4, $zero, 0x3
    addiu   $s5, $zero, 0x4
    lhu     $v0, 0x0($s0)
branch_0x801e521c:
    or      $a0, $s0, $zero
    beq     $v0, $s2, branch_0x801e5248
    nop
    beq     $v0, $s3, branch_0x801e5258
    or      $a0, $s0, $zero
    beq     $v0, $s4, branch_0x801e5268
    or      $a0, $s0, $zero
    beq     $v0, $s5, branch_0x801e5278
    or      $a0, $s0, $zero
    b       branch_0x801e5284
    addiu   $s0, $s0, 0x2c
branch_0x801e5248:
    jal     Function_0x801e5dd4
    sh      $s1, 0x6($s0)
    b       branch_0x801e5284
    addiu   $s0, $s0, 0x2c
branch_0x801e5258:
    jal     Function_0x801e6008
    sh      $s1, 0x6($s0)
    b       branch_0x801e5284
    addiu   $s0, $s0, 0x2c
branch_0x801e5268:
    jal     Function_0x801e6454
    sh      $s1, 0x6($s0)
    b       branch_0x801e5284
    addiu   $s0, $s0, 0x2c
branch_0x801e5278:
    jal     Function_0x801e664c
    sh      $s1, 0x6($s0)
    addiu   $s0, $s0, 0x2c
branch_0x801e5284:
    bnel    $s0, $s6, branch_0x801e521c
    lhu     $v0, 0x0($s0)
    lw      $ra, 0x34($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    lw      $s5, 0x2c($sp)
    lw      $s6, 0x30($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38

.globl Function_0x801e52b4
Function_0x801e52b4: # 0x801e52b4
    addiu   $sp, $sp, 0xfe50
    sw      $fp, 0x78($sp)
    sw      $s4, 0x68($sp)
    sw      $s3, 0x64($sp)
    sw      $s0, 0x58($sp)
    sdc1    $20, 0x50($29)
    lui     $at, 0x3f80
    or      $s0, $a0, $zero
    sw      $ra, 0x7c($sp)
    sw      $s7, 0x74($sp)
    sw      $s6, 0x70($sp)
    sw      $s5, 0x6c($sp)
    lui     $s3, 0x8023
    lui     $s4, 0x708
    lui     $fp, 0x8
    mtc1    $at, $s4
    sw      $s2, 0x60($sp)
    sw      $s1, 0x5c($sp)
    ori     $fp, $fp, 0x200
    ori     $s4, $s4, 0x200
    addiu   $s3, $s3, 0x86f0
    lui     $s5, 0xe600
    lui     $s6, 0xf400
    lui     $s7, 0xe700
    lui     $ra, 0xe400
    addiu   $a0, $zero, 0x1
    lui     $t5, 0xf200
    lhu     $t6, 0x6($s3)
branch_0x801e5324:
    beqz    $t6, branch_0x801e5d88
    nop
    lhu     $v1, 0x0($s3)
    addiu   $at, $zero, 0x2
    or      $s2, $zero, $zero
    beq     $v1, $a0, branch_0x801e5364
    or      $s1, $zero, $zero
    beq     $v1, $at, branch_0x801e55d4
    addiu   $at, $zero, 0x3
    beq     $v1, $at, branch_0x801e5a84
    lui     $a2, 0x700
    addiu   $at, $zero, 0x4
    beq     $v1, $at, branch_0x801e5b04
    or      $v0, $s0, $zero
    b       branch_0x801e5d88
    nop
branch_0x801e5364:
    lhu     $t7, 0x2($s3)
    lui     $a2, 0x700
    addiu   $a2, $a2, 0x0
    bne     $a0, $t7, branch_0x801e5398
    or      $v0, $s0, $zero
    or      $v0, $s0, $zero
    lui     $t9, 0x107
    addiu   $t9, $t9, 0xf030
    lui     $t8, 0x600
    sw      $t8, 0x0($v0)
    sw      $t9, 0x4($v0)
    b       branch_0x801e5410
    addiu   $s0, $s0, 0x8
branch_0x801e5398:
    lui     $t7, 0x107
    addiu   $t7, $t7, 0xf0a8
    addiu   $s0, $s0, 0x8
    lui     $t6, 0x600
    sw      $t6, 0x0($v0)
    sw      $t7, 0x4($v0)
    or      $v1, $s0, $zero
    addiu   $s0, $s0, 0x8
    lui     $t8, 0xfcff
    lui     $t9, 0xfffc
    ori     $t9, $t9, 0xf279
    ori     $t8, $t8, 0xffff
    or      $a0, $s0, $zero
    sw      $t8, 0x0($v1)
    sw      $t9, 0x4($v1)
    lui     $t6, 0x103
    ori     $t6, $t6, 0x40
    addiu   $s0, $s0, 0x8
    lui     $t7, 0x102
    sw      $t6, 0x0($a0)
    sw      $a2, 0x4($a0)
    ori     $t7, $t7, 0x40
    or      $a1, $s0, $zero
    sw      $t7, 0x0($a1)
    lhu     $t8, 0x4($s3)
    addiu   $s0, $s0, 0x8
    sll     $t9, $t8, 6
    addu    $t6, $a2, $t9
    addiu   $t7, $t6, 0x900
    sw      $t7, 0x4($a1)
branch_0x801e5410:
    or      $v0, $s0, $zero
    lui     $t8, 0xfd18
    lui     $t6, 0x804
    addiu   $t6, $t6, 0x2008
    ori     $t8, $t8, 0x9f
    addiu   $s0, $s0, 0x8
    sll     $t9, $s2, 2
    addu    $t7, $t9, $t6
    or      $v1, $s0, $zero
    sw      $t8, 0x0($v0)
    lui     $t8, 0xf518
    sw      $t7, 0x4($v0)
    ori     $t8, $t8, 0x5000
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    sw      $t8, 0x0($v1)
    sw      $s4, 0x4($v1)
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($a0)
    sw      $s5, 0x0($a0)
    lui     $t9, 0x727
    ori     $t9, $t9, 0xc010
    or      $a2, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $t9, 0x4($a1)
    sw      $s6, 0x0($a1)
    or      $v0, $s0, $zero
    sw      $zero, 0x4($a2)
    sw      $s7, 0x0($a2)
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    sw      $fp, 0x4($v0)
    sw      $t8, 0x0($v0)
    lui     $t7, 0x27
    ori     $t7, $t7, 0xc010
    sw      $t7, 0x4($v1)
    sw      $t5, 0x0($v1)
    lhu     $t8, 0x2($s3)
    addiu   $s0, $s0, 0x8
    addiu   $at, $zero, 0x1
    bne     $t8, $at, branch_0x801e5558
    or      $a0, $s0, $zero
    lw      $t9, 0x8($s3)
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    addiu   $t6, $t9, 0xa0
    sll     $t7, $t6, 2
    andi    $t8, $t7, 0xfff
    lw      $t7, 0xc($s3)
    sll     $t9, $t8, 12
    or      $t6, $t9, $ra
    addu    $t8, $t7, $s1
    addiu   $t9, $t8, 0x5
    sll     $t7, $t9, 2
    andi    $t8, $t7, 0xfff
    or      $t9, $t6, $t8
    sw      $t9, 0x0($v0)
    lw      $t7, 0x8($s3)
    or      $v1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sll     $t6, $t7, 2
    lw      $t7, 0xc($s3)
    andi    $t8, $t6, 0xfff
    sll     $t9, $t8, 12
    addu    $t6, $t7, $s1
    sll     $t8, $t6, 2
    andi    $t7, $t8, 0xfff
    or      $t6, $t9, $t7
    sw      $t6, 0x4($v0)
    lui     $t7, 0x400
    lui     $t8, 0xb300
    or      $a0, $s0, $zero
    sw      $t8, 0x0($v1)
    ori     $t7, $t7, 0x400
    sw      $zero, 0x4($v1)
    lui     $t9, 0xb200
    sw      $t9, 0x0($a0)
    sw      $t7, 0x4($a0)
    b       branch_0x801e55bc
    addiu   $s0, $s0, 0x8
branch_0x801e5558:
    addiu   $t6, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x20($sp)
    sw      $t7, 0x30($sp)
    sw      $t7, 0x40($sp)
    sw      $t9, 0x1c($sp)
    sw      $t9, 0x2c($sp)
    sw      $t9, 0x3c($sp)
    sw      $t8, 0x18($sp)
    sw      $t8, 0x28($sp)
    sw      $t8, 0x38($sp)
    sw      $t6, 0x14($sp)
    sw      $t6, 0x24($sp)
    sw      $t6, 0x34($sp)
    addiu   $a1, $zero, 0xa0
    addiu   $a2, $zero, 0x6
    or      $a3, $zero, $zero
    sw      $s1, 0x10($sp)
    jal     Function_0x801e8560
    swc1    $f20, 0x44($sp)
    lui     $t5, 0xf200
    lui     $ra, 0xe400
    or      $s0, $v0, $zero
branch_0x801e55bc:
    addiu   $s1, $s1, 0x5
    addiu   $at, $zero, 0x28
    bne     $s1, $at, branch_0x801e5410
    addiu   $s2, $s2, 0x320
    b       branch_0x801e5d88
    addiu   $a0, $zero, 0x1
branch_0x801e55d4:
    lhu     $t6, 0x2($s3)
    lui     $a2, 0x700
    addiu   $a2, $a2, 0x0
    bne     $a0, $t6, branch_0x801e5608
    or      $v0, $s0, $zero
    or      $v0, $s0, $zero
    lui     $t9, 0x107
    addiu   $t9, $t9, 0xf030
    lui     $t8, 0x600
    sw      $t8, 0x0($v0)
    sw      $t9, 0x4($v0)
    b       branch_0x801e5680
    addiu   $s0, $s0, 0x8
branch_0x801e5608:
    lui     $t6, 0x107
    addiu   $t6, $t6, 0xf0a8
    addiu   $s0, $s0, 0x8
    lui     $t7, 0x600
    sw      $t7, 0x0($v0)
    sw      $t6, 0x4($v0)
    or      $v1, $s0, $zero
    addiu   $s0, $s0, 0x8
    lui     $t8, 0xfcff
    lui     $t9, 0xfffc
    ori     $t9, $t9, 0xf279
    ori     $t8, $t8, 0xffff
    or      $a0, $s0, $zero
    sw      $t8, 0x0($v1)
    sw      $t9, 0x4($v1)
    lui     $t7, 0x103
    ori     $t7, $t7, 0x40
    addiu   $s0, $s0, 0x8
    lui     $t6, 0x102
    sw      $t7, 0x0($a0)
    sw      $a2, 0x4($a0)
    ori     $t6, $t6, 0x40
    or      $a1, $s0, $zero
    sw      $t6, 0x0($a1)
    lhu     $t8, 0x4($s3)
    addiu   $s0, $s0, 0x8
    sll     $t9, $t8, 6
    addu    $t7, $a2, $t9
    addiu   $t6, $t7, 0x900
    sw      $t6, 0x4($a1)
branch_0x801e5680:
    lw      $t8, 0x28($s3)
    or      $s2, $zero, $zero
    or      $s1, $zero, $zero
    beqz    $t8, branch_0x801e5870
    nop
    or      $s1, $zero, $zero
    or      $s2, $zero, $zero
branch_0x801e569c:
    or      $v0, $s0, $zero
    lui     $t9, 0xfd18
    lui     $t6, 0x805
    addiu   $t6, $t6, 0x9008
    ori     $t9, $t9, 0xcb
    addiu   $s0, $s0, 0x8
    sll     $t7, $s2, 2
    addu    $t8, $t7, $t6
    or      $v1, $s0, $zero
    sw      $t9, 0x0($v0)
    lui     $t9, 0xf518
    sw      $t8, 0x4($v0)
    ori     $t9, $t9, 0x6600
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    sw      $t9, 0x0($v1)
    sw      $s4, 0x4($v1)
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($a0)
    sw      $s5, 0x0($a0)
    lui     $t7, 0x732
    ori     $t7, $t7, 0xc010
    or      $a2, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $t7, 0x4($a1)
    sw      $s6, 0x0($a1)
    or      $v0, $s0, $zero
    sw      $zero, 0x4($a2)
    sw      $s7, 0x0($a2)
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    sw      $fp, 0x4($v0)
    sw      $t9, 0x0($v0)
    lui     $t8, 0x32
    ori     $t8, $t8, 0xc010
    sw      $t8, 0x4($v1)
    sw      $t5, 0x0($v1)
    lhu     $t9, 0x2($s3)
    addiu   $s0, $s0, 0x8
    addiu   $at, $zero, 0x1
    bne     $t9, $at, branch_0x801e57e4
    or      $a0, $s0, $zero
    lw      $t7, 0x8($s3)
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    addiu   $t6, $t7, 0xcc
    sll     $t8, $t6, 2
    andi    $t9, $t8, 0xfff
    lw      $t8, 0xc($s3)
    sll     $t7, $t9, 12
    or      $t6, $t7, $ra
    addu    $t9, $t8, $s1
    addiu   $t7, $t9, 0x5
    sll     $t8, $t7, 2
    andi    $t9, $t8, 0xfff
    or      $t7, $t6, $t9
    sw      $t7, 0x0($v0)
    lw      $t8, 0x8($s3)
    or      $v1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sll     $t6, $t8, 2
    lw      $t8, 0xc($s3)
    andi    $t9, $t6, 0xfff
    sll     $t7, $t9, 12
    addu    $t6, $t8, $s1
    sll     $t9, $t6, 2
    andi    $t8, $t9, 0xfff
    or      $t6, $t7, $t8
    sw      $t6, 0x4($v0)
    lui     $t8, 0x400
    lui     $t9, 0xb300
    or      $a0, $s0, $zero
    sw      $t9, 0x0($v1)
    ori     $t8, $t8, 0x400
    sw      $zero, 0x4($v1)
    lui     $t7, 0xb200
    sw      $t7, 0x0($a0)
    sw      $t8, 0x4($a0)
    b       branch_0x801e5858
    addiu   $s0, $s0, 0x8
branch_0x801e57e4:
    addiu   $at, $zero, 0x13ec
    bne     $s2, $at, branch_0x801e57f8
    addiu   $a1, $zero, 0xcc
    b       branch_0x801e57fc
    addiu   $a2, $zero, 0x4
branch_0x801e57f8:
    addiu   $a2, $zero, 0x6
branch_0x801e57fc:
    addiu   $t6, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x20($sp)
    sw      $t8, 0x30($sp)
    sw      $t8, 0x40($sp)
    sw      $t7, 0x1c($sp)
    sw      $t7, 0x2c($sp)
    sw      $t7, 0x3c($sp)
    sw      $t9, 0x18($sp)
    sw      $t9, 0x28($sp)
    sw      $t9, 0x38($sp)
    sw      $t6, 0x14($sp)
    sw      $t6, 0x24($sp)
    sw      $t6, 0x34($sp)
    or      $a3, $zero, $zero
    sw      $s1, 0x10($sp)
    jal     Function_0x801e8560
    swc1    $f20, 0x44($sp)
    lui     $t5, 0xf200
    lui     $ra, 0xe400
    or      $s0, $v0, $zero
branch_0x801e5858:
    addiu   $s2, $s2, 0x3fc
    addiu   $at, $zero, 0x17e8
    bne     $s2, $at, branch_0x801e569c
    addiu   $s1, $s1, 0x5
    b       branch_0x801e5d88
    addiu   $a0, $zero, 0x1
branch_0x801e5870:
    lui     $t6, 0xfd18
    ori     $t6, $t6, 0x4f
    or      $v0, $s0, $zero
    sw      $t6, 0x0($v0)
    lui     $t9, 0x800d
    lw      $t9, 0x465c($t9)
    lui     $t8, 0x801c
    addiu   $s0, $s0, 0x8
    sll     $t7, $t9, 3
    subu    $t7, $t7, $t9
    sll     $t7, $t7, 4
    subu    $t7, $t7, $t9
    sll     $t7, $t7, 3
    addu    $t8, $t8, $t7
    lw      $t8, 0x269c($t8)
    sll     $t7, $s2, 2
    or      $v1, $s0, $zero
    sll     $t6, $t8, 2
    subu    $t6, $t6, $t8
    sll     $t6, $t6, 3
    addu    $t6, $t6, $t8
    sll     $t9, $t6, 9
    lui     $t6, 0x805
    addiu   $t6, $t6, 0x9008
    addu    $t8, $t9, $t7
    addu    $t9, $t8, $t6
    sw      $t9, 0x4($v0)
    lui     $t7, 0xf518
    ori     $t7, $t7, 0x2800
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    sw      $t7, 0x0($v1)
    sw      $s4, 0x4($v1)
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($a0)
    sw      $s5, 0x0($a0)
    lui     $t8, 0x713
    ori     $t8, $t8, 0xc008
    or      $a2, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $t8, 0x4($a1)
    sw      $s6, 0x0($a1)
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($a2)
    sw      $s7, 0x0($a2)
    or      $v1, $s0, $zero
    lui     $t9, 0x13
    ori     $t9, $t9, 0xc008
    sw      $fp, 0x4($v0)
    sw      $t7, 0x0($v0)
    addiu   $at, $zero, 0x26
    sw      $t9, 0x4($v1)
    sw      $t5, 0x0($v1)
    bne     $s1, $at, branch_0x801e5960
    addiu   $s0, $s0, 0x8
    b       branch_0x801e5964
    addiu   $a2, $zero, 0x1
branch_0x801e5960:
    addiu   $a2, $zero, 0x3
branch_0x801e5964:
    lhu     $t7, 0x2($s3)
    addiu   $at, $zero, 0x1
    or      $a0, $s0, $zero
    bne     $t7, $at, branch_0x801e5a10
    addiu   $a1, $zero, 0x50
    lw      $t8, 0x8($s3)
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    addiu   $t6, $t8, 0x50
    sll     $t9, $t6, 2
    andi    $t7, $t9, 0xfff
    lw      $t9, 0xc($s3)
    sll     $t8, $t7, 12
    or      $t6, $t8, $ra
    addu    $t7, $t9, $s1
    addiu   $t8, $t7, 0x2
    sll     $t9, $t8, 2
    andi    $t7, $t9, 0xfff
    or      $t8, $t6, $t7
    sw      $t8, 0x0($v0)
    lw      $t9, 0x8($s3)
    or      $v1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sll     $t6, $t9, 2
    lw      $t9, 0xc($s3)
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 12
    addu    $t6, $t9, $s1
    sll     $t7, $t6, 2
    andi    $t9, $t7, 0xfff
    or      $t6, $t8, $t9
    sw      $t6, 0x4($v0)
    lui     $t9, 0x400
    lui     $t7, 0xb300
    or      $a0, $s0, $zero
    sw      $t7, 0x0($v1)
    ori     $t9, $t9, 0x400
    sw      $zero, 0x4($v1)
    lui     $t8, 0xb200
    sw      $t8, 0x0($a0)
    sw      $t9, 0x4($a0)
    b       branch_0x801e5a6c
    addiu   $s0, $s0, 0x8
branch_0x801e5a10:
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x20($sp)
    sw      $t9, 0x30($sp)
    sw      $t9, 0x40($sp)
    sw      $t8, 0x1c($sp)
    sw      $t8, 0x2c($sp)
    sw      $t8, 0x3c($sp)
    sw      $t7, 0x18($sp)
    sw      $t7, 0x28($sp)
    sw      $t7, 0x38($sp)
    sw      $t6, 0x14($sp)
    sw      $t6, 0x24($sp)
    sw      $t6, 0x34($sp)
    or      $a3, $zero, $zero
    sw      $s1, 0x10($sp)
    jal     Function_0x801e8560
    swc1    $f20, 0x44($sp)
    lui     $t5, 0xf200
    lui     $ra, 0xe400
    or      $s0, $v0, $zero
branch_0x801e5a6c:
    addiu   $s1, $s1, 0x2
    addiu   $at, $zero, 0x28
    bne     $s1, $at, branch_0x801e5870
    addiu   $s2, $s2, 0xa0
    b       branch_0x801e5d88
    addiu   $a0, $zero, 0x1
branch_0x801e5a84:
    or      $v0, $s0, $zero
    lui     $t6, 0x103
    addiu   $a2, $a2, 0x0
    ori     $t6, $t6, 0x40
    addiu   $s0, $s0, 0x8
    lui     $t7, 0x102
    sw      $t6, 0x0($v0)
    sw      $a2, 0x4($v0)
    ori     $t7, $t7, 0x40
    or      $v1, $s0, $zero
    sw      $t7, 0x0($v1)
    lhu     $t8, 0x4($s3)
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    sll     $t9, $t8, 6
    addu    $t6, $a2, $t9
    addiu   $t7, $t6, 0x900
    sw      $t7, 0x4($v1)
    lui     $t8, 0x107
    lui     $a3, 0x600
    addiu   $t8, $t8, 0xf3a0
    addiu   $s0, $s0, 0x8
    sw      $t8, 0x4($a0)
    sw      $a3, 0x0($a0)
    or      $a1, $s0, $zero
    lui     $t9, 0x107
    addiu   $t9, $t9, 0xf408
    sw      $t9, 0x4($a1)
    sw      $a3, 0x0($a1)
    addiu   $s0, $s0, 0x8
    b       branch_0x801e5d88
    addiu   $a0, $zero, 0x1
branch_0x801e5b04:
    lw      $t6, 0x28($s3)
    lui     $a1, 0x107
    addiu   $a1, $a1, 0xf030
    beqz    $t6, branch_0x801e5b30
    addiu   $s0, $s0, 0x8
    lui     $t7, 0x807
    addiu   $t7, $t7, 0x1008
    addiu   $t2, $zero, 0xfff8
    addiu   $t4, $zero, 0xb0
    b       branch_0x801e5b44
    sw      $t7, 0x194($sp)
branch_0x801e5b30:
    lui     $t8, 0x806
    addiu   $t8, $t8, 0x8008
    or      $t2, $zero, $zero
    addiu   $t4, $zero, 0xa0
    sw      $t8, 0x194($sp)
branch_0x801e5b44:
    addiu   $v1, $t4, 0xffff
    sll     $t3, $v1, 1
    addiu   $t3, $t3, 0x9
    lui     $t9, 0x600
    srl     $t7, $t3, 3
    andi    $s2, $v1, 0xfff
    lui     $at, 0xfd18
    sw      $t9, 0x0($v0)
    or      $t6, $s2, $at
    andi    $t8, $t7, 0x1ff
    sll     $t9, $t8, 9
    lui     $at, 0xf518
    sll     $a0, $v1, 2
    andi    $t7, $a0, 0xfff
    or      $t3, $t9, $at
    lui     $at, 0x700
    sll     $t8, $t7, 12
    sw      $a1, 0x4($v0)
    or      $t9, $t8, $at
    or      $s2, $t6, $zero
    ori     $t6, $t9, 0x10
    ori     $t7, $t8, 0x10
    sw      $t7, 0x84($sp)
    sw      $t6, 0x88($sp)
    or      $t1, $zero, $zero
    or      $s1, $zero, $zero
    or      $t0, $zero, $zero
branch_0x801e5bb0:
    or      $v0, $s0, $zero
    sw      $s2, 0x0($v0)
    lw      $t9, 0x194($sp)
    addiu   $s0, $s0, 0x8
    sll     $t8, $t0, 2
    or      $v1, $s0, $zero
    addu    $t6, $t8, $t9
    sw      $t6, 0x4($v0)
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    sw      $s4, 0x4($v1)
    sw      $t3, 0x0($v1)
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    sw      $zero, 0x4($a0)
    sw      $s5, 0x0($a0)
    sw      $s6, 0x0($a1)
    lw      $t7, 0x88($sp)
    addiu   $s0, $s0, 0x8
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $t7, 0x4($a1)
    or      $v1, $s0, $zero
    sw      $zero, 0x4($v0)
    sw      $s7, 0x0($v0)
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    sw      $fp, 0x4($v1)
    sw      $t3, 0x0($v1)
    sw      $t5, 0x0($a0)
    lw      $t8, 0x84($sp)
    addiu   $s0, $s0, 0x8
    or      $a3, $s0, $zero
    sw      $t8, 0x4($a0)
    lw      $t9, 0x8($s3)
    addiu   $s0, $s0, 0x8
    addiu   $t1, $t1, 0x1
    addu    $t6, $t9, $t2
    addu    $a2, $t6, $t4
    sll     $t7, $a2, 2
    beqz    $t7, branch_0x801e5c60
    or      $a1, $s0, $zero
    b       branch_0x801e5c64
    or      $a0, $t7, $zero
branch_0x801e5c60:
    or      $a0, $zero, $zero
branch_0x801e5c64:
    lw      $t8, 0xc($s3)
    addiu   $at, $zero, 0x8
    or      $v1, $zero, $zero
    addu    $v0, $t8, $s1
    addiu   $v0, $v0, 0x5
    sll     $t9, $v0, 2
    blez    $t9, branch_0x801e5c8c
    andi    $t8, $a0, 0xfff
    b       branch_0x801e5c8c
    or      $v1, $t9, $zero
branch_0x801e5c8c:
    andi    $t6, $v1, 0xfff
    or      $t7, $t6, $ra
    sll     $t9, $t8, 12
    or      $t6, $t7, $t9
    sw      $t6, 0x0($a3)
    lw      $t8, 0x8($s3)
    or      $v1, $zero, $zero
    or      $a0, $zero, $zero
    addu    $v0, $t8, $t2
    sll     $t7, $v0, 2
    blez    $t7, branch_0x801e5cc4
    nop
    b       branch_0x801e5cc4
    or      $a0, $t7, $zero
branch_0x801e5cc4:
    lw      $t9, 0xc($s3)
    andi    $t7, $a0, 0xfff
    or      $a0, $zero, $zero
    addu    $v0, $t9, $s1
    sll     $t6, $v0, 2
    blez    $t6, branch_0x801e5ce8
    sll     $t9, $t7, 12
    b       branch_0x801e5ce8
    or      $v1, $t6, $zero
branch_0x801e5ce8:
    andi    $t8, $v1, 0xfff
    or      $t6, $t8, $t9
    sw      $t6, 0x4($a3)
    lui     $t7, 0xb300
    sw      $t7, 0x0($a1)
    lw      $t8, 0x8($s3)
    addiu   $s0, $s0, 0x8
    or      $v0, $s0, $zero
    addu    $t9, $t8, $t2
    sll     $t6, $t9, 12
    sra     $t7, $t6, 7
    bgez    $t7, branch_0x801e5d24
    addiu   $s0, $s0, 0x8
    b       branch_0x801e5d24
    or      $a0, $t7, $zero
branch_0x801e5d24:
    lw      $t8, 0xc($s3)
    or      $v1, $zero, $zero
    addu    $t9, $t8, $s1
    sll     $t6, $t9, 12
    sra     $t7, $t6, 7
    bgez    $t7, branch_0x801e5d48
    addiu   $s1, $s1, 0x5
    b       branch_0x801e5d48
    or      $v1, $t7, $zero
branch_0x801e5d48:
    subu    $t8, $zero, $v1
    andi    $t9, $t8, 0xffff
    subu    $t7, $zero, $a0
    sll     $t8, $t7, 16
    or      $t6, $t9, $t8
    sll     $t8, $t4, 2
    lui     $t9, 0x400
    addu    $t8, $t8, $t4
    ori     $t9, $t9, 0x400
    sw      $t6, 0x4($a1)
    lui     $t7, 0xb200
    addu    $t0, $t0, $t8
    sw      $t7, 0x0($v0)
    bne     $t1, $at, branch_0x801e5bb0
    sw      $t9, 0x4($v0)
    addiu   $a0, $zero, 0x1
branch_0x801e5d88:
    lui     $t6, 0x8023
    addiu   $t6, $t6, 0x87cc
    addiu   $s3, $s3, 0x2c
    bnel    $s3, $t6, branch_0x801e5324
    lhu     $t6, 0x6($s3)
    lw      $ra, 0x7c($sp)
    or      $v0, $s0, $zero
    lw      $s0, 0x58($sp)
    ldc1    $20, 0x50($29)
    lw      $s1, 0x5c($sp)
    lw      $s2, 0x60($sp)
    lw      $s3, 0x64($sp)
    lw      $s4, 0x68($sp)
    lw      $s5, 0x6c($sp)
    lw      $s6, 0x70($sp)
    lw      $s7, 0x74($sp)
    lw      $fp, 0x78($sp)
    jr      $ra
    addiu   $sp, $sp, 0x1b0

.globl Function_0x801e5dd4
Function_0x801e5dd4: # 0x801e5dd4
    addiu   $sp, $sp, 0xff70
    sw      $ra, 0x3c($sp)
    sw      $s0, 0x38($sp)
    lhu     $v0, 0x2($a0)
    or      $s0, $a0, $zero
    addiu   $at, $zero, 0x1
    beqzl   $v0, branch_0x801e5e08
    lw      $t6, 0x18($s0)
    beql    $v0, $at, branch_0x801e5f14
    lui     $at, 0x3f80
    b       branch_0x801e5ff8
    lw      $ra, 0x3c($sp)

.globl Function_0x801e5e04
Function_0x801e5e04: # 0x801e5e04
    lw      $t6, 0x18($s0)
branch_0x801e5e08:
    lui     $at, 0x3f80
    mtc1    $at, $t6
    mtc1    $t6, $a0
    lui     $at, 0x40a0
    mtc1    $at, $t0
    cvt.s.w $f6, $f4
    lui     $at, 0x3fc0
    mtc1    $at, $s0
    lui     $at, 0x3f80
    mtc1    $at, $s2
    lui     $at, 0x4294
    div.s   $f10, $f6, $f8
    mtc1    $at, $a0
    lui     $at, 0x42a0
    mtc1    $at, $t0
    lui     $at, 0x41a0
    lhu     $t0, 0x4($s0)
    mtc1    $zero, $zero
    lui     $t9, 0x801d
    sll     $t1, $t0, 6
    mfc1    $a3, $t6
    mfc1    $a1, $zero
    mfc1    $a2, $zero
    mul.s   $f2, $f10, $f16
    sub.s   $f12, $f18, $f2
    mtc1    $at, $s2
    lui     $at, 0x42ba
    mul.s   $f6, $f12, $f4
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f12, $f18
    mtc1    $at, $a2
    trunc.w.s   $f16, $f10
    add.s   $f8, $f4, $f6
    mfc1    $v0, $s0
    trunc.w.s   $f10, $f8
    mtc1    $v0, $s0
    sw      $v0, 0x8($s0)
    mfc1    $v1, $t2
    cvt.s.w $f18, $f16
    mtc1    $v1, $a0
    sw      $v1, 0xc($s0)
    lw      $t9, -0x1ca8($t9)
    cvt.s.w $f6, $f4
    swc1    $f2, 0x28($sp)
    addu    $a0, $t9, $t1
    addiu   $a0, $a0, 0x900
    swc1    $f18, 0x1c($sp)
    swc1    $f14, 0x14($sp)
    swc1    $f6, 0x20($sp)
    swc1    $f0, 0x24($sp)
    swc1    $f0, 0x18($sp)
    jal     Function_0x80048a28
    swc1    $f0, 0x10($sp)
    lw      $t2, 0x18($s0)
    addiu   $t5, $zero, 0x1
    addiu   $t6, $zero, 0x50
    addiu   $t3, $t2, 0x1
    slti    $at, $t3, 0x6
    bnez    $at, branch_0x801e5ff4
    sw      $t3, 0x18($s0)
    addiu   $t7, $zero, 0x5d
    sh      $t5, 0x2($s0)
    sw      $t6, 0x8($s0)
    sw      $t7, 0xc($s0)
    b       branch_0x801e5ff4
    sw      $zero, 0x18($s0)

.globl Function_0x801e5f10
Function_0x801e5f10: # 0x801e5f10
    lui     $at, 0x3f80
branch_0x801e5f14:
    mtc1    $at, $t6
    mtc1    $zero, $zero
    lhu     $t0, 0x4($s0)
    swc1    $f14, 0x18($sp)
    swc1    $f14, 0x10($sp)
    swc1    $f0, 0x1c($sp)
    swc1    $f0, 0x14($sp)
    lw      $t1, 0x8($s0)
    lui     $t8, 0x801d
    lw      $t8, -0x1ca8($t8)
    mtc1    $t1, $t0
    sll     $t9, $t0, 6
    mfc1    $a2, $zero
    cvt.s.w $f10, $f8
    mfc1    $a3, $zero
    addu    $a0, $t8, $t9
    addiu   $a0, $a0, 0x900
    addiu   $a1, $sp, 0x50
    swc1    $f10, 0x20($sp)
    lw      $t2, 0xc($s0)
    swc1    $f0, 0x28($sp)
    mtc1    $t2, $s0
    nop
    cvt.s.w $f18, $f16
    jal     Function_0x800487f4
    swc1    $f18, 0x24($sp)
    lw      $t3, 0x18($s0)
    lui     $v0, 0x801d
    addiu   $at, $zero, 0x4
    addiu   $t4, $t3, 0x1
    sw      $t4, 0x18($s0)
    lw      $v0, -0x1c98($v0)
    bne     $v0, $at, branch_0x801e5fb8
    slti    $at, $t4, 0xb
    bnez    $at, branch_0x801e5ff4
    addiu   $a0, $zero, 0x2
    sh      $zero, 0x0($s0)
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    b       branch_0x801e5ff8
    lw      $ra, 0x3c($sp)
branch_0x801e5fb8:
    bnezl   $v0, branch_0x801e5ff8
    lw      $ra, 0x3c($sp)
    lw      $t6, 0x18($s0)
    lui     $t7, 0x801c
    slti    $at, $t6, 0xb
    bnezl   $at, branch_0x801e5ff8
    lw      $ra, 0x3c($sp)
    sh      $zero, 0x0($s0)
    lw      $t7, 0x23b0($t7)
    addiu   $at, $zero, 0x1
    addiu   $a0, $zero, 0x2
    bnel    $t7, $at, branch_0x801e5ff8
    lw      $ra, 0x3c($sp)
    jal     Function_0x801e67ac
    addiu   $a1, $zero, 0x1
branch_0x801e5ff4:
    lw      $ra, 0x3c($sp)
branch_0x801e5ff8:
    lw      $s0, 0x38($sp)
    addiu   $sp, $sp, 0x90
    jr      $ra
    nop

.globl Function_0x801e6008
Function_0x801e6008: # 0x801e6008
    addiu   $sp, $sp, 0xff70
    sw      $ra, 0x3c($sp)
    sw      $s0, 0x38($sp)
    lhu     $v0, 0x2($a0)
    or      $s0, $a0, $zero
    addiu   $at, $zero, 0x1
    beqzl   $v0, branch_0x801e603c
    lw      $t6, 0x18($s0)
    beql    $v0, $at, branch_0x801e63c0
    lui     $at, 0x3f80
    b       branch_0x801e6444
    lw      $ra, 0x3c($sp)

.globl Function_0x801e6038
Function_0x801e6038: # 0x801e6038
    lw      $t6, 0x18($s0)
branch_0x801e603c:
    lui     $at, 0x40a0
    mtc1    $at, $t0
    mtc1    $t6, $a0
    lui     $at, 0x3fc0
    mtc1    $at, $s0
    cvt.s.w $f6, $f4
    lw      $t7, 0x28($s0)
    lui     $at, 0x3f80
    div.s   $f10, $f6, $f8
    mul.s   $f2, $f10, $f16
    beqzl   $t7, branch_0x801e61c0
    mtc1    $at, $s0
    lui     $at, 0x3f80
    mtc1    $at, $s2
    lui     $at, 0x42cc
    mtc1    $at, $a0
    sub.s   $f0, $f18, $f2
    lui     $at, 0x4268
    mtc1    $at, $t0
    addiu   $t9, $zero, 0x1
    mul.s   $f6, $f0, $f4
    lui     $at, 0x4f00
    add.s   $f10, $f6, $f8
    cfc1    $t8, $ra
    ctc1    $t9, $ra
    nop
    cvt.w.s $f16, $f10
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    beqzl   $t9, branch_0x801e6104
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
    bnez    $t9, branch_0x801e60f8
    nop
    mfc1    $t9, $s0
    lui     $at, 0x8000
    b       branch_0x801e6110
    or      $t9, $t9, $at
branch_0x801e60f8:
    b       branch_0x801e6110
    addiu   $t9, $zero, 0xffff

.globl Function_0x801e6100
Function_0x801e6100: # 0x801e6100
    mfc1    $t9, $s0
branch_0x801e6104:
    nop
    bltz    $t9, branch_0x801e60f8
    nop
branch_0x801e6110:
    lui     $at, 0x4170
    ctc1    $t8, $ra
    mtc1    $at, $s2
    lui     $at, 0x42ba
    mtc1    $at, $a2
    mul.s   $f4, $f0, $f18
    addiu   $t1, $zero, 0x1
    sw      $t9, 0x8($s0)
    lui     $at, 0x4f00
    add.s   $f8, $f4, $f6
    cfc1    $t0, $ra
    ctc1    $t1, $ra
    nop
    cvt.w.s $f10, $f8
    cfc1    $t1, $ra
    nop
    andi    $t1, $t1, 0x78
    beqzl   $t1, branch_0x801e61a4
    mfc1    $t1, $t2
    mtc1    $at, $t2
    addiu   $t1, $zero, 0x1
    sub.s   $f10, $f8, $f10
    ctc1    $t1, $ra
    nop
    cvt.w.s $f10, $f10
    cfc1    $t1, $ra
    nop
    andi    $t1, $t1, 0x78
    bnez    $t1, branch_0x801e6198
    nop
    mfc1    $t1, $t2
    lui     $at, 0x8000
    b       branch_0x801e61b0
    or      $t1, $t1, $at
branch_0x801e6198:
    b       branch_0x801e61b0
    addiu   $t1, $zero, 0xffff

.globl Function_0x801e61a0
Function_0x801e61a0: # 0x801e61a0
    mfc1    $t1, $t2
branch_0x801e61a4:
    nop
    bltz    $t1, branch_0x801e6198
    nop
branch_0x801e61b0:
    ctc1    $t0, $ra
    b       branch_0x801e6308
    sw      $t1, 0xc($s0)

.globl Function_0x801e61bc
Function_0x801e61bc: # 0x801e61bc
    mtc1    $at, $s0
branch_0x801e61c0:
    lui     $at, 0x4218
    mtc1    $at, $s2
    sub.s   $f0, $f16, $f2
    lui     $at, 0x42f0
    mtc1    $at, $a2
    addiu   $t3, $zero, 0x1
    mul.s   $f4, $f0, $f18
    lui     $at, 0x4f00
    add.s   $f8, $f4, $f6
    cfc1    $t2, $ra
    ctc1    $t3, $ra
    nop
    cvt.w.s $f10, $f8
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    beqzl   $t3, branch_0x801e6250
    mfc1    $t3, $t2
    mtc1    $at, $t2
    addiu   $t3, $zero, 0x1
    sub.s   $f10, $f8, $f10
    ctc1    $t3, $ra
    nop
    cvt.w.s $f10, $f10
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    bnez    $t3, branch_0x801e6244
    nop
    mfc1    $t3, $t2
    lui     $at, 0x8000
    b       branch_0x801e625c
    or      $t3, $t3, $at
branch_0x801e6244:
    b       branch_0x801e625c
    addiu   $t3, $zero, 0xffff

.globl Function_0x801e624c
Function_0x801e624c: # 0x801e624c
    mfc1    $t3, $t2
branch_0x801e6250:
    nop
    bltz    $t3, branch_0x801e6244
    nop
branch_0x801e625c:
    lui     $at, 0x41a0
    ctc1    $t2, $ra
    mtc1    $at, $s0
    lui     $at, 0x42ba
    mtc1    $at, $a0
    mul.s   $f18, $f0, $f16
    addiu   $t5, $zero, 0x1
    sw      $t3, 0x8($s0)
    lui     $at, 0x4f00
    add.s   $f6, $f18, $f4
    cfc1    $t4, $ra
    ctc1    $t5, $ra
    nop
    cvt.w.s $f8, $f6
    cfc1    $t5, $ra
    nop
    andi    $t5, $t5, 0x78
    beqzl   $t5, branch_0x801e62f0
    mfc1    $t5, $t0
    mtc1    $at, $t0
    addiu   $t5, $zero, 0x1
    sub.s   $f8, $f6, $f8
    ctc1    $t5, $ra
    nop
    cvt.w.s $f8, $f8
    cfc1    $t5, $ra
    nop
    andi    $t5, $t5, 0x78
    bnez    $t5, branch_0x801e62e4
    nop
    mfc1    $t5, $t0
    lui     $at, 0x8000
    b       branch_0x801e62fc
    or      $t5, $t5, $at
branch_0x801e62e4:
    b       branch_0x801e62fc
    addiu   $t5, $zero, 0xffff

.globl Function_0x801e62ec
Function_0x801e62ec: # 0x801e62ec
    mfc1    $t5, $t0
branch_0x801e62f0:
    nop
    bltz    $t5, branch_0x801e62e4
    nop
branch_0x801e62fc:
    ctc1    $t4, $ra
    sw      $t5, 0xc($s0)
    nop
branch_0x801e6308:
    mtc1    $zero, $zero
    lui     $at, 0x3f80
    mtc1    $at, $t4
    lhu     $t7, 0x4($s0)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x10($sp)
    swc1    $f12, 0x14($sp)
    lw      $t9, 0x8($s0)
    lui     $t6, 0x801d
    lw      $t6, -0x1ca8($t6)
    mtc1    $t9, $t2
    sll     $t8, $t7, 6
    mfc1    $a1, $zero
    cvt.s.w $f16, $f10
    mfc1    $a2, $zero
    mfc1    $a3, $t4
    addu    $a0, $t6, $t8
    addiu   $a0, $a0, 0x900
    swc1    $f16, 0x1c($sp)
    lw      $t0, 0xc($s0)
    swc1    $f2, 0x28($sp)
    swc1    $f0, 0x24($sp)
    mtc1    $t0, $s2
    nop
    cvt.s.w $f4, $f18
    jal     Function_0x80048a28
    swc1    $f4, 0x20($sp)
    lw      $t1, 0x18($s0)
    addiu   $t8, $zero, 0x5d
    addiu   $t2, $t1, 0x1
    slti    $at, $t2, 0x6
    bnez    $at, branch_0x801e6440
    sw      $t2, 0x18($s0)
    lw      $t5, 0x28($s0)
    addiu   $t4, $zero, 0x1
    sh      $t4, 0x2($s0)
    beqz    $t5, branch_0x801e63ac
    addiu   $t6, $zero, 0x78
    addiu   $t7, $zero, 0x3a
    b       branch_0x801e63b0
    sw      $t7, 0x8($s0)
branch_0x801e63ac:
    sw      $t6, 0x8($s0)
branch_0x801e63b0:
    sw      $t8, 0xc($s0)
    b       branch_0x801e6440
    sw      $zero, 0x18($s0)

.globl Function_0x801e63bc
Function_0x801e63bc: # 0x801e63bc
    lui     $at, 0x3f80
branch_0x801e63c0:
    mtc1    $at, $t4
    mtc1    $zero, $zero
    lhu     $t0, 0x4($s0)
    swc1    $f12, 0x18($sp)
    swc1    $f12, 0x10($sp)
    swc1    $f0, 0x1c($sp)
    swc1    $f0, 0x14($sp)
    lw      $t2, 0x8($s0)
    lui     $t9, 0x801d
    lw      $t9, -0x1ca8($t9)
    mtc1    $t2, $a2
    sll     $t1, $t0, 6
    mfc1    $a2, $zero
    cvt.s.w $f8, $f6
    mfc1    $a3, $zero
    addu    $a0, $t9, $t1
    addiu   $a0, $a0, 0x900
    addiu   $a1, $sp, 0x50
    swc1    $f8, 0x20($sp)
    lw      $t3, 0xc($s0)
    swc1    $f0, 0x28($sp)
    mtc1    $t3, $t2
    nop
    cvt.s.w $f16, $f10
    jal     Function_0x800487f4
    swc1    $f16, 0x24($sp)
    lw      $t4, 0x18($s0)
    addiu   $t5, $t4, 0x1
    slti    $at, $t5, 0x1f
    bnez    $at, branch_0x801e6440
    sw      $t5, 0x18($s0)
    sh      $zero, 0x0($s0)
branch_0x801e6440:
    lw      $ra, 0x3c($sp)
branch_0x801e6444:
    lw      $s0, 0x38($sp)
    addiu   $sp, $sp, 0x90
    jr      $ra
    nop

.globl Function_0x801e6454
Function_0x801e6454: # 0x801e6454
    addiu   $sp, $sp, 0xff00
    sw      $ra, 0x2c($sp)
    sw      $s0, 0x28($sp)
    lhu     $v0, 0x2($a0)
    or      $s0, $a0, $zero
    addiu   $at, $zero, 0x1
    beqzl   $v0, branch_0x801e6488
    lw      $t1, 0x18($s0)
    beq     $v0, $at, branch_0x801e655c
    nop
    b       branch_0x801e663c
    lw      $ra, 0x2c($sp)

.globl Function_0x801e6484
Function_0x801e6484: # 0x801e6484
    lw      $t1, 0x18($s0)
branch_0x801e6488:
    lui     $at, 0x4220
    mtc1    $at, $t0
    mtc1    $t1, $a0
    lui     $t7, 0x802c
    lw      $t7, 0x6ee4($t7)
    cvt.s.w $f6, $f4
    lui     $t6, 0x802c
    lw      $t6, 0x6bd0($t6)
    sll     $t8, $t7, 2
    addu    $t8, $t8, $t7
    sll     $t8, $t8, 2
    div.s   $f2, $f6, $f8
    mtc1    $zero, $s2
    addu    $t9, $t6, $t8
    addiu   $t0, $t9, 0x6
    lhu     $t3, 0x4($s0)
    sw      $t0, 0xc($s0)
    swc1    $f18, 0x10($sp)
    lw      $t5, 0x8($s0)
    lui     $at, 0x8022
    lwc1    $f16, 0x6a40($at)
    mtc1    $t5, $a0
    lui     $t2, 0x801d
    lw      $t2, -0x1ca8($t2)
    sll     $t4, $t3, 6
    addiu   $a1, $sp, 0xc0
    addu    $a0, $t2, $t4
    addiu   $a0, $a0, 0x900
    cvt.s.w $f6, $f4
    add.s   $f10, $f2, $f2
    swc1    $f6, 0x14($sp)
    lw      $t7, 0xc($s0)
    mul.s   $f0, $f10, $f16
    mtc1    $t7, $t0
    mtc1    $zero, $s0
    nop
    swc1    $f16, 0x1c($sp)
    cvt.s.w $f10, $f8
    mfc1    $a2, $zero
    mfc1    $a3, $zero
    jal     Function_0x80049a34
    swc1    $f10, 0x18($sp)
    lw      $t6, 0x18($s0)
    addiu   $t8, $t6, 0x1
    slti    $at, $t8, 0x28
    bnez    $at, branch_0x801e654c
    sw      $t8, 0x18($s0)
    addiu   $t9, $t8, 0xffd8
    sw      $t9, 0x18($s0)
branch_0x801e654c:
    lw      $t0, 0x20($s0)
    addiu   $t1, $t0, 0x4
    b       branch_0x801e6638
    sw      $t1, 0x20($s0)
branch_0x801e655c:
    lui     $v0, 0x801d
    lh      $v0, -0x1c7c($v0)
    addiu   $at, $zero, 0xffff
    bnel    $v0, $at, branch_0x801e657c
    lw      $t5, 0x18($s0)
    b       branch_0x801e6638
    sh      $zero, 0x0($s0)

.globl Function_0x801e6578
Function_0x801e6578: # 0x801e6578
    lw      $t5, 0x18($s0)
branch_0x801e657c:
    lui     $at, 0x4220
    mtc1    $at, $a2
    mtc1    $t5, $s2
    lw      $t3, 0x24($s0)
    sll     $t2, $v0, 4
    cvt.s.w $f4, $f18
    mtc1    $zero, $s0
    subu    $t2, $t2, $v0
    addu    $t4, $t3, $t2
    lhu     $t6, 0x4($s0)
    sw      $t4, 0xc($s0)
    div.s   $f2, $f4, $f6
    swc1    $f16, 0x10($sp)
    lw      $t9, 0x8($s0)
    lui     $at, 0x8022
    lwc1    $f10, 0x6a44($at)
    mtc1    $t9, $s2
    lui     $t7, 0x801d
    lw      $t7, -0x1ca8($t7)
    cvt.s.w $f4, $f18
    sll     $t8, $t6, 6
    addu    $a0, $t7, $t8
    addiu   $a0, $a0, 0x900
    addiu   $a1, $sp, 0xc0
    swc1    $f4, 0x14($sp)
    lw      $t0, 0xc($s0)
    mtc1    $t0, $a2
    add.s   $f8, $f2, $f2
    mul.s   $f0, $f8, $f10
    mtc1    $zero, $t2
    nop
    swc1    $f10, 0x1c($sp)
    cvt.s.w $f8, $f6
    mfc1    $a2, $zero
    mfc1    $a3, $zero
    jal     Function_0x80049a34
    swc1    $f8, 0x18($sp)
    lw      $t1, 0x18($s0)
    addiu   $t3, $t1, 0x1
    slti    $at, $t3, 0x28
    bnez    $at, branch_0x801e662c
    sw      $t3, 0x18($s0)
    addiu   $t2, $t3, 0xffd8
    sw      $t2, 0x18($s0)
branch_0x801e662c:
    lw      $t4, 0x20($s0)
    addiu   $t5, $t4, 0x4
    sw      $t5, 0x20($s0)
branch_0x801e6638:
    lw      $ra, 0x2c($sp)
branch_0x801e663c:
    lw      $s0, 0x28($sp)
    addiu   $sp, $sp, 0x100
    jr      $ra
    nop

.globl Function_0x801e664c
Function_0x801e664c: # 0x801e664c
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    lhu     $v0, 0x2($a0)
    addiu   $v1, $zero, 0x1
    beqzl   $v0, branch_0x801e6680
    lw      $v0, 0x18($a0)
    beq     $v0, $v1, branch_0x801e66f4
    addiu   $at, $zero, 0x2
    beql    $v0, $at, branch_0x801e67a0
    lw      $ra, 0x14($sp)
    b       branch_0x801e67a0
    lw      $ra, 0x14($sp)

.globl Function_0x801e667c
Function_0x801e667c: # 0x801e667c
    lw      $v0, 0x18($a0)
branch_0x801e6680:
    lui     $at, 0x4040
    mtc1    $at, $a2
    mtc1    $v0, $a0
    addiu   $t9, $v0, 0x1
    sw      $t9, 0x18($a0)
    cvt.s.w $f0, $f4
    addiu   $v1, $zero, 0x1
    addiu   $a1, $zero, 0x3f
    addiu   $t1, $zero, 0x1
    mul.s   $f8, $f0, $f6
    nop
    mul.s   $f10, $f8, $f0
    trunc.w.s   $f16, $f10
    mfc1    $t7, $s0
    nop
    addiu   $t8, $t7, 0xffd8
    slti    $at, $t8, 0x3f
    bnez    $at, branch_0x801e679c
    sw      $t8, 0xc($a0)
    lui     $at, 0x4180
    mtc1    $at, $s2
    sh      $t1, 0x2($a0)
    sw      $a1, 0xc($a0)
    sw      $v1, 0x18($a0)
    sw      $v1, 0x1c($a0)
    jal     Function_0x800c2e5c
    swc1    $f18, 0x14($a0)
    b       branch_0x801e67a0
    lw      $ra, 0x14($sp)
branch_0x801e66f4:
    lw      $v0, 0x18($a0)
    lwc1    $f2, 0x14($a0)
    lui     $at, 0x3fc0
    mtc1    $v0, $a0
    mtc1    $at, $t4
    addiu   $a1, $zero, 0x3f
    cvt.s.w $f0, $f4
    addiu   $t8, $v0, 0x1
    sw      $t8, 0x18($a0)
    mul.s   $f6, $f2, $f0
    nop
    mul.s   $f10, $f12, $f0
    trunc.w.s   $f8, $f6
    mul.s   $f16, $f10, $f0
    mfc1    $t3, $t0
    nop
    subu    $t4, $a1, $t3
    trunc.w.s   $f18, $f16
    mfc1    $t6, $s2
    nop
    addu    $t7, $t4, $t6
    slti    $at, $t7, 0x40
    bnez    $at, branch_0x801e679c
    sw      $t7, 0xc($a0)
    sw      $a1, 0xc($a0)
    lui     $at, 0x8022
    lwc1    $f4, 0x6a48($at)
    lw      $t0, 0x1c($a0)
    sw      $v1, 0x18($a0)
    mul.s   $f6, $f2, $f4
    addiu   $t1, $t0, 0x1
    sw      $t1, 0x1c($a0)
    addiu   $t2, $zero, 0x2
    swc1    $f6, 0x14($a0)
    lwc1    $f8, 0x14($a0)
    c.lt.s $f8, $f12
    nop
    bc1fl   branch_0x801e67a0
    lw      $ra, 0x14($sp)
    sh      $t2, 0x2($a0)
    sw      $zero, 0x1c($a0)
    sw      $zero, 0x18($a0)
branch_0x801e679c:
    lw      $ra, 0x14($sp)
branch_0x801e67a0:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801e67ac
Function_0x801e67ac: # 0x801e67ac
    addiu   $sp, $sp, 0xffe8
    andi    $t6, $a0, 0xffff
    sw      $a0, 0x18($sp)
    sltiu   $at, $t6, 0x5
    or      $a0, $t6, $zero
    sw      $ra, 0x14($sp)
    sw      $a1, 0x1c($sp)
    beqz    $at, branch_0x801e6cbc
    andi    $a3, $a1, 0xffff
    sll     $t7, $t6, 2
    lui     $at, 0x8022
    addu    $at, $at, $t7
    lw      $t7, 0x6a4c($at)
    jr      $t7
    nop

.globl Function_0x801e67e8
Function_0x801e67e8: # 0x801e67e8
    bnez    $a3, branch_0x801e6cbc
    lui     $v1, 0x8022
    addiu   $v1, $v1, 0x6a10
    lui     $a1, 0x8023
    addiu   $a1, $a1, 0x86f0
    or      $t1, $a1, $zero
    or      $t0, $v1, $zero
    addiu   $t9, $v1, 0x24
branch_0x801e6808:
    lw      $at, 0x0($t0)
    addiu   $t0, $t0, 0xc
    addiu   $t1, $t1, 0xc
    sw      $at, -0xc($t1)
    lw      $at, -0x8($t0)
    sw      $at, -0x8($t1)
    lw      $at, -0x4($t0)
    bne     $t0, $t9, branch_0x801e6808
    sw      $at, -0x4($t1)
    lw      $at, 0x0($t0)
    addiu   $a0, $zero, 0x1
    sll     $t2, $a0, 2
    subu    $t2, $t2, $a0
    sll     $t2, $t2, 2
    sw      $at, 0x0($t1)
    lw      $t9, 0x4($t0)
    subu    $t2, $t2, $a0
    sll     $t2, $t2, 2
    addu    $v0, $a1, $t2
    or      $t6, $v0, $zero
    or      $t5, $v1, $zero
    addiu   $t4, $v1, 0x24
    sw      $t9, 0x4($t1)
branch_0x801e6864:
    lw      $at, 0x0($t5)
    addiu   $t5, $t5, 0xc
    addiu   $t6, $t6, 0xc
    sw      $at, -0xc($t6)
    lw      $at, -0x8($t5)
    sw      $at, -0x8($t6)
    lw      $at, -0x4($t5)
    bne     $t5, $t4, branch_0x801e6864
    sw      $at, -0x4($t6)
    lw      $at, 0x0($t5)
    or      $t9, $v1, $zero
    or      $t0, $v0, $zero
    sw      $at, 0x0($t6)
    lw      $t4, 0x4($t5)
    addiu   $t8, $v1, 0x24
    sw      $t4, 0x4($t6)
branch_0x801e68a4:
    lw      $at, 0x0($t9)
    addiu   $t9, $t9, 0xc
    addiu   $t0, $t0, 0xc
    sw      $at, 0x20($t0)
    lw      $at, -0x8($t9)
    sw      $at, 0x24($t0)
    lw      $at, -0x4($t9)
    bne     $t9, $t8, branch_0x801e68a4
    sw      $at, 0x28($t0)
    lw      $at, 0x0($t9)
    or      $t3, $v1, $zero
    or      $t4, $v0, $zero
    sw      $at, 0x2c($t0)
    lw      $t8, 0x4($t9)
    addiu   $t2, $v1, 0x24
    sw      $t8, 0x30($t0)
branch_0x801e68e4:
    lw      $at, 0x0($t3)
    addiu   $t3, $t3, 0xc
    addiu   $t4, $t4, 0xc
    sw      $at, 0x4c($t4)
    lw      $at, -0x8($t3)
    sw      $at, 0x50($t4)
    lw      $at, -0x4($t3)
    bne     $t3, $t2, branch_0x801e68e4
    sw      $at, 0x54($t4)
    lw      $at, 0x0($t3)
    or      $t7, $v1, $zero
    or      $t8, $v0, $zero
    sw      $at, 0x58($t4)
    lw      $t2, 0x4($t3)
    addiu   $t6, $v1, 0x24
    sw      $t2, 0x5c($t4)
branch_0x801e6924:
    lw      $at, 0x0($t7)
    addiu   $t7, $t7, 0xc
    addiu   $t8, $t8, 0xc
    sw      $at, 0x78($t8)
    lw      $at, -0x8($t7)
    sw      $at, 0x7c($t8)
    lw      $at, -0x4($t7)
    bne     $t7, $t6, branch_0x801e6924
    sw      $at, 0x80($t8)
    lw      $at, 0x0($t7)
    sw      $at, 0x84($t8)
    lw      $t6, 0x4($t7)
    b       branch_0x801e6cbc
    sw      $t6, 0x88($t8)

.globl Function_0x801e695c
Function_0x801e695c: # 0x801e695c
    jal     Function_0x801e6ccc
    nop
    addiu   $at, $zero, 0xffff
    beq     $v0, $at, branch_0x801e6cbc
    lui     $v1, 0x8022
    sll     $t9, $v0, 2
    subu    $t9, $t9, $v0
    sll     $t9, $t9, 2
    lui     $a1, 0x8023
    subu    $t9, $t9, $v0
    addiu   $a1, $a1, 0x86f0
    sll     $t9, $t9, 2
    addiu   $t2, $v1, 0x6a10
    addu    $a0, $a1, $t9
    or      $t3, $a0, $zero
    addiu   $t1, $t2, 0x24
branch_0x801e699c:
    lw      $at, 0x0($t2)
    addiu   $t2, $t2, 0xc
    addiu   $t3, $t3, 0xc
    sw      $at, -0xc($t3)
    lw      $at, -0x8($t2)
    sw      $at, -0x8($t3)
    lw      $at, -0x4($t2)
    bne     $t2, $t1, branch_0x801e699c
    sw      $at, -0x4($t3)
    lw      $at, 0x0($t2)
    addiu   $t4, $zero, 0x1
    addiu   $t5, $zero, 0x50
    sw      $at, 0x0($t3)
    lw      $t1, 0x4($t2)
    addiu   $t6, $zero, 0x5d
    sw      $t1, 0x4($t3)
    sh      $v0, 0x4($a0)
    sh      $t4, 0x0($a0)
    sh      $zero, 0x2($a0)
    sw      $t5, 0x8($a0)
    sw      $t6, 0xc($a0)
    b       branch_0x801e6cbc
    sw      $zero, 0x18($a0)

.globl Function_0x801e69f8
Function_0x801e69f8: # 0x801e69f8
    jal     Function_0x801e6ccc
    sh      $a3, 0x1e($sp)
    addiu   $at, $zero, 0xffff
    beq     $v0, $at, branch_0x801e6cbc
    lhu     $a3, 0x1e($sp)
    sll     $t7, $v0, 2
    subu    $t7, $t7, $v0
    sll     $t7, $t7, 2
    lui     $a1, 0x8023
    subu    $t7, $t7, $v0
    addiu   $a1, $a1, 0x86f0
    lui     $v1, 0x8022
    sll     $t7, $t7, 2
    addiu   $t0, $v1, 0x6a10
    addu    $a0, $a1, $t7
    or      $t1, $a0, $zero
    addiu   $t9, $t0, 0x24
branch_0x801e6a3c:
    lw      $at, 0x0($t0)
    addiu   $t0, $t0, 0xc
    addiu   $t1, $t1, 0xc
    sw      $at, -0xc($t1)
    lw      $at, -0x8($t0)
    sw      $at, -0x8($t1)
    lw      $at, -0x4($t0)
    bne     $t0, $t9, branch_0x801e6a3c
    sw      $at, -0x4($t1)
    lw      $at, 0x0($t0)
    addiu   $t2, $zero, 0x2
    addiu   $t3, $zero, 0x3a
    sw      $at, 0x0($t1)
    lw      $t9, 0x4($t0)
    addiu   $t4, $zero, 0x78
    addiu   $t5, $zero, 0x5d
    sw      $t9, 0x4($t1)
    sh      $v0, 0x4($a0)
    sh      $t2, 0x0($a0)
    beqz    $a3, branch_0x801e6a98
    sh      $zero, 0x2($a0)
    b       branch_0x801e6a9c
    sw      $t3, 0x8($a0)
branch_0x801e6a98:
    sw      $t4, 0x8($a0)
branch_0x801e6a9c:
    sw      $t5, 0xc($a0)
    b       branch_0x801e6cbc
    sw      $a3, 0x28($a0)

.globl Function_0x801e6aa8
Function_0x801e6aa8: # 0x801e6aa8
    jal     Function_0x801e6ccc
    sh      $a3, 0x1e($sp)
    addiu   $at, $zero, 0xffff
    beq     $v0, $at, branch_0x801e6cbc
    lhu     $a3, 0x1e($sp)
    sll     $t6, $v0, 2
    subu    $t6, $t6, $v0
    sll     $t6, $t6, 2
    lui     $a1, 0x8023
    subu    $t6, $t6, $v0
    addiu   $a1, $a1, 0x86f0
    lui     $v1, 0x8022
    sll     $t6, $t6, 2
    addiu   $t9, $v1, 0x6a10
    addu    $a0, $a1, $t6
    or      $t0, $a0, $zero
    addiu   $t8, $t9, 0x24
branch_0x801e6aec:
    lw      $at, 0x0($t9)
    addiu   $t9, $t9, 0xc
    addiu   $t0, $t0, 0xc
    sw      $at, -0xc($t0)
    lw      $at, -0x8($t9)
    sw      $at, -0x8($t0)
    lw      $at, -0x4($t9)
    bne     $t9, $t8, branch_0x801e6aec
    sw      $at, -0x4($t0)
    lw      $at, 0x0($t9)
    addiu   $t1, $zero, 0x3
    or      $a2, $a3, $zero
    sw      $at, 0x0($t0)
    lw      $t8, 0x4($t9)
    sltiu   $at, $a3, 0x8
    sll     $t2, $a3, 2
    sw      $t8, 0x4($t0)
    sh      $v0, 0x4($a0)
    beqz    $at, branch_0x801e6c14
    sh      $t1, 0x0($a0)
    lui     $at, 0x8022
    addu    $at, $at, $t2
    lw      $t2, 0x6a60($at)
    jr      $t2
    nop

.globl Function_0x801e6b50
Function_0x801e6b50: # 0x801e6b50
    addiu   $t3, $zero, 0x52
    addiu   $t4, $zero, 0x54
    sh      $zero, 0x2($a0)
    sw      $t3, 0x8($a0)
    b       branch_0x801e6c14
    sw      $t4, 0xc($a0)

.globl Function_0x801e6b68
Function_0x801e6b68: # 0x801e6b68
    addiu   $t5, $zero, 0xef
    addiu   $t6, $zero, 0x54
    sh      $zero, 0x2($a0)
    sw      $t5, 0x8($a0)
    b       branch_0x801e6c14
    sw      $t6, 0xc($a0)

.globl Function_0x801e6b80
Function_0x801e6b80: # 0x801e6b80
    addiu   $t7, $zero, 0x1
    addiu   $t8, $zero, 0x50
    addiu   $at, $zero, 0x2
    sh      $t7, 0x2($a0)
    bne     $a2, $at, branch_0x801e6ba4
    sw      $t8, 0x8($a0)
    addiu   $t9, $zero, 0x65
    b       branch_0x801e6bc0
    sw      $t9, 0xc($a0)
branch_0x801e6ba4:
    addiu   $at, $zero, 0x4
    bne     $a2, $at, branch_0x801e6bbc
    addiu   $t1, $zero, 0xba
    addiu   $t0, $zero, 0x4c
    b       branch_0x801e6bc0
    sw      $t0, 0xc($a0)
branch_0x801e6bbc:
    sw      $t1, 0xc($a0)
branch_0x801e6bc0:
    lw      $t2, 0xc($a0)
    b       branch_0x801e6c14
    sw      $t2, 0x24($a0)

.globl Function_0x801e6bcc
Function_0x801e6bcc: # 0x801e6bcc
    addiu   $t3, $zero, 0x1
    addiu   $t4, $zero, 0xf0
    addiu   $at, $zero, 0x3
    sh      $t3, 0x2($a0)
    bne     $a2, $at, branch_0x801e6bf0
    sw      $t4, 0x8($a0)
    addiu   $t5, $zero, 0x65
    b       branch_0x801e6c0c
    sw      $t5, 0xc($a0)
branch_0x801e6bf0:
    addiu   $at, $zero, 0x5
    bne     $a2, $at, branch_0x801e6c08
    addiu   $t7, $zero, 0xba
    addiu   $t6, $zero, 0x4c
    b       branch_0x801e6c0c
    sw      $t6, 0xc($a0)
branch_0x801e6c08:
    sw      $t7, 0xc($a0)
branch_0x801e6c0c:
    lw      $t8, 0xc($a0)
    sw      $t8, 0x24($a0)
branch_0x801e6c14:
    addiu   $t9, $zero, 0xff
    b       branch_0x801e6cbc
    sw      $t9, 0x20($a0)

.globl Function_0x801e6c20
Function_0x801e6c20: # 0x801e6c20
    jal     Function_0x801e6ccc
    sh      $a3, 0x1e($sp)
    addiu   $at, $zero, 0xffff
    beq     $v0, $at, branch_0x801e6cbc
    lhu     $a3, 0x1e($sp)
    sll     $t0, $v0, 2
    subu    $t0, $t0, $v0
    sll     $t0, $t0, 2
    lui     $a1, 0x8023
    subu    $t0, $t0, $v0
    addiu   $a1, $a1, 0x86f0
    lui     $v1, 0x8022
    sll     $t0, $t0, 2
    addiu   $t3, $v1, 0x6a10
    addu    $a0, $a1, $t0
    or      $t4, $a0, $zero
    addiu   $t2, $t3, 0x24
branch_0x801e6c64:
    lw      $at, 0x0($t3)
    addiu   $t3, $t3, 0xc
    addiu   $t4, $t4, 0xc
    sw      $at, -0xc($t4)
    lw      $at, -0x8($t3)
    sw      $at, -0x8($t4)
    lw      $at, -0x4($t3)
    bne     $t3, $t2, branch_0x801e6c64
    sw      $at, -0x4($t4)
    lw      $at, 0x0($t3)
    addiu   $t5, $zero, 0x4
    addiu   $t6, $zero, 0x50
    sw      $at, 0x0($t4)
    lw      $t2, 0x4($t3)
    addiu   $t7, $zero, 0xffd8
    sw      $t2, 0x4($t4)
    sh      $v0, 0x4($a0)
    sh      $t5, 0x0($a0)
    sh      $zero, 0x2($a0)
    sw      $t6, 0x8($a0)
    sw      $t7, 0xc($a0)
    sw      $a3, 0x28($a0)
branch_0x801e6cbc:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801e6ccc
Function_0x801e6ccc: # 0x801e6ccc
    lui     $v1, 0x8023
    addiu   $v1, $v1, 0x86f0
    or      $v0, $zero, $zero
    addiu   $a0, $zero, 0x5
branch_0x801e6cdc:
    lhu     $t6, 0x0($v1)
    beqz    $t6, branch_0x801e6cf4
    nop
    addiu   $v0, $v0, 0x1
    bne     $v0, $a0, branch_0x801e6cdc
    addiu   $v1, $v1, 0x2c
branch_0x801e6cf4:
    bne     $v0, $a0, branch_0x801e6d04
    or      $v1, $v0, $zero
    jr      $ra
    addiu   $v0, $zero, 0xffff
branch_0x801e6d04:
    jr      $ra
    or      $v0, $v1, $zero

.globl Function_0x801e6d0c
Function_0x801e6d0c: # 0x801e6d0c
    nop

.globl Function_0x801e6d10
Function_0x801e6d10: # 0x801e6d10
    lui     $t7, 0x8022
    addiu   $t7, $t7, 0x6a80
    lui     $t6, 0x8023
    addiu   $t6, $t6, 0x87d0
    addiu   $t0, $t7, 0x24
branch_0x801e6d24:
    lw      $at, 0x0($t7)
    addiu   $t7, $t7, 0xc
    addiu   $t6, $t6, 0xc
    sw      $at, -0xc($t6)
    lw      $at, -0x8($t7)
    sw      $at, -0x8($t6)
    lw      $at, -0x4($t7)
    bne     $t7, $t0, branch_0x801e6d24
    sw      $at, -0x4($t6)
    addiu   $t1, $a0, 0xffff
    sltiu   $at, $t1, 0x7
    beqz    $at, branch_0x801e6f00
    sll     $t1, $t1, 2
    lui     $at, 0x8022
    addu    $at, $at, $t1
    lw      $t1, 0x6ad0($at)
    jr      $t1
    nop

.globl Function_0x801e6d6c
Function_0x801e6d6c: # 0x801e6d6c
    lui     $at, 0x8023
    addiu   $t2, $zero, 0x1
    sh      $t2, -0x7830($at)
    sh      $zero, -0x782e($at)
    lui     $at, 0x8023
    sh      $a2, -0x7826($at)
    sh      $a1, -0x7824($at)
    sh      $zero, -0x7822($at)
    lui     $at, 0x8023
    sh      $zero, -0x7820($at)
    sh      $zero, -0x781e($at)
    sh      $zero, -0x781c($at)
    jr      $ra
    sh      $zero, -0x781a($at)

.globl Function_0x801e6da4
Function_0x801e6da4: # 0x801e6da4
    lui     $at, 0x8023
    addiu   $t3, $zero, 0x2
    sh      $t3, -0x7830($at)
    sh      $zero, -0x782e($at)
    lui     $at, 0x8023
    sh      $a2, -0x7826($at)
    sh      $a1, -0x7824($at)
    sh      $zero, -0x7822($at)
    lui     $at, 0x8023
    addiu   $t4, $zero, 0xff
    sh      $zero, -0x7820($at)
    sh      $zero, -0x781e($at)
    sh      $zero, -0x781c($at)
    jr      $ra
    sh      $t4, -0x781a($at)

.globl Function_0x801e6de0
Function_0x801e6de0: # 0x801e6de0
    lui     $at, 0x8023
    addiu   $t5, $zero, 0x7
    sh      $t5, -0x7830($at)
    sh      $zero, -0x782e($at)
    lui     $at, 0x8023
    sh      $a2, -0x7826($at)
    sh      $a1, -0x7824($at)
    sh      $zero, -0x7822($at)
    lui     $at, 0x8023
    addiu   $t9, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sh      $t0, -0x781c($at)
    sh      $t8, -0x781e($at)
    sh      $t9, -0x7820($at)
    jr      $ra
    sh      $t7, -0x781a($at)

.globl Function_0x801e6e28
Function_0x801e6e28: # 0x801e6e28
    lui     $at, 0x8023
    addiu   $t6, $zero, 0x3
    sh      $t6, -0x7830($at)
    sh      $zero, -0x782e($at)
    lui     $at, 0x8023
    sh      $a2, -0x7826($at)
    sh      $a1, -0x7824($at)
    sh      $zero, -0x7822($at)
    lui     $at, 0x8023
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    sh      $t3, -0x781c($at)
    sh      $t2, -0x781e($at)
    sh      $t1, -0x7820($at)
    jr      $ra
    sh      $zero, -0x781a($at)

.globl Function_0x801e6e6c
Function_0x801e6e6c: # 0x801e6e6c
    lui     $at, 0x8023
    sh      $zero, -0x7810($at)
    lui     $at, 0x8023
    addiu   $t4, $zero, 0x4
    sh      $t4, -0x7830($at)
    sh      $zero, -0x782e($at)
    lui     $at, 0x8023
    addiu   $t5, $zero, 0x1
    sh      $a2, -0x7826($at)
    sh      $a1, -0x7824($at)
    sh      $t5, -0x7822($at)
    lui     $at, 0x8023
    addiu   $t9, $zero, 0x46
    addiu   $t8, $zero, 0x41
    sh      $t9, -0x7818($at)
    sh      $t8, -0x7816($at)
    lui     $at, 0x8023
    addiu   $t0, $zero, 0x1
    jr      $ra
    sh      $t0, -0x780e($at)

.globl Function_0x801e6ebc
Function_0x801e6ebc: # 0x801e6ebc
    lui     $at, 0x8023
    addiu   $t7, $zero, 0x5
    sh      $t7, -0x7830($at)
    sh      $zero, -0x782e($at)
    lui     $at, 0x8023
    addiu   $t6, $zero, 0x1
    sh      $a2, -0x7826($at)
    sh      $a1, -0x7824($at)
    sh      $t6, -0x7822($at)
    lui     $at, 0x8023
    addiu   $t1, $zero, 0xfef7
    addiu   $t2, $zero, 0x41
    sh      $t1, -0x7818($at)
    sh      $t2, -0x7816($at)
    lui     $at, 0x8023
    addiu   $t3, $zero, 0x1
    sh      $t3, -0x780e($at)
branch_0x801e6f00:
    jr      $ra
    nop

.globl Function_0x801e6f08
Function_0x801e6f08: # 0x801e6f08
    lui     $a0, 0x8023
    addiu   $a0, $a0, 0x87d0
    lh      $t6, 0x6($a0)
    addiu   $sp, $sp, 0xffe8
    addiu   $at, $zero, 0x1
    bne     $t6, $at, branch_0x801e6f2c
    sw      $ra, 0x14($sp)
    lui     $at, 0x8023
    sh      $zero, -0x782a($at)
branch_0x801e6f2c:
    lui     $t7, 0x8023
    lh      $t7, -0x7830($t7)
    addiu   $t8, $t7, 0xffff
    sltiu   $at, $t8, 0x7
    beqz    $at, branch_0x801e6fd0
    sll     $t8, $t8, 2
    lui     $at, 0x8022
    addu    $at, $at, $t8
    lw      $t8, 0x6aec($at)
    jr      $t8
    nop

.globl Function_0x801e6f58
Function_0x801e6f58: # 0x801e6f58
    addiu   $t9, $zero, 0x1
    lui     $at, 0x8023
    addiu   $t0, $zero, 0x2
    sh      $t9, -0x782c($at)
    jal     Function_0x801e6fe0
    sh      $t0, -0x782a($at)
    b       branch_0x801e6fd4
    lw      $ra, 0x14($sp)

.globl Function_0x801e6f78
Function_0x801e6f78: # 0x801e6f78
    addiu   $t1, $zero, 0x1
    lui     $at, 0x8023
    addiu   $t2, $zero, 0x2
    sh      $t1, -0x782c($at)
    jal     Function_0x801e7100
    sh      $t2, -0x782a($at)
    b       branch_0x801e6fd4
    lw      $ra, 0x14($sp)

.globl Function_0x801e6f98
Function_0x801e6f98: # 0x801e6f98
    addiu   $t3, $zero, 0x1
    lui     $at, 0x8023
    addiu   $t4, $zero, 0x2
    sh      $t3, -0x782c($at)
    jal     Function_0x801e721c
    sh      $t4, -0x782a($at)
    b       branch_0x801e6fd4
    lw      $ra, 0x14($sp)

.globl Function_0x801e6fb8
Function_0x801e6fb8: # 0x801e6fb8
    addiu   $t5, $zero, 0x1
    lui     $at, 0x8023
    addiu   $t6, $zero, 0x2
    sh      $t5, -0x782c($at)
    jal     Function_0x801e7420
    sh      $t6, -0x782a($at)
branch_0x801e6fd0:
    lw      $ra, 0x14($sp)
branch_0x801e6fd4:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801e6fe0
Function_0x801e6fe0: # 0x801e6fe0
    lh      $v0, 0x2($a0)
    addiu   $v1, $zero, 0x1
    beqzl   $v0, branch_0x801e700c
    lh      $v0, 0x8($a0)
    beq     $v0, $v1, branch_0x801e703c
    addiu   $at, $zero, 0x2
    beql    $v0, $at, branch_0x801e70a4
    lh      $v0, 0x8($a0)
    jr      $ra
    nop

.globl Function_0x801e7008
Function_0x801e7008: # 0x801e7008
    lh      $v0, 0x8($a0)
branch_0x801e700c:
    lh      $t6, 0xa($a0)
    addiu   $v1, $zero, 0x1
    addiu   $t7, $v0, 0x1
    slt     $at, $v0, $t6
    bnezl   $at, branch_0x801e7034
    sh      $zero, 0x16($a0)
    sh      $v1, 0x2($a0)
    jr      $ra
    sh      $zero, 0x8($a0)

.globl Function_0x801e7030
Function_0x801e7030: # 0x801e7030
    sh      $zero, 0x16($a0)
branch_0x801e7034:
    jr      $ra
    sh      $t7, 0x8($a0)
branch_0x801e703c:
    lh      $v1, 0xc($a0)
    lh      $v0, 0x8($a0)
    addiu   $t1, $zero, 0x2
    addiu   $t2, $zero, 0xff
    slt     $at, $v1, $v0
    bnezl   $at, branch_0x801e7094
    sh      $t1, 0x2($a0)
    mtc1    $v0, $a0
    lui     $at, 0x437f
    mtc1    $at, $t0
    cvt.s.w $f6, $f4
    mtc1    $v1, $s0
    addiu   $t0, $v0, 0x1
    sh      $t0, 0x8($a0)
    cvt.s.w $f18, $f16
    mul.s   $f10, $f6, $f8
    div.s   $f4, $f10, $f18
    trunc.w.s   $f6, $f4
    mfc1    $t9, $a2
    jr      $ra
    sh      $t9, 0x16($a0)

.globl Function_0x801e7090
Function_0x801e7090: # 0x801e7090
    sh      $t1, 0x2($a0)
branch_0x801e7094:
    sh      $zero, 0x8($a0)
    jr      $ra
    sh      $t2, 0x16($a0)

.globl Function_0x801e70a0
Function_0x801e70a0: # 0x801e70a0
    lh      $v0, 0x8($a0)
branch_0x801e70a4:
    lh      $t3, 0xe($a0)
    lui     $t4, 0x8023
    addiu   $t4, $t4, 0x87d0
    slt     $at, $v0, $t3
    bnez    $at, branch_0x801e70f4
    addiu   $t8, $v0, 0x1
    lui     $t5, 0x8022
    addiu   $t5, $t5, 0x6a80
    addiu   $t7, $t5, 0x24
branch_0x801e70c8:
    lw      $at, 0x0($t5)
    addiu   $t5, $t5, 0xc
    addiu   $t4, $t4, 0xc
    sw      $at, -0xc($t4)
    lw      $at, -0x8($t5)
    sw      $at, -0x8($t4)
    lw      $at, -0x4($t5)
    bne     $t5, $t7, branch_0x801e70c8
    sw      $at, -0x4($t4)
    jr      $ra
    sh      $v1, 0x6($a0)
branch_0x801e70f4:
    sh      $t8, 0x8($a0)
    jr      $ra
    nop

.globl Function_0x801e7100
Function_0x801e7100: # 0x801e7100
    lh      $v0, 0x2($a0)
    addiu   $v1, $zero, 0x1
    beqzl   $v0, branch_0x801e712c
    lh      $v0, 0x8($a0)
    beq     $v0, $v1, branch_0x801e715c
    addiu   $at, $zero, 0x2
    beql    $v0, $at, branch_0x801e71c0
    lh      $v0, 0x8($a0)
    jr      $ra
    nop

.globl Function_0x801e7128
Function_0x801e7128: # 0x801e7128
    lh      $v0, 0x8($a0)
branch_0x801e712c:
    lh      $t6, 0xa($a0)
    addiu   $v1, $zero, 0x1
    addiu   $t7, $v0, 0x1
    slt     $at, $v0, $t6
    bnezl   $at, branch_0x801e7154
    sh      $zero, 0x16($a0)
    sh      $v1, 0x2($a0)
    jr      $ra
    sh      $zero, 0x8($a0)

.globl Function_0x801e7150
Function_0x801e7150: # 0x801e7150
    sh      $zero, 0x16($a0)
branch_0x801e7154:
    jr      $ra
    sh      $t7, 0x8($a0)
branch_0x801e715c:
    lh      $v1, 0xc($a0)
    lh      $v0, 0x8($a0)
    addiu   $t2, $zero, 0x2
    slt     $at, $v1, $v0
    bnez    $at, branch_0x801e71ac
    subu    $t8, $v1, $v0
    mtc1    $t8, $a0
    mtc1    $v1, $t0
    lui     $at, 0x437f
    cvt.s.w $f6, $f4
    mtc1    $at, $s2
    addiu   $t1, $v0, 0x1
    sh      $t1, 0x8($a0)
    cvt.s.w $f10, $f8
    div.s   $f16, $f6, $f10
    mul.s   $f4, $f16, $f18
    trunc.w.s   $f8, $f4
    mfc1    $t0, $t0
    jr      $ra
    sh      $t0, 0x16($a0)
branch_0x801e71ac:
    sh      $t2, 0x2($a0)
    sh      $zero, 0x8($a0)
    jr      $ra
    sh      $zero, 0x16($a0)

.globl Function_0x801e71bc
Function_0x801e71bc: # 0x801e71bc
    lh      $v0, 0x8($a0)
branch_0x801e71c0:
    lh      $t3, 0xe($a0)
    lui     $t4, 0x8023
    addiu   $t4, $t4, 0x87d0
    slt     $at, $v0, $t3
    bnez    $at, branch_0x801e7210
    addiu   $t8, $v0, 0x1
    lui     $t5, 0x8022
    addiu   $t5, $t5, 0x6a80
    addiu   $t7, $t5, 0x24
branch_0x801e71e4:
    lw      $at, 0x0($t5)
    addiu   $t5, $t5, 0xc
    addiu   $t4, $t4, 0xc
    sw      $at, -0xc($t4)
    lw      $at, -0x8($t5)
    sw      $at, -0x8($t4)
    lw      $at, -0x4($t5)
    bne     $t5, $t7, branch_0x801e71e4
    sw      $at, -0x4($t4)
    jr      $ra
    sh      $v1, 0x6($a0)
branch_0x801e7210:
    sh      $t8, 0x8($a0)
    jr      $ra
    nop

.globl Function_0x801e721c
Function_0x801e721c: # 0x801e721c
    addiu   $sp, $sp, 0xffc0
    sw      $ra, 0x3c($sp)
    sw      $s0, 0x38($sp)
    lh      $v0, 0x2($a0)
    or      $s0, $a0, $zero
    mtc1    $zero, $zero
    beqz    $v0, branch_0x801e7258
    lui     $a0, 0x801d
    addiu   $v1, $zero, 0x1
    beq     $v0, $v1, branch_0x801e7288
    addiu   $at, $zero, 0x2
    beql    $v0, $at, branch_0x801e72e4
    lh      $v0, 0x8($s0)
    b       branch_0x801e733c
    lui     $at, 0x4180
branch_0x801e7258:
    lh      $v0, 0x8($s0)
    lh      $t6, 0xa($s0)
    addiu   $v1, $zero, 0x1
    addiu   $t7, $v0, 0x1
    slt     $at, $v0, $t6
    bnez    $at, branch_0x801e7280
    nop
    sh      $v1, 0x2($s0)
    b       branch_0x801e7338
    sh      $zero, 0x8($s0)
branch_0x801e7280:
    b       branch_0x801e7338
    sh      $t7, 0x8($s0)
branch_0x801e7288:
    lh      $t8, 0x8($s0)
    lh      $t0, 0xc($s0)
    addiu   $t6, $zero, 0x2
    addiu   $t9, $t8, 0x1
    bnez    $t0, branch_0x801e72b0
    sh      $t9, 0x8($s0)
    lh      $t1, 0x18($s0)
    addiu   $t2, $t1, 0x14
    b       branch_0x801e72bc
    sh      $t2, 0x18($s0)
branch_0x801e72b0:
    lh      $t3, 0x18($s0)
    addiu   $t4, $t3, 0x14
    sh      $t4, 0x18($s0)
branch_0x801e72bc:
    lh      $t5, 0x18($s0)
    addiu   $t7, $zero, 0xfa
    slti    $at, $t5, 0xfa
    bnezl   $at, branch_0x801e733c
    lui     $at, 0x4180
    sh      $t6, 0x2($s0)
    sh      $t7, 0x18($s0)
    b       branch_0x801e7338
    sh      $zero, 0x8($s0)

.globl Function_0x801e72e0
Function_0x801e72e0: # 0x801e72e0
    lh      $v0, 0x8($s0)
branch_0x801e72e4:
    lh      $t8, 0xe($s0)
    lui     $t9, 0x8023
    addiu   $t9, $t9, 0x87d0
    slt     $at, $v0, $t8
    bnez    $at, branch_0x801e7334
    addiu   $t3, $v0, 0x1
    lui     $t0, 0x8022
    addiu   $t0, $t0, 0x6a80
    addiu   $t2, $t0, 0x24
branch_0x801e7308:
    lw      $at, 0x0($t0)
    addiu   $t0, $t0, 0xc
    addiu   $t9, $t9, 0xc
    sw      $at, -0xc($t9)
    lw      $at, -0x8($t0)
    sw      $at, -0x8($t9)
    lw      $at, -0x4($t0)
    bne     $t0, $t2, branch_0x801e7308
    sw      $at, -0x4($t9)
    b       branch_0x801e7338
    sh      $v1, 0x6($s0)
branch_0x801e7334:
    sh      $t3, 0x8($s0)
branch_0x801e7338:
    lui     $at, 0x4180
branch_0x801e733c:
    mtc1    $at, $a0
    lui     $at, 0x4580
    mtc1    $at, $a2
    lw      $a0, -0x1ca8($a0)
    lui     $a1, 0x8023
    addiu   $a1, $a1, 0x87f4
    lui     $a2, 0x4204
    lui     $a3, 0x3f80
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    swc1    $f4, 0x10($sp)
    addiu   $a0, $a0, 0x1300
    jal     Function_0x80048180
    swc1    $f6, 0x14($sp)
    mtc1    $zero, $zero
    lui     $at, 0x3f80
    mtc1    $at, $t0
    swc1    $f0, 0x10($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f8, 0x14($sp)
    lh      $t4, 0x18($s0)
    lui     $at, 0xc37a
    mtc1    $at, $a2
    mtc1    $t4, $t2
    lui     $at, 0x8022
    lui     $a0, 0x801d
    cvt.s.w $f16, $f10
    lw      $a0, -0x1ca8($a0)
    lwc1    $f8, 0x6b08($at)
    mfc1    $a1, $zero
    mfc1    $a2, $zero
    lui     $a3, 0xbf80
    swc1    $f16, 0x1c($sp)
    lh      $t5, 0x1a($s0)
    swc1    $f6, 0x24($sp)
    addiu   $a0, $a0, 0x1340
    mtc1    $t5, $s2
    swc1    $f8, 0x28($sp)
    cvt.s.w $f4, $f18
    jal     Function_0x80048a28
    swc1    $f4, 0x20($sp)
    lh      $t6, 0x1e($s0)
    addiu   $t7, $t6, 0x1
    sh      $t7, 0x1e($s0)
    lh      $t8, 0x1e($s0)
    slti    $at, $t8, 0x2
    bnezl   $at, branch_0x801e7410
    lw      $ra, 0x3c($sp)
    lh      $t1, 0x1c($s0)
    sh      $zero, 0x1e($s0)
    xori    $t2, $t1, 0x1
    sh      $t2, 0x1c($s0)
    lw      $ra, 0x3c($sp)
branch_0x801e7410:
    lw      $s0, 0x38($sp)
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop

.globl Function_0x801e7420
Function_0x801e7420: # 0x801e7420
    addiu   $sp, $sp, 0xffc0
    sw      $ra, 0x3c($sp)
    sw      $s0, 0x38($sp)
    lh      $v0, 0x2($a0)
    or      $s0, $a0, $zero
    addiu   $v1, $zero, 0x1
    beqzl   $v0, branch_0x801e745c
    lh      $v0, 0x8($s0)
    beq     $v0, $v1, branch_0x801e74c8
    addiu   $at, $zero, 0x2
    beql    $v0, $at, branch_0x801e7524
    lh      $v0, 0x8($s0)
    b       branch_0x801e757c
    lui     $at, 0x4180

.globl Function_0x801e7458
Function_0x801e7458: # 0x801e7458
    lh      $v0, 0x8($s0)
branch_0x801e745c:
    lh      $t6, 0xa($s0)
    addiu   $v1, $zero, 0x1
    lui     $t7, %hi(Unknown_0x801ce398)
    slt     $at, $v0, $t6
    bnez    $at, branch_0x801e74c0
    addiu   $t9, $v0, 0x1
    sh      $v1, 0x2($s0)
    sh      $zero, 0x8($s0)
    lw      $t7, %lo(Unknown_0x801ce398)($t7)
    addiu   $at, $zero, 0x8
    beql    $t7, $at, branch_0x801e757c
    lui     $at, 0x4180
    lh      $t8, 0xc($s0)
    addiu   $at, $zero, 0x2
    or      $a1, $zero, $zero
    bne     $t8, $at, branch_0x801e74b0
    addiu   $a0, $zero, 0x2a
    jal     Function_0x800c3594
    addiu   $a0, $zero, 0x38
    b       branch_0x801e757c
    lui     $at, 0x4180
branch_0x801e74b0:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x801e757c
    lui     $at, 0x4180
branch_0x801e74c0:
    b       branch_0x801e7578
    sh      $t9, 0x8($s0)
branch_0x801e74c8:
    lh      $t0, 0x8($s0)
    lh      $t2, 0xc($s0)
    addiu   $t8, $zero, 0x2
    addiu   $t1, $t0, 0x1
    bnez    $t2, branch_0x801e74f0
    sh      $t1, 0x8($s0)
    lh      $t3, 0x18($s0)
    addiu   $t4, $t3, 0x14
    b       branch_0x801e74fc
    sh      $t4, 0x18($s0)
branch_0x801e74f0:
    lh      $t5, 0x18($s0)
    addiu   $t6, $t5, 0x14
    sh      $t6, 0x18($s0)
branch_0x801e74fc:
    lh      $t7, 0x18($s0)
    addiu   $t9, $zero, 0xffab
    slti    $at, $t7, 0xffab
    bnezl   $at, branch_0x801e757c
    lui     $at, 0x4180
    sh      $t8, 0x2($s0)
    sh      $t9, 0x18($s0)
    b       branch_0x801e7578
    sh      $zero, 0x8($s0)

.globl Function_0x801e7520
Function_0x801e7520: # 0x801e7520
    lh      $v0, 0x8($s0)
branch_0x801e7524:
    lh      $t0, 0xe($s0)
    lui     $t1, 0x8023
    addiu   $t1, $t1, 0x87d0
    slt     $at, $v0, $t0
    bnez    $at, branch_0x801e7574
    addiu   $t5, $v0, 0x1
    lui     $t2, 0x8022
    addiu   $t2, $t2, 0x6a80
    addiu   $t4, $t2, 0x24
branch_0x801e7548:
    lw      $at, 0x0($t2)
    addiu   $t2, $t2, 0xc
    addiu   $t1, $t1, 0xc
    sw      $at, -0xc($t1)
    lw      $at, -0x8($t2)
    sw      $at, -0x8($t1)
    lw      $at, -0x4($t2)
    bne     $t2, $t4, branch_0x801e7548
    sw      $at, -0x4($t1)
    b       branch_0x801e7578
    sh      $v1, 0x6($s0)
branch_0x801e7574:
    sh      $t5, 0x8($s0)
branch_0x801e7578:
    lui     $at, 0x4180
branch_0x801e757c:
    mtc1    $at, $a0
    mtc1    $zero, $zero
    lui     $at, 0x4580
    lui     $a0, 0x801d
    lw      $a0, -0x1ca8($a0)
    mtc1    $at, $a2
    lui     $a1, 0x8023
    addiu   $a1, $a1, 0x87f4
    lui     $a2, 0x4204
    lui     $a3, 0x3f80
    swc1    $f4, 0x10($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    addiu   $a0, $a0, 0x1300
    jal     Function_0x80048180
    swc1    $f6, 0x14($sp)
    mtc1    $zero, $zero
    lui     $at, 0x3f80
    mtc1    $at, $v0
    swc1    $f0, 0x10($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f2, 0x14($sp)
    lh      $t6, 0x18($s0)
    lui     $at, 0xc37a
    mtc1    $at, $a0
    mtc1    $t6, $t0
    lui     $at, 0x8022
    lui     $a0, 0x801d
    cvt.s.w $f10, $f8
    lw      $a0, -0x1ca8($a0)
    lwc1    $f6, 0x6b0c($at)
    mfc1    $a1, $zero
    mfc1    $a2, $zero
    mfc1    $a3, $v0
    swc1    $f10, 0x1c($sp)
    lh      $t7, 0x1a($s0)
    swc1    $f4, 0x24($sp)
    addiu   $a0, $a0, 0x1340
    mtc1    $t7, $s0
    swc1    $f6, 0x28($sp)
    cvt.s.w $f18, $f16
    jal     Function_0x80048a28
    swc1    $f18, 0x20($sp)
    lh      $t8, 0x1e($s0)
    addiu   $t9, $t8, 0x1
    sh      $t9, 0x1e($s0)
    lh      $t0, 0x1e($s0)
    slti    $at, $t0, 0x2
    bnezl   $at, branch_0x801e7658
    lw      $ra, 0x3c($sp)
    lh      $t3, 0x1c($s0)
    sh      $zero, 0x1e($s0)
    xori    $t4, $t3, 0x1
    sh      $t4, 0x1c($s0)
    lw      $ra, 0x3c($sp)
branch_0x801e7658:
    lw      $s0, 0x38($sp)
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop

.globl Function_0x801e7668
Function_0x801e7668: # 0x801e7668
    lui     $t6, 0x8023
    lh      $t6, -0x7830($t6)
    addiu   $sp, $sp, 0xffc8
    sw      $s0, 0x30($sp)
    or      $s0, $a0, $zero
    beqz    $t6, branch_0x801e769c
    sw      $ra, 0x34($sp)
    lui     $t7, 0x8023
    lh      $t7, -0x782c($t7)
    lui     $t8, 0x8023
    lui     $t9, 0x8023
    bnez    $t7, branch_0x801e76a4
    nop
branch_0x801e769c:
    b       branch_0x801e79a4
    or      $v0, $s0, $zero
branch_0x801e76a4:
    lh      $t8, -0x780a($t8)
    lh      $t9, -0x7810($t9)
    lui     $t4, 0x8023
    beq     $t8, $t9, branch_0x801e76c0
    nop
    b       branch_0x801e79a4
    or      $v0, $s0, $zero
branch_0x801e76c0:
    lh      $t4, -0x7830($t4)
    addiu   $t5, $t4, 0xffff
    sltiu   $at, $t5, 0x7
    beqz    $at, branch_0x801e79a0
    sll     $t5, $t5, 2
    lui     $at, 0x8022
    addu    $at, $at, $t5
    lw      $t5, 0x6b10($at)
    jr      $t5
    nop

.globl Function_0x801e76e8
Function_0x801e76e8: # 0x801e76e8
    lui     $t6, 0x800e
    lw      $t6, -0x5758($t6)
    addiu   $at, $zero, 0x1
    or      $a0, $s0, $zero
    bne     $t6, $at, branch_0x801e7754
    addiu   $a1, $zero, 0x8
    lui     $t8, 0x8023
    lui     $t9, 0x8023
    lui     $t4, 0x8023
    lui     $t5, 0x8023
    lh      $t5, -0x781a($t5)
    lh      $t4, -0x781c($t4)
    lh      $t9, -0x781e($t9)
    lh      $t8, -0x7820($t8)
    addiu   $t7, $zero, 0xda
    sw      $t7, 0x10($sp)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x8
    addiu   $a2, $zero, 0x14
    addiu   $a3, $zero, 0x136
    sw      $t5, 0x20($sp)
    sw      $t4, 0x1c($sp)
    sw      $t9, 0x18($sp)
    jal     Function_0x801e79b8
    sw      $t8, 0x14($sp)
    b       branch_0x801e79a0
    or      $s0, $v0, $zero
branch_0x801e7754:
    lui     $t7, 0x8023
    lui     $t8, 0x8023
    lui     $t9, 0x8023
    lui     $t4, 0x8023
    lh      $t4, -0x781a($t4)
    lh      $t9, -0x781c($t9)
    lh      $t8, -0x781e($t8)
    lh      $t7, -0x7820($t7)
    addiu   $t6, $zero, 0xe4
    sw      $t6, 0x10($sp)
    addiu   $a2, $zero, 0xc
    addiu   $a3, $zero, 0x136
    sw      $t4, 0x20($sp)
    sw      $t9, 0x1c($sp)
    sw      $t8, 0x18($sp)
    jal     Function_0x801e79b8
    sw      $t7, 0x14($sp)
    b       branch_0x801e79a0
    or      $s0, $v0, $zero

.globl Function_0x801e77a0
Function_0x801e77a0: # 0x801e77a0
    lui     $t5, 0x800e
    lw      $t5, -0x5758($t5)
    addiu   $at, $zero, 0x1
    or      $a0, $s0, $zero
    bne     $t5, $at, branch_0x801e780c
    addiu   $a1, $zero, 0x8
    lui     $t7, 0x8023
    lui     $t8, 0x8023
    lui     $t9, 0x8023
    lui     $t4, 0x8023
    lh      $t4, -0x781a($t4)
    lh      $t9, -0x781c($t9)
    lh      $t8, -0x781e($t8)
    lh      $t7, -0x7820($t7)
    addiu   $t6, $zero, 0xda
    sw      $t6, 0x10($sp)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x8
    addiu   $a2, $zero, 0x14
    addiu   $a3, $zero, 0x136
    sw      $t4, 0x20($sp)
    sw      $t9, 0x1c($sp)
    sw      $t8, 0x18($sp)
    jal     Function_0x801e79b8
    sw      $t7, 0x14($sp)
    b       branch_0x801e79a0
    or      $s0, $v0, $zero
branch_0x801e780c:
    lui     $t6, 0x8023
    lui     $t7, 0x8023
    lui     $t8, 0x8023
    lui     $t9, 0x8023
    lh      $t9, -0x781a($t9)
    lh      $t8, -0x781c($t8)
    lh      $t7, -0x781e($t7)
    lh      $t6, -0x7820($t6)
    addiu   $t5, $zero, 0xe4
    sw      $t5, 0x10($sp)
    addiu   $a2, $zero, 0xc
    addiu   $a3, $zero, 0x136
    sw      $t9, 0x20($sp)
    sw      $t8, 0x1c($sp)
    sw      $t7, 0x18($sp)
    jal     Function_0x801e79b8
    sw      $t6, 0x14($sp)
    b       branch_0x801e79a0
    or      $s0, $v0, $zero

.globl Function_0x801e7858
Function_0x801e7858: # 0x801e7858
    or      $v0, $s0, $zero
    lui     $t4, 0xb400
    sw      $t4, 0x0($v0)
    lui     $t5, 0x8023
    lhu     $t5, -0x780c($t5)
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    sw      $t5, 0x4($v0)
    addiu   $s0, $s0, 0x8
    lui     $t6, 0x103
    lui     $t7, 0x700
    addiu   $t7, $t7, 0x1300
    ori     $t6, $t6, 0x40
    or      $a0, $s0, $zero
    sw      $t6, 0x0($v1)
    sw      $t7, 0x4($v1)
    lui     $t8, 0x102
    lui     $t9, 0x700
    addiu   $t9, $t9, 0x1340
    ori     $t8, $t8, 0x40
    addiu   $s0, $s0, 0x8
    sw      $t8, 0x0($a0)
    sw      $t9, 0x4($a0)
    or      $a1, $s0, $zero
    lui     $t4, 0x107
    lui     $t2, 0x600
    addiu   $t4, $t4, 0xf5b0
    sw      $t4, 0x4($a1)
    sw      $t2, 0x0($a1)
    lui     $t5, 0x8023
    lh      $t5, -0x7824($t5)
    addiu   $s0, $s0, 0x8
    lui     $t3, 0xe700
    bnez    $t5, branch_0x801e7904
    or      $v0, $s0, $zero
    lui     $t6, 0x8023
    lh      $t6, -0x7828($t6)
    lui     $t9, 0x8022
    addiu   $t9, $t9, 0x6aa4
    andi    $t7, $t6, 0x1
    sll     $t8, $t7, 3
    b       branch_0x801e7920
    addu    $a2, $t8, $t9
branch_0x801e7904:
    lui     $t4, 0x8023
    lh      $t4, -0x7828($t4)
    lui     $t7, 0x8022
    addiu   $t7, $t7, 0x6ab4
    andi    $t5, $t4, 0x1
    sll     $t6, $t5, 3
    addu    $a2, $t6, $t7
branch_0x801e7920:
    lw      $a3, 0x0($a2)
    lw      $t1, 0x4($a2)
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($v0)
    sw      $t3, 0x0($v0)
    or      $v1, $s0, $zero
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    sw      $t2, 0x0($v1)
    addiu   $s0, $s0, 0x8
    sw      $a3, 0x4($v1)
    or      $a1, $s0, $zero
    sw      $zero, 0x4($a0)
    sw      $t3, 0x0($a0)
    addiu   $s0, $s0, 0x8
    lui     $t8, 0xb900
    lui     $t9, 0xc18
    ori     $t9, $t9, 0x4240
    ori     $t8, $t8, 0x31d
    or      $t0, $s0, $zero
    sw      $t8, 0x0($a1)
    sw      $t9, 0x4($a1)
    addiu   $s0, $s0, 0x8
    lui     $t5, 0x4f
    ori     $t5, $t5, 0xc3bc
    lui     $t4, 0xed00
    or      $v0, $s0, $zero
    sw      $t4, 0x0($t0)
    sw      $t5, 0x4($t0)
    sw      $t2, 0x0($v0)
    addiu   $s0, $s0, 0x8
    sw      $t1, 0x4($v0)
branch_0x801e79a0:
    or      $v0, $s0, $zero
branch_0x801e79a4:
    lw      $ra, 0x34($sp)
    lw      $s0, 0x30($sp)
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop

.globl Function_0x801e79b8
Function_0x801e79b8: # 0x801e79b8
    addiu   $sp, $sp, 0xffe8
    lw      $t6, 0x2c($sp)
    addiu   $t7, $zero, 0xff
    sltiu   $at, $t6, 0x100
    bnezl   $at, branch_0x801e79d8
    lw      $t0, 0x30($sp)
    sw      $t7, 0x2c($sp)
    lw      $t0, 0x30($sp)
branch_0x801e79d8:
    lw      $t1, 0x34($sp)
    lw      $v0, 0x38($sp)
    sltiu   $at, $t0, 0x100
    bnezl   $at, branch_0x801e79f4
    sltiu   $at, $t1, 0x100
    addiu   $t0, $zero, 0xff
    sltiu   $at, $t1, 0x100
branch_0x801e79f4:
    bnezl   $at, branch_0x801e7a04
    sltiu   $at, $v0, 0x100
    addiu   $t1, $zero, 0xff
    sltiu   $at, $v0, 0x100
branch_0x801e7a04:
    bnezl   $at, branch_0x801e7a14
    sltiu   $at, $a1, 0x140
    addiu   $v0, $zero, 0xff
    sltiu   $at, $a1, 0x140
branch_0x801e7a14:
    bnez    $at, branch_0x801e7a2c
    sltiu   $at, $a3, 0x140
    bnezl   $at, branch_0x801e7a30
    sltiu   $at, $a2, 0xf0
    b       branch_0x801e7bcc
    or      $v0, $a0, $zero
branch_0x801e7a2c:
    sltiu   $at, $a2, 0xf0
branch_0x801e7a30:
    bnez    $at, branch_0x801e7a4c
    lw      $v1, 0x28($sp)
    sltiu   $at, $v1, 0xf0
    bnezl   $at, branch_0x801e7a50
    sltiu   $at, $a1, 0x140
    b       branch_0x801e7bcc
    or      $v0, $a0, $zero
branch_0x801e7a4c:
    sltiu   $at, $a1, 0x140
branch_0x801e7a50:
    bnez    $at, branch_0x801e7a5c
    lw      $v1, 0x28($sp)
    or      $a1, $zero, $zero
branch_0x801e7a5c:
    sltiu   $at, $a3, 0x140
    bnez    $at, branch_0x801e7a6c
    or      $t2, $a0, $zero
    addiu   $a3, $zero, 0x13f
branch_0x801e7a6c:
    sltiu   $at, $a2, 0xf0
    bnez    $at, branch_0x801e7a7c
    addiu   $t3, $a0, 0x8
    or      $a2, $zero, $zero
branch_0x801e7a7c:
    sltiu   $at, $v1, 0xf0
    bnez    $at, branch_0x801e7a8c
    lui     $t8, 0x380
    addiu   $v1, $zero, 0xf0
branch_0x801e7a8c:
    lui     $t9, 0x107
    addiu   $t9, $t9, 0xf008
    ori     $t8, $t8, 0x10
    sw      $t8, 0x0($t2)
    sw      $t9, 0x4($t2)
    lui     $t6, 0xb600
    sw      $t6, 0x0($t3)
    addiu   $t4, $t3, 0x8
    addiu   $t7, $zero, 0xffff
    sw      $t7, 0x4($t3)
    addiu   $t5, $t4, 0x8
    addiu   $t9, $zero, 0x4
    lui     $t8, 0xb700
    sw      $t8, 0x0($t4)
    sw      $t9, 0x4($t4)
    lui     $t6, 0xbb00
    sw      $t6, 0x0($t5)
    sw      $zero, 0x4($t5)
    addiu   $a0, $t5, 0x8
    sw      $a0, 0x4($sp)
    lw      $t8, 0x4($sp)
    addiu   $t2, $a0, 0x8
    lui     $t7, 0xe700
    lui     $t9, 0xba00
    sw      $t7, 0x0($t8)
    sw      $zero, 0x4($t8)
    ori     $t9, $t9, 0x1402
    sw      $t9, 0x0($t2)
    sw      $zero, 0x4($t2)
    addiu   $t3, $t2, 0x8
    lui     $t6, 0xfa00
    sw      $t6, 0x0($t3)
    lw      $t8, 0x2c($sp)
    andi    $t6, $t0, 0xff
    sll     $t7, $t6, 16
    sll     $t9, $t8, 24
    or      $t8, $t9, $t7
    andi    $t6, $t1, 0xff
    sll     $t9, $t6, 8
    or      $t7, $t8, $t9
    andi    $t6, $v0, 0xff
    or      $t8, $t7, $t6
    sw      $t8, 0x4($t3)
    addiu   $t4, $t3, 0x8
    lui     $t7, 0xfffd
    lui     $t9, 0xfcff
    ori     $t9, $t9, 0xffff
    ori     $t7, $t7, 0xf6fb
    sw      $t7, 0x4($t4)
    sw      $t9, 0x0($t4)
    lui     $t6, 0xb900
    addiu   $t5, $t4, 0x8
    ori     $t6, $t6, 0x31d
    addiu   $t9, $a3, 0x1
    sw      $t6, 0x0($t5)
    lui     $t8, 0x50
    andi    $t7, $t9, 0x3ff
    ori     $t8, $t8, 0x41c8
    sll     $t6, $t7, 14
    sw      $t8, 0x4($t5)
    addiu   $t9, $v1, 0x1
    lui     $at, 0xf600
    or      $t8, $t6, $at
    andi    $t7, $t9, 0x3ff
    sll     $t6, $t7, 2
    or      $t9, $t8, $t6
    addiu   $t0, $t5, 0x8
    sw      $t9, 0x0($t0)
    andi    $t6, $a2, 0x3ff
    andi    $t7, $a1, 0x3ff
    sll     $t8, $t7, 14
    sll     $t9, $t6, 2
    or      $t7, $t8, $t9
    addiu   $t1, $t0, 0x8
    sw      $t7, 0x4($t0)
    lui     $t6, 0xb900
    ori     $t6, $t6, 0x2
    sw      $t6, 0x0($t1)
    sw      $zero, 0x4($t1)
    addiu   $v0, $t1, 0x8
branch_0x801e7bcc:
    jr      $ra
    addiu   $sp, $sp, 0x18

.globl Function_0x801e7bd4
Function_0x801e7bd4: # 0x801e7bd4
    or      $v0, $a0, $zero
    lui     $t6, 0x380
    ori     $t6, $t6, 0x10
    lui     $t7, 0x107
    addiu   $t7, $t7, 0xf008
    sw      $t6, 0x0($v0)
    addiu   $a0, $a0, 0x8
    sw      $t7, 0x4($v0)
    or      $v1, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t8, 0xb600
    addiu   $t9, $zero, 0xffff
    or      $t0, $a0, $zero
    sw      $t9, 0x4($v1)
    sw      $t8, 0x0($v1)
    addiu   $a0, $a0, 0x8
    lui     $t3, 0xb700
    addiu   $t4, $zero, 0x4
    or      $t1, $a0, $zero
    sw      $t4, 0x4($t0)
    sw      $t3, 0x0($t0)
    addiu   $a0, $a0, 0x8
    lui     $t5, 0xbb00
    or      $t2, $a0, $zero
    sw      $t5, 0x0($t1)
    sw      $zero, 0x4($t1)
    lui     $t6, 0xe700
    sw      $t6, 0x0($t2)
    sw      $zero, 0x4($t2)
    addiu   $a0, $a0, 0x8
    lw      $v1, 0x10($sp)
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t7, 0xba00
    ori     $t7, $t7, 0x1402
    or      $t0, $a0, $zero
    lui     $t8, 0xfcff
    lui     $t9, 0xfffd
    sw      $t7, 0x0($v0)
    sw      $zero, 0x4($v0)
    ori     $t9, $t9, 0xf6fb
    ori     $t8, $t8, 0xffff
    addiu   $at, $zero, 0xff
    sw      $t8, 0x0($t0)
    sw      $t9, 0x4($t0)
    bne     $v1, $at, branch_0x801e7cb4
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    lui     $t3, 0xb900
    lui     $t4, 0xf0a
    ori     $t4, $t4, 0x4000
    ori     $t3, $t3, 0x31d
    sw      $t3, 0x0($v0)
    sw      $t4, 0x4($v0)
    b       branch_0x801e7cd4
    addiu   $a0, $a0, 0x8
branch_0x801e7cb4:
    or      $v0, $a0, $zero
    lui     $t5, 0xb900
    lui     $t6, 0x50
    ori     $t6, $t6, 0x41c8
    ori     $t5, $t5, 0x31d
    sw      $t5, 0x0($v0)
    sw      $t6, 0x4($v0)
    addiu   $a0, $a0, 0x8
branch_0x801e7cd4:
    lui     $t7, 0xed00
    lui     $t8, 0x4f
    ori     $t8, $t8, 0xc3bc
    sw      $t7, 0x0($a0)
    addiu   $t1, $a0, 0x8
    lui     $t9, 0xb900
    sw      $t8, 0x4($a0)
    ori     $t9, $t9, 0x2
    sw      $t9, 0x0($t1)
    sw      $zero, 0x4($t1)
    addiu   $t2, $t1, 0x8
    lui     $t3, 0xfa00
    andi    $t6, $a2, 0xff
    sll     $t7, $t6, 16
    sw      $t3, 0x0($t2)
    andi    $t9, $a3, 0xff
    sll     $t5, $a1, 24
    or      $t8, $t5, $t7
    sll     $t3, $t9, 8
    or      $t4, $t8, $t3
    andi    $t6, $v1, 0xff
    or      $t5, $t4, $t6
    sw      $t5, 0x4($t2)
    jr      $ra
    addiu   $v0, $t2, 0x8

.globl Function_0x801e7d38
Function_0x801e7d38: # 0x801e7d38
    slti    $at, $a1, 0x140
    bnez    $at, branch_0x801e7d50
    addiu   $v0, $zero, 0x1
    or      $v0, $zero, $zero
    b       branch_0x801e7d84
    lw      $v1, 0x10($sp)
branch_0x801e7d50:
    bgez    $a3, branch_0x801e7d64
    slti    $at, $a2, 0xf0
    or      $v0, $zero, $zero
    b       branch_0x801e7d84
    lw      $v1, 0x10($sp)
branch_0x801e7d64:
    bnez    $at, branch_0x801e7d78
    lw      $v1, 0x10($sp)
    or      $v0, $zero, $zero
    b       branch_0x801e7d84
    lw      $v1, 0x10($sp)
branch_0x801e7d78:
    bgez    $v1, branch_0x801e7d84
    nop
    or      $v0, $zero, $zero
branch_0x801e7d84:
    bnez    $v0, branch_0x801e7d94
    slti    $at, $a3, 0x140
    jr      $ra
    or      $v0, $a0, $zero
branch_0x801e7d94:
    bgez    $a1, branch_0x801e7da0
    addiu   $v0, $a0, 0x8
    or      $a1, $zero, $zero
branch_0x801e7da0:
    bnez    $at, branch_0x801e7dac
    andi    $t5, $a1, 0x3ff
    addiu   $a3, $zero, 0x13f
branch_0x801e7dac:
    bgez    $a2, branch_0x801e7db8
    slti    $at, $v1, 0xf0
    or      $a2, $zero, $zero
branch_0x801e7db8:
    bnez    $at, branch_0x801e7dc4
    addiu   $t6, $a3, 0x1
    addiu   $v1, $zero, 0xef
branch_0x801e7dc4:
    andi    $t7, $t6, 0x3ff
    sll     $t8, $t7, 14
    lui     $at, 0xf600
    addiu   $t1, $v1, 0x1
    andi    $t2, $t1, 0x3ff
    or      $t9, $t8, $at
    andi    $t7, $a2, 0x3ff
    sll     $t8, $t7, 2
    sll     $t3, $t2, 2
    sll     $t6, $t5, 14
    or      $t1, $t6, $t8
    or      $t4, $t9, $t3
    sw      $t4, 0x0($a0)
    sw      $t1, 0x4($a0)
    jr      $ra
    nop

.globl Function_0x801e7e04
Function_0x801e7e04: # 0x801e7e04
    nop
    nop
    nop

.globl Function_0x801e7e10
Function_0x801e7e10: # 0x801e7e10
    addiu   $sp, $sp, 0xff90
    lw      $t6, 0x84($sp)
    sw      $s0, 0x50($sp)
    addiu   $at, $zero, 0x2
    or      $s0, $a0, $zero
    sw      $ra, 0x54($sp)
    sw      $a3, 0x7c($sp)
    bne     $t6, $at, branch_0x801e7e38
    addiu   $t3, $zero, 0x1
    or      $t3, $zero, $zero
branch_0x801e7e38:
    sltiu   $at, $a1, 0x6
    beqz    $at, branch_0x801e7fd8
    sll     $t7, $a1, 2
    lui     $at, 0x8022
    addu    $at, $at, $t7
    lw      $t7, 0x6c14($at)
    jr      $t7
    nop

.globl Function_0x801e7e58
Function_0x801e7e58: # 0x801e7e58
    sltiu   $at, $a2, 0x28
    bnez    $at, branch_0x801e7e68
    addiu   $t8, $zero, 0x18
    or      $a2, $zero, $zero
branch_0x801e7e68:
    sll     $t4, $a2, 4
    subu    $t4, $t4, $a2
    lui     $t5, 0x103
    addiu   $t5, $t5, 0x3cb8
    sll     $t4, $t4, 5
    addiu   $t9, $zero, 0x14
    addu    $a3, $t4, $t5
    sw      $t8, 0x64($sp)
    sw      $t9, 0x5c($sp)
    sw      $a3, 0x6c($sp)
    b       branch_0x801e7fd8
    sw      $zero, 0x58($sp)

.globl Function_0x801e7e98
Function_0x801e7e98: # 0x801e7e98
    sltiu   $at, $a2, 0x2a
    bnez    $at, branch_0x801e7ea8
    addiu   $t6, $zero, 0x8
    or      $a2, $zero, $zero
branch_0x801e7ea8:
    lui     $t9, 0x104
    addiu   $t9, $t9, 0x87c0
    sll     $t8, $a2, 6
    addiu   $t7, $zero, 0x8
    addu    $a3, $t8, $t9
    sw      $t6, 0x64($sp)
    sw      $t7, 0x5c($sp)
    sw      $a3, 0x6c($sp)
    b       branch_0x801e7fd8
    sw      $zero, 0x58($sp)

.globl Function_0x801e7ed0
Function_0x801e7ed0: # 0x801e7ed0
    sltiu   $at, $a2, 0x2e
    bnez    $at, branch_0x801e7ee0
    addiu   $t4, $zero, 0x10
    or      $a2, $zero, $zero
branch_0x801e7ee0:
    sll     $t6, $a2, 2
    subu    $t6, $t6, $a2
    lui     $t7, 0x104
    addiu   $t7, $t7, 0x9248
    sll     $t6, $t6, 6
    addiu   $t5, $zero, 0xc
    addu    $a3, $t6, $t7
    sw      $t4, 0x64($sp)
    sw      $t5, 0x5c($sp)
    sw      $a3, 0x6c($sp)
    b       branch_0x801e7fd8
    sw      $zero, 0x58($sp)

.globl Function_0x801e7f10
Function_0x801e7f10: # 0x801e7f10
    sltiu   $at, $a2, 0xc
    bnez    $at, branch_0x801e7f20
    addiu   $t8, $zero, 0xc
    or      $a2, $zero, $zero
branch_0x801e7f20:
    sll     $t4, $a2, 2
    subu    $t4, $t4, $a2
    lui     $t6, 0x104
    addiu   $t6, $t6, 0xb4d0
    sll     $t5, $t4, 8
    addiu   $t9, $zero, 0x10
    addu    $a3, $t5, $t6
    addiu   $v1, $zero, 0x1
    sw      $t8, 0x64($sp)
    sw      $t9, 0x5c($sp)
    sw      $v1, 0x58($sp)
    b       branch_0x801e7fd8
    sw      $a3, 0x6c($sp)

.globl Function_0x801e7f54
Function_0x801e7f54: # 0x801e7f54
    sltiu   $at, $a2, 0xa
    bnez    $at, branch_0x801e7f64
    addiu   $t7, $zero, 0xc
    or      $a2, $zero, $zero
branch_0x801e7f64:
    sll     $t9, $a2, 2
    subu    $t9, $t9, $a2
    lui     $t5, 0x104
    addiu   $t5, $t5, 0xb4d0
    sll     $t4, $t9, 8
    addiu   $t8, $zero, 0x10
    addu    $a3, $t4, $t5
    addiu   $v1, $zero, 0x1
    sw      $t7, 0x64($sp)
    sw      $t8, 0x5c($sp)
    sw      $v1, 0x58($sp)
    b       branch_0x801e7fd8
    sw      $a3, 0x6c($sp)

.globl Function_0x801e7f98
Function_0x801e7f98: # 0x801e7f98
    sltiu   $at, $a2, 0xb
    bnez    $at, branch_0x801e7fa8
    addiu   $t6, $zero, 0x10
    or      $a2, $zero, $zero
branch_0x801e7fa8:
    sll     $t8, $a2, 2
    addu    $t8, $t8, $a2
    lui     $t4, 0x104
    addiu   $t4, $t4, 0xd8d8
    sll     $t9, $t8, 8
    addiu   $t7, $zero, 0x14
    addu    $a3, $t9, $t4
    addiu   $v1, $zero, 0x1
    sw      $t6, 0x64($sp)
    sw      $t7, 0x5c($sp)
    sw      $v1, 0x58($sp)
    sw      $a3, 0x6c($sp)
branch_0x801e7fd8:
    lw      $t5, 0x7c($sp)
    lw      $v1, 0x58($sp)
    lw      $a3, 0x6c($sp)
    slti    $at, $t5, 0x140
    bnez    $at, branch_0x801e8000
    addiu   $v0, $zero, 0x1
    or      $v0, $zero, $zero
    lwc1    $f0, 0xb8($sp)
    b       branch_0x801e80a4
    lw      $t2, 0x80($sp)
branch_0x801e8000:
    lw      $t6, 0x64($sp)
    lwc1    $f0, 0xb8($sp)
    lui     $at, 0x4f80
    mtc1    $t6, $a0
    lw      $t2, 0x80($sp)
    bgez    $t6, branch_0x801e8028
    cvt.s.w $f6, $f4
    mtc1    $at, $t0
    nop
    add.s   $f6, $f6, $f8
branch_0x801e8028:
    mul.s   $f10, $f6, $f0
    lw      $t9, 0x7c($sp)
    slti    $at, $t2, 0xf0
    trunc.w.s   $f16, $f10
    mfc1    $t8, $s0
    nop
    addu    $t4, $t8, $t9
    bgez    $t4, branch_0x801e8058
    nop
    or      $v0, $zero, $zero
    b       branch_0x801e80a4
    lw      $t2, 0x80($sp)
branch_0x801e8058:
    bnez    $at, branch_0x801e8068
    lw      $t5, 0x5c($sp)
    b       branch_0x801e80a4
    or      $v0, $zero, $zero
branch_0x801e8068:
    mtc1    $t5, $s2
    lui     $at, 0x4f80
    bgez    $t5, branch_0x801e8084
    cvt.s.w $f4, $f18
    mtc1    $at, $t0
    nop
    add.s   $f4, $f4, $f8
branch_0x801e8084:
    mul.s   $f6, $f4, $f0
    trunc.w.s   $f10, $f6
    mfc1    $t7, $t2
    nop
    addu    $t8, $t7, $t2
    bgez    $t8, branch_0x801e80a4
    nop
    or      $v0, $zero, $zero
branch_0x801e80a4:
    bnez    $v0, branch_0x801e80b4
    nop
    b       branch_0x801e854c
    or      $v0, $s0, $zero
branch_0x801e80b4:
    lui     $v0, 0x8022
    addiu   $v0, $v0, 0x6bec
    lw      $t9, 0x0($v0)
    lui     $t4, 0xfd70
    lui     $t5, 0xf570
    beq     $a1, $t9, branch_0x801e80d4
    addiu   $at, $zero, 0x1
    sw      $a1, 0x0($v0)
branch_0x801e80d4:
    bnez    $v1, branch_0x801e8238
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $t4, 0x0($v0)
    sw      $a3, 0x4($v0)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    or      $a0, $s0, $zero
    sw      $t6, 0x4($v1)
    sw      $t5, 0x0($v1)
    addiu   $s0, $s0, 0x8
    lui     $t7, 0xe600
    sw      $t7, 0x0($a0)
    or      $t1, $s0, $zero
    sw      $zero, 0x4($a0)
    lui     $t8, 0xf300
    sw      $t8, 0x0($t1)
    lw      $t9, 0x64($sp)
    lw      $t4, 0x5c($sp)
    lw      $t0, 0x64($sp)
    addiu   $s0, $s0, 0x8
    multu   $t9, $t4
    srl     $v1, $t0, 3
    or      $a2, $v1, $zero
    or      $v0, $v1, $zero
    addiu   $a3, $zero, 0x7ff
    mflo    $a1
    addiu   $a1, $a1, 0x1
    srl     $t5, $a1, 1
    addiu   $a1, $t5, 0xffff
    sltiu   $at, $a1, 0x7ff
    beqz    $at, branch_0x801e8168
    nop
    b       branch_0x801e8168
    or      $a3, $a1, $zero
branch_0x801e8168:
    bnez    $v1, branch_0x801e8178
    lui     $at, 0x700
    b       branch_0x801e8178
    addiu   $a2, $zero, 0x1
branch_0x801e8178:
    bnez    $v1, branch_0x801e8188
    addiu   $t6, $a2, 0x7ff
    b       branch_0x801e8188
    addiu   $v0, $zero, 0x1
branch_0x801e8188:
    divu    $zero, $t6, $v0
    mflo    $t7
    andi    $t8, $t7, 0xfff
    andi    $t4, $a3, 0xfff
    sll     $t5, $t4, 12
    or      $t9, $t8, $at
    or      $t6, $t9, $t5
    sw      $t6, 0x4($t1)
    addiu   $t8, $t0, 0x7
    or      $v1, $s0, $zero
    addiu   $s0, $s0, 0x8
    srl     $t4, $t8, 3
    lui     $t7, 0xe700
    sw      $t7, 0x0($v1)
    andi    $t9, $t4, 0x1ff
    or      $a0, $s0, $zero
    sll     $t5, $t9, 9
    lui     $t7, 0x8
    sw      $zero, 0x4($v1)
    lui     $at, 0xf568
    or      $t6, $t5, $at
    ori     $t7, $t7, 0x200
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    sw      $t7, 0x4($a0)
    sw      $t6, 0x0($a0)
    lui     $t8, 0xf200
    sw      $t8, 0x0($a1)
    lw      $t4, 0x64($sp)
    lw      $t8, 0x5c($sp)
    bnez    $v0, branch_0x801e820c
    nop
    break   0x7
branch_0x801e820c:
    addiu   $t9, $t4, 0xffff
    sll     $t5, $t9, 2
    andi    $t6, $t5, 0xfff
    addiu   $t4, $t8, 0xffff
    sll     $t9, $t4, 2
    andi    $t5, $t9, 0xfff
    sll     $t7, $t6, 12
    or      $t6, $t7, $t5
    sw      $t6, 0x4($a1)
    b       branch_0x801e83a4
    addiu   $s0, $s0, 0x8
branch_0x801e8238:
    bne     $v1, $at, branch_0x801e83a4
    lui     $t1, 0xf518
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    lui     $t8, 0xfd18
    sw      $t8, 0x0($v0)
    addiu   $s0, $s0, 0x8
    sw      $a3, 0x4($v0)
    lui     $t4, 0x708
    ori     $t4, $t4, 0x200
    or      $a0, $s0, $zero
    sw      $t4, 0x4($v1)
    sw      $t1, 0x0($v1)
    addiu   $s0, $s0, 0x8
    lui     $t9, 0xe600
    sw      $t9, 0x0($a0)
    or      $t0, $s0, $zero
    sw      $zero, 0x4($a0)
    lui     $t7, 0xf300
    sw      $t7, 0x0($t0)
    lw      $t5, 0x64($sp)
    lw      $t6, 0x5c($sp)
    lw      $v1, 0x64($sp)
    addiu   $s0, $s0, 0x8
    multu   $t5, $t6
    sll     $t8, $v1, 2
    srl     $t4, $t8, 3
    addiu   $a3, $zero, 0x7ff
    mflo    $a1
    addiu   $a1, $a1, 0xffff
    sltiu   $at, $a1, 0x7ff
    beqz    $at, branch_0x801e82c8
    nop
    b       branch_0x801e82c8
    or      $a3, $a1, $zero
branch_0x801e82c8:
    bnez    $t4, branch_0x801e82d8
    or      $v1, $t4, $zero
    b       branch_0x801e82dc
    addiu   $a2, $zero, 0x1
branch_0x801e82d8:
    or      $a2, $v1, $zero
branch_0x801e82dc:
    bnez    $v1, branch_0x801e82ec
    addiu   $t9, $a2, 0x7ff
    b       branch_0x801e82f0
    addiu   $v0, $zero, 0x1
branch_0x801e82ec:
    or      $v0, $v1, $zero
branch_0x801e82f0:
    divu    $zero, $t9, $v0
    mflo    $t7
    andi    $t5, $t7, 0xfff
    lui     $at, 0x700
    andi    $t8, $a3, 0xfff
    sll     $t4, $t8, 12
    or      $t6, $t5, $at
    or      $t9, $t6, $t4
    sw      $t9, 0x4($t0)
    or      $v1, $s0, $zero
    lui     $t7, 0xe700
    sw      $t7, 0x0($v1)
    sw      $zero, 0x4($v1)
    lw      $t5, 0x64($sp)
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    sll     $t8, $t5, 1
    addiu   $t6, $t8, 0x7
    srl     $t4, $t6, 3
    andi    $t9, $t4, 0x1ff
    sll     $t7, $t9, 9
    lui     $t8, 0x8
    ori     $t8, $t8, 0x200
    or      $t5, $t7, $t1
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    sw      $t5, 0x0($a0)
    sw      $t8, 0x4($a0)
    lui     $t6, 0xf200
    sw      $t6, 0x0($a1)
    lw      $t4, 0x64($sp)
    lw      $t6, 0x5c($sp)
    addiu   $s0, $s0, 0x8
    addiu   $t9, $t4, 0xffff
    sll     $t7, $t9, 2
    andi    $t5, $t7, 0xfff
    addiu   $t4, $t6, 0xffff
    sll     $t9, $t4, 2
    andi    $t7, $t9, 0xfff
    sll     $t8, $t5, 12
    or      $t5, $t8, $t7
    sw      $t5, 0x4($a1)
    bnez    $v0, branch_0x801e83a4
    nop
    break   0x7
branch_0x801e83a4:
    addiu   $at, $zero, 0x1
    bne     $t3, $at, branch_0x801e84cc
    or      $a0, $s0, $zero
    lw      $t6, 0x64($sp)
    lw      $t4, 0x7c($sp)
    or      $t0, $s0, $zero
    addiu   $s0, $s0, 0x8
    addu    $v0, $t6, $t4
    sll     $t9, $v0, 2
    blez    $t9, branch_0x801e83d8
    lw      $t8, 0x5c($sp)
    b       branch_0x801e83dc
    or      $a2, $t9, $zero
branch_0x801e83d8:
    or      $a2, $zero, $zero
branch_0x801e83dc:
    addu    $v1, $t8, $t2
    sll     $t7, $v1, 2
    blez    $t7, branch_0x801e83f4
    lui     $at, 0xe400
    b       branch_0x801e83f8
    or      $v0, $t7, $zero
branch_0x801e83f4:
    or      $v0, $zero, $zero
branch_0x801e83f8:
    andi    $t5, $v0, 0xfff
    andi    $t4, $a2, 0xfff
    sll     $t9, $t4, 12
    or      $t6, $t5, $at
    or      $t8, $t6, $t9
    sw      $t8, 0x0($t0)
    lw      $a0, 0x7c($sp)
    sll     $a1, $t2, 2
    or      $a3, $s0, $zero
    sll     $t7, $a0, 2
    blez    $t7, branch_0x801e8430
    or      $a0, $t7, $zero
    b       branch_0x801e8434
    or      $a2, $t7, $zero
branch_0x801e8430:
    or      $a2, $zero, $zero
branch_0x801e8434:
    blez    $a1, branch_0x801e8444
    andi    $t4, $a2, 0xfff
    b       branch_0x801e8448
    or      $v0, $a1, $zero
branch_0x801e8444:
    or      $v0, $zero, $zero
branch_0x801e8448:
    andi    $t5, $v0, 0xfff
    sll     $t6, $t4, 12
    or      $t9, $t5, $t6
    sll     $v1, $a0, 10
    sra     $t7, $v1, 7
    sw      $t9, 0x4($t0)
    lui     $t8, 0xb300
    sw      $t8, 0x0($a3)
    bgez    $t7, branch_0x801e8478
    addiu   $s0, $s0, 0x8
    b       branch_0x801e847c
    or      $a2, $t7, $zero
branch_0x801e8478:
    or      $a2, $zero, $zero
branch_0x801e847c:
    sll     $v1, $a1, 10
    sra     $t4, $v1, 7
    bgez    $t4, branch_0x801e8494
    subu    $t8, $zero, $a2
    b       branch_0x801e8498
    or      $v0, $t4, $zero
branch_0x801e8494:
    or      $v0, $zero, $zero
branch_0x801e8498:
    subu    $t5, $zero, $v0
    andi    $t6, $t5, 0xffff
    sll     $t7, $t8, 16
    or      $t4, $t6, $t7
    or      $v1, $s0, $zero
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    sw      $t4, 0x4($a3)
    lui     $t5, 0xb200
    sw      $t5, 0x0($v1)
    sw      $t9, 0x4($v1)
    b       branch_0x801e8548
    addiu   $s0, $s0, 0x8
branch_0x801e84cc:
    lbu     $t8, 0x8b($sp)
    lbu     $t6, 0x8f($sp)
    lbu     $t7, 0x93($sp)
    lbu     $t4, 0x97($sp)
    lbu     $t5, 0x9b($sp)
    lbu     $t9, 0x9f($sp)
    sw      $t8, 0x14($sp)
    sw      $t6, 0x18($sp)
    sw      $t7, 0x1c($sp)
    sw      $t4, 0x20($sp)
    sw      $t5, 0x24($sp)
    sw      $t9, 0x28($sp)
    lbu     $t9, 0xb7($sp)
    lbu     $t5, 0xb3($sp)
    lbu     $t4, 0xaf($sp)
    lbu     $t7, 0xab($sp)
    lbu     $t6, 0xa7($sp)
    lbu     $t8, 0xa3($sp)
    lw      $a1, 0x64($sp)
    lw      $a2, 0x5c($sp)
    lw      $a3, 0x7c($sp)
    sw      $t2, 0x10($sp)
    swc1    $f0, 0x44($sp)
    sw      $t9, 0x40($sp)
    sw      $t5, 0x3c($sp)
    sw      $t4, 0x38($sp)
    sw      $t7, 0x34($sp)
    sw      $t6, 0x30($sp)
    jal     Function_0x801e8560
    sw      $t8, 0x2c($sp)
    or      $s0, $v0, $zero
branch_0x801e8548:
    or      $v0, $s0, $zero
branch_0x801e854c:
    lw      $ra, 0x54($sp)
    lw      $s0, 0x50($sp)
    addiu   $sp, $sp, 0x70
    jr      $ra
    nop

.globl Function_0x801e8560
Function_0x801e8560: # 0x801e8560
    addiu   $sp, $sp, 0xffd0
    sw      $fp, 0x28($sp)
    sw      $ra, 0x2c($sp)
    sw      $s7, 0x24($sp)
    sw      $s6, 0x20($sp)
    sw      $s5, 0x1c($sp)
    sw      $s4, 0x18($sp)
    sw      $s3, 0x14($sp)
    sw      $s2, 0x10($sp)
    sw      $s1, 0xc($sp)
    sw      $s0, 0x8($sp)
    sw      $a0, 0x30($sp)
    lui     $fp, 0x801d
    lui     $t1, 0x8023
    addiu   $t1, $t1, 0x8800
    addiu   $fp, $fp, 0xe358
    lw      $a0, 0x40($sp)
    lbu     $s0, 0x57($sp)
    lbu     $s1, 0x5b($sp)
    lbu     $s2, 0x5f($sp)
    lbu     $s3, 0x63($sp)
    lbu     $s4, 0x67($sp)
    lbu     $s5, 0x6b($sp)
    lbu     $s6, 0x6f($sp)
    lbu     $s7, 0x73($sp)
    addiu   $ra, $zero, 0x10
    lwc1    $f0, 0x74($sp)
    lbu     $t5, 0x53($sp)
    lbu     $t4, 0x4f($sp)
    lbu     $t3, 0x4b($sp)
    lbu     $t2, 0x47($sp)
    or      $v1, $zero, $zero
    addiu   $t0, $zero, 0xffe0
branch_0x801e85e4:
    lw      $t7, 0x0($t1)
    lw      $t6, 0x0($fp)
    addiu   $at, $zero, 0x30
    sll     $t8, $t7, 4
    addu    $t9, $t6, $t8
    addu    $v0, $t9, $v1
    beq     $v1, $ra, branch_0x801e860c
    addiu   $v0, $v0, 0x40
    bnel    $v1, $at, branch_0x801e865c
    sh      $a3, 0x0($v0)
branch_0x801e860c:
    mtc1    $a1, $a0
    lui     $at, 0x4f80
    bgez    $a1, branch_0x801e8628
    cvt.s.w $f6, $f4
    mtc1    $at, $t0
    nop
    add.s   $f6, $f6, $f8
branch_0x801e8628:
    mul.s   $f10, $f6, $f0
    sll     $t7, $a1, 1
    trunc.w.s   $f16, $f10
    mfc1    $t6, $s0
    nop
    addu    $t8, $t6, $a3
    addiu   $t9, $t8, 0xffff
    addiu   $t6, $t7, 0x1
    sll     $t8, $t6, 5
    sh      $t9, 0x0($v0)
    b       branch_0x801e8660
    sh      $t8, 0x8($v0)

.globl Function_0x801e8658
Function_0x801e8658: # 0x801e8658
    sh      $a3, 0x0($v0)
branch_0x801e865c:
    sh      $t0, 0x8($v0)
branch_0x801e8660:
    addiu   $at, $zero, 0x20
    beq     $v1, $at, branch_0x801e8674
    addiu   $at, $zero, 0x30
    bnel    $v1, $at, branch_0x801e86bc
    sh      $a0, 0x2($v0)
branch_0x801e8674:
    mtc1    $a2, $s2
    lui     $at, 0x4f80
    bgez    $a2, branch_0x801e8690
    cvt.s.w $f4, $f18
    mtc1    $at, $t0
    nop
    add.s   $f4, $f4, $f8
branch_0x801e8690:
    mul.s   $f6, $f4, $f0
    trunc.w.s   $f10, $f6
    mfc1    $t7, $t2
    nop
    addu    $t6, $t7, $a0
    addiu   $t8, $t6, 0xffff
    sll     $t7, $a2, 6
    sh      $t8, 0x2($v0)
    b       branch_0x801e86c0
    sh      $t7, 0xa($v0)

.globl Function_0x801e86b8
Function_0x801e86b8: # 0x801e86b8
    sh      $a0, 0x2($v0)
branch_0x801e86bc:
    sh      $t0, 0xa($v0)
branch_0x801e86c0:
    sh      $zero, 0x4($v0)
    bnez    $v1, branch_0x801e86dc
    sh      $zero, 0x6($v0)
    sb      $t2, 0xc($v0)
    sb      $t3, 0xd($v0)
    b       branch_0x801e8720
    sb      $t4, 0xe($v0)
branch_0x801e86dc:
    addiu   $at, $zero, 0x10
    bnel    $v1, $at, branch_0x801e86fc
    addiu   $at, $zero, 0x20
    sb      $t5, 0xc($v0)
    sb      $s0, 0xd($v0)
    b       branch_0x801e8720
    sb      $s1, 0xe($v0)

.globl Function_0x801e86f8
Function_0x801e86f8: # 0x801e86f8
    addiu   $at, $zero, 0x20
branch_0x801e86fc:
    bnel    $v1, $at, branch_0x801e8718
    sb      $s5, 0xc($v0)
    sb      $s2, 0xc($v0)
    sb      $s3, 0xd($v0)
    b       branch_0x801e8720
    sb      $s4, 0xe($v0)

.globl Function_0x801e8714
Function_0x801e8714: # 0x801e8714
    sb      $s5, 0xc($v0)
branch_0x801e8718:
    sb      $s6, 0xd($v0)
    sb      $s7, 0xe($v0)
branch_0x801e8720:
    addiu   $v1, $v1, 0x10
    addiu   $at, $zero, 0x40
    addiu   $t6, $zero, 0xff
    bne     $v1, $at, branch_0x801e85e4
    sb      $t6, 0xf($v0)
    lw      $a2, 0x30($sp)
    lui     $t8, 0x400
    ori     $t8, $t8, 0x83f
    or      $v0, $a2, $zero
    sw      $t8, 0x0($v0)
    lw      $t9, 0x0($t1)
    lui     $t8, 0x700
    addiu   $t8, $t8, 0x0
    sll     $t7, $t9, 4
    addiu   $t6, $t7, 0x40
    addiu   $a2, $a2, 0x8
    addu    $t9, $t6, $t8
    or      $v1, $a2, $zero
    sw      $t9, 0x4($v0)
    lui     $a1, 0xbf00
    addiu   $a2, $a2, 0x8
    addiu   $t7, $zero, 0xf05
    sw      $t7, 0x4($v1)
    sw      $a1, 0x0($v1)
    or      $a0, $a2, $zero
    addiu   $t6, $zero, 0xa0f
    sw      $t6, 0x4($a0)
    sw      $a1, 0x0($a0)
    lw      $t8, 0x0($t1)
    addiu   $a2, $a2, 0x8
    or      $v0, $a2, $zero
    addiu   $t9, $t8, 0x4
    slti    $at, $t9, 0x78
    bnez    $at, branch_0x801e87b4
    sw      $t9, 0x0($t1)
    addiu   $t6, $zero, 0x74
    sw      $t6, 0x0($t1)
branch_0x801e87b4:
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
    jr      $ra
    addiu   $sp, $sp, 0x30

.globl Function_0x801e87e4
Function_0x801e87e4: # 0x801e87e4
    addiu   $sp, $sp, 0xffc0
    lbu     $t6, 0x63($sp)
    lbu     $t7, 0x67($sp)
    lbu     $t8, 0x6b($sp)
    lbu     $t9, 0x6f($sp)
    lbu     $t0, 0x73($sp)
    lbu     $t1, 0x77($sp)
    lbu     $t2, 0x7b($sp)
    lbu     $t3, 0x7f($sp)
    lbu     $t4, 0x83($sp)
    lbu     $t5, 0x87($sp)
    sw      $ra, 0x3c($sp)
    sw      $a1, 0x44($sp)
    sw      $a2, 0x48($sp)
    sw      $a3, 0x4c($sp)
    lbu     $a3, 0x5f($sp)
    lbu     $a2, 0x5b($sp)
    lw      $a1, 0x54($sp)
    sw      $t6, 0x10($sp)
    sw      $t7, 0x14($sp)
    sw      $t8, 0x18($sp)
    sw      $t9, 0x1c($sp)
    sw      $t0, 0x20($sp)
    sw      $t1, 0x24($sp)
    sw      $t2, 0x28($sp)
    sw      $t3, 0x2c($sp)
    sw      $t4, 0x30($sp)
    jal     Function_0x801e91f4
    sw      $t5, 0x34($sp)
    lw      $t6, 0x50($sp)
    or      $a0, $v0, $zero
    lw      $a1, 0x44($sp)
    lw      $a2, 0x48($sp)
    lw      $a3, 0x4c($sp)
    jal     Function_0x801e8884
    sw      $t6, 0x10($sp)
    lw      $ra, 0x3c($sp)
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop

.globl Function_0x801e8884
Function_0x801e8884: # 0x801e8884
    addiu   $sp, $sp, 0xff48
    sw      $s7, 0x78($sp)
    sltiu   $at, $a1, 0x6
    or      $s7, $a1, $zero
    sw      $ra, 0x7c($sp)
    sw      $s6, 0x74($sp)
    sw      $s5, 0x70($sp)
    sw      $s4, 0x6c($sp)
    sw      $s3, 0x68($sp)
    sw      $s2, 0x64($sp)
    sw      $s1, 0x60($sp)
    sw      $s0, 0x5c($sp)
    sdc1    $20, 0x50($29)
    beqz    $at, branch_0x801e89ec
    sw      $a2, 0xc0($sp)
    sll     $t6, $a1, 2
    lui     $at, 0x8022
    addu    $at, $at, $t6
    lw      $t6, 0x6c2c($at)
    jr      $t6
    nop

.globl Function_0x801e88d8
Function_0x801e88d8: # 0x801e88d8
    lui     $v0, 0x8022
    addiu   $v0, $v0, 0x6b30
    lbu     $t0, 0x25($v0)
    lbu     $t1, 0x26($v0)
    addiu   $t7, $zero, 0x18
    addiu   $t8, $zero, 0x25
    addiu   $t9, $zero, 0x26
    sw      $t7, 0xb0($sp)
    sw      $t8, 0xac($sp)
    sw      $t9, 0xa8($sp)
    sw      $t0, 0xa4($sp)
    b       branch_0x801e89ec
    sw      $t1, 0xa0($sp)

.globl Function_0x801e890c
Function_0x801e890c: # 0x801e890c
    lui     $v0, 0x8022
    addiu   $v0, $v0, 0x6b58
    lbu     $t5, 0x25($v0)
    lbu     $t6, 0x26($v0)
    addiu   $t2, $zero, 0x8
    addiu   $t3, $zero, 0x25
    addiu   $t4, $zero, 0x26
    sw      $t2, 0xb0($sp)
    sw      $t3, 0xac($sp)
    sw      $t4, 0xa8($sp)
    sw      $t5, 0xa4($sp)
    b       branch_0x801e89ec
    sw      $t6, 0xa0($sp)

.globl Function_0x801e8940
Function_0x801e8940: # 0x801e8940
    lui     $v0, 0x8022
    addiu   $v0, $v0, 0x6b84
    lbu     $t0, 0x26($v0)
    lbu     $t1, 0x27($v0)
    addiu   $t7, $zero, 0xa
    addiu   $t8, $zero, 0x26
    addiu   $t9, $zero, 0x27
    sw      $t7, 0xb0($sp)
    sw      $t8, 0xac($sp)
    sw      $t9, 0xa8($sp)
    sw      $t0, 0xa4($sp)
    b       branch_0x801e89ec
    sw      $t1, 0xa0($sp)

.globl Function_0x801e8974
Function_0x801e8974: # 0x801e8974
    lui     $v0, 0x8022
    addiu   $v0, $v0, 0x6bb4
    lbu     $t5, 0xa($v0)
    lbu     $t6, 0xb($v0)
    addiu   $t2, $zero, 0xc
    addiu   $t3, $zero, 0xa
    addiu   $t4, $zero, 0xb
    sw      $t2, 0xb0($sp)
    sw      $t3, 0xac($sp)
    sw      $t4, 0xa8($sp)
    sw      $t5, 0xa4($sp)
    b       branch_0x801e89ec
    sw      $t6, 0xa0($sp)

.globl Function_0x801e89a8
Function_0x801e89a8: # 0x801e89a8
    lui     $v0, 0x8022
    lbu     $v0, 0x6bc0($v0)
    addiu   $t7, $zero, 0xc
    sw      $t7, 0xb0($sp)
    sw      $zero, 0xac($sp)
    sw      $zero, 0xa8($sp)
    sw      $v0, 0xa4($sp)
    b       branch_0x801e89ec
    sw      $v0, 0xa0($sp)

.globl Function_0x801e89cc
Function_0x801e89cc: # 0x801e89cc
    lui     $v0, 0x8022
    lbu     $v0, 0x6bcc($v0)
    addiu   $t8, $zero, 0x10
    sw      $t8, 0xb0($sp)
    sw      $zero, 0xac($sp)
    sw      $zero, 0xa8($sp)
    sw      $v0, 0xa4($sp)
    sw      $v0, 0xa0($sp)
branch_0x801e89ec:
    lw      $v0, 0xc0($sp)
    lui     $at, 0x3f80
    mtc1    $at, $s4
    addiu   $at, $zero, 0x3e8
    div     $zero, $v0, $at
    mflo    $t9
    addiu   $at, $zero, 0x3c
    addiu   $s5, $zero, 0xa
    div     $zero, $t9, $at
    mflo    $t0
    lui     $s0, 0x8023
    lui     $s1, 0x8023
    div     $zero, $t0, $s5
    lui     $s6, 0x8023
    addiu   $s6, $s6, 0x8804
    addiu   $s1, $s1, 0x8818
    addiu   $s0, $s0, 0x8808
    lui     $s2, 0x8023
    lw      $t2, 0x0($s0)
    lw      $t3, 0x0($s1)
    lw      $t1, 0x0($s6)
    addiu   $s2, $s2, 0x8828
    or      $v0, $t9, $zero
    sw      $t2, 0x18($sp)
    sw      $t3, 0x1c($sp)
    sw      $t1, 0x14($sp)
    lw      $s4, 0xc8($sp)
    lw      $t1, 0xc($s0)
    lw      $t3, 0xc($s2)
    lw      $t2, 0xc($s1)
    lw      $t9, 0x8($s1)
    lw      $t4, 0x0($s2)
    lw      $t7, 0x4($s2)
    lw      $t5, 0x4($s0)
    lw      $t8, 0x8($s0)
    lw      $t6, 0x4($s1)
    mfhi    $a2
    or      $s3, $a3, $zero
    sw      $v0, 0x84($sp)
    or      $a1, $s7, $zero
    bnez    $s5, branch_0x801e8a98
    nop
    break   0x7
branch_0x801e8a98:
    addiu   $at, $zero, 0xffff
    bne     $s5, $at, branch_0x801e8ab0
    lui     $at, 0x8000
    bne     $t0, $at, branch_0x801e8ab0
    nop
    break   0x6
branch_0x801e8ab0:
    lw      $t0, 0x8($s2)
    sw      $a3, 0xc4($sp)
    swc1    $f20, 0x48($sp)
    sw      $s4, 0x10($sp)
    sw      $t1, 0x3c($sp)
    sw      $t3, 0x44($sp)
    sw      $t2, 0x40($sp)
    sw      $t9, 0x34($sp)
    sw      $t4, 0x20($sp)
    sw      $t7, 0x2c($sp)
    sw      $t5, 0x24($sp)
    sw      $t8, 0x30($sp)
    sw      $t6, 0x28($sp)
    jal     Function_0x801e7e10
    sw      $t0, 0x38($sp)
    lw      $t4, 0xc4($sp)
    lw      $t5, 0xb0($sp)
    lw      $t6, 0x0($s6)
    lw      $t7, 0x0($s0)
    lw      $t8, 0x0($s1)
    addu    $s3, $t4, $t5
    sw      $t6, 0x14($sp)
    sw      $t7, 0x18($sp)
    sw      $t8, 0x1c($sp)
    lw      $t8, 0xc($s2)
    lw      $t7, 0xc($s1)
    lw      $t6, 0xc($s0)
    lw      $t5, 0x8($s2)
    lw      $t4, 0x8($s1)
    lw      $t9, 0x0($s2)
    lw      $t0, 0x4($s0)
    lw      $t1, 0x4($s1)
    lw      $t2, 0x4($s2)
    lw      $t3, 0x8($s0)
    or      $a3, $s3, $zero
    or      $a0, $v0, $zero
    or      $a1, $s7, $zero
    lw      $a2, 0xac($sp)
    sw      $s4, 0x10($sp)
    swc1    $f20, 0x48($sp)
    sw      $t8, 0x44($sp)
    sw      $t7, 0x40($sp)
    sw      $t6, 0x3c($sp)
    sw      $t5, 0x38($sp)
    sw      $t4, 0x34($sp)
    sw      $t9, 0x20($sp)
    sw      $t0, 0x24($sp)
    sw      $t1, 0x28($sp)
    sw      $t2, 0x2c($sp)
    jal     Function_0x801e7e10
    sw      $t3, 0x30($sp)
    lw      $v1, 0x84($sp)
    addiu   $at, $zero, 0x3c
    lw      $t9, 0xa4($sp)
    div     $zero, $v1, $at
    mfhi    $t0
    or      $v1, $t0, $zero
    lw      $t2, 0x0($s6)
    div     $zero, $t0, $s5
    mflo    $t1
    lw      $t3, 0x0($s0)
    lw      $t4, 0x0($s1)
    div     $zero, $t1, $s5
    addu    $s3, $s3, $t9
    sw      $t2, 0x14($sp)
    sw      $t3, 0x18($sp)
    sw      $t4, 0x1c($sp)
    lw      $t4, 0xc($s2)
    lw      $t3, 0xc($s1)
    lw      $t2, 0xc($s0)
    lw      $t9, 0x8($s0)
    lw      $t0, 0x8($s1)
    lw      $t5, 0x0($s2)
    lw      $t6, 0x4($s0)
    lw      $t7, 0x4($s1)
    lw      $t8, 0x4($s2)
    mfhi    $a2
    or      $a3, $s3, $zero
    sw      $v1, 0x80($sp)
    or      $a0, $v0, $zero
    or      $a1, $s7, $zero
    bnez    $s5, branch_0x801e8c00
    nop
    break   0x7
branch_0x801e8c00:
    addiu   $at, $zero, 0xffff
    bne     $s5, $at, branch_0x801e8c18
    lui     $at, 0x8000
    bne     $v1, $at, branch_0x801e8c18
    nop
    break   0x6
branch_0x801e8c18:
    sw      $s4, 0x10($sp)
    bnez    $s5, branch_0x801e8c28
    nop
    break   0x7
branch_0x801e8c28:
    addiu   $at, $zero, 0xffff
    bne     $s5, $at, branch_0x801e8c40
    lui     $at, 0x8000
    bne     $t1, $at, branch_0x801e8c40
    nop
    break   0x6
branch_0x801e8c40:
    lw      $t1, 0x8($s2)
    swc1    $f20, 0x48($sp)
    sw      $t4, 0x44($sp)
    sw      $t3, 0x40($sp)
    sw      $t2, 0x3c($sp)
    sw      $t9, 0x30($sp)
    sw      $t0, 0x34($sp)
    sw      $t5, 0x20($sp)
    sw      $t6, 0x24($sp)
    sw      $t7, 0x28($sp)
    sw      $t8, 0x2c($sp)
    jal     Function_0x801e7e10
    sw      $t1, 0x38($sp)
    lw      $v1, 0x80($sp)
    lw      $t5, 0xb0($sp)
    lw      $t6, 0x0($s6)
    div     $zero, $v1, $s5
    lw      $t7, 0x0($s0)
    lw      $t8, 0x0($s1)
    addu    $s3, $s3, $t5
    sw      $t6, 0x14($sp)
    sw      $t7, 0x18($sp)
    sw      $t8, 0x1c($sp)
    lw      $t8, 0xc($s2)
    lw      $t7, 0xc($s1)
    lw      $t6, 0xc($s0)
    lw      $t5, 0x8($s2)
    lw      $t9, 0x0($s2)
    lw      $t0, 0x4($s0)
    lw      $t1, 0x4($s1)
    lw      $t2, 0x4($s2)
    lw      $t3, 0x8($s0)
    lw      $t4, 0x8($s1)
    mfhi    $a2
    or      $a3, $s3, $zero
    or      $a0, $v0, $zero
    or      $a1, $s7, $zero
    bnez    $s5, branch_0x801e8ce0
    nop
    break   0x7
branch_0x801e8ce0:
    addiu   $at, $zero, 0xffff
    bne     $s5, $at, branch_0x801e8cf8
    lui     $at, 0x8000
    bne     $v1, $at, branch_0x801e8cf8
    nop
    break   0x6
branch_0x801e8cf8:
    sw      $s4, 0x10($sp)
    swc1    $f20, 0x48($sp)
    sw      $t8, 0x44($sp)
    sw      $t7, 0x40($sp)
    sw      $t6, 0x3c($sp)
    sw      $t5, 0x38($sp)
    sw      $t9, 0x20($sp)
    sw      $t0, 0x24($sp)
    sw      $t1, 0x28($sp)
    sw      $t2, 0x2c($sp)
    sw      $t3, 0x30($sp)
    jal     Function_0x801e7e10
    sw      $t4, 0x34($sp)
    lw      $t9, 0xb0($sp)
    lw      $t0, 0x0($s6)
    lw      $t1, 0x0($s0)
    lw      $t2, 0x0($s1)
    addu    $s3, $s3, $t9
    sw      $t0, 0x14($sp)
    sw      $t1, 0x18($sp)
    sw      $t2, 0x1c($sp)
    lw      $t2, 0xc($s2)
    lw      $t1, 0xc($s1)
    lw      $t0, 0xc($s0)
    lw      $t9, 0x8($s2)
    lw      $t3, 0x0($s2)
    lw      $t4, 0x4($s0)
    lw      $t5, 0x4($s1)
    lw      $t6, 0x4($s2)
    lw      $t7, 0x8($s0)
    lw      $t8, 0x8($s1)
    or      $a3, $s3, $zero
    or      $a0, $v0, $zero
    or      $a1, $s7, $zero
    lw      $a2, 0xa8($sp)
    sw      $s4, 0x10($sp)
    swc1    $f20, 0x48($sp)
    sw      $t2, 0x44($sp)
    sw      $t1, 0x40($sp)
    sw      $t0, 0x3c($sp)
    sw      $t9, 0x38($sp)
    sw      $t3, 0x20($sp)
    sw      $t4, 0x24($sp)
    sw      $t5, 0x28($sp)
    sw      $t6, 0x2c($sp)
    sw      $t7, 0x30($sp)
    jal     Function_0x801e7e10
    sw      $t8, 0x34($sp)
    lw      $t4, 0xc0($sp)
    addiu   $at, $zero, 0x3e8
    lw      $t3, 0xa0($sp)
    div     $zero, $t4, $at
    mfhi    $t5
    mtc1    $t5, $a0
    lui     $at, 0x447a
    mtc1    $at, $t0
    cvt.s.w $f6, $f4
    mtc1    $at, $s0
    addiu   $at, $zero, 0x64
    lw      $t8, 0x0($s6)
    lw      $t9, 0x0($s0)
    lw      $t0, 0x0($s1)
    div.s   $f10, $f6, $f8
    addu    $s3, $s3, $t3
    sw      $t8, 0x14($sp)
    sw      $t9, 0x18($sp)
    sw      $t0, 0x1c($sp)
    lw      $t0, 0xc($s2)
    lw      $t9, 0xc($s1)
    lw      $t8, 0xc($s0)
    lw      $t3, 0x4($s1)
    lw      $t5, 0x8($s0)
    lw      $t4, 0x4($s2)
    lw      $t1, 0x0($s2)
    lw      $t2, 0x4($s0)
    lw      $t6, 0x8($s1)
    or      $a3, $s3, $zero
    or      $a0, $v0, $zero
    or      $a1, $s7, $zero
    sw      $s4, 0x10($sp)
    swc1    $f20, 0x48($sp)
    sw      $t0, 0x44($sp)
    sw      $t9, 0x40($sp)
    sw      $t8, 0x3c($sp)
    sw      $t3, 0x28($sp)
    mul.s   $f18, $f10, $f16
    sw      $t5, 0x30($sp)
    sw      $t4, 0x2c($sp)
    sw      $t1, 0x20($sp)
    sw      $t2, 0x24($sp)
    sw      $t6, 0x34($sp)
    trunc.w.s   $f4, $f18
    mfc1    $v1, $a0
    nop
    div     $zero, $v1, $at
    mflo    $t7
    sw      $v1, 0x84($sp)
    nop
    div     $zero, $t7, $s5
    bnez    $s5, branch_0x801e8e90
    nop
    break   0x7
branch_0x801e8e90:
    addiu   $at, $zero, 0xffff
    bne     $s5, $at, branch_0x801e8ea8
    lui     $at, 0x8000
    bne     $t7, $at, branch_0x801e8ea8
    nop
    break   0x6
branch_0x801e8ea8:
    lw      $t7, 0x8($s2)
    mfhi    $a2
    jal     Function_0x801e7e10
    sw      $t7, 0x38($sp)
    lw      $t2, 0x84($sp)
    lw      $t1, 0xb0($sp)
    lw      $t4, 0x0($s6)
    div     $zero, $t2, $s5
    mflo    $t3
    lw      $t5, 0x0($s0)
    lw      $t6, 0x0($s1)
    div     $zero, $t3, $s5
    addu    $s3, $s3, $t1
    sw      $t4, 0x14($sp)
    sw      $t5, 0x18($sp)
    sw      $t6, 0x1c($sp)
    lw      $t6, 0xc($s2)
    lw      $t5, 0xc($s1)
    lw      $t4, 0xc($s0)
    lw      $t1, 0x8($s0)
    lw      $t7, 0x0($s2)
    lw      $t8, 0x4($s0)
    lw      $t9, 0x4($s1)
    lw      $t0, 0x4($s2)
    mfhi    $a2
    or      $a3, $s3, $zero
    or      $a0, $v0, $zero
    or      $a1, $s7, $zero
    bnez    $s5, branch_0x801e8f24
    nop
    break   0x7
branch_0x801e8f24:
    addiu   $at, $zero, 0xffff
    bne     $s5, $at, branch_0x801e8f3c
    lui     $at, 0x8000
    bne     $t2, $at, branch_0x801e8f3c
    nop
    break   0x6
branch_0x801e8f3c:
    lw      $t2, 0x8($s1)
    bnez    $s5, branch_0x801e8f4c
    nop
    break   0x7
branch_0x801e8f4c:
    addiu   $at, $zero, 0xffff
    bne     $s5, $at, branch_0x801e8f64
    lui     $at, 0x8000
    bne     $t3, $at, branch_0x801e8f64
    nop
    break   0x6
branch_0x801e8f64:
    lw      $t3, 0x8($s2)
    sw      $s4, 0x10($sp)
    swc1    $f20, 0x48($sp)
    sw      $t6, 0x44($sp)
    sw      $t5, 0x40($sp)
    sw      $t4, 0x3c($sp)
    sw      $t1, 0x30($sp)
    sw      $t7, 0x20($sp)
    sw      $t8, 0x24($sp)
    sw      $t9, 0x28($sp)
    sw      $t0, 0x2c($sp)
    sw      $t2, 0x34($sp)
    jal     Function_0x801e7e10
    sw      $t3, 0x38($sp)
    lw      $t8, 0x84($sp)
    lw      $t7, 0xb0($sp)
    lw      $t9, 0x0($s6)
    div     $zero, $t8, $s5
    lw      $t0, 0x0($s0)
    lw      $t1, 0x0($s1)
    addu    $s3, $s3, $t7
    sw      $t9, 0x14($sp)
    sw      $t0, 0x18($sp)
    sw      $t1, 0x1c($sp)
    lw      $t1, 0xc($s2)
    lw      $t0, 0xc($s1)
    lw      $t9, 0xc($s0)
    lw      $t7, 0x8($s1)
    lw      $t2, 0x0($s2)
    lw      $t3, 0x4($s0)
    lw      $t4, 0x4($s1)
    lw      $t5, 0x4($s2)
    lw      $t6, 0x8($s0)
    mfhi    $a2
    or      $a3, $s3, $zero
    or      $a0, $v0, $zero
    or      $a1, $s7, $zero
    bnez    $s5, branch_0x801e9004
    nop
    break   0x7
branch_0x801e9004:
    addiu   $at, $zero, 0xffff
    bne     $s5, $at, branch_0x801e901c
    lui     $at, 0x8000
    bne     $t8, $at, branch_0x801e901c
    nop
    break   0x6
branch_0x801e901c:
    lw      $t8, 0x8($s2)
    sw      $s4, 0x10($sp)
    swc1    $f20, 0x48($sp)
    sw      $t1, 0x44($sp)
    sw      $t0, 0x40($sp)
    sw      $t9, 0x3c($sp)
    sw      $t7, 0x34($sp)
    sw      $t2, 0x20($sp)
    sw      $t3, 0x24($sp)
    sw      $t4, 0x28($sp)
    sw      $t5, 0x2c($sp)
    sw      $t6, 0x30($sp)
    jal     Function_0x801e7e10
    sw      $t8, 0x38($sp)
    lw      $ra, 0x7c($sp)
    ldc1    $20, 0x50($29)
    lw      $s0, 0x5c($sp)
    lw      $s1, 0x60($sp)
    lw      $s2, 0x64($sp)
    lw      $s3, 0x68($sp)
    lw      $s4, 0x6c($sp)
    lw      $s5, 0x70($sp)
    lw      $s6, 0x74($sp)
    lw      $s7, 0x78($sp)
    jr      $ra
    addiu   $sp, $sp, 0xb8

.globl Function_0x801e9084
Function_0x801e9084: # 0x801e9084
    addiu   $sp, $sp, 0xffc0
    lui     $at, 0x3f80
    mtc1    $at, $a0
    lbu     $t6, 0x63($sp)
    lbu     $t7, 0x67($sp)
    lbu     $t8, 0x6b($sp)
    lbu     $t9, 0x6f($sp)
    lbu     $t0, 0x73($sp)
    lbu     $t1, 0x77($sp)
    lbu     $t2, 0x7b($sp)
    lbu     $t3, 0x7f($sp)
    lbu     $t4, 0x83($sp)
    lbu     $t5, 0x87($sp)
    sw      $ra, 0x3c($sp)
    sw      $a1, 0x44($sp)
    sw      $a2, 0x48($sp)
    sw      $a3, 0x4c($sp)
    lui     $at, 0x8022
    lbu     $a3, 0x5f($sp)
    lbu     $a2, 0x5b($sp)
    lw      $a1, 0x54($sp)
    swc1    $f4, 0x6be4($at)
    sw      $t6, 0x10($sp)
    sw      $t7, 0x14($sp)
    sw      $t8, 0x18($sp)
    sw      $t9, 0x1c($sp)
    sw      $t0, 0x20($sp)
    sw      $t1, 0x24($sp)
    sw      $t2, 0x28($sp)
    sw      $t3, 0x2c($sp)
    sw      $t4, 0x30($sp)
    jal     Function_0x801e91f4
    sw      $t5, 0x34($sp)
    lw      $t6, 0x50($sp)
    lui     $at, 0x8022
    sh      $zero, 0x6be8($at)
    or      $a0, $v0, $zero
    lw      $a1, 0x44($sp)
    lw      $a2, 0x48($sp)
    lw      $a3, 0x4c($sp)
    jal     Function_0x801e95e0
    sw      $t6, 0x10($sp)
    lw      $ra, 0x3c($sp)
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop

.globl Function_0x801e913c
Function_0x801e913c: # 0x801e913c
    addiu   $sp, $sp, 0xffc0
    lwc1    $f4, 0x88($sp)
    lbu     $t6, 0x63($sp)
    lbu     $t7, 0x67($sp)
    lbu     $t8, 0x6b($sp)
    lbu     $t9, 0x6f($sp)
    lbu     $t0, 0x73($sp)
    lbu     $t1, 0x77($sp)
    lbu     $t2, 0x7b($sp)
    lbu     $t3, 0x7f($sp)
    lbu     $t4, 0x83($sp)
    lbu     $t5, 0x87($sp)
    sw      $ra, 0x3c($sp)
    sw      $a1, 0x44($sp)
    sw      $a2, 0x48($sp)
    sw      $a3, 0x4c($sp)
    lui     $at, 0x8022
    lbu     $a3, 0x5f($sp)
    lbu     $a2, 0x5b($sp)
    lw      $a1, 0x54($sp)
    swc1    $f4, 0x6be4($at)
    sw      $t6, 0x10($sp)
    sw      $t7, 0x14($sp)
    sw      $t8, 0x18($sp)
    sw      $t9, 0x1c($sp)
    sw      $t0, 0x20($sp)
    sw      $t1, 0x24($sp)
    sw      $t2, 0x28($sp)
    sw      $t3, 0x2c($sp)
    sw      $t4, 0x30($sp)
    jal     Function_0x801e91f4
    sw      $t5, 0x34($sp)
    lw      $t7, 0x50($sp)
    addiu   $t6, $zero, 0x1
    lui     $at, 0x8022
    sh      $t6, 0x6be8($at)
    or      $a0, $v0, $zero
    lw      $a1, 0x44($sp)
    lw      $a2, 0x48($sp)
    lw      $a3, 0x4c($sp)
    jal     Function_0x801e95e0
    sw      $t7, 0x10($sp)
    lw      $ra, 0x3c($sp)
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop

.globl Function_0x801e91f4
Function_0x801e91f4: # 0x801e91f4
    addiu   $t8, $zero, 0x64
    lui     $at, 0x8022
    sw      $t8, 0x6bec($at)
    lui     $at, 0x8023
    addiu   $sp, $sp, 0xffe8
    sw      $a1, -0x77fc($at)
    lui     $at, 0x8022
    sh      $zero, 0x6be8($at)
    lbu     $t9, 0x2b($sp)
    lbu     $t2, 0x2f($sp)
    lbu     $t3, 0x33($sp)
    lui     $v0, 0x8023
    lui     $v1, 0x8023
    addiu   $v1, $v1, 0x8818
    addiu   $v0, $v0, 0x8808
    andi    $t6, $a2, 0xff
    andi    $t7, $a3, 0xff
    lui     $t0, 0x8023
    addiu   $t0, $t0, 0x8828
    sw      $a2, 0x20($sp)
    sw      $a3, 0x24($sp)
    or      $a3, $t7, $zero
    or      $a2, $t6, $zero
    sw      $t7, 0x0($v1)
    sw      $t6, 0x0($v0)
    sw      $t9, 0x0($t0)
    sw      $t2, 0x4($v0)
    sw      $t3, 0x4($v1)
    lbu     $t4, 0x37($sp)
    lbu     $t6, 0x3f($sp)
    lbu     $t7, 0x43($sp)
    lbu     $t5, 0x3b($sp)
    lbu     $t2, 0x4f($sp)
    lbu     $t9, 0x4b($sp)
    lbu     $t8, 0x47($sp)
    addiu   $t3, $a1, 0xffff
    sltiu   $at, $t3, 0xa
    sw      $ra, 0x14($sp)
    or      $t1, $a1, $zero
    sw      $t4, 0x4($t0)
    sw      $t6, 0x8($v1)
    sw      $t7, 0x8($t0)
    sw      $t5, 0x8($v0)
    sw      $t2, 0xc($t0)
    sw      $t9, 0xc($v1)
    beqz    $at, branch_0x801e95b0
    sw      $t8, 0xc($v0)
    sll     $t3, $t3, 2
    lui     $at, 0x8022
    addu    $at, $at, $t3
    lw      $t3, 0x6c44($at)
    jr      $t3
    nop

.globl Function_0x801e92c8
Function_0x801e92c8: # 0x801e92c8
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t5, 0x107
    addiu   $t5, $t5, 0xf030
    lui     $t4, 0x600
    or      $v1, $a0, $zero
    sw      $t4, 0x0($v0)
    sw      $t5, 0x4($v0)
    lui     $t6, 0xfcff
    lui     $t7, 0xfffd
    ori     $t7, $t7, 0xf2f9
    ori     $t6, $t6, 0xffff
    addiu   $a0, $a0, 0x8
    sw      $t6, 0x0($v1)
    sw      $t7, 0x4($v1)
    or      $a1, $a0, $zero
    lui     $t8, 0xfa00
    sw      $t8, 0x0($a1)
    lbu     $t7, 0x2b($sp)
    andi    $t3, $a3, 0xff
    sll     $t4, $t3, 16
    sll     $t2, $a2, 24
    or      $t5, $t2, $t4
    sll     $t8, $t7, 8
    or      $t9, $t5, $t8
    ori     $t3, $t9, 0xff
    sw      $t3, 0x4($a1)
    b       branch_0x801e95cc
    addiu   $a0, $a0, 0x8

.globl Function_0x801e933c
Function_0x801e933c: # 0x801e933c
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t4, 0x107
    addiu   $t4, $t4, 0xf0a8
    lui     $t2, 0x600
    or      $v1, $a0, $zero
    sw      $t2, 0x0($v0)
    sw      $t4, 0x4($v0)
    addiu   $a0, $a0, 0x8
    lui     $t6, 0x103
    lui     $t7, 0x700
    addiu   $t7, $t7, 0x0
    ori     $t6, $t6, 0x40
    or      $a1, $a0, $zero
    lui     $t5, 0x102
    lui     $t8, 0x200
    sw      $t6, 0x0($v1)
    sw      $t7, 0x4($v1)
    addiu   $t8, $t8, 0xa40
    ori     $t5, $t5, 0x40
    sw      $t5, 0x0($a1)
    sw      $t8, 0x4($a1)
    b       branch_0x801e95cc
    addiu   $a0, $a0, 0x8

.globl Function_0x801e939c
Function_0x801e939c: # 0x801e939c
    or      $v0, $a0, $zero
    lui     $t3, 0x107
    addiu   $t3, $t3, 0xf030
    addiu   $a0, $a0, 0x8
    lui     $t9, 0x600
    sw      $t9, 0x0($v0)
    sw      $t3, 0x4($v0)
    or      $v1, $a0, $zero
    lui     $t2, 0xfc11
    lui     $t4, 0xff2f
    lui     $a1, 0x8023
    ori     $t4, $t4, 0xffff
    ori     $t2, $t2, 0x9623
    addiu   $t7, $t1, 0xfffd
    addiu   $a1, $a1, 0x8838
    sw      $t2, 0x0($v1)
    sw      $t4, 0x4($v1)
    addiu   $t6, $zero, 0x1
    sltiu   $at, $t7, 0x7
    addiu   $a0, $a0, 0x8
    beqz    $at, branch_0x801e9498
    sh      $t6, 0x0($a1)
    sll     $t7, $t7, 2
    lui     $at, 0x8022
    addu    $at, $at, $t7
    lw      $t7, 0x6c6c($at)
    jr      $t7
    nop

.globl Function_0x801e940c
Function_0x801e940c: # 0x801e940c
    jal     Function_0x801e9af4
    sw      $a0, 0x18($sp)
    lui     $a1, 0x8023
    lw      $a0, 0x18($sp)
    b       branch_0x801e9498
    addiu   $a1, $a1, 0x8838

.globl Function_0x801e9424
Function_0x801e9424: # 0x801e9424
    jal     Function_0x801e9e38
    sw      $a0, 0x18($sp)
    lui     $a1, 0x8023
    lw      $a0, 0x18($sp)
    b       branch_0x801e9498
    addiu   $a1, $a1, 0x8838

.globl Function_0x801e943c
Function_0x801e943c: # 0x801e943c
    jal     Function_0x801ea174
    sw      $a0, 0x18($sp)
    lui     $a1, 0x8023
    lw      $a0, 0x18($sp)
    b       branch_0x801e9498
    addiu   $a1, $a1, 0x8838

.globl Function_0x801e9454
Function_0x801e9454: # 0x801e9454
    jal     Function_0x801ea4b8
    sw      $a0, 0x18($sp)
    lui     $a1, 0x8023
    lw      $a0, 0x18($sp)
    b       branch_0x801e9498
    addiu   $a1, $a1, 0x8838

.globl Function_0x801e946c
Function_0x801e946c: # 0x801e946c
    jal     Function_0x801ea7f4
    sw      $a0, 0x18($sp)
    lui     $a1, 0x8023
    lw      $a0, 0x18($sp)
    b       branch_0x801e9498
    addiu   $a1, $a1, 0x8838

.globl Function_0x801e9484
Function_0x801e9484: # 0x801e9484
    jal     Function_0x801eab38
    sw      $a0, 0x18($sp)
    lui     $a1, 0x8023
    lw      $a0, 0x18($sp)
    addiu   $a1, $a1, 0x8838
branch_0x801e9498:
    or      $v0, $a0, $zero
    lui     $t5, 0xfa00
    sw      $t5, 0x0($v0)
    lh      $t2, 0xe($a1)
    lh      $t9, 0xc($a1)
    lh      $t5, 0x10($a1)
    andi    $t4, $t2, 0xff
    sll     $t3, $t9, 24
    sll     $t6, $t4, 16
    andi    $t8, $t5, 0xff
    sll     $t9, $t8, 8
    or      $t7, $t3, $t6
    or      $t2, $t7, $t9
    ori     $t4, $t2, 0xff
    sw      $t4, 0x4($v0)
    b       branch_0x801e95cc
    addiu   $a0, $a0, 0x8

.globl Function_0x801e94dc
Function_0x801e94dc: # 0x801e94dc
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t6, 0x107
    addiu   $t6, $t6, 0xf030
    lui     $t3, 0x600
    or      $v1, $a0, $zero
    sw      $t3, 0x0($v0)
    sw      $t6, 0x4($v0)
    lui     $t5, 0xfc11
    lui     $t8, 0xff2f
    ori     $t8, $t8, 0xffff
    ori     $t5, $t5, 0x9623
    addiu   $a0, $a0, 0x8
    sw      $t5, 0x0($v1)
    sw      $t8, 0x4($v1)
    or      $a1, $a0, $zero
    lui     $t7, 0xfa00
    sw      $t7, 0x0($a1)
    lbu     $t8, 0x2b($sp)
    andi    $t4, $a3, 0xff
    sll     $t3, $t4, 16
    sll     $t2, $a2, 24
    or      $t6, $t2, $t3
    sll     $t7, $t8, 8
    or      $t9, $t6, $t7
    ori     $t4, $t9, 0xff
    sw      $t4, 0x4($a1)
    b       branch_0x801e95cc
    addiu   $a0, $a0, 0x8

.globl Function_0x801e9550
Function_0x801e9550: # 0x801e9550
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t3, 0x107
    addiu   $t3, $t3, 0xf030
    lui     $t2, 0x600
    or      $v1, $a0, $zero
    sw      $t2, 0x0($v0)
    sw      $t3, 0x4($v0)
    addiu   $a0, $a0, 0x8
    lui     $t5, 0xfc11
    lui     $t8, 0xff2f
    ori     $t8, $t8, 0xffff
    ori     $t5, $t5, 0x9623
    or      $a1, $a0, $zero
    andi    $t7, $a2, 0xff
    addiu   $at, $zero, 0xff00
    sw      $t5, 0x0($v1)
    sw      $t8, 0x4($v1)
    or      $t9, $t7, $at
    lui     $t6, 0xfa00
    sw      $t6, 0x0($a1)
    sw      $t9, 0x4($a1)
    b       branch_0x801e95cc
    addiu   $a0, $a0, 0x8
branch_0x801e95b0:
    or      $v0, $a0, $zero
    lui     $t2, 0x107
    addiu   $t2, $t2, 0xf030
    lui     $t4, 0x600
    sw      $t4, 0x0($v0)
    sw      $t2, 0x4($v0)
    addiu   $a0, $a0, 0x8
branch_0x801e95cc:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    or      $v0, $a0, $zero
    jr      $ra
    nop

.globl Function_0x801e95e0
Function_0x801e95e0: # 0x801e95e0
    addiu   $sp, $sp, 0xff60
    sw      $s6, 0x78($sp)
    sw      $s5, 0x74($sp)
    sw      $s4, 0x70($sp)
    sdc1    $20, 0x58($29)
    lui     $at, 0x3f80
    sw      $fp, 0x80($sp)
    sw      $s7, 0x7c($sp)
    sw      $s2, 0x68($sp)
    sw      $s1, 0x64($sp)
    sw      $s0, 0x60($sp)
    lui     $s4, 0x8023
    lui     $s5, 0x8023
    lui     $s6, 0x8023
    mtc1    $at, $s4
    or      $fp, $a1, $zero
    sw      $ra, 0x84($sp)
    sw      $s3, 0x6c($sp)
    sw      $a0, 0xa0($sp)
    or      $s7, $a2, $zero
    or      $s0, $a3, $zero
    addiu   $s6, $s6, 0x8828
    addiu   $s5, $s5, 0x8818
    addiu   $s4, $s4, 0x8808
    lw      $s1, 0x88($sp)
    lw      $s2, 0x8c($sp)
branch_0x801e9648:
    lb      $a1, 0x0($s7)
branch_0x801e964c:
    or      $a0, $fp, $zero
    beqzl   $a1, branch_0x801e9858
    lw      $ra, 0x84($sp)
    jal     Function_0x801e988c
    or      $s3, $fp, $zero
    lui     $v1, 0x8022
    lui     $t0, 0x8022
    sltiu   $at, $s3, 0x7
    addiu   $t0, $t0, 0x6be4
    addiu   $v1, $v1, 0x6be8
    beqz    $at, branch_0x801e971c
    or      $a2, $v0, $zero
    sll     $t6, $s3, 2
    lui     $at, 0x8022
    addu    $at, $at, $t6
    lw      $t6, 0x6c88($at)
    jr      $t6
    nop

.globl Function_0x801e9694
Function_0x801e9694: # 0x801e9694
    lui     $s1, 0x8022
    addu    $s1, $s1, $v0
    lbu     $s1, 0x6b30($s1)
    b       branch_0x801e971c
    addiu   $s2, $zero, 0x18

.globl Function_0x801e96a8
Function_0x801e96a8: # 0x801e96a8
    lui     $s1, 0x8022
    addu    $s1, $s1, $v0
    lbu     $s1, 0x6b58($s1)
    b       branch_0x801e971c
    addiu   $s2, $zero, 0x8

.globl Function_0x801e96bc
Function_0x801e96bc: # 0x801e96bc
    lui     $s1, 0x8022
    addu    $s1, $s1, $v0
    lbu     $s1, 0x6b84($s1)
    b       branch_0x801e971c
    addiu   $s2, $zero, 0xc

.globl Function_0x801e96d0
Function_0x801e96d0: # 0x801e96d0
    lui     $s1, 0x8022
    addu    $s1, $s1, $v0
    lbu     $s1, 0x6bb4($s1)
    b       branch_0x801e971c
    addiu   $s2, $zero, 0xc

.globl Function_0x801e96e4
Function_0x801e96e4: # 0x801e96e4
    lui     $s1, 0x8022
    addu    $s1, $s1, $v0
    lbu     $s1, 0x6bc0($s1)
    b       branch_0x801e971c
    addiu   $s2, $zero, 0xc

.globl Function_0x801e96f8
Function_0x801e96f8: # 0x801e96f8
    lui     $s1, 0x8022
    addu    $s1, $s1, $v0
    lbu     $s1, 0x6bcc($s1)
    b       branch_0x801e971c
    addiu   $s2, $zero, 0x10

.globl Function_0x801e970c
Function_0x801e970c: # 0x801e970c
    lui     $s1, 0x8022
    addu    $s1, $s1, $v0
    lbu     $s1, 0x6bd8($s1)
    addiu   $s2, $zero, 0x28
branch_0x801e971c:
    addiu   $at, $zero, 0xff
    bne     $v0, $at, branch_0x801e9770
    lw      $a0, 0xa0($sp)
    lh      $t7, 0x0($v1)
    beqzl   $t7, branch_0x801e9768
    addu    $s0, $s0, $s2
    mtc1    $s2, $a0
    lwc1    $f8, 0x0($t0)
    mtc1    $s0, $s0
    cvt.s.w $f6, $f4
    addiu   $s7, $s7, 0x1
    cvt.s.w $f18, $f16
    mul.s   $f10, $f6, $f8
    add.s   $f4, $f18, $f10
    trunc.w.s   $f6, $f4
    mfc1    $s0, $a2
    b       branch_0x801e964c
    lb      $a1, 0x0($s7)

.globl Function_0x801e9764
Function_0x801e9764: # 0x801e9764
    addu    $s0, $s0, $s2
branch_0x801e9768:
    b       branch_0x801e9648
    addiu   $s7, $s7, 0x1
branch_0x801e9770:
    lh      $t9, 0x0($v1)
    or      $a1, $fp, $zero
    or      $a3, $s0, $zero
    beqz    $t9, branch_0x801e978c
    lw      $t1, 0xb0($sp)
    b       branch_0x801e9790
    lwc1    $f0, 0x0($t0)
branch_0x801e978c:
    mov.s   $f0, $f20
branch_0x801e9790:
    lui     $t2, 0x8023
    lw      $t2, -0x77fc($t2)
    lw      $t3, 0x0($s4)
    lw      $t4, 0x0($s5)
    lw      $t5, 0x0($s6)
    sw      $t1, 0x10($sp)
    sw      $t2, 0x14($sp)
    sw      $t3, 0x18($sp)
    sw      $t4, 0x1c($sp)
    sw      $t5, 0x20($sp)
    lw      $t5, 0xc($s6)
    lw      $t4, 0xc($s5)
    lw      $t3, 0xc($s4)
    lw      $t2, 0x8($s6)
    lw      $t1, 0x8($s5)
    lw      $t6, 0x4($s4)
    lw      $t7, 0x4($s5)
    lw      $t8, 0x4($s6)
    lw      $t9, 0x8($s4)
    swc1    $f0, 0x48($sp)
    sw      $t5, 0x44($sp)
    sw      $t4, 0x40($sp)
    sw      $t3, 0x3c($sp)
    sw      $t2, 0x38($sp)
    sw      $t1, 0x34($sp)
    sw      $t6, 0x24($sp)
    sw      $t7, 0x28($sp)
    sw      $t8, 0x2c($sp)
    jal     Function_0x801e7e10
    sw      $t9, 0x30($sp)
    lui     $v1, 0x8022
    addiu   $v1, $v1, 0x6be8
    lh      $t6, 0x0($v1)
    lui     $t0, 0x8022
    addiu   $t0, $t0, 0x6be4
    beqz    $t6, branch_0x801e9848
    sw      $v0, 0xa0($sp)
    mtc1    $s1, $t0
    lwc1    $f18, 0x0($t0)
    addiu   $s7, $s7, 0x1
    cvt.s.w $f16, $f8
    mul.s   $f10, $f16, $f18
    trunc.w.s   $f4, $f10
    mfc1    $t8, $a0
    b       branch_0x801e9648
    addu    $s0, $s0, $t8
branch_0x801e9848:
    addu    $s0, $s0, $s1
    b       branch_0x801e9648
    addiu   $s7, $s7, 0x1

.globl Function_0x801e9854
Function_0x801e9854: # 0x801e9854
    lw      $ra, 0x84($sp)
branch_0x801e9858:
    lw      $v0, 0xa0($sp)
    ldc1    $20, 0x58($29)
    lw      $s0, 0x60($sp)
    lw      $s1, 0x64($sp)
    lw      $s2, 0x68($sp)
    lw      $s3, 0x6c($sp)
    lw      $s4, 0x70($sp)
    lw      $s5, 0x74($sp)
    lw      $s6, 0x78($sp)
    lw      $s7, 0x7c($sp)
    lw      $fp, 0x80($sp)
    jr      $ra
    addiu   $sp, $sp, 0xa0

.globl Function_0x801e988c
Function_0x801e988c: # 0x801e988c
    sll     $t6, $a1, 24
    sra     $t7, $t6, 24
    sw      $a1, 0x4($sp)
    slti    $at, $t7, 0x30
    or      $a1, $t7, $zero
    bnez    $at, branch_0x801e98bc
    or      $v1, $zero, $zero
    slti    $at, $t7, 0x3a
    beqzl   $at, branch_0x801e98c0
    slti    $at, $a1, 0x41
    jr      $ra
    addiu   $v0, $t7, 0xffd0
branch_0x801e98bc:
    slti    $at, $a1, 0x41
branch_0x801e98c0:
    bnez    $at, branch_0x801e98f0
    slti    $at, $a1, 0x5b
    beqzl   $at, branch_0x801e98f4
    addiu   $at, $zero, 0x2f
    beqz    $a0, branch_0x801e98e8
    addiu   $at, $zero, 0x1
    beq     $a0, $at, branch_0x801e98e8
    addiu   $at, $zero, 0x2
    bne     $a0, $at, branch_0x801e9aec
    nop
branch_0x801e98e8:
    jr      $ra
    addiu   $v0, $a1, 0xffc9
branch_0x801e98f0:
    addiu   $at, $zero, 0x2f
branch_0x801e98f4:
    bne     $a1, $at, branch_0x801e991c
    addiu   $at, $zero, 0x2
    beq     $a0, $at, branch_0x801e9914
    addiu   $at, $zero, 0x5
    bne     $a0, $at, branch_0x801e9aec
    nop
    jr      $ra
    addiu   $v0, $zero, 0xa
branch_0x801e9914:
    jr      $ra
    addiu   $v0, $zero, 0x28
branch_0x801e991c:
    addiu   $at, $zero, 0x2d
    bnel    $a1, $at, branch_0x801e995c
    addiu   $at, $zero, 0x27
    beqz    $a0, branch_0x801e9948
    addiu   $at, $zero, 0x1
    beq     $a0, $at, branch_0x801e9948
    addiu   $at, $zero, 0x2
    beq     $a0, $at, branch_0x801e9950
    nop
    jr      $ra
    or      $v0, $v1, $zero
branch_0x801e9948:
    jr      $ra
    addiu   $v0, $zero, 0x24
branch_0x801e9950:
    jr      $ra
    addiu   $v0, $zero, 0x25

.globl Function_0x801e9958
Function_0x801e9958: # 0x801e9958
    addiu   $at, $zero, 0x27
branch_0x801e995c:
    bnel    $a1, $at, branch_0x801e99a8
    addiu   $at, $zero, 0x40
    beqz    $a0, branch_0x801e998c
    addiu   $at, $zero, 0x1
    beq     $a0, $at, branch_0x801e998c
    addiu   $at, $zero, 0x2
    beq     $a0, $at, branch_0x801e9994
    addiu   $at, $zero, 0x3
    beq     $a0, $at, branch_0x801e999c
    nop
    jr      $ra
    or      $v0, $v1, $zero
branch_0x801e998c:
    jr      $ra
    addiu   $v0, $zero, 0x25
branch_0x801e9994:
    jr      $ra
    addiu   $v0, $zero, 0x26
branch_0x801e999c:
    jr      $ra
    addiu   $v0, $zero, 0xa

.globl Function_0x801e99a4
Function_0x801e99a4: # 0x801e99a4
    addiu   $at, $zero, 0x40
branch_0x801e99a8:
    bnel    $a1, $at, branch_0x801e99f4
    addiu   $at, $zero, 0x26
    beqz    $a0, branch_0x801e99d8
    addiu   $at, $zero, 0x1
    beq     $a0, $at, branch_0x801e99d8
    addiu   $at, $zero, 0x2
    beq     $a0, $at, branch_0x801e99e0
    addiu   $at, $zero, 0x3
    beq     $a0, $at, branch_0x801e99e8
    nop
    jr      $ra
    or      $v0, $v1, $zero
branch_0x801e99d8:
    jr      $ra
    addiu   $v0, $zero, 0x26
branch_0x801e99e0:
    jr      $ra
    addiu   $v0, $zero, 0x27
branch_0x801e99e8:
    jr      $ra
    addiu   $v0, $zero, 0xb

.globl Function_0x801e99f0
Function_0x801e99f0: # 0x801e99f0
    addiu   $at, $zero, 0x26
branch_0x801e99f4:
    bne     $a1, $at, branch_0x801e9a0c
    addiu   $at, $zero, 0x2
    bne     $a0, $at, branch_0x801e9aec
    nop
    jr      $ra
    addiu   $v0, $zero, 0x24
branch_0x801e9a0c:
    addiu   $at, $zero, 0x2e
    bnel    $a1, $at, branch_0x801e9a54
    addiu   $at, $zero, 0x7c
    beqz    $a0, branch_0x801e9a38
    addiu   $at, $zero, 0x1
    beq     $a0, $at, branch_0x801e9a48
    addiu   $at, $zero, 0x2
    beq     $a0, $at, branch_0x801e9a40
    nop
    jr      $ra
    or      $v0, $v1, $zero
branch_0x801e9a38:
    jr      $ra
    addiu   $v0, $zero, 0x27
branch_0x801e9a40:
    jr      $ra
    addiu   $v0, $zero, 0x29
branch_0x801e9a48:
    jr      $ra
    addiu   $v0, $zero, 0x29

.globl Function_0x801e9a50
Function_0x801e9a50: # 0x801e9a50
    addiu   $at, $zero, 0x7c
branch_0x801e9a54:
    bne     $a1, $at, branch_0x801e9a6c
    addiu   $at, $zero, 0x2
    bne     $a0, $at, branch_0x801e9aec
    nop
    jr      $ra
    addiu   $v0, $zero, 0x2a
branch_0x801e9a6c:
    addiu   $at, $zero, 0x3c
    bne     $a1, $at, branch_0x801e9a88
    addiu   $at, $zero, 0x2
    bne     $a0, $at, branch_0x801e9aec
    nop
    jr      $ra
    addiu   $v0, $zero, 0x2b
branch_0x801e9a88:
    addiu   $at, $zero, 0x3e
    bne     $a1, $at, branch_0x801e9aa4
    addiu   $at, $zero, 0x2
    bne     $a0, $at, branch_0x801e9aec
    nop
    jr      $ra
    addiu   $v0, $zero, 0x2c
branch_0x801e9aa4:
    addiu   $at, $zero, 0xa
    bne     $a1, $at, branch_0x801e9ac0
    addiu   $at, $zero, 0x1
    bne     $a0, $at, branch_0x801e9aec
    nop
    jr      $ra
    addiu   $v0, $zero, 0x28
branch_0x801e9ac0:
    addiu   $at, $zero, 0x2b
    bne     $a1, $at, branch_0x801e9adc
    addiu   $at, $zero, 0x2
    bne     $a0, $at, branch_0x801e9aec
    nop
    jr      $ra
    addiu   $v0, $zero, 0x2d
branch_0x801e9adc:
    addiu   $at, $zero, 0x20
    bne     $a1, $at, branch_0x801e9aec
    nop
    addiu   $v1, $zero, 0xff
branch_0x801e9aec:
    jr      $ra
    or      $v0, $v1, $zero

.globl Function_0x801e9af4
Function_0x801e9af4: # 0x801e9af4
    lui     $v1, 0x8023
    addiu   $v1, $v1, 0x8838
    lh      $v0, 0x2($v1)
    addiu   $at, $zero, 0x1
    beqzl   $v0, branch_0x801e9b30
    lw      $t6, 0x4($v1)
    beq     $v0, $at, branch_0x801e9bec
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x801e9cac
    addiu   $at, $zero, 0x3
    beql    $v0, $at, branch_0x801e9d74
    lw      $v0, 0x8($v1)
    jr      $ra
    nop

.globl Function_0x801e9b2c
Function_0x801e9b2c: # 0x801e9b2c
    lw      $t6, 0x4($v1)
branch_0x801e9b30:
    lw      $t7, 0x8($v1)
    lui     $at, 0x437f
    mtc1    $t6, $a0
    mtc1    $at, $t0
    mtc1    $t7, $s0
    cvt.s.w $f6, $f4
    addiu   $t9, $zero, 0x1
    addiu   $a0, $zero, 0xff
    sh      $a0, 0xc($v1)
    lui     $at, 0x4f00
    cvt.s.w $f18, $f16
    mul.s   $f10, $f6, $f8
    div.s   $f4, $f10, $f18
    cfc1    $t8, $ra
    ctc1    $t9, $ra
    nop
    cvt.w.s $f6, $f4
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    beqzl   $t9, branch_0x801e9bd0
    mfc1    $t9, $a2
    mtc1    $at, $a2
    addiu   $t9, $zero, 0x1
    sub.s   $f6, $f4, $f6
    ctc1    $t9, $ra
    nop
    cvt.w.s $f6, $f6
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    bnez    $t9, branch_0x801e9bc4
    nop
    mfc1    $t9, $a2
    lui     $at, 0x8000
    b       branch_0x801e9bdc
    or      $t9, $t9, $at
branch_0x801e9bc4:
    b       branch_0x801e9bdc
    addiu   $t9, $zero, 0xffff

.globl Function_0x801e9bcc
Function_0x801e9bcc: # 0x801e9bcc
    mfc1    $t9, $a2
branch_0x801e9bd0:
    nop
    bltz    $t9, branch_0x801e9bc4
    nop
branch_0x801e9bdc:
    ctc1    $t8, $ra
    sh      $t9, 0xe($v1)
    jr      $ra
    sh      $zero, 0x10($v1)
branch_0x801e9bec:
    lw      $t0, 0x4($v1)
    lw      $t1, 0x8($v1)
    lui     $at, 0x437f
    mtc1    $t0, $t0
    mtc1    $at, $t2
    mtc1    $t1, $a0
    cvt.s.w $f16, $f8
    addiu   $t3, $zero, 0x1
    addiu   $a0, $zero, 0xff
    sh      $a0, 0xc($v1)
    sh      $a0, 0xe($v1)
    cvt.s.w $f6, $f4
    mul.s   $f18, $f16, $f10
    lui     $at, 0x4f00
    div.s   $f8, $f18, $f6
    cfc1    $t2, $ra
    ctc1    $t3, $ra
    nop
    cvt.w.s $f16, $f8
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    beqzl   $t3, branch_0x801e9c94
    mfc1    $t3, $s0
    mtc1    $at, $s0
    addiu   $t3, $zero, 0x1
    sub.s   $f16, $f8, $f16
    ctc1    $t3, $ra
    nop
    cvt.w.s $f16, $f16
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    bnez    $t3, branch_0x801e9c88
    nop
    mfc1    $t3, $s0
    lui     $at, 0x8000
    b       branch_0x801e9ca0
    or      $t3, $t3, $at
branch_0x801e9c88:
    b       branch_0x801e9ca0
    addiu   $t3, $zero, 0xffff

.globl Function_0x801e9c90
Function_0x801e9c90: # 0x801e9c90
    mfc1    $t3, $s0
branch_0x801e9c94:
    nop
    bltz    $t3, branch_0x801e9c88
    nop
branch_0x801e9ca0:
    ctc1    $t2, $ra
    jr      $ra
    sh      $t3, 0x10($v1)
branch_0x801e9cac:
    lw      $v0, 0x8($v1)
    lw      $t4, 0x4($v1)
    lui     $at, 0x437f
    mtc1    $at, $s2
    subu    $t5, $v0, $t4
    mtc1    $t5, $t2
    mtc1    $v0, $t0
    addiu   $t7, $zero, 0x1
    cvt.s.w $f4, $f10
    addiu   $a0, $zero, 0xff
    sh      $a0, 0xc($v1)
    sh      $a0, 0xe($v1)
    lui     $at, 0x4f00
    cvt.s.w $f16, $f8
    mul.s   $f6, $f4, $f18
    div.s   $f10, $f6, $f16
    cfc1    $t6, $ra
    ctc1    $t7, $ra
    nop
    cvt.w.s $f4, $f10
    cfc1    $t7, $ra
    nop
    andi    $t7, $t7, 0x78
    beqzl   $t7, branch_0x801e9d58
    mfc1    $t7, $a0
    mtc1    $at, $a0
    addiu   $t7, $zero, 0x1
    sub.s   $f4, $f10, $f4
    ctc1    $t7, $ra
    nop
    cvt.w.s $f4, $f4
    cfc1    $t7, $ra
    nop
    andi    $t7, $t7, 0x78
    bnez    $t7, branch_0x801e9d4c
    nop
    mfc1    $t7, $a0
    lui     $at, 0x8000
    b       branch_0x801e9d64
    or      $t7, $t7, $at
branch_0x801e9d4c:
    b       branch_0x801e9d64
    addiu   $t7, $zero, 0xffff

.globl Function_0x801e9d54
Function_0x801e9d54: # 0x801e9d54
    mfc1    $t7, $a0
branch_0x801e9d58:
    nop
    bltz    $t7, branch_0x801e9d4c
    nop
branch_0x801e9d64:
    ctc1    $t6, $ra
    jr      $ra
    sh      $t7, 0x10($v1)

.globl Function_0x801e9d70
Function_0x801e9d70: # 0x801e9d70
    lw      $v0, 0x8($v1)
branch_0x801e9d74:
    lw      $t8, 0x4($v1)
    lui     $at, 0x437f
    mtc1    $at, $a2
    subu    $t9, $v0, $t8
    mtc1    $t9, $s2
    mtc1    $v0, $t2
    addiu   $t1, $zero, 0x1
    cvt.s.w $f8, $f18
    addiu   $a0, $zero, 0xff
    sh      $a0, 0xc($v1)
    lui     $at, 0x4f00
    cvt.s.w $f4, $f10
    mul.s   $f16, $f8, $f6
    div.s   $f18, $f16, $f4
    cfc1    $t0, $ra
    ctc1    $t1, $ra
    nop
    cvt.w.s $f8, $f18
    cfc1    $t1, $ra
    nop
    andi    $t1, $t1, 0x78
    beqzl   $t1, branch_0x801e9e18
    mfc1    $t1, $t0
    mtc1    $at, $t0
    addiu   $t1, $zero, 0x1
    sub.s   $f8, $f18, $f8
    ctc1    $t1, $ra
    nop
    cvt.w.s $f8, $f8
    cfc1    $t1, $ra
    nop
    andi    $t1, $t1, 0x78
    bnez    $t1, branch_0x801e9e0c
    nop
    mfc1    $t1, $t0
    lui     $at, 0x8000
    b       branch_0x801e9e24
    or      $t1, $t1, $at
branch_0x801e9e0c:
    b       branch_0x801e9e24
    addiu   $t1, $zero, 0xffff

.globl Function_0x801e9e14
Function_0x801e9e14: # 0x801e9e14
    mfc1    $t1, $t0
branch_0x801e9e18:
    nop
    bltz    $t1, branch_0x801e9e0c
    nop
branch_0x801e9e24:
    ctc1    $t0, $ra
    sh      $t1, 0xe($v1)
    sh      $zero, 0x10($v1)
    jr      $ra
    nop

.globl Function_0x801e9e38
Function_0x801e9e38: # 0x801e9e38
    lui     $v1, 0x8023
    addiu   $v1, $v1, 0x8838
    lh      $v0, 0x2($v1)
    addiu   $at, $zero, 0x1
    beqzl   $v0, branch_0x801e9e74
    lw      $t6, 0x4($v1)
    beq     $v0, $at, branch_0x801e9f2c
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x801e9fec
    addiu   $at, $zero, 0x3
    beql    $v0, $at, branch_0x801ea0b4
    lw      $v0, 0x8($v1)
    jr      $ra
    nop

.globl Function_0x801e9e70
Function_0x801e9e70: # 0x801e9e70
    lw      $t6, 0x4($v1)
branch_0x801e9e74:
    lw      $t7, 0x8($v1)
    lui     $at, 0x437f
    mtc1    $t6, $a0
    mtc1    $at, $t0
    mtc1    $t7, $s0
    cvt.s.w $f6, $f4
    addiu   $t9, $zero, 0x1
    lui     $at, 0x4f00
    cvt.s.w $f18, $f16
    mul.s   $f10, $f6, $f8
    div.s   $f4, $f10, $f18
    cfc1    $t8, $ra
    ctc1    $t9, $ra
    nop
    cvt.w.s $f6, $f4
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    beqzl   $t9, branch_0x801e9f0c
    mfc1    $t9, $a2
    mtc1    $at, $a2
    addiu   $t9, $zero, 0x1
    sub.s   $f6, $f4, $f6
    ctc1    $t9, $ra
    nop
    cvt.w.s $f6, $f6
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    bnez    $t9, branch_0x801e9f00
    nop
    mfc1    $t9, $a2
    lui     $at, 0x8000
    b       branch_0x801e9f18
    or      $t9, $t9, $at
branch_0x801e9f00:
    b       branch_0x801e9f18
    addiu   $t9, $zero, 0xffff

.globl Function_0x801e9f08
Function_0x801e9f08: # 0x801e9f08
    mfc1    $t9, $a2
branch_0x801e9f0c:
    nop
    bltz    $t9, branch_0x801e9f00
    nop
branch_0x801e9f18:
    ctc1    $t8, $ra
    sh      $t9, 0xc($v1)
    sh      $zero, 0xe($v1)
    jr      $ra
    sh      $zero, 0x10($v1)
branch_0x801e9f2c:
    lw      $t1, 0x4($v1)
    lw      $t2, 0x8($v1)
    lui     $at, 0x437f
    mtc1    $t1, $t0
    mtc1    $at, $t2
    mtc1    $t2, $a0
    cvt.s.w $f16, $f8
    addiu   $t4, $zero, 0x1
    addiu   $t0, $zero, 0xff
    sh      $t0, 0xc($v1)
    lui     $at, 0x4f00
    cvt.s.w $f6, $f4
    mul.s   $f18, $f16, $f10
    div.s   $f8, $f18, $f6
    cfc1    $t3, $ra
    ctc1    $t4, $ra
    nop
    cvt.w.s $f16, $f8
    cfc1    $t4, $ra
    nop
    andi    $t4, $t4, 0x78
    beqzl   $t4, branch_0x801e9fd0
    mfc1    $t4, $s0
    mtc1    $at, $s0
    addiu   $t4, $zero, 0x1
    sub.s   $f16, $f8, $f16
    ctc1    $t4, $ra
    nop
    cvt.w.s $f16, $f16
    cfc1    $t4, $ra
    nop
    andi    $t4, $t4, 0x78
    bnez    $t4, branch_0x801e9fc4
    nop
    mfc1    $t4, $s0
    lui     $at, 0x8000
    b       branch_0x801e9fdc
    or      $t4, $t4, $at
branch_0x801e9fc4:
    b       branch_0x801e9fdc
    addiu   $t4, $zero, 0xffff

.globl Function_0x801e9fcc
Function_0x801e9fcc: # 0x801e9fcc
    mfc1    $t4, $s0
branch_0x801e9fd0:
    nop
    bltz    $t4, branch_0x801e9fc4
    nop
branch_0x801e9fdc:
    ctc1    $t3, $ra
    sh      $t4, 0xe($v1)
    jr      $ra
    sh      $zero, 0x10($v1)
branch_0x801e9fec:
    lw      $v0, 0x8($v1)
    lw      $t6, 0x4($v1)
    lui     $at, 0x437f
    mtc1    $at, $s2
    subu    $t7, $v0, $t6
    mtc1    $t7, $t2
    mtc1    $v0, $t0
    addiu   $t9, $zero, 0x1
    cvt.s.w $f4, $f10
    addiu   $t5, $zero, 0xff
    sh      $t5, 0xc($v1)
    lui     $at, 0x4f00
    cvt.s.w $f16, $f8
    mul.s   $f6, $f4, $f18
    div.s   $f10, $f6, $f16
    cfc1    $t8, $ra
    ctc1    $t9, $ra
    nop
    cvt.w.s $f4, $f10
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    beqzl   $t9, branch_0x801ea094
    mfc1    $t9, $a0
    mtc1    $at, $a0
    addiu   $t9, $zero, 0x1
    sub.s   $f4, $f10, $f4
    ctc1    $t9, $ra
    nop
    cvt.w.s $f4, $f4
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    bnez    $t9, branch_0x801ea088
    nop
    mfc1    $t9, $a0
    lui     $at, 0x8000
    b       branch_0x801ea0a0
    or      $t9, $t9, $at
branch_0x801ea088:
    b       branch_0x801ea0a0
    addiu   $t9, $zero, 0xffff

.globl Function_0x801ea090
Function_0x801ea090: # 0x801ea090
    mfc1    $t9, $a0
branch_0x801ea094:
    nop
    bltz    $t9, branch_0x801ea088
    nop
branch_0x801ea0a0:
    ctc1    $t8, $ra
    sh      $t9, 0xe($v1)
    jr      $ra
    sh      $zero, 0x10($v1)

.globl Function_0x801ea0b0
Function_0x801ea0b0: # 0x801ea0b0
    lw      $v0, 0x8($v1)
branch_0x801ea0b4:
    lw      $t0, 0x4($v1)
    lui     $at, 0x437f
    mtc1    $at, $a2
    subu    $t1, $v0, $t0
    mtc1    $t1, $s2
    mtc1    $v0, $t2
    addiu   $t3, $zero, 0x1
    cvt.s.w $f8, $f18
    lui     $at, 0x4f00
    cvt.s.w $f4, $f10
    mul.s   $f16, $f8, $f6
    div.s   $f18, $f16, $f4
    cfc1    $t2, $ra
    ctc1    $t3, $ra
    nop
    cvt.w.s $f8, $f18
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    beqzl   $t3, branch_0x801ea150
    mfc1    $t3, $t0
    mtc1    $at, $t0
    addiu   $t3, $zero, 0x1
    sub.s   $f8, $f18, $f8
    ctc1    $t3, $ra
    nop
    cvt.w.s $f8, $f8
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    bnez    $t3, branch_0x801ea144
    nop
    mfc1    $t3, $t0
    lui     $at, 0x8000
    b       branch_0x801ea15c
    or      $t3, $t3, $at
branch_0x801ea144:
    b       branch_0x801ea15c
    addiu   $t3, $zero, 0xffff

.globl Function_0x801ea14c
Function_0x801ea14c: # 0x801ea14c
    mfc1    $t3, $t0
branch_0x801ea150:
    nop
    bltz    $t3, branch_0x801ea144
    nop
branch_0x801ea15c:
    ctc1    $t2, $ra
    sh      $t3, 0xc($v1)
    sh      $zero, 0xe($v1)
    sh      $zero, 0x10($v1)
    jr      $ra
    nop

.globl Function_0x801ea174
Function_0x801ea174: # 0x801ea174
    lui     $v1, 0x8023
    addiu   $v1, $v1, 0x8838
    lh      $v0, 0x2($v1)
    addiu   $at, $zero, 0x1
    beqzl   $v0, branch_0x801ea1b0
    lw      $t6, 0x4($v1)
    beq     $v0, $at, branch_0x801ea26c
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x801ea32c
    addiu   $at, $zero, 0x3
    beql    $v0, $at, branch_0x801ea3f4
    lw      $v0, 0x8($v1)
    jr      $ra
    nop

.globl Function_0x801ea1ac
Function_0x801ea1ac: # 0x801ea1ac
    lw      $t6, 0x4($v1)
branch_0x801ea1b0:
    lw      $t7, 0x8($v1)
    lui     $at, 0x437f
    mtc1    $t6, $a0
    mtc1    $at, $t0
    mtc1    $t7, $s0
    cvt.s.w $f6, $f4
    addiu   $t9, $zero, 0x1
    addiu   $a0, $zero, 0xff
    lui     $at, 0x4f00
    cvt.s.w $f18, $f16
    mul.s   $f10, $f6, $f8
    div.s   $f4, $f10, $f18
    cfc1    $t8, $ra
    ctc1    $t9, $ra
    nop
    cvt.w.s $f6, $f4
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    beqzl   $t9, branch_0x801ea24c
    mfc1    $t9, $a2
    mtc1    $at, $a2
    addiu   $t9, $zero, 0x1
    sub.s   $f6, $f4, $f6
    ctc1    $t9, $ra
    nop
    cvt.w.s $f6, $f6
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    bnez    $t9, branch_0x801ea240
    nop
    mfc1    $t9, $a2
    lui     $at, 0x8000
    b       branch_0x801ea258
    or      $t9, $t9, $at
branch_0x801ea240:
    b       branch_0x801ea258
    addiu   $t9, $zero, 0xffff

.globl Function_0x801ea248
Function_0x801ea248: # 0x801ea248
    mfc1    $t9, $a2
branch_0x801ea24c:
    nop
    bltz    $t9, branch_0x801ea240
    nop
branch_0x801ea258:
    ctc1    $t8, $ra
    sh      $t9, 0xc($v1)
    sh      $a0, 0xe($v1)
    jr      $ra
    sh      $zero, 0x10($v1)
branch_0x801ea26c:
    lw      $t0, 0x4($v1)
    lw      $t1, 0x8($v1)
    lui     $at, 0x437f
    mtc1    $t0, $t0
    mtc1    $at, $t2
    mtc1    $t1, $a0
    cvt.s.w $f16, $f8
    addiu   $t3, $zero, 0x1
    addiu   $a0, $zero, 0xff
    sh      $a0, 0xc($v1)
    sh      $a0, 0xe($v1)
    cvt.s.w $f6, $f4
    mul.s   $f18, $f16, $f10
    lui     $at, 0x4f00
    div.s   $f8, $f18, $f6
    cfc1    $t2, $ra
    ctc1    $t3, $ra
    nop
    cvt.w.s $f16, $f8
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    beqzl   $t3, branch_0x801ea314
    mfc1    $t3, $s0
    mtc1    $at, $s0
    addiu   $t3, $zero, 0x1
    sub.s   $f16, $f8, $f16
    ctc1    $t3, $ra
    nop
    cvt.w.s $f16, $f16
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    bnez    $t3, branch_0x801ea308
    nop
    mfc1    $t3, $s0
    lui     $at, 0x8000
    b       branch_0x801ea320
    or      $t3, $t3, $at
branch_0x801ea308:
    b       branch_0x801ea320
    addiu   $t3, $zero, 0xffff

.globl Function_0x801ea310
Function_0x801ea310: # 0x801ea310
    mfc1    $t3, $s0
branch_0x801ea314:
    nop
    bltz    $t3, branch_0x801ea308
    nop
branch_0x801ea320:
    ctc1    $t2, $ra
    jr      $ra
    sh      $t3, 0x10($v1)
branch_0x801ea32c:
    lw      $v0, 0x8($v1)
    lw      $t4, 0x4($v1)
    lui     $at, 0x437f
    mtc1    $at, $s2
    subu    $t5, $v0, $t4
    mtc1    $t5, $t2
    mtc1    $v0, $t0
    addiu   $t7, $zero, 0x1
    cvt.s.w $f4, $f10
    addiu   $a0, $zero, 0xff
    sh      $a0, 0xc($v1)
    sh      $a0, 0xe($v1)
    lui     $at, 0x4f00
    cvt.s.w $f16, $f8
    mul.s   $f6, $f4, $f18
    div.s   $f10, $f6, $f16
    cfc1    $t6, $ra
    ctc1    $t7, $ra
    nop
    cvt.w.s $f4, $f10
    cfc1    $t7, $ra
    nop
    andi    $t7, $t7, 0x78
    beqzl   $t7, branch_0x801ea3d8
    mfc1    $t7, $a0
    mtc1    $at, $a0
    addiu   $t7, $zero, 0x1
    sub.s   $f4, $f10, $f4
    ctc1    $t7, $ra
    nop
    cvt.w.s $f4, $f4
    cfc1    $t7, $ra
    nop
    andi    $t7, $t7, 0x78
    bnez    $t7, branch_0x801ea3cc
    nop
    mfc1    $t7, $a0
    lui     $at, 0x8000
    b       branch_0x801ea3e4
    or      $t7, $t7, $at
branch_0x801ea3cc:
    b       branch_0x801ea3e4
    addiu   $t7, $zero, 0xffff

.globl Function_0x801ea3d4
Function_0x801ea3d4: # 0x801ea3d4
    mfc1    $t7, $a0
branch_0x801ea3d8:
    nop
    bltz    $t7, branch_0x801ea3cc
    nop
branch_0x801ea3e4:
    ctc1    $t6, $ra
    jr      $ra
    sh      $t7, 0x10($v1)

.globl Function_0x801ea3f0
Function_0x801ea3f0: # 0x801ea3f0
    lw      $v0, 0x8($v1)
branch_0x801ea3f4:
    lw      $t8, 0x4($v1)
    lui     $at, 0x437f
    mtc1    $at, $a2
    subu    $t9, $v0, $t8
    mtc1    $t9, $s2
    mtc1    $v0, $t2
    addiu   $t1, $zero, 0x1
    cvt.s.w $f8, $f18
    addiu   $a0, $zero, 0xff
    lui     $at, 0x4f00
    cvt.s.w $f4, $f10
    mul.s   $f16, $f8, $f6
    div.s   $f18, $f16, $f4
    cfc1    $t0, $ra
    ctc1    $t1, $ra
    nop
    cvt.w.s $f8, $f18
    cfc1    $t1, $ra
    nop
    andi    $t1, $t1, 0x78
    beqzl   $t1, branch_0x801ea494
    mfc1    $t1, $t0
    mtc1    $at, $t0
    addiu   $t1, $zero, 0x1
    sub.s   $f8, $f18, $f8
    ctc1    $t1, $ra
    nop
    cvt.w.s $f8, $f8
    cfc1    $t1, $ra
    nop
    andi    $t1, $t1, 0x78
    bnez    $t1, branch_0x801ea488
    nop
    mfc1    $t1, $t0
    lui     $at, 0x8000
    b       branch_0x801ea4a0
    or      $t1, $t1, $at
branch_0x801ea488:
    b       branch_0x801ea4a0
    addiu   $t1, $zero, 0xffff

.globl Function_0x801ea490
Function_0x801ea490: # 0x801ea490
    mfc1    $t1, $t0
branch_0x801ea494:
    nop
    bltz    $t1, branch_0x801ea488
    nop
branch_0x801ea4a0:
    ctc1    $t0, $ra
    sh      $t1, 0xc($v1)
    sh      $a0, 0xe($v1)
    sh      $zero, 0x10($v1)
    jr      $ra
    nop

.globl Function_0x801ea4b8
Function_0x801ea4b8: # 0x801ea4b8
    lui     $v1, 0x8023
    addiu   $v1, $v1, 0x8838
    lh      $v0, 0x2($v1)
    addiu   $at, $zero, 0x1
    beqzl   $v0, branch_0x801ea4fc
    lw      $t6, 0x4($v1)
    beq     $v0, $at, branch_0x801ea5b4
    addiu   $t4, $zero, 0xff
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x801ea670
    addiu   $t9, $zero, 0xff
    addiu   $at, $zero, 0x3
    beql    $v0, $at, branch_0x801ea734
    lw      $v0, 0x8($v1)
    jr      $ra
    nop

.globl Function_0x801ea4f8
Function_0x801ea4f8: # 0x801ea4f8
    lw      $t6, 0x4($v1)
branch_0x801ea4fc:
    lw      $t7, 0x8($v1)
    lui     $at, 0x437f
    mtc1    $t6, $a0
    mtc1    $at, $t0
    mtc1    $t7, $s0
    cvt.s.w $f6, $f4
    addiu   $t9, $zero, 0x1
    sh      $zero, 0xc($v1)
    lui     $at, 0x4f00
    cvt.s.w $f18, $f16
    mul.s   $f10, $f6, $f8
    div.s   $f4, $f10, $f18
    cfc1    $t8, $ra
    ctc1    $t9, $ra
    nop
    cvt.w.s $f6, $f4
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    beqzl   $t9, branch_0x801ea598
    mfc1    $t9, $a2
    mtc1    $at, $a2
    addiu   $t9, $zero, 0x1
    sub.s   $f6, $f4, $f6
    ctc1    $t9, $ra
    nop
    cvt.w.s $f6, $f6
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    bnez    $t9, branch_0x801ea58c
    nop
    mfc1    $t9, $a2
    lui     $at, 0x8000
    b       branch_0x801ea5a4
    or      $t9, $t9, $at
branch_0x801ea58c:
    b       branch_0x801ea5a4
    addiu   $t9, $zero, 0xffff

.globl Function_0x801ea594
Function_0x801ea594: # 0x801ea594
    mfc1    $t9, $a2
branch_0x801ea598:
    nop
    bltz    $t9, branch_0x801ea58c
    nop
branch_0x801ea5a4:
    ctc1    $t8, $ra
    sh      $t9, 0xe($v1)
    jr      $ra
    sh      $zero, 0x10($v1)
branch_0x801ea5b4:
    lw      $t0, 0x4($v1)
    lw      $t1, 0x8($v1)
    lui     $at, 0x437f
    mtc1    $t0, $t0
    mtc1    $at, $t2
    mtc1    $t1, $a0
    cvt.s.w $f16, $f8
    addiu   $t3, $zero, 0x1
    lui     $at, 0x4f00
    cvt.s.w $f6, $f4
    mul.s   $f18, $f16, $f10
    div.s   $f8, $f18, $f6
    cfc1    $t2, $ra
    ctc1    $t3, $ra
    nop
    cvt.w.s $f16, $f8
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    beqzl   $t3, branch_0x801ea650
    mfc1    $t3, $s0
    mtc1    $at, $s0
    addiu   $t3, $zero, 0x1
    sub.s   $f16, $f8, $f16
    ctc1    $t3, $ra
    nop
    cvt.w.s $f16, $f16
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    bnez    $t3, branch_0x801ea644
    nop
    mfc1    $t3, $s0
    lui     $at, 0x8000
    b       branch_0x801ea65c
    or      $t3, $t3, $at
branch_0x801ea644:
    b       branch_0x801ea65c
    addiu   $t3, $zero, 0xffff

.globl Function_0x801ea64c
Function_0x801ea64c: # 0x801ea64c
    mfc1    $t3, $s0
branch_0x801ea650:
    nop
    bltz    $t3, branch_0x801ea644
    nop
branch_0x801ea65c:
    ctc1    $t2, $ra
    sh      $t3, 0xc($v1)
    sh      $t4, 0xe($v1)
    jr      $ra
    sh      $zero, 0x10($v1)
branch_0x801ea670:
    lw      $v0, 0x8($v1)
    lw      $t5, 0x4($v1)
    lui     $at, 0x437f
    mtc1    $at, $s2
    subu    $t6, $v0, $t5
    mtc1    $t6, $t2
    mtc1    $v0, $t0
    addiu   $t8, $zero, 0x1
    cvt.s.w $f4, $f10
    lui     $at, 0x4f00
    cvt.s.w $f16, $f8
    mul.s   $f6, $f4, $f18
    div.s   $f10, $f6, $f16
    cfc1    $t7, $ra
    ctc1    $t8, $ra
    nop
    cvt.w.s $f4, $f10
    cfc1    $t8, $ra
    nop
    andi    $t8, $t8, 0x78
    beqzl   $t8, branch_0x801ea710
    mfc1    $t8, $a0
    mtc1    $at, $a0
    addiu   $t8, $zero, 0x1
    sub.s   $f4, $f10, $f4
    ctc1    $t8, $ra
    nop
    cvt.w.s $f4, $f4
    cfc1    $t8, $ra
    nop
    andi    $t8, $t8, 0x78
    bnez    $t8, branch_0x801ea704
    nop
    mfc1    $t8, $a0
    lui     $at, 0x8000
    b       branch_0x801ea71c
    or      $t8, $t8, $at
branch_0x801ea704:
    b       branch_0x801ea71c
    addiu   $t8, $zero, 0xffff

.globl Function_0x801ea70c
Function_0x801ea70c: # 0x801ea70c
    mfc1    $t8, $a0
branch_0x801ea710:
    nop
    bltz    $t8, branch_0x801ea704
    nop
branch_0x801ea71c:
    ctc1    $t7, $ra
    sh      $t8, 0xc($v1)
    sh      $t9, 0xe($v1)
    jr      $ra
    sh      $zero, 0x10($v1)

.globl Function_0x801ea730
Function_0x801ea730: # 0x801ea730
    lw      $v0, 0x8($v1)
branch_0x801ea734:
    lw      $t0, 0x4($v1)
    lui     $at, 0x437f
    mtc1    $at, $a2
    subu    $t1, $v0, $t0
    mtc1    $t1, $s2
    mtc1    $v0, $t2
    addiu   $t3, $zero, 0x1
    cvt.s.w $f8, $f18
    sh      $zero, 0xc($v1)
    lui     $at, 0x4f00
    cvt.s.w $f4, $f10
    mul.s   $f16, $f8, $f6
    div.s   $f18, $f16, $f4
    cfc1    $t2, $ra
    ctc1    $t3, $ra
    nop
    cvt.w.s $f8, $f18
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    beqzl   $t3, branch_0x801ea7d4
    mfc1    $t3, $t0
    mtc1    $at, $t0
    addiu   $t3, $zero, 0x1
    sub.s   $f8, $f18, $f8
    ctc1    $t3, $ra
    nop
    cvt.w.s $f8, $f8
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    bnez    $t3, branch_0x801ea7c8
    nop
    mfc1    $t3, $t0
    lui     $at, 0x8000
    b       branch_0x801ea7e0
    or      $t3, $t3, $at
branch_0x801ea7c8:
    b       branch_0x801ea7e0
    addiu   $t3, $zero, 0xffff

.globl Function_0x801ea7d0
Function_0x801ea7d0: # 0x801ea7d0
    mfc1    $t3, $t0
branch_0x801ea7d4:
    nop
    bltz    $t3, branch_0x801ea7c8
    nop
branch_0x801ea7e0:
    ctc1    $t2, $ra
    sh      $t3, 0xe($v1)
    sh      $zero, 0x10($v1)
    jr      $ra
    nop

.globl Function_0x801ea7f4
Function_0x801ea7f4: # 0x801ea7f4
    lui     $v1, 0x8023
    addiu   $v1, $v1, 0x8838
    lh      $v0, 0x2($v1)
    addiu   $at, $zero, 0x1
    beqzl   $v0, branch_0x801ea830
    lw      $v0, 0x8($v1)
    beq     $v0, $at, branch_0x801ea8f0
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x801ea9b4
    addiu   $at, $zero, 0x3
    beql    $v0, $at, branch_0x801eaa78
    lw      $t8, 0x4($v1)
    jr      $ra
    nop

.globl Function_0x801ea82c
Function_0x801ea82c: # 0x801ea82c
    lw      $v0, 0x8($v1)
branch_0x801ea830:
    lw      $t6, 0x4($v1)
    lui     $at, 0x4300
    mtc1    $at, $t0
    subu    $t7, $v0, $t6
    mtc1    $t7, $a0
    mtc1    $v0, $s0
    addiu   $t9, $zero, 0x1
    cvt.s.w $f6, $f4
    addiu   $a0, $zero, 0xff
    sh      $a0, 0xc($v1)
    lui     $at, 0x4f00
    cvt.s.w $f18, $f16
    mul.s   $f10, $f6, $f8
    div.s   $f4, $f10, $f18
    cfc1    $t8, $ra
    ctc1    $t9, $ra
    nop
    cvt.w.s $f6, $f4
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    beqzl   $t9, branch_0x801ea8d4
    mfc1    $t9, $a2
    mtc1    $at, $a2
    addiu   $t9, $zero, 0x1
    sub.s   $f6, $f4, $f6
    ctc1    $t9, $ra
    nop
    cvt.w.s $f6, $f6
    cfc1    $t9, $ra
    nop
    andi    $t9, $t9, 0x78
    bnez    $t9, branch_0x801ea8c8
    nop
    mfc1    $t9, $a2
    lui     $at, 0x8000
    b       branch_0x801ea8e0
    or      $t9, $t9, $at
branch_0x801ea8c8:
    b       branch_0x801ea8e0
    addiu   $t9, $zero, 0xffff

.globl Function_0x801ea8d0
Function_0x801ea8d0: # 0x801ea8d0
    mfc1    $t9, $a2
branch_0x801ea8d4:
    nop
    bltz    $t9, branch_0x801ea8c8
    nop
branch_0x801ea8e0:
    ctc1    $t8, $ra
    sh      $t9, 0xe($v1)
    jr      $ra
    sh      $a0, 0x10($v1)
branch_0x801ea8f0:
    lw      $v0, 0x8($v1)
    lw      $t0, 0x4($v1)
    lui     $at, 0x437f
    mtc1    $at, $t2
    subu    $t1, $v0, $t0
    mtc1    $t1, $t0
    mtc1    $v0, $a0
    addiu   $t3, $zero, 0x1
    cvt.s.w $f16, $f8
    addiu   $a0, $zero, 0xff
    sh      $a0, 0xc($v1)
    sh      $zero, 0xe($v1)
    lui     $at, 0x4f00
    cvt.s.w $f6, $f4
    mul.s   $f18, $f16, $f10
    div.s   $f8, $f18, $f6
    cfc1    $t2, $ra
    ctc1    $t3, $ra
    nop
    cvt.w.s $f16, $f8
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    beqzl   $t3, branch_0x801ea99c
    mfc1    $t3, $s0
    mtc1    $at, $s0
    addiu   $t3, $zero, 0x1
    sub.s   $f16, $f8, $f16
    ctc1    $t3, $ra
    nop
    cvt.w.s $f16, $f16
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    bnez    $t3, branch_0x801ea990
    nop
    mfc1    $t3, $s0
    lui     $at, 0x8000
    b       branch_0x801ea9a8
    or      $t3, $t3, $at
branch_0x801ea990:
    b       branch_0x801ea9a8
    addiu   $t3, $zero, 0xffff

.globl Function_0x801ea998
Function_0x801ea998: # 0x801ea998
    mfc1    $t3, $s0
branch_0x801ea99c:
    nop
    bltz    $t3, branch_0x801ea990
    nop
branch_0x801ea9a8:
    ctc1    $t2, $ra
    jr      $ra
    sh      $t3, 0x10($v1)
branch_0x801ea9b4:
    lw      $t4, 0x4($v1)
    lw      $t5, 0x8($v1)
    lui     $at, 0x437f
    mtc1    $t4, $t2
    mtc1    $at, $s2
    mtc1    $t5, $t0
    cvt.s.w $f4, $f10
    addiu   $t7, $zero, 0x1
    addiu   $a0, $zero, 0xff
    sh      $a0, 0xc($v1)
    sh      $zero, 0xe($v1)
    cvt.s.w $f16, $f8
    mul.s   $f6, $f4, $f18
    lui     $at, 0x4f00
    div.s   $f10, $f6, $f16
    cfc1    $t6, $ra
    ctc1    $t7, $ra
    nop
    cvt.w.s $f4, $f10
    cfc1    $t7, $ra
    nop
    andi    $t7, $t7, 0x78
    beqzl   $t7, branch_0x801eaa5c
    mfc1    $t7, $a0
    mtc1    $at, $a0
    addiu   $t7, $zero, 0x1
    sub.s   $f4, $f10, $f4
    ctc1    $t7, $ra
    nop
    cvt.w.s $f4, $f4
    cfc1    $t7, $ra
    nop
    andi    $t7, $t7, 0x78
    bnez    $t7, branch_0x801eaa50
    nop
    mfc1    $t7, $a0
    lui     $at, 0x8000
    b       branch_0x801eaa68
    or      $t7, $t7, $at
branch_0x801eaa50:
    b       branch_0x801eaa68
    addiu   $t7, $zero, 0xffff

.globl Function_0x801eaa58
Function_0x801eaa58: # 0x801eaa58
    mfc1    $t7, $a0
branch_0x801eaa5c:
    nop
    bltz    $t7, branch_0x801eaa50
    nop
branch_0x801eaa68:
    ctc1    $t6, $ra
    jr      $ra
    sh      $t7, 0x10($v1)

.globl Function_0x801eaa74
Function_0x801eaa74: # 0x801eaa74
    lw      $t8, 0x4($v1)
branch_0x801eaa78:
    lw      $t9, 0x8($v1)
    lui     $at, 0x4300
    mtc1    $t8, $s2
    mtc1    $at, $a2
    mtc1    $t9, $t2
    cvt.s.w $f8, $f18
    addiu   $t1, $zero, 0x1
    addiu   $a0, $zero, 0xff
    sh      $a0, 0xc($v1)
    lui     $at, 0x4f00
    cvt.s.w $f4, $f10
    mul.s   $f16, $f8, $f6
    div.s   $f18, $f16, $f4
    cfc1    $t0, $ra
    ctc1    $t1, $ra
    nop
    cvt.w.s $f8, $f18
    cfc1    $t1, $ra
    nop
    andi    $t1, $t1, 0x78
    beqzl   $t1, branch_0x801eab18
    mfc1    $t1, $t0
    mtc1    $at, $t0
    addiu   $t1, $zero, 0x1
    sub.s   $f8, $f18, $f8
    ctc1    $t1, $ra
    nop
    cvt.w.s $f8, $f8
    cfc1    $t1, $ra
    nop
    andi    $t1, $t1, 0x78
    bnez    $t1, branch_0x801eab0c
    nop
    mfc1    $t1, $t0
    lui     $at, 0x8000
    b       branch_0x801eab24
    or      $t1, $t1, $at
branch_0x801eab0c:
    b       branch_0x801eab24
    addiu   $t1, $zero, 0xffff

.globl Function_0x801eab14
Function_0x801eab14: # 0x801eab14
    mfc1    $t1, $t0
branch_0x801eab18:
    nop
    bltz    $t1, branch_0x801eab0c
    nop
branch_0x801eab24:
    ctc1    $t0, $ra
    sh      $t1, 0xe($v1)
    sh      $a0, 0x10($v1)
    jr      $ra
    nop

.globl Function_0x801eab38
Function_0x801eab38: # 0x801eab38
    lui     $a0, 0x8023
    addiu   $a0, $a0, 0x8838
    lh      $v0, 0x2($a0)
    addiu   $at, $zero, 0x1
    addiu   $t9, $zero, 0xff
    beqzl   $v0, branch_0x801eab7c
    lw      $t6, 0x4($a0)
    beq     $v0, $at, branch_0x801eac38
    addiu   $t3, $zero, 0xff
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x801eab78
    addiu   $at, $zero, 0x3
    beql    $v0, $at, branch_0x801eac3c
    lw      $v0, 0x8($a0)
    jr      $ra
    nop
branch_0x801eab78:
    lw      $t6, 0x4($a0)
branch_0x801eab7c:
    lw      $t7, 0x8($a0)
    lui     $at, 0x42fe
    mtc1    $t6, $a0
    mtc1    $at, $t0
    mtc1    $t7, $s0
    cvt.s.w $f6, $f4
    addiu   $v0, $zero, 0x1
    lui     $at, 0x4f00
    cvt.s.w $f18, $f16
    mul.s   $f10, $f6, $f8
    div.s   $f4, $f10, $f18
    cfc1    $t8, $ra
    ctc1    $v0, $ra
    nop
    cvt.w.s $f6, $f4
    cfc1    $v0, $ra
    nop
    andi    $v0, $v0, 0x78
    beqzl   $v0, branch_0x801eac14
    mfc1    $v0, $a2
    mtc1    $at, $a2
    addiu   $v0, $zero, 0x1
    sub.s   $f6, $f4, $f6
    ctc1    $v0, $ra
    nop
    cvt.w.s $f6, $f6
    cfc1    $v0, $ra
    nop
    andi    $v0, $v0, 0x78
    bnez    $v0, branch_0x801eac08
    nop
    mfc1    $v0, $a2
    lui     $at, 0x8000
    b       branch_0x801eac20
    or      $v0, $v0, $at
branch_0x801eac08:
    b       branch_0x801eac20
    addiu   $v0, $zero, 0xffff

.globl Function_0x801eac10
Function_0x801eac10: # 0x801eac10
    mfc1    $v0, $a2
branch_0x801eac14:
    nop
    bltz    $v0, branch_0x801eac08
    nop
branch_0x801eac20:
    ctc1    $t8, $ra
    addiu   $v0, $v0, 0x80
    sh      $v0, 0xc($a0)
    sh      $t9, 0xe($a0)
    jr      $ra
    sh      $v0, 0x10($a0)
branch_0x801eac38:
    lw      $v0, 0x8($a0)
branch_0x801eac3c:
    lw      $t0, 0x4($a0)
    lui     $at, 0x42fe
    mtc1    $at, $t2
    subu    $t1, $v0, $t0
    mtc1    $t1, $t0
    mtc1    $v0, $a0
    addiu   $v1, $zero, 0x1
    cvt.s.w $f16, $f8
    lui     $at, 0x4f00
    cvt.s.w $f6, $f4
    mul.s   $f18, $f16, $f10
    div.s   $f8, $f18, $f6
    cfc1    $t2, $ra
    ctc1    $v1, $ra
    nop
    cvt.w.s $f16, $f8
    cfc1    $v1, $ra
    nop
    andi    $v1, $v1, 0x78
    beqzl   $v1, branch_0x801eacd8
    mfc1    $v1, $s0
    mtc1    $at, $s0
    addiu   $v1, $zero, 0x1
    sub.s   $f16, $f8, $f16
    ctc1    $v1, $ra
    nop
    cvt.w.s $f16, $f16
    cfc1    $v1, $ra
    nop
    andi    $v1, $v1, 0x78
    bnez    $v1, branch_0x801eaccc
    nop
    mfc1    $v1, $s0
    lui     $at, 0x8000
    b       branch_0x801eace4
    or      $v1, $v1, $at
branch_0x801eaccc:
    b       branch_0x801eace4
    addiu   $v1, $zero, 0xffff

.globl Function_0x801eacd4
Function_0x801eacd4: # 0x801eacd4
    mfc1    $v1, $s0
branch_0x801eacd8:
    nop
    bltz    $v1, branch_0x801eaccc
    nop
branch_0x801eace4:
    addiu   $v1, $v1, 0x80
    ctc1    $t2, $ra
    sh      $v1, 0xc($a0)
    sh      $t3, 0xe($a0)
    sh      $v1, 0x10($a0)
    jr      $ra
    nop

.globl Function_0x801ead00
Function_0x801ead00: # 0x801ead00
    lui     $t7, 0x8022
    addiu   $t7, $t7, 0x6bf0
    lw      $at, 0x0($t7)
    lui     $t6, 0x8023
    addiu   $t6, $t6, 0x8838
    sw      $at, 0x0($t6)
    lw      $at, 0x8($t7)
    lw      $t0, 0x4($t7)
    sw      $at, 0x8($t6)
    sw      $t0, 0x4($t6)
    lw      $t0, 0xc($t7)
    lw      $at, 0x10($t7)
    sw      $t0, 0xc($t6)
    jr      $ra
    sw      $at, 0x10($t6)

.globl Function_0x801ead3c
Function_0x801ead3c: # 0x801ead3c
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x8838
    lh      $t6, 0x0($v0)
    beqz    $t6, branch_0x801ead8c
    nop
    lw      $t7, 0x4($v0)
    lw      $t0, 0x8($v0)
    addiu   $t8, $t7, 0x1
    slt     $at, $t8, $t0
    bnez    $at, branch_0x801ead8c
    sw      $t8, 0x4($v0)
    lh      $t1, 0x2($v0)
    addiu   $at, $zero, 0x4
    sw      $zero, 0x4($v0)
    addiu   $t2, $t1, 0x1
    sh      $t2, 0x2($v0)
    lh      $t3, 0x2($v0)
    bne     $t3, $at, branch_0x801ead8c
    nop
    sh      $zero, 0x2($v0)
branch_0x801ead8c:
    jr      $ra
    nop

.globl Function_0x801ead94
Function_0x801ead94: # 0x801ead94
    addiu   $sp, $sp, 0xffa0
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x60($sp)
    sw      $a1, 0x64($sp)
    sw      $a2, 0x68($sp)
    bnez    $a1, branch_0x801eadbc
    sw      $a3, 0x6c($sp)
    lui     $t3, 0x8022
    b       branch_0x801eaddc
    addiu   $t3, $t3, 0x6b30
branch_0x801eadbc:
    lw      $t7, 0x64($sp)
    addiu   $at, $zero, 0x2
    lui     $t3, 0x8022
    bne     $t7, $at, branch_0x801eaddc
    addiu   $t3, $t3, 0x6b58
    lui     $t3, 0x8022
    b       branch_0x801eaddc
    addiu   $t3, $t3, 0x6b84
branch_0x801eaddc:
    lui     $a1, 0x8022
    addiu   $a1, $a1, 0x6c10
    addiu   $a0, $sp, 0x30
    lw      $a2, 0x68($sp)
    jal     Function_0x800c9f70
    sw      $t3, 0x3c($sp)
    lw      $t3, 0x3c($sp)
    lw      $v1, 0x68($sp)
    addiu   $a0, $sp, 0x4c
    addiu   $a1, $sp, 0x58
    addiu   $v0, $zero, 0xa
branch_0x801eae08:
    div     $zero, $v1, $v0
    bnez    $v0, branch_0x801eae18
    nop
    break   0x7
branch_0x801eae18:
    addiu   $at, $zero, 0xffff
    bne     $v0, $at, branch_0x801eae30
    lui     $at, 0x8000
    bne     $v1, $at, branch_0x801eae30
    nop
    break   0x6
branch_0x801eae30:
    addiu   $a0, $a0, 0x4
    sltu    $at, $a0, $a1
    mfhi    $t8
    mflo    $v1
    sw      $t8, -0x4($a0)
    bnez    $at, branch_0x801eae08
    nop
    or      $t2, $zero, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a0, $sp, 0x50
    addiu   $v1, $sp, 0x58
branch_0x801eae5c:
    lw      $a3, 0x0($a0)
    addiu   $a0, $a0, 0x4
    or      $t0, $zero, $zero
    beqz    $a3, branch_0x801eae84
    addiu   $a2, $a1, 0x1
    addu    $t9, $t3, $a3
    lbu     $t4, 0x0($t9)
    addiu   $a2, $a1, 0x1
    b       branch_0x801eaecc
    subu    $t2, $t2, $t4
branch_0x801eae84:
    slti    $at, $a2, 0x3
    beqz    $at, branch_0x801eaebc
    or      $t1, $a2, $zero
    sll     $t5, $t1, 2
    addiu   $t6, $sp, 0x4c
    addu    $v0, $t5, $t6
    lw      $t7, 0x0($v0)
branch_0x801eaea0:
    addiu   $v0, $v0, 0x4
    beqz    $t7, branch_0x801eaeb4
    nop
    b       branch_0x801eaebc
    addiu   $t0, $zero, 0x1
branch_0x801eaeb4:
    bnel    $v0, $v1, branch_0x801eaea0
    lw      $t7, 0x0($v0)
branch_0x801eaebc:
    beqz    $t0, branch_0x801eaed8
    addu    $t8, $t3, $a3
    lbu     $t9, 0x0($t8)
    subu    $t2, $t2, $t9
branch_0x801eaecc:
    slti    $at, $a2, 0x3
    bnez    $at, branch_0x801eae5c
    or      $a1, $a2, $zero
branch_0x801eaed8:
    lw      $t4, 0x6c($sp)
    lw      $t5, 0x70($sp)
    lw      $a0, 0x60($sp)
    lw      $a1, 0x64($sp)
    addiu   $a2, $sp, 0x30
    addu    $a3, $t4, $t2
    jal     Function_0x801e95e0
    sw      $t5, 0x10($sp)
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x60
    jr      $ra
    nop

.globl Function_0x801eaf08
Function_0x801eaf08: # 0x801eaf08
    nop
    nop


.globl Function_0x801eaf10_ChangeStateTo2
Function_0x801eaf10_ChangeStateTo2: # 0x801eaf10
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $v1, $zero, MainState_2
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $v1, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    sw      $zero, %lo(Unknown_0x801ce398)($at)
    addiu   $t2, $zero, 0x1
    lui     $at, 0x801d
    sw      $t2, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    addiu   $t3, $zero, 0x3
    lui     $at, 0x800d
    sw      $t3, 0x439c($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c80($at)
    lui     $at, 0x800e
    lui     $a1, 0x801a
    sw      $t2, -0x5758($at)
    addiu   $a1, $a1, 0x8050
    sw      $v1, 0x0($a1)
    lui     $at, 0x800d
    addiu   $t7, $zero, 0x14
    sw      $t7, 0x4730($at)
    lui     $at, 0x800d
    addiu   $t8, $zero, 0x5
    sw      $t8, 0x7ef4($at)
    lui     $at, 0x801d
    sw      $t3, -0x1b78($at)
    lui     $at, 0x800d
    sw      $t2, 0x7ef8($at)
    lui     $at, 0x801d
    sw      $zero, -0x1ca0($at)
    lui     $t9, 0x800d
    lw      $t9, 0x7fc0($t9)
    lui     $at, 0x801d
    sw      $zero, -0x1ba8($at)
    addiu   $sp, $sp, 0xffd0
    lui     $at, 0x801d
    sw      $ra, 0x1c($sp)
    bnez    $t9, branch_0x801eafe4
    sw      $zero, -0x4f6c($at)
    lui     $at, 0x800d
    sw      $zero, 0x7ef0($at)
branch_0x801eafe4:
    lui     $at, 0x801d
    lui     $t4, 0x801d
    lb      $t4, -0x5020($t4)
    sh      $zero, -0x1bb0($at)
    lui     $at, 0x800e
    sh      $zero, -0x5718($at)
    lui     $at, 0x800e
    andi    $t5, $t4, 0x10
    beqz    $t5, branch_0x801eb018
    sh      $zero, -0x5774($at)
    lui     $at, 0x800e
    b       branch_0x801eb020
    sh      $t2, -0x5720($at)
branch_0x801eb018:
    lui     $at, 0x800e
    sh      $zero, -0x5720($at)
branch_0x801eb020:
    lui     $at, 0x800e
    sh      $zero, -0x571c($at)
    lui     $v0, 0x800e
    lui     $at, 0x800e
    addiu   $v0, $v0, 0xa778
    sw      $zero, -0x5878($at)
    lw      $t6, 0x0($v0)
    addiu   $t7, $t6, 0x1
    slti    $at, $t7, 0x3
    bnez    $at, branch_0x801eb050
    sw      $t7, 0x0($v0)
    sw      $zero, 0x0($v0)
branch_0x801eb050:
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa77c
    lw      $t9, 0x0($v0)
    lui     $t6, 0x800f
    addiu   $t6, $t6, 0xa9a4
    addiu   $v1, $t9, 0x1
    slti    $at, $v1, 0x4
    bnez    $at, branch_0x801eb07c
    sw      $v1, 0x0($v0)
    sw      $zero, 0x0($v0)
    or      $v1, $zero, $zero
branch_0x801eb07c:
    sll     $t5, $v1, 3
    lw      $t1, 0x0($a1)
    addu    $v0, $t5, $t6
    lh      $t7, 0x0($v0)
    lh      $a2, 0x2($v0)
    blez    $t1, branch_0x801eb120
    sw      $t7, 0x24($sp)
    lui     $t9, 0x800d
    lw      $t9, 0x7ef0($t9)
    sll     $t5, $a2, 2
    subu    $t5, $t5, $a2
    sll     $t4, $t9, 2
    subu    $t4, $t4, $t9
    sll     $t9, $t1, 2
    subu    $t9, $t9, $t1
    sll     $t9, $t9, 3
    subu    $t9, $t9, $t1
    sll     $t9, $t9, 3
    sll     $t4, $t4, 4
    sll     $t5, $t5, 2
    lui     $t7, 0x800e
    addiu   $t7, $t7, 0x9424
    addu    $t6, $t4, $t5
    addu    $t9, $t9, $t1
    sll     $t9, $t9, 2
    addu    $t0, $t6, $t7
    subu    $t9, $t9, $t1
    lui     $t8, 0x8019
    addiu   $v0, $t8, 0x23f0
    sll     $t9, $t9, 3
    addu    $a3, $t9, $v0
    lw      $v1, 0x0($t0)
    lw      $a0, 0x4($t0)
    lw      $a1, 0x8($t0)
branch_0x801eb104:
    addiu   $v0, $v0, 0x1718
    sltu    $at, $v0, $a3
    sw      $a2, -0xbb0($v0)
    sw      $v1, -0xbac($v0)
    sw      $a0, -0xba8($v0)
    bnez    $at, branch_0x801eb104
    sw      $a1, -0xba4($v0)
branch_0x801eb120:
    lui     $t4, 0x800d
    lw      $t4, 0x465c($t4)
    lw      $t7, 0x24($sp)
    lui     $t6, 0x8019
    sll     $t5, $t4, 2
    subu    $t5, $t5, $t4
    sll     $t5, $t5, 3
    subu    $t5, $t5, $t4
    sll     $t5, $t5, 3
    addu    $t5, $t5, $t4
    sll     $t5, $t5, 2
    subu    $t5, $t5, $t4
    sll     $t5, $t5, 3
    addiu   $t6, $t6, 0x23f0
    addu    $v0, $t5, $t6
    lui     $t9, 0x800d
    sw      $t7, 0xb68($v0)
    lw      $t9, 0x7ef0($t9)
    lw      $t4, 0x24($sp)
    lui     $t7, 0x800e
    sll     $t8, $t9, 2
    sll     $t5, $t4, 2
    subu    $t8, $t8, $t9
    subu    $t5, $t5, $t4
    sll     $t5, $t5, 2
    sll     $t8, $t8, 4
    addu    $t6, $t8, $t5
    addiu   $t7, $t7, 0x9424
    lui     $t0, 0x801d
    addu    $v1, $t6, $t7
    addiu   $t0, $t0, 0xe454
    sh      $zero, 0x2($t0)
    lw      $t9, 0x0($v1)
    lw      $t4, 0x4($v1)
    lw      $t8, 0x8($v1)
    lh      $t5, 0x2($t0)
    lui     $at, 0x801d
    sw      $t9, 0xb6c($v0)
    sw      $t4, 0xb70($v0)
    sw      $t8, 0xb74($v0)
    sh      $t5, 0x0($t0)
    sw      $t2, -0x1c58($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c54($at)
    lui     $at, 0x801d
    sw      $t3, -0x1c50($at)
    or      $a0, $t2, $zero
    lw      $a1, 0x24($sp)
    or      $a3, $zero, $zero
    jal     Function_0x80096700
    sw      $zero, 0x10($sp)
    lui     $v0, 0x800d
    lw      $v0, 0x7ef0($v0)
    lui     $t7, 0x800e
    addiu   $t7, $t7, 0xb2e8
    bgez    $v0, branch_0x801eb208
    lui     $a0, 0x806
    or      $v0, $zero, $zero
branch_0x801eb208:
    slti    $at, $v0, 0x9
    bnezl   $at, branch_0x801eb21c
    sll     $t6, $v0, 2
    addiu   $v0, $zero, 0x8
    sll     $t6, $v0, 2
branch_0x801eb21c:
    addu    $v1, $t6, $t7
    lh      $a1, 0x0($v1)
    jal     Function_0x800965ec
    lh      $a2, 0x2($v1)
    jal     Function_0x8004a1a8
    nop
    or      $a0, $zero, $zero
    or      $a1, $zero, $zero
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    addiu   $t9, $zero, 0x5
    lui     $at, 0x8022
    sw      $t9, 0x7a40($at)
    lui     $at, 0x800e
    addiu   $t4, $zero, 0x1
    sh      $t4, -0x58d4($at)
    or      $a0, $zero, $zero
    jal     Function_0x800c1f94
    or      $a1, $zero, $zero
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x30
    jr      $ra
    nop

.globl Function_0x801eb284_ChangeStateTo7
Function_0x801eb284_ChangeStateTo7: # 0x801eb284
    lui     $v1, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v1, $v1, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v1)
    lui     $at, 0x801d
    addiu   $sp, $sp, 0xffa8
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $s0, 0x20($sp)
    addiu   $t7, $zero, MainState_7
    addiu   $s0, $zero, 0x1
    sw      $t7, 0x0($v1)
    lui     $at, %hi(Unknown_0x801ce398)
    sw      $s0, %lo(Unknown_0x801ce398)($at)
    lui     $at, 0x801d
    sw      $s0, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $v0, 0x800e
    lw      $v0, -0x5888($v0)
    lui     $at, 0x800d
    addiu   $t8, $zero, 0x3
    sw      $t8, 0x439c($at)
    addiu   $t2, $zero, 0x2
    lui     $at, 0x801d
    sw      $ra, 0x24($sp)
    beqz    $v0, branch_0x801eb314
    sw      $t2, -0x4f68($at)
    beq     $v0, $s0, branch_0x801eb3c0
    lui     $t0, 0x801d
    b       branch_0x801eb450
    lui     $t0, 0x801d
branch_0x801eb314:
    addiu   $t1, $zero, 0x4
    lui     $at, 0x801d
    sw      $t1, -0x1c80($at)
    lui     $at, 0x800e
    sw      $s0, -0x5758($at)
    lui     $t0, 0x801d
    lui     $at, 0x801a
    addiu   $t0, $t0, 0xb090
    sw      $t1, -0x7fb0($at)
    sw      $t2, 0x0($t0)
    lui     $t3, 0x800e
    lw      $t3, -0x5884($t3)
    lui     $t5, 0x800f
    lui     $at, 0x800d
    addiu   $t5, $t5, 0xa9a4
    sll     $t4, $t3, 3
    sw      $t2, 0x7ef0($at)
    addu    $v0, $t4, $t5
    lh      $v1, 0x6($v0)
    lh      $a1, 0x0($v0)
    lh      $a2, 0x2($v0)
    lh      $a3, 0x4($v0)
    or      $a0, $zero, $zero
    sw      $v1, 0x10($sp)
    sw      $v1, 0x4c($sp)
    sw      $a1, 0x40($sp)
    sw      $a2, 0x44($sp)
    jal     Function_0x80096700
    sw      $a3, 0x48($sp)
    addiu   $t6, $zero, 0x3
    lui     $at, 0x801d
    sw      $t6, -0x1b78($at)
    lui     $at, 0x801d
    sw      $s0, -0x1ba8($at)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x4
    lui     $a1, 0x800d
    sw      $t7, -0x1b9c($at)
    lw      $a1, 0x7ef0($a1)
    jal     Function_0x800c4738
    or      $a0, $zero, $zero
    b       branch_0x801eb4e4
    nop
branch_0x801eb3c0:
    addiu   $t8, $zero, 0xb
    lui     $at, 0x801d
    sw      $t8, -0x1c80($at)
    lui     $at, 0x800e
    sw      $s0, -0x5758($at)
    lui     $at, 0x801a
    addiu   $t0, $t0, 0xb090
    sw      $s0, -0x7fb0($at)
    sw      $s0, 0x0($t0)
    lui     $t3, 0x800e
    lw      $t3, -0x5884($t3)
    lui     $a1, 0x800f
    lui     $at, 0x800d
    sll     $t4, $t3, 3
    addu    $a1, $a1, $t4
    lh      $a1, -0x565c($a1)
    sw      $s0, 0x7ef0($at)
    or      $a2, $zero, $zero
    or      $a3, $zero, $zero
    or      $a0, $zero, $zero
    sw      $zero, 0x10($sp)
    sw      $zero, 0x4c($sp)
    sw      $zero, 0x44($sp)
    sw      $zero, 0x48($sp)
    jal     Function_0x80096700
    sw      $a1, 0x40($sp)
    lui     $at, 0x801d
    sw      $s0, -0x1b78($at)
    lui     $at, 0x801d
    lui     $a1, 0x800d
    sw      $zero, -0x1ba8($at)
    lw      $a1, 0x7ef0($a1)
    jal     Function_0x800c4738
    addiu   $a0, $zero, 0x3
    b       branch_0x801eb4e4
    nop
branch_0x801eb450:
    lui     $at, 0x801d
    sw      $s0, -0x1c80($at)
    lui     $at, 0x800e
    sw      $t2, -0x5758($at)
    lui     $at, 0x801a
    addiu   $t0, $t0, 0xb090
    sw      $t2, -0x7fb0($at)
    sw      $s0, 0x0($t0)
    lui     $t6, 0x800e
    lw      $t6, -0x5884($t6)
    lui     $t8, 0x800f
    lui     $at, 0x800d
    addiu   $t8, $t8, 0xa9a4
    sll     $t7, $t6, 3
    sw      $s0, 0x7ef0($at)
    addu    $v0, $t7, $t8
    lh      $a1, 0x0($v0)
    lh      $a2, 0x2($v0)
    sw      $zero, 0x48($sp)
    addiu   $a0, $zero, 0x4
    sw      $zero, 0x4c($sp)
    or      $a3, $a1, $zero
    sw      $a1, 0x40($sp)
    sw      $a2, 0x10($sp)
    jal     Function_0x80096700
    sw      $a2, 0x44($sp)
    addiu   $t9, $zero, 0x3
    lui     $at, 0x801d
    sw      $t9, -0x1b78($at)
    lui     $at, 0x800d
    sh      $zero, 0x46f0($at)
    lui     $at, 0x801d
    lui     $a1, 0x800d
    sw      $zero, -0x1ba8($at)
    lw      $a1, 0x7ef0($a1)
    jal     Function_0x800c4738
    or      $a0, $s0, $zero
branch_0x801eb4e4:
    lui     $a1, 0x800d
    lui     $a2, 0x800d
    addiu   $a2, $a2, 0x7ef4
    addiu   $a1, $a1, 0x4730
    addiu   $t3, $zero, 0x14
    addiu   $t4, $zero, 0x5
    sw      $t3, 0x0($a1)
    sw      $t4, 0x0($a2)
    lui     $t5, 0x801d
    lw      $t5, -0x1c80($t5)
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xe368
    lui     $t6, 0x800e
    sw      $t5, 0x0($v0)
    lw      $t6, -0x5758($t6)
    lui     $a0, 0x801a
    lui     $t9, 0x801d
    sh      $t6, 0x4($v0)
    lw      $a0, -0x7fb0($a0)
    sw      $t3, 0x8($v0)
    sw      $t4, 0xc($v0)
    sh      $a0, 0x6($v0)
    lw      $t9, -0x1b78($t9)
    sw      $zero, 0x14($v0)
    lui     $at, 0x800d
    sw      $t9, 0x10($v0)
    sw      $zero, 0x7ef8($at)
    lui     $at, 0x801d
    sw      $s0, -0x1ca0($at)
    lui     $at, 0x801d
    sw      $zero, -0x4f6c($at)
    lui     $at, 0x801d
    sh      $zero, -0x1bb0($at)
    lui     $at, 0x800e
    blez    $a0, branch_0x801eb5e8
    sh      $zero, -0x5718($at)
    lui     $t4, 0x800d
    lw      $t4, 0x7ef0($t4)
    lui     $t6, 0x800e
    addiu   $t6, $t6, 0x9424
    sll     $t5, $t4, 2
    subu    $t5, $t5, $t4
    sll     $t5, $t5, 4
    lui     $v1, 0x8019
    addiu   $a1, $sp, 0x40
    sll     $t7, $a0, 2
    addu    $t0, $t7, $a1
    addiu   $v1, $v1, 0x23f0
    addu    $a3, $t5, $t6
    addiu   $a2, $zero, 0xc
branch_0x801eb5ac:
    lw      $a0, 0x0($a1)
    addiu   $a1, $a1, 0x4
    sltu    $at, $a1, $t0
    multu   $a0, $a2
    addiu   $v1, $v1, 0x1718
    sw      $a0, -0xbb0($v1)
    mflo    $t8
    addu    $v0, $a3, $t8
    lw      $t9, 0x0($v0)
    lw      $t4, 0x4($v0)
    lw      $t5, 0x8($v0)
    sw      $t9, -0xbac($v1)
    sw      $t4, -0xba8($v1)
    bnez    $at, branch_0x801eb5ac
    sw      $t5, -0xba4($v1)
branch_0x801eb5e8:
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe454
    sh      $zero, 0x2($v1)
    lh      $t6, 0x2($v1)
    addiu   $t7, $zero, 0x2
    lui     $at, 0x801d
    sh      $t6, 0x0($v1)
    sw      $t7, -0x1c58($at)
    lui     $v0, 0x800d
    lw      $v0, 0x7ef0($v0)
    lui     $at, 0x801d
    sw      $zero, -0x1c54($at)
    lui     $at, 0x801d
    bgez    $v0, branch_0x801eb628
    sw      $zero, -0x1c50($at)
    or      $v0, $zero, $zero
branch_0x801eb628:
    slti    $at, $v0, 0x9
    bnez    $at, branch_0x801eb638
    lui     $a0, 0x806
    addiu   $v0, $zero, 0x8
branch_0x801eb638:
    lui     $t8, 0x800e
    addiu   $t8, $t8, 0xb2e8
    sll     $t3, $v0, 2
    addu    $v1, $t3, $t8
    lh      $a1, 0x0($v1)
    jal     Function_0x800965ec
    lh      $a2, 0x2($v1)
    addiu   $a0, $zero, 0x2
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $v0, 0x8022
    addiu   $v0, $v0, 0x7a40
    addiu   $t9, $zero, 0x3
    sw      $t9, 0x0($v0)
    lui     $t4, 0x800e
    lw      $t4, -0x5758($t4)
    addiu   $at, $zero, 0x2
    bnel    $t4, $at, branch_0x801eb69c
    lw      $ra, 0x24($sp)
    sw      $t9, 0x10c($v0)
    lw      $ra, 0x24($sp)
branch_0x801eb69c:
    lw      $s0, 0x20($sp)
    addiu   $sp, $sp, 0x58
    jr      $ra
    nop

.globl Function_0x801eb6ac_ChangeStateTo1e
Function_0x801eb6ac_ChangeStateTo1e: # 0x801eb6ac
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_1e
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x8
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    addiu   $a3, $zero, 0x1
    lui     $at, 0x801d
    sw      $a3, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $t9, 0x800d
    lw      $t9, 0x7fc0($t9)
    addiu   $t1, $zero, 0x3
    lui     $at, 0x800d
    sw      $t1, 0x439c($at)
    addiu   $sp, $sp, 0xffd8
    lui     $at, 0x800e
    sw      $ra, 0x1c($sp)
    beqz    $t9, branch_0x801eb73c
    sw      $a3, -0x5758($at)
    lui     $t4, 0x801c
    lw      $t4, 0x3770($t4)
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xb090
    sw      $t4, 0x0($v1)
branch_0x801eb73c:
    lui     $t5, 0x801d
    lui     $t7, 0x801d
    lw      $t7, -0x4f6c($t7)
    lw      $t5, -0x4f68($t5)
    lui     $t4, 0x800f
    sll     $t8, $t7, 1
    sll     $t6, $t5, 4
    addu    $t9, $t6, $t8
    addu    $t4, $t4, $t9
    lh      $t0, -0x568c($t4)
    lui     $v1, 0x801d
    lui     $t2, 0x800d
    addiu   $t2, $t2, 0x7ef0
    addiu   $v1, $v1, 0xb090
    sw      $t0, 0x0($v1)
    sw      $t0, 0x0($t2)
    bnez    $t0, branch_0x801eb7a0
    or      $v0, $t0, $zero
    lui     $a0, 0x800e
    addiu   $a0, $a0, 0xa780
    lh      $v1, 0x0($a0)
    slti    $at, $v1, 0x270f
    beqz    $at, branch_0x801eb7a0
    addiu   $t5, $v1, 0x1
    sh      $t5, 0x0($a0)
branch_0x801eb7a0:
    sll     $t6, $v0, 1
    lui     $t8, 0x800f
    addu    $t8, $t8, $t6
    lh      $t8, -0x56b4($t8)
    addiu   $t7, $zero, 0xa
    lui     $at, 0x801d
    sw      $t7, -0x1c80($at)
    lui     $at, 0x800d
    sw      $t8, 0x4730($at)
    addiu   $v1, $zero, 0x5
    lui     $at, 0x800d
    bne     $a3, $t0, branch_0x801eb7e4
    sw      $v1, 0x7ef4($at)
    addiu   $t9, $zero, 0x4
    lui     $at, 0x801a
    b       branch_0x801eb804
    sw      $t9, -0x7fb0($at)
branch_0x801eb7e4:
    addiu   $at, $zero, 0x2
    bne     $t0, $at, branch_0x801eb7fc
    addiu   $t4, $zero, 0x2
    lui     $at, 0x801a
    b       branch_0x801eb804
    sw      $t4, -0x7fb0($at)
branch_0x801eb7fc:
    lui     $at, 0x801a
    sw      $a3, -0x7fb0($at)
branch_0x801eb804:
    lui     $at, 0x8022
    beq     $a3, $t0, branch_0x801eb81c
    sw      $v1, 0x7a40($at)
    addiu   $at, $zero, 0x4
    bne     $t0, $at, branch_0x801eb828
    addiu   $t5, $zero, 0x2
branch_0x801eb81c:
    lui     $at, 0x801d
    b       branch_0x801eb830
    sw      $a3, -0x1c58($at)
branch_0x801eb828:
    lui     $at, 0x801d
    sw      $t5, -0x1c58($at)
branch_0x801eb830:
    lui     $at, 0x801d
    sw      $zero, -0x1c54($at)
    lui     $at, 0x801d
    sw      $t1, -0x1c50($at)
    lui     $at, 0x800d
    sw      $a3, 0x7ef8($at)
    addiu   $a0, $zero, 0x4
    or      $a1, $zero, $zero
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $t7, 0x800d
    lw      $t7, 0x465c($t7)
    lui     $t3, 0x800e
    addiu   $t3, $t3, 0xa730
    lui     $at, 0x800e
    sll     $t6, $t7, 2
    sw      $zero, -0x5878($at)
    addu    $t8, $t3, $t6
    lw      $a1, 0x0($t8)
    jal     Function_0x80047df0
    sw      $a1, 0x20($sp)
    lw      $a1, 0x20($sp)
    lui     $t3, 0x800e
    andi    $v1, $v0, 0x3
    or      $a2, $v1, $zero
    addiu   $t3, $t3, 0xa730
    bne     $a1, $v1, branch_0x801eb8c8
    addiu   $a3, $zero, 0x1
    addiu   $a2, $v1, 0x1
    bgez    $a2, branch_0x801eb8c4
    andi    $t9, $a2, 0x3
    beqz    $t9, branch_0x801eb8c4
    nop
    addiu   $t9, $t9, 0xfffc
branch_0x801eb8c4:
    or      $a2, $t9, $zero
branch_0x801eb8c8:
    lui     $t4, 0x801d
    lh      $t4, -0x1bac($t4)
    lui     $t5, 0x800d
    addiu   $a0, $zero, 0x1
    beqz    $t4, branch_0x801eb8e4
    nop
    addiu   $a1, $a1, 0x4
branch_0x801eb8e4:
    lw      $t5, 0x7ef0($t5)
    bnel    $a3, $t5, branch_0x801eb918
    or      $a3, $zero, $zero
    lw      $t7, 0xc($t3)
    or      $a0, $zero, $zero
    lw      $a2, 0x4($t3)
    lw      $a3, 0x8($t3)
    jal     Function_0x80096700
    sw      $t7, 0x10($sp)
    lui     $t3, 0x800e
    b       branch_0x801eb928
    addiu   $t3, $t3, 0xa730

.globl Function_0x801eb914
Function_0x801eb914: # 0x801eb914
    or      $a3, $zero, $zero
branch_0x801eb918:
    jal     Function_0x80096700
    sw      $zero, 0x10($sp)
    lui     $t3, 0x800e
    addiu   $t3, $t3, 0xa730
branch_0x801eb928:
    lui     $a1, 0x800d
    lw      $a1, 0x465c($a1)
    addiu   $a3, $zero, 0x1718
    addiu   $t2, $zero, 0xe
    multu   $a1, $a3
    sll     $t8, $a1, 2
    addu    $t9, $t3, $t8
    lw      $a2, 0x0($t9)
    lui     $t1, 0x801d
    addiu   $t1, $t1, 0xaff8
    lui     $v0, 0x8019
    addiu   $v0, $v0, 0x23f0
    lui     $t0, 0x800d
    addiu   $at, $zero, 0x2
    mflo    $t6
    addu    $v1, $v0, $t6
    sw      $a2, 0xb68($v1)
    multu   $a2, $t2
    lui     $t8, 0x800d
    mflo    $t4
    addu    $a0, $t1, $t4
    lb      $t5, 0xb($a0)
    lb      $t7, 0xc($a0)
    lb      $t6, 0xd($a0)
    sw      $t5, 0xb6c($v1)
    sw      $t7, 0xb70($v1)
    sw      $t6, 0xb74($v1)
    lw      $t0, 0x7ef0($t0)
    lui     $a0, 0x800d
    bne     $t0, $at, branch_0x801eb9bc
    nop
    lw      $t8, 0x4660($t8)
    multu   $t8, $a3
    mflo    $t9
    addu    $v1, $v0, $t9
    b       branch_0x801eb9dc
    sw      $a2, 0xb68($v1)
branch_0x801eb9bc:
    lw      $a0, 0x4660($a0)
    multu   $a0, $a3
    sll     $t5, $a0, 2
    addu    $t7, $t3, $t5
    lw      $t6, 0x0($t7)
    mflo    $t4
    addu    $v1, $v0, $t4
    sw      $t6, 0xb68($v1)
branch_0x801eb9dc:
    lw      $t8, 0xb68($v1)
    lw      $t6, 0x8($t3)
    or      $a3, $t0, $zero
    multu   $t8, $t2
    lui     $t8, 0x800e
    addiu   $t8, $t8, 0xb30c
    mflo    $t9
    addu    $a0, $t1, $t9
    lb      $t4, 0xb($a0)
    multu   $t6, $t2
    lb      $t5, 0xc($a0)
    lb      $t7, 0xd($a0)
    sw      $t4, 0xb6c($v1)
    sw      $t5, 0xb70($v1)
    sw      $t7, 0xb74($v1)
    sw      $t6, 0x3998($v0)
    lw      $t6, 0xc($t3)
    lui     $a0, 0x806
    mflo    $t9
    addu    $a1, $t1, $t9
    lb      $t4, 0xb($a1)
    multu   $t6, $t2
    lb      $t5, 0xc($a1)
    lb      $t7, 0xd($a1)
    sw      $t4, 0x399c($v0)
    sw      $t5, 0x39a0($v0)
    sw      $t7, 0x39a4($v0)
    sw      $t6, 0x50b0($v0)
    mflo    $t9
    addu    $a2, $t1, $t9
    lb      $t4, 0xb($a2)
    lb      $t5, 0xc($a2)
    lb      $t7, 0xd($a2)
    sw      $t4, 0x50b4($v0)
    sw      $t5, 0x50b8($v0)
    bgez    $t0, branch_0x801eba74
    sw      $t7, 0x50bc($v0)
    or      $a3, $zero, $zero
branch_0x801eba74:
    slti    $at, $a3, 0x9
    bnezl   $at, branch_0x801eba88
    sll     $t6, $a3, 2
    addiu   $a3, $zero, 0x8
    sll     $t6, $a3, 2
branch_0x801eba88:
    addu    $v0, $t6, $t8
    lh      $a1, 0x0($v0)
    jal     Function_0x800965ec
    lh      $a2, 0x2($v0)
    lui     $a1, 0x800d
    lw      $a1, 0x7ef0($a1)
    jal     Function_0x800c1f94
    addiu   $a0, $zero, 0x2
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x801ebab8_ChangeStateToA
Function_0x801ebab8_ChangeStateToA: # 0x801ebab8
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $v1, $zero, MainState_a
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $v1, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t7, $zero, 0x4
    sw      $t7, %lo(Unknown_0x801ce398)($at)
    addiu   $t1, $zero, 0x1
    lui     $at, 0x801d
    sw      $t1, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $t8, 0x801d
    lh      $t8, -0x1c94($t8)
    addiu   $t2, $zero, 0x3
    lui     $at, 0x800d
    sw      $t2, 0x439c($at)
    addiu   $sp, $sp, 0xffe0
    lui     $at, 0x801d
    sw      $ra, 0x1c($sp)
    bne     $t1, $t8, branch_0x801ebb50
    sw      $zero, -0x1c80($at)
    lui     $a2, 0x800e
    addiu   $a2, $a2, 0xa8a8
    sw      $t1, 0x0($a2)
    lui     $at, 0x801a
    sw      $t1, -0x7fb0($at)
    b       branch_0x801ebb68
    addiu   $t0, $zero, 0x2
branch_0x801ebb50:
    lui     $a2, 0x800e
    addiu   $a2, $a2, 0xa8a8
    addiu   $t0, $zero, 0x2
    sw      $t0, 0x0($a2)
    lui     $at, 0x801a
    sw      $t0, -0x7fb0($at)
branch_0x801ebb68:
    lui     $at, 0x800d
    sw      $v1, 0x4730($at)
    lui     $at, 0x800d
    addiu   $t9, $zero, 0x5
    sw      $t9, 0x7ef4($at)
    lui     $t7, 0x800e
    lh      $t7, -0x58d4($t7)
    lui     $at, 0x801d
    sw      $t2, -0x1b78($at)
    lui     $at, 0x800d
    addiu   $t6, $zero, 0x9
    beqz    $t7, branch_0x801ebbbc
    sw      $t6, 0x7ef0($at)
    lui     $v0, 0x800e
    lui     $a1, 0x800e
    addiu   $a1, $a1, 0xa740
    addiu   $v0, $v0, 0xa748
    sw      $zero, 0x0($a1)
    sw      $t2, 0x4($a1)
    sw      $zero, 0x4($v0)
    sw      $zero, 0x0($v0)
branch_0x801ebbbc:
    lui     $t9, 0x800d
    lw      $t9, 0x465c($t9)
    addiu   $t3, $zero, 0x1718
    lui     $a1, 0x800e
    multu   $t9, $t3
    addiu   $a1, $a1, 0xa740
    lw      $t7, 0x0($a1)
    lui     $t4, 0x8022
    addiu   $t4, $t4, 0x6cb0
    sll     $t8, $t7, 2
    addu    $t9, $t4, $t8
    lw      $a0, 0x0($t9)
    addiu   $ra, $zero, 0xe
    lui     $a3, 0x8019
    mflo    $t6
    addiu   $a3, $a3, 0x23f0
    lui     $t5, 0x800e
    multu   $a0, $ra
    addu    $v0, $a3, $t6
    addiu   $t5, $t5, 0xa6d0
    lui     $at, 0x801d
    sw      $a0, 0xb68($v0)
    mflo    $t6
    addu    $v1, $t5, $t6
    lw      $t6, 0x0($a2)
    lb      $t7, 0xb($v1)
    lb      $t8, 0xc($v1)
    lb      $t9, 0xd($v1)
    sw      $t7, 0xb6c($v0)
    sw      $t8, 0xb70($v0)
    bne     $t0, $t6, branch_0x801ebc88
    sw      $t9, 0xb74($v0)
    lui     $t7, 0x800d
    lw      $t7, 0x4660($t7)
    lw      $t9, 0x4($a1)
    multu   $t7, $t3
    sll     $t6, $t9, 2
    addu    $t7, $t4, $t6
    lw      $a0, 0x0($t7)
    mflo    $t8
    addu    $v0, $a3, $t8
    sw      $a0, 0xb68($v0)
    multu   $a0, $ra
    mflo    $t8
    addu    $v1, $t5, $t8
    lb      $t9, 0xb($v1)
    lb      $t6, 0xc($v1)
    lb      $t7, 0xd($v1)
    sw      $t9, 0xb6c($v0)
    sw      $t6, 0xb70($v0)
    sw      $t7, 0xb74($v0)
branch_0x801ebc88:
    sw      $t0, -0x1c58($at)
    lui     $at, 0x801d
    sw      $t0, -0x1c54($at)
    lui     $at, 0x801d
    sw      $t2, -0x1c50($at)
    lui     $at, 0x800e
    sh      $zero, -0x571c($at)
    or      $a0, $t2, $zero
    or      $a1, $zero, $zero
    or      $a2, $t1, $zero
    or      $a3, $t0, $zero
    jal     Function_0x80096700
    sw      $t2, 0x10($sp)
    addiu   $a0, $zero, 0x2
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $v1, 0x8022
    addiu   $v1, $v1, 0x7a40
    addiu   $t0, $zero, 0x2
    sw      $t0, 0x0($v1)
    sw      $t0, 0x10c($v1)
    lui     $v0, 0x801d
    lw      $v0, -0x1c98($v0)
    addiu   $t1, $zero, 0x1
    addiu   $a0, $zero, 0x1
    beqz    $v0, branch_0x801ebd3c
    nop
    beq     $v0, $t1, branch_0x801ebd5c
    addiu   $a0, $zero, 0x1
    addiu   $at, $zero, 0x4
    beq     $v0, $at, branch_0x801ebd2c
    addiu   $a0, $zero, 0x1
    addiu   $at, $zero, 0xb
    beq     $v0, $at, branch_0x801ebd4c
    addiu   $a0, $zero, 0x1
    b       branch_0x801ebd68
    lw      $ra, 0x1c($sp)
branch_0x801ebd2c:
    jal     Function_0x800c1f94
    or      $a1, $zero, $zero
    b       branch_0x801ebd68
    lw      $ra, 0x1c($sp)
branch_0x801ebd3c:
    jal     Function_0x800c1f94
    addiu   $a1, $zero, 0x2
    b       branch_0x801ebd68
    lw      $ra, 0x1c($sp)
branch_0x801ebd4c:
    jal     Function_0x800c1f94
    addiu   $a1, $zero, 0x3
    b       branch_0x801ebd68
    lw      $ra, 0x1c($sp)
branch_0x801ebd5c:
    jal     Function_0x800c1f94
    addiu   $a1, $zero, 0x1
    lw      $ra, 0x1c($sp)
branch_0x801ebd68:
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x801ebd74_ChangeStateTo14
Function_0x801ebd74_ChangeStateTo14: # 0x801ebd74
    lui     $v1, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v1, $v1, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v1)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_14
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v1)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x5
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    addiu   $v0, $zero, 0x1
    lui     $at, 0x801d
    sw      $v0, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $at, 0x800d
    addiu   $t9, $zero, 0x2
    sw      $t9, 0x439c($at)
    lui     $at, 0x800e
    sw      $v0, -0x5758($at)
    lui     $at, 0x800d
    sw      $v0, 0x7ef0($at)
    lui     $at, 0x801d
    sw      $v0, -0x1c58($at)
    lui     $at, 0x801d
    addiu   $sp, $sp, 0xffe8
    sw      $v0, -0x1c54($at)
    sw      $ra, 0x14($sp)
    lui     $at, 0x801d
    sw      $zero, -0x1c50($at)
    addiu   $a0, $zero, 0x2
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $t0, 0x800e
    lh      $t0, -0x58d4($t0)
    addiu   $v0, $zero, 0x1
    lui     $at, 0x8022
    beqz    $t0, branch_0x801ebe40
    sw      $v0, 0x7a40($at)
    lui     $at, 0x800e
    sw      $zero, -0x58b0($at)
branch_0x801ebe40:
    addiu   $a0, $zero, 0xa
    jal     Function_0x800c1f94
    or      $a1, $zero, $zero
    jal     osViBlack
    addiu   $a0, $zero, 0x1
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801ebe64_ChangeStateTo34
Function_0x801ebe64_ChangeStateTo34: # 0x801ebe64
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_34
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x9
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    addiu   $v1, $zero, 0x1
    lui     $at, 0x801d
    sw      $v1, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $at, 0x800d
    addiu   $t9, $zero, 0x2
    sw      $t9, 0x439c($at)
    lui     $at, 0x800e
    sw      $v1, -0x5758($at)
    lui     $at, 0x801d
    addiu   $sp, $sp, 0xffc8
    sw      $v1, -0x1c58($at)
    lui     $t0, 0x801d
    lh      $t0, -0x1bac($t0)
    lui     $at, 0x801d
    sw      $v1, -0x1c54($at)
    lui     $at, 0x801d
    addiu   $v0, $zero, 0x3
    addiu   $a3, $zero, 0x2
    sw      $ra, 0x1c($sp)
    sw      $zero, -0x1c50($at)
    sw      $a3, 0x2c($sp)
    sw      $v0, 0x30($sp)
    sw      $zero, 0x24($sp)
    beqz    $t0, branch_0x801ebf40
    sw      $v1, 0x28($sp)
    lui     $t1, 0x800d
    lw      $t1, 0x465c($t1)
    lui     $t3, 0x800e
    addiu   $t5, $sp, 0x24
    sll     $t2, $t1, 2
    addu    $t3, $t3, $t2
    lw      $t3, -0x58d0($t3)
    sll     $t4, $t3, 2
    addu    $v0, $t4, $t5
    lw      $t6, 0x0($v0)
    addiu   $t7, $t6, 0x4
    sw      $t7, 0x0($v0)
branch_0x801ebf40:
    lw      $v0, 0x30($sp)
    lw      $a1, 0x24($sp)
    lw      $a2, 0x28($sp)
    lw      $a3, 0x2c($sp)
    addiu   $a0, $zero, 0x2
    jal     Function_0x80096700
    sw      $v0, 0x10($sp)
    addiu   $a0, $zero, 0x4
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    addiu   $v1, $zero, 0x1
    lui     $at, 0x8022
    sw      $v1, 0x7a40($at)
    jal     osViBlack
    addiu   $a0, $zero, 0x1
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop

.globl Function_0x801ebf9c_ChangeStateTo32
Function_0x801ebf9c_ChangeStateTo32: # 0x801ebf9c
    lui     $a0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $a0, $a0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($a0)
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe394
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $t6, 0x0($v1)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    addiu   $t7, $zero, MainState_32
    sw      $t7, 0x0($a0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x3
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    addiu   $v0, $zero, 0x1
    lui     $at, 0x801d
    sw      $v0, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $at, 0x800d
    addiu   $t9, $zero, 0x2
    sw      $t9, 0x439c($at)
    lui     $at, 0x800e
    sw      $v0, -0x5758($at)
    lui     $at, 0x801d
    sw      $v0, -0x1c58($at)
    lui     $at, 0x801d
    sw      $v0, -0x1c54($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c50($at)
    lw      $t0, 0x0($v1)
    addiu   $sp, $sp, 0xffe0
    addiu   $at, $zero, 0x64
    beq     $t0, $at, branch_0x801ec070
    sw      $ra, 0x1c($sp)
    addiu   $t1, $zero, 0x3
    sw      $t1, 0x10($sp)
    addiu   $a0, $zero, 0x2
    or      $a1, $zero, $zero
    or      $a2, $v0, $zero
    jal     Function_0x80096700
    addiu   $a3, $zero, 0x2
    addiu   $a0, $zero, 0x4
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    addiu   $v0, $zero, 0x1
branch_0x801ec070:
    lui     $at, 0x8022
    sw      $v0, 0x7a40($at)
    addiu   $a0, $zero, 0x3
    jal     Function_0x800c1f94
    or      $a1, $zero, $zero
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x801ec094_ChangeStateTo3c
Function_0x801ec094_ChangeStateTo3c: # 0x801ec094
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_3c
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x7
    sw      $t8, %lo(Unknown_0x801ce398)($at)
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
    addiu   $a0, $zero, 0x2
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $at, 0x800e
    sb      $zero, 0x4eb4($at)
    addiu   $a0, $zero, 0x9
    jal     Function_0x800c1f94
    or      $a1, $zero, $zero
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801ec13c_ChangeStateTo3e
Function_0x801ec13c_ChangeStateTo3e: # 0x801ec13c
    lui     $t2, %hi(Unknown_0x800da8a4_mainState)
    addiu   $t2, $t2, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($t2)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_3e
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($t2)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0xa
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    addiu   $a2, $zero, 0x1
    lui     $at, 0x801d
    sw      $a2, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    addiu   $t3, $zero, 0x3
    lui     $at, 0x800d
    sw      $t3, 0x439c($at)
    lui     $at, 0x800e
    sw      $a2, -0x5758($at)
    lui     $at, 0x801a
    lui     $t5, 0x800d
    lw      $t5, 0x465c($t5)
    sw      $a2, -0x7fb0($at)
    lui     $at, 0x800d
    addiu   $t9, $zero, 0x9
    sw      $t9, 0x7ef0($at)
    addiu   $a3, $zero, 0x2
    lui     $at, 0x801d
    sll     $t6, $t5, 2
    sw      $a3, -0x1c58($at)
    subu    $t6, $t6, $t5
    lui     $at, 0x801d
    sll     $t6, $t6, 3
    sw      $a3, -0x1c54($at)
    subu    $t6, $t6, $t5
    lui     $at, 0x801d
    sll     $t6, $t6, 3
    sw      $t3, -0x1c50($at)
    addu    $t6, $t6, $t5
    sll     $t6, $t6, 2
    lui     $t0, 0x800e
    lui     $t7, 0x8019
    subu    $t6, $t6, $t5
    addiu   $t0, $t0, 0xa6d0
    lui     $t1, 0x801d
    sll     $t6, $t6, 3
    addiu   $t7, $t7, 0x23f0
    addiu   $t1, $t1, 0xe454
    addu    $v0, $t6, $t7
    sh      $zero, 0x2($t1)
    lb      $t8, 0xb($t0)
    lb      $t9, 0xc($t0)
    lb      $t5, 0xd($t0)
    lh      $t6, 0x2($t1)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x1c($sp)
    sw      $zero, 0xb68($v0)
    sw      $t3, 0x10($sp)
    or      $a0, $a3, $zero
    or      $a1, $zero, $zero
    sw      $t8, 0xb6c($v0)
    sw      $t9, 0xb70($v0)
    sw      $t5, 0xb74($v0)
    jal     Function_0x80096700
    sh      $t6, 0x0($t1)
    addiu   $a0, $zero, 0x2
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lw      $ra, 0x1c($sp)
    addiu   $t7, $zero, 0x2
    lui     $at, 0x8022
    sw      $t7, 0x7a40($at)
    jr      $ra
    addiu   $sp, $sp, 0x20

.globl Function_0x801ec290_ChangeStateTo42
Function_0x801ec290_ChangeStateTo42: # 0x801ec290
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_42
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0xc
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    addiu   $a2, $zero, 0x1
    lui     $at, 0x801d
    sw      $a2, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $at, 0x800d
    addiu   $t9, $zero, 0x2
    addiu   $sp, $sp, 0xffe0
    sw      $t9, 0x439c($at)
    sw      $ra, 0x1c($sp)
    lui     $at, 0x800e
    addiu   $t0, $zero, 0x3
    sw      $a2, -0x5758($at)
    sw      $t0, 0x10($sp)
    addiu   $a0, $zero, 0x2
    or      $a1, $zero, $zero
    jal     Function_0x80096700
    addiu   $a3, $zero, 0x2
    addiu   $a0, $zero, 0x2
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x801ec344_ChangeStateTo44
Function_0x801ec344_ChangeStateTo44: # 0x801ec344
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_44
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0xe
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    addiu   $v1, $zero, 0x1
    lui     $at, 0x801d
    sw      $v1, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $at, 0x800d
    addiu   $t9, $zero, 0x2
    addiu   $sp, $sp, 0xffe8
    sw      $t9, 0x439c($at)
    sw      $ra, 0x14($sp)
    lui     $at, 0x800e
    sw      $v1, -0x5758($at)
    addiu   $a0, $zero, 0x2
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

.globl Function_0x801ec3e0_ChangeStateTo48
Function_0x801ec3e0_ChangeStateTo48: # 0x801ec3e0
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_48
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x14
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    addiu   $v1, $zero, 0x1
    lui     $at, 0x801d
    sw      $v1, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $at, 0x800d
    addiu   $t9, $zero, 0x2
    addiu   $sp, $sp, 0xffe8
    sw      $t9, 0x439c($at)
    sw      $ra, 0x14($sp)
    lui     $at, 0x800e
    sw      $v1, -0x5758($at)
    addiu   $a0, $zero, 0x2
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

.globl Function_0x801ec47c_ChangeStateTo46
Function_0x801ec47c_ChangeStateTo46: # 0x801ec47c
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_46
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x10
    sw      $t8, %lo(Unknown_0x801ce398)($at)
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
    addiu   $a0, $zero, 0x2
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

.globl Function_0x801ec510_ChangeStateTo40
Function_0x801ec510_ChangeStateTo40: # 0x801ec510
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_40
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0xb
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    lui     $at, 0x801d
    addiu   $t9, $zero, 0x1
    sw      $t9, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    addiu   $sp, $sp, 0xffe0
    sw      $zero, -0x5764($at)
    sw      $ra, 0x1c($sp)
    lui     $at, 0x800d
    addiu   $t0, $zero, 0x2
    addiu   $t1, $zero, 0x3
    sw      $t0, 0x439c($at)
    sw      $t1, 0x10($sp)
    addiu   $a0, $zero, 0x2
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1
    jal     Function_0x80096700
    addiu   $a3, $zero, 0x2
    addiu   $a0, $zero, 0x2
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x801ec5c0_ChangeStateTo50
Function_0x801ec5c0_ChangeStateTo50: # 0x801ec5c0
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $a0, 0x801d
    addiu   $a0, $a0, 0xe394
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $t6, 0x0($a0)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    addiu   $t7, $zero, MainState_50
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0xd
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    addiu   $a3, $zero, 0x1
    lui     $at, 0x801d
    sw      $a3, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $at, 0x800d
    addiu   $t9, $zero, 0x2
    sw      $t9, 0x439c($at)
    lui     $at, 0x800e
    sw      $a3, -0x5758($at)
    lui     $at, 0x801d
    sw      $a3, -0x1c58($at)
    lui     $at, 0x801d
    sw      $a3, -0x1c54($at)
    lui     $t0, 0x801d
    lw      $t0, -0x1c98($t0)
    lui     $at, 0x801d
    sw      $zero, -0x1c50($at)
    addiu   $sp, $sp, 0xffe8
    addiu   $at, $zero, 0x4
    sw      $ra, 0x14($sp)
    bne     $t0, $at, branch_0x801ec678
    or      $v1, $zero, $zero
    lw      $t1, 0x0($a0)
    addiu   $at, $zero, 0x43
    bne     $t1, $at, branch_0x801ec694
    nop
    b       branch_0x801ec694
    or      $v1, $a3, $zero
branch_0x801ec678:
    lw      $v0, 0x0($a0)
    addiu   $at, $zero, 0x32
    beq     $v0, $at, branch_0x801ec694
    addiu   $at, $zero, 0x39
    beq     $v0, $at, branch_0x801ec694
    nop
    or      $v1, $a3, $zero
branch_0x801ec694:
    beqz    $v1, branch_0x801ec6b0
    addiu   $a0, $zero, 0x4
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    jal     osViBlack
    addiu   $a0, $zero, 0x1
branch_0x801ec6b0:
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lw      $ra, 0x14($sp)
    addiu   $a3, $zero, 0x1
    lui     $at, 0x8022
    sw      $a3, 0x7a40($at)
    jr      $ra
    addiu   $sp, $sp, 0x18

.globl Function_0x801ec6d4_ChangeStateTo5a
Function_0x801ec6d4_ChangeStateTo5a: # 0x801ec6d4
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_5a
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0xf
    sw      $t8, %lo(Unknown_0x801ce398)($at)
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
    jal     Function_0x800c1f94
    or      $a1, $zero, $zero
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801ec758_ChangeStateTo64
Function_0x801ec758_ChangeStateTo64: # 0x801ec758
    lui     $v1, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v1, $v1, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v1)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_64
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v1)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x6
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    addiu   $t0, $zero, 0x1
    lui     $at, 0x801d
    sw      $t0, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $at, 0x800d
    addiu   $t9, $zero, 0x2
    sw      $t9, 0x439c($at)
    lui     $at, 0x800e
    sw      $t0, -0x5758($at)
    lui     $at, 0x801d
    sw      $t0, -0x1c58($at)
    lui     $v0, 0x801d
    lw      $v0, -0x1c98($v0)
    lui     $at, 0x801d
    sw      $t0, -0x1c54($at)
    addiu   $sp, $sp, 0xffe0
    lui     $at, 0x801d
    sw      $ra, 0x1c($sp)
    beqz    $v0, branch_0x801ec7f4
    sw      $zero, -0x1c50($at)
    addiu   $at, $zero, 0xb
    bne     $v0, $at, branch_0x801ec810
branch_0x801ec7f4:
    addiu   $t1, $zero, 0x3
    sw      $t1, 0x10($sp)
    addiu   $a0, $zero, 0x2
    or      $a1, $zero, $zero
    or      $a2, $t0, $zero
    jal     Function_0x80096700
    addiu   $a3, $zero, 0x2
branch_0x801ec810:
    lui     $v0, 0x801d
    lw      $v0, -0x1c6c($v0)
    addiu   $at, $zero, 0x67
    addiu   $a0, $zero, 0x7
    bne     $v0, $at, branch_0x801ec838
    addiu   $a1, $zero, 0x14
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    b       branch_0x801ec854
    or      $a0, $zero, $zero
branch_0x801ec838:
    addiu   $at, $zero, 0x2a
    bne     $v0, $at, branch_0x801ec850
    addiu   $a0, $zero, 0x4
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
branch_0x801ec850:
    or      $a0, $zero, $zero
branch_0x801ec854:
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    addiu   $t2, $zero, 0x1
    lui     $at, 0x8022
    sw      $t2, 0x7a40($at)
    addiu   $a0, $zero, 0xc
    jal     Function_0x800c1f94
    or      $a1, $zero, $zero
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x801ec884_ChangeStateTo5
Function_0x801ec884_ChangeStateTo5: # 0x801ec884
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_5
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
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
    addiu   $sp, $sp, 0xffe8
    sw      $t0, -0x5764($at)
    sw      $ra, 0x14($sp)
    lui     $at, 0x800d
    addiu   $t1, $zero, 0x2
    sw      $t1, 0x439c($at)
    or      $a0, $zero, $zero
    or      $a1, $zero, $zero
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    addiu   $a0, $zero, 0x8
    jal     Function_0x800c1f94
    or      $a1, $zero, $zero
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801ec928_ChangeStateTo66
Function_0x801ec928_ChangeStateTo66: # 0x801ec928
    lui     $a0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $a0, $a0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($a0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_66
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($a0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x15
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    addiu   $v0, $zero, 0x1
    lui     $at, 0x801d
    sw      $v0, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    addiu   $v1, $zero, 0x3
    lui     $at, 0x800d
    sw      $v1, 0x439c($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c80($at)
    lui     $at, 0x800e
    sw      $v0, -0x5758($at)
    lui     $at, 0x801a
    addiu   $t9, $zero, 0x4
    sw      $t9, -0x7fb0($at)
    lui     $at, 0x800d
    addiu   $t5, $zero, 0xa
    sw      $t5, 0x4730($at)
    lui     $at, 0x800d
    addiu   $t6, $zero, 0x5
    sw      $t6, 0x7ef4($at)
    lui     $at, 0x801d
    lui     $t4, 0x800d
    sw      $v1, -0x1b78($at)
    addiu   $t4, $t4, 0x7ef0
    addiu   $t7, $zero, 0x7
    sw      $t7, 0x0($t4)
    lui     $at, 0x800d
    sw      $v0, 0x7ef8($at)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0x2
    lui     $t0, 0x800e
    lw      $t0, -0x58d0($t0)
    sw      $t8, -0x1c58($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c54($at)
    addiu   $a3, $zero, 0xc
    multu   $t0, $a3
    lui     $at, 0x801d
    sw      $v1, -0x1c50($at)
    lui     $at, 0x8019
    sw      $t0, 0x2f58($at)
    lw      $t9, 0x0($t4)
    lui     $t6, 0x800e
    addiu   $t6, $t6, 0x9424
    sll     $t5, $t9, 2
    subu    $t5, $t5, $t9
    sll     $t5, $t5, 4
    mflo    $t7
    lui     $t1, 0x800e
    addu    $v0, $t5, $t6
    lw      $t1, -0x58cc($t1)
    addu    $v1, $v0, $t7
    lw      $t8, 0x0($v1)
    multu   $t1, $a3
    lui     $at, 0x8019
    sw      $t8, 0x2f5c($at)
    lw      $t9, 0x4($v1)
    lui     $at, 0x8019
    lui     $t2, 0x800e
    sw      $t9, 0x2f60($at)
    lw      $t5, 0x8($v1)
    lui     $at, 0x8019
    lw      $t2, -0x58c8($t2)
    sw      $t5, 0x2f64($at)
    mflo    $t6
    lui     $at, 0x8019
    addu    $a0, $v0, $t6
    sw      $t1, 0x4670($at)
    lw      $t7, 0x0($a0)
    multu   $t2, $a3
    addiu   $sp, $sp, 0xffe0
    lui     $at, 0x8019
    sw      $ra, 0x1c($sp)
    sw      $t7, 0x4674($at)
    lw      $t8, 0x4($a0)
    lui     $at, 0x8019
    lui     $t3, 0x800e
    sw      $t8, 0x4678($at)
    lw      $t9, 0x8($a0)
    lui     $at, 0x8019
    mflo    $t5
    sw      $t9, 0x467c($at)
    lui     $at, 0x8019
    lw      $t3, -0x58c4($t3)
    addu    $a1, $v0, $t5
    sw      $t2, 0x5d88($at)
    lw      $t6, 0x0($a1)
    multu   $t3, $a3
    lui     $at, 0x8019
    sw      $t6, 0x5d8c($at)
    lw      $t7, 0x4($a1)
    lui     $at, 0x8019
    addiu   $a0, $zero, 0x2
    sw      $t7, 0x5d90($at)
    lw      $t8, 0x8($a1)
    lui     $at, 0x8019
    sw      $t8, 0x5d94($at)
    lui     $at, 0x8019
    mflo    $t9
    addu    $a2, $v0, $t9
    sw      $t3, 0x74a0($at)
    lw      $t5, 0x0($a2)
    lui     $at, 0x8019
    lui     $t8, 0x800d
    sw      $t5, 0x74a4($at)
    lw      $t6, 0x4($a2)
    lui     $at, 0x8019
    lw      $t8, 0x465c($t8)
    sw      $t6, 0x74a8($at)
    lw      $t7, 0x8($a2)
    lui     $t6, 0x801d
    lh      $t6, -0x1bac($t6)
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa730
    lui     $at, 0x8019
    sll     $t9, $t8, 2
    addu    $t5, $v0, $t9
    sw      $t7, 0x74ac($at)
    beqz    $t6, branch_0x801ecb50
    lw      $a1, 0x0($t5)
    addiu   $a1, $a1, 0x4
branch_0x801ecb50:
    lw      $t7, 0xc($v0)
    lw      $a2, 0x4($v0)
    lw      $a3, 0x8($v0)
    jal     Function_0x80096700
    sw      $t7, 0x10($sp)
    lui     $a0, 0x806
    addiu   $a1, $zero, 0x3
    jal     Function_0x800965ec
    addiu   $a2, $zero, 0xffff
    addiu   $a0, $zero, 0x7
    addiu   $a1, $zero, 0xa
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $t9, 0x800d
    lw      $t9, 0x465c($t9)
    lui     $a1, 0x801c
    addiu   $t8, $zero, 0x8
    sll     $t5, $t9, 3
    subu    $t5, $t5, $t9
    sll     $t5, $t5, 4
    subu    $t5, $t5, $t9
    sll     $t5, $t5, 3
    addu    $a1, $a1, $t5
    lw      $a1, 0x29d0($a1)
    lui     $at, 0x8022
    sw      $t8, 0x7a40($at)
    addiu   $a0, $zero, 0xb
    jal     Function_0x800c1f94
    addiu   $a1, $a1, 0x1
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x801ecbe0_ChangeStateTo36
Function_0x801ecbe0_ChangeStateTo36: # 0x801ecbe0
    lui     $v1, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v1, $v1, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v1)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_36
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v1)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x12
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    addiu   $v0, $zero, 0x1
    lui     $at, 0x801d
    sw      $v0, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $at, 0x800d
    addiu   $t9, $zero, 0x2
    addiu   $sp, $sp, 0xffe8
    sw      $t9, 0x439c($at)
    sw      $ra, 0x14($sp)
    lui     $at, 0x800e
    sw      $v0, -0x5758($at)
    addiu   $a0, $zero, 0x4
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    addiu   $v0, $zero, 0x1
    lui     $at, 0x801d
    sw      $v0, -0x1c58($at)
    lui     $at, 0x801d
    sw      $v0, -0x1c54($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c50($at)
    lui     $at, 0x8022
    sw      $v0, 0x7a40($at)
    jal     osViBlack
    addiu   $a0, $zero, 0x1
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801ecca8_ChangeStateTo38
Function_0x801ecca8_ChangeStateTo38: # 0x801ecca8
    lui     $v1, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v1, $v1, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v1)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_38
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v1)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x16
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    addiu   $a2, $zero, 0x1
    lui     $at, 0x801d
    sw      $a2, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $at, 0x800d
    addiu   $t9, $zero, 0x2
    sw      $t9, 0x439c($at)
    lui     $at, 0x800e
    sw      $a2, -0x5758($at)
    lui     $at, 0x801d
    sw      $a2, -0x1c58($at)
    lui     $at, 0x801d
    addiu   $sp, $sp, 0xffe0
    sw      $a2, -0x1c54($at)
    sw      $ra, 0x1c($sp)
    lui     $at, 0x801d
    addiu   $t0, $zero, 0x3
    sw      $zero, -0x1c50($at)
    sw      $t0, 0x10($sp)
    addiu   $a0, $zero, 0x2
    or      $a1, $zero, $zero
    jal     Function_0x80096700
    addiu   $a3, $zero, 0x2
    addiu   $a0, $zero, 0x4
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    addiu   $t1, $zero, 0x1
    lui     $at, 0x8022
    sw      $t1, 0x7a40($at)
    addiu   $a0, $zero, 0x3
    jal     Function_0x800c1f94
    or      $a1, $zero, $zero
    jal     osViBlack
    addiu   $a0, $zero, 0x1
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x801ecd94_ChangeStateTo39
Function_0x801ecd94_ChangeStateTo39: # 0x801ecd94
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_39
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390)
    sw      $zero, %lo(Unknown_0x801ce390)($at)
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x17
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    addiu   $v1, $zero, 0x1
    lui     $at, 0x801d
    sw      $v1, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    sw      $zero, -0x5764($at)
    lui     $at, 0x800d
    addiu   $t9, $zero, 0x2
    sw      $t9, 0x439c($at)
    lui     $at, 0x800e
    sw      $v1, -0x5758($at)
    lui     $at, 0x801d
    sw      $v1, -0x1c58($at)
    lui     $at, 0x801d
    sw      $v1, -0x1c54($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c50($at)
    lui     $at, 0x8022
    jr      $ra
    sw      $v1, 0x7a40($at)

.globl Function_0x801ece20
Function_0x801ece20: # 0x801ece20
    lui     $at, 0xbf80
    mtc1    $at, $a0
    lui     $at, 0x3f80
    c.lt.s $f12, $f4
    nop
    bc1tl   branch_0x801ece58
    mtc1    $zero, $zero
    mtc1    $at, $a2
    nop
    c.lt.s $f6, $f12
    nop
    bc1fl   branch_0x801ece64
    mtc1    $zero, $t0
    mtc1    $zero, $zero
branch_0x801ece58:
    jr      $ra
    nop

.globl Function_0x801ece60
Function_0x801ece60: # 0x801ece60
    mtc1    $zero, $t0
branch_0x801ece64:
    lui     $at, 0x8022
    c.le.s $f8, $f12
    nop
    bc1f    branch_0x801ecea4
    nop
    lui     $at, 0x8022
    lwc1    $f10, 0x74d0($at)
    lui     $at, 0x8022
    mul.s   $f16, $f12, $f10
    trunc.w.s   $f18, $f16
    mfc1    $t7, $s2
    nop
    sll     $t8, $t7, 2
    addu    $at, $at, $t8
    jr      $ra
    lwc1    $f0, 0x6cc8($at)
branch_0x801ecea4:
    lwc1    $f6, 0x74d4($at)
    neg.s   $f4, $f12
    lui     $at, 0x8022
    mul.s   $f8, $f4, $f6
    trunc.w.s   $f10, $f8
    mfc1    $t0, $t2
    nop
    sll     $t1, $t0, 2
    addu    $at, $at, $t1
    lwc1    $f16, 0x6cc8($at)
    lui     $at, 0x4334
    mtc1    $at, $s2
    nop
    sub.s   $f0, $f18, $f16
    jr      $ra
    nop

.globl Function_0x801ecee4
Function_0x801ecee4: # 0x801ecee4
    mtc1    $zero, $v0
    addiu   $sp, $sp, 0xffd8
    sdc1    $20, 0x10($29)
    c.eq.s $f14, $f2
    mov.s   $f20, $f12
    sw      $ra, 0x1c($sp)
    or      $v0, $zero, $zero
    bc1f    branch_0x801ecf20
    or      $v1, $zero, $zero
    c.eq.s $f12, $f2
    nop
    bc1fl   branch_0x801ecf24
    c.lt.s $f14, $f2
    b       branch_0x801ed05c
    mov.s   $f0, $f2
branch_0x801ecf20:
    c.lt.s $f14, $f2
branch_0x801ecf24:
    nop
    bc1fl   branch_0x801ecf3c
    c.lt.s $f20, $f2
    neg.s   $f14, $f14
    addiu   $v0, $zero, 0x1
    c.lt.s $f20, $f2
branch_0x801ecf3c:
    mul.s   $f4, $f14, $f14
    bc1f    branch_0x801ecf50
    nop
    neg.s   $f20, $f20
    addiu   $v1, $zero, 0x1
branch_0x801ecf50:
    mul.s   $f6, $f20, $f20
    sw      $v0, 0x24($sp)
    sw      $v1, 0x20($sp)
    swc1    $f14, 0x2c($sp)
    jal     sqrtf
    add.s   $f12, $f4, $f6
    lwc1    $f14, 0x2c($sp)
    lw      $v0, 0x24($sp)
    lw      $v1, 0x20($sp)
    c.le.s $f14, $f20
    nop
    bc1fl   branch_0x801ecfb8
    div.s   $f4, $f20, $f0
    div.s   $f8, $f14, $f0
    lui     $at, 0x8022
    lwc1    $f10, 0x74d8($at)
    lui     $at, 0x8022
    mul.s   $f16, $f8, $f10
    trunc.w.s   $f18, $f16
    mfc1    $t7, $s2
    nop
    sll     $t8, $t7, 2
    addu    $at, $at, $t8
    b       branch_0x801ecff0
    lwc1    $f2, 0x6cc8($at)

.globl Function_0x801ecfb4
Function_0x801ecfb4: # 0x801ecfb4
    div.s   $f4, $f20, $f0
branch_0x801ecfb8:
    lui     $at, 0x8022
    lwc1    $f6, 0x74dc($at)
    lui     $at, 0x8022
    mul.s   $f8, $f4, $f6
    trunc.w.s   $f10, $f8
    mfc1    $t0, $t2
    nop
    sll     $t1, $t0, 2
    addu    $at, $at, $t1
    lwc1    $f16, 0x6cc8($at)
    lui     $at, 0x42b4
    mtc1    $at, $s2
    nop
    sub.s   $f2, $f18, $f16
branch_0x801ecff0:
    beqz    $v0, branch_0x801ed014
    nop
    bnez    $v1, branch_0x801ed014
    lui     $at, 0x8022
    ldc1    $4, 0x74e0($1)
    cvt.d.s $f6, $f2
    sub.d   $f8, $f4, $f6
    b       branch_0x801ed058
    cvt.s.d $f2, $f8
branch_0x801ed014:
    beqz    $v0, branch_0x801ed038
    nop
    beqz    $v1, branch_0x801ed038
    lui     $at, 0x8022
    ldc1    $18, 0x74e8($1)
    cvt.d.s $f10, $f2
    add.d   $f16, $f10, $f18
    b       branch_0x801ed058
    cvt.s.d $f2, $f16
branch_0x801ed038:
    bnezl   $v0, branch_0x801ed05c
    mov.s   $f0, $f2
    beqz    $v1, branch_0x801ed058
    lui     $at, 0x8022
    ldc1    $4, 0x74f0($1)
    cvt.d.s $f6, $f2
    sub.d   $f8, $f4, $f6
    cvt.s.d $f2, $f8
branch_0x801ed058:
    mov.s   $f0, $f2
branch_0x801ed05c:
    lw      $ra, 0x1c($sp)
    ldc1    $20, 0x10($29)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x801ed070
Function_0x801ed070: # 0x801ed070
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    jal     osGetTime
    nop
    lw      $ra, 0x14($sp)
    lui     $at, 0x8022
    sh      $v1, 0x6cc0($at)
    jr      $ra
    addiu   $sp, $sp, 0x18

.globl Function_0x801ed094
Function_0x801ed094: # 0x801ed094
    lui     $a1, 0x8022
    addiu   $a1, $a1, 0x6cc0
    lhu     $v1, 0x0($a1)
    sll     $t6, $v1, 2
    addu    $t7, $t6, $v1
    addiu   $t8, $t7, 0x1
    andi    $t9, $t8, 0xffff
    multu   $t9, $a0
    sh      $t8, 0x0($a1)
    mflo    $v0
    sra     $t0, $v0, 16
    jr      $ra
    or      $v0, $t0, $zero

.globl Function_0x801ed0c8
Function_0x801ed0c8: # 0x801ed0c8
    lui     $v1, 0x8022
    addiu   $v1, $v1, 0x6cc0
    lhu     $v0, 0x0($v1)
    lui     $at, 0x4f80
    sll     $t6, $v0, 2
    addu    $t7, $t6, $v0
    addiu   $t8, $t7, 0x1
    andi    $t9, $t8, 0xffff
    mtc1    $t9, $a0
    sh      $t8, 0x0($v1)
    bgez    $t9, branch_0x801ed104
    cvt.s.w $f6, $f4
    mtc1    $at, $t0
    nop
    add.s   $f6, $f6, $f8
branch_0x801ed104:
    mul.s   $f10, $f6, $f12
    lui     $at, 0x4780
    mtc1    $at, $s0
    jr      $ra
    div.s   $f0, $f10, $f16

.globl Function_0x801ed118
Function_0x801ed118: # 0x801ed118
    addiu   $v0, $zero, 0x168
    div     $zero, $a0, $v0
    bnez    $v0, branch_0x801ed12c
    nop
    break   0x7
branch_0x801ed12c:
    addiu   $at, $zero, 0xffff
    bne     $v0, $at, branch_0x801ed144
    lui     $at, 0x8000
    bne     $a0, $at, branch_0x801ed144
    nop
    break   0x6
branch_0x801ed144:
    mfhi    $a0
    addiu   $v1, $a0, 0x168
    bltz    $a0, branch_0x801ed15c
    nop
    b       branch_0x801ed15c
    or      $v1, $a0, $zero
branch_0x801ed15c:
    div     $zero, $a1, $v0
    or      $a0, $v1, $zero
    bnez    $v0, branch_0x801ed170
    nop
    break   0x7
branch_0x801ed170:
    addiu   $at, $zero, 0xffff
    bne     $v0, $at, branch_0x801ed188
    lui     $at, 0x8000
    bne     $a1, $at, branch_0x801ed188
    nop
    break   0x6
branch_0x801ed188:
    mfhi    $a1
    addiu   $v1, $a1, 0x168
    bltz    $a1, branch_0x801ed1a0
    nop
    b       branch_0x801ed1a0
    or      $v1, $a1, $zero
branch_0x801ed1a0:
    subu    $a0, $a0, $v1
    bgezl   $a0, branch_0x801ed1b4
    slti    $at, $a0, 0xb5
    subu    $a0, $zero, $a0
    slti    $at, $a0, 0xb5
branch_0x801ed1b4:
    beqz    $at, branch_0x801ed1c4
    subu    $v1, $v0, $a0
    jr      $ra
    or      $v0, $a0, $zero
branch_0x801ed1c4:
    jr      $ra
    or      $v0, $v1, $zero

.globl Function_0x801ed1cc
Function_0x801ed1cc: # 0x801ed1cc
    addiu   $v0, $zero, 0x168
    div     $zero, $a0, $v0
    bnez    $v0, branch_0x801ed1e0
    nop
    break   0x7
branch_0x801ed1e0:
    addiu   $at, $zero, 0xffff
    bne     $v0, $at, branch_0x801ed1f8
    lui     $at, 0x8000
    bne     $a0, $at, branch_0x801ed1f8
    nop
    break   0x6
branch_0x801ed1f8:
    mfhi    $a0
    addiu   $v1, $a0, 0x168
    bltz    $a0, branch_0x801ed210
    nop
    b       branch_0x801ed210
    or      $v1, $a0, $zero
branch_0x801ed210:
    div     $zero, $a1, $v0
    or      $a0, $v1, $zero
    bnez    $v0, branch_0x801ed224
    nop
    break   0x7
branch_0x801ed224:
    addiu   $at, $zero, 0xffff
    bne     $v0, $at, branch_0x801ed23c
    lui     $at, 0x8000
    bne     $a1, $at, branch_0x801ed23c
    nop
    break   0x6
branch_0x801ed23c:
    mfhi    $a1
    addiu   $v1, $a1, 0x168
    bltz    $a1, branch_0x801ed254
    nop
    b       branch_0x801ed254
    or      $v1, $a1, $zero
branch_0x801ed254:
    subu    $a0, $a0, $v1
    bltz    $a0, branch_0x801ed268
    addiu   $v1, $a0, 0x168
    jr      $ra
    or      $v0, $a0, $zero
branch_0x801ed268:
    jr      $ra
    or      $v0, $v1, $zero

.globl Function_0x801ed270
Function_0x801ed270: # 0x801ed270
    addiu   $v0, $zero, 0x168
    div     $zero, $a0, $v0
    bnez    $v0, branch_0x801ed284
    nop
    break   0x7
branch_0x801ed284:
    addiu   $at, $zero, 0xffff
    bne     $v0, $at, branch_0x801ed29c
    lui     $at, 0x8000
    bne     $a0, $at, branch_0x801ed29c
    nop
    break   0x6
branch_0x801ed29c:
    mfhi    $a0
    addiu   $v1, $a0, 0x168
    bltz    $a0, branch_0x801ed2b4
    nop
    b       branch_0x801ed2b4
    or      $v1, $a0, $zero
branch_0x801ed2b4:
    div     $zero, $a1, $v0
    or      $a0, $v1, $zero
    bnez    $v0, branch_0x801ed2c8
    nop
    break   0x7
branch_0x801ed2c8:
    addiu   $at, $zero, 0xffff
    bne     $v0, $at, branch_0x801ed2e0
    lui     $at, 0x8000
    bne     $a1, $at, branch_0x801ed2e0
    nop
    break   0x6
branch_0x801ed2e0:
    mfhi    $a1
    addiu   $v1, $a1, 0x168
    bltz    $a1, branch_0x801ed2f8
    nop
    b       branch_0x801ed2f8
    or      $v1, $a1, $zero
branch_0x801ed2f8:
    bnel    $a0, $v1, branch_0x801ed30c
    subu    $a0, $a0, $v1
    jr      $ra
    or      $v0, $zero, $zero

.globl Function_0x801ed308
Function_0x801ed308: # 0x801ed308
    subu    $a0, $a0, $v1
branch_0x801ed30c:
    bgez    $a0, branch_0x801ed318
    addiu   $v1, $zero, 0xffff
    addiu   $a0, $a0, 0x168
branch_0x801ed318:
    slti    $at, $a0, 0xb4
    beqz    $at, branch_0x801ed32c
    nop
    b       branch_0x801ed32c
    addiu   $v1, $zero, 0x1
branch_0x801ed32c:
    or      $v0, $v1, $zero
    jr      $ra
    nop

.globl Function_0x801ed338
Function_0x801ed338: # 0x801ed338
    addiu   $at, $zero, 0x168
    div     $zero, $a0, $at
    mfhi    $t6
    or      $a0, $t6, $zero
    bltz    $t6, branch_0x801ed358
    addiu   $v0, $a0, 0x168
    b       branch_0x801ed358
    or      $v0, $t6, $zero
branch_0x801ed358:
    slti    $at, $v0, 0x10f
    bnez    $at, branch_0x801ed370
    or      $a0, $v0, $zero
    addiu   $a0, $v0, 0xfe98
    jr      $ra
    or      $v0, $a0, $zero
branch_0x801ed370:
    slti    $at, $v0, 0x5b
    bnez    $at, branch_0x801ed380
    addiu   $t7, $zero, 0xb4
    subu    $a0, $t7, $v0
branch_0x801ed380:
    jr      $ra
    or      $v0, $a0, $zero

.globl Function_0x801ed388
Function_0x801ed388: # 0x801ed388
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    jal     Function_0x801ed338
    sw      $a1, 0x1c($sp)
    lw      $a0, 0x1c($sp)
    jal     Function_0x801ed338
    sw      $v0, 0x18($sp)
    lw      $a2, 0x18($sp)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    subu    $a2, $a2, $v0
    bltz    $a2, branch_0x801ed3c4
    subu    $v1, $zero, $a2
    b       branch_0x801ed3c4
    or      $v1, $a2, $zero
branch_0x801ed3c4:
    jr      $ra
    or      $v0, $v1, $zero

.globl Function_0x801ed3cc
Function_0x801ed3cc: # 0x801ed3cc
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    jal     Function_0x801ed338
    sw      $a1, 0x1c($sp)
    lw      $a0, 0x1c($sp)
    jal     Function_0x801ed338
    sw      $v0, 0x18($sp)
    lw      $a2, 0x18($sp)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    subu    $a2, $a2, $v0
    bnez    $a2, branch_0x801ed408
    nop
    b       branch_0x801ed41c
    or      $v1, $zero, $zero
branch_0x801ed408:
    blez    $a2, branch_0x801ed418
    addiu   $v0, $zero, 0xffff
    b       branch_0x801ed418
    addiu   $v0, $zero, 0x1
branch_0x801ed418:
    or      $v1, $v0, $zero
branch_0x801ed41c:
    jr      $ra
    or      $v0, $v1, $zero

.globl Function_0x801ed424
Function_0x801ed424: # 0x801ed424
    lui     $at, 0x43b4
    mtc1    $at, $zero
    mtc1    $zero, $s0
    div.s   $f4, $f12, $f0
    trunc.w.s   $f6, $f4
    mfc1    $t7, $a2
    nop
    sll     $t8, $t7, 2
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 2
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 2
    addu    $t8, $t8, $t7
    sll     $t8, $t8, 3
    mtc1    $t8, $t0
    nop
    cvt.s.w $f10, $f8
    sub.s   $f12, $f12, $f10
    c.le.s $f16, $f12
    nop
    bc1fl   branch_0x801ed48c
    add.s   $f2, $f12, $f0
    mov.s   $f2, $f12
    jr      $ra
    mov.s   $f0, $f12

.globl Function_0x801ed488
Function_0x801ed488: # 0x801ed488
    add.s   $f2, $f12, $f0
branch_0x801ed48c:
    jr      $ra
    mov.s   $f0, $f2

.globl Function_0x801ed494
Function_0x801ed494: # 0x801ed494
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x1c($sp)
    sdc1    $20, 0x10($29)
    jal     Function_0x801ed424
    swc1    $f14, 0x24($sp)
    mov.s   $f20, $f0
    jal     Function_0x801ed424
    lwc1    $f12, 0x24($sp)
    sub.s   $f20, $f20, $f0
    mtc1    $zero, $a0
    lui     $at, 0x4334
    mtc1    $at, $a2
    c.le.s $f4, $f20
    lui     $at, 0x43b4
    lw      $ra, 0x1c($sp)
    bc1tl   branch_0x801ed4e0
    c.le.s $f20, $f6
    neg.s   $f20, $f20
    c.le.s $f20, $f6
branch_0x801ed4e0:
    nop
    bc1fl   branch_0x801ed4f8
    mtc1    $at, $t0
    b       branch_0x801ed500
    mov.s   $f2, $f20

.globl Function_0x801ed4f4
Function_0x801ed4f4: # 0x801ed4f4
    mtc1    $at, $t0
branch_0x801ed4f8:
    nop
    sub.s   $f2, $f8, $f20
branch_0x801ed500:
    ldc1    $20, 0x10($29)
    addiu   $sp, $sp, 0x20
    jr      $ra
    mov.s   $f0, $f2

.globl Function_0x801ed510
Function_0x801ed510: # 0x801ed510
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x1c($sp)
    sdc1    $20, 0x10($29)
    jal     Function_0x801ed424
    swc1    $f14, 0x24($sp)
    mov.s   $f20, $f0
    jal     Function_0x801ed424
    lwc1    $f12, 0x24($sp)
    sub.s   $f20, $f20, $f0
    mtc1    $zero, $a0
    lw      $ra, 0x1c($sp)
    lui     $at, 0x43b4
    c.le.s $f4, $f20
    nop
    bc1fl   branch_0x801ed55c
    mtc1    $at, $a2
    b       branch_0x801ed564
    mov.s   $f2, $f20

.globl Function_0x801ed558
Function_0x801ed558: # 0x801ed558
    mtc1    $at, $a2
branch_0x801ed55c:
    nop
    add.s   $f2, $f20, $f6
branch_0x801ed564:
    ldc1    $20, 0x10($29)
    addiu   $sp, $sp, 0x20
    jr      $ra
    mov.s   $f0, $f2

.globl Function_0x801ed574
Function_0x801ed574: # 0x801ed574
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x1c($sp)
    sdc1    $20, 0x10($29)
    jal     Function_0x801ed424
    swc1    $f14, 0x24($sp)
    mov.s   $f20, $f0
    jal     Function_0x801ed424
    lwc1    $f12, 0x24($sp)
    c.eq.s $f20, $f0
    lw      $ra, 0x1c($sp)
    bc1fl   branch_0x801ed5b0
    sub.s   $f20, $f20, $f0
    b       branch_0x801ed600
    or      $v0, $zero, $zero

.globl Function_0x801ed5ac
Function_0x801ed5ac: # 0x801ed5ac
    sub.s   $f20, $f20, $f0
branch_0x801ed5b0:
    mtc1    $zero, $a0
    lui     $at, 0x43b4
    addiu   $v1, $zero, 0xffff
    c.le.s $f4, $f20
    nop
    bc1tl   branch_0x801ed5dc
    lui     $at, 0x4334
    mtc1    $at, $a2
    nop
    add.s   $f20, $f20, $f6
    lui     $at, 0x4334
branch_0x801ed5dc:
    mtc1    $at, $t0
    nop
    c.lt.s $f20, $f8
    nop
    bc1f    branch_0x801ed5fc
    nop
    b       branch_0x801ed5fc
    addiu   $v1, $zero, 0x1
branch_0x801ed5fc:
    or      $v0, $v1, $zero
branch_0x801ed600:
    ldc1    $20, 0x10($29)
    jr      $ra
    addiu   $sp, $sp, 0x20

.globl Function_0x801ed60c
Function_0x801ed60c: # 0x801ed60c
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    jal     Function_0x801ed424
    nop
    lui     $at, 0x4387
    mtc1    $at, $a0
    lw      $ra, 0x14($sp)
    mov.s   $f12, $f0
    c.lt.s $f4, $f0
    lui     $at, 0x42b4
    addiu   $sp, $sp, 0x18
    bc1fl   branch_0x801ed654
    mtc1    $at, $t0
    lui     $at, 0x43b4
    mtc1    $at, $a2
    b       branch_0x801ed674
    sub.s   $f12, $f0, $f6

.globl Function_0x801ed650
Function_0x801ed650: # 0x801ed650
    mtc1    $at, $t0
branch_0x801ed654:
    lui     $at, 0x4334
    c.lt.s $f8, $f0
    nop
    bc1f    branch_0x801ed674
    nop
    mtc1    $at, $t2
    nop
    sub.s   $f12, $f10, $f0
branch_0x801ed674:
    jr      $ra
    mov.s   $f0, $f12

.globl Function_0x801ed67c
Function_0x801ed67c: # 0x801ed67c
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x1c($sp)
    sdc1    $20, 0x10($29)
    jal     Function_0x801ed60c
    swc1    $f14, 0x24($sp)
    mov.s   $f20, $f0
    jal     Function_0x801ed60c
    lwc1    $f12, 0x24($sp)
    sub.s   $f20, $f20, $f0
    mtc1    $zero, $a0
    lw      $ra, 0x1c($sp)
    c.le.s $f4, $f20
    nop
    bc1fl   branch_0x801ed6c4
    neg.s   $f2, $f20
    b       branch_0x801ed6c4
    mov.s   $f2, $f20

.globl Function_0x801ed6c0
Function_0x801ed6c0: # 0x801ed6c0
    neg.s   $f2, $f20
branch_0x801ed6c4:
    ldc1    $20, 0x10($29)
    addiu   $sp, $sp, 0x20
    jr      $ra
    mov.s   $f0, $f2

.globl Function_0x801ed6d4
Function_0x801ed6d4: # 0x801ed6d4
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x1c($sp)
    sdc1    $20, 0x10($29)
    jal     Function_0x801ed60c
    swc1    $f14, 0x24($sp)
    mov.s   $f20, $f0
    jal     Function_0x801ed60c
    lwc1    $f12, 0x24($sp)
    sub.s   $f20, $f20, $f0
    mtc1    $zero, $v0
    lw      $ra, 0x1c($sp)
    c.eq.s $f20, $f2
    nop
    bc1fl   branch_0x801ed71c
    c.lt.s $f2, $f20
    b       branch_0x801ed734
    or      $v1, $zero, $zero

.globl Function_0x801ed718
Function_0x801ed718: # 0x801ed718
    c.lt.s $f2, $f20
branch_0x801ed71c:
    addiu   $v0, $zero, 0xffff
    bc1f    branch_0x801ed730
    nop
    b       branch_0x801ed730
    addiu   $v0, $zero, 0x1
branch_0x801ed730:
    or      $v1, $v0, $zero
branch_0x801ed734:
    ldc1    $20, 0x10($29)
    addiu   $sp, $sp, 0x20
    jr      $ra
    or      $v0, $v1, $zero

.globl Function_0x801ed744
Function_0x801ed744: # 0x801ed744
    addiu   $sp, $sp, 0xffe0
    swc1    $f12, 0x20($sp)
    lwc1    $f4, 0x20($sp)
    sw      $a2, 0x28($sp)
    sw      $ra, 0x14($sp)
    mul.s   $f6, $f4, $f4
    lwc1    $f4, 0x28($sp)
    sw      $a3, 0x2c($sp)
    mul.s   $f8, $f14, $f14
    swc1    $f14, 0x24($sp)
    add.s   $f10, $f6, $f8
    mul.s   $f6, $f4, $f4
    jal     sqrtf
    add.s   $f12, $f10, $f6
    lwc1    $f18, 0x2c($sp)
    lwc1    $f14, 0x30($sp)
    lwc1    $f16, 0x34($sp)
    mul.s   $f8, $f18, $f18
    swc1    $f0, 0x1c($sp)
    mul.s   $f4, $f14, $f14
    add.s   $f10, $f8, $f4
    mul.s   $f6, $f16, $f16
    jal     sqrtf
    add.s   $f12, $f10, $f6
    lwc1    $f2, 0x1c($sp)
    mtc1    $zero, $t6
    lw      $ra, 0x14($sp)
    c.lt.s $f14, $f2
    nop
    bc1fl   branch_0x801ed808
    mov.s   $f0, $f14
    c.lt.s $f14, $f0
    lwc1    $f8, 0x20($sp)
    lwc1    $f4, 0x2c($sp)
    lwc1    $f6, 0x24($sp)
    bc1fl   branch_0x801ed808
    mov.s   $f0, $f14
    mul.s   $f10, $f8, $f4
    lwc1    $f8, 0x30($sp)
    mul.s   $f4, $f6, $f8
    lwc1    $f8, 0x28($sp)
    add.s   $f6, $f10, $f4
    lwc1    $f10, 0x34($sp)
    mul.s   $f4, $f8, $f10
    add.s   $f8, $f6, $f4
    div.s   $f10, $f8, $f2
    b       branch_0x801ed808
    div.s   $f0, $f10, $f0

.globl Function_0x801ed804
Function_0x801ed804: # 0x801ed804
    mov.s   $f0, $f14
branch_0x801ed808:
    jr      $ra
    addiu   $sp, $sp, 0x20

.globl Function_0x801ed810
Function_0x801ed810: # 0x801ed810
    sw      $a2, 0x8($sp)
    lwc1    $f4, 0x8($sp)
    lwc1    $f6, 0x10($sp)
    lwc1    $f10, 0x14($sp)
    lw      $t6, 0x18($sp)
    mul.s   $f8, $f4, $f6
    sw      $a3, 0xc($sp)
    mul.s   $f16, $f14, $f10
    sub.s   $f18, $f16, $f8
    swc1    $f18, 0x0($t6)
    lwc1    $f16, 0xc($sp)
    lw      $t7, 0x1c($sp)
    mul.s   $f8, $f4, $f16
    nop
    mul.s   $f18, $f12, $f10
    sub.s   $f4, $f8, $f18
    mul.s   $f10, $f12, $f6
    nop
    mul.s   $f8, $f14, $f16
    swc1    $f4, 0x0($t7)
    lw      $t8, 0x20($sp)
    sub.s   $f18, $f10, $f8
    jr      $ra
    swc1    $f18, 0x0($t8)

.globl Function_0x801ed870
Function_0x801ed870: # 0x801ed870
    addiu   $sp, $sp, 0xffe8
    sw      $a2, 0x20($sp)
    lwc1    $f4, 0x20($sp)
    lwc1    $f6, 0x28($sp)
    lwc1    $f10, 0x2c($sp)
    lw      $a0, 0x30($sp)
    mul.s   $f8, $f4, $f6
    lw      $a1, 0x34($sp)
    sw      $ra, 0x14($sp)
    mul.s   $f18, $f14, $f10
    swc1    $f12, 0x18($sp)
    sw      $a3, 0x24($sp)
    sub.s   $f4, $f18, $f8
    swc1    $f4, 0x0($a0)
    lwc1    $f10, 0x24($sp)
    lwc1    $f6, 0x20($sp)
    lwc1    $f8, 0x18($sp)
    lwc1    $f4, 0x2c($sp)
    mul.s   $f18, $f6, $f10
    nop
    mul.s   $f6, $f8, $f4
    sub.s   $f10, $f18, $f6
    swc1    $f10, 0x0($a1)
    lwc1    $f4, 0x28($sp)
    lwc1    $f8, 0x18($sp)
    lwc1    $f6, 0x24($sp)
    lw      $t6, 0x38($sp)
    mul.s   $f18, $f8, $f4
    nop
    mul.s   $f10, $f14, $f6
    sub.s   $f0, $f18, $f10
    swc1    $f0, 0x0($t6)
    lwc1    $f2, 0x0($a0)
    lwc1    $f16, 0x0($a1)
    mul.s   $f8, $f2, $f2
    nop
    mul.s   $f4, $f16, $f16
    add.s   $f6, $f8, $f4
    mul.s   $f18, $f0, $f0
    jal     sqrtf
    add.s   $f12, $f18, $f6
    mtc1    $zero, $t2
    lw      $v0, 0x38($sp)
    lw      $a0, 0x30($sp)
    c.lt.s $f10, $f0
    lw      $a1, 0x34($sp)
    bc1fl   branch_0x801ed958
    lw      $ra, 0x14($sp)
    lwc1    $f8, 0x0($a0)
    div.s   $f4, $f8, $f0
    swc1    $f4, 0x0($a0)
    lwc1    $f18, 0x0($a1)
    div.s   $f6, $f18, $f0
    swc1    $f6, 0x0($a1)
    lwc1    $f10, 0x0($v0)
    div.s   $f8, $f10, $f0
    swc1    $f8, 0x0($v0)
    lw      $ra, 0x14($sp)
branch_0x801ed958:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801ed964
Function_0x801ed964: # 0x801ed964
    addiu   $sp, $sp, 0xffe8
    swc1    $f12, 0x18($sp)
    lwc1    $f4, 0x18($sp)
    sw      $a2, 0x20($sp)
    lwc1    $f16, 0x20($sp)
    mul.s   $f6, $f4, $f4
    sw      $ra, 0x14($sp)
    sw      $a3, 0x24($sp)
    mul.s   $f8, $f14, $f14
    swc1    $f14, 0x1c($sp)
    mul.s   $f18, $f16, $f16
    add.s   $f10, $f6, $f8
    jal     sqrtf
    add.s   $f12, $f10, $f18
    mtc1    $zero, $a0
    lwc1    $f14, 0x1c($sp)
    lwc1    $f6, 0x18($sp)
    c.lt.s $f4, $f0
    nop
    bc1fl   branch_0x801ed9e4
    lw      $ra, 0x14($sp)
    div.s   $f8, $f6, $f0
    lw      $t6, 0x24($sp)
    div.s   $f16, $f14, $f0
    swc1    $f8, 0x0($t6)
    lw      $t7, 0x28($sp)
    swc1    $f16, 0x0($t7)
    lwc1    $f10, 0x20($sp)
    lw      $t8, 0x2c($sp)
    div.s   $f18, $f10, $f0
    swc1    $f18, 0x0($t8)
    lw      $ra, 0x14($sp)
branch_0x801ed9e4:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x801ed9f0
Function_0x801ed9f0: # 0x801ed9f0
    sw      $a3, 0xc($sp)
    mtc1    $a1, $t4
    lwc1    $f4, 0x0($a0)
    mtc1    $a2, $t6
    lwc1    $f8, 0x10($a0)
    mul.s   $f6, $f4, $f12
    lwc1    $f4, 0xc($sp)
    lwc1    $f18, 0x20($a0)
    mul.s   $f10, $f8, $f14
    lw      $t6, 0x10($sp)
    mul.s   $f8, $f18, $f4
    add.s   $f16, $f6, $f10
    lwc1    $f10, 0x30($a0)
    add.s   $f6, $f16, $f8
    add.s   $f18, $f10, $f6
    swc1    $f18, 0x0($t6)
    lwc1    $f16, 0x4($a0)
    lwc1    $f10, 0x14($a0)
    lw      $t7, 0x14($sp)
    mul.s   $f8, $f16, $f12
    lwc1    $f16, 0x24($a0)
    mul.s   $f6, $f10, $f14
    add.s   $f18, $f8, $f6
    mul.s   $f10, $f16, $f4
    lwc1    $f6, 0x34($a0)
    add.s   $f8, $f18, $f10
    add.s   $f16, $f6, $f8
    swc1    $f16, 0x0($t7)
    lwc1    $f18, 0x8($a0)
    lwc1    $f6, 0x18($a0)
    lw      $t8, 0x18($sp)
    mul.s   $f10, $f18, $f12
    lwc1    $f18, 0x28($a0)
    mul.s   $f8, $f6, $f14
    add.s   $f16, $f10, $f8
    mul.s   $f6, $f18, $f4
    lwc1    $f8, 0x38($a0)
    add.s   $f10, $f16, $f6
    add.s   $f18, $f8, $f10
    jr      $ra
    swc1    $f18, 0x0($t8)

.globl Function_0x801eda94
Function_0x801eda94: # 0x801eda94
    sw      $a2, 0x8($sp)
    lwc1    $f6, 0x8($sp)
    lwc1    $f4, 0x10($a0)
    mtc1    $a1, $t6
    lwc1    $f10, 0x0($a0)
    mul.s   $f8, $f4, $f6
    mtc1    $a3, $t4
    lwc1    $f4, 0x20($a0)
    mul.s   $f16, $f10, $f14
    lw      $t6, 0x10($sp)
    mul.s   $f10, $f4, $f12
    add.s   $f18, $f16, $f8
    add.s   $f16, $f10, $f18
    swc1    $f16, 0x0($t6)
    lwc1    $f8, 0x14($a0)
    lwc1    $f10, 0x4($a0)
    lw      $t7, 0x14($sp)
    mul.s   $f4, $f8, $f6
    lwc1    $f8, 0x24($a0)
    mul.s   $f18, $f10, $f14
    add.s   $f16, $f18, $f4
    mul.s   $f10, $f8, $f12
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0($t7)
    lwc1    $f4, 0x18($a0)
    lwc1    $f10, 0x8($a0)
    lw      $t8, 0x18($sp)
    mul.s   $f8, $f4, $f6
    lwc1    $f4, 0x28($a0)
    mul.s   $f16, $f10, $f14
    add.s   $f18, $f16, $f8
    mul.s   $f6, $f4, $f12
    add.s   $f10, $f6, $f18
    jr      $ra
    swc1    $f10, 0x0($t8)

.globl Function_0x801edb20
Function_0x801edb20: # 0x801edb20
    lui     $at, 0x4780
    mtc1    $at, $zero
    lwc1    $f4, 0x3c($a0)
    mul.s   $f6, $f4, $f0
    trunc.w.s   $f8, $f6
    mfc1    $t8, $t0
    nop
    srl     $t7, $t8, 16
    sh      $t7, 0x1e($a1)
    sh      $t8, 0x3e($a1)
    lwc1    $f10, 0x38($a0)
    mul.s   $f16, $f10, $f0
    trunc.w.s   $f18, $f16
    mfc1    $t1, $s2
    nop
    srl     $t0, $t1, 16
    sh      $t0, 0x1c($a1)
    sh      $t1, 0x3c($a1)
    lwc1    $f4, 0x34($a0)
    mul.s   $f6, $f4, $f0
    trunc.w.s   $f8, $f6
    mfc1    $t4, $t0
    nop
    srl     $t3, $t4, 16
    sh      $t3, 0x1a($a1)
    sh      $t4, 0x3a($a1)
    lwc1    $f10, 0x30($a0)
    mul.s   $f16, $f10, $f0
    trunc.w.s   $f18, $f16
    mfc1    $t7, $s2
    nop
    srl     $t6, $t7, 16
    sh      $t6, 0x18($a1)
    sh      $t7, 0x38($a1)
    lwc1    $f4, 0x2c($a0)
    mul.s   $f6, $f4, $f0
    trunc.w.s   $f8, $f6
    mfc1    $t0, $t0
    nop
    srl     $t9, $t0, 16
    sh      $t9, 0x16($a1)
    sh      $t0, 0x36($a1)
    lwc1    $f10, 0x28($a0)
    mul.s   $f16, $f10, $f0
    trunc.w.s   $f18, $f16
    mfc1    $t3, $s2
    nop
    srl     $t2, $t3, 16
    sh      $t2, 0x14($a1)
    sh      $t3, 0x34($a1)
    lwc1    $f4, 0x24($a0)
    mul.s   $f6, $f4, $f0
    trunc.w.s   $f8, $f6
    mfc1    $t6, $t0
    nop
    srl     $t5, $t6, 16
    sh      $t5, 0x12($a1)
    sh      $t6, 0x32($a1)
    lwc1    $f10, 0x20($a0)
    mul.s   $f16, $f10, $f0
    trunc.w.s   $f18, $f16
    mfc1    $t9, $s2
    nop
    srl     $t8, $t9, 16
    sh      $t8, 0x10($a1)
    sh      $t9, 0x30($a1)
    lwc1    $f4, 0x1c($a0)
    mul.s   $f6, $f4, $f0
    trunc.w.s   $f8, $f6
    mfc1    $t2, $t0
    nop
    srl     $t1, $t2, 16
    sh      $t1, 0xe($a1)
    sh      $t2, 0x2e($a1)
    lwc1    $f10, 0x18($a0)
    mul.s   $f16, $f10, $f0
    trunc.w.s   $f18, $f16
    mfc1    $t5, $s2
    nop
    srl     $t4, $t5, 16
    sh      $t4, 0xc($a1)
    sh      $t5, 0x2c($a1)
    lwc1    $f4, 0x14($a0)
    mul.s   $f6, $f4, $f0
    trunc.w.s   $f8, $f6
    mfc1    $t8, $t0
    nop
    srl     $t7, $t8, 16
    sh      $t7, 0xa($a1)
    sh      $t8, 0x2a($a1)
    lwc1    $f10, 0x10($a0)
    mul.s   $f16, $f10, $f0
    trunc.w.s   $f18, $f16
    mfc1    $t1, $s2
    nop
    srl     $t0, $t1, 16
    sh      $t0, 0x8($a1)
    sh      $t1, 0x28($a1)
    lwc1    $f4, 0xc($a0)
    mul.s   $f6, $f4, $f0
    trunc.w.s   $f8, $f6
    mfc1    $t4, $t0
    nop
    srl     $t3, $t4, 16
    sh      $t3, 0x6($a1)
    sh      $t4, 0x26($a1)
    lwc1    $f10, 0x8($a0)
    mul.s   $f16, $f10, $f0
    trunc.w.s   $f18, $f16
    mfc1    $t7, $s2
    nop
    srl     $t6, $t7, 16
    sh      $t6, 0x4($a1)
    sh      $t7, 0x24($a1)
    lwc1    $f4, 0x4($a0)
    mul.s   $f6, $f4, $f0
    trunc.w.s   $f8, $f6
    mfc1    $t0, $t0
    nop
    srl     $t9, $t0, 16
    sh      $t9, 0x2($a1)
    sh      $t0, 0x22($a1)
    lwc1    $f10, 0x0($a0)
    mul.s   $f16, $f10, $f0
    trunc.w.s   $f18, $f16
    mfc1    $t3, $s2
    nop
    srl     $t2, $t3, 16
    sh      $t2, 0x0($a1)
    jr      $ra
    sh      $t3, 0x20($a1)

.globl Function_0x801edd2c
Function_0x801edd2c: # 0x801edd2c
    sw      $a3, 0xc($sp)
    mtc1    $zero, $v0
    lui     $at, 0x3f80
    mtc1    $at, $zero
    mtc1    $a1, $t4
    mtc1    $a2, $t6
    swc1    $f2, 0x2c($a0)
    swc1    $f2, 0x1c($a0)
    swc1    $f2, 0xc($a0)
    swc1    $f2, 0x18($a0)
    swc1    $f2, 0x8($a0)
    swc1    $f2, 0x24($a0)
    swc1    $f2, 0x4($a0)
    swc1    $f2, 0x20($a0)
    swc1    $f2, 0x10($a0)
    swc1    $f0, 0x3c($a0)
    swc1    $f0, 0x28($a0)
    swc1    $f0, 0x14($a0)
    swc1    $f0, 0x0($a0)
    swc1    $f12, 0x30($a0)
    swc1    $f14, 0x34($a0)
    lwc1    $f4, 0xc($sp)
    jr      $ra
    swc1    $f4, 0x38($a0)

.globl Function_0x801edd8c
Function_0x801edd8c: # 0x801edd8c
    mtc1    $a1, $t4
    mtc1    $a2, $t6
    addiu   $sp, $sp, 0xffa8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x58($sp)
    mfc1    $a1, $t4
    mfc1    $a2, $t6
    sw      $a3, 0x64($sp)
    jal     Function_0x801edd2c
    addiu   $a0, $sp, 0x18
    addiu   $a0, $sp, 0x18
    jal     Function_0x801edb20
    lw      $a1, 0x58($sp)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x58
    jr      $ra
    nop

.globl Function_0x801eddd0
Function_0x801eddd0: # 0x801eddd0
    mtc1    $a2, $t6
    addiu   $sp, $sp, 0xff90
    sdc1    $20, 0x10($29)
    mul.s   $f2, $f14, $f14
    mtc1    $a3, $s4
    sdc1    $22, 0x18($29)
    lwc1    $f22, 0x80($sp)
    mul.s   $f18, $f20, $f20
    sdc1    $26, 0x28($29)
    sw      $ra, 0x34($sp)
    mul.s   $f26, $f22, $f22
    sdc1    $24, 0x20($29)
    sw      $a1, 0x74($sp)
    swc1    $f2, 0x40($sp)
    swc1    $f18, 0x3c($sp)
    add.s   $f4, $f2, $f18
    sw      $a0, 0x70($sp)
    swc1    $f14, 0x78($sp)
    jal     sqrtf
    add.s   $f12, $f4, $f26
    mtc1    $zero, $a2
    lui     $at, 0x3f80
    mtc1    $at, $t4
    c.lt.s $f6, $f0
    lw      $a0, 0x70($sp)
    lwc1    $f2, 0x40($sp)
    lwc1    $f14, 0x78($sp)
    bc1f    branch_0x801ede64
    lwc1    $f18, 0x3c($sp)
    div.s   $f14, $f14, $f0
    div.s   $f20, $f20, $f0
    mul.s   $f2, $f14, $f14
    div.s   $f22, $f22, $f0
    mul.s   $f18, $f20, $f20
    nop
    mul.s   $f26, $f22, $f22
    nop
branch_0x801ede64:
    lui     $at, 0x43b4
    mtc1    $at, $t2
    lwc1    $f8, 0x74($sp)
    lui     $at, 0x4580
    mtc1    $at, $a2
    div.s   $f4, $f8, $f10
    lui     $v1, 0x8015
    addiu   $v1, $v1, 0x40b0
    mtc1    $zero, $zero
    lui     $at, 0x3f80
    mul.s   $f8, $f4, $f6
    sub.s   $f6, $f12, $f2
    trunc.w.s   $f10, $f8
    mfc1    $v0, $t2
    nop
    addiu   $t0, $v0, 0x400
    andi    $t1, $t0, 0xfff
    sll     $t2, $t1, 2
    addu    $t3, $v1, $t2
    lwc1    $f24, 0x0($t3)
    andi    $t7, $v0, 0xfff
    sll     $t8, $t7, 2
    mul.s   $f8, $f6, $f24
    addu    $t9, $v1, $t8
    lwc1    $f4, 0x0($t9)
    swc1    $f4, 0x6c($sp)
    mtc1    $at, $a0
    add.s   $f10, $f8, $f2
    mul.s   $f8, $f20, $f22
    swc1    $f0, 0x30($a0)
    sub.s   $f6, $f4, $f24
    swc1    $f0, 0x34($a0)
    swc1    $f0, 0x38($a0)
    swc1    $f0, 0xc($a0)
    swc1    $f0, 0x1c($a0)
    swc1    $f0, 0x2c($a0)
    swc1    $f12, 0x3c($a0)
    swc1    $f10, 0x0($a0)
    mul.s   $f0, $f8, $f6
    lwc1    $f10, 0x6c($sp)
    swc1    $f6, 0x40($sp)
    mtc1    $at, $a2
    mul.s   $f12, $f14, $f10
    sub.s   $f10, $f6, $f18
    sub.s   $f4, $f0, $f12
    add.s   $f8, $f12, $f0
    swc1    $f4, 0x24($a0)
    mul.s   $f4, $f10, $f24
    swc1    $f8, 0x18($a0)
    add.s   $f8, $f4, $f18
    swc1    $f8, 0x14($a0)
    lwc1    $f6, 0x6c($sp)
    lwc1    $f4, 0x40($sp)
    mul.s   $f16, $f20, $f6
    nop
    mul.s   $f10, $f22, $f14
    nop
    mul.s   $f2, $f10, $f4
    mtc1    $at, $t2
    nop
    sub.s   $f4, $f10, $f26
    add.s   $f8, $f16, $f2
    sub.s   $f6, $f2, $f16
    swc1    $f8, 0x20($a0)
    mul.s   $f8, $f4, $f24
    swc1    $f6, 0x8($a0)
    mul.s   $f10, $f14, $f20
    add.s   $f6, $f8, $f26
    swc1    $f6, 0x28($a0)
    lwc1    $f4, 0x40($sp)
    lwc1    $f8, 0x6c($sp)
    mul.s   $f0, $f10, $f4
    nop
    mul.s   $f2, $f22, $f8
    sub.s   $f6, $f0, $f2
    add.s   $f10, $f2, $f0
    swc1    $f6, 0x10($a0)
    swc1    $f10, 0x4($a0)
    lw      $ra, 0x34($sp)
    ldc1    $26, 0x28($29)
    ldc1    $24, 0x20($29)
    ldc1    $22, 0x18($29)
    ldc1    $20, 0x10($29)
    jr      $ra
    addiu   $sp, $sp, 0x70

.globl Function_0x801edfb8
Function_0x801edfb8: # 0x801edfb8
    addiu   $sp, $sp, 0xffa0
    mtc1    $a1, $t4
    mtc1    $a2, $t6
    lwc1    $f4, 0x70($sp)
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x60($sp)
    mfc1    $a1, $t4
    mfc1    $a2, $t6
    sw      $a3, 0x6c($sp)
    addiu   $a0, $sp, 0x20
    jal     Function_0x801eddd0
    swc1    $f4, 0x10($sp)
    addiu   $a0, $sp, 0x20
    jal     Function_0x801edb20
    lw      $a1, 0x60($sp)
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x60
    jr      $ra
    nop

.globl Function_0x801ee004
Function_0x801ee004: # 0x801ee004
    mtc1    $a2, $t6
    addiu   $sp, $sp, 0xff98
    sdc1    $20, 0x10($29)
    mul.s   $f16, $f14, $f14
    mtc1    $a3, $s4
    sdc1    $22, 0x18($29)
    lwc1    $f22, 0x78($sp)
    mul.s   $f18, $f20, $f20
    sdc1    $24, 0x20($29)
    sw      $ra, 0x2c($sp)
    mul.s   $f24, $f22, $f22
    sw      $a1, 0x6c($sp)
    swc1    $f16, 0x44($sp)
    sw      $a0, 0x68($sp)
    swc1    $f18, 0x40($sp)
    add.s   $f4, $f16, $f18
    swc1    $f14, 0x70($sp)
    jal     sqrtf
    add.s   $f12, $f4, $f24
    mtc1    $zero, $a2
    lw      $a0, 0x68($sp)
    lwc1    $f14, 0x70($sp)
    c.lt.s $f6, $f0
    lwc1    $f16, 0x44($sp)
    lwc1    $f18, 0x40($sp)
    lwc1    $f8, 0x6c($sp)
    bc1f    branch_0x801ee094
    lui     $at, 0x43b4
    div.s   $f14, $f14, $f0
    div.s   $f20, $f20, $f0
    mul.s   $f16, $f14, $f14
    div.s   $f22, $f22, $f0
    mul.s   $f18, $f20, $f20
    nop
    mul.s   $f24, $f22, $f22
    nop
branch_0x801ee094:
    mtc1    $at, $t2
    lui     $at, 0x4580
    mtc1    $at, $a2
    div.s   $f4, $f8, $f10
    lui     $v1, 0x8015
    addiu   $v1, $v1, 0x40b0
    lui     $at, 0x3f80
    mtc1    $zero, $zero
    mul.s   $f8, $f4, $f6
    lwc1    $f6, 0x7c($sp)
    trunc.w.s   $f10, $f8
    mfc1    $v0, $t2
    nop
    andi    $t7, $v0, 0xfff
    sll     $t8, $t7, 2
    addu    $t9, $v1, $t8
    addiu   $t0, $v0, 0x400
    lwc1    $f4, 0x0($t9)
    andi    $t1, $t0, 0xfff
    sll     $t2, $t1, 2
    addu    $t3, $v1, $t2
    lwc1    $f12, 0x0($t3)
    swc1    $f4, 0x64($sp)
    swc1    $f6, 0x30($a0)
    lwc1    $f8, 0x80($sp)
    mtc1    $at, $a2
    mtc1    $at, $a0
    swc1    $f8, 0x34($a0)
    sub.s   $f8, $f6, $f16
    lwc1    $f10, 0x84($sp)
    swc1    $f4, 0x3c($a0)
    mtc1    $at, $a2
    swc1    $f10, 0x38($a0)
    mul.s   $f10, $f8, $f12
    sub.s   $f8, $f6, $f12
    swc1    $f0, 0xc($a0)
    swc1    $f0, 0x1c($a0)
    swc1    $f0, 0x2c($a0)
    add.s   $f4, $f10, $f16
    mul.s   $f10, $f20, $f22
    swc1    $f4, 0x0($a0)
    lwc1    $f4, 0x64($sp)
    swc1    $f8, 0x38($sp)
    mul.s   $f0, $f10, $f8
    mtc1    $at, $t0
    mul.s   $f2, $f14, $f4
    sub.s   $f4, $f8, $f18
    sub.s   $f6, $f0, $f2
    add.s   $f10, $f2, $f0
    swc1    $f6, 0x24($a0)
    mul.s   $f6, $f4, $f12
    swc1    $f10, 0x18($a0)
    add.s   $f10, $f6, $f18
    swc1    $f10, 0x14($a0)
    lwc1    $f8, 0x64($sp)
    lwc1    $f10, 0x38($sp)
    mul.s   $f4, $f20, $f8
    nop
    mul.s   $f6, $f22, $f14
    swc1    $f4, 0x30($sp)
    lwc1    $f4, 0x30($sp)
    mul.s   $f8, $f6, $f10
    add.s   $f6, $f4, $f8
    swc1    $f8, 0x34($sp)
    swc1    $f6, 0x20($a0)
    lwc1    $f4, 0x30($sp)
    lwc1    $f10, 0x34($sp)
    mtc1    $at, $a2
    sub.s   $f8, $f10, $f4
    sub.s   $f10, $f6, $f24
    swc1    $f8, 0x8($a0)
    mul.s   $f4, $f10, $f12
    add.s   $f8, $f4, $f24
    mul.s   $f6, $f14, $f20
    swc1    $f8, 0x28($a0)
    lwc1    $f10, 0x38($sp)
    lwc1    $f4, 0x64($sp)
    mul.s   $f0, $f6, $f10
    nop
    mul.s   $f2, $f22, $f4
    sub.s   $f8, $f0, $f2
    add.s   $f6, $f2, $f0
    swc1    $f8, 0x10($a0)
    swc1    $f6, 0x4($a0)
    lw      $ra, 0x2c($sp)
    ldc1    $24, 0x20($29)
    ldc1    $22, 0x18($29)
    ldc1    $20, 0x10($29)
    jr      $ra
    addiu   $sp, $sp, 0x68

.globl Function_0x801ee1fc
Function_0x801ee1fc: # 0x801ee1fc
    addiu   $sp, $sp, 0xff98
    mtc1    $a1, $t4
    mtc1    $a2, $t6
    lwc1    $f4, 0x78($sp)
    lwc1    $f6, 0x7c($sp)
    lwc1    $f8, 0x80($sp)
    lwc1    $f10, 0x84($sp)
    sw      $ra, 0x24($sp)
    sw      $a0, 0x68($sp)
    mfc1    $a1, $t4
    mfc1    $a2, $t6
    sw      $a3, 0x74($sp)
    addiu   $a0, $sp, 0x28
    swc1    $f4, 0x10($sp)
    swc1    $f6, 0x14($sp)
    swc1    $f8, 0x18($sp)
    jal     Function_0x801ee004
    swc1    $f10, 0x1c($sp)
    addiu   $a0, $sp, 0x28
    jal     Function_0x801edb20
    lw      $a1, 0x68($sp)
    lw      $ra, 0x24($sp)
    addiu   $sp, $sp, 0x68
    jr      $ra
    nop

.globl Function_0x801ee260
Function_0x801ee260: # 0x801ee260
    addiu   $sp, $sp, 0xffd8
    sw      $a1, 0x2c($sp)
    lui     $at, 0x43b4
    mtc1    $at, $a2
    lwc1    $f4, 0x2c($sp)
    lui     $at, 0x4580
    mtc1    $at, $t2
    div.s   $f8, $f4, $f6
    sw      $a2, 0x30($sp)
    lui     $at, 0x43b4
    sw      $a3, 0x34($sp)
    lui     $a2, 0x8015
    addiu   $a2, $a2, 0x40b0
    mul.s   $f4, $f8, $f10
    mtc1    $at, $t2
    lwc1    $f8, 0x30($sp)
    lui     $at, 0x4580
    trunc.w.s   $f6, $f4
    div.s   $f4, $f8, $f10
    mfc1    $v0, $a2
    mtc1    $at, $a2
    lui     $at, 0x43b4
    andi    $t7, $v0, 0xfff
    sll     $t8, $t7, 2
    addu    $t9, $a2, $t8
    lwc1    $f12, 0x0($t9)
    addiu   $t8, $v0, 0x400
    andi    $t9, $t8, 0xfff
    sll     $t0, $t9, 2
    mul.s   $f8, $f4, $f6
    mtc1    $at, $a2
    lwc1    $f4, 0x34($sp)
    lui     $at, 0x4580
    trunc.w.s   $f10, $f8
    div.s   $f8, $f4, $f6
    mfc1    $v1, $t2
    mtc1    $at, $t2
    lui     $at, 0x3f80
    andi    $t1, $v1, 0xfff
    sll     $t2, $t1, 2
    addu    $t3, $a2, $t2
    lwc1    $f18, 0x0($t3)
    addiu   $t2, $v1, 0x400
    andi    $t3, $t2, 0xfff
    sll     $t4, $t3, 2
    addu    $t1, $a2, $t0
    lwc1    $f14, 0x0($t1)
    mul.s   $f4, $f8, $f10
    trunc.w.s   $f6, $f4
    neg.s   $f4, $f14
    mfc1    $a1, $a2
    nop
    andi    $t5, $a1, 0xfff
    sll     $t6, $t5, 2
    addu    $t7, $a2, $t6
    lwc1    $f0, 0x0($t7)
    addiu   $t6, $a1, 0x400
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 2
    addu    $t5, $a2, $t4
    addu    $t9, $a2, $t8
    lwc1    $f16, 0x0($t5)
    lwc1    $f2, 0x0($t9)
    mul.s   $f8, $f16, $f2
    nop
    mul.s   $f10, $f12, $f18
    nop
    mul.s   $f6, $f4, $f0
    swc1    $f8, 0x0($a0)
    swc1    $f10, 0x8($sp)
    lwc1    $f8, 0x8($sp)
    mul.s   $f10, $f8, $f2
    add.s   $f4, $f6, $f10
    mul.s   $f8, $f14, $f18
    swc1    $f4, 0x10($a0)
    mul.s   $f6, $f12, $f0
    swc1    $f8, 0x4($sp)
    lwc1    $f10, 0x4($sp)
    mul.s   $f4, $f10, $f2
    add.s   $f8, $f6, $f4
    mul.s   $f6, $f16, $f0
    swc1    $f8, 0x20($a0)
    lwc1    $f10, 0x38($sp)
    mul.s   $f4, $f14, $f2
    swc1    $f6, 0x4($a0)
    swc1    $f10, 0x30($a0)
    lwc1    $f8, 0x8($sp)
    mul.s   $f10, $f8, $f0
    neg.s   $f8, $f12
    add.s   $f6, $f4, $f10
    mul.s   $f4, $f8, $f2
    swc1    $f6, 0x14($a0)
    lwc1    $f10, 0x4($sp)
    mul.s   $f6, $f10, $f0
    mtc1    $zero, $zero
    add.s   $f8, $f4, $f6
    mul.s   $f6, $f12, $f16
    neg.s   $f4, $f18
    swc1    $f8, 0x24($a0)
    mul.s   $f8, $f14, $f16
    lwc1    $f10, 0x3c($sp)
    swc1    $f4, 0x8($a0)
    swc1    $f6, 0x18($a0)
    swc1    $f10, 0x34($a0)
    mtc1    $at, $a0
    swc1    $f8, 0x28($a0)
    lwc1    $f10, 0x40($sp)
    addiu   $sp, $sp, 0x28
    swc1    $f0, 0xc($a0)
    swc1    $f0, 0x1c($a0)
    swc1    $f0, 0x2c($a0)
    swc1    $f4, 0x3c($a0)
    jr      $ra
    swc1    $f10, 0x38($a0)

.globl Function_0x801ee428
Function_0x801ee428: # 0x801ee428
    addiu   $sp, $sp, 0xff98
    mtc1    $a1, $t4
    mtc1    $a2, $t6
    lwc1    $f4, 0x78($sp)
    lwc1    $f6, 0x7c($sp)
    lwc1    $f8, 0x80($sp)
    sw      $ra, 0x24($sp)
    sw      $a0, 0x68($sp)
    mfc1    $a1, $t4
    mfc1    $a2, $t6
    sw      $a3, 0x74($sp)
    addiu   $a0, $sp, 0x28
    swc1    $f4, 0x10($sp)
    swc1    $f6, 0x14($sp)
    jal     Function_0x801ee260
    swc1    $f8, 0x18($sp)
    addiu   $a0, $sp, 0x28
    jal     Function_0x801edb20
    lw      $a1, 0x68($sp)
    lw      $ra, 0x24($sp)
    addiu   $sp, $sp, 0x68
    jr      $ra
    nop

.globl Function_0x801ee484
Function_0x801ee484: # 0x801ee484
    addiu   $sp, $sp, 0xffe0
    sw      $a1, 0x24($sp)
    lui     $at, 0x43b4
    mtc1    $at, $a2
    lwc1    $f4, 0x24($sp)
    lui     $at, 0x4580
    mtc1    $at, $t2
    div.s   $f8, $f4, $f6
    sw      $a2, 0x28($sp)
    lui     $at, 0x43b4
    sw      $a3, 0x2c($sp)
    lui     $a2, 0x8015
    addiu   $a2, $a2, 0x40b0
    mul.s   $f4, $f8, $f10
    mtc1    $at, $t2
    lwc1    $f8, 0x28($sp)
    lui     $at, 0x4580
    trunc.w.s   $f6, $f4
    div.s   $f4, $f8, $f10
    mfc1    $v0, $a2
    mtc1    $at, $a2
    lui     $at, 0x43b4
    andi    $t7, $v0, 0xfff
    sll     $t8, $t7, 2
    addu    $t9, $a2, $t8
    lwc1    $f18, 0x0($t9)
    addiu   $t8, $v0, 0x400
    andi    $t9, $t8, 0xfff
    sll     $t0, $t9, 2
    mul.s   $f8, $f4, $f6
    mtc1    $at, $a2
    lwc1    $f4, 0x2c($sp)
    lui     $at, 0x4580
    trunc.w.s   $f10, $f8
    div.s   $f8, $f4, $f6
    mfc1    $v1, $t2
    mtc1    $at, $t2
    lui     $at, 0x3f80
    andi    $t1, $v1, 0xfff
    sll     $t2, $t1, 2
    addu    $t3, $a2, $t2
    lwc1    $f12, 0x0($t3)
    addiu   $t2, $v1, 0x400
    andi    $t3, $t2, 0xfff
    sll     $t4, $t3, 2
    addu    $t1, $a2, $t0
    lwc1    $f14, 0x0($t1)
    mul.s   $f4, $f8, $f10
    trunc.w.s   $f6, $f4
    mul.s   $f8, $f18, $f12
    mfc1    $a1, $a2
    nop
    andi    $t5, $a1, 0xfff
    sll     $t6, $t5, 2
    addu    $t7, $a2, $t6
    lwc1    $f0, 0x0($t7)
    addiu   $t6, $a1, 0x400
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 2
    addu    $t5, $a2, $t4
    addu    $t9, $a2, $t8
    lwc1    $f16, 0x0($t5)
    lwc1    $f2, 0x0($t9)
    swc1    $f8, 0x0($sp)
    lwc1    $f10, 0x0($sp)
    mul.s   $f4, $f10, $f0
    nop
    mul.s   $f6, $f16, $f2
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0($a0)
    lwc1    $f10, 0x0($sp)
    mul.s   $f4, $f10, $f2
    nop
    mul.s   $f6, $f16, $f0
    sub.s   $f8, $f4, $f6
    mul.s   $f10, $f14, $f12
    nop
    mul.s   $f6, $f14, $f0
    swc1    $f8, 0x10($a0)
    mul.s   $f8, $f14, $f2
    swc1    $f10, 0x20($a0)
    lwc1    $f4, 0x30($sp)
    neg.s   $f10, $f18
    swc1    $f6, 0x4($a0)
    mul.s   $f6, $f18, $f16
    swc1    $f10, 0x24($a0)
    swc1    $f8, 0x14($a0)
    swc1    $f4, 0x30($a0)
    lwc1    $f4, 0x34($sp)
    swc1    $f4, 0x34($a0)
    swc1    $f6, 0x0($sp)
    lwc1    $f8, 0x0($sp)
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f4, $f12, $f2
    sub.s   $f6, $f10, $f4
    swc1    $f6, 0x8($a0)
    lwc1    $f8, 0x0($sp)
    mul.s   $f10, $f8, $f2
    nop
    mul.s   $f4, $f12, $f0
    mtc1    $zero, $zero
    mul.s   $f8, $f14, $f16
    add.s   $f6, $f10, $f4
    mtc1    $at, $a0
    swc1    $f8, 0x28($a0)
    swc1    $f6, 0x18($a0)
    lwc1    $f10, 0x38($sp)
    addiu   $sp, $sp, 0x20
    swc1    $f0, 0xc($a0)
    swc1    $f0, 0x1c($a0)
    swc1    $f0, 0x2c($a0)
    swc1    $f4, 0x3c($a0)
    jr      $ra
    swc1    $f10, 0x38($a0)

.globl Function_0x801ee650
Function_0x801ee650: # 0x801ee650
    addiu   $sp, $sp, 0xff98
    mtc1    $a1, $t4
    mtc1    $a2, $t6
    lwc1    $f4, 0x78($sp)
    lwc1    $f6, 0x7c($sp)
    lwc1    $f8, 0x80($sp)
    sw      $ra, 0x24($sp)
    sw      $a0, 0x68($sp)
    mfc1    $a1, $t4
    mfc1    $a2, $t6
    sw      $a3, 0x74($sp)
    addiu   $a0, $sp, 0x28
    swc1    $f4, 0x10($sp)
    swc1    $f6, 0x14($sp)
    jal     Function_0x801ee484
    swc1    $f8, 0x18($sp)
    addiu   $a0, $sp, 0x28
    jal     Function_0x801edb20
    lw      $a1, 0x68($sp)
    lw      $ra, 0x24($sp)
    addiu   $sp, $sp, 0x68
    jr      $ra
    nop

.globl Function_0x801ee6ac
Function_0x801ee6ac: # 0x801ee6ac
    mtc1    $a1, $t4
    mtc1    $a2, $t6
    sw      $a3, 0xc($sp)
    swc1    $f12, 0x0($a0)
    swc1    $f14, 0x14($a0)
    mtc1    $zero, $zero
    lwc1    $f4, 0xc($sp)
    lui     $at, 0x3f80
    mtc1    $at, $a2
    swc1    $f4, 0x28($a0)
    swc1    $f0, 0x10($a0)
    swc1    $f0, 0x20($a0)
    swc1    $f0, 0x4($a0)
    swc1    $f0, 0x24($a0)
    swc1    $f0, 0x8($a0)
    swc1    $f0, 0x18($a0)
    swc1    $f0, 0xc($a0)
    swc1    $f0, 0x1c($a0)
    swc1    $f0, 0x2c($a0)
    swc1    $f0, 0x30($a0)
    swc1    $f0, 0x34($a0)
    swc1    $f0, 0x38($a0)
    jr      $ra
    swc1    $f6, 0x3c($a0)

.globl Function_0x801ee70c
Function_0x801ee70c: # 0x801ee70c
    mtc1    $a1, $t4
    mtc1    $a2, $t6
    addiu   $sp, $sp, 0xffa8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x58($sp)
    mfc1    $a1, $t4
    mfc1    $a2, $t6
    sw      $a3, 0x64($sp)
    jal     Function_0x801ee6ac
    addiu   $a0, $sp, 0x18
    addiu   $a0, $sp, 0x18
    jal     Function_0x801edb20
    lw      $a1, 0x58($sp)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x58
    jr      $ra
    nop

.globl Function_0x801ee750
Function_0x801ee750: # 0x801ee750
    lui     $a0, 0x8023
    addiu   $a0, $a0, 0x8ae0
    lw      $v1, 0x0($a0)
    addiu   $t6, $zero, 0x2
    lui     $at, 0x3f80
    subu    $t7, $t6, $v1
    mtc1    $t7, $a0
    mtc1    $at, $t6
    lui     $at, 0x4000
    cvt.s.w $f6, $f4
    mtc1    $at, $t0
    lui     $a1, 0x8023
    addiu   $a1, $a1, 0x8adc
    lw      $v0, 0x0($a1)
    addiu   $a2, $zero, 0xc
    div.s   $f0, $f6, $f8
    multu   $v0, $a2
    lui     $t8, 0x8022
    addiu   $t8, $t8, 0x7648
    lui     $at, 0x8023
    mflo    $a3
    addu    $t0, $a3, $t8
    lw      $t9, 0xc($t0)
    lw      $t3, 0x0($t0)
    mtc1    $t9, $t2
    mtc1    $t3, $a0
    cvt.s.w $f16, $f10
    sub.s   $f2, $f14, $f0
    cvt.s.w $f6, $f4
    mul.s   $f18, $f16, $f2
    nop
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f18, $f8
    trunc.w.s   $f16, $f10
    mfc1    $t5, $s0
    nop
    sw      $t5, -0x7794($at)
    lw      $t6, 0x10($t0)
    lw      $t7, 0x4($t0)
    lui     $at, 0x8023
    mtc1    $t6, $a0
    mtc1    $t7, $t0
    lui     $t7, 0x8022
    cvt.s.w $f6, $f4
    addiu   $t7, $t7, 0x7684
    addu    $t1, $a3, $t7
    or      $a3, $v0, $zero
    cvt.s.w $f10, $f8
    mul.s   $f18, $f6, $f2
    nop
    mul.s   $f16, $f10, $f0
    add.s   $f4, $f18, $f16
    trunc.w.s   $f6, $f4
    mfc1    $t9, $a2
    nop
    sw      $t9, -0x7790($at)
    lw      $t3, 0x14($t0)
    lw      $t4, 0x8($t0)
    lui     $at, 0x8023
    mtc1    $t3, $t0
    mtc1    $t4, $s0
    cvt.s.w $f10, $f8
    cvt.s.w $f4, $f16
    mul.s   $f18, $f10, $f2
    nop
    mul.s   $f6, $f4, $f0
    add.s   $f8, $f18, $f6
    trunc.w.s   $f10, $f8
    mfc1    $t6, $t2
    nop
    sw      $t6, -0x778c($at)
    lw      $t8, 0xc($t1)
    lw      $t9, 0x0($t1)
    lui     $at, 0x8023
    mtc1    $t8, $s0
    mtc1    $t9, $a2
    cvt.s.w $f4, $f16
    cvt.s.w $f8, $f6
    mul.s   $f18, $f4, $f2
    nop
    mul.s   $f10, $f8, $f0
    add.s   $f16, $f18, $f10
    trunc.w.s   $f4, $f16
    mfc1    $t4, $a0
    nop
    sw      $t4, -0x7788($at)
    lw      $t5, 0x10($t1)
    lw      $t6, 0x4($t1)
    lui     $at, 0x8023
    mtc1    $t5, $a2
    mtc1    $t6, $t2
    lui     $t6, 0x801c
    cvt.s.w $f8, $f6
    lw      $t6, 0x1d38($t6)
    cvt.s.w $f16, $f10
    mul.s   $f18, $f8, $f2
    nop
    mul.s   $f4, $f16, $f0
    add.s   $f6, $f18, $f4
    trunc.w.s   $f8, $f6
    mfc1    $t8, $t0
    nop
    sw      $t8, -0x7784($at)
    lw      $t9, 0x14($t1)
    lw      $t3, 0x8($t1)
    lui     $at, 0x8023
    mtc1    $t9, $t2
    mtc1    $t3, $a0
    cvt.s.w $f16, $f10
    cvt.s.w $f6, $f4
    mul.s   $f18, $f16, $f2
    nop
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f18, $f8
    trunc.w.s   $f16, $f10
    mfc1    $t5, $s0
    beqz    $t6, branch_0x801ee938
    sw      $t5, -0x7780($at)
    mtc1    $zero, $v0
    or      $a3, $zero, $zero
    b       branch_0x801ee938
    mov.s   $f0, $f14
branch_0x801ee938:
    multu   $a3, $a2
    lui     $t7, 0x8022
    addiu   $t7, $t7, 0x76c0
    lui     $at, 0x8023
    mflo    $t0
    addu    $t1, $t0, $t7
    lw      $t8, 0xc($t1)
    lw      $t9, 0x0($t1)
    mtc1    $t8, $a0
    mtc1    $t9, $t0
    cvt.s.w $f6, $f4
    cvt.s.w $f10, $f8
    mul.s   $f18, $f6, $f2
    nop
    mul.s   $f16, $f10, $f0
    add.s   $f4, $f18, $f16
    trunc.w.s   $f6, $f4
    mfc1    $t4, $a2
    nop
    sw      $t4, -0x777c($at)
    lw      $t5, 0x10($t1)
    lw      $t6, 0x4($t1)
    lui     $at, 0x8023
    mtc1    $t5, $t0
    mtc1    $t6, $s0
    lui     $t6, 0x8022
    cvt.s.w $f10, $f8
    addiu   $t6, $t6, 0x76fc
    addu    $t2, $t0, $t6
    addiu   $t6, $v1, 0x1
    cvt.s.w $f4, $f16
    mul.s   $f18, $f10, $f2
    nop
    mul.s   $f6, $f4, $f0
    add.s   $f8, $f18, $f6
    trunc.w.s   $f10, $f8
    mfc1    $t8, $t2
    nop
    sw      $t8, -0x7778($at)
    lw      $t9, 0x14($t1)
    lw      $t3, 0x8($t1)
    lui     $at, 0x8023
    mtc1    $t9, $s0
    mtc1    $t3, $a2
    cvt.s.w $f4, $f16
    cvt.s.w $f8, $f6
    mul.s   $f18, $f4, $f2
    nop
    mul.s   $f10, $f8, $f0
    add.s   $f16, $f18, $f10
    trunc.w.s   $f4, $f16
    mfc1    $t5, $a0
    nop
    sw      $t5, -0x7774($at)
    lw      $t7, 0xc($t2)
    lw      $t8, 0x0($t2)
    lui     $at, 0x8023
    mtc1    $t7, $a2
    mtc1    $t8, $t2
    cvt.s.w $f8, $f6
    cvt.s.w $f16, $f10
    mul.s   $f18, $f8, $f2
    nop
    mul.s   $f4, $f16, $f0
    add.s   $f6, $f18, $f4
    trunc.w.s   $f8, $f6
    mfc1    $t3, $t0
    nop
    sw      $t3, -0x7770($at)
    lw      $t4, 0x10($t2)
    lw      $t5, 0x4($t2)
    lui     $at, 0x8023
    mtc1    $t4, $t2
    mtc1    $t5, $a0
    lui     $t5, 0x801d
    cvt.s.w $f16, $f10
    lh      $t5, -0x1c7c($t5)
    cvt.s.w $f6, $f4
    mul.s   $f18, $f16, $f2
    nop
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f18, $f8
    trunc.w.s   $f16, $f10
    mfc1    $t7, $s0
    nop
    sw      $t7, -0x776c($at)
    lw      $t8, 0x14($t2)
    lw      $t9, 0x8($t2)
    lui     $at, 0x8023
    mtc1    $t8, $a0
    mtc1    $t9, $t0
    cvt.s.w $f6, $f4
    cvt.s.w $f10, $f8
    mul.s   $f18, $f6, $f2
    nop
    mul.s   $f16, $f10, $f0
    add.s   $f4, $f18, $f16
    trunc.w.s   $f6, $f4
    mfc1    $t4, $a2
    nop
    sw      $t4, -0x7768($at)
    addiu   $at, $zero, 0xffff
    bne     $t5, $at, branch_0x801eeaf8
    nop
    slti    $at, $t6, 0x2
    bnez    $at, branch_0x801eeaf8
    sw      $t6, 0x0($a0)
    addiu   $t8, $v0, 0x1
    sw      $t8, 0x0($a1)
    andi    $t3, $t8, 0x3
    sw      $zero, 0x0($a0)
    sw      $t3, 0x0($a1)
branch_0x801eeaf8:
    jr      $ra
    nop

.globl Function_0x801eeb00
Function_0x801eeb00: # 0x801eeb00
    lui     $v0, 0x8022
    addiu   $v0, $v0, 0x7758
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffc0
    sw      $ra, 0x1c($sp)
    sw      $s1, 0x18($sp)
    beqz    $t6, branch_0x801eeb24
    sw      $s0, 0x14($sp)
    sw      $zero, 0x0($v0)
branch_0x801eeb24:
    jal     Function_0x801ee750
    nop
    lui     $v0, 0x8023
    lui     $v1, 0x8023
    addiu   $v1, $v1, 0x8910
    addiu   $v0, $v0, 0x8914
    sw      $zero, 0x0($v0)
    sw      $zero, 0x0($v1)
    lui     $at, 0x8023
    lui     $a1, 0x8023
    lui     $a2, %hi(Unknown_0x80228A98)
    mtc1    $zero, $zero
    sw      $zero, -0x779c($at)
    addiu   $a2, $a2, %lo(Unknown_0x80228A98)
    addiu   $a1, $a1, 0x89f0
    addiu   $a0, $zero, 0x3
    or      $v1, $zero, $zero
branch_0x801eeb68:
    or      $v0, $a1, $zero
branch_0x801eeb6c:
    addiu   $v1, $v1, 0x1
    addiu   $v0, $v0, 0x1c
    sw      $zero, -0x8($v0)
    sw      $zero, -0x4($v0)
    swc1    $f0, -0x10($v0)
    swc1    $f0, -0x14($v0)
    swc1    $f0, -0x18($v0)
    bne     $v1, $a0, branch_0x801eeb6c
    swc1    $f0, -0x1c($v0)
    addiu   $a1, $a1, 0x54
    bnel    $a1, $a2, branch_0x801eeb68
    or      $v1, $zero, $zero
    lui     $t5, 0x801a
    lui     $ra, 0x801b
    lui     $t3, 0x8022
    addiu   $t3, $t3, 0x7648
    addiu   $ra, $ra, 0xe6a8
    addiu   $t5, $t5, 0x80c8
    ori     $at, $zero, 0xb240
branch_0x801eebb8:
    addu    $v1, $t5, $at
    ori     $at, $zero, 0xb1c0
    addu    $a2, $t5, $at
    ori     $at, $zero, 0xb200
    addu    $t0, $t5, $at
    ori     $at, $zero, 0xb280
    lui     $a1, 0x8022
    lui     $a3, 0x8022
    lui     $t1, 0x8022
    lui     $v0, 0x8022
    addiu   $v0, $v0, 0x7608
    addiu   $t1, $t1, 0x75c8
    addiu   $a3, $a3, 0x7588
    addiu   $a1, $a1, 0x7548
    addu    $t2, $t5, $at
branch_0x801eebf4:
    lw      $at, 0x0($a1)
    lw      $t6, 0x4($a1)
    lw      $t8, 0x4($a3)
    sw      $at, 0x0($v1)
    lw      $at, 0x8($a1)
    sw      $t6, 0x4($v1)
    lw      $t6, 0xc($a1)
    sw      $at, 0x8($v1)
    lw      $at, 0x0($a3)
    sw      $t6, 0xc($v1)
    sw      $t8, 0x4($a2)
    sw      $at, 0x0($a2)
    lw      $at, 0x8($a3)
    lw      $t8, 0xc($a3)
    lw      $t6, 0x4($t1)
    sw      $at, 0x8($a2)
    lw      $at, 0x0($t1)
    sw      $t8, 0xc($a2)
    sw      $t6, 0x4($t0)
    sw      $at, 0x0($t0)
    lw      $at, 0x8($t1)
    lw      $t6, 0xc($t1)
    lw      $t8, 0x4($v0)
    sw      $at, 0x8($t0)
    lw      $at, 0x0($v0)
    sw      $t6, 0xc($t0)
    sw      $t8, 0x4($t2)
    sw      $at, 0x0($t2)
    lw      $at, 0x8($v0)
    lw      $t8, 0xc($v0)
    addiu   $v0, $v0, 0x10
    sw      $at, 0x8($t2)
    sltu    $at, $v0, $t3
    addiu   $v1, $v1, 0x10
    addiu   $a1, $a1, 0x10
    addiu   $a2, $a2, 0x10
    addiu   $a3, $a3, 0x10
    addiu   $t0, $t0, 0x10
    addiu   $t1, $t1, 0x10
    addiu   $t2, $t2, 0x10
    bnez    $at, branch_0x801eebf4
    sw      $t8, -0x4($t2)
    ori     $at, $zero, 0xb2f0
    addu    $t5, $t5, $at
    sltu    $at, $t5, $ra
    bnezl   $at, branch_0x801eebb8
    ori     $at, $zero, 0xb240
    lui     $a3, 0x800d
    lw      $a3, 0x7ef0($a3)
    lui     $at, 0x8023
    sw      $zero, -0x7538($at)
    lui     $at, 0x8023
    addiu   $t9, $zero, 0x3c
    beqz    $a3, branch_0x801eece8
    sw      $t9, -0x77b0($at)
    lui     $s1, 0x801d
    lw      $s1, -0x1c80($s1)
    addiu   $at, $zero, 0xb
    or      $v1, $zero, $zero
    bne     $s1, $at, branch_0x801eecf8
    nop
branch_0x801eece8:
    lui     $s1, 0x801d
    lw      $s1, -0x1c80($s1)
    b       branch_0x801eecf8
    addiu   $v1, $zero, 0x1
branch_0x801eecf8:
    lui     $t3, 0x801a
    lw      $t3, -0x7fb0($t3)
    lui     $a1, 0x8023
    lui     $s0, 0x800e
    blez    $t3, branch_0x801eed2c
    addiu   $a1, $a1, 0x89e8
    lui     $t6, 0x8023
    addiu   $v0, $t6, 0x8918
    addu    $a0, $t3, $v0
branch_0x801eed1c:
    addiu   $v0, $v0, 0x1
    sltu    $at, $v0, $a0
    bnez    $at, branch_0x801eed1c
    sb      $v1, -0x1($v0)
branch_0x801eed2c:
    lw      $s0, -0x5758($s0)
    addiu   $ra, $zero, 0x1
    lui     $a2, 0x8023
    bne     $ra, $s0, branch_0x801eed54
    addiu   $a2, $a2, 0x89ec
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x8ad0
    addiu   $t7, $zero, 0x64
    b       branch_0x801eed64
    sw      $t7, 0x0($v0)
branch_0x801eed54:
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x8ad0
    addiu   $t8, $zero, 0x32
    sw      $t8, 0x0($v0)
branch_0x801eed64:
    beqz    $s1, branch_0x801eed74
    lui     $t0, 0x8023
    addiu   $at, $zero, 0xb
    bne     $s1, $at, branch_0x801eed80
branch_0x801eed74:
    lui     $at, 0x8023
    b       branch_0x801eed8c
    sw      $zero, -0x7534($at)
branch_0x801eed80:
    lw      $t9, 0x0($v0)
    lui     $at, 0x8023
    sw      $t9, -0x7534($at)
branch_0x801eed8c:
    addiu   $t0, $t0, 0x8ae0
    sw      $zero, 0x0($t0)
    sw      $zero, 0x0($a1)
    sw      $zero, 0x0($a2)
    lui     $at, 0x8023
    sw      $zero, -0x7524($at)
    lui     $t1, 0x8023
    lui     $t2, 0x8023
    lui     $t4, 0x8023
    addiu   $t4, $t4, 0x8938
    addiu   $t2, $t2, 0x893c
    addiu   $t1, $t1, 0x8940
    sw      $zero, 0x0($t1)
    sw      $zero, 0x0($t2)
    sw      $zero, 0x0($t4)
    lui     $at, 0x8023
    lui     $a1, 0x8023
    lui     $v1, 0x8023
    lui     $a0, 0x8023
    lui     $v0, 0x8023
    sw      $zero, -0x77a8($at)
    addiu   $v0, $v0, 0x8920
    addiu   $a0, $a0, 0x8928
    addiu   $v1, $v1, 0x8930
    addiu   $a1, $a1, 0x8928
branch_0x801eedf0:
    addiu   $v0, $v0, 0x4
    addiu   $v1, $v1, 0x4
    addiu   $a0, $a0, 0x4
    sw      $zero, -0x4($v1)
    sw      $zero, -0x4($a0)
    bne     $v0, $a1, branch_0x801eedf0
    sw      $zero, -0x4($v0)
    lui     $at, 0x8023
    sw      $zero, -0x77a0($at)
    blez    $s0, branch_0x801ef018
    or      $a1, $zero, $zero
    sw      $a3, 0x20($sp)
    lui     $t5, 0x800d
    lui     $t2, 0x800d
    lui     $t0, 0x8023
    lui     $a2, 0x801c
    addiu   $a2, $a2, 0x2698
    addiu   $t0, $t0, 0x8ae8
    addiu   $t2, $t2, 0x465c
    addiu   $t5, $t5, 0x4660
    addiu   $a3, $zero, 0x378
    addiu   $t4, $zero, 0x18
    addiu   $t1, $zero, 0x14
branch_0x801eee4c:
    blez    $t3, branch_0x801eeeac
    or      $a0, $zero, $zero
    sll     $t6, $t3, 3
    subu    $t6, $t6, $t3
    sll     $t6, $t6, 4
    sll     $t8, $a1, 2
    addu    $t8, $t8, $a1
    subu    $t6, $t6, $t3
    lui     $t9, 0x801c
    addiu   $v1, $t9, 0x2698
    sll     $t6, $t6, 3
    sll     $t8, $t8, 4
    addu    $v0, $t0, $t8
    addu    $a0, $t6, $v1
    lw      $t7, 0x4($v1)
branch_0x801eee88:
    addiu   $v1, $v1, 0x378
    sltu    $at, $v1, $a0
    multu   $t7, $t4
    addiu   $v0, $v0, 0x14
    mflo    $t8
    sw      $t8, -0x8($v0)
    bnezl   $at, branch_0x801eee88
    lw      $t7, 0x4($v1)
    or      $a0, $zero, $zero
branch_0x801eeeac:
    blez    $t3, branch_0x801eefc8
    lui     $v1, 0x801c
    addiu   $v1, $v1, 0x2698
branch_0x801eeeb8:
    bne     $ra, $s0, branch_0x801eef10
    nop
    lw      $t6, 0x0($t2)
    multu   $t6, $a3
    lw      $t6, 0x4($v1)
    mflo    $t9
    addu    $t7, $a2, $t9
    lw      $t8, 0x4($t7)
    slt     $at, $t8, $t6
    beqzl   $at, branch_0x801eefb8
    addiu   $a0, $a0, 0x1
    multu   $a0, $t1
    sll     $t9, $a1, 2
    addu    $t9, $t9, $a1
    sll     $t9, $t9, 4
    addu    $t7, $t0, $t9
    mflo    $t8
    addu    $v0, $t7, $t8
    lw      $t6, 0xc($v0)
    addiu   $t9, $t6, 0x4
    b       branch_0x801eefb4
    sw      $t9, 0xc($v0)
branch_0x801eef10:
    bnezl   $a1, branch_0x801eef6c
    lw      $t6, 0x0($t5)
    lw      $t7, 0x0($t2)
    multu   $t7, $a3
    lw      $t7, 0x4($v1)
    mflo    $t8
    addu    $t6, $a2, $t8
    lw      $t9, 0x4($t6)
    slt     $at, $t9, $t7
    beqzl   $at, branch_0x801eefb8
    addiu   $a0, $a0, 0x1
    multu   $a0, $t1
    sll     $t8, $a1, 2
    addu    $t8, $t8, $a1
    sll     $t8, $t8, 4
    addu    $t6, $t0, $t8
    mflo    $t9
    addu    $v0, $t6, $t9
    lw      $t7, 0xc($v0)
    addiu   $t8, $t7, 0x4
    b       branch_0x801eefb4
    sw      $t8, 0xc($v0)

.globl Function_0x801eef68
Function_0x801eef68: # 0x801eef68
    lw      $t6, 0x0($t5)
branch_0x801eef6c:
    multu   $t6, $a3
    lw      $t6, 0x4($v1)
    mflo    $t9
    addu    $t7, $a2, $t9
    lw      $t8, 0x4($t7)
    slt     $at, $t8, $t6
    beqzl   $at, branch_0x801eefb8
    addiu   $a0, $a0, 0x1
    multu   $a0, $t1
    sll     $t9, $a1, 2
    addu    $t9, $t9, $a1
    sll     $t9, $t9, 4
    addu    $t7, $t0, $t9
    mflo    $t8
    addu    $v0, $t7, $t8
    lw      $t6, 0xc($v0)
    addiu   $t9, $t6, 0x4
    sw      $t9, 0xc($v0)
branch_0x801eefb4:
    addiu   $a0, $a0, 0x1
branch_0x801eefb8:
    slt     $at, $a0, $t3
    bnez    $at, branch_0x801eeeb8
    addiu   $v1, $v1, 0x378
    or      $a0, $zero, $zero
branch_0x801eefc8:
    blez    $t3, branch_0x801ef000
    sll     $t7, $a1, 2
    addu    $t7, $t7, $a1
    sll     $t7, $t7, 4
    addu    $v0, $t0, $t7
branch_0x801eefdc:
    lw      $t8, 0xc($v0)
    addiu   $a0, $a0, 0x1
    slt     $at, $a0, $t3
    addiu   $v0, $v0, 0x14
    sw      $zero, -0x4($v0)
    sw      $zero, -0xc($v0)
    sw      $zero, -0x14($v0)
    bnez    $at, branch_0x801eefdc
    sw      $t8, -0x10($v0)
branch_0x801ef000:
    addiu   $a1, $a1, 0x1
    slt     $at, $a1, $s0
    bnez    $at, branch_0x801eee4c
    nop
    or      $a1, $zero, $zero
    lw      $a3, 0x20($sp)
branch_0x801ef018:
    lui     $v1, 0x8023
    lui     $a2, 0x8023
    lui     $v0, 0x8023
    lui     $a0, 0x8023
    addiu   $a0, $a0, 0x8bb8
    addiu   $v0, $v0, 0x8ba8
    addiu   $a2, $a2, 0x8b88
    addiu   $v1, $v1, 0x8b98
branch_0x801ef038:
    addiu   $v0, $v0, 0x4
    sltu    $at, $v0, $a0
    addiu   $v1, $v1, 0x4
    addiu   $a2, $a2, 0x4
    sw      $zero, -0x4($v1)
    sw      $zero, -0x4($a2)
    bnez    $at, branch_0x801ef038
    sw      $ra, -0x4($v0)
    lui     $at, 0x8023
    sw      $zero, -0x7760($at)
    lui     $at, 0x8023
    sw      $zero, -0x7744($at)
    lui     $at, 0x8023
    sw      $zero, -0x7728($at)
    lui     $at, 0x8023
    sw      $zero, -0x770c($at)
    lui     $at, 0x8023
    sw      $zero, -0x77ac($at)
    lui     $at, 0x8023
    lui     $v0, 0x8023
    sw      $zero, -0x77a4($at)
    addiu   $v0, $v0, 0x8bbc
    sw      $zero, 0x0($v0)
    lui     $at, 0x8023
    blez    $s0, branch_0x801ef0f4
    sw      $zero, -0x7448($at)
branch_0x801ef0a0:
    blez    $t3, branch_0x801ef0e4
    or      $a0, $zero, $zero
    sll     $t9, $a1, 2
    addu    $t9, $t9, $a1
    lui     $t7, 0x8023
    addiu   $t7, $t7, 0x8948
    sll     $t9, $t9, 4
    addu    $v0, $t9, $t7
branch_0x801ef0c0:
    addiu   $a0, $a0, 0x1
    slt     $at, $a0, $t3
    addiu   $v0, $v0, 0x14
    sw      $zero, -0x8($v0)
    sw      $zero, -0x4($v0)
    swc1    $f0, -0xc($v0)
    swc1    $f0, -0x10($v0)
    bnez    $at, branch_0x801ef0c0
    swc1    $f0, -0x14($v0)
branch_0x801ef0e4:
    addiu   $a1, $a1, 0x1
    slt     $at, $a1, $s0
    bnez    $at, branch_0x801ef0a0
    nop
branch_0x801ef0f4:
    addiu   $at, $zero, 0xb
    beq     $s1, $at, branch_0x801ef114
    lui     $v0, %hi(Unknown_0x80228bc0)
    bnez    $a3, branch_0x801ef114
    addiu   $t8, $zero, 0xdb
    lui     $at, 0x8023
    b       branch_0x801ef120
    sw      $t8, -0x76e4($at)
branch_0x801ef114:
    addiu   $t6, $zero, 0x77
    lui     $at, 0x8023
    sw      $t6, -0x76e4($at)
branch_0x801ef120:
    lui     $at, 0x8023
    lui     $v1, 0x8023
    sw      $zero, -0x7798($at)
    addiu   $v1, $v1, 0x8bc8
    addiu   $v0, $v0, %lo(Unknown_0x80228bc0)
branch_0x801ef134:
    addiu   $v0, $v0, 0x4
    bne     $v0, $v1, branch_0x801ef134
    sw      $zero, -0x4($v0)
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x40

.globl Function_0x801ef154
Function_0x801ef154: # 0x801ef154
    addiu   $sp, $sp, 0xff80
    lui     $at, 0x4180
    mtc1    $at, $a0
    sdc1    $20, 0x30($29)
    mtc1    $zero, $s4
    lui     $at, 0x4580
    lui     $a0, 0x801b
    lw      $a0, -0x1958($a0)
    mtc1    $at, $a2
    sw      $ra, 0x3c($sp)
    lui     $a1, 0x8023
    lui     $a3, 0x3faa
    ori     $a3, $a3, 0xaaab
    addiu   $a1, $a1, 0x8ae4
    lui     $a2, 0x41c0
    swc1    $f4, 0x10($sp)
    swc1    $f20, 0x18($sp)
    swc1    $f20, 0x1c($sp)
    addiu   $a0, $a0, 0x4080
    jal     Function_0x80048180
    swc1    $f6, 0x14($sp)
    lui     $at, 0x8022
    lwc1    $f8, 0x77e4($at)
    lui     $at, 0x3f80
    lui     $a0, 0x801b
    lw      $a0, -0x1958($a0)
    mtc1    $at, $t2
    mfc1    $a2, $s4
    addiu   $a1, $sp, 0x40
    lui     $a3, 0x4400
    swc1    $f20, 0x14($sp)
    swc1    $f20, 0x18($sp)
    swc1    $f20, 0x1c($sp)
    swc1    $f20, 0x20($sp)
    swc1    $f20, 0x28($sp)
    swc1    $f8, 0x10($sp)
    addiu   $a0, $a0, 0x40c0
    jal     Function_0x80048468
    swc1    $f10, 0x24($sp)
    lui     $at, 0x42f0
    mtc1    $at, $s0
    lui     $at, 0xc480
    mtc1    $at, $s2
    lui     $at, 0x4480
    mtc1    $at, $a0
    lui     $at, 0x3f80
    lui     $a0, 0x801b
    lw      $a0, -0x1958($a0)
    mtc1    $at, $a2
    lui     $a1, 0xc320
    lui     $a2, 0x4320
    lui     $a3, 0xc2f0
    swc1    $f16, 0x10($sp)
    swc1    $f18, 0x14($sp)
    swc1    $f4, 0x18($sp)
    addiu   $a0, $a0, 0x4000
    jal     Function_0x800c7234
    swc1    $f6, 0x1c($sp)
    lui     $at, 0xc480
    mtc1    $at, $t0
    lui     $at, 0x4480
    mtc1    $at, $t2
    lui     $at, 0x3f80
    lui     $a0, 0x801b
    lw      $a0, -0x1958($a0)
    mtc1    $at, $s0
    mfc1    $a1, $s4
    lui     $a2, 0x43a0
    lui     $a3, 0x4370
    swc1    $f20, 0x10($sp)
    swc1    $f8, 0x14($sp)
    swc1    $f10, 0x18($sp)
    addiu   $a0, $a0, 0x4040
    jal     Function_0x800c7234
    swc1    $f16, 0x1c($sp)
    lw      $ra, 0x3c($sp)
    ldc1    $20, 0x30($29)
    addiu   $sp, $sp, 0x80
    jr      $ra
    nop

.globl Function_0x801ef294
Function_0x801ef294: # 0x801ef294
    addiu   $sp, $sp, 0xff48
    lui     $t6, 0x800e
    lw      $t6, -0x5758($t6)
    sw      $s7, 0x60($sp)
    sw      $ra, 0x64($sp)
    sw      $s6, 0x5c($sp)
    sw      $s5, 0x58($sp)
    sw      $s4, 0x54($sp)
    sw      $s3, 0x50($sp)
    sw      $s2, 0x4c($sp)
    sw      $s1, 0x48($sp)
    sw      $s0, 0x44($sp)
    sdc1    $30, 0x38($29)
    sdc1    $28, 0x30($29)
    sdc1    $26, 0x28($29)
    sdc1    $24, 0x20($29)
    sdc1    $22, 0x18($29)
    sdc1    $20, 0x10($29)
    blez    $t6, branch_0x801efd24
    or      $s7, $zero, $zero
    addiu   $s6, $zero, 0x8
branch_0x801ef2e8:
    bnez    $s7, branch_0x801ef374
    lui     $t4, 0x8022
    lui     $v0, 0x800d
    lw      $v0, 0x465c($v0)
    lui     $t7, 0x8022
    lw      $t7, 0x36f0($t7)
    sll     $t0, $v0, 2
    subu    $t0, $t0, $v0
    sll     $t0, $t0, 3
    subu    $t0, $t0, $v0
    sll     $t0, $t0, 3
    sll     $t2, $v0, 3
    sll     $t8, $t7, 4
    addu    $t0, $t0, $v0
    subu    $t2, $t2, $v0
    addu    $t8, $t8, $t7
    sll     $t8, $t8, 2
    sll     $t0, $t0, 2
    sll     $t2, $t2, 4
    lui     $t9, 0x8022
    lui     $t1, 0x8019
    lui     $t3, 0x801c
    subu    $t0, $t0, $v0
    subu    $t2, $t2, $v0
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 2
    addiu   $t9, $t9, 0x7a40
    sll     $t0, $t0, 3
    addiu   $t1, $t1, 0x23f0
    sll     $t2, $t2, 3
    addiu   $t3, $t3, 0x2698
    addu    $s1, $t8, $t9
    addu    $s5, $t0, $t1
    b       branch_0x801ef3f0
    addu    $s2, $t2, $t3
branch_0x801ef374:
    lui     $v0, 0x800d
    lw      $v0, 0x4660($v0)
    lw      $t4, 0x36f4($t4)
    lui     $t6, 0x8022
    sll     $t7, $v0, 2
    subu    $t7, $t7, $v0
    sll     $t7, $t7, 3
    subu    $t7, $t7, $v0
    sll     $t7, $t7, 3
    sll     $t9, $v0, 3
    sll     $t5, $t4, 4
    addu    $t7, $t7, $v0
    subu    $t9, $t9, $v0
    addu    $t5, $t5, $t4
    sll     $t5, $t5, 2
    sll     $t7, $t7, 2
    sll     $t9, $t9, 4
    lui     $t8, 0x8019
    lui     $t0, 0x801c
    subu    $t7, $t7, $v0
    subu    $t9, $t9, $v0
    subu    $t5, $t5, $t4
    sll     $t5, $t5, 2
    addiu   $t6, $t6, 0x7a40
    sll     $t7, $t7, 3
    addiu   $t8, $t8, 0x23f0
    sll     $t9, $t9, 3
    addiu   $t0, $t0, 0x2698
    addu    $s1, $t5, $t6
    addu    $s5, $t7, $t8
    addu    $s2, $t9, $t0
branch_0x801ef3f0:
    lwc1    $f26, 0x64($s1)
    lwc1    $f28, 0x6c($s1)
    mul.s   $f4, $f26, $f26
    nop
    mul.s   $f6, $f28, $f28
    jal     sqrtf
    add.s   $f12, $f4, $f6
    mtc1    $zero, $t0
    nop
    c.lt.s $f8, $f0
    nop
    bc1fl   branch_0x801ef430
    lw      $t1, 0x2f0($s2)
    div.s   $f26, $f26, $f0
    div.s   $f28, $f28, $f0
    lw      $t1, 0x2f0($s2)
branch_0x801ef430:
    beqzl   $t1, branch_0x801ef464
    lw      $a0, 0xc($s2)
    lw      $v0, 0xc($s2)
    lui     $t3, 0x801b
    addiu   $t3, $t3, 0xeb80
    sll     $t2, $v0, 6
    addu    $t2, $t2, $v0
    sll     $t2, $t2, 2
    addu    $s3, $t2, $t3
    lwc1    $f0, 0x0($s3)
    b       branch_0x801ef574
    lwc1    $f2, 0x8($s3)

.globl Function_0x801ef460
Function_0x801ef460: # 0x801ef460
    lw      $a0, 0xc($s2)
branch_0x801ef464:
    lw      $a1, 0x310($s2)
    bnel    $a0, $a1, branch_0x801ef4fc
    sll     $t9, $a1, 6
    lw      $t4, 0x0($s2)
    lw      $t5, 0x320($s2)
    sll     $t6, $a0, 6
    addu    $t6, $t6, $a0
    bne     $t4, $t5, branch_0x801ef4f8
    sll     $t6, $t6, 2
    lui     $t7, 0x801b
    addiu   $t7, $t7, 0xeb80
    addu    $s3, $t6, $t7
    lwc1    $f0, 0x0($s3)
    lwc1    $f10, 0x44($s5)
    lwc1    $f2, 0x8($s3)
    lwc1    $f6, 0x4c($s5)
    sub.s   $f16, $f10, $f0
    lwc1    $f18, 0x70($s3)
    lwc1    $f10, 0x74($s3)
    sub.s   $f8, $f6, $f2
    mul.s   $f4, $f16, $f18
    mtc1    $zero, $s2
    or      $v1, $s3, $zero
    mul.s   $f16, $f8, $f10
    add.s   $f12, $f4, $f16
    c.lt.s $f18, $f12
    nop
    bc1fl   branch_0x801ef578
    lwc1    $f16, 0x4c($s1)
    lw      $v0, 0xa0($v1)
    sll     $t8, $v0, 6
    addu    $t8, $t8, $v0
    sll     $t8, $t8, 2
    addu    $s3, $t8, $t7
    lwc1    $f0, 0x0($s3)
    b       branch_0x801ef574
    lwc1    $f2, 0x8($s3)
branch_0x801ef4f8:
    sll     $t9, $a1, 6
branch_0x801ef4fc:
    addu    $t9, $t9, $a1
    lui     $t0, 0x801b
    addiu   $t0, $t0, 0xeb80
    sll     $t9, $t9, 2
    addu    $s3, $t9, $t0
    lwc1    $f0, 0x0($s3)
    lwc1    $f6, 0x44($s5)
    lwc1    $f2, 0x8($s3)
    lwc1    $f16, 0x4c($s5)
    sub.s   $f8, $f6, $f0
    lwc1    $f10, 0x70($s3)
    lwc1    $f6, 0x74($s3)
    sub.s   $f18, $f16, $f2
    mul.s   $f4, $f8, $f10
    lui     $at, 0xc380
    mtc1    $at, $t2
    mul.s   $f8, $f18, $f6
    or      $v1, $s3, $zero
    add.s   $f12, $f4, $f8
    c.lt.s $f10, $f12
    nop
    bc1fl   branch_0x801ef578
    lwc1    $f16, 0x4c($s1)
    lw      $v0, 0xa0($v1)
    sll     $t1, $v0, 6
    addu    $t1, $t1, $v0
    sll     $t1, $t1, 2
    addu    $s3, $t1, $t0
    lwc1    $f0, 0x0($s3)
    lwc1    $f2, 0x8($s3)
branch_0x801ef574:
    lwc1    $f16, 0x4c($s1)
branch_0x801ef578:
    lwc1    $f18, 0x54($s1)
    sub.s   $f20, $f0, $f16
    sub.s   $f22, $f2, $f18
    mul.s   $f6, $f20, $f20
    nop
    mul.s   $f4, $f22, $f22
    jal     sqrtf
    add.s   $f12, $f6, $f4
    mtc1    $zero, $t0
    mov.s   $f14, $f0
    c.lt.s $f8, $f0
    nop
    bc1fl   branch_0x801ef5bc
    lw      $t2, 0x9c($s3)
    div.s   $f20, $f20, $f0
    div.s   $f22, $f22, $f0
    lw      $t2, 0x9c($s3)
branch_0x801ef5bc:
    bnezl   $t2, branch_0x801ef668
    or      $s4, $zero, $zero
    lw      $t3, 0x2dc($s2)
    bnezl   $t3, branch_0x801ef668
    or      $s4, $zero, $zero
    lwc1    $f0, 0x70($s3)
    lwc1    $f2, 0x74($s3)
    lw      $v0, 0x98($s3)
    mul.s   $f10, $f0, $f26
    addiu   $at, $zero, 0x1
    mul.s   $f16, $f2, $f28
    nop
    mul.s   $f18, $f0, $f22
    nop
    mul.s   $f6, $f2, $f20
    add.s   $f30, $f10, $f16
    bnez    $v0, branch_0x801ef61c
    sub.s   $f12, $f18, $f6
    mtc1    $zero, $a0
    nop
    c.lt.s $f4, $f12
    nop
    bc1t    branch_0x801ef654
    nop
branch_0x801ef61c:
    bnel    $v0, $at, branch_0x801ef640
    mtc1    $zero, $t2
    mtc1    $zero, $t0
    nop
    c.lt.s $f12, $f8
    nop
    bc1t    branch_0x801ef654
    nop
    mtc1    $zero, $t2
branch_0x801ef640:
    nop
    c.lt.s $f30, $f10
    nop
    bc1f    branch_0x801ef65c
    nop
branch_0x801ef654:
    b       branch_0x801ef668
    or      $s4, $zero, $zero
branch_0x801ef65c:
    b       branch_0x801ef668
    addiu   $s4, $zero, 0x1

.globl Function_0x801ef664
Function_0x801ef664: # 0x801ef664
    or      $s4, $zero, $zero
branch_0x801ef668:
    mul.s   $f16, $f26, $f20
    swc1    $f14, 0x68($sp)
    mul.s   $f18, $f28, $f22
    add.s   $f24, $f16, $f18
    mov.s   $f30, $f24
    jal     Function_0x801ece20
    mov.s   $f12, $f24
    mul.s   $f8, $f26, $f22
    mtc1    $zero, $a0
    lwc1    $f14, 0x68($sp)
    mul.s   $f10, $f28, $f20
    trunc.w.s   $f6, $f0
    sub.s   $f16, $f8, $f10
    mfc1    $t5, $a2
    c.lt.s $f4, $f16
    sw      $t5, 0x2d4($s2)
    bc1f    branch_0x801ef6b8
    addiu   $t8, $zero, 0x168
    subu    $t7, $t8, $t5
    sw      $t7, 0x2d4($s2)
branch_0x801ef6b8:
    lw      $a0, 0x2d4($s2)
    lw      $a1, 0x2d0($s2)
    jal     Function_0x801ed118
    swc1    $f14, 0x68($sp)
    lwc1    $f14, 0x68($sp)
    bgez    $v0, branch_0x801ef6dc
    sra     $v1, $v0, 3
    addiu   $at, $v0, 0x7
    sra     $v1, $at, 3
branch_0x801ef6dc:
    slti    $at, $v1, 0x2
    beqz    $at, branch_0x801ef6ec
    or      $s0, $v1, $zero
    addiu   $s0, $zero, 0x2
branch_0x801ef6ec:
    slt     $at, $s0, $v0
    bnezl   $at, branch_0x801ef708
    lw      $a0, 0x2d4($s2)
    lw      $t9, 0x2d4($s2)
    b       branch_0x801ef72c
    sw      $t9, 0x2d0($s2)

.globl Function_0x801ef704
Function_0x801ef704: # 0x801ef704
    lw      $a0, 0x2d4($s2)
branch_0x801ef708:
    lw      $a1, 0x2d0($s2)
    jal     Function_0x801ed270
    swc1    $f14, 0x68($sp)
    multu   $v0, $s0
    lw      $t1, 0x2d0($s2)
    lwc1    $f14, 0x68($sp)
    mflo    $t0
    addu    $t2, $t1, $t0
    sw      $t2, 0x2d0($s2)
branch_0x801ef72c:
    lui     $at, 0x8022
    lwc1    $f18, 0x77e8($at)
    c.lt.s $f24, $f18
    nop
    bc1f    branch_0x801ef87c
    nop
    lw      $t3, 0x9c($s3)
    addiu   $at, $zero, 0x1
    bne     $t3, $at, branch_0x801ef87c
    nop
    lwc1    $f6, 0xc($s3)
    lwc1    $f8, 0x4c($s1)
    lwc1    $f10, 0x14($s3)
    lwc1    $f4, 0x54($s1)
    sub.s   $f20, $f6, $f8
    sub.s   $f22, $f10, $f4
    mul.s   $f16, $f20, $f20
    nop
    mul.s   $f18, $f22, $f22
    jal     sqrtf
    add.s   $f12, $f16, $f18
    mtc1    $zero, $a2
    mov.s   $f14, $f0
    c.lt.s $f6, $f0
    nop
    bc1f    branch_0x801ef7a0
    nop
    div.s   $f20, $f20, $f0
    div.s   $f22, $f22, $f0
branch_0x801ef7a0:
    mul.s   $f8, $f26, $f22
    lui     $at, 0x8022
    lwc1    $f18, 0x77ec($at)
    mul.s   $f10, $f28, $f20
    nop
    mul.s   $f4, $f26, $f20
    nop
    mul.s   $f16, $f28, $f22
    sub.s   $f2, $f8, $f10
    add.s   $f30, $f4, $f16
    c.lt.s $f30, $f18
    nop
    bc1f    branch_0x801ef87c
    nop
    lwc1    $f6, 0x18($s3)
    lwc1    $f8, 0x4c($s1)
    lwc1    $f10, 0x20($s3)
    lwc1    $f4, 0x54($s1)
    sub.s   $f20, $f6, $f8
    swc1    $f2, 0x80($sp)
    sub.s   $f22, $f10, $f4
    mul.s   $f16, $f20, $f20
    nop
    mul.s   $f18, $f22, $f22
    jal     sqrtf
    add.s   $f12, $f16, $f18
    mtc1    $zero, $a2
    mtc1    $zero, $t0
    lwc1    $f2, 0x80($sp)
    c.lt.s $f6, $f0
    mov.s   $f14, $f0
    bc1fl   branch_0x801ef830
    c.lt.s $f2, $f8
    div.s   $f20, $f20, $f0
    div.s   $f22, $f22, $f0
    c.lt.s $f2, $f8
branch_0x801ef830:
    nop
    bc1f    branch_0x801ef86c
    nop
    mul.s   $f4, $f26, $f22
    mtc1    $zero, $t2
    lui     $at, 0x3f80
    mul.s   $f16, $f28, $f20
    sub.s   $f18, $f4, $f16
    c.lt.s $f10, $f18
    nop
    bc1f    branch_0x801ef86c
    nop
    mtc1    $at, $fp
    b       branch_0x801ef87c
    nop
branch_0x801ef86c:
    mul.s   $f6, $f26, $f20
    nop
    mul.s   $f8, $f28, $f22
    add.s   $f30, $f6, $f8
branch_0x801ef87c:
    lui     $at, 0x8022
    lwc1    $f4, 0x77f0($at)
    or      $v0, $zero, $zero
    c.lt.s $f30, $f4
    nop
    bc1f    branch_0x801ef89c
    nop
    addiu   $v0, $zero, 0x1
branch_0x801ef89c:
    beqz    $v0, branch_0x801ef8d0
    or      $v1, $v0, $zero
    lui     $at, 0x4500
    mtc1    $at, $s0
    or      $v0, $zero, $zero
    c.lt.s $f16, $f14
    nop
    bc1f    branch_0x801ef8c4
    nop
    addiu   $v0, $zero, 0x1
branch_0x801ef8c4:
    bnez    $v0, branch_0x801ef8d0
    or      $v1, $v0, $zero
    sltiu   $v1, $s4, 0x1
branch_0x801ef8d0:
    lw      $t4, 0x31c($s2)
    or      $s4, $v1, $zero
    beqzl   $t4, branch_0x801ef8e8
    lwc1    $f12, 0x4c($s1)
    or      $s4, $zero, $zero
    lwc1    $f12, 0x4c($s1)
branch_0x801ef8e8:
    jal     Function_0x800743e8
    lwc1    $f14, 0x54($s1)
    beqz    $v0, branch_0x801ef8fc
    nop
    or      $s4, $zero, $zero
branch_0x801ef8fc:
    lui     $v0, 0x801d
    lw      $v0, -0x1c80($v0)
    addiu   $at, $zero, 0xb
    bne     $v0, $at, branch_0x801efa38
    lui     $v1, 0x801c
    lw      $v1, -0x860($v1)
    lui     $s0, 0x801c
    sw      $zero, 0x98($sp)
    blez    $v1, branch_0x801efa28
    addiu   $s0, $s0, 0xc6a0
    lw      $t5, 0x4c($s0)
branch_0x801ef928:
    sll     $t8, $v1, 2
    subu    $t8, $t8, $v1
    beq     $s6, $t5, branch_0x801ef950
    sll     $t8, $t8, 4
    addu    $t8, $t8, $v1
    lui     $t6, 0x801c
    addiu   $t6, $t6, 0xc6a0
    sll     $t8, $t8, 2
    b       branch_0x801efa10
    addu    $v0, $t8, $t6
branch_0x801ef950:
    lwc1    $f10, 0x0($s0)
    lwc1    $f18, 0x4c($s1)
    lwc1    $f6, 0x8($s0)
    lwc1    $f8, 0x54($s1)
    sub.s   $f20, $f10, $f18
    sub.s   $f22, $f6, $f8
    mul.s   $f4, $f20, $f20
    nop
    mul.s   $f16, $f22, $f22
    jal     sqrtf
    add.s   $f12, $f4, $f16
    mtc1    $zero, $t2
    lui     $v1, 0x801c
    c.lt.s $f10, $f0
    nop
    bc1f    branch_0x801ef99c
    nop
    div.s   $f20, $f20, $f0
    div.s   $f22, $f22, $f0
branch_0x801ef99c:
    mul.s   $f18, $f26, $f20
    lui     $at, 0x8022
    lwc1    $f4, 0x77f4($at)
    mul.s   $f6, $f28, $f22
    lui     $at, 0x4580
    add.s   $f8, $f18, $f6
    c.le.s $f4, $f8
    nop
    bc1f    branch_0x801ef9ec
    nop
    mtc1    $at, $s0
    nop
    c.lt.s $f0, $f16
    nop
    bc1f    branch_0x801ef9ec
    addiu   $t7, $zero, 0x1
    lui     $v0, 0x801d
    sw      $t7, 0x98($sp)
    b       branch_0x801efa28
    lw      $v0, -0x1c80($v0)
branch_0x801ef9ec:
    lw      $v1, -0x860($v1)
    lui     $t1, 0x801c
    addiu   $t1, $t1, 0xc6a0
    sll     $t9, $v1, 2
    subu    $t9, $t9, $v1
    sll     $t9, $t9, 4
    addu    $t9, $t9, $v1
    sll     $t9, $t9, 2
    addu    $v0, $t9, $t1
branch_0x801efa10:
    addiu   $s0, $s0, 0xc4
    sltu    $at, $s0, $v0
    bnezl   $at, branch_0x801ef928
    lw      $t5, 0x4c($s0)
    lui     $v0, 0x801d
    lw      $v0, -0x1c80($v0)
branch_0x801efa28:
    lw      $t0, 0x98($sp)
    beqzl   $t0, branch_0x801efa3c
    lw      $t2, 0x2f0($s2)
    or      $s4, $zero, $zero
branch_0x801efa38:
    lw      $t2, 0x2f0($s2)
branch_0x801efa3c:
    bnezl   $t2, branch_0x801efa64
    addiu   $s4, $zero, 0x1
    lw      $t3, 0x2e4($s2)
    bnezl   $t3, branch_0x801efa64
    addiu   $s4, $zero, 0x1
    lw      $t4, 0x328($s2)
    slti    $at, $t4, 0x28
    bnezl   $at, branch_0x801efa68
    addiu   $at, $zero, 0xb
    addiu   $s4, $zero, 0x1
branch_0x801efa64:
    addiu   $at, $zero, 0xb
branch_0x801efa68:
    beq     $v0, $at, branch_0x801efa80
    lui     $t5, 0x800d
    lw      $t5, 0x7ef0($t5)
    bnez    $t5, branch_0x801efa80
    nop
    or      $s4, $zero, $zero
branch_0x801efa80:
    beqz    $s4, branch_0x801efb00
    lui     $t8, 0x800e
    lh      $t8, -0x5718($t8)
    lui     $t6, 0x800d
    beqz    $t8, branch_0x801efb00
    nop
    lw      $t6, 0x7ef0($t6)
    addiu   $at, $zero, 0x3
    bne     $t6, $at, branch_0x801efb00
    nop
    lw      $t7, 0x0($s2)
    slti    $at, $t7, 0x2
    bnez    $at, branch_0x801efb00
    lui     $at, 0x8022
    lwc1    $f18, 0x77f8($at)
    lwc1    $f10, 0x44($s5)
    lui     $at, 0x452f
    mtc1    $at, $t0
    sub.s   $f20, $f10, $f18
    lwc1    $f6, 0x4c($s5)
    lui     $at, 0x8022
    lwc1    $f18, 0x77fc($at)
    sub.s   $f22, $f6, $f8
    mul.s   $f4, $f20, $f20
    nop
    mul.s   $f16, $f22, $f22
    add.s   $f10, $f4, $f16
    c.lt.s $f10, $f18
    nop
    bc1f    branch_0x801efb00
    nop
    or      $s4, $zero, $zero
branch_0x801efb00:
    beqz    $s4, branch_0x801efb2c
    or      $v0, $zero, $zero
    lw      $v0, 0x2d8($s2)
    lui     $at, 0x7fff
    ori     $at, $at, 0xffff
    slt     $at, $v0, $at
    beqz    $at, branch_0x801efb30
    addiu   $t9, $v0, 0x1
    sw      $t9, 0x2d8($s2)
    b       branch_0x801efb30
    or      $v0, $t9, $zero
branch_0x801efb2c:
    sw      $zero, 0x2d8($s2)
branch_0x801efb30:
    slti    $at, $v0, 0x8
    beqzl   $at, branch_0x801efb50
    lw      $t1, 0x2e0($s2)
    lw      $v0, 0x2e0($s2)
    slti    $at, $v0, 0x2
    bnez    $at, branch_0x801efb88
    nop
    lw      $t1, 0x2e0($s2)
branch_0x801efb50:
    bnezl   $t1, branch_0x801efb60
    lw      $v0, 0x2dc($s2)
    sw      $s6, 0x2e0($s2)
    lw      $v0, 0x2dc($s2)
branch_0x801efb60:
    slti    $at, $v0, 0x4
    beqz    $at, branch_0x801efb70
    addiu   $t0, $v0, 0x1
    sw      $t0, 0x2dc($s2)
branch_0x801efb70:
    lw      $v0, 0x2e0($s2)
    slti    $at, $v0, 0x2
    bnez    $at, branch_0x801efba8
    addiu   $t2, $v0, 0xffff
    b       branch_0x801efba8
    sw      $t2, 0x2e0($s2)
branch_0x801efb88:
    bnez    $v0, branch_0x801efba4
    addiu   $t4, $v0, 0xffff
    lw      $v0, 0x2dc($s2)
    blez    $v0, branch_0x801efba8
    addiu   $t3, $v0, 0xffff
    b       branch_0x801efba8
    sw      $t3, 0x2dc($s2)
branch_0x801efba4:
    sw      $t4, 0x2e0($s2)
branch_0x801efba8:
    lwc1    $f26, 0x6c($s5)
    lwc1    $f28, 0x74($s5)
    mul.s   $f6, $f26, $f26
    nop
    mul.s   $f8, $f28, $f28
    jal     sqrtf
    add.s   $f12, $f6, $f8
    mtc1    $zero, $a0
    nop
    c.lt.s $f4, $f0
    nop
    bc1fl   branch_0x801efbe8
    lwc1    $f16, 0x0($s3)
    div.s   $f26, $f26, $f0
    div.s   $f28, $f28, $f0
    lwc1    $f16, 0x0($s3)
branch_0x801efbe8:
    lwc1    $f10, 0x44($s5)
    lwc1    $f18, 0x8($s3)
    lwc1    $f6, 0x4c($s5)
    sub.s   $f20, $f16, $f10
    sub.s   $f22, $f18, $f6
    mul.s   $f8, $f20, $f20
    nop
    mul.s   $f4, $f22, $f22
    jal     sqrtf
    add.s   $f12, $f8, $f4
    mtc1    $zero, $s0
    nop
    c.lt.s $f16, $f0
    nop
    bc1f    branch_0x801efc30
    nop
    div.s   $f20, $f20, $f0
    div.s   $f22, $f22, $f0
branch_0x801efc30:
    mul.s   $f10, $f26, $f20
    nop
    mul.s   $f18, $f28, $f22
    jal     Function_0x801ece20
    add.s   $f12, $f10, $f18
    lui     $at, 0x42c8
    mtc1    $at, $a2
    lui     $at, 0x8022
    c.le.s $f6, $f0
    nop
    bc1fl   branch_0x801efccc
    sw      $zero, 0x328($s2)
    lwc1    $f8, 0xb90($s5)
    lwc1    $f4, 0x7800($at)
    lui     $at, 0x4120
    mtc1    $at, $t2
    mul.s   $f16, $f8, $f4
    c.le.s $f10, $f16
    nop
    bc1fl   branch_0x801efccc
    sw      $zero, 0x328($s2)
    lwc1    $f12, 0x44($s5)
    jal     Function_0x800743e8
    lwc1    $f14, 0x4c($s5)
    bnez    $v0, branch_0x801efcc8
    lui     $t5, 0x800d
    lw      $t5, 0x7ef0($t5)
    beqzl   $t5, branch_0x801efccc
    sw      $zero, 0x328($s2)
    lw      $v0, 0x328($s2)
    lui     $at, 0x7fff
    ori     $at, $at, 0xffff
    slt     $at, $v0, $at
    beqz    $at, branch_0x801efcd0
    addiu   $t8, $v0, 0x1
    sw      $t8, 0x328($s2)
    b       branch_0x801efcd0
    or      $v0, $t8, $zero
branch_0x801efcc8:
    sw      $zero, 0x328($s2)
branch_0x801efccc:
    or      $v0, $zero, $zero
branch_0x801efcd0:
    slti    $at, $v0, 0x28
    bnez    $at, branch_0x801efd0c
    addiu   $at, $zero, 0x14
    div     $zero, $v0, $at
    mfhi    $t6
    lui     $t7, 0x801d
    bnez    $t6, branch_0x801efd0c
    nop
    lw      $t7, -0x1c50($t7)
    addiu   $at, $zero, 0x3
    addiu   $a0, $zero, 0x35
    bne     $t7, $at, branch_0x801efd0c
    nop
    jal     Function_0x800c3594
    or      $a1, $s7, $zero
branch_0x801efd0c:
    lui     $t9, 0x800e
    lw      $t9, -0x5758($t9)
    addiu   $s7, $s7, 0x1
    slt     $at, $s7, $t9
    bnez    $at, branch_0x801ef2e8
    nop
branch_0x801efd24:
    lw      $ra, 0x64($sp)
    ldc1    $20, 0x10($29)
    ldc1    $22, 0x18($29)
    ldc1    $24, 0x20($29)
    ldc1    $26, 0x28($29)
    ldc1    $28, 0x30($29)
    ldc1    $30, 0x38($29)
    lw      $s0, 0x44($sp)
    lw      $s1, 0x48($sp)
    lw      $s2, 0x4c($sp)
    lw      $s3, 0x50($sp)
    lw      $s4, 0x54($sp)
    lw      $s5, 0x58($sp)
    lw      $s6, 0x5c($sp)
    lw      $s7, 0x60($sp)
    jr      $ra
    addiu   $sp, $sp, 0xb8

.globl Function_0x801efd68
Function_0x801efd68: # 0x801efd68
    addiu   $sp, $sp, 0xffa8
    sw      $ra, 0x54($sp)
    sw      $fp, 0x50($sp)
    sw      $s7, 0x4c($sp)
    sw      $s6, 0x48($sp)
    sw      $s5, 0x44($sp)
    sw      $s4, 0x40($sp)
    sw      $s3, 0x3c($sp)
    sw      $s2, 0x38($sp)
    sw      $s1, 0x34($sp)
    sw      $s0, 0x30($sp)
    sdc1    $22, 0x28($29)
    sdc1    $20, 0x20($29)
    sw      $a0, 0x58($sp)
    lw      $s0, 0x0($a0)
    lui     $t8, 0x101
    addiu   $t8, $t8, 0x4618
    or      $v0, $s0, $zero
    lui     $t7, 0x600
    addiu   $s0, $s0, 0x8
    sw      $t7, 0x0($v0)
    sw      $t8, 0x4($v0)
    or      $v1, $s0, $zero
    lui     $t9, 0xb400
    sw      $t9, 0x0($v1)
    lui     $t3, 0x8023
    lhu     $t3, -0x751c($t3)
    lui     $a1, 0x800e
    addiu   $s0, $s0, 0x8
    sw      $t3, 0x4($v1)
    lw      $a1, -0x5758($a1)
    or      $s2, $zero, $zero
    lui     $fp, 0xe700
    blez    $a1, branch_0x801f0094
    lui     $at, 0x3f80
    lui     $s6, 0x801c
    lui     $s4, 0x380
    lui     $s3, 0x801b
    lui     $t1, 0xfcff
    mtc1    $at, $s6
    mtc1    $zero, $s4
    ori     $t1, $t1, 0xffff
    addiu   $s3, $s3, 0xe6b0
    ori     $s4, $s4, 0x10
    addiu   $s6, $s6, 0x2698
    addiu   $s7, $zero, 0x378
branch_0x801efe20:
    bnez    $s2, branch_0x801efe44
    lui     $t6, 0x800d
    lui     $t4, 0x800d
    lw      $t4, 0x465c($t4)
    multu   $t4, $s7
    mflo    $t5
    addu    $t0, $s6, $t5
    b       branch_0x801efe5c
    lw      $s1, 0x2dc($t0)
branch_0x801efe44:
    lw      $t6, 0x4660($t6)
    multu   $t6, $s7
    mflo    $t7
    addu    $t0, $s6, $t7
    nop
    lw      $s1, 0x2dc($t0)
branch_0x801efe5c:
    sll     $t8, $s1, 8
    subu    $t8, $t8, $s1
    or      $s1, $t8, $zero
    bgez    $s1, branch_0x801efe78
    sra     $t9, $s1, 2
    addiu   $at, $s1, 0x3
    sra     $t9, $at, 2
branch_0x801efe78:
    blez    $t9, branch_0x801f0084
    or      $s1, $t9, $zero
    lw      $t3, 0x2f4($t0)
    bnezl   $t3, branch_0x801f0088
    addiu   $s2, $s2, 0x1
    lw      $t4, 0x2ec($t0)
    lui     $s5, 0x101
    addiu   $at, $zero, 0x1
    bnezl   $t4, branch_0x801f0088
    addiu   $s2, $s2, 0x1
    bne     $a1, $at, branch_0x801efec4
    addiu   $s5, $s5, 0x528
    or      $v0, $s0, $zero
    lui     $t5, 0x101
    addiu   $t5, $t5, 0x4460
    sw      $t5, 0x4($v0)
    sw      $s4, 0x0($v0)
    b       branch_0x801efefc
    addiu   $s0, $s0, 0x8
branch_0x801efec4:
    bnez    $s2, branch_0x801efee8
    or      $v0, $s0, $zero
    or      $v0, $s0, $zero
    lui     $t6, 0x101
    addiu   $t6, $t6, 0x4470
    sw      $t6, 0x4($v0)
    sw      $s4, 0x0($v0)
    b       branch_0x801efefc
    addiu   $s0, $s0, 0x8
branch_0x801efee8:
    lui     $t7, 0x101
    addiu   $t7, $t7, 0x4480
    sw      $t7, 0x4($v0)
    addiu   $s0, $s0, 0x8
    sw      $s4, 0x0($v0)
branch_0x801efefc:
    or      $v0, $s0, $zero
    sw      $fp, 0x0($v0)
    sw      $zero, 0x4($v0)
    lw      $v1, 0x328($t0)
    addiu   $s0, $s0, 0x8
    or      $v0, $s0, $zero
    slti    $at, $v1, 0x28
    bnez    $at, branch_0x801eff4c
    lui     $t3, 0xfffe
    addiu   $at, $zero, 0x14
    div     $zero, $v1, $at
    mfhi    $t8
    lui     $t9, 0xfffd
    bnez    $t8, branch_0x801eff4c
    ori     $t9, $t9, 0xf6fb
    or      $v0, $s0, $zero
    sw      $t1, 0x0($v0)
    sw      $t9, 0x4($v0)
    b       branch_0x801eff5c
    addiu   $s0, $s0, 0x8
branch_0x801eff4c:
    ori     $t3, $t3, 0x773b
    sw      $t3, 0x4($v0)
    addiu   $s0, $s0, 0x8
    sw      $t1, 0x0($v0)
branch_0x801eff5c:
    lw      $t7, 0x2d0($t0)
    lw      $t5, 0x0($s3)
    lui     $t4, 0x801b
    mtc1    $t7, $a0
    lw      $t4, -0x1958($t4)
    sll     $t6, $t5, 6
    cvt.s.w $f4, $f4
    mfc1    $a2, $s4
    mfc1    $a3, $s6
    addu    $a0, $t4, $t6
    addiu   $a0, $a0, 0x4140
    swc1    $f20, 0x10($sp)
    mfc1    $a1, $a0
    jal     Function_0x801edfb8
    nop
    lui     $t8, 0x104
    ori     $t8, $t8, 0x40
    or      $v0, $s0, $zero
    sw      $t8, 0x0($v0)
    lw      $t9, 0x0($s3)
    lui     $t4, 0x500
    addiu   $t4, $t4, 0x0
    sll     $t3, $t9, 6
    addiu   $t5, $t3, 0x4140
    addu    $t6, $t5, $t4
    sw      $t6, 0x4($v0)
    lw      $t7, 0x0($s3)
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    lui     $at, 0xff96
    addiu   $t8, $t7, 0x1
    sw      $t8, 0x0($s3)
    addiu   $s0, $s0, 0x8
    ori     $at, $at, 0x9600
    andi    $t3, $s1, 0xff
    or      $t5, $t3, $at
    or      $a0, $s0, $zero
    lui     $t1, 0xfcff
    lui     $t2, 0xb900
    sw      $zero, 0x4($v1)
    sw      $fp, 0x0($v1)
    lui     $t9, 0xfa00
    slti    $at, $s1, 0xff
    ori     $t2, $t2, 0x31d
    ori     $t1, $t1, 0xffff
    sw      $t9, 0x0($a0)
    sw      $t5, 0x4($a0)
    beqz    $at, branch_0x801f003c
    addiu   $s0, $s0, 0x8
    or      $v0, $s0, $zero
    lui     $t4, 0x50
    ori     $t4, $t4, 0x41c8
    sw      $t4, 0x4($v0)
    sw      $t2, 0x0($v0)
    b       branch_0x801f0054
    addiu   $s0, $s0, 0x8
branch_0x801f003c:
    or      $v0, $s0, $zero
    lui     $t6, 0x55
    ori     $t6, $t6, 0x2078
    sw      $t6, 0x4($v0)
    sw      $t2, 0x0($v0)
    addiu   $s0, $s0, 0x8
branch_0x801f0054:
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    lui     $t7, 0x600
    sw      $t7, 0x0($v0)
    sw      $s5, 0x4($v0)
    or      $v1, $s0, $zero
    lui     $t8, 0xbd00
    sw      $t8, 0x0($v1)
    sw      $zero, 0x4($v1)
    lui     $a1, 0x800e
    lw      $a1, -0x5758($a1)
    addiu   $s0, $s0, 0x8
branch_0x801f0084:
    addiu   $s2, $s2, 0x1
branch_0x801f0088:
    slt     $at, $s2, $a1
    bnez    $at, branch_0x801efe20
    nop
branch_0x801f0094:
    or      $v0, $s0, $zero
    lui     $s4, 0x380
    addiu   $s0, $s0, 0x8
    lui     $t9, 0x101
    ori     $s4, $s4, 0x10
    addiu   $t9, $t9, 0x4450
    or      $v1, $s0, $zero
    sw      $t9, 0x4($v0)
    sw      $s4, 0x0($v0)
    addiu   $s0, $s0, 0x8
    lui     $t3, 0x103
    lui     $t5, 0x301
    addiu   $t5, $t5, 0xe008
    ori     $t3, $t3, 0x40
    or      $a0, $s0, $zero
    sw      $t3, 0x0($v1)
    sw      $t5, 0x4($v1)
    lui     $t4, 0x101
    lui     $t6, 0x301
    addiu   $t6, $t6, 0xe088
    ori     $t4, $t4, 0x40
    addiu   $s0, $s0, 0x8
    sw      $t4, 0x0($a0)
    sw      $t6, 0x4($a0)
    or      $a1, $s0, $zero
    lui     $t7, 0xb400
    sw      $t7, 0x0($a1)
    lui     $t8, 0x8022
    lw      $t8, 0x36f0($t8)
    lui     $t3, 0x8022
    addiu   $s0, $s0, 0x8
    sll     $t9, $t8, 4
    addu    $t9, $t9, $t8
    sll     $t9, $t9, 2
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 2
    addu    $t3, $t3, $t9
    lhu     $t3, 0x7b24($t3)
    sw      $t3, 0x4($a1)
    lw      $t5, 0x58($sp)
    sw      $s0, 0x0($t5)
    lw      $ra, 0x54($sp)
    lw      $fp, 0x50($sp)
    lw      $s7, 0x4c($sp)
    lw      $s6, 0x48($sp)
    lw      $s5, 0x44($sp)
    lw      $s4, 0x40($sp)
    lw      $s3, 0x3c($sp)
    lw      $s2, 0x38($sp)
    lw      $s1, 0x34($sp)
    lw      $s0, 0x30($sp)
    ldc1    $22, 0x28($29)
    ldc1    $20, 0x20($29)
    jr      $ra
    addiu   $sp, $sp, 0x58

.globl Function_0x801f0170
Function_0x801f0170: # 0x801f0170
    lui     $v0, 0x801d
    lw      $v0, -0x1c50($v0)
    addiu   $sp, $sp, 0xffd0
    addiu   $t1, $zero, 0x1
    sw      $ra, 0x1c($sp)
    beq     $t1, $v0, branch_0x801f0198
    sw      $s0, 0x18($sp)
    addiu   $s0, $zero, 0x2
    bne     $s0, $v0, branch_0x801f03d4
    lui     $t6, 0x8023
branch_0x801f0198:
    lui     $t6, 0x8023
    lw      $t6, -0x7538($t6)
    addiu   $s0, $zero, 0x2
    bnez    $t6, branch_0x801f01d4
    nop
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x8acc
    lw      $t7, 0x0($v0)
    lui     $at, 0x8023
    addiu   $t8, $t7, 0xfffd
    bgtz    $t8, branch_0x801f041c
    sw      $t8, 0x0($v0)
    sw      $zero, 0x0($v0)
    b       branch_0x801f041c
    sw      $t1, -0x7538($at)
branch_0x801f01d4:
    lui     $t6, 0x8023
    lw      $t6, -0x77b0($t6)
    addiu   $at, $zero, 0xf
    div     $zero, $t6, $at
    mfhi    $t7
    sw      $t6, 0x20($sp)
    bnezl   $t7, branch_0x801f0244
    lw      $a2, 0x20($sp)
    beq     $s0, $v0, branch_0x801f0228
    addiu   $a0, $zero, 0x23
    addiu   $at, $zero, 0xf
    div     $zero, $t6, $at
    mflo    $a1
    addiu   $a1, $a1, 0xffff
    jal     Function_0x800c3594
    addiu   $a0, $zero, 0x22
    lui     $t8, 0x8023
    lw      $t8, -0x77b0($t8)
    addiu   $t1, $zero, 0x1
    b       branch_0x801f0240
    sw      $t8, 0x20($sp)
branch_0x801f0228:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    lui     $t9, 0x8023
    lw      $t9, -0x77b0($t9)
    addiu   $t1, $zero, 0x1
    sw      $t9, 0x20($sp)
branch_0x801f0240:
    lw      $a2, 0x20($sp)
branch_0x801f0244:
    lui     $t2, 0x801a
    addiu   $a2, $a2, 0xfff1
    bgezl   $a2, branch_0x801f025c
    slti    $at, $a2, 0xf
    subu    $a2, $zero, $a2
    slti    $at, $a2, 0xf
branch_0x801f025c:
    beqzl   $at, branch_0x801f0384
    lw      $t8, 0x20($sp)
    lw      $t2, -0x7fb0($t2)
    lui     $a3, 0x8019
    addiu   $a3, $a3, 0x23f0
    blez    $t2, branch_0x801f0380
    or      $v1, $zero, $zero
    lui     $t3, 0x8023
    lui     $a0, 0x801c
    addiu   $a0, $a0, 0x2698
    addiu   $t3, $t3, 0x8918
    addiu   $ra, $zero, 0x3
    addiu   $t5, $zero, 0x4
    addiu   $t4, $zero, 0x5
    addiu   $a1, $zero, 0x378
branch_0x801f0298:
    lhu     $t7, 0xb58($a3)
    addu    $t0, $t3, $v1
    andi    $t6, $t7, 0xa000
    beqzl   $t6, branch_0x801f0374
    addiu   $v1, $v1, 0x1
    lb      $t8, 0x0($t0)
    bnezl   $t8, branch_0x801f0374
    addiu   $v1, $v1, 0x1
    bgtz    $a2, branch_0x801f02d4
    slti    $at, $a2, 0x2
    multu   $v1, $a1
    mflo    $t9
    addu    $t7, $a0, $t9
    b       branch_0x801f034c
    sw      $t4, 0x12c($t7)
branch_0x801f02d4:
    beqzl   $at, branch_0x801f02f4
    slti    $at, $a2, 0x3
    multu   $v1, $a1
    mflo    $t6
    addu    $t8, $a0, $t6
    b       branch_0x801f034c
    sw      $t5, 0x12c($t8)

.globl Function_0x801f02f0
Function_0x801f02f0: # 0x801f02f0
    slti    $at, $a2, 0x3
branch_0x801f02f4:
    beqzl   $at, branch_0x801f0314
    slti    $at, $a2, 0x4
    multu   $v1, $a1
    mflo    $t9
    addu    $t7, $a0, $t9
    b       branch_0x801f034c
    sw      $ra, 0x12c($t7)

.globl Function_0x801f0310
Function_0x801f0310: # 0x801f0310
    slti    $at, $a2, 0x4
branch_0x801f0314:
    beqzl   $at, branch_0x801f0334
    slti    $at, $a2, 0x5
    multu   $v1, $a1
    mflo    $t6
    addu    $t8, $a0, $t6
    b       branch_0x801f034c
    sw      $s0, 0x12c($t8)

.globl Function_0x801f0330
Function_0x801f0330: # 0x801f0330
    slti    $at, $a2, 0x5
branch_0x801f0334:
    beqzl   $at, branch_0x801f0350
    slti    $at, $a2, 0x5
    multu   $v1, $a1
    mflo    $t9
    addu    $t7, $a0, $t9
    sw      $t1, 0x12c($t7)
branch_0x801f034c:
    slti    $at, $a2, 0x5
branch_0x801f0350:
    beqzl   $at, branch_0x801f0370
    sb      $t1, 0x0($t0)
    multu   $v1, $a1
    mflo    $t6
    addu    $v0, $a0, $t6
    sw      $t1, 0x314($v0)
    sw      $t1, 0x28($v0)
    sb      $t1, 0x0($t0)
branch_0x801f0370:
    addiu   $v1, $v1, 0x1
branch_0x801f0374:
    slt     $at, $v1, $t2
    bnez    $at, branch_0x801f0298
    addiu   $a3, $a3, 0x1718
branch_0x801f0380:
    lw      $t8, 0x20($sp)
branch_0x801f0384:
    lui     $at, 0x8023
    addiu   $ra, $zero, 0x3
    addiu   $t9, $t8, 0xffff
    sw      $t9, -0x77b0($at)
    addiu   $at, $zero, 0xf
    bne     $t9, $at, branch_0x801f03b4
    sw      $t9, 0x20($sp)
    lui     $at, 0x801d
    sw      $s0, -0x1c50($at)
    lui     $at, 0x800d
    b       branch_0x801f041c
    sw      $zero, 0x7efc($at)
branch_0x801f03b4:
    lw      $t7, 0x20($sp)
    lui     $at, 0x801d
    bgtzl   $t7, branch_0x801f0420
    lw      $ra, 0x1c($sp)
    sw      $ra, -0x1c50($at)
    lui     $at, 0x8023
    b       branch_0x801f041c
    sw      $s0, -0x7538($at)
branch_0x801f03d4:
    lw      $t6, -0x7538($t6)
    lui     $t8, 0x801d
    bnel    $s0, $t6, branch_0x801f0420
    lw      $ra, 0x1c($sp)
    lh      $t8, -0x1c7c($t8)
    addiu   $at, $zero, 0xffff
    lui     $v0, 0x8023
    bne     $t8, $at, branch_0x801f041c
    addiu   $v0, $v0, 0x8acc
    lw      $t9, 0x0($v0)
    lui     $t8, 0x8023
    addiu   $t7, $t9, 0x6
    sw      $t7, 0x0($v0)
    lw      $t8, -0x7530($t8)
    slt     $at, $t7, $t8
    bnez    $at, branch_0x801f041c
    lui     $at, 0x8023
    sw      $zero, -0x7538($at)
branch_0x801f041c:
    lw      $ra, 0x1c($sp)
branch_0x801f0420:
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x30
    jr      $ra
    nop

.globl Function_0x801f0430
Function_0x801f0430: # 0x801f0430
    lui     $v1, 0x8023
    lw      $v1, -0x77b0($v1)
    addiu   $at, $zero, 0xf
    addiu   $sp, $sp, 0xfe68
    addiu   $v1, $v1, 0xffff
    div     $zero, $v1, $at
    sw      $ra, 0x5c($sp)
    sw      $fp, 0x58($sp)
    sw      $s7, 0x54($sp)
    sw      $s6, 0x50($sp)
    sw      $s5, 0x4c($sp)
    sw      $s4, 0x48($sp)
    sw      $s3, 0x44($sp)
    sw      $s2, 0x40($sp)
    sw      $s1, 0x3c($sp)
    sw      $s0, 0x38($sp)
    sw      $a0, 0x198($sp)
    mflo    $v1
    lw      $v0, 0x0($a0)
    bgez    $v1, branch_0x801f0488
    lui     $s5, 0x8023
    or      $v1, $zero, $zero
branch_0x801f0488:
    addiu   $s5, $s5, 0x8ac8
    lw      $t8, 0x0($s5)
    lui     $s0, 0x801b
    addiu   $s0, $s0, 0xe6b0
    bnez    $t8, branch_0x801f04a4
    lui     $s1, 0x801b
    addiu   $v1, $zero, 0x4
branch_0x801f04a4:
    blez    $v1, branch_0x801f04cc
    addiu   $s1, $s1, 0xe6a8
    slti    $at, $v1, 0x4
    beqz    $at, branch_0x801f04cc
    lui     $a0, 0x101
    addiu   $a0, $a0, 0x3ba8
    lui     $a1, 0x101
    addiu   $a1, $a1, 0x33a8
    b       branch_0x801f04e0
    sw      $a0, 0x188($sp)
branch_0x801f04cc:
    lui     $a1, 0x101
    addiu   $a1, $a1, 0x33a8
    lui     $a0, 0x101
    addiu   $a0, $a0, 0x3ba8
    sw      $a1, 0x188($sp)
branch_0x801f04e0:
    blez    $v1, branch_0x801f04fc
    lui     $s3, 0x8023
    slti    $at, $v1, 0x3
    beqzl   $at, branch_0x801f0500
    sw      $a1, 0x184($sp)
    b       branch_0x801f0500
    sw      $a0, 0x184($sp)
branch_0x801f04fc:
    sw      $a1, 0x184($sp)
branch_0x801f0500:
    addiu   $at, $zero, 0x1
    bne     $v1, $at, branch_0x801f0514
    addiu   $s3, $s3, 0x8ae4
    b       branch_0x801f0518
    sw      $a0, 0x180($sp)
branch_0x801f0514:
    sw      $a1, 0x180($sp)
branch_0x801f0518:
    bnez    $v1, branch_0x801f0530
    lui     $s6, 0x600
    lui     $t9, 0x101
    addiu   $t9, $t9, 0x2ba8
    b       branch_0x801f053c
    sw      $t9, 0x17c($sp)
branch_0x801f0530:
    lui     $t6, 0x101
    addiu   $t6, $t6, 0x23a8
    sw      $t6, 0x17c($sp)
branch_0x801f053c:
    or      $v1, $v0, $zero
    lui     $t7, 0x101
    addiu   $t7, $t7, 0x4658
    sw      $t7, 0x4($v1)
    sw      $s6, 0x0($v1)
    lw      $t9, 0x0($s0)
    lui     $at, 0x4180
    mtc1    $at, $a0
    lw      $t8, 0x0($s1)
    mtc1    $zero, $zero
    lui     $at, 0x4480
    mtc1    $at, $a2
    sll     $t6, $t9, 6
    addiu   $v0, $v0, 0x8
    lui     $a3, 0x3faa
    addu    $a0, $t8, $t6
    addiu   $a0, $a0, 0x4140
    ori     $a3, $a3, 0xaaab
    sw      $v0, 0x178($sp)
    or      $a1, $s3, $zero
    lui     $a2, 0x42f0
    swc1    $f4, 0x10($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    jal     Function_0x80048180
    swc1    $f6, 0x14($sp)
    lw      $v1, 0x178($sp)
    lui     $t7, 0x103
    ori     $t7, $t7, 0x40
    sw      $t7, 0x0($v1)
    lw      $t9, 0x0($s0)
    lui     $s2, 0x500
    addiu   $s2, $s2, 0x0
    sll     $t8, $t9, 6
    addu    $t6, $s2, $t8
    addiu   $t7, $t6, 0x4140
    sw      $t7, 0x4($v1)
    lw      $t9, 0x0($s0)
    lui     $fp, 0x800e
    addiu   $fp, $fp, 0xa8a8
    addiu   $t8, $t9, 0x1
    sw      $t8, 0x0($s0)
    sll     $t9, $t8, 6
    lw      $t8, 0x0($fp)
    addiu   $s7, $zero, 0x2
    lui     $at, 0x41a0
    xor     $t7, $s7, $t8
    sltiu   $t7, $t7, 0x1
    mtc1    $t7, $t0
    mtc1    $at, $s0
    mtc1    $zero, $zero
    cvt.s.w $f10, $f8
    lui     $at, 0x4270
    mtc1    $at, $a0
    lw      $t6, 0x0($s1)
    lui     $at, 0x3f80
    mtc1    $at, $t0
    mul.s   $f18, $f10, $f16
    addiu   $v0, $v1, 0x8
    mfc1    $a2, $zero
    mfc1    $a3, $zero
    addu    $a0, $t6, $t9
    addiu   $a0, $a0, 0x4140
    sw      $v0, 0x178($sp)
    add.s   $f6, $f18, $f4
    addiu   $a1, $sp, 0x138
    swc1    $f0, 0x14($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f6, 0x10($sp)
    swc1    $f0, 0x1c($sp)
    swc1    $f0, 0x20($sp)
    swc1    $f0, 0x28($sp)
    jal     Function_0x80048468
    swc1    $f8, 0x24($sp)
    lw      $v1, 0x178($sp)
    lui     $t6, 0x102
    ori     $t6, $t6, 0x40
    sw      $t6, 0x0($v1)
    lw      $t9, 0x0($s0)
    addiu   $t0, $v1, 0x8
    lui     $s4, 0x8023
    sll     $t8, $t9, 6
    addu    $t7, $s2, $t8
    addiu   $t6, $t7, 0x4140
    sw      $t6, 0x4($v1)
    lw      $t9, 0x0($s0)
    lui     $t7, 0xb400
    addiu   $s4, $s4, 0x8acc
    addiu   $t8, $t9, 0x1
    sw      $t8, 0x0($s0)
    sw      $t7, 0x0($t0)
    lhu     $t6, 0x0($s3)
    mtc1    $zero, $zero
    addiu   $v0, $t0, 0x8
    sw      $t6, 0x4($t0)
    lw      $t6, 0x0($s4)
    lw      $t8, 0x0($s0)
    lw      $t9, 0x0($s1)
    mtc1    $t6, $t2
    sll     $t7, $t8, 6
    mfc1    $a1, $zero
    cvt.s.w $f10, $f10
    mfc1    $a3, $zero
    addu    $a0, $t9, $t7
    addiu   $a0, $a0, 0x4140
    sw      $v0, 0x178($sp)
    mfc1    $a2, $t2
    jal     Function_0x801edd8c
    nop
    lw      $v0, 0x178($sp)
    lui     $s3, 0x100
    ori     $s3, $s3, 0x40
    or      $v1, $v0, $zero
    sw      $s3, 0x0($v1)
    lw      $t8, 0x0($s0)
    lui     $at, 0x42c8
    mtc1    $at, $a0
    sll     $t9, $t8, 6
    addu    $t7, $s2, $t9
    addiu   $t6, $t7, 0x4140
    sw      $t6, 0x4($v1)
    lw      $t7, 0x0($s4)
    lui     $at, 0x42f0
    mtc1    $zero, $zero
    mtc1    $t7, $s0
    lw      $t8, 0x0($s0)
    mtc1    $at, $t0
    cvt.s.w $f18, $f16
    lw      $t6, 0x0($s5)
    mfc1    $a2, $zero
    addiu   $t9, $t8, 0x1
    sw      $t9, 0x0($s0)
    lui     $a3, 0x3f80
    div.s   $f6, $f18, $f4
    addiu   $v0, $v0, 0x8
    mul.s   $f2, $f6, $f8
    bnel    $s7, $t6, branch_0x801f076c
    lw      $t9, 0x0($s0)
    neg.s   $f2, $f2
    lw      $t9, 0x0($s0)
branch_0x801f076c:
    lw      $t8, 0x0($s1)
    mfc1    $a1, $v0
    sll     $t7, $t9, 6
    addu    $a0, $t8, $t7
    addiu   $a0, $a0, 0x4140
    swc1    $f0, 0x10($sp)
    jal     Function_0x801edfb8
    sw      $v0, 0x178($sp)
    lw      $v0, 0x178($sp)
    lui     $s7, 0x380
    ori     $s7, $s7, 0x10
    or      $v1, $v0, $zero
    sw      $s3, 0x0($v1)
    lw      $t6, 0x0($s0)
    or      $s5, $zero, $zero
    addiu   $v0, $v0, 0x8
    sll     $t9, $t6, 6
    addu    $t8, $s2, $t9
    addiu   $t7, $t8, 0x4140
    sw      $t7, 0x4($v1)
    lw      $t6, 0x0($s0)
    lw      $a2, 0x0($fp)
    lui     $fp, 0x101
    addiu   $t9, $t6, 0x1
    blez    $a2, branch_0x801f0afc
    sw      $t9, 0x0($s0)
    lui     $t8, 0x101
    lui     $t7, 0x101
    lui     $t6, 0x101
    addiu   $t6, $t6, 0x9f8
    addiu   $t7, $t7, 0x998
    addiu   $t8, $t8, 0x730
    lui     $s4, 0x7
    lui     $s2, 0x8
    lui     $s1, 0xf510
    lui     $ra, 0x73f
    lui     $t3, 0x708
    ori     $t3, $t3, 0x200
    ori     $ra, $ra, 0xf100
    ori     $s1, $s1, 0x1000
    ori     $s2, $s2, 0x200
    ori     $s4, $s4, 0xc07c
    sw      $t8, 0x68($sp)
    sw      $t7, 0x64($sp)
    sw      $t6, 0x60($sp)
    addiu   $fp, $fp, 0x6c0
    lui     $s3, 0xf200
    lui     $s0, 0xe700
    lui     $t5, 0xf300
    lui     $t4, 0xe600
    lui     $t2, 0xf510
    lui     $t1, 0xfd10
    addiu   $at, $zero, 0x1
branch_0x801f0840:
    bne     $a2, $at, branch_0x801f0860
    or      $v1, $v0, $zero
    lui     $t9, 0x101
    addiu   $t9, $t9, 0x4490
    sw      $t9, 0x4($v1)
    addiu   $v0, $v0, 0x8
    b       branch_0x801f08c8
    sw      $s7, 0x0($v1)
branch_0x801f0860:
    bnez    $s5, branch_0x801f0884
    or      $v1, $v0, $zero
    or      $v1, $v0, $zero
    lui     $t8, 0x101
    addiu   $t8, $t8, 0x44a0
    sw      $t8, 0x4($v1)
    sw      $s7, 0x0($v1)
    b       branch_0x801f08c8
    addiu   $v0, $v0, 0x8
branch_0x801f0884:
    addiu   $v0, $v0, 0x8
    or      $a0, $v0, $zero
    sw      $s0, 0x0($v1)
    sw      $zero, 0x4($v1)
    addiu   $v0, $v0, 0x8
    lui     $t7, 0xed02
    lui     $t6, 0x4d
    ori     $t6, $t6, 0xc394
    ori     $t7, $t7, 0x1e8
    or      $a1, $v0, $zero
    sw      $t7, 0x0($a0)
    sw      $t6, 0x4($a0)
    lui     $t9, 0x101
    addiu   $t9, $t9, 0x44b0
    sw      $t9, 0x4($a1)
    sw      $s7, 0x0($a1)
    addiu   $v0, $v0, 0x8
branch_0x801f08c8:
    or      $v1, $v0, $zero
    sw      $t1, 0x0($v1)
    lw      $t8, 0x188($sp)
    addiu   $v0, $v0, 0x8
    or      $a0, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $t8, 0x4($v1)
    or      $a1, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $t3, 0x4($a0)
    sw      $t2, 0x0($a0)
    or      $a2, $v0, $zero
    sw      $zero, 0x4($a1)
    sw      $t4, 0x0($a1)
    addiu   $v0, $v0, 0x8
    or      $a3, $v0, $zero
    sw      $ra, 0x4($a2)
    sw      $t5, 0x0($a2)
    addiu   $v0, $v0, 0x8
    or      $v1, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $zero, 0x4($a3)
    sw      $s0, 0x0($a3)
    or      $a0, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $s2, 0x4($v1)
    sw      $s1, 0x0($v1)
    or      $a1, $v0, $zero
    sw      $s4, 0x4($a0)
    sw      $s3, 0x0($a0)
    addiu   $v0, $v0, 0x8
    sw      $fp, 0x4($a1)
    sw      $s6, 0x0($a1)
    or      $a2, $v0, $zero
    sw      $t1, 0x0($a2)
    lw      $t7, 0x184($sp)
    addiu   $v0, $v0, 0x8
    or      $t0, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $t7, 0x4($a2)
    or      $v1, $v0, $zero
    sw      $t3, 0x4($t0)
    sw      $t2, 0x0($t0)
    addiu   $v0, $v0, 0x8
    or      $a0, $v0, $zero
    sw      $zero, 0x4($v1)
    sw      $t4, 0x0($v1)
    addiu   $v0, $v0, 0x8
    or      $a1, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $ra, 0x4($a0)
    sw      $t5, 0x0($a0)
    or      $a2, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $zero, 0x4($a1)
    sw      $s0, 0x0($a1)
    or      $a3, $v0, $zero
    sw      $s2, 0x4($a2)
    sw      $s1, 0x0($a2)
    addiu   $v0, $v0, 0x8
    sw      $s4, 0x4($a3)
    sw      $s3, 0x0($a3)
    or      $v1, $v0, $zero
    sw      $s6, 0x0($v1)
    lw      $t6, 0x68($sp)
    addiu   $v0, $v0, 0x8
    or      $a0, $v0, $zero
    sw      $t6, 0x4($v1)
    sw      $t1, 0x0($a0)
    lw      $t9, 0x180($sp)
    addiu   $v0, $v0, 0x8
    or      $a1, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $t9, 0x4($a0)
    or      $a2, $v0, $zero
    sw      $t3, 0x4($a1)
    sw      $t2, 0x0($a1)
    addiu   $v0, $v0, 0x8
    or      $t0, $v0, $zero
    sw      $zero, 0x4($a2)
    sw      $t4, 0x0($a2)
    addiu   $v0, $v0, 0x8
    or      $v1, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $ra, 0x4($t0)
    sw      $t5, 0x0($t0)
    or      $a0, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $zero, 0x4($v1)
    sw      $s0, 0x0($v1)
    or      $a1, $v0, $zero
    sw      $s2, 0x4($a0)
    sw      $s1, 0x0($a0)
    addiu   $v0, $v0, 0x8
    sw      $s4, 0x4($a1)
    sw      $s3, 0x0($a1)
    or      $a2, $v0, $zero
    sw      $s6, 0x0($a2)
    lw      $t8, 0x64($sp)
    addiu   $v0, $v0, 0x8
    or      $a3, $v0, $zero
    sw      $t8, 0x4($a2)
    sw      $t1, 0x0($a3)
    lw      $t7, 0x17c($sp)
    addiu   $v0, $v0, 0x8
    or      $v1, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $t7, 0x4($a3)
    or      $a0, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $t3, 0x4($v1)
    sw      $t2, 0x0($v1)
    or      $a1, $v0, $zero
    sw      $zero, 0x4($a0)
    sw      $t4, 0x0($a0)
    addiu   $v0, $v0, 0x8
    or      $a2, $v0, $zero
    sw      $ra, 0x4($a1)
    sw      $t5, 0x0($a1)
    addiu   $v0, $v0, 0x8
    or      $v1, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $zero, 0x4($a2)
    sw      $s0, 0x0($a2)
    or      $a0, $v0, $zero
    sw      $s2, 0x4($v1)
    sw      $s1, 0x0($v1)
    addiu   $v0, $v0, 0x8
    sw      $s4, 0x4($a0)
    sw      $s3, 0x0($a0)
    or      $a1, $v0, $zero
    sw      $s6, 0x0($a1)
    lw      $t6, 0x60($sp)
    lui     $a2, 0x800e
    addiu   $s5, $s5, 0x1
    sw      $t6, 0x4($a1)
    lw      $a2, -0x5758($a2)
    addiu   $v0, $v0, 0x8
    slt     $at, $s5, $a2
    bnezl   $at, branch_0x801f0840
    addiu   $at, $zero, 0x1
branch_0x801f0afc:
    lui     $s7, 0x380
    or      $v1, $v0, $zero
    lui     $t9, 0x101
    ori     $s7, $s7, 0x10
    addiu   $t9, $t9, 0x4450
    sw      $t9, 0x4($v1)
    sw      $s7, 0x0($v1)
    lui     $t8, 0x800e
    lw      $t8, -0x5758($t8)
    addiu   $at, $zero, 0x2
    lui     $s0, 0xe700
    bne     $t8, $at, branch_0x801f0b60
    addiu   $v0, $v0, 0x8
    or      $v1, $v0, $zero
    addiu   $v0, $v0, 0x8
    or      $a0, $v0, $zero
    sw      $s0, 0x0($v1)
    sw      $zero, 0x4($v1)
    lui     $t7, 0xed02
    lui     $t6, 0x4d
    ori     $t6, $t6, 0xc394
    ori     $t7, $t7, 0x30
    sw      $t7, 0x0($a0)
    sw      $t6, 0x4($a0)
    addiu   $v0, $v0, 0x8
branch_0x801f0b60:
    or      $v1, $v0, $zero
    lui     $t9, 0x103
    lui     $t8, 0x301
    addiu   $t8, $t8, 0xe008
    ori     $t9, $t9, 0x40
    sw      $t9, 0x0($v1)
    sw      $t8, 0x4($v1)
    addiu   $a0, $v0, 0x8
    lui     $t7, 0x101
    lui     $t6, 0x301
    addiu   $t6, $t6, 0xe088
    ori     $t7, $t7, 0x40
    sw      $t7, 0x0($a0)
    sw      $t6, 0x4($a0)
    addiu   $a1, $a0, 0x8
    lui     $t9, 0xb400
    sw      $t9, 0x0($a1)
    lui     $t8, 0x8022
    lw      $t8, 0x36f0($t8)
    lui     $t6, 0x8022
    addiu   $v0, $a1, 0x8
    sll     $t7, $t8, 4
    addu    $t7, $t7, $t8
    sll     $t7, $t7, 2
    subu    $t7, $t7, $t8
    sll     $t7, $t7, 2
    addu    $t6, $t6, $t7
    lhu     $t6, 0x7b24($t6)
    sw      $t6, 0x4($a1)
    lw      $t9, 0x198($sp)
    sw      $v0, 0x0($t9)
    lw      $ra, 0x5c($sp)
    lw      $fp, 0x58($sp)
    lw      $s7, 0x54($sp)
    lw      $s6, 0x50($sp)
    lw      $s5, 0x4c($sp)
    lw      $s4, 0x48($sp)
    lw      $s3, 0x44($sp)
    lw      $s2, 0x40($sp)
    lw      $s1, 0x3c($sp)
    lw      $s0, 0x38($sp)
    jr      $ra
    addiu   $sp, $sp, 0x198

.globl Function_0x801f0c0c
Function_0x801f0c0c: # 0x801f0c0c
    addiu   $sp, $sp, 0xff60
    lui     $a3, 0x800e
    addiu   $a3, $a3, 0xa8a8
    lw      $a0, 0x0($a3)
    sw      $s7, 0x64($sp)
    sw      $ra, 0x6c($sp)
    sw      $fp, 0x68($sp)
    sw      $s6, 0x60($sp)
    sw      $s5, 0x5c($sp)
    sw      $s4, 0x58($sp)
    sw      $s3, 0x54($sp)
    sw      $s2, 0x50($sp)
    sw      $s1, 0x4c($sp)
    sw      $s0, 0x48($sp)
    sdc1    $30, 0x40($29)
    sdc1    $28, 0x38($29)
    sdc1    $26, 0x30($29)
    sdc1    $24, 0x28($29)
    sdc1    $22, 0x20($29)
    sdc1    $20, 0x18($29)
    blez    $a0, branch_0x801f11fc
    or      $s7, $zero, $zero
    lui     $at, 0x4320
    mtc1    $at, $fp
    lui     $at, 0x8022
    lwc1    $f28, 0x7804($at)
    lui     $at, 0x4108
    mtc1    $at, $k0
    lui     $at, 0x3f00
    mtc1    $at, $t8
    lui     $at, 0x8022
    lwc1    $f22, 0x7808($at)
    lui     $at, 0x3f80
    lui     $t6, 0x8023
    addiu   $t6, $t6, 0x89f0
    lui     $fp, 0x800d
    mtc1    $at, $s4
    addiu   $fp, $fp, 0x7ef4
    sw      $t6, 0x70($sp)
    addiu   $s6, $zero, 0x54
    addiu   $s5, $zero, 0x2
    addiu   $s4, $zero, 0x3
    addiu   $s3, $zero, 0x1
branch_0x801f0cb8:
    lui     $a3, 0x800e
    bnez    $s7, branch_0x801f0cf0
    addiu   $a3, $a3, 0xa8a8
    lui     $t7, 0x800d
    lw      $t7, 0x465c($t7)
    lui     $t9, 0x801c
    addiu   $t9, $t9, 0x2698
    sll     $t8, $t7, 3
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 4
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 3
    b       branch_0x801f0d18
    addu    $s2, $t8, $t9
branch_0x801f0cf0:
    lui     $t0, 0x800d
    lw      $t0, 0x4660($t0)
    lui     $t2, 0x801c
    addiu   $t2, $t2, 0x2698
    sll     $t1, $t0, 3
    subu    $t1, $t1, $t0
    sll     $t1, $t1, 4
    subu    $t1, $t1, $t0
    sll     $t1, $t1, 3
    addu    $s2, $t1, $t2
branch_0x801f0d18:
    lw      $t3, 0x28($s2)
    sll     $t4, $s7, 2
    addu    $t4, $t4, $s7
    beqz    $t3, branch_0x801f1034
    or      $s1, $zero, $zero
    sll     $t4, $t4, 2
    addu    $t4, $t4, $s7
    lui     $t5, 0x8023
    addiu   $t5, $t5, 0x89f0
    sll     $t4, $t4, 2
    addu    $v1, $t4, $t5
    lw      $t6, 0x18($v1)
    lui     $a1, 0x8023
    addiu   $a1, $a1, 0x89e8
    beqz    $t6, branch_0x801f0d64
    lui     $at, 0x8023
    lw      $t7, 0x13c($s2)
    bnezl   $t7, branch_0x801f1038
    lw      $s0, 0x70($sp)
branch_0x801f0d64:
    sw      $zero, 0x0($a1)
    sw      $zero, -0x7614($at)
    lw      $v0, 0x28($s2)
    bne     $s3, $v0, branch_0x801f0e64
    nop
    lw      $t9, 0x314($s2)
    lui     $at, 0x4280
    bnezl   $t9, branch_0x801f0d98
    lw      $t1, 0x34($v1)
    lw      $t0, 0x34($v1)
    bne     $s4, $t0, branch_0x801f0e64
    nop
    lw      $t1, 0x34($v1)
branch_0x801f0d98:
    mtc1    $at, $a0
    addiu   $v0, $v1, 0x38
    bne     $s4, $t1, branch_0x801f0db4
    addiu   $t4, $zero, 0xc
    sw      $zero, 0x34($v1)
    sw      $s3, 0x12c($s2)
    lw      $a0, 0x0($a3)
branch_0x801f0db4:
    bne     $s3, $a0, branch_0x801f0dc4
    sw      $s5, 0x50($v1)
    b       branch_0x801f0dc8
    swc1    $f20, 0x10($v0)
branch_0x801f0dc4:
    swc1    $f22, 0x10($v0)
branch_0x801f0dc8:
    lwc1    $f0, 0x10($v0)
    lui     $at, 0x4120
    mtc1    $at, $t0
    mul.s   $f6, $f0, $f4
    lui     $at, 0x4396
    mul.s   $f10, $f0, $f8
    swc1    $f6, 0x8($v0)
    swc1    $f10, 0xc($v0)
    lw      $t2, 0x0($a3)
    bne     $s3, $t2, branch_0x801f0e0c
    nop
    mtc1    $at, $s0
    lui     $at, 0x434e
    mtc1    $at, $s2
    swc1    $f16, 0x0($v0)
    b       branch_0x801f0e44
    swc1    $f18, 0x4($v0)
branch_0x801f0e0c:
    bnez    $s7, branch_0x801f0e30
    lui     $at, 0x4396
    lui     $at, 0x4396
    mtc1    $at, $a0
    lui     $at, 0x42d2
    mtc1    $at, $a2
    swc1    $f4, 0x0($v0)
    b       branch_0x801f0e44
    swc1    $f6, 0x4($v0)
branch_0x801f0e30:
    mtc1    $at, $t0
    lui     $at, 0x4357
    mtc1    $at, $t2
    swc1    $f8, 0x0($v0)
    swc1    $f10, 0x4($v0)
branch_0x801f0e44:
    lw      $t3, 0x12c($s2)
    slti    $at, $t3, 0x5
    beqz    $at, branch_0x801f0e5c
    nop
    b       branch_0x801f1034
    sw      $t4, 0x14($v0)
branch_0x801f0e5c:
    b       branch_0x801f1034
    sw      $zero, 0x14($v0)
branch_0x801f0e64:
    bnel    $s5, $v0, branch_0x801f1038
    lw      $s0, 0x70($sp)
    lw      $t5, 0x0($fp)
    lw      $t6, 0x134($s2)
    slt     $at, $t5, $t6
    bnezl   $at, branch_0x801f1038
    lw      $s0, 0x70($sp)
    sw      $s3, 0x18($v1)
    lw      $t7, 0x12c($s2)
    slti    $at, $t7, 0x5
    bnez    $at, branch_0x801f0e98
    nop
    sw      $zero, 0x50($v1)
branch_0x801f0e98:
    bne     $s3, $a0, branch_0x801f0ed0
    lui     $at, 0x429a
    mtc1    $at, $s0
    swc1    $f30, 0x0($v1)
    lw      $t8, 0x0($fp)
    swc1    $f16, 0x4($v1)
    lw      $t9, 0x134($s2)
    addiu   $a0, $zero, 0xd3
    subu    $v0, $t8, $t9
    sll     $t0, $v0, 3
    subu    $t0, $t0, $v0
    sll     $t0, $t0, 1
    b       branch_0x801f0f38
    addiu   $v0, $t0, 0x3e
branch_0x801f0ed0:
    bnez    $s7, branch_0x801f0f0c
    lui     $at, 0x4312
    lui     $at, 0x4210
    mtc1    $at, $s2
    swc1    $f30, 0x0($v1)
    lw      $t1, 0x0($fp)
    swc1    $f18, 0x4($v1)
    lw      $t2, 0x134($s2)
    addiu   $a0, $zero, 0x6e
    subu    $v0, $t1, $t2
    sll     $t3, $v0, 3
    subu    $t3, $t3, $v0
    sll     $t3, $t3, 1
    b       branch_0x801f0f38
    addiu   $v0, $t3, 0x1e
branch_0x801f0f0c:
    mtc1    $at, $a0
    swc1    $f30, 0x0($v1)
    lw      $t4, 0x0($fp)
    swc1    $f4, 0x4($v1)
    lw      $t5, 0x134($s2)
    addiu   $a0, $zero, 0xdc
    subu    $v0, $t4, $t5
    sll     $t6, $v0, 3
    subu    $t6, $t6, $v0
    sll     $t6, $t6, 1
    addiu   $v0, $t6, 0x1e
branch_0x801f0f38:
    mtc1    $v0, $a2
    mtc1    $a0, $a0
    lwc1    $f10, 0x0($v1)
    cvt.s.w $f8, $f6
    lui     $at, 0x4100
    mtc1    $at, $zero
    addiu   $a2, $zero, 0x10
    sw      $a2, 0x14($v1)
    cvt.s.w $f6, $f4
    sub.s   $f16, $f8, $f10
    lwc1    $f8, 0x4($v1)
    sub.s   $f10, $f6, $f8
    div.s   $f18, $f16, $f0
    div.s   $f16, $f10, $f0
    swc1    $f18, 0x8($v1)
    swc1    $f16, 0xc($v1)
    lw      $t7, 0x12c($s2)
    blezl   $t7, branch_0x801f1038
    lw      $s0, 0x70($sp)
    lw      $t8, 0x34($v1)
    addiu   $t9, $zero, 0xc6
    lui     $t0, 0x800e
    beql    $s4, $t8, branch_0x801f1038
    lw      $s0, 0x70($sp)
    sw      $s4, 0x34($v1)
    lw      $t0, -0x5758($t0)
    mtc1    $t9, $s2
    addiu   $v0, $v1, 0x1c
    bne     $s3, $t0, branch_0x801f0fc8
    cvt.s.w $f0, $f18
    lui     $at, 0x42f2
    mtc1    $at, $a0
    swc1    $f30, 0x0($v0)
    addiu   $a0, $zero, 0xd3
    b       branch_0x801f0ff8
    swc1    $f4, 0x4($v0)
branch_0x801f0fc8:
    bnez    $s7, branch_0x801f0fe8
    lui     $at, 0x433c
    lui     $at, 0x429c
    mtc1    $at, $a2
    swc1    $f30, 0x0($v0)
    addiu   $a0, $zero, 0x6e
    b       branch_0x801f0ff8
    swc1    $f6, 0x4($v0)
branch_0x801f0fe8:
    mtc1    $at, $t0
    swc1    $f30, 0x0($v0)
    addiu   $a0, $zero, 0xdc
    swc1    $f8, 0x4($v0)
branch_0x801f0ff8:
    lwc1    $f10, 0x0($v0)
    lui     $at, 0x4100
    mtc1    $at, $s2
    sub.s   $f16, $f0, $f10
    mtc1    $a0, $a2
    lwc1    $f10, 0x4($v0)
    sw      $a2, 0x14($v0)
    div.s   $f4, $f16, $f18
    mtc1    $at, $s2
    swc1    $f20, 0x10($v0)
    cvt.s.w $f8, $f6
    sub.s   $f16, $f8, $f10
    swc1    $f4, 0x8($v0)
    div.s   $f4, $f16, $f18
    swc1    $f4, 0xc($v0)
branch_0x801f1034:
    lw      $s0, 0x70($sp)
branch_0x801f1038:
    lw      $v0, 0x18($s0)
    beqzl   $v0, branch_0x801f11d4
    addiu   $s1, $s1, 0x1c
    bne     $s3, $v0, branch_0x801f10d8
    nop
    lw      $v0, 0x14($s0)
    slti    $at, $v0, 0x9
    beqzl   $at, branch_0x801f1084
    mtc1    $v0, $a2
    lwc1    $f6, 0x0($s0)
    lwc1    $f8, 0x8($s0)
    lwc1    $f16, 0x4($s0)
    lwc1    $f18, 0xc($s0)
    add.s   $f10, $f6, $f8
    lw      $v0, 0x14($s0)
    add.s   $f4, $f16, $f18
    swc1    $f10, 0x0($s0)
    swc1    $f4, 0x4($s0)
    mtc1    $v0, $a2
branch_0x801f1084:
    nop
    cvt.s.w $f8, $f6
    add.s   $f10, $f8, $f24
    div.s   $f0, $f10, $f26
    c.lt.s $f20, $f0
    swc1    $f0, 0x10($s0)
    bc1fl   branch_0x801f10b0
    addiu   $t1, $v0, 0xffff
    swc1    $f20, 0x10($s0)
    lw      $v0, 0x14($s0)
    addiu   $t1, $v0, 0xffff
branch_0x801f10b0:
    bgez    $t1, branch_0x801f11d0
    sw      $t1, 0x14($s0)
    sw      $zero, 0x18($s0)
    lw      $t3, 0x13c($s2)
    beqzl   $t3, branch_0x801f11d4
    addiu   $s1, $s1, 0x1c
    jal     Function_0x80076270
    or      $a0, $s2, $zero
    b       branch_0x801f11d4
    addiu   $s1, $s1, 0x1c
branch_0x801f10d8:
    bne     $s4, $v0, branch_0x801f1158
    nop
    lw      $v0, 0x14($s0)
    slti    $at, $v0, 0x9
    beqzl   $at, branch_0x801f1118
    mtc1    $v0, $s0
    lwc1    $f16, 0x0($s0)
    lwc1    $f18, 0x8($s0)
    lwc1    $f6, 0x4($s0)
    lwc1    $f8, 0xc($s0)
    add.s   $f4, $f16, $f18
    lw      $v0, 0x14($s0)
    add.s   $f10, $f6, $f8
    swc1    $f4, 0x0($s0)
    swc1    $f10, 0x4($s0)
    mtc1    $v0, $s0
branch_0x801f1118:
    nop
    cvt.s.w $f18, $f16
    add.s   $f4, $f18, $f24
    div.s   $f0, $f4, $f26
    c.lt.s $f20, $f0
    swc1    $f0, 0x10($s0)
    bc1fl   branch_0x801f1144
    addiu   $t4, $v0, 0xffff
    swc1    $f20, 0x10($s0)
    lw      $v0, 0x14($s0)
    addiu   $t4, $v0, 0xffff
branch_0x801f1144:
    bgez    $t4, branch_0x801f11d0
    sw      $t4, 0x14($s0)
    sw      $zero, 0x18($s0)
    b       branch_0x801f11d0
    sw      $zero, 0x12c($s2)
branch_0x801f1158:
    bnel    $s5, $v0, branch_0x801f11d4
    addiu   $s1, $s1, 0x1c
    lw      $t6, 0x12c($s2)
    slti    $at, $t6, 0x5
    beqzl   $at, branch_0x801f118c
    lw      $v0, 0x14($s0)
    lw      $t7, 0x14($s0)
    addiu   $t8, $t7, 0xffff
    bgez    $t8, branch_0x801f11d0
    sw      $t8, 0x14($s0)
    b       branch_0x801f11d0
    sw      $zero, 0x18($s0)

.globl Function_0x801f1188
Function_0x801f1188: # 0x801f1188
    lw      $v0, 0x14($s0)
branch_0x801f118c:
    slti    $at, $v0, 0xff
    beqz    $at, branch_0x801f11a0
    addiu   $t0, $v0, 0x1
    sw      $t0, 0x14($s0)
    or      $v0, $t0, $zero
branch_0x801f11a0:
    slti    $at, $v0, 0x14
    bnezl   $at, branch_0x801f11d4
    addiu   $s1, $s1, 0x1c
    lwc1    $f6, 0x10($s0)
    sub.s   $f8, $f6, $f28
    swc1    $f8, 0x10($s0)
    lwc1    $f10, 0x10($s0)
    c.lt.s $f10, $f22
    nop
    bc1fl   branch_0x801f11d4
    addiu   $s1, $s1, 0x1c
    swc1    $f22, 0x10($s0)
branch_0x801f11d0:
    addiu   $s1, $s1, 0x1c
branch_0x801f11d4:
    bne     $s1, $s6, branch_0x801f1038
    addiu   $s0, $s0, 0x1c
    lui     $a0, 0x800e
    lw      $t1, 0x70($sp)
    lw      $a0, -0x5758($a0)
    addiu   $s7, $s7, 0x1
    addiu   $t2, $t1, 0x54
    slt     $at, $s7, $a0
    bnez    $at, branch_0x801f0cb8
    sw      $t2, 0x70($sp)
branch_0x801f11fc:
    lw      $ra, 0x6c($sp)
    ldc1    $20, 0x18($29)
    ldc1    $22, 0x20($29)
    ldc1    $24, 0x28($29)
    ldc1    $26, 0x30($29)
    ldc1    $28, 0x38($29)
    ldc1    $30, 0x40($29)
    lw      $s0, 0x48($sp)
    lw      $s1, 0x4c($sp)
    lw      $s2, 0x50($sp)
    lw      $s3, 0x54($sp)
    lw      $s4, 0x58($sp)
    lw      $s5, 0x5c($sp)
    lw      $s6, 0x60($sp)
    lw      $s7, 0x64($sp)
    lw      $fp, 0x68($sp)
    jr      $ra
    addiu   $sp, $sp, 0xa0

.globl Function_0x801f1244
Function_0x801f1244: # 0x801f1244
    lui     $t7, 0x8023
    lw      $t7, -0x7618($t7)
    addiu   $t8, $zero, 0x2
    addiu   $sp, $sp, 0xff18
    subu    $t9, $t8, $t7
    mtc1    $t9, $a0
    sdc1    $22, 0x20($29)
    lui     $at, 0x3f80
    cvt.s.w $f6, $f4
    mtc1    $at, $s6
    lui     $at, 0x4000
    mtc1    $at, $t0
    sw      $ra, 0x4c($sp)
    sw      $fp, 0x48($sp)
    div.s   $f0, $f6, $f8
    sw      $s7, 0x44($sp)
    sw      $s6, 0x40($sp)
    sw      $s5, 0x3c($sp)
    sw      $s4, 0x38($sp)
    sw      $s3, 0x34($sp)
    sw      $s2, 0x30($sp)
    sw      $s1, 0x2c($sp)
    sw      $s0, 0x28($sp)
    sdc1    $20, 0x18($29)
    sw      $a0, 0xe8($sp)
    lui     $s1, 0x8023
    lui     $s2, 0x8022
    lui     $s3, 0x8022
    lui     $s7, 0x801b
    lui     $fp, 0x8022
    lw      $s0, 0x0($a0)
    addiu   $fp, $fp, 0x7524
    addiu   $s7, $s7, 0xe6a8
    addiu   $s3, $s3, 0x7514
    addiu   $s2, $s2, 0x7504
    addiu   $s1, $s1, 0x89ec
    ori     $s4, $zero, 0xb1c0
    addiu   $s5, $zero, 0x4
    ori     $s6, $zero, 0xb280
    lw      $ra, 0xb4($sp)
    lw      $t5, 0xb8($sp)
    lw      $t4, 0xc4($sp)
    lw      $t3, 0xc8($sp)
    lw      $t2, 0xcc($sp)
    lw      $t1, 0xd0($sp)
    lw      $t0, 0xd4($sp)
    lw      $a3, 0xd8($sp)
    or      $a2, $zero, $zero
    sub.s   $f2, $f22, $f0
branch_0x801f1308:
    bnez    $a2, branch_0x801f1324
    addiu   $at, $zero, 0x1
    lw      $t6, 0x0($s7)
    or      $t5, $s2, $zero
    or      $ra, $s3, $zero
    b       branch_0x801f136c
    addu    $v1, $t6, $s4
branch_0x801f1324:
    bnel    $a2, $at, branch_0x801f133c
    addiu   $at, $zero, 0x2
    lw      $t8, 0x0($s7)
    b       branch_0x801f136c
    addu    $v1, $t8, $s6

.globl Function_0x801f1338
Function_0x801f1338: # 0x801f1338
    addiu   $at, $zero, 0x2
branch_0x801f133c:
    bnel    $a2, $at, branch_0x801f1364
    lw      $v1, 0x0($s7)
    lw      $v1, 0x0($s7)
    lui     $ra, 0x8022
    ori     $at, $zero, 0xb200
    or      $t5, $fp, $zero
    addiu   $ra, $ra, 0x7534
    b       branch_0x801f136c
    addu    $v1, $v1, $at

.globl Function_0x801f1360
Function_0x801f1360: # 0x801f1360
    lw      $v1, 0x0($s7)
branch_0x801f1364:
    ori     $at, $zero, 0xb240
    addu    $v1, $v1, $at
branch_0x801f136c:
    beqz    $a2, branch_0x801f137c
    addiu   $at, $zero, 0x2
    bnel    $a2, $at, branch_0x801f1620
    addiu   $a2, $a2, 0x1
branch_0x801f137c:
    lw      $a1, 0x0($s1)
    lui     $at, 0x4f80
    sll     $t7, $a1, 2
    subu    $t7, $t7, $a1
    addu    $v0, $t5, $t7
    lbu     $t9, 0x0($v0)
    or      $a1, $t7, $zero
    mtc1    $t9, $t2
    bgez    $t9, branch_0x801f13b0
    cvt.s.w $f16, $f10
    mtc1    $at, $s2
    nop
    add.s   $f16, $f16, $f18
branch_0x801f13b0:
    mul.s   $f4, $f16, $f0
    lbu     $t8, 0x1($v0)
    lui     $at, 0x4f80
    mtc1    $t8, $t0
    trunc.w.s   $f6, $f4
    cvt.s.w $f10, $f8
    mfc1    $a3, $a2
    bgez    $t8, branch_0x801f13e0
    nop
    mtc1    $at, $s2
    nop
    add.s   $f10, $f10, $f18
branch_0x801f13e0:
    mul.s   $f16, $f10, $f0
    lbu     $t9, 0x2($v0)
    lui     $at, 0x4f80
    mtc1    $t9, $a2
    trunc.w.s   $f4, $f16
    cvt.s.w $f8, $f6
    mfc1    $t0, $a0
    bgez    $t9, branch_0x801f1410
    nop
    mtc1    $at, $s2
    nop
    add.s   $f8, $f8, $f18
branch_0x801f1410:
    mul.s   $f10, $f8, $f0
    lbu     $t8, 0x3($v0)
    mtc1    $a3, $a0
    lui     $at, 0x4f80
    mtc1    $t8, $s2
    cvt.s.w $f6, $f4
    trunc.w.s   $f16, $f10
    cvt.s.w $f8, $f18
    mfc1    $t1, $s0
    bgez    $t8, branch_0x801f1448
    nop
    mtc1    $at, $t2
    nop
    add.s   $f8, $f8, $f10
branch_0x801f1448:
    mul.s   $f16, $f8, $f2
    lbu     $t9, 0x4($v0)
    mtc1    $t0, $t2
    lui     $at, 0x4f80
    cvt.s.w $f8, $f10
    add.s   $f4, $f6, $f16
    mtc1    $t9, $a2
    trunc.w.s   $f18, $f4
    cvt.s.w $f16, $f6
    mfc1    $a3, $s2
    bgez    $t9, branch_0x801f1484
    nop
    mtc1    $at, $a0
    nop
    add.s   $f16, $f16, $f4
branch_0x801f1484:
    mul.s   $f18, $f16, $f2
    lbu     $t8, 0x5($v0)
    mtc1    $t1, $a0
    lui     $at, 0x4f80
    cvt.s.w $f16, $f4
    add.s   $f10, $f8, $f18
    mtc1    $t8, $t0
    trunc.w.s   $f6, $f10
    cvt.s.w $f18, $f8
    mfc1    $t0, $a2
    bgez    $t8, branch_0x801f14c0
    nop
    mtc1    $at, $t2
    nop
    add.s   $f18, $f18, $f10
branch_0x801f14c0:
    mul.s   $f6, $f18, $f2
    addu    $a0, $ra, $a1
    lbu     $t9, 0x0($a0)
    lui     $at, 0x4f80
    mtc1    $t9, $t2
    add.s   $f4, $f16, $f6
    cvt.s.w $f18, $f10
    trunc.w.s   $f8, $f4
    mfc1    $t1, $t0
    bgez    $t9, branch_0x801f14f8
    nop
    mtc1    $at, $s0
    nop
    add.s   $f18, $f18, $f16
branch_0x801f14f8:
    mul.s   $f6, $f18, $f0
    lbu     $t8, 0x1($a0)
    lui     $at, 0x4f80
    mtc1    $t8, $t0
    trunc.w.s   $f4, $f6
    cvt.s.w $f10, $f8
    mfc1    $t2, $a0
    bgez    $t8, branch_0x801f1528
    nop
    mtc1    $at, $s0
    nop
    add.s   $f10, $f10, $f16
branch_0x801f1528:
    mul.s   $f18, $f10, $f0
    lbu     $t9, 0x2($a0)
    lui     $at, 0x4f80
    mtc1    $t9, $a0
    trunc.w.s   $f6, $f18
    cvt.s.w $f8, $f4
    mfc1    $t3, $a2
    bgez    $t9, branch_0x801f1558
    nop
    mtc1    $at, $s0
    nop
    add.s   $f8, $f8, $f16
branch_0x801f1558:
    mul.s   $f10, $f8, $f0
    lbu     $t8, 0x3($a0)
    mtc1    $t2, $a2
    lui     $at, 0x4f80
    mtc1    $t8, $s0
    cvt.s.w $f4, $f6
    trunc.w.s   $f18, $f10
    cvt.s.w $f8, $f16
    mfc1    $t4, $s2
    bgez    $t8, branch_0x801f1590
    nop
    mtc1    $at, $t2
    nop
    add.s   $f8, $f8, $f10
branch_0x801f1590:
    mul.s   $f18, $f8, $f2
    lbu     $t9, 0x4($a0)
    mtc1    $t3, $t2
    lui     $at, 0x4f80
    cvt.s.w $f8, $f10
    add.s   $f6, $f4, $f18
    mtc1    $t9, $a0
    trunc.w.s   $f16, $f6
    cvt.s.w $f18, $f4
    mfc1    $t2, $s0
    bgez    $t9, branch_0x801f15cc
    nop
    mtc1    $at, $a2
    nop
    add.s   $f18, $f18, $f6
branch_0x801f15cc:
    mul.s   $f16, $f18, $f2
    lbu     $t8, 0x5($a0)
    mtc1    $t4, $a2
    lui     $at, 0x4f80
    cvt.s.w $f18, $f6
    add.s   $f10, $f8, $f16
    mtc1    $t8, $t0
    trunc.w.s   $f4, $f10
    cvt.s.w $f16, $f8
    mfc1    $t3, $a0
    bgez    $t8, branch_0x801f1608
    nop
    mtc1    $at, $t2
    nop
    add.s   $f16, $f16, $f10
branch_0x801f1608:
    mul.s   $f4, $f16, $f2
    add.s   $f6, $f18, $f4
    trunc.w.s   $f8, $f6
    mfc1    $t4, $t0
    nop
    addiu   $a2, $a2, 0x1
branch_0x801f1620:
    sb      $a3, 0xc($v1)
    sb      $t0, 0xd($v1)
    sb      $t1, 0xe($v1)
    sb      $a3, 0x1c($v1)
    sb      $t0, 0x1d($v1)
    sb      $t1, 0x1e($v1)
    sb      $t2, 0x2c($v1)
    sb      $t3, 0x2d($v1)
    sb      $t4, 0x2e($v1)
    addiu   $v1, $v1, 0x30
    sb      $t2, 0xc($v1)
    sb      $t3, 0xd($v1)
    bne     $a2, $s5, branch_0x801f1308
    sb      $t4, 0xe($v1)
    lui     $t9, 0x801d
    lh      $t9, -0x1c7c($t9)
    addiu   $at, $zero, 0xffff
    sw      $ra, 0xb4($sp)
    sw      $t5, 0xb8($sp)
    sw      $t4, 0xc4($sp)
    sw      $t3, 0xc8($sp)
    sw      $t2, 0xcc($sp)
    sw      $t1, 0xd0($sp)
    sw      $t0, 0xd4($sp)
    bne     $t9, $at, branch_0x801f16bc
    sw      $a3, 0xd8($sp)
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x89e8
    lw      $t6, 0x0($v0)
    addiu   $t8, $t6, 0x1
    slti    $at, $t8, 0x2
    bnez    $at, branch_0x801f16bc
    sw      $t8, 0x0($v0)
    lw      $t9, 0x0($s1)
    sw      $zero, 0x0($v0)
    addiu   $t6, $t9, 0x1
    sw      $t6, 0x0($s1)
    andi    $t7, $t6, 0x3
    sw      $t7, 0x0($s1)
branch_0x801f16bc:
    or      $v0, $s0, $zero
    lui     $t6, 0xf
    ori     $t6, $t6, 0x3001
    addiu   $s0, $s0, 0x8
    lui     $t9, 0xb600
    sw      $t9, 0x0($v0)
    sw      $t6, 0x4($v0)
    or      $v1, $s0, $zero
    addiu   $s0, $s0, 0x8
    lui     $t8, 0xb700
    addiu   $t7, $zero, 0x2205
    or      $a0, $s0, $zero
    sw      $t7, 0x4($v1)
    sw      $t8, 0x0($v1)
    lui     $t6, 0x8000
    lui     $t9, 0xbb00
    ori     $t9, $t9, 0x1
    ori     $t6, $t6, 0x8000
    sw      $t6, 0x4($a0)
    sw      $t9, 0x0($a0)
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x8
    lui     $t8, 0xe700
    sw      $t8, 0x0($a1)
    or      $a2, $s0, $zero
    lui     $t7, 0xba00
    sw      $zero, 0x4($a1)
    ori     $t7, $t7, 0x1402
    addiu   $s0, $s0, 0x8
    sw      $t7, 0x0($a2)
    or      $v0, $s0, $zero
    sw      $zero, 0x4($a2)
    addiu   $s0, $s0, 0x8
    lui     $t9, 0xba00
    ori     $t9, $t9, 0x1301
    lui     $t6, 0x8
    or      $v1, $s0, $zero
    sw      $t6, 0x4($v0)
    sw      $t9, 0x0($v0)
    lui     $t8, 0xba00
    ori     $t8, $t8, 0xc02
    addiu   $s0, $s0, 0x8
    addiu   $t7, $zero, 0x2000
    sw      $t7, 0x4($v1)
    sw      $t8, 0x0($v1)
    or      $a0, $s0, $zero
    addiu   $s0, $s0, 0x8
    lui     $t9, 0xfc12
    lui     $t6, 0xff33
    ori     $t6, $t6, 0xffff
    ori     $t9, $t9, 0x1824
    or      $a1, $s0, $zero
    sw      $t9, 0x0($a0)
    sw      $t6, 0x4($a0)
    lui     $t8, 0xb900
    lui     $t7, 0x50
    ori     $t7, $t7, 0x4240
    ori     $t8, $t8, 0x31d
    addiu   $s0, $s0, 0x8
    sw      $t8, 0x0($a1)
    sw      $t7, 0x4($a1)
    or      $a2, $s0, $zero
    lui     $t9, 0xb900
    ori     $t9, $t9, 0x2
    addiu   $s0, $s0, 0x8
    sw      $t9, 0x0($a2)
    sw      $zero, 0x4($a2)
    or      $v0, $s0, $zero
    lui     $t8, 0x500
    lui     $t6, 0x103
    ori     $t6, $t6, 0x40
    addiu   $t8, $t8, 0x4040
    sw      $t8, 0x4($v0)
    sw      $t6, 0x0($v0)
    lui     $t7, 0x800e
    lw      $t7, -0x5758($t7)
    lui     $t9, 0x8023
    addiu   $s0, $s0, 0x8
    blez    $t7, branch_0x801f1a4c
    addiu   $t9, $t9, 0x89f0
    lui     $fp, 0x8023
    lui     $s5, 0x500
    lui     $s2, 0x801b
    mtc1    $zero, $s4
    addiu   $s2, $s2, 0xe6b0
    addiu   $s5, $s5, 0x0
    addiu   $fp, $fp, 0x8914
    sw      $t9, 0x54($sp)
    lui     $s3, 0x600
branch_0x801f1824:
    lw      $t6, 0x54($sp)
    lui     $t8, 0x8023
    addiu   $t8, $t8, 0x89f0
    bne     $t6, $t8, branch_0x801f1864
    or      $s4, $zero, $zero
    lui     $t7, 0x800d
    lw      $t7, 0x465c($t7)
    lui     $t6, 0x801c
    addiu   $t6, $t6, 0x2698
    sll     $t9, $t7, 3
    subu    $t9, $t9, $t7
    sll     $t9, $t9, 4
    subu    $t9, $t9, $t7
    sll     $t9, $t9, 3
    b       branch_0x801f188c
    addu    $s6, $t9, $t6
branch_0x801f1864:
    lui     $t8, 0x800d
    lw      $t8, 0x4660($t8)
    lui     $t9, 0x801c
    addiu   $t9, $t9, 0x2698
    sll     $t7, $t8, 3
    subu    $t7, $t7, $t8
    sll     $t7, $t7, 4
    subu    $t7, $t7, $t8
    sll     $t7, $t7, 3
    addu    $s6, $t7, $t9
branch_0x801f188c:
    lw      $s1, 0x54($sp)
branch_0x801f1890:
    lw      $t6, 0x18($s1)
    beqzl   $t6, branch_0x801f1a04
    addiu   $s4, $s4, 0x1c
    lw      $t6, 0x0($fp)
    lwc1    $f10, 0x0($s1)
    lw      $t7, 0x0($s2)
    mtc1    $t6, $s0
    lw      $t8, 0x0($s7)
    sll     $t9, $t7, 6
    cvt.s.w $f18, $f16
    mfc1    $a3, $s4
    addu    $a0, $t8, $t9
    addiu   $a0, $a0, 0x4140
    lw      $a2, 0x4($s1)
    add.s   $f4, $f10, $f18
    mfc1    $a1, $a0
    jal     Function_0x801edd8c
    nop
    lui     $t7, 0x102
    ori     $t7, $t7, 0x40
    or      $v0, $s0, $zero
    sw      $t7, 0x0($v0)
    lw      $t8, 0x0($s2)
    mfc1    $a3, $s6
    addiu   $s0, $s0, 0x8
    sll     $t9, $t8, 6
    addu    $t6, $s5, $t9
    addiu   $t7, $t6, 0x4140
    sw      $t7, 0x4($v0)
    lw      $t8, 0x0($s2)
    lwc1    $f0, 0x10($s1)
    lw      $t6, 0x0($s7)
    addiu   $t9, $t8, 0x1
    sll     $t8, $t9, 6
    mfc1    $a1, $zero
    mfc1    $a2, $zero
    addu    $a0, $t6, $t8
    sw      $t9, 0x0($s2)
    jal     Function_0x801ee70c
    addiu   $a0, $a0, 0x4140
    lui     $t9, 0x100
    ori     $t9, $t9, 0x40
    or      $v0, $s0, $zero
    sw      $t9, 0x0($v0)
    lw      $t7, 0x0($s2)
    addiu   $s0, $s0, 0x8
    addiu   $at, $zero, 0x1
    sll     $t6, $t7, 6
    addu    $t8, $s5, $t6
    addiu   $t9, $t8, 0x4140
    sw      $t9, 0x4($v0)
    lw      $t7, 0x0($s2)
    lw      $v1, 0x18($s1)
    or      $v0, $s0, $zero
    addiu   $t6, $t7, 0x1
    beq     $v1, $at, branch_0x801f1990
    sw      $t6, 0x0($s2)
    addiu   $at, $zero, 0x2
    beq     $v1, $at, branch_0x801f19a8
    addiu   $at, $zero, 0x3
    beq     $v1, $at, branch_0x801f19ec
    or      $v0, $s0, $zero
    b       branch_0x801f1a04
    addiu   $s4, $s4, 0x1c
branch_0x801f1990:
    lui     $t8, 0x101
    addiu   $t8, $t8, 0x4820
    sw      $t8, 0x4($v0)
    addiu   $s0, $s0, 0x8
    b       branch_0x801f1a00
    sw      $s3, 0x0($v0)
branch_0x801f19a8:
    lw      $t9, 0x12c($s6)
    lui     $t6, 0x101
    addiu   $t6, $t6, 0x4870
    slti    $at, $t9, 0x5
    bnez    $at, branch_0x801f19dc
    or      $v0, $s0, $zero
    or      $v0, $s0, $zero
    lui     $t7, 0x101
    addiu   $t7, $t7, 0x4910
    sw      $t7, 0x4($v0)
    sw      $s3, 0x0($v0)
    b       branch_0x801f1a00
    addiu   $s0, $s0, 0x8
branch_0x801f19dc:
    addiu   $s0, $s0, 0x8
    sw      $s3, 0x0($v0)
    b       branch_0x801f1a00
    sw      $t6, 0x4($v0)
branch_0x801f19ec:
    lui     $t8, 0x101
    addiu   $t8, $t8, 0x48c0
    sw      $t8, 0x4($v0)
    addiu   $s0, $s0, 0x8
    sw      $s3, 0x0($v0)
branch_0x801f1a00:
    addiu   $s4, $s4, 0x1c
branch_0x801f1a04:
    addiu   $at, $zero, 0x54
    bne     $s4, $at, branch_0x801f1890
    addiu   $s1, $s1, 0x1c
    lui     $v0, 0x800e
    lw      $v0, -0x5758($v0)
    lw      $t6, 0x54($sp)
    lui     $t7, 0x8023
    sll     $t9, $v0, 2
    addu    $t9, $t9, $v0
    sll     $t9, $t9, 2
    addu    $t9, $t9, $v0
    sll     $t9, $t9, 2
    addiu   $t7, $t7, 0x89f0
    addu    $v1, $t9, $t7
    addiu   $t8, $t6, 0x54
    sltu    $at, $t8, $v1
    bnez    $at, branch_0x801f1824
    sw      $t8, 0x54($sp)
branch_0x801f1a4c:
    lw      $t9, 0xe8($sp)
    sw      $s0, 0x0($t9)
    lw      $ra, 0x4c($sp)
    lw      $fp, 0x48($sp)
    lw      $s7, 0x44($sp)
    lw      $s6, 0x40($sp)
    lw      $s5, 0x3c($sp)
    lw      $s4, 0x38($sp)
    lw      $s3, 0x34($sp)
    lw      $s2, 0x30($sp)
    lw      $s1, 0x2c($sp)
    lw      $s0, 0x28($sp)
    ldc1    $22, 0x20($29)
    ldc1    $20, 0x18($29)
    jr      $ra
    addiu   $sp, $sp, 0xe8

.globl Function_0x801f1a8c
Function_0x801f1a8c: # 0x801f1a8c
    addiu   $sp, $sp, 0xffb0
    lui     $t6, 0x801d
    lw      $t6, -0x1c80($t6)
    addiu   $at, $zero, 0x1
    sw      $ra, 0x3c($sp)
    sw      $fp, 0x38($sp)
    sw      $s7, 0x34($sp)
    sw      $s6, 0x30($sp)
    sw      $s5, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    bne     $t6, $at, branch_0x801f1b38
    sw      $s0, 0x18($sp)
    lui     $t7, 0x800d
    lw      $t7, 0x465c($t7)
    addiu   $a0, $zero, 0x378
    lui     $fp, 0x801c
    multu   $t7, $a0
    addiu   $fp, $fp, 0x2698
    addiu   $t5, $zero, 0x1
    mflo    $t8
    addu    $v0, $fp, $t8
    lw      $t9, 0x2f4($v0)
    bnez    $t9, branch_0x801f1b30
    nop
    lw      $t0, 0x2ec($v0)
    lui     $t1, 0x800d
    bnez    $t0, branch_0x801f1b30
    nop
    lw      $t1, 0x4660($t1)
    multu   $t1, $a0
    mflo    $t2
    addu    $v0, $fp, $t2
    lw      $t3, 0x2f4($v0)
    bnez    $t3, branch_0x801f1b30
    nop
    lw      $t4, 0x2ec($v0)
    beqz    $t4, branch_0x801f1b38
    nop
branch_0x801f1b30:
    b       branch_0x801f1b48
    sw      $t5, 0x44($sp)
branch_0x801f1b38:
    lui     $fp, 0x801c
    addiu   $fp, $fp, 0x2698
    addiu   $a0, $zero, 0x378
    sw      $zero, 0x44($sp)
branch_0x801f1b48:
    lui     $v1, 0x800e
    lw      $v1, -0x5758($v1)
    lui     $s7, 0x8023
    addiu   $s7, $s7, 0x891c
    blez    $v1, branch_0x801f1dc0
    or      $s3, $zero, $zero
    lui     $s5, 0x8019
    addiu   $s5, $s5, 0x23f0
    addiu   $s6, $zero, 0x1718
    addiu   $s4, $zero, 0x14
branch_0x801f1b70:
    bnez    $s3, branch_0x801f1ba4
    lui     $v0, 0x800d
    lui     $v0, 0x800d
    lw      $v0, 0x465c($v0)
    multu   $v0, $s6
    mflo    $t6
    addu    $s0, $s5, $t6
    nop
    multu   $v0, $a0
    mflo    $t7
    addu    $s1, $fp, $t7
    b       branch_0x801f1bcc
    lw      $t0, 0x2ec($s1)
branch_0x801f1ba4:
    lw      $v0, 0x4660($v0)
    multu   $v0, $s6
    mflo    $t8
    addu    $s0, $s5, $t8
    nop
    multu   $v0, $a0
    mflo    $t9
    addu    $s1, $fp, $t9
    nop
    lw      $t0, 0x2ec($s1)
branch_0x801f1bcc:
    bnezl   $t0, branch_0x801f1db4
    addiu   $s3, $s3, 0x1
    lw      $t1, 0x2f4($s1)
    lui     $v0, 0x800d
    bnezl   $t1, branch_0x801f1db4
    addiu   $s3, $s3, 0x1
    lw      $v0, 0x7ef0($v0)
    lwc1    $f12, 0x44($s0)
    lwc1    $f14, 0x4c($s0)
    xori    $t2, $v0, 0x8
    sltu    $v0, $zero, $t2
    beqz    $v0, branch_0x801f1c0c
    nop
    lw      $v0, 0x16d0($s0)
    slti    $t3, $v0, 0x51
    xori    $v0, $t3, 0x1
branch_0x801f1c0c:
    jal     Function_0x80074204
    or      $s2, $v0, $zero
    bnez    $v0, branch_0x801f1c28
    lw      $v1, 0x44($sp)
    sltu    $v0, $zero, $s2
    beqzl   $v0, branch_0x801f1c48
    lw      $t6, 0x2e4($s1)
branch_0x801f1c28:
    sltiu   $t4, $v1, 0x1
    beqz    $t4, branch_0x801f1c44
    or      $v0, $t4, $zero
    lui     $v0, 0x801d
    lhu     $v0, -0x1b72($v0)
    sltu    $t5, $zero, $v0
    or      $v0, $t5, $zero
branch_0x801f1c44:
    lw      $t6, 0x2e4($s1)
branch_0x801f1c48:
    beqz    $t6, branch_0x801f1d8c
    nop
    bnezl   $v0, branch_0x801f1c64
    lw      $v0, 0xc54($s0)
    b       branch_0x801f1da4
    sw      $zero, 0x2e4($s1)

.globl Function_0x801f1c60
Function_0x801f1c60: # 0x801f1c60
    lw      $v0, 0xc54($s0)
branch_0x801f1c64:
    addiu   $at, $zero, 0x17
    beq     $v0, $at, branch_0x801f1da4
    addiu   $at, $zero, 0x7
    beq     $v0, $at, branch_0x801f1da4
    nop
    lw      $s0, 0x2e8($s1)
    blez    $s0, branch_0x801f1d74
    nop
    lw      $v0, 0x0($s7)
    slt     $at, $v0, $s0
    bnezl   $at, branch_0x801f1d6c
    addiu   $t0, $s0, 0xffff
    beqz    $s2, branch_0x801f1ca4
    or      $v1, $zero, $zero
    b       branch_0x801f1ca4
    addiu   $v1, $zero, 0x80
branch_0x801f1ca4:
    bne     $v0, $s0, branch_0x801f1cf0
    nop
    div     $zero, $s0, $s4
    mflo    $t7
    addu    $a1, $t7, $v1
    addiu   $a0, $zero, 0xa
    bnez    $s4, branch_0x801f1cc8
    nop
    break   0x7
branch_0x801f1cc8:
    addiu   $at, $zero, 0xffff
    bne     $s4, $at, branch_0x801f1ce0
    lui     $at, 0x8000
    bne     $s0, $at, branch_0x801f1ce0
    nop
    break   0x6
branch_0x801f1ce0:
    jal     Function_0x800c3594
    nop
    b       branch_0x801f1d68
    lw      $s0, 0x2e8($s1)
branch_0x801f1cf0:
    div     $zero, $s0, $s4
    mfhi    $t8
    addiu   $a0, $zero, 0xa
    bnez    $s4, branch_0x801f1d08
    nop
    break   0x7
branch_0x801f1d08:
    addiu   $at, $zero, 0xffff
    bne     $s4, $at, branch_0x801f1d20
    lui     $at, 0x8000
    bne     $s0, $at, branch_0x801f1d20
    nop
    break   0x6
branch_0x801f1d20:
    bnezl   $t8, branch_0x801f1d6c
    addiu   $t0, $s0, 0xffff
    div     $zero, $s0, $s4
    mflo    $t9
    addu    $a1, $t9, $v1
    bnez    $s4, branch_0x801f1d40
    nop
    break   0x7
branch_0x801f1d40:
    addiu   $at, $zero, 0xffff
    bne     $s4, $at, branch_0x801f1d58
    lui     $at, 0x8000
    bne     $s0, $at, branch_0x801f1d58
    nop
    break   0x6
branch_0x801f1d58:
    addiu   $a1, $a1, 0xffff
    jal     Function_0x800c3594
    nop
    lw      $s0, 0x2e8($s1)
branch_0x801f1d68:
    addiu   $t0, $s0, 0xffff
branch_0x801f1d6c:
    b       branch_0x801f1da4
    sw      $t0, 0x2e8($s1)
branch_0x801f1d74:
    bnez    $s0, branch_0x801f1da4
    nop
    jal     Function_0x80076270
    or      $a0, $s1, $zero
    b       branch_0x801f1da4
    nop
branch_0x801f1d8c:
    beqz    $v0, branch_0x801f1da4
    addiu   $t1, $zero, 0x1
    sw      $t1, 0x2e4($s1)
    lw      $t2, 0x0($s7)
    addiu   $t3, $t2, 0x14
    sw      $t3, 0x2e8($s1)
branch_0x801f1da4:
    lui     $v1, 0x800e
    lw      $v1, -0x5758($v1)
    addiu   $a0, $zero, 0x378
    addiu   $s3, $s3, 0x1
branch_0x801f1db4:
    slt     $at, $s3, $v1
    bnez    $at, branch_0x801f1b70
    nop
branch_0x801f1dc0:
    lw      $ra, 0x3c($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    lw      $s5, 0x2c($sp)
    lw      $s6, 0x30($sp)
    lw      $s7, 0x34($sp)
    lw      $fp, 0x38($sp)
    jr      $ra
    addiu   $sp, $sp, 0x50

.globl Function_0x801f1df0
Function_0x801f1df0: # 0x801f1df0
    addiu   $sp, $sp, 0xff50
    lui     $v1, 0x800e
    lw      $v1, -0x5758($v1)
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
    sw      $a0, 0xb0($sp)
    lw      $t7, 0x0($a0)
    or      $fp, $zero, $zero
    blez    $v1, branch_0x801f20f4
    sw      $t7, 0x7c($sp)
    lui     $a3, 0x801c
    lui     $a1, 0x8019
    addiu   $a1, $a1, 0x23f0
    addiu   $a3, $a3, 0x2698
    addiu   $t0, $zero, 0x378
    addiu   $a2, $zero, 0x1718
branch_0x801f1e50:
    bnez    $fp, branch_0x801f1e84
    lui     $v0, 0x800d
    lui     $v0, 0x800d
    lw      $v0, 0x465c($v0)
    multu   $v0, $a2
    mflo    $t9
    addu    $a0, $a1, $t9
    nop
    multu   $v0, $t0
    mflo    $t2
    addu    $s7, $a3, $t2
    b       branch_0x801f1eac
    lw      $t5, 0x2e4($s7)
branch_0x801f1e84:
    lw      $v0, 0x4660($v0)
    multu   $v0, $a2
    mflo    $t3
    addu    $a0, $a1, $t3
    nop
    multu   $v0, $t0
    mflo    $t4
    addu    $s7, $a3, $t4
    nop
    lw      $t5, 0x2e4($s7)
branch_0x801f1eac:
    lui     $t6, 0x8023
    beqzl   $t5, branch_0x801f20e8
    addiu   $fp, $fp, 0x1
    lw      $v0, 0x2e8($s7)
    lw      $t6, -0x76e4($t6)
    slt     $at, $t6, $v0
    bnezl   $at, branch_0x801f20e8
    addiu   $fp, $fp, 0x1
    lw      $t7, 0x2ec($s7)
    bnezl   $t7, branch_0x801f20e8
    addiu   $fp, $fp, 0x1
    lw      $t8, 0x2f4($s7)
    addiu   $at, $zero, 0x1
    addiu   $t2, $zero, 0xff
    bnez    $t8, branch_0x801f20e4
    addiu   $t3, $zero, 0xff
    bne     $v1, $at, branch_0x801f1efc
    or      $a1, $zero, $zero
    b       branch_0x801f1f0c
    addiu   $s5, $zero, 0x5a
branch_0x801f1efc:
    bnez    $fp, branch_0x801f1f0c
    addiu   $s5, $zero, 0xa0
    b       branch_0x801f1f0c
    addiu   $s5, $zero, 0x32
branch_0x801f1f0c:
    addiu   $at, $zero, 0x14
    div     $zero, $v0, $at
    mfhi    $t9
    lui     $a2, 0x8022
    bnez    $t9, branch_0x801f1f3c
    addiu   $a2, $a2, 0x7790
    lw      $v0, 0xc54($a0)
    addiu   $at, $zero, 0x17
    beq     $v0, $at, branch_0x801f1f3c
    addiu   $at, $zero, 0x7
    bne     $v0, $at, branch_0x801f1f54
    addiu   $s4, $zero, 0x1
branch_0x801f1f3c:
    addiu   $s4, $zero, 0x2
    addiu   $v0, $zero, 0xff
    or      $v1, $zero, $zero
    or      $t0, $zero, $zero
    b       branch_0x801f1f64
    or      $t1, $zero, $zero
branch_0x801f1f54:
    addiu   $v0, $zero, 0x80
    addiu   $v1, $zero, 0x80
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
branch_0x801f1f64:
    andi    $s0, $v0, 0xff
    andi    $s1, $v1, 0xff
    addiu   $t4, $zero, 0xff
    andi    $s2, $t0, 0xff
    andi    $s3, $t1, 0xff
    addiu   $t5, $zero, 0xff
    sw      $t5, 0x3c($sp)
    sw      $s3, 0x38($sp)
    sw      $s3, 0x44($sp)
    sw      $s2, 0x34($sp)
    sw      $s2, 0x40($sp)
    sw      $t4, 0x30($sp)
    sw      $s1, 0x20($sp)
    sw      $s1, 0x2c($sp)
    sw      $s0, 0x18($sp)
    sw      $s0, 0x24($sp)
    lw      $a0, 0x7c($sp)
    addiu   $a3, $zero, 0x44
    sw      $s5, 0x10($sp)
    sw      $s4, 0x14($sp)
    sw      $t2, 0x1c($sp)
    jal     Function_0x801e9084
    sw      $t3, 0x28($sp)
    lui     $a2, 0x8022
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x3c($sp)
    sw      $t8, 0x30($sp)
    sw      $t7, 0x28($sp)
    sw      $t6, 0x1c($sp)
    addiu   $a2, $a2, 0x7798
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0xa4
    sw      $s5, 0x10($sp)
    sw      $s4, 0x14($sp)
    sw      $s0, 0x18($sp)
    sw      $s1, 0x20($sp)
    sw      $s0, 0x24($sp)
    sw      $s1, 0x2c($sp)
    sw      $s2, 0x34($sp)
    sw      $s3, 0x38($sp)
    sw      $s2, 0x40($sp)
    jal     Function_0x801e9084
    sw      $s3, 0x44($sp)
    sw      $v0, 0x7c($sp)
    lw      $s6, 0x2e8($s7)
    addiu   $at, $zero, 0x14
    lui     $a0, 0x8023
    div     $zero, $s6, $at
    mflo    $a2
    lui     $a1, 0x8022
    or      $s6, $a2, $zero
    addiu   $a1, $a1, 0x779c
    jal     Function_0x800c9f70
    addiu   $a0, $a0, 0x8ab8
    slti    $t3, $s6, 0xa
    xori    $t3, $t3, 0x1
    sll     $t4, $t3, 2
    addu    $t4, $t4, $t3
    lui     $a2, 0x8023
    addiu   $t5, $zero, 0xdf
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x3c($sp)
    sw      $t8, 0x30($sp)
    sw      $t7, 0x28($sp)
    sw      $t6, 0x1c($sp)
    subu    $a3, $t5, $t4
    addiu   $a2, $a2, 0x8ab8
    lw      $a0, 0x7c($sp)
    or      $a1, $zero, $zero
    sw      $s5, 0x10($sp)
    sw      $s4, 0x14($sp)
    sw      $s0, 0x18($sp)
    sw      $s1, 0x20($sp)
    sw      $s0, 0x24($sp)
    sw      $s1, 0x2c($sp)
    sw      $s2, 0x34($sp)
    sw      $s3, 0x38($sp)
    sw      $s2, 0x40($sp)
    jal     Function_0x801e9084
    sw      $s3, 0x44($sp)
    lui     $v1, 0x800e
    lui     $a3, 0x801c
    lui     $a1, 0x8019
    addiu   $a1, $a1, 0x23f0
    addiu   $a3, $a3, 0x2698
    lw      $v1, -0x5758($v1)
    sw      $v0, 0x7c($sp)
    addiu   $t0, $zero, 0x378
    addiu   $a2, $zero, 0x1718
branch_0x801f20e4:
    addiu   $fp, $fp, 0x1
branch_0x801f20e8:
    slt     $at, $fp, $v1
    bnez    $at, branch_0x801f1e50
    nop
branch_0x801f20f4:
    lw      $t2, 0x7c($sp)
    lw      $t3, 0xb0($sp)
    sw      $t2, 0x0($t3)
    lw      $ra, 0x74($sp)
    lw      $fp, 0x70($sp)
    lw      $s7, 0x6c($sp)
    lw      $s6, 0x68($sp)
    lw      $s5, 0x64($sp)
    lw      $s4, 0x60($sp)
    lw      $s3, 0x5c($sp)
    lw      $s2, 0x58($sp)
    lw      $s1, 0x54($sp)
    lw      $s0, 0x50($sp)
    jr      $ra
    addiu   $sp, $sp, 0xb0

.globl Function_0x801f2130
Function_0x801f2130: # 0x801f2130
    addiu   $sp, $sp, 0xffa0
    sw      $s3, 0x54($sp)
    lui     $s3, 0x801a
    addiu   $s3, $s3, 0x8050
    lw      $t6, 0x0($s3)
    sw      $s2, 0x50($sp)
    sw      $ra, 0x5c($sp)
    sw      $s4, 0x58($sp)
    sw      $s1, 0x4c($sp)
    sw      $s0, 0x48($sp)
    sdc1    $30, 0x40($29)
    sdc1    $28, 0x38($29)
    sdc1    $26, 0x30($29)
    sdc1    $24, 0x28($29)
    sdc1    $22, 0x20($29)
    sdc1    $20, 0x18($29)
    blez    $t6, branch_0x801f2338
    or      $s2, $zero, $zero
    lui     $at, 0x4210
    mtc1    $at, $fp
    lui     $at, 0x4334
    mtc1    $at, $gp
    lui     $at, 0x40c0
    mtc1    $at, $k0
    lui     $at, 0x3f80
    mtc1    $at, $t8
    lui     $at, 0x40a0
    lui     $s1, 0x8019
    lui     $s0, 0x801c
    mtc1    $at, $s6
    mtc1    $zero, $s4
    addiu   $s0, $s0, 0x2698
    addiu   $s1, $s1, 0x23f0
    addiu   $s4, $zero, 0xb4
branch_0x801f21b8:
    lwc1    $f2, 0xbc0($s1)
    lwc1    $f4, 0xbbc($s1)
    lwc1    $f12, 0xb98($s1)
    sub.s   $f0, $f4, $f2
    div.s   $f6, $f0, $f22
    mul.s   $f8, $f0, $f26
    mov.s   $f0, $f12
    div.s   $f16, $f8, $f22
    sub.s   $f14, $f2, $f6
    c.le.s $f14, $f12
    nop
    bc1fl   branch_0x801f2270
    div.s   $f6, $f12, $f14
    c.lt.s $f20, $f16
    nop
    bc1fl   branch_0x801f2208
    c.lt.s $f0, $f20
    sub.s   $f10, $f12, $f14
    div.s   $f0, $f10, $f16
    c.lt.s $f0, $f20
branch_0x801f2208:
    nop
    bc1fl   branch_0x801f221c
    c.lt.s $f24, $f0
    mov.s   $f0, $f20
    c.lt.s $f24, $f0
branch_0x801f221c:
    nop
    bc1f    branch_0x801f222c
    nop
    mov.s   $f0, $f24
branch_0x801f222c:
    mul.s   $f18, $f0, $f28
    addiu   $a0, $zero, 0x3
    trunc.w.s   $f4, $f18
    mfc1    $t8, $a0
    jal     Function_0x801ed094
    sw      $t8, 0x2cc($s0)
    lw      $t9, 0x2cc($s0)
    sll     $t0, $v0, 1
    addu    $t1, $t9, $t0
    addiu   $a1, $t1, 0xfffe
    slti    $at, $a1, 0xb5
    bnez    $at, branch_0x801f2284
    sw      $a1, 0x2cc($s0)
    sw      $s4, 0x2cc($s0)
    b       branch_0x801f2284
    or      $a1, $s4, $zero

.globl Function_0x801f226c
Function_0x801f226c: # 0x801f226c
    div.s   $f6, $f12, $f14
branch_0x801f2270:
    mul.s   $f8, $f6, $f30
    trunc.w.s   $f10, $f8
    mfc1    $a1, $t2
    nop
    sw      $a1, 0x2cc($s0)
branch_0x801f2284:
    lw      $a3, 0x2c8($s0)
    subu    $a0, $a1, $a3
    bltz    $a0, branch_0x801f229c
    subu    $a2, $zero, $a0
    b       branch_0x801f229c
    or      $a2, $a0, $zero
branch_0x801f229c:
    bgez    $a2, branch_0x801f22ac
    sra     $v0, $a2, 2
    addiu   $at, $a2, 0x3
    sra     $v0, $at, 2
branch_0x801f22ac:
    slti    $at, $v0, 0x2
    beqz    $at, branch_0x801f22bc
    or      $v1, $v0, $zero
    addiu   $v1, $zero, 0x2
branch_0x801f22bc:
    slt     $at, $a3, $a1
    beqz    $at, branch_0x801f22d4
    slti    $at, $v1, 0x5
    bnezl   $at, branch_0x801f22d8
    slt     $at, $v1, $a2
    addiu   $v1, $zero, 0x4
branch_0x801f22d4:
    slt     $at, $v1, $a2
branch_0x801f22d8:
    bnez    $at, branch_0x801f22e8
    nop
    b       branch_0x801f2320
    sw      $a1, 0x2c8($s0)
branch_0x801f22e8:
    bnez    $a0, branch_0x801f22f8
    nop
    b       branch_0x801f2310
    or      $v0, $zero, $zero
branch_0x801f22f8:
    blezl   $a0, branch_0x801f230c
    addiu   $a0, $zero, 0xffff
    b       branch_0x801f230c
    addiu   $a0, $zero, 0x1

.globl Function_0x801f2308
Function_0x801f2308: # 0x801f2308
    addiu   $a0, $zero, 0xffff
branch_0x801f230c:
    or      $v0, $a0, $zero
branch_0x801f2310:
    multu   $v0, $v1
    mflo    $t5
    addu    $t6, $a3, $t5
    sw      $t6, 0x2c8($s0)
branch_0x801f2320:
    lw      $t7, 0x0($s3)
    addiu   $s2, $s2, 0x1
    addiu   $s1, $s1, 0x1718
    slt     $at, $s2, $t7
    bnez    $at, branch_0x801f21b8
    addiu   $s0, $s0, 0x378
branch_0x801f2338:
    lw      $ra, 0x5c($sp)
    ldc1    $20, 0x18($29)
    ldc1    $22, 0x20($29)
    ldc1    $24, 0x28($29)
    ldc1    $26, 0x30($29)
    ldc1    $28, 0x38($29)
    ldc1    $30, 0x40($29)
    lw      $s0, 0x48($sp)
    lw      $s1, 0x4c($sp)
    lw      $s2, 0x50($sp)
    lw      $s3, 0x54($sp)
    lw      $s4, 0x58($sp)
    jr      $ra
    addiu   $sp, $sp, 0x60

.globl Function_0x801f2370
Function_0x801f2370: # 0x801f2370
    addiu   $sp, $sp, 0xfd38
    sw      $s0, 0x4($sp)
    sw      $a0, 0x2c8($sp)
    sw      $a1, 0x2cc($sp)
    or      $s0, $a2, $zero
    lw      $t0, 0x0($a0)
    bgez    $a3, branch_0x801f2394
    or      $t6, $a0, $zero
    or      $a3, $zero, $zero
branch_0x801f2394:
    lui     $at, 0x9
    ori     $at, $at, 0x27c0
    slt     $at, $a3, $at
    bnez    $at, branch_0x801f23b0
    lui     $v0, %hi(Unknown_0x80228A98)
    lui     $a3, 0x9
    ori     $a3, $a3, 0x27bf
branch_0x801f23b0:
    addiu   $t3, $zero, 0x3e8
    div     $zero, $a3, $t3
    mflo    $a0
    addiu   $t4, $zero, 0x3c
    addiu   $t5, $zero, 0xa
    div     $zero, $a0, $t4
    mflo    $v1
    mfhi    $a2
    lw      $a1, 0x2d8($sp)
    addiu   $v0, $v0, %lo(Unknown_0x80228A98)
    div     $zero, $a2, $t5
    mflo    $t7
    mfhi    $t8
    sw      $t7, 0x4($v0)
    addiu   $t1, $zero, 0x1
    div     $zero, $a3, $t3
    bnez    $t3, branch_0x801f23fc
    nop
    break   0x7
branch_0x801f23fc:
    addiu   $at, $zero, 0xffff
    bne     $t3, $at, branch_0x801f2414
    lui     $at, 0x8000
    bne     $a3, $at, branch_0x801f2414
    nop
    break   0x6
branch_0x801f2414:
    mfhi    $t9
    mtc1    $t9, $a0
    bnez    $t4, branch_0x801f2428
    nop
    break   0x7
branch_0x801f2428:
    addiu   $at, $zero, 0xffff
    bne     $t4, $at, branch_0x801f2440
    lui     $at, 0x8000
    bne     $a0, $at, branch_0x801f2440
    nop
    break   0x6
branch_0x801f2440:
    cvt.s.w $f6, $f4
    sw      $v1, 0x0($v0)
    bnez    $t5, branch_0x801f2454
    nop
    break   0x7
branch_0x801f2454:
    addiu   $at, $zero, 0xffff
    bne     $t5, $at, branch_0x801f246c
    lui     $at, 0x8000
    bne     $a2, $at, branch_0x801f246c
    nop
    break   0x6
branch_0x801f246c:
    sw      $t8, 0x8($v0)
    bnez    $t3, branch_0x801f247c
    nop
    break   0x7
branch_0x801f247c:
    addiu   $at, $zero, 0xffff
    bne     $t3, $at, branch_0x801f2494
    lui     $at, 0x8000
    bne     $a3, $at, branch_0x801f2494
    nop
    break   0x6
branch_0x801f2494:
    lui     $at, 0x447a
    mtc1    $at, $t0
    mtc1    $at, $s0
    addiu   $at, $zero, 0x64
    div.s   $f10, $f6, $f8
    lui     $t3, 0x104
    addiu   $a0, $zero, 0x3
    addiu   $t3, $t3, 0xb4d0
    lui     $t4, %hi(Unknown_0x80228A98)
    mul.s   $f18, $f10, $f16
    trunc.w.s   $f4, $f18
    mfc1    $t2, $a0
    nop
    div     $zero, $t2, $at
    mflo    $t7
    sw      $t7, 0xc($v0)
    bne     $a1, $t1, branch_0x801f24e8
    addiu   $at, $zero, 0x64
    lw      $t8, 0x2dc($sp)
    beq     $t8, $t1, branch_0x801f2568
    nop
branch_0x801f24e8:
    div     $zero, $t2, $at
    mfhi    $t9
    lw      $a2, 0x2e0($sp)
    nop
    div     $zero, $t9, $t5
    mflo    $t6
    bnez    $t5, branch_0x801f250c
    nop
    break   0x7
branch_0x801f250c:
    addiu   $at, $zero, 0xffff
    bne     $t5, $at, branch_0x801f2524
    lui     $at, 0x8000
    bne     $t9, $at, branch_0x801f2524
    nop
    break   0x6
branch_0x801f2524:
    div     $zero, $t2, $t5
    lui     $at, 0x8023
    sw      $t6, -0x7558($at)
    bnez    $t5, branch_0x801f253c
    nop
    break   0x7
branch_0x801f253c:
    addiu   $at, $zero, 0xffff
    bne     $t5, $at, branch_0x801f2554
    lui     $at, 0x8000
    bne     $t2, $at, branch_0x801f2554
    nop
    break   0x6
branch_0x801f2554:
    lui     $at, 0x8023
    mfhi    $t7
    sw      $t7, -0x7554($at)
    b       branch_0x801f2608
    addiu   $at, $zero, 0x2
branch_0x801f2568:
    bnez    $a3, branch_0x801f2580
    lui     $at, 0x9
    sw      $zero, 0x14($v0)
    sw      $zero, 0x10($v0)
    b       branch_0x801f2604
    lw      $a2, 0x2e0($sp)
branch_0x801f2580:
    ori     $at, $at, 0x27bf
    bne     $a3, $at, branch_0x801f25a0
    lw      $a2, 0x2e0($sp)
    addiu   $t9, $zero, 0x9
    sw      $t9, 0x14($v0)
    sw      $t9, 0x10($v0)
    b       branch_0x801f2604
    lw      $a2, 0x2e0($sp)
branch_0x801f25a0:
    addiu   $t7, $a2, 0x5
    div     $zero, $t7, $t5
    mfhi    $t8
    sw      $t8, 0x10($v0)
    bnez    $t5, branch_0x801f25bc
    nop
    break   0x7
branch_0x801f25bc:
    addiu   $at, $zero, 0xffff
    bne     $t5, $at, branch_0x801f25d4
    lui     $at, 0x8000
    bne     $t7, $at, branch_0x801f25d4
    nop
    break   0x6
branch_0x801f25d4:
    div     $zero, $a2, $t5
    mfhi    $t9
    sw      $t9, 0x14($v0)
    bnez    $t5, branch_0x801f25ec
    nop
    break   0x7
branch_0x801f25ec:
    addiu   $at, $zero, 0xffff
    bne     $t5, $at, branch_0x801f2604
    lui     $at, 0x8000
    bne     $a2, $at, branch_0x801f2604
    nop
    break   0x6
branch_0x801f2604:
    addiu   $at, $zero, 0x2
branch_0x801f2608:
    beq     $a1, $at, branch_0x801f2614
    lw      $t2, 0x2cc($sp)
    bne     $a1, $a0, branch_0x801f2644
branch_0x801f2614:
    slti    $at, $a3, 0x2710
    beqz    $at, branch_0x801f262c
    addiu   $a0, $zero, 0x3
    addiu   $t6, $zero, 0x2
    b       branch_0x801f2648
    sw      $t6, 0x2a8($sp)
branch_0x801f262c:
    bnez    $v1, branch_0x801f263c
    nop
    b       branch_0x801f2648
    sw      $t1, 0x2a8($sp)
branch_0x801f263c:
    b       branch_0x801f2648
    sw      $zero, 0x2a8($sp)
branch_0x801f2644:
    sw      $zero, 0x2a8($sp)
branch_0x801f2648:
    bne     $a1, $t1, branch_0x801f2a68
    lui     $v1, 0xfa00
    or      $v0, $t0, $zero
    lui     $t7, 0xe700
    sw      $t7, 0x0($v0)
    addiu   $t0, $t0, 0x8
    sw      $zero, 0x4($v0)
    or      $a0, $t0, $zero
    addiu   $t8, $s0, 0x10
    addiu   $a1, $zero, 0xffff
    sll     $t9, $t8, 2
    sw      $a1, 0x4($a0)
    sw      $v1, 0x0($a0)
    sll     $t7, $s0, 2
    andi    $t8, $t7, 0xfff
    andi    $t6, $t9, 0xfff
    lui     $a2, %hi(Unknown_0x80228A98)
    lui     $t5, 0x8023
    addiu   $t0, $t0, 0x8
    addiu   $t5, $t5, 0x8ab0
    addiu   $a2, $a2, %lo(Unknown_0x80228A98)
    sw      $t6, 0x10($sp)
    sw      $t8, 0xc($sp)
    addiu   $t4, $t4, %lo(Unknown_0x80228A98)
    addiu   $t1, $zero, 0xc0
    or      $v0, $t0, $zero
branch_0x801f26b0:
    lui     $t9, 0xfd18
    sw      $t9, 0x0($v0)
    lw      $t6, 0x0($a2)
    addiu   $t0, $t0, 0x8
    or      $v1, $t0, $zero
    multu   $t6, $t1
    lui     $t6, 0xf518
    addiu   $t0, $t0, 0x8
    or      $a0, $t0, $zero
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    addiu   $t0, $t0, 0x8
    or      $a3, $t0, $zero
    addiu   $t0, $t0, 0x8
    lui     $at, 0xe400
    mflo    $t7
    sll     $t8, $t7, 2
    addu    $t9, $t8, $t3
    sw      $t9, 0x4($v0)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    sw      $t7, 0x4($v1)
    sw      $t6, 0x0($v1)
    lui     $t8, 0xe600
    sw      $t8, 0x0($a0)
    sw      $zero, 0x4($a0)
    lui     $t6, 0x70b
    lui     $t9, 0xf300
    sw      $t9, 0x0($a1)
    ori     $t6, $t6, 0xf156
    sw      $t6, 0x4($a1)
    lui     $t7, 0xe700
    or      $v0, $t0, $zero
    sw      $t7, 0x0($a3)
    sw      $zero, 0x4($a3)
    lui     $t9, 0x8
    lui     $t8, 0xf518
    ori     $t8, $t8, 0x600
    ori     $t9, $t9, 0x200
    sw      $t9, 0x4($v0)
    sw      $t8, 0x0($v0)
    addiu   $t0, $t0, 0x8
    or      $v1, $t0, $zero
    lui     $t7, 0x2
    lui     $t6, 0xf200
    addiu   $t8, $t2, 0xc
    sw      $t6, 0x0($v1)
    ori     $t7, $t7, 0xc03c
    sll     $t9, $t8, 2
    sw      $t7, 0x4($v1)
    andi    $t6, $t9, 0xfff
    lw      $t9, 0x10($sp)
    sll     $t7, $t6, 12
    addiu   $t0, $t0, 0x8
    or      $t8, $t7, $at
    or      $a0, $t0, $zero
    or      $t6, $t8, $t9
    sw      $t6, 0x0($a0)
    lw      $t6, 0xc($sp)
    sll     $t7, $t2, 2
    andi    $t8, $t7, 0xfff
    sll     $t9, $t8, 12
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    or      $t7, $t9, $t6
    sw      $t7, 0x4($a0)
    addiu   $t0, $t0, 0x8
    or      $v0, $t0, $zero
    lui     $t6, 0x400
    lui     $t8, 0xb300
    sw      $t8, 0x0($a1)
    ori     $t6, $t6, 0x400
    sw      $zero, 0x4($a1)
    lui     $t9, 0xb200
    sw      $t9, 0x0($v0)
    sw      $t6, 0x4($v0)
    addiu   $t0, $t0, 0x8
    bne     $a2, $t4, branch_0x801f27f4
    addiu   $t2, $t2, 0xd
    b       branch_0x801f2808
    addiu   $t2, $t2, 0x6
branch_0x801f27f4:
    lui     $t7, 0x8023
    addiu   $t7, $t7, 0x8aa0
    bnel    $a2, $t7, branch_0x801f280c
    addiu   $a2, $a2, 0x4
    addiu   $t2, $t2, 0x7
branch_0x801f2808:
    addiu   $a2, $a2, 0x4
branch_0x801f280c:
    bnel    $a2, $t5, branch_0x801f26b0
    or      $v0, $t0, $zero
    or      $v0, $t0, $zero
    lui     $t9, 0x104
    addiu   $t9, $t9, 0xd2d0
    lui     $t8, 0xfd18
    sw      $t8, 0x0($v0)
    sw      $t9, 0x4($v0)
    addiu   $t0, $t0, 0x8
    or      $v1, $t0, $zero
    addiu   $t0, $t0, 0x8
    lui     $t6, 0xf518
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    sw      $t6, 0x0($v1)
    or      $a0, $t0, $zero
    addiu   $t0, $t0, 0x8
    sw      $t7, 0x4($v1)
    or      $a1, $t0, $zero
    lui     $t8, 0xe600
    sw      $t8, 0x0($a0)
    addiu   $t0, $t0, 0x8
    sw      $zero, 0x4($a0)
    lui     $t6, 0x70b
    ori     $t6, $t6, 0xf156
    or      $a2, $t0, $zero
    lui     $t9, 0xf300
    sw      $t9, 0x0($a1)
    sw      $t6, 0x4($a1)
    lui     $a3, 0xe700
    sw      $a3, 0x0($a2)
    sw      $zero, 0x4($a2)
    addiu   $t0, $t0, 0x8
    lw      $a2, 0x2cc($sp)
    or      $v0, $t0, $zero
    lui     $t8, 0x8
    lui     $t7, 0xf518
    ori     $t7, $t7, 0x600
    ori     $t8, $t8, 0x200
    sw      $t8, 0x4($v0)
    sw      $t7, 0x0($v0)
    addiu   $t0, $t0, 0x8
    or      $v1, $t0, $zero
    lui     $t6, 0x2
    lui     $t9, 0xf200
    addiu   $t7, $a2, 0x18
    sw      $t9, 0x0($v1)
    ori     $t6, $t6, 0xc03c
    sll     $t8, $t7, 2
    sw      $t6, 0x4($v1)
    andi    $t9, $t8, 0xfff
    lw      $t8, 0x10($sp)
    lui     $t1, 0xe400
    sll     $t6, $t9, 12
    or      $t7, $t6, $t1
    addiu   $t0, $t0, 0x8
    or      $t9, $t7, $t8
    or      $a0, $t0, $zero
    addiu   $t6, $a2, 0xc
    sll     $t7, $t6, 2
    sw      $t9, 0x0($a0)
    lw      $t6, 0xc($sp)
    andi    $t8, $t7, 0xfff
    sll     $t9, $t8, 12
    addiu   $t0, $t0, 0x8
    or      $t7, $t9, $t6
    sw      $t7, 0x4($a0)
    or      $a1, $t0, $zero
    addiu   $t0, $t0, 0x8
    lui     $t2, 0xb300
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    sw      $t2, 0x0($a1)
    sw      $zero, 0x4($a1)
    lui     $t4, 0x400
    ori     $t4, $t4, 0x400
    lui     $t3, 0xb200
    or      $v1, $t0, $zero
    sw      $t3, 0x0($v0)
    sw      $t4, 0x4($v0)
    lui     $t9, 0x104
    addiu   $t9, $t9, 0xd5d0
    addiu   $t0, $t0, 0x8
    lui     $t8, 0xfd18
    sw      $t8, 0x0($v1)
    or      $a0, $t0, $zero
    sw      $t9, 0x4($v1)
    addiu   $t0, $t0, 0x8
    lui     $t7, 0x708
    lui     $t6, 0xf518
    sw      $t6, 0x0($a0)
    ori     $t7, $t7, 0x200
    or      $a1, $t0, $zero
    addiu   $t0, $t0, 0x8
    sw      $t7, 0x4($a0)
    or      $a2, $t0, $zero
    lui     $t8, 0xe600
    sw      $t8, 0x0($a1)
    sw      $zero, 0x4($a1)
    lui     $t6, 0x70b
    ori     $t6, $t6, 0xf156
    lui     $t9, 0xf300
    sw      $t9, 0x0($a2)
    sw      $t6, 0x4($a2)
    addiu   $t0, $t0, 0x8
    lw      $a2, 0x2cc($sp)
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    or      $v1, $t0, $zero
    sw      $a3, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t8, 0x8
    lui     $t7, 0xf518
    ori     $t7, $t7, 0x600
    ori     $t8, $t8, 0x200
    sw      $t8, 0x4($v1)
    sw      $t7, 0x0($v1)
    addiu   $t0, $t0, 0x8
    or      $a0, $t0, $zero
    lui     $t6, 0x2
    lui     $t9, 0xf200
    addiu   $t7, $a2, 0x38
    sw      $t9, 0x0($a0)
    ori     $t6, $t6, 0xc03c
    sll     $t8, $t7, 2
    sw      $t6, 0x4($a0)
    andi    $t9, $t8, 0xfff
    lw      $t8, 0x10($sp)
    sll     $t6, $t9, 12
    or      $t7, $t6, $t1
    addiu   $t0, $t0, 0x8
    or      $t9, $t7, $t8
    or      $a1, $t0, $zero
    addiu   $t6, $a2, 0x2c
    sll     $t7, $t6, 2
    sw      $t9, 0x0($a1)
    lw      $t6, 0xc($sp)
    andi    $t8, $t7, 0xfff
    sll     $t9, $t8, 12
    addiu   $t0, $t0, 0x8
    or      $v0, $t0, $zero
    or      $t7, $t9, $t6
    sw      $t7, 0x4($a1)
    addiu   $t0, $t0, 0x8
    or      $v1, $t0, $zero
    sw      $zero, 0x4($v0)
    sw      $t2, 0x0($v0)
    sw      $t4, 0x4($v1)
    sw      $t3, 0x0($v1)
    b       branch_0x801f3ec4
    addiu   $t0, $t0, 0x8
branch_0x801f2a68:
    beqz    $a1, branch_0x801f2a80
    sw      $a3, 0x2d4($sp)
    addiu   $at, $zero, 0x2
    bne     $a1, $at, branch_0x801f37b4
    nop
    sw      $a3, 0x2d4($sp)
branch_0x801f2a80:
    or      $a2, $t0, $zero
    addiu   $t0, $t0, 0x8
    lui     $t8, 0xe700
    sw      $t8, 0x0($a2)
    sw      $zero, 0x4($a2)
    or      $a3, $t0, $zero
    lui     $v1, 0xfa00
    addiu   $a1, $zero, 0xffff
    sw      $a1, 0x4($a3)
    sw      $v1, 0x0($a3)
    lw      $t9, 0x2d8($sp)
    addiu   $t0, $t0, 0x8
    lw      $t6, 0x2dc($sp)
    bnez    $t9, branch_0x801f2be4
    nop
    lui     $t6, 0x800d
    lw      $t6, 0x465c($t6)
    lui     $t8, 0x801c
    addiu   $t8, $t8, 0x2698
    sll     $t7, $t6, 3
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 4
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 3
    addu    $a0, $t7, $t8
    lw      $t9, 0x2f4($a0)
    lui     $t6, 0xe700
    or      $v0, $t0, $zero
    beqz    $t9, branch_0x801f2b00
    lui     $t7, 0x8023
    b       branch_0x801f2b08
    lw      $a3, 0x0($a0)
branch_0x801f2b00:
    lw      $a3, 0x0($a0)
    addiu   $a3, $a3, 0xffff
branch_0x801f2b08:
    sw      $t6, 0x0($v0)
    sw      $zero, 0x4($v0)
    lw      $t7, -0x77a0($t7)
    addiu   $t0, $t0, 0x8
    lw      $t8, 0x2dc($sp)
    beqz    $t7, branch_0x801f2b74
    lw      $t6, 0x2d4($sp)
    bne     $t8, $a3, branch_0x801f2b74
    or      $v0, $t0, $zero
    sw      $v1, 0x0($v0)
    lui     $t9, 0x8023
    lui     $t8, 0x8023
    lw      $t8, -0x7784($t8)
    lw      $t6, -0x7788($t9)
    addiu   $t0, $t0, 0x8
    andi    $t9, $t8, 0xff
    sll     $t7, $t6, 24
    sll     $t6, $t9, 16
    lui     $t9, 0x8023
    lw      $t9, -0x7780($t9)
    or      $t8, $t7, $t6
    andi    $t7, $t9, 0xff
    sll     $t6, $t7, 8
    or      $t9, $t8, $t6
    ori     $t7, $t9, 0xff
    b       branch_0x801f2e90
    sw      $t7, 0x4($v0)
branch_0x801f2b74:
    lui     $t8, 0x801c
    lw      $t8, 0x1d40($t8)
    lui     $t9, 0x8023
    or      $v0, $t0, $zero
    slt     $at, $t8, $t6
    bnez    $at, branch_0x801f2bd4
    lui     $t6, 0x8023
    or      $v0, $t0, $zero
    sw      $v1, 0x0($v0)
    lw      $t6, -0x7790($t6)
    lw      $t7, -0x7794($t9)
    addiu   $t0, $t0, 0x8
    andi    $t9, $t6, 0xff
    sll     $t8, $t7, 24
    sll     $t7, $t9, 16
    lui     $t9, 0x8023
    lw      $t9, -0x778c($t9)
    or      $t6, $t8, $t7
    andi    $t8, $t9, 0xff
    sll     $t7, $t8, 8
    or      $t9, $t6, $t7
    ori     $t8, $t9, 0xff
    b       branch_0x801f2e90
    sw      $t8, 0x4($v0)
branch_0x801f2bd4:
    addiu   $t0, $t0, 0x8
    sw      $v1, 0x0($v0)
    b       branch_0x801f2e90
    sw      $a1, 0x4($v0)
branch_0x801f2be4:
    beq     $t6, $a0, branch_0x801f2e90
    addiu   $t3, $s0, 0x8
    bne     $t6, $t1, branch_0x801f2cb0
    lui     $at, 0xe400
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    lui     $t9, 0x104
    addiu   $t9, $t9, 0x9180
    or      $v1, $t0, $zero
    lui     $t7, 0xfd70
    sw      $t7, 0x0($v0)
    sw      $t9, 0x4($v0)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t0, $t0, 0x8
    lui     $t8, 0xf570
    sw      $t8, 0x0($v1)
    or      $a0, $t0, $zero
    sw      $t6, 0x4($v1)
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    lui     $t7, 0xe600
    sw      $t7, 0x0($a0)
    sw      $zero, 0x4($a0)
    lui     $t8, 0x701
    ori     $t8, $t8, 0xf800
    addiu   $t0, $t0, 0x8
    lui     $t9, 0xf300
    sw      $t9, 0x0($a1)
    or      $a2, $t0, $zero
    sw      $t8, 0x4($a1)
    addiu   $t0, $t0, 0x8
    lui     $t6, 0xe700
    sw      $t6, 0x0($a2)
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    sw      $zero, 0x4($a2)
    lui     $t9, 0x8
    lui     $t7, 0xf568
    ori     $t7, $t7, 0x200
    ori     $t9, $t9, 0x200
    or      $v1, $t0, $zero
    lui     $t6, 0x1
    ori     $t6, $t6, 0xc01c
    sw      $t9, 0x4($v0)
    sw      $t7, 0x0($v0)
    lui     $t8, 0xf200
    sw      $t8, 0x0($v1)
    sw      $t6, 0x4($v1)
    b       branch_0x801f2d68
    addiu   $t0, $t0, 0x8
branch_0x801f2cb0:
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    lui     $t9, 0x104
    addiu   $t9, $t9, 0x90c0
    or      $v1, $t0, $zero
    lui     $t7, 0xfd70
    sw      $t7, 0x0($v0)
    sw      $t9, 0x4($v0)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t0, $t0, 0x8
    lui     $t8, 0xf570
    sw      $t8, 0x0($v1)
    or      $a0, $t0, $zero
    sw      $t6, 0x4($v1)
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    lui     $t7, 0xe600
    sw      $t7, 0x0($a0)
    sw      $zero, 0x4($a0)
    lui     $t8, 0x701
    ori     $t8, $t8, 0xf800
    addiu   $t0, $t0, 0x8
    lui     $t9, 0xf300
    sw      $t9, 0x0($a1)
    or      $a2, $t0, $zero
    sw      $t8, 0x4($a1)
    addiu   $t0, $t0, 0x8
    lui     $t6, 0xe700
    sw      $t6, 0x0($a2)
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    sw      $zero, 0x4($a2)
    lui     $t9, 0x8
    lui     $t7, 0xf568
    ori     $t7, $t7, 0x200
    ori     $t9, $t9, 0x200
    or      $v1, $t0, $zero
    sw      $t9, 0x4($v0)
    sw      $t7, 0x0($v0)
    lui     $t6, 0x1
    ori     $t6, $t6, 0xc01c
    lui     $t8, 0xf200
    sw      $t8, 0x0($v1)
    sw      $t6, 0x4($v1)
    addiu   $t0, $t0, 0x8
branch_0x801f2d68:
    lw      $t5, 0x2a8($sp)
    lw      $a3, 0x2cc($sp)
    sll     $t9, $t3, 2
    bnez    $t5, branch_0x801f2d84
    sll     $t4, $s0, 2
    b       branch_0x801f2d9c
    addiu   $a3, $a3, 0xfff8
branch_0x801f2d84:
    bne     $t5, $t1, branch_0x801f2d98
    lw      $a3, 0x2cc($sp)
    lw      $a3, 0x2cc($sp)
    b       branch_0x801f2d9c
    addiu   $a3, $a3, 0x4
branch_0x801f2d98:
    addiu   $a3, $a3, 0xa
branch_0x801f2d9c:
    addiu   $v0, $a3, 0x8
    sll     $t7, $v0, 2
    or      $t1, $t0, $zero
    blez    $t7, branch_0x801f2db8
    addiu   $t0, $t0, 0x8
    b       branch_0x801f2dbc
    or      $a2, $t7, $zero
branch_0x801f2db8:
    or      $a2, $zero, $zero
branch_0x801f2dbc:
    blez    $t9, branch_0x801f2dcc
    andi    $t7, $a2, 0xfff
    b       branch_0x801f2dd0
    or      $a1, $t9, $zero
branch_0x801f2dcc:
    or      $a1, $zero, $zero
branch_0x801f2dd0:
    andi    $t8, $a1, 0xfff
    or      $t6, $t8, $at
    sll     $t9, $t7, 12
    or      $t8, $t6, $t9
    sll     $v1, $a3, 2
    blez    $v1, branch_0x801f2df4
    sw      $t8, 0x0($t1)
    b       branch_0x801f2df8
    or      $a2, $v1, $zero
branch_0x801f2df4:
    or      $a2, $zero, $zero
branch_0x801f2df8:
    blez    $t4, branch_0x801f2e08
    andi    $t6, $a2, 0xfff
    b       branch_0x801f2e0c
    or      $a1, $t4, $zero
branch_0x801f2e08:
    or      $a1, $zero, $zero
branch_0x801f2e0c:
    andi    $t7, $a1, 0xfff
    sll     $t9, $t6, 12
    or      $t8, $t7, $t9
    sll     $v0, $v1, 10
    sra     $t7, $v0, 7
    sw      $t8, 0x4($t1)
    lui     $t6, 0xb300
    or      $a0, $t0, $zero
    sw      $t6, 0x0($a0)
    bgez    $t7, branch_0x801f2e40
    addiu   $t0, $t0, 0x8
    b       branch_0x801f2e44
    or      $a2, $t7, $zero
branch_0x801f2e40:
    or      $a2, $zero, $zero
branch_0x801f2e44:
    sll     $v0, $t4, 10
    sra     $t9, $v0, 7
    bgez    $t9, branch_0x801f2e5c
    or      $v0, $t0, $zero
    b       branch_0x801f2e60
    or      $a1, $t9, $zero
branch_0x801f2e5c:
    or      $a1, $zero, $zero
branch_0x801f2e60:
    subu    $t8, $zero, $a1
    andi    $t6, $t8, 0xffff
    subu    $t9, $zero, $a2
    sll     $t8, $t9, 16
    or      $t7, $t6, $t8
    sw      $t7, 0x4($a0)
    lui     $t6, 0x400
    ori     $t6, $t6, 0x400
    lui     $t9, 0xb200
    sw      $t9, 0x0($v0)
    sw      $t6, 0x4($v0)
    addiu   $t0, $t0, 0x8
branch_0x801f2e90:
    sll     $t4, $s0, 2
    sll     $t7, $t4, 10
    addiu   $t3, $s0, 0x8
    sll     $t8, $t3, 2
    sra     $t9, $t7, 7
    sw      $t9, 0x8($sp)
    or      $t3, $t8, $zero
    or      $a3, $zero, $zero
    addiu   $t5, $zero, 0x6
    lw      $v0, 0x2a8($sp)
branch_0x801f2eb8:
    beqz    $v0, branch_0x801f2ec8
    slt     $at, $a3, $v0
    bnez    $at, branch_0x801f3090
    nop
branch_0x801f2ec8:
    or      $v0, $t0, $zero
    lui     $t6, 0xfd70
    sll     $t8, $a3, 2
    lui     $t7, %hi(Unknown_0x80228A98)
    addu    $t7, $t7, $t8
    sw      $t6, 0x0($v0)
    lw      $t7, %lo(Unknown_0x80228A98)($t7)
    lui     $t6, 0x104
    addiu   $t6, $t6, 0x87c0
    sll     $t9, $t7, 6
    addu    $t8, $t9, $t6
    addiu   $t0, $t0, 0x8
    or      $v1, $t0, $zero
    sw      $t8, 0x4($v0)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t0, $t0, 0x8
    lui     $t7, 0xf570
    sw      $t7, 0x0($v1)
    or      $a0, $t0, $zero
    sw      $t9, 0x4($v1)
    addiu   $t0, $t0, 0x8
    lui     $t6, 0xe600
    sw      $t6, 0x0($a0)
    or      $a1, $t0, $zero
    addiu   $t0, $t0, 0x8
    sw      $zero, 0x4($a0)
    lui     $t7, 0x701
    ori     $t7, $t7, 0xf800
    or      $a2, $t0, $zero
    lui     $t8, 0xf300
    sw      $t8, 0x0($a1)
    addiu   $t0, $t0, 0x8
    sw      $t7, 0x4($a1)
    or      $v0, $t0, $zero
    lui     $t9, 0xe700
    sw      $t9, 0x0($a2)
    addiu   $t0, $t0, 0x8
    lui     $t6, 0xf568
    ori     $t6, $t6, 0x200
    or      $v1, $t0, $zero
    sw      $zero, 0x4($a2)
    lui     $t8, 0x8
    ori     $t8, $t8, 0x200
    sw      $t6, 0x0($v0)
    addiu   $t0, $t0, 0x8
    lui     $t9, 0x1
    addiu   $a0, $t2, 0x8
    ori     $t9, $t9, 0xc01c
    sw      $t8, 0x4($v0)
    lui     $t7, 0xf200
    sll     $t6, $a0, 2
    or      $t1, $t0, $zero
    sw      $t7, 0x0($v1)
    sw      $t9, 0x4($v1)
    blez    $t6, branch_0x801f2fb4
    addiu   $t0, $t0, 0x8
    b       branch_0x801f2fb8
    or      $a2, $t6, $zero
branch_0x801f2fb4:
    or      $a2, $zero, $zero
branch_0x801f2fb8:
    blez    $t3, branch_0x801f2fc8
    lui     $at, 0xe400
    b       branch_0x801f2fcc
    or      $a1, $t3, $zero
branch_0x801f2fc8:
    or      $a1, $zero, $zero
branch_0x801f2fcc:
    andi    $t8, $a1, 0xfff
    andi    $t9, $a2, 0xfff
    sll     $t6, $t9, 12
    or      $t7, $t8, $at
    or      $t8, $t7, $t6
    sll     $v1, $t2, 2
    blez    $v1, branch_0x801f2ff4
    sw      $t8, 0x0($t1)
    b       branch_0x801f2ff8
    or      $a2, $v1, $zero
branch_0x801f2ff4:
    or      $a2, $zero, $zero
branch_0x801f2ff8:
    blez    $t4, branch_0x801f3008
    andi    $t7, $a2, 0xfff
    b       branch_0x801f300c
    or      $a1, $t4, $zero
branch_0x801f3008:
    or      $a1, $zero, $zero
branch_0x801f300c:
    andi    $t9, $a1, 0xfff
    sll     $t6, $t7, 12
    or      $t8, $t9, $t6
    sll     $v0, $v1, 10
    sra     $t9, $v0, 7
    sw      $t8, 0x4($t1)
    lui     $t7, 0xb300
    or      $a0, $t0, $zero
    sw      $t7, 0x0($a0)
    bgez    $t9, branch_0x801f3040
    addiu   $t0, $t0, 0x8
    b       branch_0x801f3044
    or      $a2, $t9, $zero
branch_0x801f3040:
    or      $a2, $zero, $zero
branch_0x801f3044:
    lw      $t6, 0x8($sp)
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    bgez    $t6, branch_0x801f3060
    or      $a1, $zero, $zero
    b       branch_0x801f3060
    or      $a1, $t6, $zero
branch_0x801f3060:
    subu    $t8, $zero, $a1
    andi    $t7, $t8, 0xffff
    subu    $t6, $zero, $a2
    sll     $t8, $t6, 16
    or      $t9, $t7, $t8
    sw      $t9, 0x4($a0)
    lui     $t7, 0x400
    ori     $t7, $t7, 0x400
    lui     $t6, 0xb200
    sw      $t6, 0x0($v0)
    sw      $t7, 0x4($v0)
    lw      $v0, 0x2a8($sp)
branch_0x801f3090:
    beqz    $a3, branch_0x801f30a4
    addiu   $t2, $t2, 0x7
    addiu   $at, $zero, 0x2
    bnel    $a3, $at, branch_0x801f30ac
    addiu   $a3, $a3, 0x1
branch_0x801f30a4:
    addiu   $t2, $t2, 0x5
    addiu   $a3, $a3, 0x1
branch_0x801f30ac:
    bne     $a3, $t5, branch_0x801f2eb8
    nop
    bnez    $v0, branch_0x801f3274
    lui     $t8, 0xfd70
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    lui     $t9, 0x104
    addiu   $t9, $t9, 0x9100
    or      $v1, $t0, $zero
    sw      $t9, 0x4($v0)
    sw      $t8, 0x0($v0)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    addiu   $t0, $t0, 0x8
    lui     $t6, 0xf570
    sw      $t6, 0x0($v1)
    or      $a0, $t0, $zero
    sw      $t7, 0x4($v1)
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    lui     $t8, 0xe600
    sw      $t8, 0x0($a0)
    sw      $zero, 0x4($a0)
    lui     $t6, 0x701
    ori     $t6, $t6, 0xf800
    addiu   $t0, $t0, 0x8
    lui     $t9, 0xf300
    sw      $t9, 0x0($a1)
    or      $a2, $t0, $zero
    sw      $t6, 0x4($a1)
    addiu   $t0, $t0, 0x8
    lui     $t7, 0xe700
    sw      $t7, 0x0($a2)
    or      $v0, $t0, $zero
    sw      $zero, 0x4($a2)
    lui     $t9, 0x8
    lui     $t8, 0xf568
    ori     $t8, $t8, 0x200
    ori     $t9, $t9, 0x200
    addiu   $t0, $t0, 0x8
    or      $v1, $t0, $zero
    sw      $t9, 0x4($v0)
    sw      $t8, 0x0($v0)
    lui     $t7, 0x1
    ori     $t7, $t7, 0xc01c
    lui     $t6, 0xf200
    sw      $t6, 0x0($v1)
    sw      $t7, 0x4($v1)
    lw      $a0, 0x2cc($sp)
    addiu   $t0, $t0, 0x8
    or      $a3, $t0, $zero
    addiu   $a0, $a0, 0xe
    sll     $t8, $a0, 2
    blez    $t8, branch_0x801f3190
    addiu   $t0, $t0, 0x8
    b       branch_0x801f3194
    or      $a2, $t8, $zero
branch_0x801f3190:
    or      $a2, $zero, $zero
branch_0x801f3194:
    blez    $t3, branch_0x801f31a4
    lui     $at, 0xe400
    b       branch_0x801f31a8
    or      $a1, $t3, $zero
branch_0x801f31a4:
    or      $a1, $zero, $zero
branch_0x801f31a8:
    andi    $t9, $a1, 0xfff
    andi    $t7, $a2, 0xfff
    sll     $t8, $t7, 12
    or      $t6, $t9, $at
    or      $t9, $t6, $t8
    sw      $t9, 0x0($a3)
    lw      $v1, 0x2cc($sp)
    or      $a0, $t0, $zero
    addiu   $t0, $t0, 0x8
    addiu   $v1, $v1, 0x6
    sll     $t7, $v1, 2
    blez    $t7, branch_0x801f31e4
    or      $v1, $t7, $zero
    b       branch_0x801f31e8
    or      $a2, $t7, $zero
branch_0x801f31e4:
    or      $a2, $zero, $zero
branch_0x801f31e8:
    blez    $t4, branch_0x801f31f8
    andi    $t8, $a2, 0xfff
    b       branch_0x801f31fc
    or      $a1, $t4, $zero
branch_0x801f31f8:
    or      $a1, $zero, $zero
branch_0x801f31fc:
    andi    $t6, $a1, 0xfff
    sll     $t9, $t8, 12
    or      $t7, $t6, $t9
    sll     $v0, $v1, 10
    sra     $t6, $v0, 7
    sw      $t7, 0x4($a3)
    lui     $t8, 0xb300
    bgez    $t6, branch_0x801f3228
    sw      $t8, 0x0($a0)
    b       branch_0x801f322c
    or      $a2, $t6, $zero
branch_0x801f3228:
    or      $a2, $zero, $zero
branch_0x801f322c:
    lw      $t9, 0x8($sp)
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    bgez    $t9, branch_0x801f3248
    or      $a1, $zero, $zero
    b       branch_0x801f3248
    or      $a1, $t9, $zero
branch_0x801f3248:
    subu    $t7, $zero, $a1
    andi    $t8, $t7, 0xffff
    subu    $t9, $zero, $a2
    sll     $t7, $t9, 16
    or      $t6, $t8, $t7
    sw      $t6, 0x4($a0)
    lui     $t8, 0x400
    ori     $t8, $t8, 0x400
    lui     $t9, 0xb200
    sw      $t9, 0x0($v0)
    sw      $t8, 0x4($v0)
branch_0x801f3274:
    or      $v0, $t0, $zero
    lui     $t6, 0x104
    addiu   $t6, $t6, 0x9140
    addiu   $t0, $t0, 0x8
    lui     $t7, 0xfd70
    sw      $t7, 0x0($v0)
    or      $v1, $t0, $zero
    sw      $t6, 0x4($v0)
    lui     $t8, 0x708
    ori     $t8, $t8, 0x200
    addiu   $t0, $t0, 0x8
    lui     $t9, 0xf570
    sw      $t9, 0x0($v1)
    or      $a0, $t0, $zero
    sw      $t8, 0x4($v1)
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    lui     $t7, 0xe600
    sw      $t7, 0x0($a0)
    addiu   $t0, $t0, 0x8
    sw      $zero, 0x4($a0)
    lui     $t9, 0x701
    ori     $t9, $t9, 0xf800
    or      $a2, $t0, $zero
    lui     $t6, 0xf300
    sw      $t6, 0x0($a1)
    sw      $t9, 0x4($a1)
    lui     $t8, 0xe700
    sw      $t8, 0x0($a2)
    sw      $zero, 0x4($a2)
    addiu   $t0, $t0, 0x8
    lw      $t1, 0x2cc($sp)
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    lui     $t7, 0xf568
    ori     $t7, $t7, 0x200
    or      $v1, $t0, $zero
    lui     $t6, 0x8
    ori     $t6, $t6, 0x200
    addiu   $t0, $t0, 0x8
    sw      $t7, 0x0($v0)
    lui     $t8, 0x1
    addiu   $a0, $t1, 0x21
    ori     $t8, $t8, 0xc01c
    sw      $t6, 0x4($v0)
    lui     $t9, 0xf200
    sll     $t7, $a0, 2
    or      $a3, $t0, $zero
    sw      $t9, 0x0($v1)
    sw      $t8, 0x4($v1)
    blez    $t7, branch_0x801f334c
    addiu   $t0, $t0, 0x8
    b       branch_0x801f3350
    or      $a2, $t7, $zero
branch_0x801f334c:
    or      $a2, $zero, $zero
branch_0x801f3350:
    blez    $t3, branch_0x801f3360
    lui     $at, 0xe400
    b       branch_0x801f3364
    or      $a1, $t3, $zero
branch_0x801f3360:
    or      $a1, $zero, $zero
branch_0x801f3364:
    andi    $t8, $a2, 0xfff
    sll     $t7, $t8, 12
    andi    $t6, $a1, 0xfff
    or      $t9, $t6, $at
    addiu   $v1, $t1, 0x19
    sll     $t8, $v1, 2
    or      $t6, $t9, $t7
    sw      $t6, 0x0($a3)
    blez    $t8, branch_0x801f3394
    or      $v1, $t8, $zero
    b       branch_0x801f3398
    or      $a2, $t8, $zero
branch_0x801f3394:
    or      $a2, $zero, $zero
branch_0x801f3398:
    blez    $t4, branch_0x801f33a8
    andi    $t7, $a2, 0xfff
    b       branch_0x801f33ac
    or      $a1, $t4, $zero
branch_0x801f33a8:
    or      $a1, $zero, $zero
branch_0x801f33ac:
    andi    $t9, $a1, 0xfff
    sll     $t6, $t7, 12
    or      $t8, $t9, $t6
    sll     $v0, $v1, 10
    sra     $t9, $v0, 7
    sw      $t8, 0x4($a3)
    lui     $t7, 0xb300
    or      $a0, $t0, $zero
    sw      $t7, 0x0($a0)
    bgez    $t9, branch_0x801f33e0
    addiu   $t0, $t0, 0x8
    b       branch_0x801f33e4
    or      $a2, $t9, $zero
branch_0x801f33e0:
    or      $a2, $zero, $zero
branch_0x801f33e4:
    lw      $t6, 0x8($sp)
    or      $v0, $t0, $zero
    or      $a1, $zero, $zero
    bgez    $t6, branch_0x801f3400
    lui     $at, 0xe400
    b       branch_0x801f3400
    or      $a1, $t6, $zero
branch_0x801f3400:
    subu    $t8, $zero, $a1
    andi    $t7, $t8, 0xffff
    subu    $t6, $zero, $a2
    sll     $t8, $t6, 16
    or      $t9, $t7, $t8
    sw      $t9, 0x4($a0)
    lui     $t7, 0x400
    ori     $t7, $t7, 0x400
    lui     $t6, 0xb200
    sw      $t6, 0x0($v0)
    sw      $t7, 0x4($v0)
    lw      $t8, 0x2d8($sp)
    addiu   $t0, $t0, 0x8
    or      $v0, $t0, $zero
    bnez    $t8, branch_0x801f3ec4
    lui     $t9, 0xfd70
    lui     $t6, 0x104
    addiu   $t6, $t6, 0x8d00
    addiu   $t0, $t0, 0x8
    or      $v1, $t0, $zero
    sw      $t6, 0x4($v0)
    sw      $t9, 0x0($v0)
    lui     $t8, 0x708
    ori     $t8, $t8, 0x200
    addiu   $t0, $t0, 0x8
    lui     $t7, 0xf570
    sw      $t7, 0x0($v1)
    or      $a0, $t0, $zero
    sw      $t8, 0x4($v1)
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    lui     $t9, 0xe600
    sw      $t9, 0x0($a0)
    addiu   $t0, $t0, 0x8
    sw      $zero, 0x4($a0)
    lui     $t7, 0x701
    ori     $t7, $t7, 0xf800
    or      $a2, $t0, $zero
    lui     $t6, 0xf300
    sw      $t6, 0x0($a1)
    sw      $t7, 0x4($a1)
    lui     $t8, 0xe700
    sw      $t8, 0x0($a2)
    sw      $zero, 0x4($a2)
    addiu   $t0, $t0, 0x8
    lw      $t2, 0x2cc($sp)
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    lui     $t9, 0xf568
    ori     $t9, $t9, 0x200
    or      $v1, $t0, $zero
    lui     $t6, 0x8
    ori     $t6, $t6, 0x200
    addiu   $t0, $t0, 0x8
    sw      $t9, 0x0($v0)
    lui     $t8, 0x1
    addiu   $a0, $t2, 0x44
    ori     $t8, $t8, 0xc01c
    sw      $t6, 0x4($v0)
    lui     $t7, 0xf200
    sll     $t9, $a0, 2
    or      $a3, $t0, $zero
    sw      $t7, 0x0($v1)
    sw      $t8, 0x4($v1)
    blez    $t9, branch_0x801f3510
    addiu   $t0, $t0, 0x8
    b       branch_0x801f3514
    or      $a2, $t9, $zero
branch_0x801f3510:
    or      $a2, $zero, $zero
branch_0x801f3514:
    blez    $t3, branch_0x801f3524
    andi    $t8, $a2, 0xfff
    b       branch_0x801f3528
    or      $a1, $t3, $zero
branch_0x801f3524:
    or      $a1, $zero, $zero
branch_0x801f3528:
    andi    $t6, $a1, 0xfff
    sll     $t9, $t8, 12
    or      $t7, $t6, $at
    addiu   $v1, $t2, 0x3c
    sll     $t8, $v1, 2
    or      $t6, $t7, $t9
    sw      $t6, 0x0($a3)
    blez    $t8, branch_0x801f3554
    or      $v1, $t8, $zero
    b       branch_0x801f3558
    or      $a2, $t8, $zero
branch_0x801f3554:
    or      $a2, $zero, $zero
branch_0x801f3558:
    blez    $t4, branch_0x801f3568
    andi    $t9, $a2, 0xfff
    b       branch_0x801f356c
    or      $a1, $t4, $zero
branch_0x801f3568:
    or      $a1, $zero, $zero
branch_0x801f356c:
    andi    $t7, $a1, 0xfff
    sll     $t6, $t9, 12
    or      $t8, $t7, $t6
    sll     $v0, $v1, 10
    sra     $t7, $v0, 7
    sw      $t8, 0x4($a3)
    lui     $t9, 0xb300
    or      $t1, $t0, $zero
    sw      $t9, 0x0($t1)
    bgez    $t7, branch_0x801f35a0
    addiu   $t0, $t0, 0x8
    b       branch_0x801f35a4
    or      $a2, $t7, $zero
branch_0x801f35a0:
    or      $a2, $zero, $zero
branch_0x801f35a4:
    lw      $t6, 0x8($sp)
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    bgez    $t6, branch_0x801f35c0
    or      $v1, $t0, $zero
    b       branch_0x801f35c4
    or      $a1, $t6, $zero
branch_0x801f35c0:
    or      $a1, $zero, $zero
branch_0x801f35c4:
    subu    $t8, $zero, $a1
    andi    $t9, $t8, 0xffff
    subu    $t6, $zero, $a2
    sll     $t8, $t6, 16
    or      $t7, $t9, $t8
    sw      $t7, 0x4($t1)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    lui     $t6, 0xb200
    sw      $t6, 0x0($v0)
    sw      $t9, 0x4($v0)
    lui     $t8, 0xfd70
    sw      $t8, 0x0($v1)
    lw      $t7, 0x2dc($sp)
    lui     $t9, 0x104
    addiu   $t9, $t9, 0x87c0
    sll     $t6, $t7, 6
    addu    $t8, $t6, $t9
    addiu   $t0, $t0, 0x8
    or      $a0, $t0, $zero
    sw      $t8, 0x4($v1)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t0, $t0, 0x8
    lui     $t7, 0xf570
    sw      $t7, 0x0($a0)
    or      $a3, $t0, $zero
    sw      $t6, 0x4($a0)
    lui     $t9, 0xe600
    sw      $t9, 0x0($a3)
    addiu   $t0, $t0, 0x8
    or      $v0, $t0, $zero
    sw      $zero, 0x4($a3)
    lw      $t2, 0x2cc($sp)
    addiu   $t0, $t0, 0x8
    lui     $t7, 0x701
    ori     $t7, $t7, 0xf800
    or      $v1, $t0, $zero
    lui     $t8, 0xf300
    sw      $t8, 0x0($v0)
    addiu   $t0, $t0, 0x8
    sw      $t7, 0x4($v0)
    or      $a0, $t0, $zero
    lui     $t6, 0xe700
    sw      $t6, 0x0($v1)
    addiu   $t0, $t0, 0x8
    lui     $t9, 0xf568
    ori     $t9, $t9, 0x200
    or      $a1, $t0, $zero
    sw      $zero, 0x4($v1)
    lui     $t8, 0x8
    ori     $t8, $t8, 0x200
    sw      $t9, 0x0($a0)
    addiu   $t0, $t0, 0x8
    lui     $t6, 0x1
    addiu   $a3, $t2, 0x4a
    ori     $t6, $t6, 0xc01c
    sw      $t8, 0x4($a0)
    lui     $t7, 0xf200
    sll     $t9, $a3, 2
    or      $t1, $t0, $zero
    sw      $t7, 0x0($a1)
    sw      $t6, 0x4($a1)
    blez    $t9, branch_0x801f36d0
    addiu   $t0, $t0, 0x8
    b       branch_0x801f36d4
    or      $a2, $t9, $zero
branch_0x801f36d0:
    or      $a2, $zero, $zero
branch_0x801f36d4:
    blez    $t3, branch_0x801f36e4
    lui     $at, 0xe400
    b       branch_0x801f36e8
    or      $a1, $t3, $zero
branch_0x801f36e4:
    or      $a1, $zero, $zero
branch_0x801f36e8:
    andi    $t6, $a2, 0xfff
    sll     $t9, $t6, 12
    andi    $t8, $a1, 0xfff
    or      $t7, $t8, $at
    addiu   $v0, $t2, 0x42
    sll     $t6, $v0, 2
    or      $t8, $t7, $t9
    sw      $t8, 0x0($t1)
    blez    $t6, branch_0x801f3718
    or      $v0, $t6, $zero
    b       branch_0x801f371c
    or      $a2, $t6, $zero
branch_0x801f3718:
    or      $a2, $zero, $zero
branch_0x801f371c:
    blez    $t4, branch_0x801f372c
    andi    $t9, $a2, 0xfff
    b       branch_0x801f3730
    or      $a1, $t4, $zero
branch_0x801f372c:
    or      $a1, $zero, $zero
branch_0x801f3730:
    andi    $t7, $a1, 0xfff
    sll     $t8, $t9, 12
    or      $t6, $t7, $t8
    sll     $a0, $v0, 10
    sra     $t7, $a0, 7
    sw      $t6, 0x4($t1)
    lui     $t9, 0xb300
    or      $v1, $t0, $zero
    sw      $t9, 0x0($v1)
    bgez    $t7, branch_0x801f3764
    addiu   $t0, $t0, 0x8
    b       branch_0x801f3768
    or      $a2, $t7, $zero
branch_0x801f3764:
    or      $a2, $zero, $zero
branch_0x801f3768:
    lw      $t8, 0x8($sp)
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    bgez    $t8, branch_0x801f3784
    or      $a1, $zero, $zero
    b       branch_0x801f3784
    or      $a1, $t8, $zero
branch_0x801f3784:
    subu    $t6, $zero, $a1
    andi    $t9, $t6, 0xffff
    subu    $t8, $zero, $a2
    sll     $t6, $t8, 16
    or      $t7, $t9, $t6
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    sw      $t7, 0x4($v1)
    lui     $t8, 0xb200
    sw      $t8, 0x0($v0)
    b       branch_0x801f3ec4
    sw      $t9, 0x4($v0)
branch_0x801f37b4:
    bne     $a1, $a0, branch_0x801f3ec4
    or      $v1, $t0, $zero
    lui     $t6, 0xe700
    sw      $t6, 0x0($v1)
    addiu   $t0, $t0, 0x8
    bnez    $a2, branch_0x801f37ec
    sw      $zero, 0x4($v1)
    or      $a2, $t0, $zero
    lui     $v1, 0xfa00
    addiu   $a1, $zero, 0xffff
    sw      $a1, 0x4($a2)
    sw      $v1, 0x0($a2)
    b       branch_0x801f388c
    addiu   $t0, $t0, 0x8
branch_0x801f37ec:
    bne     $a2, $t1, branch_0x801f3844
    lui     $v1, 0xfa00
    lui     $v1, 0xfa00
    or      $v0, $t0, $zero
    sw      $v1, 0x0($v0)
    lui     $t7, 0x8023
    lui     $t6, 0x8023
    lw      $t6, -0x7778($t6)
    lw      $t8, -0x777c($t7)
    addiu   $t0, $t0, 0x8
    andi    $t7, $t6, 0xff
    sll     $t9, $t8, 24
    sll     $t8, $t7, 16
    lui     $t7, 0x8023
    lw      $t7, -0x7774($t7)
    or      $t6, $t9, $t8
    andi    $t9, $t7, 0xff
    sll     $t8, $t9, 8
    or      $t7, $t6, $t8
    ori     $t9, $t7, 0xff
    b       branch_0x801f388c
    sw      $t9, 0x4($v0)
branch_0x801f3844:
    or      $v0, $t0, $zero
    sw      $v1, 0x0($v0)
    lui     $t6, 0x8023
    lui     $t9, 0x8023
    lw      $t9, -0x776c($t9)
    lw      $t8, -0x7770($t6)
    addiu   $t0, $t0, 0x8
    andi    $t6, $t9, 0xff
    sll     $t7, $t8, 24
    sll     $t8, $t6, 16
    lui     $t6, 0x8023
    lw      $t6, -0x7768($t6)
    or      $t9, $t7, $t8
    andi    $t7, $t6, 0xff
    sll     $t8, $t7, 8
    or      $t6, $t9, $t8
    ori     $t7, $t6, 0xff
    sw      $t7, 0x4($v0)
branch_0x801f388c:
    lw      $t9, 0x2dc($sp)
    addiu   $t4, $s0, 0xc
    addiu   $t5, $zero, 0x6
    beq     $t9, $a0, branch_0x801f3ac4
    lui     $t3, 0x104
    bne     $t9, $t1, branch_0x801f3964
    lui     $at, 0xe400
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    lui     $t6, 0x104
    addiu   $t6, $t6, 0xb408
    or      $v1, $t0, $zero
    lui     $t8, 0xfd70
    sw      $t8, 0x0($v0)
    sw      $t6, 0x4($v0)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t0, $t0, 0x8
    lui     $t7, 0xf570
    sw      $t7, 0x0($v1)
    or      $a0, $t0, $zero
    sw      $t9, 0x4($v1)
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    lui     $t8, 0xe600
    sw      $t8, 0x0($a0)
    sw      $zero, 0x4($a0)
    lui     $t7, 0x705
    ori     $t7, $t7, 0xf400
    addiu   $t0, $t0, 0x8
    lui     $t6, 0xf300
    sw      $t6, 0x0($a1)
    or      $a2, $t0, $zero
    sw      $t7, 0x4($a1)
    addiu   $t0, $t0, 0x8
    lui     $t9, 0xe700
    sw      $t9, 0x0($a2)
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    sw      $zero, 0x4($a2)
    lui     $t6, 0x8
    lui     $t8, 0xf568
    ori     $t8, $t8, 0x400
    ori     $t6, $t6, 0x200
    or      $v1, $t0, $zero
    lui     $t9, 0x3
    ori     $t9, $t9, 0xc02c
    sw      $t6, 0x4($v0)
    sw      $t8, 0x0($v0)
    lui     $t7, 0xf200
    sw      $t7, 0x0($v1)
    sw      $t9, 0x4($v1)
    b       branch_0x801f3a1c
    addiu   $t0, $t0, 0x8
branch_0x801f3964:
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    lui     $t6, 0x104
    addiu   $t6, $t6, 0xae08
    or      $v1, $t0, $zero
    lui     $t8, 0xfd70
    sw      $t8, 0x0($v0)
    sw      $t6, 0x4($v0)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t0, $t0, 0x8
    lui     $t7, 0xf570
    sw      $t7, 0x0($v1)
    or      $a0, $t0, $zero
    sw      $t9, 0x4($v1)
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    lui     $t8, 0xe600
    sw      $t8, 0x0($a0)
    sw      $zero, 0x4($a0)
    lui     $t7, 0x705
    ori     $t7, $t7, 0xf400
    addiu   $t0, $t0, 0x8
    lui     $t6, 0xf300
    sw      $t6, 0x0($a1)
    or      $a2, $t0, $zero
    sw      $t7, 0x4($a1)
    addiu   $t0, $t0, 0x8
    lui     $t9, 0xe700
    sw      $t9, 0x0($a2)
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    sw      $zero, 0x4($a2)
    lui     $t6, 0x8
    lui     $t8, 0xf568
    ori     $t8, $t8, 0x400
    ori     $t6, $t6, 0x200
    or      $v1, $t0, $zero
    sw      $t6, 0x4($v0)
    sw      $t8, 0x0($v0)
    lui     $t9, 0x3
    ori     $t9, $t9, 0xc02c
    lui     $t7, 0xf200
    sw      $t7, 0x0($v1)
    sw      $t9, 0x4($v1)
    addiu   $t0, $t0, 0x8
branch_0x801f3a1c:
    lw      $a1, 0x2a8($sp)
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    bnez    $a1, branch_0x801f3a3c
    or      $v1, $t0, $zero
    lw      $a3, 0x2cc($sp)
    b       branch_0x801f3a54
    addiu   $a3, $a3, 0xfff6
branch_0x801f3a3c:
    bne     $a1, $t1, branch_0x801f3a50
    lw      $a3, 0x2cc($sp)
    lw      $a3, 0x2cc($sp)
    b       branch_0x801f3a54
    addiu   $a3, $a3, 0x5
branch_0x801f3a50:
    addiu   $a3, $a3, 0x10
branch_0x801f3a54:
    addiu   $t8, $a3, 0x10
    sll     $t6, $t8, 2
    andi    $t7, $t6, 0xfff
    sll     $t9, $t7, 12
    addiu   $t6, $s0, 0xc
    sll     $t7, $t6, 2
    or      $t8, $t9, $at
    andi    $t9, $t7, 0xfff
    or      $t6, $t8, $t9
    sll     $t7, $a3, 2
    andi    $t8, $t7, 0xfff
    sw      $t6, 0x0($v0)
    sll     $t6, $s0, 2
    andi    $t7, $t6, 0xfff
    sll     $t9, $t8, 12
    or      $t8, $t9, $t7
    sw      $t8, 0x4($v0)
    addiu   $t0, $t0, 0x8
    or      $a0, $t0, $zero
    lui     $t6, 0xb300
    sw      $t6, 0x0($v1)
    sw      $zero, 0x4($v1)
    lui     $t7, 0x400
    ori     $t7, $t7, 0x400
    lui     $t9, 0xb200
    sw      $t9, 0x0($a0)
    sw      $t7, 0x4($a0)
    addiu   $t0, $t0, 0x8
branch_0x801f3ac4:
    sll     $t8, $s0, 2
    andi    $t6, $t8, 0xfff
    sll     $t9, $t4, 2
    lw      $a1, 0x2a8($sp)
    andi    $t4, $t9, 0xfff
    sw      $t6, 0xc($sp)
    or      $a3, $zero, $zero
    addiu   $t3, $t3, 0x9248
    addiu   $t1, $zero, 0xc0
branch_0x801f3ae8:
    beqz    $a1, branch_0x801f3af4
    slt     $at, $a3, $a1
    bnez    $at, branch_0x801f3c34
branch_0x801f3af4:
    or      $v0, $t0, $zero
    lui     $t8, 0xfd70
    sll     $t6, $a3, 2
    lui     $t9, %hi(Unknown_0x80228A98)
    addu    $t9, $t9, $t6
    sw      $t8, 0x0($v0)
    lw      $t9, %lo(Unknown_0x80228A98)($t9)
    addiu   $t0, $t0, 0x8
    or      $v1, $t0, $zero
    multu   $t9, $t1
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t0, $t0, 0x8
    lui     $t6, 0xf570
    or      $a0, $t0, $zero
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    addiu   $t0, $t0, 0x8
    or      $a2, $t0, $zero
    mflo    $t7
    addu    $t8, $t7, $t3
    sw      $t8, 0x4($v0)
    sw      $t9, 0x4($v1)
    sw      $t6, 0x0($v1)
    lui     $t7, 0xe600
    sw      $t7, 0x0($a0)
    sw      $zero, 0x4($a0)
    lui     $t6, 0x705
    lui     $t8, 0xf300
    sw      $t8, 0x0($a1)
    ori     $t6, $t6, 0xf400
    sw      $t6, 0x4($a1)
    addiu   $t0, $t0, 0x8
    or      $v0, $t0, $zero
    lui     $t9, 0xe700
    sw      $t9, 0x0($a2)
    sw      $zero, 0x4($a2)
    lui     $t8, 0x8
    lui     $t7, 0xf568
    ori     $t7, $t7, 0x400
    ori     $t8, $t8, 0x200
    sw      $t8, 0x4($v0)
    sw      $t7, 0x0($v0)
    addiu   $t0, $t0, 0x8
    or      $v1, $t0, $zero
    lui     $t9, 0x3
    lui     $t6, 0xf200
    addiu   $t7, $t2, 0x10
    sw      $t6, 0x0($v1)
    ori     $t9, $t9, 0xc02c
    sll     $t8, $t7, 2
    sw      $t9, 0x4($v1)
    andi    $t6, $t8, 0xfff
    sll     $t9, $t6, 12
    lui     $at, 0xe400
    addiu   $t0, $t0, 0x8
    or      $t7, $t9, $at
    or      $t8, $t7, $t4
    or      $a0, $t0, $zero
    sw      $t8, 0x0($a0)
    lw      $t8, 0xc($sp)
    sll     $t6, $t2, 2
    andi    $t9, $t6, 0xfff
    sll     $t7, $t9, 12
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    or      $t6, $t7, $t8
    sw      $t6, 0x4($a0)
    addiu   $t0, $t0, 0x8
    lui     $t9, 0xb300
    sw      $t9, 0x0($a1)
    or      $v0, $t0, $zero
    sw      $zero, 0x4($a1)
    lui     $t8, 0x400
    ori     $t8, $t8, 0x400
    lui     $t7, 0xb200
    sw      $t7, 0x0($v0)
    sw      $t8, 0x4($v0)
    lw      $a1, 0x2a8($sp)
    addiu   $t0, $t0, 0x8
branch_0x801f3c34:
    beqz    $a3, branch_0x801f3c48
    addiu   $t2, $t2, 0xb
    addiu   $at, $zero, 0x2
    bnel    $a3, $at, branch_0x801f3c50
    addiu   $a3, $a3, 0x1
branch_0x801f3c48:
    addiu   $t2, $t2, 0x4
    addiu   $a3, $a3, 0x1
branch_0x801f3c50:
    bne     $a3, $t5, branch_0x801f3ae8
    nop
    bnez    $a1, branch_0x801f3d90
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    lui     $t9, 0x104
    addiu   $t9, $t9, 0xaec8
    or      $v1, $t0, $zero
    lui     $t6, 0xfd70
    sw      $t6, 0x0($v0)
    sw      $t9, 0x4($v0)
    lui     $t8, 0x708
    ori     $t8, $t8, 0x200
    addiu   $t0, $t0, 0x8
    lui     $t7, 0xf570
    sw      $t7, 0x0($v1)
    or      $a0, $t0, $zero
    sw      $t8, 0x4($v1)
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    lui     $t6, 0xe600
    sw      $t6, 0x0($a0)
    sw      $zero, 0x4($a0)
    lui     $t7, 0x705
    ori     $t7, $t7, 0xf400
    addiu   $t0, $t0, 0x8
    lui     $t9, 0xf300
    sw      $t9, 0x0($a1)
    or      $a2, $t0, $zero
    sw      $t7, 0x4($a1)
    addiu   $t0, $t0, 0x8
    lui     $t8, 0xe700
    sw      $t8, 0x0($a2)
    or      $v0, $t0, $zero
    sw      $zero, 0x4($a2)
    lui     $t9, 0x8
    lui     $t6, 0xf568
    ori     $t6, $t6, 0x400
    ori     $t9, $t9, 0x200
    addiu   $t0, $t0, 0x8
    or      $v1, $t0, $zero
    sw      $t9, 0x4($v0)
    sw      $t6, 0x0($v0)
    lui     $t8, 0x3
    ori     $t8, $t8, 0xc02c
    lui     $t7, 0xf200
    sw      $t7, 0x0($v1)
    sw      $t8, 0x4($v1)
    lw      $t6, 0x2cc($sp)
    lui     $at, 0xe400
    addiu   $t0, $t0, 0x8
    addiu   $t9, $t6, 0x1a
    sll     $t7, $t9, 2
    andi    $t8, $t7, 0xfff
    sll     $t6, $t8, 12
    or      $t9, $t6, $at
    or      $t7, $t9, $t4
    or      $a0, $t0, $zero
    sw      $t7, 0x0($a0)
    lw      $t8, 0x2cc($sp)
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    addiu   $t6, $t8, 0xa
    sll     $t9, $t6, 2
    lw      $t6, 0xc($sp)
    andi    $t7, $t9, 0xfff
    sll     $t8, $t7, 12
    or      $t9, $t8, $t6
    sw      $t9, 0x4($a0)
    addiu   $t0, $t0, 0x8
    or      $v0, $t0, $zero
    lui     $t7, 0xb300
    sw      $t7, 0x0($a1)
    sw      $zero, 0x4($a1)
    lui     $t6, 0x400
    ori     $t6, $t6, 0x400
    lui     $t8, 0xb200
    sw      $t8, 0x0($v0)
    sw      $t6, 0x4($v0)
    addiu   $t0, $t0, 0x8
branch_0x801f3d90:
    or      $v0, $t0, $zero
    addiu   $t0, $t0, 0x8
    lui     $t7, 0x104
    addiu   $t7, $t7, 0xaf88
    or      $v1, $t0, $zero
    lui     $t9, 0xfd70
    sw      $t9, 0x0($v0)
    sw      $t7, 0x4($v0)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t0, $t0, 0x8
    lui     $t8, 0xf570
    sw      $t8, 0x0($v1)
    or      $a0, $t0, $zero
    sw      $t6, 0x4($v1)
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    lui     $t9, 0xe600
    sw      $t9, 0x0($a0)
    sw      $zero, 0x4($a0)
    lui     $t8, 0x705
    ori     $t8, $t8, 0xf400
    addiu   $t0, $t0, 0x8
    lui     $t7, 0xf300
    sw      $t7, 0x0($a1)
    or      $a2, $t0, $zero
    sw      $t8, 0x4($a1)
    addiu   $t0, $t0, 0x8
    lui     $t6, 0xe700
    sw      $t6, 0x0($a2)
    or      $v0, $t0, $zero
    sw      $zero, 0x4($a2)
    lui     $t7, 0x8
    lui     $t9, 0xf568
    ori     $t9, $t9, 0x400
    ori     $t7, $t7, 0x200
    addiu   $t0, $t0, 0x8
    or      $v1, $t0, $zero
    sw      $t7, 0x4($v0)
    sw      $t9, 0x0($v0)
    lui     $t6, 0x3
    ori     $t6, $t6, 0xc02c
    lui     $t8, 0xf200
    sw      $t8, 0x0($v1)
    sw      $t6, 0x4($v1)
    lw      $t9, 0x2cc($sp)
    lui     $at, 0xe400
    addiu   $t0, $t0, 0x8
    addiu   $t7, $t9, 0x34
    sll     $t8, $t7, 2
    andi    $t6, $t8, 0xfff
    sll     $t9, $t6, 12
    or      $t7, $t9, $at
    or      $t8, $t7, $t4
    or      $a0, $t0, $zero
    sw      $t8, 0x0($a0)
    lw      $t6, 0x2cc($sp)
    addiu   $t0, $t0, 0x8
    or      $a1, $t0, $zero
    addiu   $t9, $t6, 0x24
    sll     $t7, $t9, 2
    lw      $t9, 0xc($sp)
    andi    $t8, $t7, 0xfff
    sll     $t6, $t8, 12
    or      $t7, $t6, $t9
    sw      $t7, 0x4($a0)
    addiu   $t0, $t0, 0x8
    or      $v0, $t0, $zero
    lui     $t8, 0xb300
    sw      $t8, 0x0($a1)
    sw      $zero, 0x4($a1)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    lui     $t6, 0xb200
    sw      $t6, 0x0($v0)
    sw      $t9, 0x4($v0)
    addiu   $t0, $t0, 0x8
branch_0x801f3ec4:
    lw      $t7, 0x2c8($sp)
    sw      $t0, 0x0($t7)
    lw      $s0, 0x4($sp)
    jr      $ra
    addiu   $sp, $sp, 0x2c8

.globl Function_0x801f3ed8
Function_0x801f3ed8: # 0x801f3ed8
    addiu   $sp, $sp, 0xf900
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
    sw      $a0, 0x700($sp)
    lw      $t7, 0x0($a0)
    lui     $t6, 0x101
    addiu   $t6, $t6, 0x4708
    sw      $t7, 0x6c4($sp)
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t9, 0x600
    lui     $v1, 0x801d
    sw      $t9, 0x0($t7)
    sw      $t6, 0x4($t7)
    lw      $v1, -0x1c80($v1)
    addiu   $at, $zero, 0x4
    lui     $t7, 0x800d
    beq     $v1, $at, branch_0x801f3f4c
    nop
    bnezl   $v1, branch_0x801f40b4
    addiu   $at, $zero, 0x1
branch_0x801f3f4c:
    lw      $t7, 0x7ef0($t7)
    lui     $t8, 0x800d
    beqzl   $t7, branch_0x801f40b4
    addiu   $at, $zero, 0x1
    lw      $t8, 0x465c($t8)
    lui     $t6, 0x801c
    addiu   $t6, $t6, 0x2698
    sll     $t9, $t8, 3
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 4
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 3
    addu    $s4, $t9, $t6
    lw      $v0, 0x0($s4)
    lui     $t7, 0x800d
    slti    $at, $v0, 0x2
    beqzl   $at, branch_0x801f3fa4
    addiu   $s3, $v0, 0xffff
    lw      $t7, 0x7ef8($t7)
    beqzl   $t7, branch_0x801f4048
    lw      $t7, 0x2f4($s4)
    addiu   $s3, $v0, 0xffff
branch_0x801f3fa4:
    slti    $at, $s3, 0xa
    bnez    $at, branch_0x801f3fbc
    addiu   $s2, $zero, 0x34
    addiu   $v0, $s3, 0xfff7
    b       branch_0x801f3fc0
    addiu   $s3, $zero, 0x9
branch_0x801f3fbc:
    or      $v0, $zero, $zero
branch_0x801f3fc0:
    lw      $t8, 0x2f4($s4)
    lui     $t9, 0x800d
    addiu   $s5, $sp, 0x6c4
    bnezl   $t8, branch_0x801f3fe4
    addiu   $s3, $s3, 0x1
    lw      $t9, 0x7ef8($t9)
    beqz    $t9, branch_0x801f3fe4
    nop
    addiu   $s3, $s3, 0x1
branch_0x801f3fe4:
    blez    $s3, branch_0x801f4044
    or      $t0, $zero, $zero
    or      $s0, $s4, $zero
    addiu   $s1, $v0, 0x1
branch_0x801f3ff4:
    addiu   $at, $zero, 0xa
    div     $zero, $s1, $at
    lui     $a1, 0x8023
    lw      $a3, 0x178($s0)
    lw      $a1, -0x76ec($a1)
    mfhi    $t6
    sw      $t6, 0x14($sp)
    sw      $t0, 0x6f4($sp)
    sw      $zero, 0x18($sp)
    sw      $zero, 0x10($sp)
    or      $a0, $s5, $zero
    or      $a2, $s2, $zero
    jal     Function_0x801f2370
    addiu   $a1, $a1, 0x18
    lw      $t0, 0x6f4($sp)
    addiu   $s0, $s0, 0x4
    addiu   $s1, $s1, 0x1
    addiu   $t0, $t0, 0x1
    bne     $t0, $s3, branch_0x801f3ff4
    addiu   $s2, $s2, 0xa
branch_0x801f4044:
    lw      $t7, 0x2f4($s4)
branch_0x801f4048:
    addiu   $s5, $sp, 0x6c4
    or      $a0, $s5, $zero
    bnez    $t7, branch_0x801f406c
    lui     $a1, 0x8023
    lw      $t8, 0x2ec($s4)
    addiu   $at, $zero, 0x2
    addiu   $t9, $zero, 0x1
    bnel    $t8, $at, branch_0x801f4078
    sw      $t9, 0x6fc($sp)
branch_0x801f406c:
    b       branch_0x801f4078
    sw      $zero, 0x6fc($sp)

.globl Function_0x801f4074
Function_0x801f4074: # 0x801f4074
    sw      $t9, 0x6fc($sp)
branch_0x801f4078:
    lw      $t7, 0x6fc($sp)
    lw      $a3, 0x19c($s4)
    addiu   $t6, $zero, 0x1
    sw      $t6, 0x10($sp)
    sw      $t7, 0x14($sp)
    lw      $t8, 0x16c($s4)
    lw      $a1, -0x76f0($a1)
    addiu   $a2, $zero, 0x22
    sw      $t8, 0x18($sp)
    jal     Function_0x801f2370
    addiu   $a1, $a1, 0x18
    lui     $v1, 0x801d
    b       branch_0x801f419c
    lw      $v1, -0x1c80($v1)

.globl Function_0x801f40b0
Function_0x801f40b0: # 0x801f40b0
    addiu   $at, $zero, 0x1
branch_0x801f40b4:
    bne     $v1, $at, branch_0x801f419c
    lui     $t9, 0x800d
    lw      $t9, 0x465c($t9)
    lui     $t7, 0x801c
    addiu   $t7, $t7, 0x2698
    sll     $t6, $t9, 3
    subu    $t6, $t6, $t9
    sll     $t6, $t6, 4
    subu    $t6, $t6, $t9
    sll     $t6, $t6, 3
    addu    $v0, $t6, $t7
    lw      $t8, 0x2f4($v0)
    addiu   $s5, $sp, 0x6c4
    or      $a0, $s5, $zero
    beqz    $t8, branch_0x801f40fc
    addiu   $a1, $zero, 0x18
    b       branch_0x801f4104
    sw      $zero, 0x6fc($sp)
branch_0x801f40fc:
    addiu   $t9, $zero, 0x1
    sw      $t9, 0x6fc($sp)
branch_0x801f4104:
    lw      $t7, 0x6fc($sp)
    lw      $t8, 0x16c($v0)
    addiu   $t6, $zero, 0x1
    sw      $t6, 0x10($sp)
    addiu   $a2, $zero, 0xe
    lw      $a3, 0x19c($v0)
    sw      $t7, 0x14($sp)
    jal     Function_0x801f2370
    sw      $t8, 0x18($sp)
    lui     $t9, 0x800d
    lw      $t9, 0x4660($t9)
    lui     $t7, 0x801c
    addiu   $t7, $t7, 0x2698
    sll     $t6, $t9, 3
    subu    $t6, $t6, $t9
    sll     $t6, $t6, 4
    subu    $t6, $t6, $t9
    sll     $t6, $t6, 3
    addu    $v0, $t6, $t7
    lw      $t8, 0x2f4($v0)
    or      $a0, $s5, $zero
    addiu   $a1, $zero, 0x18
    beqz    $t8, branch_0x801f416c
    addiu   $a2, $zero, 0x7c
    b       branch_0x801f4174
    sw      $zero, 0x6fc($sp)
branch_0x801f416c:
    addiu   $t9, $zero, 0x1
    sw      $t9, 0x6fc($sp)
branch_0x801f4174:
    lw      $t7, 0x6fc($sp)
    lw      $t8, 0x16c($v0)
    addiu   $t6, $zero, 0x1
    sw      $t6, 0x10($sp)
    lw      $a3, 0x19c($v0)
    sw      $t7, 0x14($sp)
    jal     Function_0x801f2370
    sw      $t8, 0x18($sp)
    lui     $v1, 0x801d
    lw      $v1, -0x1c80($v1)
branch_0x801f419c:
    addiu   $at, $zero, 0x4
    addiu   $s5, $sp, 0x6c4
    bne     $v1, $at, branch_0x801f436c
    or      $a1, $zero, $zero
    lui     $t9, 0x800d
    lw      $t9, 0x7ef0($t9)
    beqz    $t9, branch_0x801f436c
    nop
    lui     $fp, 0x801c
    addiu   $fp, $fp, 0x1d3c
    lw      $t6, 0x0($fp)
    lui     $a0, 0x801a
    slti    $at, $t6, 0x28
    bnez    $at, branch_0x801f436c
    lui     $t6, 0x801c
    lw      $a0, -0x7fb0($a0)
    or      $s1, $zero, $zero
    lui     $v0, 0x801c
    blez    $a0, branch_0x801f4218
    addiu   $t6, $t6, 0x2698
    addiu   $v0, $v0, 0x2698
branch_0x801f41f0:
    lw      $t7, 0x2f4($v0)
    beqzl   $t7, branch_0x801f420c
    addiu   $s1, $s1, 0x1
    lw      $t8, 0x4($v0)
    beqzl   $t8, branch_0x801f421c
    slt     $at, $s1, $a0
    addiu   $s1, $s1, 0x1
branch_0x801f420c:
    slt     $at, $s1, $a0
    bnez    $at, branch_0x801f41f0
    addiu   $v0, $v0, 0x378
branch_0x801f4218:
    slt     $at, $s1, $a0
branch_0x801f421c:
    bnez    $at, branch_0x801f4228
    addiu   $s7, $zero, 0x14
    or      $s1, $zero, $zero
branch_0x801f4228:
    sll     $t9, $s1, 3
    subu    $t9, $t9, $s1
    sll     $t9, $t9, 4
    subu    $t9, $t9, $s1
    sll     $t9, $t9, 3
    addu    $t7, $t9, $t6
    blez    $a0, branch_0x801f436c
    lw      $s4, 0x19c($t7)
    lui     $s6, 0x8023
    addiu   $s6, $s6, 0x8ae8
    sw      $a1, 0x6fc($sp)
    or      $v1, $t6, $zero
    or      $s2, $a1, $zero
branch_0x801f425c:
    lw      $t9, 0x4($v1)
    lw      $t8, 0x0($fp)
    sll     $t7, $t9, 2
    addu    $t7, $t7, $t9
    sll     $t7, $t7, 1
    addiu   $t6, $t7, 0x28
    slt     $at, $t8, $t6
    bnezl   $at, branch_0x801f434c
    addiu   $s2, $s2, 0x1
    multu   $s2, $s7
    lui     $t7, 0x800d
    lw      $t7, 0x465c($t7)
    addiu   $t2, $zero, 0x1
    lui     $t8, 0x8023
    addiu   $t6, $zero, 0x3
    mflo    $t9
    addu    $v0, $s6, $t9
    lw      $s0, 0x0($v0)
    lw      $s3, 0x4($v0)
    addiu   $t9, $zero, 0x3
    addiu   $s0, $s0, 0xb0
    bne     $s2, $t7, branch_0x801f42c0
    addiu   $s3, $s3, 0x3f
    b       branch_0x801f42c0
    addiu   $t2, $zero, 0x2
branch_0x801f42c0:
    bne     $s2, $s1, branch_0x801f42fc
    or      $a2, $s3, $zero
    lw      $t8, -0x76f0($t8)
    or      $a0, $s5, $zero
    lw      $a3, 0x19c($v1)
    sw      $t6, 0x10($sp)
    sw      $t9, 0x14($sp)
    sw      $t2, 0x18($sp)
    sw      $v1, 0x90($sp)
    jal     Function_0x801f2370
    addu    $a1, $s0, $t8
    lui     $a0, 0x801a
    lw      $a0, -0x7fb0($a0)
    b       branch_0x801f4348
    lw      $v1, 0x90($sp)
branch_0x801f42fc:
    lw      $t7, 0x2f4($v1)
    lui     $t8, 0x8023
    or      $a2, $s3, $zero
    beqz    $t7, branch_0x801f4348
    addiu   $t9, $zero, 0x3
    lw      $t8, -0x76f0($t8)
    lw      $t6, 0x19c($v1)
    addiu   $t7, $zero, 0x1
    sw      $t7, 0x14($sp)
    or      $a0, $s5, $zero
    sw      $t9, 0x10($sp)
    sw      $t2, 0x18($sp)
    sw      $v1, 0x90($sp)
    addu    $a1, $s0, $t8
    jal     Function_0x801f2370
    subu    $a3, $t6, $s4
    lui     $a0, 0x801a
    lw      $a0, -0x7fb0($a0)
    lw      $v1, 0x90($sp)
branch_0x801f4348:
    addiu   $s2, $s2, 0x1
branch_0x801f434c:
    slt     $at, $s2, $a0
    bnez    $at, branch_0x801f425c
    addiu   $v1, $v1, 0x378
    sw      $s2, 0x6fc($sp)
    lui     $v1, 0x801d
    lw      $v1, -0x1c80($v1)
    sw      $zero, 0x6fc($sp)
    or      $a1, $zero, $zero
branch_0x801f436c:
    lui     $s6, 0x8023
    addiu   $at, $zero, 0x1
    addiu   $s6, $s6, 0x8ae8
    bne     $v1, $at, branch_0x801f4494
    addiu   $s7, $zero, 0x14
    lui     $a0, 0x800e
    lw      $a0, -0x5758($a0)
    ori     $s2, $zero, 0xea60
    blezl   $a0, branch_0x801f4498
    addiu   $at, $zero, 0x4
branch_0x801f4394:
    bnez    $a1, branch_0x801f43cc
    addiu   $s3, $zero, 0xb2
    lui     $t8, 0x800d
    lw      $t8, 0x465c($t8)
    lui     $t9, 0x801c
    addiu   $t9, $t9, 0x2698
    sll     $t6, $t8, 3
    subu    $t6, $t6, $t8
    sll     $t6, $t6, 4
    subu    $t6, $t6, $t8
    sll     $t6, $t6, 3
    addiu   $s3, $zero, 0x44
    b       branch_0x801f43f4
    addu    $s4, $t6, $t9
branch_0x801f43cc:
    lui     $t7, 0x800d
    lw      $t7, 0x4660($t7)
    lui     $t6, 0x801c
    addiu   $t6, $t6, 0x2698
    sll     $t8, $t7, 3
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 4
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 3
    addu    $s4, $t8, $t6
branch_0x801f43f4:
    lw      $t9, 0x300($s4)
    or      $a2, $s3, $zero
    addiu   $t7, $zero, 0x3
    beqzl   $t9, branch_0x801f447c
    addiu   $a1, $a1, 0x1
    lw      $a3, 0x2f8($s4)
    addiu   $t0, $zero, 0xfff1
    or      $a0, $s5, $zero
    slti    $at, $a3, 0x2710
    beqz    $at, branch_0x801f4428
    addiu   $v1, $zero, 0x2
    b       branch_0x801f4440
    sw      $a1, 0x6fc($sp)
branch_0x801f4428:
    slt     $at, $a3, $s2
    beqz    $at, branch_0x801f443c
    sw      $a1, 0x6fc($sp)
    b       branch_0x801f4440
    addiu   $t0, $zero, 0xfff6
branch_0x801f443c:
    or      $t0, $zero, $zero
branch_0x801f4440:
    lw      $v0, 0x2fc($s4)
    addiu   $at, $zero, 0x1
    addiu   $a1, $t0, 0x80
    bne     $v0, $at, branch_0x801f445c
    nop
    b       branch_0x801f445c
    addiu   $v1, $zero, 0x1
branch_0x801f445c:
    sw      $t7, 0x10($sp)
    sw      $v0, 0x14($sp)
    jal     Function_0x801f2370
    sw      $v1, 0x18($sp)
    lui     $a0, 0x800e
    lw      $a0, -0x5758($a0)
    lw      $a1, 0x6fc($sp)
    addiu   $a1, $a1, 0x1
branch_0x801f447c:
    slt     $at, $a1, $a0
    bnez    $at, branch_0x801f4394
    nop
    lui     $v1, 0x801d
    lw      $v1, -0x1c80($v1)
    or      $a1, $zero, $zero
branch_0x801f4494:
    addiu   $at, $zero, 0x4
branch_0x801f4498:
    bne     $v1, $at, branch_0x801f456c
    ori     $s2, $zero, 0xea60
    lui     $t8, 0x800d
    lw      $t8, 0x7ef0($t8)
    lui     $a0, 0x801a
    beqzl   $t8, branch_0x801f4570
    addiu   $at, $zero, 0x4
    lw      $a0, -0x7fb0($a0)
    blez    $a0, branch_0x801f456c
branch_0x801f44bc:
    lui     $t6, 0x800d
    lw      $t6, 0x465c($t6)
    sll     $t7, $a1, 3
    beql    $a1, $t6, branch_0x801f4554
    addiu   $a1, $a1, 0x1
    multu   $a1, $s7
    subu    $t7, $t7, $a1
    sll     $t7, $t7, 4
    subu    $t7, $t7, $a1
    lui     $t8, 0x801c
    addiu   $t8, $t8, 0x2698
    sll     $t7, $t7, 3
    addu    $v1, $t7, $t8
    lw      $t6, 0x300($v1)
    sw      $a1, 0x6fc($sp)
    mflo    $t9
    addu    $v0, $s6, $t9
    lw      $s0, 0x0($v0)
    lw      $s3, 0x4($v0)
    or      $s1, $a1, $zero
    addiu   $s0, $s0, 0xba
    beqz    $t6, branch_0x801f454c
    addiu   $s3, $s3, 0x3f
    lw      $t7, 0x2fc($v1)
    addiu   $t9, $zero, 0x3
    addiu   $t8, $zero, 0x1
    sw      $t8, 0x18($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $s5, $zero
    or      $a1, $s0, $zero
    or      $a2, $s3, $zero
    lw      $a3, 0x2f8($v1)
    jal     Function_0x801f2370
    sw      $t7, 0x14($sp)
    lui     $a0, 0x801a
    lw      $a0, -0x7fb0($a0)
branch_0x801f454c:
    lw      $a1, 0x6fc($sp)
    addiu   $a1, $a1, 0x1
branch_0x801f4554:
    slt     $at, $a1, $a0
    bnez    $at, branch_0x801f44bc
    nop
    lui     $v1, 0x801d
    lw      $v1, -0x1c80($v1)
    or      $a1, $zero, $zero
branch_0x801f456c:
    addiu   $at, $zero, 0x4
branch_0x801f4570:
    beq     $v1, $at, branch_0x801f4580
    lui     $t6, 0x800d
    bnezl   $v1, branch_0x801f4af0
    lw      $t8, 0x6c4($sp)
branch_0x801f4580:
    lw      $t6, 0x465c($t6)
    lui     $t7, 0x801c
    addiu   $t7, $t7, 0x2698
    sll     $t9, $t6, 3
    subu    $t9, $t9, $t6
    sll     $t9, $t9, 4
    subu    $t9, $t9, $t6
    sll     $t9, $t9, 3
    addu    $s4, $t9, $t7
    lw      $t8, 0x300($s4)
    addiu   $t2, $zero, 0x1
    or      $a0, $s5, $zero
    beqz    $t8, branch_0x801f4aec
    addiu   $a2, $zero, 0x7e
    lw      $a3, 0x2f8($s4)
    addiu   $t0, $zero, 0x2
    addiu   $t1, $zero, 0x2
    slti    $at, $a3, 0x2710
    beqz    $at, branch_0x801f45d8
    addiu   $t6, $zero, 0x3
    b       branch_0x801f45f0
    sw      $a1, 0x6fc($sp)
branch_0x801f45d8:
    slt     $at, $a3, $s2
    beqz    $at, branch_0x801f45ec
    sw      $a1, 0x6fc($sp)
    b       branch_0x801f45f0
    addiu   $t0, $zero, 0x1
branch_0x801f45ec:
    or      $t0, $zero, $zero
branch_0x801f45f0:
    bne     $t0, $t2, branch_0x801f4600
    addiu   $s1, $zero, 0x8c
    b       branch_0x801f4610
    addiu   $s1, $zero, 0x85
branch_0x801f4600:
    addiu   $at, $zero, 0x2
    bne     $t0, $at, branch_0x801f4610
    nop
    addiu   $s1, $zero, 0x7f
branch_0x801f4610:
    bnez    $v1, branch_0x801f462c
    or      $a1, $s1, $zero
    lw      $v0, 0x2fc($s4)
    bnel    $t2, $v0, branch_0x801f4630
    lw      $v0, 0x2fc($s4)
    b       branch_0x801f4630
    or      $t1, $t2, $zero
branch_0x801f462c:
    lw      $v0, 0x2fc($s4)
branch_0x801f4630:
    sw      $t6, 0x10($sp)
    sw      $v0, 0x14($sp)
    sw      $t1, 0x18($sp)
    jal     Function_0x801f2370
    sw      $t0, 0x6f4($sp)
    lw      $t9, 0x6c4($sp)
    lw      $t0, 0x6f4($sp)
    lui     $t8, 0xe700
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t6, 0x6c4($sp)
    lui     $t5, 0xfcff
    lui     $ra, 0xfffc
    addiu   $t9, $t6, 0x8
    ori     $ra, $ra, 0xf279
    ori     $t5, $t5, 0xffff
    sw      $t9, 0x6c4($sp)
    addiu   $a0, $s1, 0xffd8
    addiu   $at, $zero, 0x1
    or      $s0, $a0, $zero
    addiu   $s3, $zero, 0x7a
    sw      $ra, 0x4($t6)
    bne     $t0, $at, branch_0x801f46a0
    sw      $t5, 0x0($t6)
    b       branch_0x801f46b0
    addiu   $s0, $a0, 0xf
branch_0x801f46a0:
    addiu   $at, $zero, 0x2
    bne     $t0, $at, branch_0x801f46b0
    nop
    addiu   $s0, $a0, 0x1a
branch_0x801f46b0:
    lui     $t7, 0x801d
    lw      $t7, -0x1c80($t7)
    addiu   $at, $zero, 0x4
    lui     $a3, 0xfd10
    bne     $t7, $at, branch_0x801f4998
    lui     $t0, 0xf510
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0x104
    addiu   $t9, $t9, 0x16a8
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $t9, 0x4($t8)
    sw      $a3, 0x0($t8)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $t6, 0x4($t7)
    sw      $t0, 0x0($t7)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe600
    lui     $at, 0xe400
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0x727
    ori     $t8, $t8, 0xf100
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t7, 0xf300
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xe700
    addiu   $t4, $zero, 0x1718
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x8
    lui     $t9, 0xf510
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    ori     $t9, $t9, 0x1000
    ori     $t7, $t7, 0x200
    sw      $t7, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x7
    ori     $t7, $t7, 0xc04c
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t9, 0xf200
    sw      $t9, 0x0($t8)
    sw      $t7, 0x4($t8)
    lw      $a0, 0x6c4($sp)
    addiu   $t9, $s0, 0x20
    sll     $t7, $t9, 2
    addiu   $t6, $a0, 0x8
    sw      $t6, 0x6c4($sp)
    andi    $t8, $t7, 0xfff
    sll     $t6, $t8, 12
    or      $t9, $t6, $at
    ori     $t7, $t9, 0x238
    sll     $t8, $s0, 2
    andi    $t6, $t8, 0xfff
    sll     $t9, $t6, 12
    sw      $t7, 0x0($a0)
    ori     $t7, $t9, 0x1e8
    sw      $t7, 0x4($a0)
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xb300
    lui     $t3, 0x8019
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t6, 0xb200
    sw      $t6, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $v1, 0x6c4($sp)
    addiu   $t3, $t3, 0x23f0
    addiu   $s0, $s0, 0x9
    addiu   $t8, $v1, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $a3, 0x0($v1)
    lw      $t6, 0x33c($s4)
    addiu   $s3, $zero, 0x7c
    multu   $t6, $t4
    mflo    $t9
    addu    $t7, $t3, $t9
    lw      $t8, 0xb68($t7)
    lui     $t9, 0x8022
    sll     $t6, $t8, 2
    addu    $t9, $t9, $t6
    lw      $t9, 0x7738($t9)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    sw      $t9, 0x4($v1)
    lw      $t7, 0x6c4($sp)
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $t6, 0x4($t7)
    sw      $t0, 0x0($t7)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe600
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0x718
    ori     $t8, $t8, 0xf19a
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t7, 0xf300
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xe700
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x8
    lui     $t9, 0xf510
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    ori     $t9, $t9, 0xa00
    ori     $t7, $t7, 0x200
    sw      $t7, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x4
    ori     $t7, $t7, 0xc04c
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t9, 0xf200
    sw      $t9, 0x0($t8)
    sw      $t7, 0x4($t8)
    lw      $a1, 0x6c4($sp)
    addiu   $t9, $s0, 0x10
    sll     $t7, $t9, 2
    addiu   $t6, $a1, 0x8
    sw      $t6, 0x6c4($sp)
    andi    $t8, $t7, 0xfff
    sll     $t6, $t8, 12
    addiu   $t7, $s3, 0x10
    sll     $t8, $t7, 2
    or      $t9, $t6, $at
    andi    $t6, $t8, 0xfff
    or      $t7, $t9, $t6
    sll     $t8, $s0, 2
    andi    $t9, $t8, 0xfff
    sw      $t7, 0x0($a1)
    sll     $t7, $s3, 2
    andi    $t8, $t7, 0xfff
    sll     $t6, $t9, 12
    or      $t9, $t6, $t8
    sw      $t9, 0x4($a1)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0xb300
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t8, 0x0($t7)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0x500
    ori     $t8, $t8, 0x500
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t6, 0xb200
    sw      $t6, 0x0($t9)
    sw      $t8, 0x4($t9)
    b       branch_0x801f4aec
    lw      $a1, 0x6fc($sp)
branch_0x801f4998:
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0x104
    lui     $a3, 0xfd10
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    addiu   $t6, $t6, 0x2780
    sw      $t6, 0x4($t9)
    sw      $a3, 0x0($t9)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x708
    lui     $t0, 0xf510
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t7, $t7, 0x200
    sw      $t7, 0x4($t8)
    sw      $t0, 0x0($t8)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0xe600
    addiu   $s0, $s0, 0xfffa
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t9, 0x0($t6)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0x727
    ori     $t9, $t9, 0xf100
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xf300
    sw      $t8, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0xe700
    lui     $at, 0xe400
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t8, 0x0($t7)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0x8
    lui     $t6, 0xf510
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    ori     $t6, $t6, 0x1000
    ori     $t8, $t8, 0x200
    sw      $t8, 0x4($t9)
    sw      $t6, 0x0($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0x7
    ori     $t8, $t8, 0xc04c
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t6, 0xf200
    sw      $t6, 0x0($t9)
    sw      $t8, 0x4($t9)
    lw      $a0, 0x6c4($sp)
    addiu   $t6, $s0, 0x20
    sll     $t8, $t6, 2
    addiu   $t7, $a0, 0x8
    sw      $t7, 0x6c4($sp)
    andi    $t9, $t8, 0xfff
    sll     $t7, $t9, 12
    or      $t6, $t7, $at
    ori     $t8, $t6, 0x238
    sll     $t9, $s0, 2
    andi    $t7, $t9, 0xfff
    sll     $t6, $t7, 12
    sw      $t8, 0x0($a0)
    ori     $t8, $t6, 0x1e8
    sw      $t8, 0x4($a0)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0xb300
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t6, 0x0($t9)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x400
    ori     $t6, $t6, 0x400
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t7, 0xb200
    sw      $t7, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $a1, 0x6fc($sp)
branch_0x801f4aec:
    lw      $t8, 0x6c4($sp)
branch_0x801f4af0:
    lui     $t7, 0xe700
    lui     $t5, 0xfcff
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t7, 0x0($t8)
    lw      $t6, 0x6c4($sp)
    lui     $ra, 0xfffc
    ori     $ra, $ra, 0xf279
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    ori     $t5, $t5, 0xffff
    lui     $v1, 0x801d
    sw      $t5, 0x0($t6)
    sw      $ra, 0x4($t6)
    lw      $v1, -0x1c80($v1)
    lui     $t3, 0x8019
    addiu   $at, $zero, 0x4
    addiu   $t3, $t3, 0x23f0
    beq     $v1, $at, branch_0x801f4b4c
    addiu   $t4, $zero, 0x1718
    bnez    $v1, branch_0x801f4cc4
    sw      $a1, 0x6fc($sp)
branch_0x801f4b4c:
    lui     $t9, 0x800d
    lw      $t9, 0x7ef0($t9)
    lw      $t7, 0x6c4($sp)
    sw      $a1, 0x6fc($sp)
    beqz    $t9, branch_0x801f4cc4
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t9, 0x103
    addiu   $t9, $t9, 0x2500
    lui     $t8, 0xfd18
    sw      $t8, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xf518
    sw      $t8, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0xe600
    lui     $at, 0xe400
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t8, 0x0($t7)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0x717
    ori     $t8, $t8, 0xf080
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t6, 0xf300
    sw      $t6, 0x0($t9)
    sw      $t8, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0xe700
    lui     $v1, 0x801d
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t6, 0x0($t9)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x8
    lui     $t7, 0xf518
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t7, $t7, 0x1000
    ori     $t6, $t6, 0x200
    sw      $t6, 0x4($t8)
    sw      $t7, 0x0($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0xf200
    lui     $t6, 0x7
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t6, $t6, 0xc02c
    sw      $t7, 0x0($t8)
    sw      $t6, 0x4($t8)
    lui     $t7, 0x8023
    lw      $t7, -0x76f0($t7)
    lw      $a0, 0x6c4($sp)
    addiu   $t6, $t7, 0x58
    addiu   $t9, $a0, 0x8
    sw      $t9, 0x6c4($sp)
    sll     $t8, $t6, 2
    andi    $t9, $t8, 0xfff
    sll     $t7, $t9, 12
    or      $t6, $t7, $at
    ori     $t8, $t6, 0x84
    lui     $t9, 0x8023
    sw      $t8, 0x0($a0)
    lw      $t9, -0x76f0($t9)
    addiu   $t7, $t9, 0x38
    sll     $t6, $t7, 2
    andi    $t8, $t6, 0xfff
    sll     $t9, $t8, 12
    ori     $t7, $t9, 0x54
    sw      $t7, 0x4($a0)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0xb300
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t9, 0x0($t6)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xb200
    sw      $t8, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $v1, -0x1c80($v1)
branch_0x801f4cc4:
    addiu   $at, $zero, 0xb
    beq     $v1, $at, branch_0x801f532c
    lui     $t7, 0x800d
    lw      $t7, 0x7ef0($t7)
    lui     $s2, 0x711
    lui     $t6, 0x800e
    beqz    $t7, branch_0x801f532c
    ori     $s2, $s2, 0xf0ab
    lw      $t6, -0x5758($t6)
    lw      $t8, 0x6c4($sp)
    addiu   $at, $zero, 0x1
    bne     $t6, $at, branch_0x801f4d24
    addiu   $t9, $t8, 0x8
    addiu   $at, $zero, 0x4
    bne     $v1, $at, branch_0x801f4d14
    addiu   $s3, $zero, 0x15
    lui     $s0, 0x8023
    lw      $s0, -0x76f0($s0)
    b       branch_0x801f4d18
    addiu   $s0, $s0, 0xbc
branch_0x801f4d14:
    addiu   $s0, $zero, 0x84
branch_0x801f4d18:
    lw      $t0, 0x6c8($sp)
    b       branch_0x801f4d34
    lw      $a3, 0x6cc($sp)
branch_0x801f4d24:
    addiu   $s0, $zero, 0xca
    addiu   $s3, $zero, 0xd
    addiu   $a3, $zero, 0xca
    addiu   $t0, $zero, 0x7b
branch_0x801f4d34:
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0x103
    addiu   $t6, $t6, 0x2078
    lui     $t7, 0xfd18
    sw      $t7, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t7, 0xf518
    sw      $t7, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0xe600
    lui     $s4, 0xf518
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t7, 0x0($t8)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0xf300
    ori     $s4, $s4, 0xc00
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $s2, 0x4($t6)
    sw      $t9, 0x0($t6)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0xe700
    lui     $s5, 0x5
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t8, 0x0($t7)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0x8
    ori     $t6, $t6, 0x200
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $t6, 0x4($t9)
    sw      $s4, 0x0($t9)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0xf200
    ori     $s5, $s5, 0xc02c
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $s5, 0x4($t8)
    sw      $t7, 0x0($t8)
    lw      $a0, 0x6c4($sp)
    addiu   $t9, $s0, 0x18
    sll     $t7, $t9, 2
    addiu   $t8, $a0, 0x8
    sw      $t8, 0x6c4($sp)
    andi    $t6, $t7, 0xfff
    sll     $t8, $t6, 12
    addiu   $t7, $s3, 0xc
    lui     $at, 0xe400
    or      $t9, $t8, $at
    sll     $t6, $t7, 2
    andi    $t8, $t6, 0xfff
    or      $t7, $t9, $t8
    sll     $t6, $s0, 2
    andi    $t9, $t6, 0xfff
    sw      $t7, 0x0($a0)
    sll     $t7, $s3, 2
    andi    $t6, $t7, 0xfff
    sll     $t8, $t9, 12
    or      $t9, $t8, $t6
    sw      $t9, 0x4($a0)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xb300
    lui     $a2, 0x400
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xb200
    ori     $a2, $a2, 0x400
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $a0, 0x800e
    sw      $a2, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $a0, -0x5758($a0)
    lw      $v0, 0x6c4($sp)
    addiu   $at, $zero, 0x2
    bne     $a0, $at, branch_0x801f4f20
    addiu   $t9, $v0, 0x8
    addiu   $t7, $a3, 0x18
    sll     $t8, $t7, 2
    andi    $t6, $t8, 0xfff
    sw      $t9, 0x6c4($sp)
    sll     $t9, $t6, 12
    addiu   $t8, $t0, 0xc
    lui     $at, 0xe400
    or      $t7, $t9, $at
    sll     $t6, $t8, 2
    andi    $t9, $t6, 0xfff
    or      $t8, $t7, $t9
    sll     $t6, $a3, 2
    andi    $t7, $t6, 0xfff
    sw      $t8, 0x0($v0)
    sll     $t8, $t0, 2
    andi    $t6, $t8, 0xfff
    sll     $t9, $t7, 12
    or      $t7, $t9, $t6
    sw      $t7, 0x4($v0)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0xb300
    lui     $a0, 0x800e
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0xb200
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $a2, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $a0, -0x5758($a0)
branch_0x801f4f20:
    blez    $a0, branch_0x801f532c
    lui     $t2, 0x104
    lui     $a3, 0x801d
    addiu   $a3, $a3, 0xe488
    addiu   $t2, $t2, 0xd8d8
    lw      $a1, 0x6fc($sp)
    addiu   $v1, $zero, 0x1
branch_0x801f4f3c:
    bne     $v1, $a0, branch_0x801f4f94
    lui     $t6, 0x801d
    lw      $t6, -0x1c80($t6)
    addiu   $at, $zero, 0x4
    addiu   $s3, $zero, 0x22
    bne     $t6, $at, branch_0x801f4f68
    lui     $t7, 0x800d
    lui     $s0, 0x8023
    lw      $s0, -0x76f0($s0)
    b       branch_0x801f4f6c
    addiu   $s0, $s0, 0xc0
branch_0x801f4f68:
    addiu   $s0, $zero, 0x88
branch_0x801f4f6c:
    lw      $t7, 0x465c($t7)
    lui     $s1, 0x801c
    sll     $t8, $t7, 3
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 4
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 3
    addu    $s1, $s1, $t8
    b       branch_0x801f4ff8
    lw      $s1, 0x2698($s1)
branch_0x801f4f94:
    bnez    $a1, branch_0x801f4fcc
    addiu   $s0, $zero, 0xd0
    lui     $t9, 0x800d
    lw      $t9, 0x465c($t9)
    lui     $s1, 0x801c
    addiu   $s3, $zero, 0x19
    sll     $t6, $t9, 3
    subu    $t6, $t6, $t9
    sll     $t6, $t6, 4
    subu    $t6, $t6, $t9
    sll     $t6, $t6, 3
    addu    $s1, $s1, $t6
    b       branch_0x801f4ff8
    lw      $s1, 0x2698($s1)
branch_0x801f4fcc:
    lui     $t7, 0x800d
    lw      $t7, 0x4660($t7)
    lui     $s1, 0x801c
    addiu   $s3, $zero, 0x87
    sll     $t8, $t7, 3
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 4
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 3
    addu    $s1, $s1, $t8
    lw      $s1, 0x2698($s1)
branch_0x801f4ff8:
    lw      $v0, 0x0($a3)
    lui     $t7, 0xfd18
    slt     $at, $v0, $s1
    beqz    $at, branch_0x801f5010
    nop
    or      $s1, $v0, $zero
branch_0x801f5010:
    bne     $v1, $a0, branch_0x801f5190
    sw      $a1, 0x6fc($sp)
    addiu   $at, $zero, 0xa
    div     $zero, $s1, $at
    lw      $v0, 0x6c4($sp)
    mfhi    $t8
    sll     $t9, $t8, 2
    addiu   $t6, $v0, 0x8
    sw      $t6, 0x6c4($sp)
    addu    $t9, $t9, $t8
    lui     $t7, 0xfd18
    sll     $t6, $t9, 8
    sw      $t7, 0x0($v0)
    addu    $t7, $t2, $t6
    sw      $t7, 0x4($v0)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf518
    sw      $t6, 0x0($t8)
    sw      $t7, 0x4($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0xe600
    lui     $at, 0xe400
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0x713
    ori     $t6, $t6, 0xf100
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t9, 0xf300
    sw      $t9, 0x0($t7)
    sw      $t6, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0xe700
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x8
    lui     $t8, 0xf518
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    ori     $t8, $t8, 0x800
    ori     $t9, $t9, 0x200
    sw      $t9, 0x4($t6)
    sw      $t8, 0x0($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x3
    ori     $t9, $t9, 0xc04c
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xf200
    sw      $t8, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $a0, 0x6c4($sp)
    addiu   $t8, $s0, 0x10
    sll     $t9, $t8, 2
    addiu   $t7, $a0, 0x8
    sw      $t7, 0x6c4($sp)
    andi    $t6, $t9, 0xfff
    sll     $t7, $t6, 12
    addiu   $t9, $s3, 0x14
    sll     $t6, $t9, 2
    or      $t8, $t7, $at
    andi    $t7, $t6, 0xfff
    or      $t9, $t8, $t7
    sll     $t6, $s0, 2
    andi    $t8, $t6, 0xfff
    sw      $t9, 0x0($a0)
    sll     $t9, $s3, 2
    andi    $t6, $t9, 0xfff
    sll     $t7, $t8, 12
    or      $t8, $t7, $t6
    sw      $t8, 0x4($a0)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0xb300
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t6, 0x0($t9)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x400
    ori     $t6, $t6, 0x400
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t7, 0xb200
    sw      $t7, 0x0($t8)
    b       branch_0x801f5308
    sw      $t6, 0x4($t8)
branch_0x801f5190:
    addiu   $at, $zero, 0xa
    div     $zero, $s1, $at
    lw      $v0, 0x6c4($sp)
    mfhi    $t6
    sll     $t8, $t6, 2
    addiu   $t9, $v0, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $t7, 0x0($v0)
    lui     $t7, 0x104
    subu    $t8, $t8, $t6
    sll     $t9, $t8, 8
    addiu   $t7, $t7, 0xb4d0
    addu    $t6, $t9, $t7
    sw      $t6, 0x4($v0)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t7, 0xf518
    sw      $t7, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0xe600
    lui     $at, 0xe400
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t7, 0x0($t8)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0x70b
    ori     $t7, $t7, 0xf156
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t9, 0xf300
    sw      $t9, 0x0($t6)
    sw      $t7, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0xe700
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t9, 0x0($t6)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0x8
    lui     $t8, 0xf518
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x6c4($sp)
    ori     $t8, $t8, 0x600
    ori     $t9, $t9, 0x200
    sw      $t9, 0x4($t7)
    sw      $t8, 0x0($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0x2
    ori     $t9, $t9, 0xc03c
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xf200
    sw      $t8, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $a0, 0x6c4($sp)
    addiu   $t8, $s0, 0xc
    sll     $t9, $t8, 2
    addiu   $t6, $a0, 0x8
    sw      $t6, 0x6c4($sp)
    andi    $t7, $t9, 0xfff
    sll     $t6, $t7, 12
    addiu   $t9, $s3, 0x10
    sll     $t7, $t9, 2
    or      $t8, $t6, $at
    andi    $t6, $t7, 0xfff
    or      $t9, $t8, $t6
    sll     $t7, $s0, 2
    andi    $t8, $t7, 0xfff
    sw      $t9, 0x0($a0)
    sll     $t9, $s3, 2
    andi    $t7, $t9, 0xfff
    sll     $t6, $t8, 12
    or      $t8, $t6, $t7
    sw      $t8, 0x4($a0)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0xb300
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t7, 0x0($t9)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x400
    ori     $t7, $t7, 0x400
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xb200
    sw      $t6, 0x0($t8)
    sw      $t7, 0x4($t8)
branch_0x801f5308:
    lw      $a1, 0x6fc($sp)
    lui     $a0, 0x800e
    lw      $a0, -0x5758($a0)
    addiu   $a1, $a1, 0x1
    slt     $at, $a1, $a0
    bnezl   $at, branch_0x801f4f3c
    addiu   $v1, $zero, 0x1
    sw      $a1, 0x6fc($sp)
    sw      $zero, 0x6fc($sp)
branch_0x801f532c:
    lui     $t8, 0x801d
    lw      $t8, -0x1c80($t8)
    lui     $t2, 0x104
    lui     $s2, 0x711
    lui     $s4, 0xf518
    lui     $s5, 0x5
    addiu   $at, $zero, 0x4
    ori     $s5, $s5, 0xc02c
    ori     $s4, $s4, 0xc00
    ori     $s2, $s2, 0xf0ab
    bne     $t8, $at, branch_0x801f5bf0
    addiu   $t2, $t2, 0xd8d8
    lui     $t9, 0x800d
    lw      $t9, 0x7ef0($t9)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0xfd18
    beqz    $t9, branch_0x801f5bf0
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t9, 0x103
    addiu   $t9, $t9, 0x2b08
    sw      $t9, 0x4($t6)
    sw      $t8, 0x0($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xf518
    sw      $t8, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0xe600
    lui     $a3, 0x8023
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t8, 0x0($t6)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0x71a
    ori     $t8, $t8, 0xf072
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t7, 0xf300
    sw      $t7, 0x0($t9)
    sw      $t8, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0xe700
    addiu   $a3, $a3, 0x8910
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t7, 0x0($t9)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x8
    lui     $t6, 0xf518
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t6, $t6, 0x1200
    ori     $t7, $t7, 0x200
    sw      $t7, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x8
    ori     $t7, $t7, 0xc02c
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf200
    sw      $t6, 0x0($t8)
    sw      $t7, 0x4($t8)
    lw      $a0, 0x6c4($sp)
    lw      $t6, 0x0($a3)
    lui     $at, 0xe400
    addiu   $t9, $a0, 0x8
    addiu   $t7, $t6, 0xa8
    sll     $t8, $t7, 2
    sw      $t9, 0x6c4($sp)
    andi    $t9, $t8, 0xfff
    sll     $t6, $t9, 12
    or      $t7, $t6, $at
    ori     $t8, $t7, 0x84
    sw      $t8, 0x0($a0)
    lw      $t9, 0x0($a3)
    lui     $at, 0xe400
    addiu   $t6, $t9, 0x84
    sll     $t7, $t6, 2
    andi    $t8, $t7, 0xfff
    sll     $t9, $t8, 12
    ori     $t6, $t9, 0x54
    sw      $t6, 0x4($a0)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0xb300
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xb200
    sw      $t8, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $v0, 0x6c4($sp)
    lui     $t8, 0xfd18
    lui     $t9, 0x800d
    addiu   $t7, $v0, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $t8, 0x0($v0)
    lw      $t9, 0x465c($t9)
    lui     $t7, 0x801c
    sll     $t6, $t9, 3
    subu    $t6, $t6, $t9
    sll     $t6, $t6, 4
    subu    $t6, $t6, $t9
    sll     $t6, $t6, 3
    addu    $t7, $t7, $t6
    lw      $t7, 0x269c($t7)
    sll     $t8, $t7, 2
    addu    $t8, $t8, $t7
    sll     $t8, $t8, 6
    addiu   $t9, $t8, 0x140
    sll     $t6, $t9, 2
    addu    $t7, $t6, $t2
    sw      $t7, 0x4($v0)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf518
    sw      $t6, 0x0($t8)
    sw      $t7, 0x4($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0xe600
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0x713
    ori     $t6, $t6, 0xf100
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t9, 0xf300
    sw      $t9, 0x0($t7)
    sw      $t6, 0x4($t7)
    lw      $a2, 0x6c4($sp)
    lui     $t9, 0xe700
    addiu   $t8, $a2, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($a2)
    sw      $t9, 0x0($a2)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x8
    lui     $t8, 0xf518
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    ori     $t8, $t8, 0x800
    ori     $t9, $t9, 0x200
    sw      $t9, 0x4($t6)
    sw      $t8, 0x0($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x3
    ori     $t9, $t9, 0xc04c
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xf200
    sw      $t8, 0x0($t6)
    sw      $t9, 0x4($t6)
    lui     $t6, 0x8023
    lw      $t6, -0x77a4($t6)
    lw      $s0, 0x0($a3)
    lw      $v0, 0x6c4($sp)
    bnez    $t6, branch_0x801f5664
    addiu   $s0, $s0, 0x88
    addiu   $t9, $s0, 0x10
    sll     $t6, $t9, 2
    addiu   $t8, $v0, 0x8
    sw      $t8, 0x6c4($sp)
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 12
    or      $t9, $t8, $at
    ori     $t6, $t9, 0xd8
    sll     $t7, $s0, 2
    andi    $t8, $t7, 0xfff
    sll     $t9, $t8, 12
    sw      $t6, 0x0($v0)
    ori     $t6, $t9, 0x88
    sw      $t6, 0x4($v0)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0xb300
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xb200
    sw      $t8, 0x0($t6)
    b       branch_0x801f57f4
    sw      $t9, 0x4($t6)
branch_0x801f5664:
    lw      $t7, 0x6c4($sp)
    lui     $t1, 0x8023
    lw      $t1, -0x7448($t1)
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sll     $t6, $t1, 2
    lui     $t9, 0xe700
    subu    $t6, $t6, $t1
    or      $t1, $t6, $zero
    sw      $t9, 0x0($t7)
    sw      $zero, 0x4($t7)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0xba00
    ori     $t8, $t8, 0xc02
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    addiu   $t9, $zero, 0x2000
    sw      $t9, 0x4($t6)
    sw      $t8, 0x0($t6)
    lw      $t6, 0x6c4($sp)
    addiu   $t8, $s0, 0x10
    sll     $t9, $t8, 2
    addiu   $t7, $t6, 0x8
    or      $a1, $t6, $zero
    andi    $t6, $t9, 0xfff
    sw      $t7, 0x6c4($sp)
    sll     $t7, $t6, 12
    sll     $v0, $t1, 1
    addiu   $t9, $v0, 0x36
    lui     $at, 0xe400
    or      $t8, $t7, $at
    sll     $t6, $t9, 2
    andi    $t7, $t6, 0xfff
    or      $t9, $t8, $t7
    subu    $t6, $s0, $v0
    sll     $t8, $t6, 2
    andi    $t7, $t8, 0xfff
    sw      $t9, 0x0($a1)
    sll     $t9, $t7, 12
    ori     $t6, $t9, 0x88
    sw      $t6, 0x4($a1)
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xb300
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $t9, 0x0($t8)
    addiu   $t9, $v0, 0x10
    sw      $zero, 0x4($t8)
    lw      $t6, 0x6c4($sp)
    or      $v1, $t8, $zero
    lui     $t7, 0xb200
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $t7, 0x0($t6)
    or      $a0, $t6, $zero
    addiu   $t6, $zero, 0x4000
    div     $zero, $t6, $t9
    bnez    $t9, branch_0x801f5754
    nop
    break   0x7
branch_0x801f5754:
    addiu   $at, $zero, 0xffff
    bne     $t9, $at, branch_0x801f576c
    lui     $at, 0x8000
    bne     $t6, $at, branch_0x801f576c
    nop
    break   0x6
branch_0x801f576c:
    addiu   $t8, $zero, 0x5000
    addiu   $t9, $v0, 0x14
    mflo    $t7
    sll     $t6, $t7, 16
    nop
    div     $zero, $t8, $t9
    mflo    $t7
    bnez    $t9, branch_0x801f5794
    nop
    break   0x7
branch_0x801f5794:
    addiu   $at, $zero, 0xffff
    bne     $t9, $at, branch_0x801f57ac
    lui     $at, 0x8000
    bne     $t8, $at, branch_0x801f57ac
    nop
    break   0x6
branch_0x801f57ac:
    andi    $t8, $t7, 0xffff
    or      $t9, $t6, $t8
    sw      $t9, 0x4($a0)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0xe700
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t8, 0x0($t7)
    lw      $t9, 0x6c4($sp)
    or      $a1, $t7, $zero
    lui     $t6, 0xba00
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    ori     $t6, $t6, 0xc02
    sw      $t6, 0x0($t9)
    sw      $zero, 0x4($t9)
    or      $a2, $t9, $zero
branch_0x801f57f4:
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0xe700
    lui     $t0, 0x801d
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t7, 0x0($t8)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xff37
    lui     $t9, 0xfc12
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    ori     $t9, $t9, 0x9a25
    ori     $t7, $t7, 0xffff
    lui     $t8, 0x800d
    sw      $t7, 0x4($t6)
    sw      $t9, 0x0($t6)
    lw      $t8, 0x465c($t8)
    lui     $t7, 0x801c
    addiu   $t0, $t0, 0xe464
    sll     $t9, $t8, 3
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 4
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 3
    addu    $t7, $t7, $t9
    lw      $t7, 0x269c($t7)
    lw      $t6, 0x0($t0)
    lw      $v0, 0x6c4($sp)
    addiu   $t9, $zero, 0xffff
    slt     $at, $t6, $t7
    beqz    $at, branch_0x801f58c8
    lw      $t6, 0x6c4($sp)
    addiu   $t9, $v0, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xfb00
    sw      $t6, 0x0($v0)
    lui     $t6, 0x8023
    lui     $t7, 0x8023
    lw      $t8, -0x7794($t7)
    lw      $t6, -0x7790($t6)
    sll     $t9, $t8, 24
    andi    $t7, $t6, 0xff
    sll     $t8, $t7, 16
    lui     $t7, 0x8023
    lw      $t7, -0x778c($t7)
    or      $t6, $t9, $t8
    andi    $t9, $t7, 0xff
    sll     $t8, $t9, 8
    or      $t7, $t6, $t8
    ori     $t9, $t7, 0xff
    b       branch_0x801f58dc
    sw      $t9, 0x4($v0)
branch_0x801f58c8:
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t7, 0xfb00
    sw      $t7, 0x0($t6)
    sw      $t9, 0x4($t6)
branch_0x801f58dc:
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x103
    addiu   $t9, $t9, 0x3c60
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t7, 0xfd70
    sw      $t7, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t7, 0xf570
    sw      $t7, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xe600
    lui     $a3, 0x8023
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x702
    ori     $t7, $t7, 0x7800
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xf300
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe700
    addiu   $a3, $a3, 0x8910
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0x8
    lui     $t6, 0xf568
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t6, $t6, 0x200
    ori     $t8, $t8, 0x200
    sw      $t8, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0x1
    ori     $t8, $t8, 0xc024
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf200
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $a0, 0x6c4($sp)
    lw      $t6, 0x0($a3)
    lui     $at, 0xe400
    addiu   $t9, $a0, 0x8
    addiu   $t8, $t6, 0xa3
    sll     $t7, $t8, 2
    sw      $t9, 0x6c4($sp)
    andi    $t9, $t7, 0xfff
    sll     $t6, $t9, 12
    or      $t8, $t6, $at
    ori     $t7, $t8, 0xa8
    sw      $t7, 0x0($a0)
    lw      $t9, 0x0($a3)
    addiu   $t6, $t9, 0x9b
    sll     $t8, $t6, 2
    andi    $t7, $t8, 0xfff
    sll     $t9, $t7, 12
    ori     $t6, $t9, 0x80
    sw      $t6, 0x4($a0)
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xb300
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t7, 0xb200
    sw      $t7, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $v0, 0x0($t0)
    lui     $t6, 0x104
    addiu   $t6, $t6, 0x9248
    slti    $at, $v0, 0x4
    beqz    $at, branch_0x801f5a5c
    lui     $t7, 0xfd70
    b       branch_0x801f5a60
    addiu   $t0, $v0, 0x1
branch_0x801f5a5c:
    addiu   $t0, $zero, 0x25
branch_0x801f5a60:
    lw      $v0, 0x6c4($sp)
    sll     $t9, $t0, 2
    subu    $t9, $t9, $t0
    addiu   $t8, $v0, 0x8
    sw      $t8, 0x6c4($sp)
    sll     $t9, $t9, 6
    addu    $t8, $t9, $t6
    sw      $t8, 0x4($v0)
    sw      $t7, 0x0($v0)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0x708
    ori     $t8, $t8, 0x200
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf570
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xe600
    lui     $t0, 0x8023
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x705
    ori     $t6, $t6, 0xf400
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t9, 0xf300
    sw      $t9, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xe700
    addiu   $t0, $t0, 0x8910
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x8
    lui     $t7, 0xf568
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    ori     $t7, $t7, 0x400
    ori     $t9, $t9, 0x200
    sw      $t9, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x3
    ori     $t9, $t9, 0xc02c
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t7, 0xf200
    sw      $t7, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $a0, 0x6c4($sp)
    lw      $t7, 0x0($t0)
    lui     $at, 0xe400
    addiu   $t8, $a0, 0x8
    addiu   $t9, $t7, 0xaa
    sll     $t6, $t9, 2
    sw      $t8, 0x6c4($sp)
    andi    $t8, $t6, 0xfff
    sll     $t7, $t8, 12
    or      $t9, $t7, $at
    ori     $t6, $t9, 0xd8
    sw      $t6, 0x0($a0)
    lw      $t8, 0x0($t0)
    addiu   $t7, $t8, 0x9a
    sll     $t9, $t7, 2
    andi    $t6, $t9, 0xfff
    sll     $t8, $t6, 12
    ori     $t7, $t8, 0xa8
    sw      $t7, 0x4($a0)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xb300
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $a3, 0x6c4($sp)
    lui     $t8, 0x400
    ori     $t8, $t8, 0x400
    addiu   $t9, $a3, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xb200
    sw      $t6, 0x0($a3)
    sw      $t8, 0x4($a3)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xe700
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t8, 0x6c4($sp)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $ra, 0x4($t8)
    sw      $t5, 0x0($t8)
branch_0x801f5bf0:
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x103
    addiu   $t7, $t7, 0x31d0
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xfd18
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xf518
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe600
    lui     $v1, 0x801d
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0x717
    ori     $t8, $t8, 0xf080
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf300
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xe700
    addiu   $at, $zero, 0xb
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x8
    lui     $t9, 0xf518
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    ori     $t9, $t9, 0x1000
    ori     $t6, $t6, 0x200
    sw      $t6, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x7
    ori     $t6, $t6, 0xc02c
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t9, 0xf200
    sw      $t9, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $v1, -0x1c80($v1)
    lui     $a0, 0x800e
    bne     $v1, $at, branch_0x801f5d3c
    nop
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xe443
    lui     $t6, 0x3b
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    ori     $t6, $t6, 0x58
    ori     $t9, $t9, 0x88
    sw      $t9, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xb300
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t7, 0xb200
    sw      $t7, 0x0($t6)
    b       branch_0x801f5eb0
    sw      $t9, 0x4($t6)
branch_0x801f5d3c:
    lui     $t6, 0x800e
    lw      $t6, -0x5758($t6)
    lw      $t7, 0x6c4($sp)
    addiu   $at, $zero, 0x1
    bne     $t6, $at, branch_0x801f5e10
    addiu   $t9, $t7, 0x8
    lui     $t8, 0x800d
    lw      $t8, 0x7ef0($t8)
    lw      $v0, 0x6c4($sp)
    lui     $t6, 0x8023
    bnez    $t8, branch_0x801f5d74
    addiu   $t9, $v0, 0x8
    b       branch_0x801f5d84
    addiu   $t0, $zero, 0xd9
branch_0x801f5d74:
    bnez    $v1, branch_0x801f5d84
    addiu   $t0, $zero, 0xd9
    b       branch_0x801f5d84
    addiu   $t0, $zero, 0x97
branch_0x801f5d84:
    lw      $t6, -0x76f0($t6)
    sw      $t9, 0x6c4($sp)
    lui     $at, 0xe400
    addu    $t8, $t0, $t6
    addiu   $t7, $t8, 0x38
    sll     $t9, $t7, 2
    andi    $t6, $t9, 0xfff
    sll     $t8, $t6, 12
    or      $t7, $t8, $at
    ori     $t9, $t7, 0x84
    sw      $t9, 0x0($v0)
    lui     $t6, 0x8023
    lw      $t6, -0x76f0($t6)
    addu    $t8, $t0, $t6
    addiu   $t7, $t8, 0x18
    sll     $t9, $t7, 2
    andi    $t6, $t9, 0xfff
    sll     $t8, $t6, 12
    ori     $t7, $t8, 0x54
    sw      $t7, 0x4($v0)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xb300
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0x400
    ori     $t8, $t8, 0x400
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xb200
    sw      $t6, 0x0($t7)
    b       branch_0x801f5eb0
    sw      $t8, 0x4($t7)
branch_0x801f5e10:
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xe444
    lui     $t8, 0x3c
    ori     $t8, $t8, 0x8034
    ori     $t6, $t6, 0x8064
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t1, 0xb300
    lui     $a3, 0x400
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t1, 0x0($t7)
    lw      $t6, 0x6c4($sp)
    ori     $a3, $a3, 0x400
    lui     $t0, 0xb200
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $a3, 0x4($t6)
    sw      $t0, 0x0($t6)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xe444
    lui     $t8, 0x3c
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t8, $t8, 0x81ec
    ori     $t6, $t6, 0x821c
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t1, 0x0($t7)
    lw      $t6, 0x6c4($sp)
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $a3, 0x4($t6)
    sw      $t0, 0x0($t6)
branch_0x801f5eb0:
    lw      $a0, -0x5758($a0)
    blez    $a0, branch_0x801f6d20
    lui     $at, 0x8022
    lui     $ra, 0x39
    lui     $t5, 0xe43c
    lui     $t1, 0x803
    addiu   $t1, $t1, 0xc3e8
    ori     $t5, $t5, 0xd8
    ori     $ra, $ra, 0x98
    lwc1    $f0, 0x780c($at)
    addiu   $at, $zero, 0x1
branch_0x801f5edc:
    bne     $a0, $at, branch_0x801f5f1c
    lw      $t7, 0x6fc($sp)
    lui     $t7, 0x800d
    lw      $t7, 0x465c($t7)
    lui     $s0, 0x8023
    lw      $s0, -0x76f0($s0)
    multu   $t7, $t4
    addiu   $s3, $zero, 0x22
    addiu   $s0, $s0, 0xe1
    mflo    $t9
    addu    $t6, $t3, $t9
    lwc1    $f4, 0xb90($t6)
    trunc.w.s   $f6, $f4
    mfc1    $s1, $a2
    b       branch_0x801f5f80
    mtc1    $s1, $a0
branch_0x801f5f1c:
    bnez    $t7, branch_0x801f5f54
    lui     $t9, 0x800d
    lui     $t9, 0x800d
    lw      $t9, 0x465c($t9)
    addiu   $s0, $zero, 0xec
    addiu   $s3, $zero, 0x19
    multu   $t9, $t4
    mflo    $t6
    addu    $t8, $t3, $t6
    lwc1    $f8, 0xb90($t8)
    trunc.w.s   $f10, $f8
    mfc1    $s1, $t2
    b       branch_0x801f5f80
    mtc1    $s1, $a0
branch_0x801f5f54:
    lw      $t9, 0x4660($t9)
    addiu   $s0, $zero, 0xec
    addiu   $s3, $zero, 0x87
    multu   $t9, $t4
    mflo    $t6
    addu    $t8, $t3, $t6
    lwc1    $f16, 0xb90($t8)
    trunc.w.s   $f18, $f16
    mfc1    $s1, $s2
    nop
    mtc1    $s1, $a0
branch_0x801f5f80:
    lui     $t9, 0x800d
    lw      $t9, 0x7ef0($t9)
    cvt.s.w $f6, $f4
    lui     $v1, 0x801d
    mul.s   $f8, $f6, $f0
    bnez    $t9, branch_0x801f5fac
    nop
    lui     $v1, 0x801d
    lw      $v1, -0x1c80($v1)
    b       branch_0x801f5fbc
    addiu   $s0, $zero, 0xe1
branch_0x801f5fac:
    lw      $v1, -0x1c80($v1)
    bnezl   $v1, branch_0x801f5fc0
    trunc.w.s   $f10, $f8
    addiu   $s0, $zero, 0x9f
branch_0x801f5fbc:
    trunc.w.s   $f10, $f8
branch_0x801f5fc0:
    mfc1    $s1, $t2
    nop
    slti    $at, $s1, 0x3e8
    bnezl   $at, branch_0x801f5fdc
    addiu   $at, $zero, 0xb
    addiu   $s1, $zero, 0x3e7
    addiu   $at, $zero, 0xb
branch_0x801f5fdc:
    bne     $v1, $at, branch_0x801f63fc
    slti    $at, $s1, 0x64
    bnez    $at, branch_0x801f611c
    lw      $v0, 0x6c4($sp)
    addiu   $at, $zero, 0x64
    div     $zero, $s1, $at
    mflo    $t6
    addiu   $t7, $v0, 0x8
    sw      $t7, 0x6c4($sp)
    sll     $t8, $t6, 2
    subu    $t8, $t8, $t6
    lui     $t9, 0xfd18
    sw      $t9, 0x0($v0)
    sll     $t7, $t8, 8
    addu    $t9, $t1, $t7
    sw      $t9, 0x4($v0)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t7, 0xf518
    sw      $t7, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xe600
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x70b
    ori     $t7, $t7, 0xf156
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xf300
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe700
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0x8
    lui     $t6, 0xf518
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t6, $t6, 0x600
    ori     $t8, $t8, 0x200
    sw      $t8, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0x2
    ori     $t8, $t8, 0xc03c
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf200
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $ra, 0x4($t7)
    sw      $t5, 0x0($t7)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xb300
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x400
    ori     $t7, $t7, 0x400
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xb200
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
branch_0x801f611c:
    slti    $at, $s1, 0xa
    bnez    $at, branch_0x801f6294
    addiu   $s0, $zero, 0xf2
    addiu   $at, $zero, 0x64
    div     $zero, $s1, $at
    mfhi    $t7
    addiu   $at, $zero, 0xa
    lw      $v0, 0x6c4($sp)
    div     $zero, $t7, $at
    addiu   $t6, $v0, 0x8
    sw      $t6, 0x6c4($sp)
    mflo    $t9
    sll     $t6, $t9, 2
    lui     $t8, 0xfd18
    subu    $t6, $t6, $t9
    sw      $t8, 0x0($v0)
    sll     $t8, $t6, 8
    addu    $t7, $t1, $t8
    sw      $t7, 0x4($v0)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xf518
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe600
    lui     $at, 0xe400
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0x70b
    ori     $t8, $t8, 0xf156
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf300
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xe700
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x8
    lui     $t9, 0xf518
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    ori     $t9, $t9, 0x600
    ori     $t6, $t6, 0x200
    sw      $t6, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x2
    ori     $t6, $t6, 0xc03c
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t9, 0xf200
    sw      $t9, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $a0, 0x6c4($sp)
    addiu   $t9, $s0, 0xc
    sll     $t6, $t9, 2
    addiu   $t7, $a0, 0x8
    sw      $t7, 0x6c4($sp)
    andi    $t8, $t6, 0xfff
    sll     $t7, $t8, 12
    or      $t9, $t7, $at
    ori     $t6, $t9, 0xd8
    sll     $t8, $s0, 2
    andi    $t7, $t8, 0xfff
    sll     $t9, $t7, 12
    sw      $t6, 0x0($a0)
    ori     $t6, $t9, 0x98
    sw      $t6, 0x4($a0)
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xb300
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t7, 0xb200
    sw      $t7, 0x0($t6)
    sw      $t9, 0x4($t6)
branch_0x801f6294:
    addiu   $at, $zero, 0xa
    div     $zero, $s1, $at
    lw      $v0, 0x6c4($sp)
    mfhi    $t9
    sll     $t6, $t9, 2
    addiu   $t8, $v0, 0x8
    sw      $t8, 0x6c4($sp)
    subu    $t6, $t6, $t9
    lui     $t7, 0xfd18
    sll     $t8, $t6, 8
    sw      $t7, 0x0($v0)
    addu    $t7, $t1, $t8
    sw      $t7, 0x4($v0)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xf518
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe600
    addiu   $s0, $s0, 0xe
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0x70b
    ori     $t8, $t8, 0xf156
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf300
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xe700
    lui     $at, 0xe400
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x8
    lui     $t9, 0xf518
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    ori     $t9, $t9, 0x600
    ori     $t6, $t6, 0x200
    sw      $t6, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x2
    ori     $t6, $t6, 0xc03c
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t9, 0xf200
    sw      $t9, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $a0, 0x6c4($sp)
    addiu   $t9, $s0, 0xc
    sll     $t6, $t9, 2
    addiu   $t7, $a0, 0x8
    sw      $t7, 0x6c4($sp)
    andi    $t8, $t6, 0xfff
    sll     $t7, $t8, 12
    or      $t9, $t7, $at
    ori     $t6, $t9, 0xd8
    sll     $t8, $s0, 2
    andi    $t7, $t8, 0xfff
    sll     $t9, $t7, 12
    sw      $t6, 0x0($a0)
    ori     $t6, $t9, 0x98
    sw      $t6, 0x4($a0)
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xb300
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t7, 0xb200
    sw      $t7, 0x0($t6)
    b       branch_0x801f6d00
    sw      $t9, 0x4($t6)
branch_0x801f63fc:
    addiu   $at, $zero, 0x1
    bne     $a0, $at, branch_0x801f687c
    sll     $a2, $s3, 2
    slti    $at, $s1, 0x64
    bnez    $at, branch_0x801f6588
    addiu   $t0, $s3, 0x14
    addiu   $at, $zero, 0x64
    div     $zero, $s1, $at
    lw      $v0, 0x6c4($sp)
    mflo    $t9
    sll     $t6, $t9, 2
    addiu   $t8, $v0, 0x8
    sw      $t8, 0x6c4($sp)
    addu    $t6, $t6, $t9
    lui     $t7, 0xfd18
    sll     $t8, $t6, 8
    sw      $t7, 0x0($v0)
    addu    $t7, $t2, $t8
    sw      $t7, 0x4($v0)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xf518
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe600
    lui     $at, 0xe400
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0x713
    ori     $t8, $t8, 0xf100
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf300
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xe700
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x8
    lui     $t9, 0xf518
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    ori     $t9, $t9, 0x800
    ori     $t6, $t6, 0x200
    sw      $t6, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x3
    ori     $t6, $t6, 0xc04c
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t9, 0xf200
    sw      $t9, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $a0, 0x6c4($sp)
    addiu   $t9, $s0, 0x10
    sll     $t6, $t9, 2
    addiu   $t7, $a0, 0x8
    sw      $t7, 0x6c4($sp)
    andi    $t8, $t6, 0xfff
    sll     $t7, $t8, 12
    addiu   $t6, $s3, 0x14
    sll     $t8, $t6, 2
    or      $t9, $t7, $at
    andi    $t7, $t8, 0xfff
    or      $t6, $t9, $t7
    sll     $t8, $s0, 2
    andi    $t9, $t8, 0xfff
    sw      $t6, 0x0($a0)
    sll     $t6, $s3, 2
    andi    $t8, $t6, 0xfff
    sll     $t7, $t9, 12
    or      $t9, $t7, $t8
    sw      $t9, 0x4($a0)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0xb300
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t8, 0x0($t6)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0x400
    ori     $t8, $t8, 0x400
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t7, 0xb200
    sw      $t7, 0x0($t9)
    sw      $t8, 0x4($t9)
branch_0x801f6588:
    sll     $a2, $s3, 2
    andi    $t7, $a2, 0xfff
    sll     $t9, $t0, 2
    slti    $at, $s1, 0xa
    addiu   $s0, $s0, 0x10
    andi    $t0, $t9, 0xfff
    bnez    $at, branch_0x801f6714
    or      $a2, $t7, $zero
    addiu   $at, $zero, 0x64
    div     $zero, $s1, $at
    mfhi    $t7
    addiu   $at, $zero, 0xa
    lw      $v0, 0x6c4($sp)
    div     $zero, $t7, $at
    addiu   $t9, $v0, 0x8
    sw      $t9, 0x6c4($sp)
    mflo    $t8
    sll     $t9, $t8, 2
    lui     $t6, 0xfd18
    addu    $t9, $t9, $t8
    sw      $t6, 0x0($v0)
    sll     $t6, $t9, 8
    addu    $t7, $t2, $t6
    sw      $t7, 0x4($v0)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf518
    sw      $t6, 0x0($t8)
    sw      $t7, 0x4($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0xe600
    lui     $at, 0xe400
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0x713
    ori     $t6, $t6, 0xf100
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t9, 0xf300
    sw      $t9, 0x0($t7)
    sw      $t6, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0xe700
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x8
    lui     $t8, 0xf518
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    ori     $t8, $t8, 0x800
    ori     $t9, $t9, 0x200
    sw      $t9, 0x4($t6)
    sw      $t8, 0x0($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x3
    ori     $t9, $t9, 0xc04c
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xf200
    sw      $t8, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $a0, 0x6c4($sp)
    addiu   $t8, $s0, 0x10
    sll     $t9, $t8, 2
    addiu   $t7, $a0, 0x8
    sw      $t7, 0x6c4($sp)
    andi    $t6, $t9, 0xfff
    sll     $t7, $t6, 12
    or      $t8, $t7, $at
    or      $t9, $t8, $t0
    sll     $t6, $s0, 2
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 12
    sw      $t9, 0x0($a0)
    or      $t9, $t8, $a2
    sw      $t9, 0x4($a0)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0xb300
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t8, 0x0($t6)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0x400
    ori     $t8, $t8, 0x400
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t7, 0xb200
    sw      $t7, 0x0($t9)
    sw      $t8, 0x4($t9)
branch_0x801f6714:
    addiu   $at, $zero, 0xa
    div     $zero, $s1, $at
    lw      $v0, 0x6c4($sp)
    mfhi    $t8
    sll     $t9, $t8, 2
    addiu   $t6, $v0, 0x8
    sw      $t6, 0x6c4($sp)
    addu    $t9, $t9, $t8
    lui     $t7, 0xfd18
    sll     $t6, $t9, 8
    sw      $t7, 0x0($v0)
    addu    $t7, $t2, $t6
    sw      $t7, 0x4($v0)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf518
    sw      $t6, 0x0($t8)
    sw      $t7, 0x4($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0xe600
    addiu   $s0, $s0, 0x10
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0x713
    ori     $t6, $t6, 0xf100
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t9, 0xf300
    sw      $t9, 0x0($t7)
    sw      $t6, 0x4($t7)
    lw      $a3, 0x6c4($sp)
    lui     $t9, 0xe700
    lui     $at, 0xe400
    addiu   $t8, $a3, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($a3)
    sw      $t9, 0x0($a3)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x8
    lui     $t8, 0xf518
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    ori     $t8, $t8, 0x800
    ori     $t9, $t9, 0x200
    sw      $t9, 0x4($t6)
    sw      $t8, 0x0($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x3
    ori     $t9, $t9, 0xc04c
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xf200
    sw      $t8, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $a0, 0x6c4($sp)
    addiu   $t8, $s0, 0x10
    sll     $t9, $t8, 2
    addiu   $t7, $a0, 0x8
    sw      $t7, 0x6c4($sp)
    andi    $t6, $t9, 0xfff
    sll     $t7, $t6, 12
    or      $t8, $t7, $at
    or      $t9, $t8, $t0
    sll     $t6, $s0, 2
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 12
    sw      $t9, 0x0($a0)
    or      $t9, $t8, $a2
    sw      $t9, 0x4($a0)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0xb300
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t8, 0x0($t6)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0x400
    ori     $t8, $t8, 0x400
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t7, 0xb200
    sw      $t7, 0x0($t9)
    b       branch_0x801f6d00
    sw      $t8, 0x4($t9)
branch_0x801f687c:
    slti    $at, $s1, 0x64
    bnez    $at, branch_0x801f6a04
    addiu   $t0, $s3, 0x10
    addiu   $at, $zero, 0x64
    div     $zero, $s1, $at
    lw      $v0, 0x6c4($sp)
    mflo    $t8
    lui     $t7, 0xfd18
    addiu   $t6, $v0, 0x8
    sw      $t6, 0x6c4($sp)
    sll     $t9, $t8, 2
    sw      $t7, 0x0($v0)
    lui     $t7, 0x104
    subu    $t9, $t9, $t8
    sll     $t6, $t9, 8
    addiu   $t7, $t7, 0xb4d0
    addu    $t8, $t6, $t7
    sw      $t8, 0x4($v0)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0x708
    ori     $t8, $t8, 0x200
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t7, 0xf518
    sw      $t7, 0x0($t9)
    sw      $t8, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0xe600
    lui     $at, 0xe400
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t7, 0x0($t9)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x70b
    ori     $t7, $t7, 0xf156
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf300
    sw      $t6, 0x0($t8)
    sw      $t7, 0x4($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0xe700
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0x8
    lui     $t9, 0xf518
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    ori     $t9, $t9, 0x600
    ori     $t6, $t6, 0x200
    sw      $t6, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0x2
    ori     $t6, $t6, 0xc03c
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t9, 0xf200
    sw      $t9, 0x0($t7)
    sw      $t6, 0x4($t7)
    lw      $a0, 0x6c4($sp)
    addiu   $t9, $s0, 0xc
    sll     $t6, $t9, 2
    addiu   $t8, $a0, 0x8
    sw      $t8, 0x6c4($sp)
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 12
    addiu   $t6, $s3, 0x10
    sll     $t7, $t6, 2
    or      $t9, $t8, $at
    andi    $t8, $t7, 0xfff
    or      $t6, $t9, $t8
    sll     $t7, $s0, 2
    andi    $t9, $t7, 0xfff
    sw      $t6, 0x0($a0)
    sll     $t6, $s3, 2
    andi    $t7, $t6, 0xfff
    sll     $t8, $t9, 12
    or      $t9, $t8, $t7
    sw      $t9, 0x4($a0)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xb300
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x400
    ori     $t7, $t7, 0x400
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xb200
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
branch_0x801f6a04:
    andi    $t9, $a2, 0xfff
    sll     $t6, $t0, 2
    slti    $at, $s1, 0xa
    addiu   $s0, $s0, 0xd
    andi    $t0, $t6, 0xfff
    bnez    $at, branch_0x801f6b94
    or      $a2, $t9, $zero
    addiu   $at, $zero, 0x64
    div     $zero, $s1, $at
    mfhi    $t8
    addiu   $at, $zero, 0xa
    lw      $v0, 0x6c4($sp)
    div     $zero, $t8, $at
    addiu   $t9, $v0, 0x8
    sw      $t9, 0x6c4($sp)
    mflo    $t7
    sll     $t9, $t7, 2
    lui     $t6, 0xfd18
    subu    $t9, $t9, $t7
    lui     $t8, 0x104
    sw      $t6, 0x0($v0)
    sll     $t6, $t9, 8
    addiu   $t8, $t8, 0xb4d0
    addu    $t7, $t6, $t8
    sw      $t7, 0x4($v0)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xf518
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe600
    lui     $at, 0xe400
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0x70b
    ori     $t8, $t8, 0xf156
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf300
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xe700
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x8
    lui     $t9, 0xf518
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    ori     $t9, $t9, 0x600
    ori     $t6, $t6, 0x200
    sw      $t6, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x2
    ori     $t6, $t6, 0xc03c
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t9, 0xf200
    sw      $t9, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $a0, 0x6c4($sp)
    addiu   $t9, $s0, 0xc
    sll     $t6, $t9, 2
    addiu   $t7, $a0, 0x8
    sw      $t7, 0x6c4($sp)
    andi    $t8, $t6, 0xfff
    sll     $t7, $t8, 12
    or      $t9, $t7, $at
    or      $t6, $t9, $t0
    sll     $t8, $s0, 2
    andi    $t7, $t8, 0xfff
    sll     $t9, $t7, 12
    sw      $t6, 0x0($a0)
    or      $t6, $t9, $a2
    sw      $t6, 0x4($a0)
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xb300
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t7, 0xb200
    sw      $t7, 0x0($t6)
    sw      $t9, 0x4($t6)
branch_0x801f6b94:
    addiu   $at, $zero, 0xa
    div     $zero, $s1, $at
    lw      $v0, 0x6c4($sp)
    mfhi    $t9
    lui     $t7, 0xfd18
    addiu   $t8, $v0, 0x8
    sw      $t8, 0x6c4($sp)
    sll     $t6, $t9, 2
    sw      $t7, 0x0($v0)
    lui     $t7, 0x104
    subu    $t6, $t6, $t9
    sll     $t8, $t6, 8
    addiu   $t7, $t7, 0xb4d0
    addu    $t9, $t8, $t7
    sw      $t9, 0x4($v0)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t7, 0xf518
    sw      $t7, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xe600
    addiu   $s0, $s0, 0xd
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x70b
    ori     $t7, $t7, 0xf156
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xf300
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $a3, 0x6c4($sp)
    lui     $t8, 0xe700
    lui     $at, 0xe400
    addiu   $t6, $a3, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($a3)
    sw      $t8, 0x0($a3)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0x8
    lui     $t6, 0xf518
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t6, $t6, 0x600
    ori     $t8, $t8, 0x200
    sw      $t8, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0x2
    ori     $t8, $t8, 0xc03c
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf200
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $a0, 0x6c4($sp)
    addiu   $t6, $s0, 0xc
    sll     $t8, $t6, 2
    addiu   $t9, $a0, 0x8
    sw      $t9, 0x6c4($sp)
    andi    $t7, $t8, 0xfff
    sll     $t9, $t7, 12
    or      $t6, $t9, $at
    or      $t8, $t6, $t0
    sll     $t7, $s0, 2
    andi    $t9, $t7, 0xfff
    sll     $t6, $t9, 12
    sw      $t8, 0x0($a0)
    or      $t8, $t6, $a2
    sw      $t8, 0x4($a0)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xb300
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x400
    ori     $t6, $t6, 0x400
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t9, 0xb200
    sw      $t9, 0x0($t8)
    sw      $t6, 0x4($t8)
branch_0x801f6d00:
    lw      $t8, 0x6fc($sp)
    lui     $a0, 0x800e
    lw      $a0, -0x5758($a0)
    addiu   $t7, $t8, 0x1
    sw      $t7, 0x6fc($sp)
    slt     $at, $t7, $a0
    bnezl   $at, branch_0x801f5edc
    addiu   $at, $zero, 0x1
branch_0x801f6d20:
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x103
    addiu   $t7, $t7, 0x37d8
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xfd18
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xf518
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe600
    lui     $v1, 0x801d
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $a1, 0x6c4($sp)
    lui     $t6, 0xf300
    addiu   $at, $zero, 0xb
    addiu   $t9, $a1, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $s2, 0x4($a1)
    sw      $t6, 0x0($a1)
    lw      $a2, 0x6c4($sp)
    lui     $t9, 0xe700
    addiu   $t7, $a2, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($a2)
    sw      $t9, 0x0($a2)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0x8
    ori     $t7, $t7, 0x200
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $t7, 0x4($t6)
    sw      $s4, 0x0($t6)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xf200
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $s5, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $v1, -0x1c80($v1)
    bne     $v1, $at, branch_0x801f6e50
    nop
    lw      $v0, 0x6c4($sp)
    lui     $t6, 0xe449
    lui     $t8, 0x43
    addiu   $t9, $v0, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t8, $t8, 0x80ac
    ori     $t6, $t6, 0x80dc
    sw      $t6, 0x0($v0)
    sw      $t8, 0x4($v0)
    lw      $v1, 0x6c4($sp)
    lui     $t6, 0xb300
    addiu   $t9, $v1, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($v1)
    sw      $t6, 0x0($v1)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0x400
    ori     $t6, $t6, 0x400
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t9, 0xb200
    sw      $t9, 0x0($t8)
    b       branch_0x801f6fc4
    sw      $t6, 0x4($t8)
branch_0x801f6e50:
    lui     $t8, 0x800e
    lw      $t8, -0x5758($t8)
    addiu   $at, $zero, 0x1
    lui     $t7, 0x800d
    bne     $t8, $at, branch_0x801f6f1c
    lui     $a1, 0x8023
    lw      $t7, 0x7ef0($t7)
    lw      $v0, 0x6c4($sp)
    addiu   $a1, $a1, 0x8910
    bnez    $t7, branch_0x801f6e84
    addiu   $t6, $v0, 0x8
    b       branch_0x801f6e94
    addiu   $t0, $zero, 0xd9
branch_0x801f6e84:
    bnez    $v1, branch_0x801f6e94
    addiu   $t0, $zero, 0xd9
    b       branch_0x801f6e94
    addiu   $t0, $zero, 0x97
branch_0x801f6e94:
    lw      $t8, 0x0($a1)
    sw      $t6, 0x6c4($sp)
    lui     $at, 0xe400
    addu    $t7, $t0, $t8
    addiu   $t9, $t7, 0x51
    sll     $t6, $t9, 2
    andi    $t8, $t6, 0xfff
    sll     $t7, $t8, 12
    or      $t9, $t7, $at
    ori     $t6, $t9, 0xd8
    sw      $t6, 0x0($v0)
    lw      $t8, 0x0($a1)
    addu    $t7, $t0, $t8
    addiu   $t9, $t7, 0x39
    sll     $t6, $t9, 2
    andi    $t8, $t6, 0xfff
    sll     $t7, $t8, 12
    ori     $t9, $t7, 0xa8
    sw      $t9, 0x4($v0)
    lw      $v1, 0x6c4($sp)
    lui     $t7, 0xb300
    addiu   $t8, $v1, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($v1)
    sw      $t7, 0x0($v1)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x400
    ori     $t7, $t7, 0x400
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t8, 0xb200
    sw      $t8, 0x0($t9)
    b       branch_0x801f6fc4
    sw      $t7, 0x4($t9)
branch_0x801f6f1c:
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe44b
    lui     $t7, 0x45
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    ori     $t7, $t7, 0x78
    ori     $t8, $t8, 0xa8
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $v1, 0x6c4($sp)
    lui     $t1, 0xb300
    lui     $a3, 0x400
    addiu   $t6, $v1, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($v1)
    sw      $t1, 0x0($v1)
    lw      $t8, 0x6c4($sp)
    ori     $a3, $a3, 0x400
    lui     $t0, 0xb200
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $a3, 0x4($t8)
    sw      $t0, 0x0($t8)
    lw      $a1, 0x6c4($sp)
    lui     $t8, 0xe44b
    lui     $t7, 0x45
    addiu   $t6, $a1, 0x8
    sw      $t6, 0x6c4($sp)
    ori     $t7, $t7, 0x230
    ori     $t8, $t8, 0x260
    sw      $t8, 0x0($a1)
    sw      $t7, 0x4($a1)
    lw      $a2, 0x6c4($sp)
    addiu   $t6, $a2, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($a2)
    sw      $t1, 0x0($a2)
    lw      $v0, 0x6c4($sp)
    addiu   $t7, $v0, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $a3, 0x4($v0)
    sw      $t0, 0x0($v0)
branch_0x801f6fc4:
    lui     $t9, 0x801d
    lw      $t9, -0x1c80($t9)
    addiu   $at, $zero, 0xb
    beq     $t9, $at, branch_0x801f7718
    lui     $t6, 0x800d
    lw      $t6, 0x7ef0($t6)
    lui     $t8, 0x800e
    lui     $t3, 0x708
    beqz    $t6, branch_0x801f7718
    nop
    lw      $t8, -0x5758($t8)
    addiu   $at, $zero, 0x1
    sw      $zero, 0x6fc($sp)
    bne     $t8, $at, branch_0x801f7198
    lw      $t7, 0x6c4($sp)
    lui     $s0, 0x8023
    addiu   $t9, $t7, 0x8
    lw      $s0, -0x76ec($s0)
    sw      $t9, 0x6c4($sp)
    lui     $t8, 0x103
    addiu   $t8, $t8, 0xdf50
    lui     $t6, 0xfd18
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0x708
    ori     $t8, $t8, 0x200
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf518
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xe600
    addiu   $s0, $s0, 0x18
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xf300
    addiu   $a0, $s0, 0x18
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $s2, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xe700
    addiu   $v1, $zero, 0x364
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0x8
    ori     $t8, $t8, 0x200
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $t8, 0x4($t9)
    sw      $s4, 0x0($t9)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xf200
    lui     $at, 0xe400
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $s5, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $a3, 0x6c4($sp)
    sll     $t9, $a0, 2
    andi    $t6, $v1, 0xfff
    addiu   $t7, $a3, 0x8
    blez    $t9, branch_0x801f70f0
    sw      $t7, 0x6c4($sp)
    b       branch_0x801f70f4
    or      $a1, $t9, $zero
branch_0x801f70f0:
    or      $a1, $zero, $zero
branch_0x801f70f4:
    andi    $t7, $a1, 0xfff
    sll     $t9, $t7, 12
    or      $t8, $t6, $at
    or      $t6, $t8, $t9
    sll     $a0, $s0, 2
    blez    $a0, branch_0x801f7118
    sw      $t6, 0x0($a3)
    b       branch_0x801f711c
    or      $a1, $a0, $zero
branch_0x801f7118:
    or      $a1, $zero, $zero
branch_0x801f711c:
    addiu   $v1, $zero, 0x334
    andi    $t8, $a1, 0xfff
    sll     $t9, $t8, 12
    andi    $t7, $v1, 0xfff
    or      $t6, $t7, $t9
    sw      $t6, 0x4($a3)
    lw      $a2, 0x6c4($sp)
    sll     $v0, $a0, 10
    sra     $t6, $v0, 7
    addiu   $t7, $a2, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t9, 0xb300
    bgez    $t6, branch_0x801f715c
    sw      $t9, 0x0($a2)
    b       branch_0x801f7160
    or      $a1, $t6, $zero
branch_0x801f715c:
    or      $a1, $zero, $zero
branch_0x801f7160:
    negu    $t8, $zero
    andi    $t7, $t8, 0xffff
    subu    $t6, $zero, $a1
    sll     $t8, $t6, 16
    or      $t9, $t7, $t8
    sw      $t9, 0x4($a2)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xb200
    sw      $t8, 0x0($t6)
    sw      $t9, 0x4($t6)
branch_0x801f7198:
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x103
    addiu   $t9, $t9, 0xe3d8
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xfd18
    sw      $t8, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xf518
    sw      $t8, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0xe600
    ori     $t3, $t3, 0xf156
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t8, 0x0($t6)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0xf300
    lui     $ra, 0x2
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $t3, 0x4($t9)
    sw      $t7, 0x0($t9)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0xe700
    ori     $ra, $ra, 0xc02c
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0x8
    lui     $t9, 0xf518
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    ori     $t9, $t9, 0x600
    ori     $t6, $t6, 0x200
    sw      $t6, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0xf200
    lui     $t2, 0x800d
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $ra, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t2, 0x7ef4($t2)
    lui     $a0, 0x800e
    slti    $at, $t2, 0x1d
    bnez    $at, branch_0x801f7284
    nop
    addiu   $t2, $zero, 0x1c
branch_0x801f7284:
    lw      $a0, -0x5758($a0)
    blez    $a0, branch_0x801f7410
branch_0x801f728c:
    addiu   $at, $zero, 0x1
    bne     $a0, $at, branch_0x801f72ac
    or      $t0, $zero, $zero
    lui     $s0, 0x8023
    lw      $s0, -0x76ec($s0)
    addiu   $s3, $zero, 0xcd
    b       branch_0x801f72c8
    addiu   $s0, $s0, 0x38
branch_0x801f72ac:
    lw      $t6, 0x6fc($sp)
    addiu   $s0, $zero, 0x18
    addiu   $s3, $zero, 0xd6
    bnez    $t6, branch_0x801f72c8
    nop
    b       branch_0x801f72c8
    addiu   $s3, $zero, 0x68
branch_0x801f72c8:
    blez    $t2, branch_0x801f73f8
    sll     $t4, $s3, 2
    addiu   $t1, $s3, 0xc
    sll     $t5, $t4, 10
    sra     $t8, $t5, 7
    sll     $t7, $t1, 2
    or      $t1, $t7, $zero
    or      $t5, $t8, $zero
branch_0x801f72e8:
    lw      $a3, 0x6c4($sp)
    addiu   $v0, $s0, 0xc
    sll     $t7, $v0, 2
    addiu   $t6, $a3, 0x8
    blez    $t7, branch_0x801f7308
    sw      $t6, 0x6c4($sp)
    b       branch_0x801f730c
    or      $a1, $t7, $zero
branch_0x801f7308:
    or      $a1, $zero, $zero
branch_0x801f730c:
    blez    $t1, branch_0x801f731c
    lui     $at, 0xe400
    b       branch_0x801f7320
    or      $v1, $t1, $zero
branch_0x801f731c:
    or      $v1, $zero, $zero
branch_0x801f7320:
    andi    $t8, $v1, 0xfff
    andi    $t6, $a1, 0xfff
    sll     $t7, $t6, 12
    or      $t9, $t8, $at
    or      $t8, $t9, $t7
    sll     $a0, $s0, 2
    blez    $a0, branch_0x801f7348
    sw      $t8, 0x0($a3)
    b       branch_0x801f734c
    or      $a1, $a0, $zero
branch_0x801f7348:
    or      $a1, $zero, $zero
branch_0x801f734c:
    blez    $t4, branch_0x801f735c
    andi    $t9, $a1, 0xfff
    b       branch_0x801f7360
    or      $v1, $t4, $zero
branch_0x801f735c:
    or      $v1, $zero, $zero
branch_0x801f7360:
    andi    $t6, $v1, 0xfff
    sll     $t7, $t9, 12
    or      $t8, $t6, $t7
    sw      $t8, 0x4($a3)
    lw      $a2, 0x6c4($sp)
    sll     $v0, $a0, 10
    sra     $t8, $v0, 7
    addiu   $t6, $a2, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t7, 0xb300
    bgez    $t8, branch_0x801f7398
    sw      $t7, 0x0($a2)
    b       branch_0x801f739c
    or      $a1, $t8, $zero
branch_0x801f7398:
    or      $a1, $zero, $zero
branch_0x801f739c:
    bgez    $t5, branch_0x801f73ac
    subu    $t8, $zero, $a1
    b       branch_0x801f73b0
    or      $v1, $t5, $zero
branch_0x801f73ac:
    or      $v1, $zero, $zero
branch_0x801f73b0:
    subu    $t9, $zero, $v1
    andi    $t6, $t9, 0xffff
    sll     $t9, $t8, 16
    or      $t7, $t6, $t9
    sw      $t7, 0x4($a2)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x400
    addiu   $t0, $t0, 0x1
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    ori     $t7, $t7, 0x400
    lui     $t9, 0xb200
    addiu   $s0, $s0, 0xe
    sw      $t9, 0x0($t8)
    bne     $t0, $t2, branch_0x801f72e8
    sw      $t7, 0x4($t8)
    lui     $a0, 0x800e
    lw      $a0, -0x5758($a0)
branch_0x801f73f8:
    lw      $t8, 0x6fc($sp)
    addiu   $t6, $t8, 0x1
    slt     $at, $t6, $a0
    bnez    $at, branch_0x801f728c
    sw      $t6, 0x6fc($sp)
    sw      $zero, 0x6fc($sp)
branch_0x801f7410:
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0x103
    addiu   $t6, $t6, 0xe620
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xfd18
    sw      $t8, 0x0($t9)
    sw      $t6, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xf518
    sw      $t8, 0x0($t9)
    sw      $t6, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe600
    lui     $a0, 0x800e
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $a1, 0x6c4($sp)
    lui     $t7, 0xf300
    addiu   $t9, $a1, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $t3, 0x4($a1)
    sw      $t7, 0x0($a1)
    lw      $a2, 0x6c4($sp)
    lui     $t9, 0xe700
    lui     $t3, 0x8023
    addiu   $t6, $a2, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($a2)
    sw      $t9, 0x0($a2)
    lw      $v0, 0x6c4($sp)
    lui     $t9, 0x8
    lui     $t6, 0xf518
    addiu   $t8, $v0, 0x8
    sw      $t8, 0x6c4($sp)
    ori     $t6, $t6, 0x600
    ori     $t9, $t9, 0x200
    sw      $t9, 0x4($v0)
    sw      $t6, 0x0($v0)
    lw      $v1, 0x6c4($sp)
    lui     $t6, 0xf200
    addiu   $t3, $t3, 0x89f0
    addiu   $t8, $v1, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $ra, 0x4($v1)
    sw      $t6, 0x0($v1)
    lw      $a0, -0x5758($a0)
    blez    $a0, branch_0x801f7718
    nop
    addiu   $ra, $zero, 0xe
    addiu   $v1, $zero, 0x1
branch_0x801f74f4:
    bne     $v1, $a0, branch_0x801f7538
    lw      $t8, 0x6fc($sp)
    lui     $t9, 0x800d
    lw      $t9, 0x465c($t9)
    lui     $s0, 0x8023
    lw      $s0, -0x76ec($s0)
    sll     $t7, $t9, 3
    subu    $t7, $t7, $t9
    sll     $t7, $t7, 4
    subu    $t7, $t7, $t9
    sll     $t7, $t7, 3
    lui     $s1, %hi(Unknown_0x801c27cc)
    addu    $s1, $s1, $t7
    addiu   $s3, $zero, 0xcd
    lw      $s1, %lo(Unknown_0x801c27cc)($s1)
    b       branch_0x801f759c
    addiu   $s0, $s0, 0x38
branch_0x801f7538:
    bnez    $t8, branch_0x801f7570
    addiu   $s0, $zero, 0x18
    lui     $t6, 0x800d
    lw      $t6, 0x465c($t6)
    lui     $s1, %hi(Unknown_0x801c27cc)
    addiu   $s3, $zero, 0x68
    sll     $t9, $t6, 3
    subu    $t9, $t9, $t6
    sll     $t9, $t9, 4
    subu    $t9, $t9, $t6
    sll     $t9, $t9, 3
    addu    $s1, $s1, $t9
    b       branch_0x801f759c
    lw      $s1, %lo(Unknown_0x801c27cc)($s1)
branch_0x801f7570:
    lui     $t7, 0x800d
    lw      $t7, 0x4660($t7)
    lui     $s1, %hi(Unknown_0x801c27cc)
    addiu   $s3, $zero, 0xd6
    sll     $t8, $t7, 3
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 4
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 3
    addu    $s1, $s1, $t8
    lw      $s1, %lo(Unknown_0x801c27cc)($s1)
branch_0x801f759c:
    lw      $t6, 0x18($t3)
    sll     $t4, $s3, 2
    sll     $t5, $t4, 10
    bne     $v1, $t6, branch_0x801f75b4
    sra     $t8, $t5, 7
    addiu   $s1, $s1, 0xffff
branch_0x801f75b4:
    subu    $t1, $t2, $s1
    bgez    $t1, branch_0x801f75c4
    or      $t5, $t8, $zero
    or      $t1, $zero, $zero
branch_0x801f75c4:
    multu   $t1, $ra
    or      $t0, $t1, $zero
    slt     $at, $t1, $t2
    addiu   $t1, $s3, 0xc
    sll     $t7, $t1, 2
    or      $t1, $t7, $zero
    mflo    $t9
    addu    $s0, $s0, $t9
    beqzl   $at, branch_0x801f7704
    lw      $v0, 0x6fc($sp)
branch_0x801f75ec:
    lw      $a3, 0x6c4($sp)
    addiu   $v0, $s0, 0xc
    sll     $t7, $v0, 2
    addiu   $t9, $a3, 0x8
    blez    $t7, branch_0x801f760c
    sw      $t9, 0x6c4($sp)
    b       branch_0x801f7610
    or      $a1, $t7, $zero
branch_0x801f760c:
    or      $a1, $zero, $zero
branch_0x801f7610:
    blez    $t1, branch_0x801f7620
    lui     $at, 0xe400
    b       branch_0x801f7624
    or      $v1, $t1, $zero
branch_0x801f7620:
    or      $v1, $zero, $zero
branch_0x801f7624:
    andi    $t8, $v1, 0xfff
    andi    $t9, $a1, 0xfff
    sll     $t7, $t9, 12
    or      $t6, $t8, $at
    or      $t8, $t6, $t7
    sll     $a0, $s0, 2
    blez    $a0, branch_0x801f764c
    sw      $t8, 0x0($a3)
    b       branch_0x801f7650
    or      $a1, $a0, $zero
branch_0x801f764c:
    or      $a1, $zero, $zero
branch_0x801f7650:
    blez    $t4, branch_0x801f7660
    andi    $t6, $a1, 0xfff
    b       branch_0x801f7664
    or      $v1, $t4, $zero
branch_0x801f7660:
    or      $v1, $zero, $zero
branch_0x801f7664:
    andi    $t9, $v1, 0xfff
    sll     $t7, $t6, 12
    or      $t8, $t9, $t7
    sw      $t8, 0x4($a3)
    lw      $a2, 0x6c4($sp)
    sll     $v0, $a0, 10
    sra     $t8, $v0, 7
    addiu   $t9, $a2, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t7, 0xb300
    bgez    $t8, branch_0x801f769c
    sw      $t7, 0x0($a2)
    b       branch_0x801f76a0
    or      $a1, $t8, $zero
branch_0x801f769c:
    or      $a1, $zero, $zero
branch_0x801f76a0:
    bgez    $t5, branch_0x801f76b0
    subu    $t8, $zero, $a1
    b       branch_0x801f76b4
    or      $v1, $t5, $zero
branch_0x801f76b0:
    or      $v1, $zero, $zero
branch_0x801f76b4:
    subu    $t6, $zero, $v1
    andi    $t9, $t6, 0xffff
    sll     $t6, $t8, 16
    or      $t7, $t9, $t6
    sw      $t7, 0x4($a2)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x400
    addiu   $t0, $t0, 0x1
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t7, $t7, 0x400
    lui     $t6, 0xb200
    addiu   $s0, $s0, 0xe
    sw      $t6, 0x0($t8)
    bne     $t0, $t2, branch_0x801f75ec
    sw      $t7, 0x4($t8)
    lui     $a0, 0x800e
    lw      $a0, -0x5758($a0)
    addiu   $v1, $zero, 0x1
    lw      $v0, 0x6fc($sp)
branch_0x801f7704:
    addiu   $t3, $t3, 0x54
    addiu   $v0, $v0, 0x1
    slt     $at, $v0, $a0
    bnez    $at, branch_0x801f74f4
    sw      $v0, 0x6fc($sp)
branch_0x801f7718:
    lui     $t8, 0x800d
    lw      $t8, 0x7ef0($t8)
    beqz    $t8, branch_0x801f7c78
    lui     $t9, 0x801d
    lw      $t9, -0x1c80($t9)
    addiu   $at, $zero, 0xb
    lui     $a0, 0x800e
    beq     $t9, $at, branch_0x801f7c78
    nop
    lw      $a0, -0x5758($a0)
    addiu   $at, $zero, 0x1
    sw      $zero, 0x6fc($sp)
    bne     $a0, $at, branch_0x801f790c
    lw      $t6, 0x6c4($sp)
    lui     $s0, 0x8023
    addiu   $t7, $t6, 0x8
    lw      $s0, -0x76ec($s0)
    sw      $t7, 0x6c4($sp)
    lui     $t9, 0x103
    addiu   $t9, $t9, 0xe868
    lui     $t8, 0xfd18
    sw      $t8, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xf518
    sw      $t8, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0xe600
    addiu   $s0, $s0, 0x94
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t8, 0x0($t6)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0x717
    ori     $t8, $t8, 0xf080
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t7, 0xf300
    sw      $t7, 0x0($t9)
    sw      $t8, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0xe700
    addiu   $a0, $s0, 0x20
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t7, 0x0($t9)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x8
    lui     $t6, 0xf518
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t6, $t6, 0x1000
    ori     $t7, $t7, 0x200
    sw      $t7, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x7
    ori     $t7, $t7, 0xc02c
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xf200
    sw      $t6, 0x0($t8)
    sw      $t7, 0x4($t8)
    lw      $a3, 0x6c4($sp)
    sll     $t6, $a0, 2
    addiu   $v1, $zero, 0x364
    addiu   $t9, $a3, 0x8
    blez    $t6, branch_0x801f7850
    sw      $t9, 0x6c4($sp)
    b       branch_0x801f7854
    or      $a1, $t6, $zero
branch_0x801f7850:
    or      $a1, $zero, $zero
branch_0x801f7854:
    andi    $t7, $v1, 0xfff
    lui     $at, 0xe400
    andi    $t9, $a1, 0xfff
    sll     $t6, $t9, 12
    or      $t8, $t7, $at
    or      $t7, $t8, $t6
    sll     $a0, $s0, 2
    blez    $a0, branch_0x801f7880
    sw      $t7, 0x0($a3)
    b       branch_0x801f7884
    or      $a1, $a0, $zero
branch_0x801f7880:
    or      $a1, $zero, $zero
branch_0x801f7884:
    addiu   $v1, $zero, 0x334
    andi    $t8, $a1, 0xfff
    sll     $t6, $t8, 12
    andi    $t9, $v1, 0xfff
    or      $t7, $t9, $t6
    sw      $t7, 0x4($a3)
    lw      $a2, 0x6c4($sp)
    sll     $v0, $a0, 10
    sra     $t7, $v0, 7
    addiu   $t9, $a2, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t6, 0xb300
    bgez    $t7, branch_0x801f78c4
    sw      $t6, 0x0($a2)
    b       branch_0x801f78c8
    or      $a1, $t7, $zero
branch_0x801f78c4:
    or      $a1, $zero, $zero
branch_0x801f78c8:
    negu    $t8, $zero
    andi    $t9, $t8, 0xffff
    subu    $t7, $zero, $a1
    sll     $t8, $t7, 16
    or      $t6, $t9, $t8
    sw      $t6, 0x4($a2)
    lw      $v0, 0x6c4($sp)
    lui     $t6, 0x400
    ori     $t6, $t6, 0x400
    addiu   $t9, $v0, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t8, 0xb200
    lui     $a0, 0x800e
    sw      $t8, 0x0($v0)
    sw      $t6, 0x4($v0)
    lw      $a0, -0x5758($a0)
    or      $v1, $zero, $zero
branch_0x801f790c:
    blez    $a0, branch_0x801f7c78
    nop
    lui     $fp, 0xf518
    lui     $s7, 0x709
    lui     $s5, 0x103
    lui     $s4, 0x800d
    addiu   $s4, $s4, 0x4880
    addiu   $s5, $s5, 0xee70
    ori     $s7, $s7, 0xf0cd
    ori     $fp, $fp, 0xa00
    addiu   $s6, $zero, 0xa0
    addiu   $s2, $zero, 0x6
    addiu   $at, $zero, 0x1
branch_0x801f7940:
    bne     $a0, $at, branch_0x801f7984
    or      $t1, $zero, $zero
    lui     $t7, 0x800d
    lw      $t7, 0x465c($t7)
    lui     $s0, 0x8023
    lw      $s0, -0x76ec($s0)
    sll     $t9, $t7, 3
    subu    $t9, $t9, $t7
    sll     $t9, $t9, 4
    subu    $t9, $t9, $t7
    sll     $t9, $t9, 3
    lui     $s1, 0x801c
    addu    $s1, $s1, $t9
    addiu   $s3, $zero, 0xcf
    lw      $s1, 0x27d0($s1)
    b       branch_0x801f79f0
    addiu   $s0, $s0, 0xbc
branch_0x801f7984:
    lw      $t8, 0x6fc($sp)
    addiu   $s3, $zero, 0x6a
    addiu   $s0, $zero, 0xbc
    bnez    $t8, branch_0x801f79c8
    lui     $t9, 0x800d
    lui     $t6, 0x800d
    lw      $t6, 0x465c($t6)
    lui     $s1, 0x801c
    addiu   $s0, $zero, 0xbc
    sll     $t7, $t6, 3
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 4
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 3
    addu    $s1, $s1, $t7
    b       branch_0x801f79f0
    lw      $s1, 0x27d0($s1)
branch_0x801f79c8:
    lw      $t9, 0x4660($t9)
    lui     $s1, 0x801c
    addiu   $s3, $zero, 0xd8
    sll     $t8, $t9, 3
    subu    $t8, $t8, $t9
    sll     $t8, $t8, 4
    subu    $t8, $t8, $t9
    sll     $t8, $t8, 3
    addu    $s1, $s1, $t8
    lw      $s1, 0x27d0($s1)
branch_0x801f79f0:
    sll     $t4, $s3, 2
    sll     $t5, $t4, 10
    addiu   $ra, $s3, 0x8
    sll     $t7, $ra, 2
    sra     $t6, $t5, 7
    or      $t5, $t6, $zero
    or      $ra, $t7, $zero
    or      $t2, $zero, $zero
branch_0x801f7a10:
    addiu   $t3, $t1, 0x1
    bne     $s1, $t3, branch_0x801f7a60
    or      $a1, $zero, $zero
    lw      $t9, 0x0($s4)
    div     $zero, $t9, $s2
    bnez    $s2, branch_0x801f7a30
    nop
    break   0x7
branch_0x801f7a30:
    addiu   $at, $zero, 0xffff
    bne     $s2, $at, branch_0x801f7a48
    lui     $at, 0x8000
    bne     $t9, $at, branch_0x801f7a48
    nop
    break   0x6
branch_0x801f7a48:
    mfhi    $t0
    slti    $at, $t0, 0x4
    bnezl   $at, branch_0x801f7a78
    addu    $t0, $t0, $t2
    b       branch_0x801f7a74
    subu    $t0, $s2, $t0
branch_0x801f7a60:
    slt     $at, $t1, $s1
    beqz    $at, branch_0x801f7a74
    or      $t0, $zero, $zero
    b       branch_0x801f7a74
    addiu   $t0, $zero, 0x3
branch_0x801f7a74:
    addu    $t0, $t0, $t2
branch_0x801f7a78:
    multu   $t0, $s6
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0xfd18
    addiu   $a0, $s0, 0x14
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $t7, 0x0($t8)
    or      $v0, $t8, $zero
    addiu   $t2, $t2, 0x4
    or      $t1, $t3, $zero
    mflo    $t9
    sll     $t8, $t9, 2
    addu    $t6, $s5, $t8
    sw      $t6, 0x4($v0)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t8, 0xf518
    sw      $t8, 0x0($t7)
    sw      $t6, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0xe600
    lui     $at, 0xe400
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t8, 0x0($t7)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0xf300
    or      $v1, $zero, $zero
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $s7, 0x4($t6)
    sw      $t9, 0x0($t6)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0xe700
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t7, 0x0($t8)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0x8
    ori     $t6, $t6, 0x200
    addiu   $t8, $t9, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $t6, 0x4($t9)
    sw      $fp, 0x0($t9)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0x4
    ori     $t6, $t6, 0xc01c
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t8, 0xf200
    sw      $t8, 0x0($t7)
    sw      $t6, 0x4($t7)
    lw      $a3, 0x6c4($sp)
    sll     $t8, $a0, 2
    sll     $a0, $s0, 2
    addiu   $t9, $a3, 0x8
    blez    $t8, branch_0x801f7b7c
    sw      $t9, 0x6c4($sp)
    b       branch_0x801f7b7c
    or      $a1, $t8, $zero
branch_0x801f7b7c:
    blez    $ra, branch_0x801f7b8c
    andi    $t9, $a1, 0xfff
    b       branch_0x801f7b8c
    or      $v1, $ra, $zero
branch_0x801f7b8c:
    andi    $t6, $v1, 0xfff
    or      $t7, $t6, $at
    sll     $t8, $t9, 12
    or      $t6, $t7, $t8
    blez    $a0, branch_0x801f7bac
    sw      $t6, 0x0($a3)
    b       branch_0x801f7bb0
    or      $a1, $a0, $zero
branch_0x801f7bac:
    or      $a1, $zero, $zero
branch_0x801f7bb0:
    blez    $t4, branch_0x801f7bc0
    andi    $t7, $a1, 0xfff
    b       branch_0x801f7bc4
    or      $v1, $t4, $zero
branch_0x801f7bc0:
    or      $v1, $zero, $zero
branch_0x801f7bc4:
    andi    $t9, $v1, 0xfff
    sll     $t8, $t7, 12
    or      $t6, $t9, $t8
    sw      $t6, 0x4($a3)
    lw      $a2, 0x6c4($sp)
    sll     $v0, $a0, 10
    sra     $t6, $v0, 7
    addiu   $t9, $a2, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t8, 0xb300
    bgez    $t6, branch_0x801f7bfc
    sw      $t8, 0x0($a2)
    b       branch_0x801f7c00
    or      $a1, $t6, $zero
branch_0x801f7bfc:
    or      $a1, $zero, $zero
branch_0x801f7c00:
    bgez    $t5, branch_0x801f7c10
    subu    $t6, $zero, $a1
    b       branch_0x801f7c14
    or      $v1, $t5, $zero
branch_0x801f7c10:
    or      $v1, $zero, $zero
branch_0x801f7c14:
    subu    $t7, $zero, $v1
    andi    $t9, $t7, 0xffff
    sll     $t7, $t6, 16
    or      $t8, $t9, $t7
    sw      $t8, 0x4($a2)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0x400
    addiu   $at, $zero, 0x5
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t8, $t8, 0x400
    lui     $t7, 0xb200
    addiu   $s0, $s0, 0x16
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    bne     $t3, $at, branch_0x801f7a10
    or      $v0, $t6, $zero
    lw      $t6, 0x6fc($sp)
    lui     $a0, 0x800e
    lw      $a0, -0x5758($a0)
    addiu   $t9, $t6, 0x1
    sw      $t9, 0x6fc($sp)
    slt     $at, $t9, $a0
    bnezl   $at, branch_0x801f7940
    addiu   $at, $zero, 0x1
branch_0x801f7c78:
    lui     $v1, 0x801d
    lw      $v1, -0x1c80($v1)
    addiu   $at, $zero, 0xb
    bnel    $v1, $at, branch_0x801f7f9c
    addiu   $at, $zero, 0xb
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0x802
    addiu   $t9, $t9, 0x4008
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t6, 0xfd18
    sw      $t6, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t6, 0xf518
    sw      $t6, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xe600
    lui     $s1, 0x801c
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0x71a
    ori     $t6, $t6, 0xf072
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xf300
    sw      $t8, 0x0($t9)
    sw      $t6, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe700
    lui     $at, 0x1
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0x8
    lui     $t7, 0xf518
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t7, $t7, 0x1200
    ori     $t8, $t8, 0x200
    sw      $t8, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0x8
    ori     $t8, $t8, 0xc02c
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t7, 0xf200
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0xb
    lui     $t7, 0xe414
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t7, $t7, 0x4088
    ori     $t8, $t8, 0x4058
    sw      $t8, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xb300
    ori     $at, $at, 0x86a0
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x400
    ori     $t7, $t7, 0x400
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t9, 0xb200
    sw      $t9, 0x0($t8)
    sw      $t7, 0x4($t8)
    lw      $s1, 0x2430($s1)
    lui     $v0, 0x8023
    addiu   $s0, $zero, 0x1c
    slt     $at, $s1, $at
    bnez    $at, branch_0x801f7de8
    addiu   $v0, $v0, 0x8abc
    lui     $s1, 0x1
    ori     $s1, $s1, 0x869f
branch_0x801f7de8:
    lui     $v1, 0x8023
    addiu   $v1, $v1, 0x8ab7
    addiu   $at, $zero, 0xa
branch_0x801f7df4:
    div     $zero, $s1, $at
    addiu   $v0, $v0, 0xffff
    sltu    $at, $v1, $v0
    mfhi    $t8
    mflo    $s1
    sb      $t8, 0x1($v0)
    bnezl   $at, branch_0x801f7df4
    addiu   $at, $zero, 0xa
    lui     $a2, 0x8023
    lui     $t1, 0x8023
    lui     $t0, 0x802
    addiu   $t0, $t0, 0x4bc8
    addiu   $t1, $t1, 0x8abd
    addiu   $a2, $a2, 0x8ab8
branch_0x801f7e2c:
    lw      $v0, 0x6c4($sp)
    lui     $t8, 0xfd18
    lui     $at, 0xe400
    addiu   $t7, $v0, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $t8, 0x0($v0)
    lb      $t6, 0x0($a2)
    addiu   $a2, $a2, 0x1
    sll     $t9, $t6, 2
    subu    $t9, $t9, $t6
    sll     $t7, $t9, 8
    addu    $t8, $t7, $t0
    sw      $t8, 0x4($v0)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0x708
    ori     $t8, $t8, 0x200
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t7, 0xf518
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xe600
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x70b
    ori     $t7, $t7, 0xf156
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t9, 0xf300
    sw      $t9, 0x0($t8)
    sw      $t7, 0x4($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xe700
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0x8
    lui     $t6, 0xf518
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    ori     $t6, $t6, 0x600
    ori     $t9, $t9, 0x200
    sw      $t9, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0x2
    ori     $t9, $t9, 0xc03c
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t6, 0xf200
    sw      $t6, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $a0, 0x6c4($sp)
    addiu   $t6, $s0, 0xc
    sll     $t9, $t6, 2
    addiu   $t8, $a0, 0x8
    sw      $t8, 0x6c4($sp)
    andi    $t7, $t9, 0xfff
    sll     $t8, $t7, 12
    or      $t6, $t8, $at
    ori     $t9, $t6, 0xd8
    sll     $t7, $s0, 2
    andi    $t8, $t7, 0xfff
    sll     $t6, $t8, 12
    sw      $t9, 0x0($a0)
    ori     $t9, $t6, 0x98
    sw      $t9, 0x4($a0)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xb300
    addiu   $s0, $s0, 0xe
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0x400
    ori     $t6, $t6, 0x400
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xb200
    sw      $t8, 0x0($t9)
    bne     $a2, $t1, branch_0x801f7e2c
    sw      $t6, 0x4($t9)
    lui     $v1, 0x801d
    lw      $v1, -0x1c80($v1)
    addiu   $at, $zero, 0xb
branch_0x801f7f9c:
    bne     $v1, $at, branch_0x801f89c8
    nop
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0x103
    lui     $t0, 0xfd18
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    addiu   $t8, $t8, 0x2500
    sw      $t8, 0x4($t9)
    sw      $t0, 0x0($t9)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0x708
    lui     $a3, 0xf518
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t7, $t7, 0x200
    sw      $t7, 0x4($t6)
    sw      $a3, 0x0($t6)
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xe600
    lui     $t5, 0x8
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0x717
    ori     $t9, $t9, 0xf080
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t6, 0xf300
    sw      $t6, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xe700
    ori     $t5, $t5, 0x200
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xf518
    ori     $t8, $t8, 0x1000
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $t5, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0x7
    ori     $t7, $t7, 0xc02c
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t4, 0xf200
    sw      $t4, 0x0($t6)
    sw      $t7, 0x4($t6)
    lw      $t8, 0x6c4($sp)
    or      $v1, $t6, $zero
    lui     $t7, 0x23
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t9, 0xe42b
    ori     $t9, $t9, 0x4088
    ori     $t7, $t7, 0x4058
    sw      $t7, 0x4($t8)
    sw      $t9, 0x0($t8)
    or      $a0, $t8, $zero
    lw      $t8, 0x6c4($sp)
    lui     $t3, 0xb300
    lui     $s1, 0x801c
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t3, 0x0($t8)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0x400
    or      $a1, $t8, $zero
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xb200
    ori     $t6, $t6, 0x400
    sw      $t6, 0x4($t9)
    sw      $t8, 0x0($t9)
    or      $a2, $t9, $zero
    lui     $t9, 0x800d
    lw      $t9, 0x465c($t9)
    addiu   $t1, $zero, 0x3e8
    lw      $t8, 0x6c4($sp)
    sll     $t7, $t9, 3
    subu    $t7, $t7, $t9
    sll     $t7, $t7, 4
    subu    $t7, $t7, $t9
    sll     $t7, $t7, 3
    addu    $s1, $s1, $t7
    lw      $s1, 0x295c($s1)
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    div     $zero, $s1, $t1
    mfhi    $t2
    lui     $t6, 0x104
    sw      $t0, 0x0($t8)
    or      $v0, $t8, $zero
    bnez    $t1, branch_0x801f813c
    nop
    break   0x7
branch_0x801f813c:
    addiu   $at, $zero, 0xffff
    bne     $t1, $at, branch_0x801f8154
    lui     $at, 0x8000
    bne     $s1, $at, branch_0x801f8154
    nop
    break   0x6
branch_0x801f8154:
    addiu   $at, $zero, 0x64
    div     $zero, $t2, $at
    mflo    $t9
    sll     $t7, $t9, 2
    subu    $t7, $t7, $t9
    sll     $t8, $t7, 8
    addiu   $t6, $t6, 0xb4d0
    addu    $t9, $t8, $t6
    sw      $t9, 0x4($v0)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $t6, 0x4($t7)
    sw      $a3, 0x0($t7)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe600
    div     $zero, $s1, $t1
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0x70b
    ori     $t8, $t8, 0xf156
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t7, 0xf300
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xe700
    mflo    $t0
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xf518
    ori     $t9, $t9, 0x600
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $t5, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0x2
    ori     $t6, $t6, 0xc03c
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $t6, 0x4($t7)
    sw      $t4, 0x0($t7)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0x2a
    lui     $t8, 0xe42d
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    ori     $t8, $t8, 0x80d8
    ori     $t6, $t6, 0x8098
    sw      $t6, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t4, 0xb200
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t3, 0x0($t9)
    lw      $t8, 0x6c4($sp)
    lui     $t3, 0x400
    ori     $t3, $t3, 0x400
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $t3, 0x4($t8)
    sw      $t4, 0x0($t8)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0x104
    addiu   $t6, $t6, 0xd5d0
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xfd18
    sw      $t8, 0x0($t9)
    sw      $t6, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xf518
    sw      $t8, 0x0($t9)
    sw      $t6, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe600
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0x70b
    ori     $t8, $t8, 0xf156
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t7, 0xf300
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xe700
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t8, 0x6c4($sp)
    or      $a2, $t6, $zero
    lui     $t9, 0xf518
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    ori     $t9, $t9, 0x600
    sw      $t9, 0x0($t8)
    sw      $t5, 0x4($t8)
    or      $v0, $t8, $zero
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x2
    ori     $t7, $t7, 0xc03c
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t9, 0xf200
    sw      $t9, 0x0($t8)
    sw      $t7, 0x4($t8)
    or      $v1, $t8, $zero
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x28
    lui     $t9, 0xe42b
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    ori     $t9, $t9, 0x80cc
    ori     $t7, $t7, 0x808c
    sw      $t7, 0x4($t8)
    sw      $t9, 0x0($t8)
    or      $a0, $t8, $zero
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xb300
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t7, 0x6c4($sp)
    or      $a1, $t8, $zero
    lui     $t6, 0x800d
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $t3, 0x4($t7)
    sw      $t4, 0x0($t7)
    or      $a3, $t7, $zero
    bnez    $t1, branch_0x801f83c0
    nop
    break   0x7
branch_0x801f83c0:
    addiu   $at, $zero, 0xffff
    bne     $t1, $at, branch_0x801f83d8
    lui     $at, 0x8000
    bne     $s1, $at, branch_0x801f83d8
    nop
    break   0x6
branch_0x801f83d8:
    slti    $at, $t0, 0x6
    beqzl   $at, branch_0x801f842c
    slti    $at, $t0, 0xa
    lw      $t6, 0x465c($t6)
    lui     $t7, 0x801c
    addiu   $t7, $t7, 0x2698
    sll     $t9, $t6, 3
    subu    $t9, $t9, $t6
    sll     $t9, $t9, 4
    subu    $t9, $t9, $t6
    sll     $t9, $t9, 3
    addu    $v0, $t9, $t7
    lw      $t8, 0x2f4($v0)
    bnezl   $t8, branch_0x801f842c
    slti    $at, $t0, 0xa
    lw      $t6, 0x2ec($v0)
    addiu   $t1, $t2, 0xfd44
    addiu   $at, $zero, 0x12c
    beqz    $t6, branch_0x801f86ec
    addiu   $t9, $zero, 0x20
    slti    $at, $t0, 0xa
branch_0x801f842c:
    bnez    $at, branch_0x801f857c
    lw      $v0, 0x6c4($sp)
    addiu   $at, $zero, 0xa
    div     $zero, $t0, $at
    addiu   $t7, $v0, 0x8
    sw      $t7, 0x6c4($sp)
    mflo    $t6
    lui     $t8, 0xfd18
    sw      $t8, 0x0($v0)
    sll     $t9, $t6, 2
    addu    $t9, $t9, $t6
    lui     $t8, 0x802
    addiu   $t8, $t8, 0x73d8
    sll     $t7, $t9, 8
    addu    $t6, $t7, $t8
    sw      $t6, 0x4($v0)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xf518
    sw      $t8, 0x0($t9)
    sw      $t6, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe600
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0x713
    ori     $t8, $t8, 0xf100
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t7, 0xf300
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xe700
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x8
    lui     $t9, 0xf518
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    ori     $t9, $t9, 0x800
    ori     $t7, $t7, 0x200
    sw      $t7, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x3
    ori     $t7, $t7, 0xc04c
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t9, 0xf200
    sw      $t9, 0x0($t8)
    sw      $t7, 0x4($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x21
    lui     $t9, 0xe425
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    ori     $t9, $t9, 0xe8
    ori     $t7, $t7, 0x98
    sw      $t7, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t8, 0x6c4($sp)
    lui     $t9, 0xb300
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t6, 0xb200
    sw      $t6, 0x0($t7)
    sw      $t9, 0x4($t7)
branch_0x801f857c:
    addiu   $at, $zero, 0xa
    div     $zero, $t0, $at
    lw      $v0, 0x6c4($sp)
    mfhi    $t9
    lui     $t6, 0xfd18
    addiu   $t8, $v0, 0x8
    sw      $t8, 0x6c4($sp)
    sll     $t7, $t9, 2
    sw      $t6, 0x0($v0)
    lui     $t6, 0x802
    addu    $t7, $t7, $t9
    sll     $t8, $t7, 8
    addiu   $t6, $t6, 0x73d8
    addu    $t9, $t8, $t6
    sw      $t9, 0x4($v0)
    lw      $t7, 0x6c4($sp)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t6, 0xf518
    sw      $t6, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xe600
    addiu   $s0, $zero, 0x94
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0x713
    ori     $t6, $t6, 0xf100
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t8, 0xf300
    sw      $t8, 0x0($t9)
    sw      $t6, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t8, 0xe700
    lui     $at, 0xe400
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0x8
    lui     $t7, 0xf518
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    ori     $t7, $t7, 0x800
    ori     $t8, $t8, 0x200
    sw      $t8, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0x3
    ori     $t8, $t8, 0xc04c
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t7, 0xf200
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $a0, 0x6c4($sp)
    addiu   $t7, $s0, 0x10
    sll     $t8, $t7, 2
    addiu   $t9, $a0, 0x8
    sw      $t9, 0x6c4($sp)
    andi    $t6, $t8, 0xfff
    sll     $t9, $t6, 12
    or      $t7, $t9, $at
    ori     $t8, $t7, 0xe8
    sll     $t6, $s0, 2
    andi    $t9, $t6, 0xfff
    sll     $t7, $t9, 12
    sw      $t8, 0x0($a0)
    ori     $t8, $t7, 0x98
    sw      $t8, 0x4($a0)
    lw      $t6, 0x6c4($sp)
    lui     $t7, 0xb300
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t8, 0x6c4($sp)
    lui     $t7, 0x400
    ori     $t7, $t7, 0x400
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t9, 0xb200
    sw      $t9, 0x0($t8)
    b       branch_0x801f89c8
    sw      $t7, 0x4($t8)
branch_0x801f86ec:
    bgez    $t1, branch_0x801f86f8
    addiu   $t7, $zero, 0x28
    or      $t1, $zero, $zero
branch_0x801f86f8:
    sll     $t8, $t1, 4
    div     $zero, $t8, $at
    mflo    $t1
    sll     $v0, $t1, 1
    subu    $t2, $t9, $v0
    blez    $t2, branch_0x801f89c8
    subu    $a3, $t7, $v0
    blez    $a3, branch_0x801f89c8
    lw      $t8, 0x6c4($sp)
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x6c4($sp)
    lui     $t9, 0xe700
    sw      $t9, 0x0($t8)
    sw      $zero, 0x4($t8)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xba00
    ori     $t6, $t6, 0xc02
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    addiu   $t9, $zero, 0x2000
    sw      $t9, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xfc12
    lui     $t9, 0xff37
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    ori     $t9, $t9, 0xffff
    ori     $t6, $t6, 0x9a25
    sw      $t6, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0xfb00
    lui     $t9, 0x8023
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $t6, 0x0($t7)
    lui     $t6, 0x8023
    or      $a1, $t7, $zero
    lw      $t7, -0x7794($t9)
    lw      $t6, -0x7790($t6)
    lui     $at, 0xe400
    sll     $t8, $t7, 24
    andi    $t9, $t6, 0xff
    sll     $t7, $t9, 16
    lui     $t9, 0x8023
    lw      $t9, -0x778c($t9)
    or      $t6, $t8, $t7
    andi    $t8, $t9, 0xff
    sll     $t7, $t8, 8
    or      $t9, $t6, $t7
    ori     $t8, $t9, 0xff
    sw      $t8, 0x4($a1)
    lw      $t6, 0x6c4($sp)
    lui     $t9, 0xfd70
    sll     $t8, $t0, 2
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $t9, 0x0($t6)
    or      $a2, $t6, $zero
    lui     $t6, 0x803
    addu    $t8, $t8, $t0
    sll     $t8, $t8, 8
    addiu   $t6, $t6, 0xa5e0
    addu    $t7, $t8, $t6
    sw      $t7, 0x4($a2)
    lw      $t9, 0x6c4($sp)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    addiu   $t8, $t9, 0x8
    sw      $t8, 0x6c4($sp)
    lui     $t6, 0xf570
    sw      $t6, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $t9, 0x6c4($sp)
    lui     $t6, 0xe600
    addiu   $t8, $t9, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $t6, 0x0($t9)
    sw      $zero, 0x4($t9)
    lw      $t7, 0x6c4($sp)
    lui     $t6, 0x727
    ori     $t6, $t6, 0xf200
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    lui     $t8, 0xf300
    sw      $t8, 0x0($t7)
    sw      $t6, 0x4($t7)
    lw      $t7, 0x6c4($sp)
    lui     $t8, 0xe700
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x6c4($sp)
    sw      $zero, 0x4($t7)
    sw      $t8, 0x0($t7)
    lw      $t6, 0x6c4($sp)
    or      $a1, $t7, $zero
    lui     $t8, 0x8
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t9, 0xf568
    ori     $t9, $t9, 0x800
    ori     $t8, $t8, 0x200
    sw      $t8, 0x4($t6)
    sw      $t9, 0x0($t6)
    or      $a2, $t6, $zero
    lw      $t6, 0x6c4($sp)
    lui     $t8, 0x7
    ori     $t8, $t8, 0xc09c
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x6c4($sp)
    lui     $t9, 0xf200
    sw      $t9, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $t6, 0x6c4($sp)
    addiu   $t9, $zero, 0xa4
    subu    $t8, $t9, $t1
    addiu   $t7, $t6, 0x8
    or      $v1, $t6, $zero
    sll     $t6, $t8, 2
    sw      $t7, 0x6c4($sp)
    andi    $t7, $t6, 0xfff
    sll     $t9, $t7, 12
    addiu   $t6, $zero, 0x4e
    subu    $t7, $t6, $t1
    or      $t8, $t9, $at
    sll     $t9, $t7, 2
    andi    $t6, $t9, 0xfff
    or      $t7, $t8, $t6
    addiu   $t9, $t1, 0x84
    sll     $t8, $t9, 2
    andi    $t6, $t8, 0xfff
    addiu   $t9, $t1, 0x26
    sw      $t7, 0x0($v1)
    sll     $t7, $t6, 12
    sll     $t8, $t9, 2
    andi    $t6, $t8, 0xfff
    or      $t9, $t7, $t6
    sw      $t9, 0x4($v1)
    lw      $t8, 0x6c4($sp)
    lui     $t6, 0xb300
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x6c4($sp)
    sw      $t6, 0x0($t8)
    ori     $t6, $zero, 0x8000
    div     $zero, $t6, $t2
    sw      $zero, 0x4($t8)
    lw      $t9, 0x6c4($sp)
    or      $a0, $t8, $zero
    lui     $t7, 0xb200
    addiu   $t8, $t9, 0x8
    sw      $t8, 0x6c4($sp)
    sw      $t7, 0x0($t9)
    or      $v0, $t9, $zero
    bnez    $t2, branch_0x801f8968
    nop
    break   0x7
branch_0x801f8968:
    addiu   $at, $zero, 0xffff
    bne     $t2, $at, branch_0x801f8980
    lui     $at, 0x8000
    bne     $t6, $at, branch_0x801f8980
    nop
    break   0x6
branch_0x801f8980:
    ori     $t6, $zero, 0xa000
    mflo    $t9
    or      $t8, $t9, $zero
    sll     $t7, $t8, 16
    div     $zero, $t6, $a3
    mflo    $t9
    andi    $t8, $t9, 0xffff
    bnez    $a3, branch_0x801f89a8
    nop
    break   0x7
branch_0x801f89a8:
    addiu   $at, $zero, 0xffff
    bne     $a3, $at, branch_0x801f89c0
    lui     $at, 0x8000
    bne     $t6, $at, branch_0x801f89c0
    nop
    break   0x6
branch_0x801f89c0:
    or      $t6, $t7, $t8
    sw      $t6, 0x4($v0)
branch_0x801f89c8:
    lui     $t9, 0x801d
    lw      $t9, -0x1c80($t9)
    bnez    $t9, branch_0x801f8b4c
    lui     $t7, 0x800d
    lw      $t7, 0x7ef0($t7)
    lw      $a0, 0x6c4($sp)
    addiu   $a1, $zero, 0x1
    beqz    $t7, branch_0x801f8b4c
    lui     $a2, 0x8022
    addiu   $t8, $zero, 0x16
    sw      $t8, 0x10($sp)
    addiu   $a2, $a2, 0x77a0
    addiu   $a3, $zero, 0xee
    sw      $zero, 0x14($sp)
    sw      $zero, 0x18($sp)
    sw      $zero, 0x1c($sp)
    sw      $zero, 0x20($sp)
    sw      $zero, 0x24($sp)
    sw      $zero, 0x28($sp)
    sw      $zero, 0x2c($sp)
    sw      $zero, 0x30($sp)
    sw      $zero, 0x34($sp)
    sw      $zero, 0x38($sp)
    sw      $zero, 0x3c($sp)
    sw      $zero, 0x40($sp)
    jal     Function_0x801e9084
    sw      $zero, 0x44($sp)
    addiu   $s3, $zero, 0x1f
    lui     $a2, 0x801c
    sw      $v0, 0x6c4($sp)
    lw      $a2, 0x1d44($a2)
    sw      $s3, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a3, $zero, 0xee
    sw      $zero, 0x14($sp)
    sw      $zero, 0x18($sp)
    sw      $zero, 0x1c($sp)
    sw      $zero, 0x20($sp)
    sw      $zero, 0x24($sp)
    sw      $zero, 0x28($sp)
    sw      $zero, 0x2c($sp)
    sw      $zero, 0x30($sp)
    sw      $zero, 0x34($sp)
    sw      $zero, 0x38($sp)
    sw      $zero, 0x3c($sp)
    sw      $zero, 0x40($sp)
    jal     Function_0x801e87e4
    sw      $zero, 0x44($sp)
    lui     $t6, 0x800e
    lh      $t6, -0x5718($t6)
    sw      $v0, 0x6c4($sp)
    addiu   $s3, $s3, 0xb
    bnez    $t6, branch_0x801f8b4c
    or      $a0, $v0, $zero
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x77ac
    addiu   $a1, $zero, 0x1
    addiu   $a3, $zero, 0xee
    sw      $s3, 0x10($sp)
    sw      $zero, 0x14($sp)
    sw      $zero, 0x18($sp)
    sw      $zero, 0x1c($sp)
    sw      $zero, 0x20($sp)
    sw      $zero, 0x24($sp)
    sw      $zero, 0x28($sp)
    sw      $zero, 0x2c($sp)
    sw      $zero, 0x30($sp)
    sw      $zero, 0x34($sp)
    sw      $zero, 0x38($sp)
    sw      $zero, 0x3c($sp)
    sw      $zero, 0x40($sp)
    jal     Function_0x801e9084
    sw      $zero, 0x44($sp)
    addiu   $s3, $s3, 0x9
    lui     $a2, 0x801c
    sw      $v0, 0x6c4($sp)
    lw      $a2, 0x1d48($a2)
    sw      $s3, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a3, $zero, 0xee
    sw      $zero, 0x14($sp)
    sw      $zero, 0x18($sp)
    sw      $zero, 0x1c($sp)
    sw      $zero, 0x20($sp)
    sw      $zero, 0x24($sp)
    sw      $zero, 0x28($sp)
    sw      $zero, 0x2c($sp)
    sw      $zero, 0x30($sp)
    sw      $zero, 0x34($sp)
    sw      $zero, 0x38($sp)
    sw      $zero, 0x3c($sp)
    sw      $zero, 0x40($sp)
    jal     Function_0x801e87e4
    sw      $zero, 0x44($sp)
    sw      $v0, 0x6c4($sp)
branch_0x801f8b4c:
    lw      $t9, 0x6c4($sp)
    lw      $t7, 0x700($sp)
    sw      $t9, 0x0($t7)
    lw      $ra, 0x74($sp)
    lw      $fp, 0x70($sp)
    lw      $s7, 0x6c($sp)
    lw      $s6, 0x68($sp)
    lw      $s5, 0x64($sp)
    lw      $s4, 0x60($sp)
    lw      $s3, 0x5c($sp)
    lw      $s2, 0x58($sp)
    lw      $s1, 0x54($sp)
    lw      $s0, 0x50($sp)
    jr      $ra
    addiu   $sp, $sp, 0x700

.globl Function_0x801f8b88
Function_0x801f8b88: # 0x801f8b88
    addiu   $sp, $sp, 0xffb0
    lui     $t2, 0x800e
    lw      $t2, -0x5758($t2)
    sw      $s2, 0x30($sp)
    sw      $ra, 0x4c($sp)
    sw      $fp, 0x48($sp)
    sw      $s7, 0x44($sp)
    sw      $s6, 0x40($sp)
    sw      $s5, 0x3c($sp)
    sw      $s4, 0x38($sp)
    sw      $s3, 0x34($sp)
    sw      $s1, 0x2c($sp)
    sw      $s0, 0x28($sp)
    sdc1    $22, 0x20($29)
    sdc1    $20, 0x18($29)
    blez    $t2, branch_0x801f8ed8
    or      $s2, $zero, $zero
    lui     $a1, 0x801a
    lui     $s7, 0x800d
    lui     $s3, 0x801c
    lui     $t4, 0x801a
    lui     $t3, 0x800d
    lui     $a3, 0x8023
    addiu   $a3, $a3, 0x8ae8
    addiu   $t3, $t3, 0x4660
    addiu   $t4, $t4, 0x8050
    addiu   $s3, $s3, 0x2698
    addiu   $s7, $s7, 0x465c
    lw      $a1, -0x7fb0($a1)
    addiu   $s4, $zero, 0x378
    addiu   $ra, $zero, 0x8
    addiu   $t5, $zero, 0x1
    addiu   $t1, $zero, 0x18
    addiu   $t0, $zero, 0x14
branch_0x801f8c10:
    blez    $a1, branch_0x801f8c70
    or      $s1, $zero, $zero
    sll     $t8, $a1, 3
    subu    $t8, $t8, $a1
    sll     $t8, $t8, 4
    sll     $t6, $s2, 2
    addu    $t6, $t6, $s2
    subu    $t8, $t8, $a1
    lui     $t7, 0x801c
    addiu   $v0, $t7, 0x2698
    sll     $t8, $t8, 3
    sll     $t6, $t6, 4
    addu    $s0, $a3, $t6
    addu    $v1, $t8, $v0
    lw      $t9, 0x4($v0)
branch_0x801f8c4c:
    addiu   $v0, $v0, 0x378
    sltu    $at, $v0, $v1
    multu   $t9, $t1
    addiu   $s0, $s0, 0x14
    mflo    $t6
    sw      $t6, -0x8($s0)
    bnezl   $at, branch_0x801f8c4c
    lw      $t9, 0x4($v0)
    or      $s1, $zero, $zero
branch_0x801f8c70:
    blez    $a1, branch_0x801f8d8c
    lui     $v0, 0x801c
    addiu   $v0, $v0, 0x2698
branch_0x801f8c7c:
    bne     $t5, $t2, branch_0x801f8cd4
    nop
    lw      $t8, 0x0($s7)
    multu   $t8, $s4
    lw      $t8, 0x4($v0)
    mflo    $t7
    addu    $t9, $s3, $t7
    lw      $t6, 0x4($t9)
    slt     $at, $t6, $t8
    beqzl   $at, branch_0x801f8d7c
    addiu   $s1, $s1, 0x1
    multu   $s1, $t0
    sll     $t7, $s2, 2
    addu    $t7, $t7, $s2
    sll     $t7, $t7, 4
    addu    $t9, $a3, $t7
    mflo    $t6
    addu    $s0, $t9, $t6
    lw      $t8, 0xc($s0)
    addiu   $t7, $t8, 0x4
    b       branch_0x801f8d78
    sw      $t7, 0xc($s0)
branch_0x801f8cd4:
    bnezl   $s2, branch_0x801f8d30
    lw      $t8, 0x0($t3)
    lw      $t9, 0x0($s7)
    multu   $t9, $s4
    lw      $t9, 0x4($v0)
    mflo    $t6
    addu    $t8, $s3, $t6
    lw      $t7, 0x4($t8)
    slt     $at, $t7, $t9
    beqzl   $at, branch_0x801f8d7c
    addiu   $s1, $s1, 0x1
    multu   $s1, $t0
    sll     $t6, $s2, 2
    addu    $t6, $t6, $s2
    sll     $t6, $t6, 4
    addu    $t8, $a3, $t6
    mflo    $t7
    addu    $s0, $t8, $t7
    lw      $t9, 0xc($s0)
    addiu   $t6, $t9, 0x4
    b       branch_0x801f8d78
    sw      $t6, 0xc($s0)

.globl Function_0x801f8d2c
Function_0x801f8d2c: # 0x801f8d2c
    lw      $t8, 0x0($t3)
branch_0x801f8d30:
    multu   $t8, $s4
    lw      $t8, 0x4($v0)
    mflo    $t7
    addu    $t9, $s3, $t7
    lw      $t6, 0x4($t9)
    slt     $at, $t6, $t8
    beqzl   $at, branch_0x801f8d7c
    addiu   $s1, $s1, 0x1
    multu   $s1, $t0
    sll     $t7, $s2, 2
    addu    $t7, $t7, $s2
    sll     $t7, $t7, 4
    addu    $t9, $a3, $t7
    mflo    $t6
    addu    $s0, $t9, $t6
    lw      $t8, 0xc($s0)
    addiu   $t7, $t8, 0x4
    sw      $t7, 0xc($s0)
branch_0x801f8d78:
    addiu   $s1, $s1, 0x1
branch_0x801f8d7c:
    slt     $at, $s1, $a1
    bnez    $at, branch_0x801f8c7c
    addiu   $v0, $v0, 0x378
    or      $s1, $zero, $zero
branch_0x801f8d8c:
    blez    $a1, branch_0x801f8ec4
    sll     $t9, $s2, 2
    addu    $t9, $t9, $s2
    sll     $t9, $t9, 4
    addu    $s0, $a3, $t9
    lw      $v1, 0xc($s0)
branch_0x801f8da4:
    lw      $a2, 0x4($s0)
    beq     $v1, $a2, branch_0x801f8e3c
    subu    $v0, $v1, $a2
    bltz    $v0, branch_0x801f8dc0
    subu    $a1, $zero, $v0
    b       branch_0x801f8dc0
    or      $a1, $v0, $zero
branch_0x801f8dc0:
    slti    $at, $a1, 0x5
    beqz    $at, branch_0x801f8dd8
    nop
    sw      $v1, 0x4($s0)
    b       branch_0x801f8e40
    sw      $zero, 0x8($s0)
branch_0x801f8dd8:
    bnez    $v0, branch_0x801f8de8
    slti    $at, $a1, 0x10
    b       branch_0x801f8dfc
    or      $v1, $zero, $zero
branch_0x801f8de8:
    blez    $v0, branch_0x801f8df8
    addiu   $a0, $zero, 0xffff
    b       branch_0x801f8df8
    or      $a0, $t5, $zero
branch_0x801f8df8:
    or      $v1, $a0, $zero
branch_0x801f8dfc:
    sll     $t6, $v1, 2
    addu    $t8, $a2, $t6
    bgez    $v0, branch_0x801f8e14
    sw      $t8, 0x4($s0)
    b       branch_0x801f8e40
    sw      $zero, 0x8($s0)
branch_0x801f8e14:
    beqz    $at, branch_0x801f8e34
    nop
    bgez    $a1, branch_0x801f8e2c
    sra     $t7, $a1, 1
    addiu   $at, $a1, 0x1
    sra     $t7, $at, 1
branch_0x801f8e2c:
    b       branch_0x801f8e40
    sw      $t7, 0x8($s0)
branch_0x801f8e34:
    b       branch_0x801f8e40
    sw      $ra, 0x8($s0)
branch_0x801f8e3c:
    sw      $zero, 0x8($s0)
branch_0x801f8e40:
    lw      $v1, 0x8($s0)
    lw      $a2, 0x0($s0)
    beq     $v1, $a2, branch_0x801f8ea4
    subu    $v0, $v1, $a2
    bltz    $v0, branch_0x801f8e60
    subu    $a1, $zero, $v0
    b       branch_0x801f8e60
    or      $a1, $v0, $zero
branch_0x801f8e60:
    slti    $at, $a1, 0x3
    beqz    $at, branch_0x801f8e74
    nop
    b       branch_0x801f8ea4
    sw      $v1, 0x0($s0)
branch_0x801f8e74:
    bnez    $v0, branch_0x801f8e84
    nop
    b       branch_0x801f8e98
    or      $v1, $zero, $zero
branch_0x801f8e84:
    blez    $v0, branch_0x801f8e94
    addiu   $a0, $zero, 0xffff
    b       branch_0x801f8e94
    or      $a0, $t5, $zero
branch_0x801f8e94:
    or      $v1, $a0, $zero
branch_0x801f8e98:
    sll     $t9, $v1, 1
    addu    $t6, $a2, $t9
    sw      $t6, 0x0($s0)
branch_0x801f8ea4:
    lw      $a1, 0x0($t4)
    addiu   $s1, $s1, 0x1
    addiu   $s0, $s0, 0x14
    slt     $at, $s1, $a1
    bnezl   $at, branch_0x801f8da4
    lw      $v1, 0xc($s0)
    lui     $t2, 0x800e
    lw      $t2, -0x5758($t2)
branch_0x801f8ec4:
    addiu   $s2, $s2, 0x1
    slt     $at, $s2, $t2
    bnez    $at, branch_0x801f8c10
    nop
    or      $s2, $zero, $zero
branch_0x801f8ed8:
    lui     $t4, 0x801a
    addiu   $t4, $t4, 0x8050
    lw      $a1, 0x0($t4)
    lui     $t3, 0x800d
    lui     $s3, 0x801c
    lui     $s7, 0x800d
    addiu   $s7, $s7, 0x465c
    addiu   $s3, $s3, 0x2698
    addiu   $t3, $t3, 0x4660
    addiu   $t5, $zero, 0x1
    blez    $a1, branch_0x801f8ff0
    addiu   $s4, $zero, 0x378
    lui     $t8, 0x8023
    addiu   $a3, $t8, 0x8b88
    lui     $a0, 0x8019
    lui     $t4, 0x8023
    sll     $t7, $a1, 2
    lui     $s5, 0x8023
    addiu   $s5, $s5, 0x8ba8
    addu    $s6, $t7, $a3
    addiu   $t4, $t4, 0x8b98
    addiu   $a0, $a0, 0x23f0
    or      $ra, $zero, $zero
    addiu   $s1, $zero, 0xfffb
    addiu   $s0, $zero, 0xfff1
branch_0x801f8f3c:
    lw      $v1, 0x15c0($a0)
    addiu   $at, $zero, 0x2
    addiu   $a0, $a0, 0x1718
    bne     $v1, $at, branch_0x801f8f58
    nop
    b       branch_0x801f8f70
    sw      $s0, 0x0($t4)
branch_0x801f8f58:
    bne     $v1, $t5, branch_0x801f8f68
    addu    $t9, $s5, $ra
    b       branch_0x801f8f70
    sw      $s1, 0x0($t4)
branch_0x801f8f68:
    sw      $t5, 0x0($t9)
    sw      $zero, 0x0($t4)
branch_0x801f8f70:
    lw      $a2, 0x0($a3)
    lw      $t1, 0x0($t4)
    addiu   $t4, $t4, 0x4
    beq     $a2, $t1, branch_0x801f8fe0
    subu    $v0, $t1, $a2
    bltz    $v0, branch_0x801f8f94
    addu    $t0, $s5, $ra
    b       branch_0x801f8f98
    or      $v1, $v0, $zero
branch_0x801f8f94:
    subu    $v1, $zero, $v0
branch_0x801f8f98:
    lw      $t6, 0x0($t0)
    addiu   $t8, $a2, 0x1
    addiu   $t7, $t6, 0x1
    blez    $v0, branch_0x801f8fb4
    sw      $t7, 0x0($t0)
    b       branch_0x801f8fd0
    sw      $t8, 0x0($a3)
branch_0x801f8fb4:
    lw      $v0, 0x0($t0)
    slt     $at, $v0, $v1
    bnez    $at, branch_0x801f8fcc
    subu    $t9, $a2, $v0
    b       branch_0x801f8fd0
    sw      $t1, 0x0($a3)
branch_0x801f8fcc:
    sw      $t9, 0x0($a3)
branch_0x801f8fd0:
    lw      $t6, 0x0($a3)
    bnel    $t6, $t1, branch_0x801f8fe4
    addiu   $a3, $a3, 0x4
    sw      $t5, 0x0($t0)
branch_0x801f8fe0:
    addiu   $a3, $a3, 0x4
branch_0x801f8fe4:
    sltu    $at, $a3, $s6
    bnez    $at, branch_0x801f8f3c
    addiu   $ra, $ra, 0x4
branch_0x801f8ff0:
    blez    $t2, branch_0x801f9204
    lui     $at, 0x4380
    mtc1    $at, $s6
    lui     $at, 0x4400
    lui     $fp, 0x801c
    lui     $s5, 0x8019
    mtc1    $at, $s4
    addiu   $s5, $s5, 0x23f0
    addiu   $fp, $fp, 0x1d34
    addiu   $s6, $zero, 0x1718
branch_0x801f9018:
    blez    $a1, branch_0x801f91f4
    or      $s1, $zero, $zero
    sll     $t7, $s2, 2
    addu    $t7, $t7, $s2
    lui     $t8, 0x8023
    addiu   $t8, $t8, 0x8ae8
    sll     $t7, $t7, 4
    addu    $s0, $t7, $t8
branch_0x801f9038:
    lw      $t9, 0x0($s0)
    lw      $t6, 0x8($s0)
    bnel    $t9, $t6, branch_0x801f91bc
    lw      $v0, 0x10($s0)
    lw      $t7, 0x4($s0)
    lw      $t8, 0xc($s0)
    bnel    $t7, $t8, branch_0x801f91bc
    lw      $v0, 0x10($s0)
    lw      $t9, 0x0($fp)
    bnezl   $t9, branch_0x801f91bc
    lw      $v0, 0x10($s0)
    multu   $s1, $s4
    mflo    $t6
    addu    $v0, $s3, $t6
    lw      $t7, 0x2f4($v0)
    bnezl   $t7, branch_0x801f91bc
    lw      $v0, 0x10($s0)
    bnez    $s2, branch_0x801f90b8
    nop
    lw      $t8, 0x0($s7)
    lw      $t6, 0x320($v0)
    multu   $t8, $s4
    mflo    $t9
    addu    $v1, $s3, $t9
    lw      $t7, 0x320($v1)
    bne     $t6, $t7, branch_0x801f90b8
    nop
    lw      $t9, 0x4($v1)
    lw      $t8, 0x4($v0)
    addiu   $t6, $t9, 0x1
    beq     $t8, $t6, branch_0x801f90f4
    nop
branch_0x801f90b8:
    bnel    $s2, $t5, branch_0x801f91bc
    lw      $v0, 0x10($s0)
    lw      $t7, 0x0($t3)
    lw      $t8, 0x320($v0)
    multu   $t7, $s4
    mflo    $t9
    addu    $v1, $s3, $t9
    lw      $t6, 0x320($v1)
    bnel    $t8, $t6, branch_0x801f91bc
    lw      $v0, 0x10($s0)
    lw      $t9, 0x4($v1)
    lw      $t7, 0x4($v0)
    addiu   $t8, $t9, 0x1
    bnel    $t7, $t8, branch_0x801f91bc
    lw      $v0, 0x10($s0)
branch_0x801f90f4:
    bnezl   $s2, branch_0x801f9108
    lw      $v1, 0x0($t3)
    b       branch_0x801f9108
    lw      $v1, 0x0($s7)

.globl Function_0x801f9104
Function_0x801f9104: # 0x801f9104
    lw      $v1, 0x0($t3)
branch_0x801f9108:
    multu   $v1, $s4
    lw      $t6, 0x310($v0)
    mflo    $t9
    addu    $t7, $s3, $t9
    lw      $t8, 0x310($t7)
    lui     $t9, 0x801d
    bnel    $t6, $t8, branch_0x801f91bc
    lw      $v0, 0x10($s0)
    lw      $t9, -0x1c50($t9)
    addiu   $at, $zero, 0x3
    bnel    $t9, $at, branch_0x801f91bc
    lw      $v0, 0x10($s0)
    multu   $v1, $s6
    mflo    $t7
    addu    $v0, $s5, $t7
    lwc1    $f4, 0x44($v0)
    multu   $s1, $s6
    lwc1    $f8, 0x4c($v0)
    mflo    $t6
    addu    $a0, $s5, $t6
    lwc1    $f6, 0x44($a0)
    lwc1    $f10, 0x4c($a0)
    sub.s   $f0, $f4, $f6
    sub.s   $f2, $f8, $f10
    mul.s   $f16, $f0, $f0
    nop
    mul.s   $f18, $f2, $f2
    jal     sqrtf
    add.s   $f12, $f16, $f18
    c.lt.s $f0, $f20
    lui     $t3, 0x800d
    addiu   $t3, $t3, 0x4660
    addiu   $t5, $zero, 0x1
    bc1fl   branch_0x801f91bc
    lw      $v0, 0x10($s0)
    c.lt.s $f0, $f22
    lw      $v1, 0x10($s0)
    bc1fl   branch_0x801f91b0
    addiu   $v1, $v1, 0x1
    b       branch_0x801f91b0
    addiu   $v1, $v1, 0x2

.globl Function_0x801f91ac
Function_0x801f91ac: # 0x801f91ac
    addiu   $v1, $v1, 0x1
branch_0x801f91b0:
    andi    $t8, $v1, 0x7
    sw      $t8, 0x10($s0)
    lw      $v0, 0x10($s0)
branch_0x801f91bc:
    lui     $a1, 0x801a
    addiu   $s1, $s1, 0x1
    beqz    $v0, branch_0x801f91e0
    lw      $a1, -0x7fb0($a1)
    addiu   $t9, $v0, 0x1
    slti    $at, $t9, 0x8
    bnez    $at, branch_0x801f91e0
    sw      $t9, 0x10($s0)
    sw      $zero, 0x10($s0)
branch_0x801f91e0:
    slt     $at, $s1, $a1
    bnez    $at, branch_0x801f9038
    addiu   $s0, $s0, 0x14
    lui     $t2, 0x800e
    lw      $t2, -0x5758($t2)
branch_0x801f91f4:
    addiu   $s2, $s2, 0x1
    slt     $at, $s2, $t2
    bnez    $at, branch_0x801f9018
    nop
branch_0x801f9204:
    lui     $a2, 0x8023
    addiu   $a2, $a2, 0x885c
    lw      $t6, 0x0($a2)
    lui     $t0, 0x8023
    lui     $a3, 0x8023
    bne     $t5, $t6, branch_0x801f9234
    addiu   $t0, $t0, 0x8bb8
    addiu   $a3, $a3, 0x8bbc
    addiu   $t8, $zero, 0x2
    addiu   $t9, $zero, 0x4
    sw      $t8, 0x0($a2)
    sw      $t9, 0x0($a3)
branch_0x801f9234:
    lui     $a3, 0x8023
    addiu   $a3, $a3, 0x8bbc
    lw      $a1, 0x0($a3)
    lw      $v0, 0x0($t0)
    beq     $a1, $v0, branch_0x801f927c
    subu    $v1, $a1, $v0
    bnez    $v1, branch_0x801f925c
    nop
    b       branch_0x801f9270
    or      $v1, $zero, $zero
branch_0x801f925c:
    blez    $v1, branch_0x801f926c
    addiu   $a0, $zero, 0xffff
    b       branch_0x801f926c
    addiu   $a0, $zero, 0x1
branch_0x801f926c:
    or      $v1, $a0, $zero
branch_0x801f9270:
    addu    $t7, $v0, $v1
    sw      $t7, 0x0($t0)
    or      $v0, $t7, $zero
branch_0x801f927c:
    bnel    $a1, $v0, branch_0x801f92a4
    lw      $ra, 0x4c($sp)
    blez    $v0, branch_0x801f9298
    addiu   $t6, $zero, 0x3
    sw      $t6, 0x0($a2)
    b       branch_0x801f92a0
    sw      $zero, 0x0($a3)
branch_0x801f9298:
    sw      $zero, 0x0($a2)
    sw      $zero, 0x0($a3)
branch_0x801f92a0:
    lw      $ra, 0x4c($sp)
branch_0x801f92a4:
    ldc1    $20, 0x18($29)
    ldc1    $22, 0x20($29)
    lw      $s0, 0x28($sp)
    lw      $s1, 0x2c($sp)
    lw      $s2, 0x30($sp)
    lw      $s3, 0x34($sp)
    lw      $s4, 0x38($sp)
    lw      $s5, 0x3c($sp)
    lw      $s6, 0x40($sp)
    lw      $s7, 0x44($sp)
    lw      $fp, 0x48($sp)
    jr      $ra
    addiu   $sp, $sp, 0x50

.globl Function_0x801f92d8
Function_0x801f92d8: # 0x801f92d8
    addiu   $sp, $sp, 0xfeb8
    lui     $a1, 0x800e
    addiu   $a1, $a1, 0xa8a8
    lw      $t7, 0x0($a1)
    sw      $ra, 0x2c($sp)
    sw      $fp, 0x28($sp)
    sw      $s7, 0x24($sp)
    sw      $s6, 0x20($sp)
    sw      $s5, 0x1c($sp)
    sw      $s4, 0x18($sp)
    sw      $s3, 0x14($sp)
    sw      $s2, 0x10($sp)
    sw      $s1, 0xc($sp)
    sw      $s0, 0x8($sp)
    sw      $a0, 0x148($sp)
    addiu   $at, $zero, 0x1
    bne     $t7, $at, branch_0x801f9340
    lw      $v0, 0x0($a0)
    or      $v1, $v0, $zero
    lui     $t9, 0x101
    addiu   $t9, $t9, 0x4760
    lui     $t8, 0x600
    sw      $t8, 0x0($v1)
    sw      $t9, 0x4($v1)
    b       branch_0x801f935c
    addiu   $v0, $v0, 0x8
branch_0x801f9340:
    or      $v1, $v0, $zero
    lui     $t7, 0x101
    addiu   $t7, $t7, 0x4790
    lui     $t6, 0x600
    sw      $t6, 0x0($v1)
    sw      $t7, 0x4($v1)
    addiu   $v0, $v0, 0x8
branch_0x801f935c:
    lw      $v1, 0x0($a1)
    sw      $zero, 0x138($sp)
    lui     $a0, 0x801a
    blez    $v1, branch_0x801f9c20
    lui     $at, 0x4080
    lui     $fp, 0x8
    lui     $s5, 0x708
    mtc1    $at, $v0
    ori     $s5, $s5, 0x200
    ori     $fp, $fp, 0x200
    lw      $a0, -0x7fb0($a0)
    lui     $ra, 0xf200
    lui     $s7, 0xf300
    lui     $s6, 0xe600
    lui     $s4, 0xb200
    lui     $s3, 0xb300
    lui     $s2, 0xe400
    lui     $s0, 0xe700
branch_0x801f93a4:
    addiu   $at, $zero, 0x1
    bne     $v1, $at, branch_0x801f93cc
    or      $s1, $zero, $zero
    lui     $t8, 0x8023
    lw      $t8, -0x76f0($t8)
    addiu   $t6, $zero, 0x3c
    sw      $t6, 0x128($sp)
    addiu   $t9, $t8, 0x106
    b       branch_0x801f93f0
    sw      $t9, 0x12c($sp)
branch_0x801f93cc:
    lw      $t8, 0x138($sp)
    addiu   $t7, $zero, 0x108
    sw      $t7, 0x12c($sp)
    bnez    $t8, branch_0x801f93ec
    addiu   $t6, $zero, 0x99
    addiu   $t9, $zero, 0x2b
    b       branch_0x801f93f0
    sw      $t9, 0x128($sp)
branch_0x801f93ec:
    sw      $t6, 0x128($sp)
branch_0x801f93f0:
    blezl   $a0, branch_0x801f9c10
    lw      $t8, 0x138($sp)
    lw      $v1, 0x138($sp)
    lui     $t8, 0x8023
    addiu   $t8, $t8, 0x8ae8
    sll     $t7, $v1, 2
    addu    $t7, $t7, $v1
    sll     $t7, $t7, 4
    addu    $t9, $t7, $t8
    sw      $t9, 0x34($sp)
    lw      $v1, 0x138($sp)
branch_0x801f941c:
    lw      $t6, 0x34($sp)
    lw      $t9, 0x12c($sp)
    bnez    $v1, branch_0x801f9438
    lui     $at, 0x8022
    subu    $t1, $a0, $s1
    b       branch_0x801f943c
    addiu   $t1, $t1, 0xffff
branch_0x801f9438:
    or      $t1, $s1, $zero
branch_0x801f943c:
    sll     $t7, $t1, 2
    addu    $t7, $t7, $t1
    sll     $t7, $t7, 2
    addu    $v1, $t6, $t7
    lw      $t8, 0x0($v1)
    lw      $t6, 0x4($v1)
    lw      $t7, 0x128($sp)
    addu    $t3, $t8, $t9
    lw      $t8, 0x10($v1)
    addu    $t2, $t6, $t7
    mtc1    $t2, $a2
    andi    $t9, $t8, 0x7
    sll     $t6, $t9, 2
    addu    $at, $at, $t6
    lwc1    $f4, 0x7764($at)
    cvt.s.w $f8, $f6
    or      $v1, $v0, $zero
    mul.s   $f0, $f4, $f2
    addiu   $v0, $v0, 0x8
    lw      $t8, 0x138($sp)
    or      $a0, $v0, $zero
    addiu   $v0, $v0, 0x8
    or      $a1, $v0, $zero
    addiu   $at, $zero, 0x1
    sub.s   $f10, $f8, $f0
    lw      $t6, 0x138($sp)
    lui     $t9, 0x800d
    addiu   $v0, $v0, 0x8
    trunc.w.s   $f16, $f10
    mfc1    $t2, $s0
    bnez    $t8, branch_0x801f94c8
    nop
    lw      $t9, 0x465c($t9)
    beq     $t1, $t9, branch_0x801f94dc
    nop
branch_0x801f94c8:
    bne     $t6, $at, branch_0x801f94e4
    lui     $t7, 0x800d
    lw      $t7, 0x4660($t7)
    bnel    $t1, $t7, branch_0x801f94e8
    or      $t4, $zero, $zero
branch_0x801f94dc:
    b       branch_0x801f94e8
    addiu   $t4, $zero, 0x1
branch_0x801f94e4:
    or      $t4, $zero, $zero
branch_0x801f94e8:
    sw      $s0, 0x0($v1)
    sw      $zero, 0x4($v1)
    lui     $t8, 0xfcff
    lui     $t9, 0xfffc
    ori     $t9, $t9, 0xf279
    ori     $t8, $t8, 0xffff
    lui     $t6, 0xb900
    lui     $t7, 0x55
    sw      $t8, 0x0($a0)
    sw      $t9, 0x4($a0)
    ori     $t7, $t7, 0x3048
    ori     $t6, $t6, 0x31d
    sw      $t6, 0x0($a1)
    beqz    $t4, branch_0x801f966c
    sw      $t7, 0x4($a1)
    sll     $t8, $t1, 3
    subu    $t8, $t8, $t1
    sll     $t8, $t8, 4
    subu    $t8, $t8, $t1
    lui     $t9, 0x801c
    addiu   $t9, $t9, 0x2698
    sll     $t8, $t8, 3
    addu    $t5, $t8, $t9
    lw      $t6, 0x2f4($t5)
    or      $v1, $v0, $zero
    addiu   $v0, $v0, 0x8
    bnez    $t6, branch_0x801f9564
    lui     $t7, 0xfd10
    lui     $a3, 0x104
    b       branch_0x801f956c
    addiu   $a3, $a3, 0xfe0
branch_0x801f9564:
    lui     $a3, 0x104
    addiu   $a3, $a3, 0x20b8
branch_0x801f956c:
    sw      $t7, 0x0($v1)
    or      $a0, $v0, $zero
    sw      $a3, 0x4($v1)
    lui     $t8, 0xf510
    sw      $t8, 0x0($a0)
    addiu   $v0, $v0, 0x8
    or      $a1, $v0, $zero
    sw      $s5, 0x4($a0)
    addiu   $v0, $v0, 0x8
    or      $a2, $v0, $zero
    lui     $t9, 0x735
    ori     $t9, $t9, 0xf0e4
    addiu   $v0, $v0, 0x8
    sw      $zero, 0x4($a1)
    sw      $s6, 0x0($a1)
    sw      $t9, 0x4($a2)
    or      $t0, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $s7, 0x0($a2)
    or      $v1, $v0, $zero
    lui     $t6, 0xf510
    ori     $t6, $t6, 0x1200
    sw      $zero, 0x4($t0)
    sw      $s0, 0x0($t0)
    sw      $t6, 0x0($v1)
    addiu   $v0, $v0, 0x8
    lui     $t7, 0x8
    addiu   $t8, $t3, 0x1d
    ori     $t7, $t7, 0xc05c
    or      $a0, $v0, $zero
    sw      $fp, 0x4($v1)
    sll     $t9, $t8, 2
    sw      $t7, 0x4($a0)
    andi    $t6, $t9, 0xfff
    sll     $t7, $t6, 12
    addiu   $t9, $t2, 0x18
    sll     $t6, $t9, 2
    or      $t8, $t7, $s2
    andi    $t7, $t6, 0xfff
    or      $t9, $t8, $t7
    addiu   $t6, $t3, 0xfff9
    addiu   $v0, $v0, 0x8
    sll     $t8, $t6, 2
    sw      $ra, 0x0($a0)
    andi    $t7, $t8, 0xfff
    or      $a1, $v0, $zero
    sw      $t9, 0x0($a1)
    sll     $t6, $t2, 2
    andi    $t8, $t6, 0xfff
    sll     $t9, $t7, 12
    addiu   $v0, $v0, 0x8
    or      $a2, $v0, $zero
    or      $t7, $t9, $t8
    sw      $t7, 0x4($a1)
    addiu   $v0, $v0, 0x8
    or      $v1, $v0, $zero
    lui     $t6, 0x400
    ori     $t6, $t6, 0x400
    sw      $zero, 0x4($a2)
    sw      $s3, 0x0($a2)
    sw      $t6, 0x4($v1)
    sw      $s4, 0x0($v1)
    b       branch_0x801f97ac
    addiu   $v0, $v0, 0x8
branch_0x801f966c:
    sll     $t9, $t1, 3
    subu    $t9, $t9, $t1
    sll     $t9, $t9, 4
    subu    $t9, $t9, $t1
    lui     $t8, 0x801c
    addiu   $t8, $t8, 0x2698
    sll     $t9, $t9, 3
    addu    $t5, $t9, $t8
    lw      $t7, 0x2f4($t5)
    or      $v1, $v0, $zero
    addiu   $v0, $v0, 0x8
    bnez    $t7, branch_0x801f96ac
    lui     $t6, 0xfd10
    lui     $a3, 0x104
    b       branch_0x801f96b4
    addiu   $a3, $a3, 0x16a8
branch_0x801f96ac:
    lui     $a3, 0x104
    addiu   $a3, $a3, 0x1bb0
branch_0x801f96b4:
    sw      $t6, 0x0($v1)
    or      $a0, $v0, $zero
    sw      $a3, 0x4($v1)
    lui     $t9, 0xf510
    sw      $t9, 0x0($a0)
    addiu   $v0, $v0, 0x8
    or      $a1, $v0, $zero
    sw      $s5, 0x4($a0)
    addiu   $v0, $v0, 0x8
    or      $a2, $v0, $zero
    lui     $t8, 0x727
    ori     $t8, $t8, 0xf100
    addiu   $v0, $v0, 0x8
    sw      $zero, 0x4($a1)
    sw      $s6, 0x0($a1)
    sw      $t8, 0x4($a2)
    or      $t0, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $s7, 0x0($a2)
    or      $v1, $v0, $zero
    lui     $t7, 0xf510
    ori     $t7, $t7, 0x1000
    sw      $zero, 0x4($t0)
    sw      $s0, 0x0($t0)
    sw      $t7, 0x0($v1)
    addiu   $v0, $v0, 0x8
    lui     $t6, 0x7
    addiu   $t9, $t3, 0x20
    ori     $t6, $t6, 0xc04c
    or      $a0, $v0, $zero
    sw      $fp, 0x4($v1)
    sll     $t8, $t9, 2
    sw      $t6, 0x4($a0)
    andi    $t7, $t8, 0xfff
    sll     $t6, $t7, 12
    addiu   $t8, $t2, 0x14
    sll     $t7, $t8, 2
    or      $t9, $t6, $s2
    andi    $t6, $t7, 0xfff
    addiu   $v0, $v0, 0x8
    or      $t8, $t9, $t6
    sw      $ra, 0x0($a0)
    or      $a1, $v0, $zero
    sll     $t7, $t3, 2
    andi    $t9, $t7, 0xfff
    sw      $t8, 0x0($a1)
    sll     $t8, $t2, 2
    andi    $t7, $t8, 0xfff
    sll     $t6, $t9, 12
    addiu   $v0, $v0, 0x8
    or      $a2, $v0, $zero
    or      $t9, $t6, $t7
    sw      $t9, 0x4($a1)
    addiu   $v0, $v0, 0x8
    or      $v1, $v0, $zero
    sw      $zero, 0x4($a2)
    sw      $s3, 0x0($a2)
    lui     $t8, 0x400
    ori     $t8, $t8, 0x400
    sw      $t8, 0x4($v1)
    sw      $s4, 0x0($v1)
    addiu   $v0, $v0, 0x8
branch_0x801f97ac:
    lui     $t6, 0x800d
    lw      $t6, 0x465c($t6)
    or      $v1, $v0, $zero
    addiu   $v0, $v0, 0x8
    bne     $t1, $t6, branch_0x801f97d0
    or      $a0, $v0, $zero
    lui     $t7, 0x801d
    lh      $t7, -0x1bac($t7)
    bnez    $t7, branch_0x801f9804
branch_0x801f97d0:
    lui     $t9, 0x800e
    lw      $t9, -0x5758($t9)
    addiu   $at, $zero, 0x2
    lui     $t8, 0x800d
    bne     $t9, $at, branch_0x801f980c
    or      $a3, $zero, $zero
    lw      $t8, 0x4660($t8)
    lui     $t6, 0x801d
    bne     $t1, $t8, branch_0x801f980c
    nop
    lh      $t6, -0x1baa($t6)
    beqz    $t6, branch_0x801f980c
    nop
branch_0x801f9804:
    b       branch_0x801f980c
    addiu   $a3, $zero, 0x4
branch_0x801f980c:
    sll     $t9, $t1, 2
    subu    $t9, $t9, $t1
    sll     $t9, $t9, 3
    subu    $t9, $t9, $t1
    sll     $t9, $t9, 3
    addu    $t9, $t9, $t1
    sll     $t9, $t9, 2
    subu    $t9, $t9, $t1
    sll     $t9, $t9, 3
    lui     $t7, 0xfd10
    lui     $t8, 0x8019
    addu    $t8, $t8, $t9
    sw      $t7, 0x0($v1)
    lw      $t8, 0x2f58($t8)
    sll     $t7, $a3, 2
    addiu   $v0, $v0, 0x8
    sll     $t6, $t8, 2
    addu    $t9, $t6, $t7
    lui     $t8, 0x8022
    addu    $t8, $t8, $t9
    lw      $t8, 0x7738($t8)
    lui     $t6, 0xf510
    or      $a1, $v0, $zero
    sw      $t8, 0x4($v1)
    sw      $s5, 0x4($a0)
    sw      $t6, 0x0($a0)
    addiu   $v0, $v0, 0x8
    or      $a2, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $zero, 0x4($a1)
    sw      $s6, 0x0($a1)
    lui     $t7, 0x718
    ori     $t7, $t7, 0xf19a
    or      $t0, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $t7, 0x4($a2)
    sw      $s7, 0x0($a2)
    or      $v1, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $zero, 0x4($t0)
    sw      $s0, 0x0($t0)
    lui     $t9, 0xf510
    ori     $t9, $t9, 0xa00
    or      $a0, $v0, $zero
    lui     $t8, 0x4
    ori     $t8, $t8, 0xc04c
    sw      $t9, 0x0($v1)
    sw      $fp, 0x4($v1)
    sw      $t8, 0x4($a0)
    sw      $ra, 0x0($a0)
    beqz    $t4, branch_0x801f9974
    addiu   $v0, $v0, 0x8
    addiu   $t6, $t3, 0x19
    sll     $t7, $t6, 2
    andi    $t9, $t7, 0xfff
    sll     $t8, $t9, 12
    addiu   $t7, $t2, 0x16
    sll     $t9, $t7, 2
    or      $t6, $t8, $s2
    andi    $t8, $t9, 0xfff
    or      $t7, $t6, $t8
    addiu   $t9, $t3, 0x5
    sll     $t6, $t9, 2
    andi    $t8, $t6, 0xfff
    or      $v1, $v0, $zero
    addiu   $a2, $t2, 0x2
    sll     $t9, $a2, 2
    sw      $t7, 0x0($v1)
    sll     $t7, $t8, 12
    andi    $t6, $t9, 0xfff
    or      $t8, $t7, $t6
    addiu   $v0, $v0, 0x8
    or      $a0, $v0, $zero
    sw      $t8, 0x4($v1)
    lui     $t7, 0x8023
    sll     $t9, $t1, 2
    addu    $t7, $t7, $t9
    sw      $s3, 0x0($a0)
    lw      $t7, -0x7478($t7)
    addiu   $v0, $v0, 0x8
    or      $a1, $v0, $zero
    sll     $t6, $t7, 5
    andi    $t8, $t6, 0xffff
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    sw      $t8, 0x4($a0)
    sw      $t9, 0x4($a1)
    sw      $s4, 0x0($a1)
    b       branch_0x801f9a08
    addiu   $v0, $v0, 0x8
branch_0x801f9974:
    addiu   $t7, $t3, 0x19
    sll     $t6, $t7, 2
    andi    $t8, $t6, 0xfff
    sll     $t9, $t8, 12
    addiu   $t6, $t2, 0x12
    sll     $t8, $t6, 2
    or      $t7, $t9, $s2
    andi    $t9, $t8, 0xfff
    or      $t6, $t7, $t9
    addiu   $t8, $t3, 0x9
    sll     $t7, $t8, 2
    andi    $t9, $t7, 0xfff
    or      $v1, $v0, $zero
    addiu   $a2, $t2, 0x2
    sll     $t8, $a2, 2
    sw      $t6, 0x0($v1)
    sll     $t6, $t9, 12
    andi    $t7, $t8, 0xfff
    or      $t9, $t6, $t7
    addiu   $v0, $v0, 0x8
    or      $a0, $v0, $zero
    sw      $t9, 0x4($v1)
    lui     $t6, 0x8023
    sll     $t8, $t1, 2
    addu    $t6, $t6, $t8
    sw      $s3, 0x0($a0)
    lw      $t6, -0x7478($t6)
    addiu   $v0, $v0, 0x8
    or      $a1, $v0, $zero
    sll     $t7, $t6, 5
    andi    $t9, $t7, 0xffff
    sw      $t9, 0x4($a0)
    lui     $t8, 0x500
    ori     $t8, $t8, 0x500
    sw      $t8, 0x4($a1)
    sw      $s4, 0x0($a1)
    addiu   $v0, $v0, 0x8
branch_0x801f9a08:
    or      $v1, $v0, $zero
    addiu   $v0, $v0, 0x8
    or      $a0, $v0, $zero
    sw      $s0, 0x0($v1)
    sw      $zero, 0x4($v1)
    addiu   $v0, $v0, 0x8
    lui     $t6, 0xb900
    lui     $t7, 0x50
    ori     $t7, $t7, 0x4240
    ori     $t6, $t6, 0x31d
    or      $a1, $v0, $zero
    lui     $t9, 0xfc12
    sw      $t6, 0x0($a0)
    sw      $t7, 0x4($a0)
    ori     $t9, $t9, 0xfe25
    addiu   $t8, $zero, 0xf3f9
    sw      $t8, 0x4($a1)
    sw      $t9, 0x0($a1)
    beqz    $t4, branch_0x801f9ab0
    addiu   $v0, $v0, 0x8
    or      $v1, $v0, $zero
    lui     $t6, 0xfb00
    sw      $t6, 0x0($v1)
    lui     $t6, 0x8023
    lui     $t7, 0x8023
    lw      $t9, -0x7788($t7)
    lw      $t6, -0x7784($t6)
    addiu   $v0, $v0, 0x8
    sll     $t8, $t9, 24
    andi    $t7, $t6, 0xff
    sll     $t9, $t7, 16
    lui     $t7, 0x8023
    lw      $t7, -0x7780($t7)
    or      $t6, $t8, $t9
    addiu   $a3, $t3, 0xfffc
    andi    $t8, $t7, 0xff
    sll     $t9, $t8, 8
    or      $t7, $t6, $t9
    ori     $t8, $t7, 0xff
    sw      $t8, 0x4($v1)
    b       branch_0x801f9ad0
    addiu   $t0, $t2, 0x4
branch_0x801f9ab0:
    or      $v1, $v0, $zero
    lui     $t6, 0xfb00
    addiu   $t9, $zero, 0xffff
    sw      $t9, 0x4($v1)
    sw      $t6, 0x0($v1)
    addiu   $v0, $v0, 0x8
    addiu   $a3, $t3, 0x2
    or      $t0, $a2, $zero
branch_0x801f9ad0:
    or      $v1, $v0, $zero
    lui     $t7, 0xfd70
    sw      $t7, 0x0($v1)
    lw      $t8, 0x4($t5)
    lui     $t7, 0x104
    addiu   $t7, $t7, 0x87c0
    sll     $t6, $t8, 6
    addiu   $t9, $t6, 0x40
    addiu   $v0, $v0, 0x8
    or      $a0, $v0, $zero
    addu    $t8, $t9, $t7
    sw      $t8, 0x4($v1)
    lui     $t6, 0xf570
    sw      $t6, 0x0($a0)
    addiu   $v0, $v0, 0x8
    or      $a1, $v0, $zero
    sw      $s5, 0x4($a0)
    addiu   $v0, $v0, 0x8
    or      $a2, $v0, $zero
    lui     $t9, 0x701
    ori     $t9, $t9, 0xf800
    addiu   $v0, $v0, 0x8
    sw      $zero, 0x4($a1)
    sw      $s6, 0x0($a1)
    sw      $t9, 0x4($a2)
    or      $t1, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $s7, 0x0($a2)
    or      $v1, $v0, $zero
    lui     $t7, 0xf568
    ori     $t7, $t7, 0x200
    sw      $zero, 0x4($t1)
    sw      $s0, 0x0($t1)
    sw      $t7, 0x0($v1)
    addiu   $v0, $v0, 0x8
    lui     $t8, 0x1
    addiu   $t6, $a3, 0x8
    ori     $t8, $t8, 0xc01c
    or      $a0, $v0, $zero
    sw      $fp, 0x4($v1)
    sll     $t9, $t6, 2
    sw      $t8, 0x4($a0)
    andi    $t7, $t9, 0xfff
    sll     $t8, $t7, 12
    addiu   $t9, $t0, 0x8
    sll     $t7, $t9, 2
    or      $t6, $t8, $s2
    andi    $t8, $t7, 0xfff
    addiu   $v0, $v0, 0x8
    or      $t9, $t6, $t8
    sw      $ra, 0x0($a0)
    or      $a1, $v0, $zero
    sll     $t7, $a3, 2
    andi    $t6, $t7, 0xfff
    sw      $t9, 0x0($a1)
    sll     $t9, $t0, 2
    andi    $t7, $t9, 0xfff
    sll     $t8, $t6, 12
    addiu   $v0, $v0, 0x8
    or      $a2, $v0, $zero
    or      $t6, $t8, $t7
    sw      $t6, 0x4($a1)
    addiu   $v0, $v0, 0x8
    or      $v1, $v0, $zero
    sw      $zero, 0x4($a2)
    sw      $s3, 0x0($a2)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    lui     $a0, 0x801a
    sw      $t9, 0x4($v1)
    sw      $s4, 0x0($v1)
    lw      $a0, -0x7fb0($a0)
    addiu   $s1, $s1, 0x1
    addiu   $v0, $v0, 0x8
    slt     $at, $s1, $a0
    bnezl   $at, branch_0x801f941c
    lw      $v1, 0x138($sp)
    lui     $v1, 0x800e
    lw      $v1, -0x5758($v1)
    lw      $t8, 0x138($sp)
branch_0x801f9c10:
    addiu   $t7, $t8, 0x1
    slt     $at, $t7, $v1
    bnez    $at, branch_0x801f93a4
    sw      $t7, 0x138($sp)
branch_0x801f9c20:
    lw      $t6, 0x148($sp)
    sw      $v0, 0x0($t6)
    lw      $ra, 0x2c($sp)
    lw      $fp, 0x28($sp)
    lw      $s7, 0x24($sp)
    lw      $s6, 0x20($sp)
    lw      $s5, 0x1c($sp)
    lw      $s4, 0x18($sp)
    lw      $s3, 0x14($sp)
    lw      $s2, 0x10($sp)
    lw      $s1, 0xc($sp)
    lw      $s0, 0x8($sp)
    jr      $ra
    addiu   $sp, $sp, 0x148

.globl Function_0x801f9c58
Function_0x801f9c58: # 0x801f9c58
    addiu   $sp, $sp, 0xff68
    lui     $t6, 0x800e
    lw      $t6, -0x5758($t6)
    sw      $ra, 0x6c($sp)
    sw      $fp, 0x68($sp)
    sw      $s7, 0x64($sp)
    sw      $s6, 0x60($sp)
    sw      $s5, 0x5c($sp)
    sw      $s4, 0x58($sp)
    sw      $s3, 0x54($sp)
    sw      $s2, 0x50($sp)
    sw      $s1, 0x4c($sp)
    sw      $s0, 0x48($sp)
    sdc1    $30, 0x40($29)
    sdc1    $28, 0x38($29)
    sdc1    $26, 0x30($29)
    sdc1    $24, 0x28($29)
    sdc1    $22, 0x20($29)
    sdc1    $20, 0x18($29)
    blez    $t6, branch_0x801fa130
    sw      $zero, 0x90($sp)
    lui     $s6, 0x8019
    lui     $s5, 0x8015
    lui     $s3, 0x801c
    addiu   $s3, $s3, 0x2698
    addiu   $s5, $s5, 0x40b0
    addiu   $s6, $s6, 0x23f0
    addiu   $fp, $zero, 0x1
    addiu   $s7, $zero, 0x1718
    addiu   $s4, $zero, 0x378
    lw      $t7, 0x90($sp)
branch_0x801f9cd4:
    or      $s1, $zero, $zero
    lui     $s2, 0x800d
    bnez    $t7, branch_0x801f9d18
    lui     $t1, 0x8022
    lui     $t8, 0x8022
    lw      $t8, 0x36f0($t8)
    lui     $t0, 0x8022
    lui     $s2, 0x800d
    sll     $t9, $t8, 4
    addu    $t9, $t9, $t8
    sll     $t9, $t9, 2
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 2
    addiu   $t0, $t0, 0x7a40
    lw      $s2, 0x465c($s2)
    b       branch_0x801f9d40
    addu    $v0, $t9, $t0
branch_0x801f9d18:
    lw      $t1, 0x36f4($t1)
    lui     $t3, 0x8022
    addiu   $t3, $t3, 0x7a40
    sll     $t2, $t1, 4
    addu    $t2, $t2, $t1
    sll     $t2, $t2, 2
    subu    $t2, $t2, $t1
    sll     $t2, $t2, 2
    lw      $s2, 0x4660($s2)
    addu    $v0, $t2, $t3
branch_0x801f9d40:
    lwc1    $f4, 0x4c($v0)
    swc1    $f4, 0x80($sp)
    lwc1    $f6, 0x54($v0)
    swc1    $f6, 0x7c($sp)
    lwc1    $f8, 0xf0($v0)
    neg.s   $f10, $f8
    swc1    $f10, 0x78($sp)
    lwc1    $f4, 0xf4($v0)
    lwc1    $f10, 0x80($sp)
    neg.s   $f6, $f4
    swc1    $f6, 0x74($sp)
    lwc1    $f8, 0x7c($v0)
    lwc1    $f4, 0x84($v0)
    lwc1    $f6, 0x7c($sp)
    sub.s   $f20, $f8, $f10
    sub.s   $f22, $f4, $f6
    mul.s   $f8, $f20, $f20
    nop
    mul.s   $f10, $f22, $f22
    jal     sqrtf
    add.s   $f12, $f8, $f10
    lui     $v0, 0x801a
    lw      $v0, -0x7fb0($v0)
    lw      $t4, 0x90($sp)
    lui     $t6, 0x8023
    blez    $v0, branch_0x801fa110
    sll     $t5, $t4, 2
    addu    $t5, $t5, $t4
    sll     $t5, $t5, 4
    addiu   $t6, $t6, 0x8948
    addu    $s0, $t5, $t6
branch_0x801f9dbc:
    beq     $s1, $s2, branch_0x801fa100
    sw      $zero, 0x10($s0)
    multu   $s1, $s4
    mflo    $t7
    addu    $t8, $s3, $t7
    lw      $t9, 0x4($t8)
    multu   $s2, $s4
    mflo    $t0
    addu    $t1, $s3, $t0
    lw      $t2, 0x4($t1)
    slt     $at, $t9, $t2
    bnezl   $at, branch_0x801fa104
    addiu   $s1, $s1, 0x1
    multu   $s1, $s7
    lwc1    $f6, 0x80($sp)
    lwc1    $f10, 0x7c($sp)
    mflo    $t3
    addu    $v0, $s6, $t3
    lwc1    $f4, 0x44($v0)
    lwc1    $f8, 0x4c($v0)
    sub.s   $f20, $f4, $f6
    lwc1    $f4, 0x74($sp)
    sub.s   $f22, $f8, $f10
    lwc1    $f8, 0x78($sp)
    mul.s   $f6, $f20, $f4
    neg.s   $f10, $f8
    mul.s   $f10, $f22, $f10
    add.s   $f30, $f6, $f10
    mul.s   $f6, $f20, $f8
    nop
    mul.s   $f10, $f22, $f4
    nop
    mul.s   $f8, $f20, $f20
    nop
    mul.s   $f4, $f22, $f22
    add.s   $f24, $f6, $f10
    mov.s   $f26, $f24
    jal     sqrtf
    add.s   $f12, $f8, $f4
    mtc1    $zero, $a2
    mov.s   $f28, $f0
    c.lt.s $f6, $f0
    nop
    bc1f    branch_0x801f9e90
    nop
    div.s   $f20, $f20, $f0
    lwc1    $f10, 0x78($sp)
    lwc1    $f4, 0x74($sp)
    div.s   $f22, $f22, $f0
    mul.s   $f8, $f20, $f10
    nop
    mul.s   $f6, $f22, $f4
    add.s   $f24, $f8, $f6
branch_0x801f9e90:
    jal     Function_0x801ece20
    mov.s   $f12, $f24
    lui     $at, 0x4480
    mtc1    $at, $t2
    lui     $at, 0x4307
    lui     $v0, 0x801a
    c.lt.s $f10, $f28
    nop
    bc1t    branch_0x801f9ed0
    nop
    mtc1    $at, $a0
    lui     $at, 0x3a80
    c.lt.s $f4, $f0
    nop
    bc1fl   branch_0x801f9edc
    mtc1    $zero, $zero
branch_0x801f9ed0:
    b       branch_0x801fa100
    lw      $v0, -0x7fb0($v0)

.globl Function_0x801f9ed8
Function_0x801f9ed8: # 0x801f9ed8
    mtc1    $zero, $zero
branch_0x801f9edc:
    mtc1    $at, $t0
    mov.s   $f2, $f26
    c.lt.s $f26, $f0
    nop
    bc1f    branch_0x801f9ef8
    nop
    mov.s   $f2, $f0
branch_0x801f9ef8:
    mul.s   $f6, $f2, $f8
    lui     $at, 0x4480
    mtc1    $at, $t2
    lui     $at, 0x4270
    mtc1    $at, $t0
    lui     $at, 0x3f80
    mul.s   $f4, $f6, $f10
    mtc1    $at, $a2
    lui     $at, 0xbf80
    add.s   $f16, $f4, $f8
    div.s   $f0, $f30, $f16
    c.lt.s $f6, $f0
    mov.s   $f18, $f0
    bc1fl   branch_0x801f9f5c
    mtc1    $at, $a0
    lui     $at, 0x3f80
    mtc1    $at, $t2
    div.s   $f14, $f26, $f16
    jal     Function_0x801ecee4
    sub.s   $f12, $f0, $f10
    lui     $at, 0x3f80
    mtc1    $at, $s2
    b       branch_0x801f9f98
    mov.s   $f2, $f0

.globl Function_0x801f9f58
Function_0x801f9f58: # 0x801f9f58
    mtc1    $at, $a0
branch_0x801f9f5c:
    lui     $at, 0x3f80
    c.lt.s $f0, $f4
    nop
    bc1fl   branch_0x801f9f94
    mtc1    $zero, $v0
    mtc1    $at, $t0
    div.s   $f14, $f26, $f16
    jal     Function_0x801ecee4
    add.s   $f12, $f0, $f8
    lui     $at, 0xbf80
    mtc1    $at, $s2
    b       branch_0x801f9f98
    mov.s   $f2, $f0

.globl Function_0x801f9f90
Function_0x801f9f90: # 0x801f9f90
    mtc1    $zero, $v0
branch_0x801f9f94:
    nop
branch_0x801f9f98:
    lui     $at, 0x4334
    mtc1    $at, $a2
    mtc1    $zero, $t4
    mtc1    $zero, $s0
    c.lt.s $f6, $f2
    lui     $at, 0x43b4
    bc1fl   branch_0x801f9fc8
    c.le.s $f12, $f2
    mtc1    $at, $t2
    nop
    sub.s   $f2, $f2, $f10
    c.le.s $f12, $f2
branch_0x801f9fc8:
    lui     $at, 0x42b4
    bc1fl   branch_0x801f9fe0
    neg.s   $f0, $f2
    b       branch_0x801f9fe0
    mov.s   $f0, $f2

.globl Function_0x801f9fdc
Function_0x801f9fdc: # 0x801f9fdc
    neg.s   $f0, $f2
branch_0x801f9fe0:
    c.eq.s $f2, $f12
    nop
    bc1fl   branch_0x801fa000
    c.lt.s $f12, $f2
    mtc1    $zero, $t6
    b       branch_0x801fa024
    c.lt.s $f16, $f0

.globl Function_0x801f9ffc
Function_0x801f9ffc: # 0x801f9ffc
    c.lt.s $f12, $f2
branch_0x801fa000:
    addiu   $v0, $zero, 0xffff
    bc1f    branch_0x801fa014
    nop
    b       branch_0x801fa014
    or      $v0, $fp, $zero
branch_0x801fa014:
    mtc1    $v0, $a0
    nop
    cvt.s.w $f14, $f4
    c.lt.s $f16, $f0
branch_0x801fa024:
    nop
    bc1fl   branch_0x801fa0d0
    mov.s   $f12, $f16
    mtc1    $at, $v0
    lui     $at, 0x8022
    lwc1    $f8, 0x7810($at)
    lui     $at, 0x43b4
    mtc1    $at, $a2
    mul.s   $f0, $f0, $f8
    c.lt.s $f2, $f0
    nop
    bc1fl   branch_0x801fa060
    div.s   $f10, $f0, $f6
    mov.s   $f0, $f2
    div.s   $f10, $f0, $f6
branch_0x801fa060:
    lui     $at, 0x4580
    mtc1    $at, $a0
    lui     $at, 0x4200
    mul.s   $f8, $f10, $f4
    trunc.w.s   $f6, $f8
    mtc1    $at, $t0
    lui     $at, 0x3f80
    mfc1    $v0, $a2
    mtc1    $at, $a2
    lui     $at, 0x41c0
    andi    $t5, $v0, 0xfff
    sll     $t6, $t5, 2
    addu    $t7, $s5, $t6
    lwc1    $f10, 0x0($t7)
    addiu   $t8, $v0, 0x400
    andi    $t0, $t8, 0xfff
    mul.s   $f4, $f10, $f14
    sll     $t1, $t0, 2
    addu    $t9, $s5, $t1
    lwc1    $f10, 0x0($t9)
    mul.s   $f2, $f4, $f8
    sub.s   $f4, $f6, $f10
    mtc1    $at, $a2
    neg.s   $f8, $f4
    mul.s   $f12, $f8, $f6
    b       branch_0x801fa0d8
    lui     $at, 0x42bc

.globl Function_0x801fa0cc
Function_0x801fa0cc: # 0x801fa0cc
    mov.s   $f12, $f16
branch_0x801fa0d0:
    mov.s   $f2, $f16
    lui     $at, 0x42bc
branch_0x801fa0d8:
    mul.s   $f10, $f14, $f0
    mtc1    $at, $a0
    lui     $v0, 0x801a
    sw      $fp, 0x10($s0)
    mul.s   $f8, $f18, $f4
    swc1    $f12, 0x4($s0)
    swc1    $f10, 0x8($s0)
    add.s   $f6, $f8, $f2
    swc1    $f6, 0x0($s0)
    lw      $v0, -0x7fb0($v0)
branch_0x801fa100:
    addiu   $s1, $s1, 0x1
branch_0x801fa104:
    slt     $at, $s1, $v0
    bnez    $at, branch_0x801f9dbc
    addiu   $s0, $s0, 0x14
branch_0x801fa110:
    lw      $t2, 0x90($sp)
    lui     $t4, 0x800e
    lw      $t4, -0x5758($t4)
    addiu   $t3, $t2, 0x1
    sw      $t3, 0x90($sp)
    slt     $at, $t3, $t4
    bnezl   $at, branch_0x801f9cd4
    lw      $t7, 0x90($sp)
branch_0x801fa130:
    lw      $ra, 0x6c($sp)
    ldc1    $20, 0x18($29)
    ldc1    $22, 0x20($29)
    ldc1    $24, 0x28($29)
    ldc1    $26, 0x30($29)
    ldc1    $28, 0x38($29)
    ldc1    $30, 0x40($29)
    lw      $s0, 0x48($sp)
    lw      $s1, 0x4c($sp)
    lw      $s2, 0x50($sp)
    lw      $s3, 0x54($sp)
    lw      $s4, 0x58($sp)
    lw      $s5, 0x5c($sp)
    lw      $s6, 0x60($sp)
    lw      $s7, 0x64($sp)
    lw      $fp, 0x68($sp)
    jr      $ra
    addiu   $sp, $sp, 0x98

.globl Function_0x801fa178
Function_0x801fa178: # 0x801fa178
    addiu   $sp, $sp, 0xff88
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
    sdc1    $30, 0x48($29)
    sdc1    $28, 0x40($29)
    sdc1    $26, 0x38($29)
    sdc1    $24, 0x30($29)
    sdc1    $22, 0x28($29)
    sdc1    $20, 0x20($29)
    sw      $a0, 0x78($sp)
    lw      $s0, 0x0($a0)
    lui     $t8, 0xf
    ori     $t8, $t8, 0x3001
    or      $v0, $s0, $zero
    lui     $t7, 0xb600
    addiu   $s0, $s0, 0x8
    sw      $t7, 0x0($v0)
    sw      $t8, 0x4($v0)
    or      $v1, $s0, $zero
    addiu   $s0, $s0, 0x8
    lui     $t9, 0xb700
    addiu   $t6, $zero, 0x4
    sw      $t6, 0x4($v1)
    sw      $t9, 0x0($v1)
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x8
    lui     $t7, 0xe700
    sw      $t7, 0x0($a1)
    or      $a2, $s0, $zero
    lui     $t8, 0xba00
    sw      $zero, 0x4($a1)
    ori     $t8, $t8, 0x1402
    addiu   $s0, $s0, 0x8
    sw      $t8, 0x0($a2)
    or      $a3, $s0, $zero
    sw      $zero, 0x4($a2)
    lui     $t9, 0xfcff
    lui     $t6, 0xfffe
    ori     $t6, $t6, 0x793c
    ori     $t9, $t9, 0xffff
    addiu   $s0, $s0, 0x8
    sw      $t9, 0x0($a3)
    sw      $t6, 0x4($a3)
    or      $v0, $s0, $zero
    lui     $t7, 0xb900
    ori     $t7, $t7, 0x31d
    addiu   $s0, $s0, 0x8
    lui     $t8, 0x5f50
    ori     $t8, $t8, 0x5240
    sw      $t7, 0x0($v0)
    or      $v1, $s0, $zero
    sw      $t8, 0x4($v0)
    lui     $t9, 0xb900
    ori     $t9, $t9, 0x2
    addiu   $s0, $s0, 0x8
    sw      $t9, 0x0($v1)
    sw      $zero, 0x4($v1)
    or      $a0, $s0, $zero
    addiu   $t7, $zero, 0xffff
    lui     $t6, 0xf700
    sw      $t6, 0x0($a0)
    sw      $t7, 0x4($a0)
    lui     $a2, 0x800e
    lw      $a2, -0x5758($a2)
    addiu   $s0, $s0, 0x8
    lui     $a1, 0x801a
    blez    $a2, branch_0x801fa418
    or      $s7, $zero, $zero
    lui     $at, 0x434e
    mtc1    $at, $fp
    lui     $at, 0x42c0
    mtc1    $at, $gp
    lui     $at, 0x433e
    mtc1    $at, $k0
    lui     $at, 0x4320
    mtc1    $at, $s6
    lw      $a1, -0x7fb0($a1)
    addiu   $t5, $zero, 0x1
    lui     $a0, 0xf600
branch_0x801fa2d4:
    blez    $a1, branch_0x801fa404
    or      $s3, $zero, $zero
    sll     $t8, $s7, 2
    addu    $t8, $t8, $s7
    lui     $t9, 0x8023
    addiu   $t9, $t9, 0x8948
    sll     $t8, $t8, 4
    addu    $s1, $t8, $t9
branch_0x801fa2f4:
    lw      $t6, 0x10($s1)
    addiu   $s3, $s3, 0x14
    sll     $v1, $a1, 2
    bnez    $t6, branch_0x801fa314
    or      $v0, $s0, $zero
    addu    $v1, $v1, $a1
    b       branch_0x801fa3f8
    sll     $v1, $v1, 2
branch_0x801fa314:
    bne     $t5, $a2, branch_0x801fa344
    addiu   $s0, $s0, 0x8
    lwc1    $f4, 0x0($s1)
    lwc1    $f10, 0x4($s1)
    add.s   $f6, $f4, $f22
    add.s   $f16, $f10, $f26
    trunc.w.s   $f8, $f6
    trunc.w.s   $f18, $f16
    mfc1    $t0, $t0
    mfc1    $t1, $s2
    b       branch_0x801fa39c
    addiu   $t9, $t0, 0xa
branch_0x801fa344:
    bnezl   $s7, branch_0x801fa378
    lwc1    $f4, 0x0($s1)
    lwc1    $f4, 0x0($s1)
    lwc1    $f10, 0x4($s1)
    add.s   $f6, $f4, $f22
    add.s   $f16, $f10, $f28
    trunc.w.s   $f8, $f6
    trunc.w.s   $f18, $f16
    mfc1    $t0, $t0
    mfc1    $t1, $s2
    b       branch_0x801fa39c
    addiu   $t9, $t0, 0xa

.globl Function_0x801fa374
Function_0x801fa374: # 0x801fa374
    lwc1    $f4, 0x0($s1)
branch_0x801fa378:
    lwc1    $f10, 0x4($s1)
    add.s   $f6, $f4, $f22
    add.s   $f16, $f10, $f30
    trunc.w.s   $f8, $f6
    trunc.w.s   $f18, $f16
    mfc1    $t0, $t0
    mfc1    $t1, $s2
    nop
    addiu   $t9, $t0, 0xa
branch_0x801fa39c:
    andi    $t6, $t9, 0x3ff
    sll     $t7, $t6, 14
    addiu   $t9, $t1, 0xa
    andi    $t6, $t9, 0x3ff
    or      $t8, $t7, $a0
    sll     $t7, $t6, 2
    or      $t9, $t8, $t7
    addiu   $t6, $t0, 0xfff6
    andi    $t8, $t6, 0x3ff
    sw      $t9, 0x0($v0)
    addiu   $t9, $t1, 0xfff6
    andi    $t6, $t9, 0x3ff
    sll     $t7, $t8, 14
    sll     $t8, $t6, 2
    or      $t9, $t7, $t8
    lui     $a1, 0x801a
    sw      $t9, 0x4($v0)
    lw      $a1, -0x7fb0($a1)
    lui     $a2, 0x800e
    lw      $a2, -0x5758($a2)
    sll     $v1, $a1, 2
    addu    $v1, $v1, $a1
    sll     $v1, $v1, 2
branch_0x801fa3f8:
    slt     $at, $s3, $v1
    bnez    $at, branch_0x801fa2f4
    addiu   $s1, $s1, 0x14
branch_0x801fa404:
    addiu   $s7, $s7, 0x1
    slt     $at, $s7, $a2
    bnez    $at, branch_0x801fa2d4
    nop
    or      $s7, $zero, $zero
branch_0x801fa418:
    or      $v0, $s0, $zero
    lui     $t7, 0x101
    addiu   $t7, $t7, 0x47c8
    addiu   $s0, $s0, 0x8
    lui     $t6, 0x600
    sw      $t6, 0x0($v0)
    sw      $t7, 0x4($v0)
    or      $v1, $s0, $zero
    lui     $t8, 0xfb00
    sw      $t8, 0x0($v1)
    lui     $t8, 0x8023
    lui     $t9, 0x8023
    lw      $t6, -0x7794($t9)
    lw      $t8, -0x7790($t8)
    addiu   $s0, $s0, 0x8
    sll     $t7, $t6, 24
    andi    $t9, $t8, 0xff
    sll     $t6, $t9, 16
    lui     $t9, 0x8023
    lw      $t9, -0x778c($t9)
    or      $t8, $t7, $t6
    or      $a0, $s0, $zero
    andi    $t7, $t9, 0xff
    sll     $t6, $t7, 8
    or      $t9, $t8, $t6
    ori     $t7, $t9, 0xff
    sw      $t7, 0x4($v1)
    lui     $t6, 0x104
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    addiu   $t6, $t6, 0x48d0
    lui     $t8, 0xfd70
    sw      $t8, 0x0($a0)
    sw      $t6, 0x4($a0)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    lui     $t9, 0xf570
    sw      $t9, 0x0($a1)
    sw      $t7, 0x4($a1)
    addiu   $s0, $s0, 0x8
    or      $a2, $s0, $zero
    addiu   $s0, $s0, 0x8
    lui     $t8, 0xe600
    sw      $t8, 0x0($a2)
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($a2)
    lui     $t9, 0x70b
    lui     $t6, 0xf300
    sw      $t6, 0x0($v0)
    ori     $t9, $t9, 0xf400
    or      $v1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $t9, 0x4($v0)
    or      $a0, $s0, $zero
    lui     $t7, 0xe700
    sw      $t7, 0x0($v1)
    sw      $zero, 0x4($v1)
    lui     $t6, 0x8
    lui     $t8, 0xf568
    ori     $t8, $t8, 0x400
    ori     $t6, $t6, 0x200
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    sw      $t6, 0x4($a0)
    sw      $t8, 0x0($a0)
    lui     $t7, 0x3
    lui     $at, 0x4320
    ori     $t7, $t7, 0xc05c
    addiu   $s0, $s0, 0x8
    lui     $t9, 0xf200
    mtc1    $at, $s6
    sw      $t9, 0x0($a1)
    sw      $t7, 0x4($a1)
    or      $a2, $s0, $zero
    lui     $t8, 0x103
    lui     $t6, 0x500
    lui     $at, 0x433e
    addiu   $t6, $t6, 0x4040
    ori     $t8, $t8, 0x40
    mtc1    $at, $k0
    sw      $t8, 0x0($a2)
    sw      $t6, 0x4($a2)
    lui     $at, 0x42c0
    lui     $a2, 0x800e
    lw      $a2, -0x5758($a2)
    mtc1    $at, $gp
    lui     $at, 0x434e
    mtc1    $at, $fp
    addiu   $t5, $zero, 0x1
    blez    $a2, branch_0x801fa798
    addiu   $s0, $s0, 0x8
    lui     $at, 0x3f80
    lui     $a1, 0x801a
    lui     $fp, 0x102
    lui     $s6, 0x500
    lui     $s5, 0x801b
    lui     $s2, 0x801b
    mtc1    $at, $t8
    mtc1    $zero, $s4
    addiu   $s2, $s2, 0xe6b0
    addiu   $s5, $s5, 0xe6a8
    addiu   $s6, $s6, 0x0
    ori     $fp, $fp, 0x40
    lw      $a1, -0x7fb0($a1)
branch_0x801fa5bc:
    blez    $a1, branch_0x801fa784
    or      $s3, $zero, $zero
    sll     $t9, $s7, 2
    addu    $t9, $t9, $s7
    lui     $t7, 0x8023
    addiu   $t7, $t7, 0x8948
    sll     $t9, $t9, 4
    addu    $s1, $t9, $t7
branch_0x801fa5dc:
    lw      $t8, 0x10($s1)
    sll     $a0, $a1, 2
    addu    $a0, $a0, $a1
    bnez    $t8, branch_0x801fa5f8
    lui     $s4, 0x101
    b       branch_0x801fa774
    sll     $a0, $a0, 2
branch_0x801fa5f8:
    bne     $t5, $a2, branch_0x801fa628
    addiu   $s4, $s4, 0x49f8
    lwc1    $f4, 0x0($s1)
    lwc1    $f10, 0x4($s1)
    add.s   $f6, $f4, $f22
    add.s   $f16, $f10, $f26
    trunc.w.s   $f8, $f6
    trunc.w.s   $f18, $f16
    mfc1    $t0, $t0
    mfc1    $t1, $s2
    b       branch_0x801fa680
    mtc1    $t0, $a0
branch_0x801fa628:
    bnezl   $s7, branch_0x801fa65c
    lwc1    $f4, 0x0($s1)
    lwc1    $f4, 0x0($s1)
    lwc1    $f10, 0x4($s1)
    add.s   $f6, $f4, $f22
    add.s   $f16, $f10, $f28
    trunc.w.s   $f8, $f6
    trunc.w.s   $f18, $f16
    mfc1    $t0, $t0
    mfc1    $t1, $s2
    b       branch_0x801fa680
    mtc1    $t0, $a0

.globl Function_0x801fa658
Function_0x801fa658: # 0x801fa658
    lwc1    $f4, 0x0($s1)
branch_0x801fa65c:
    lwc1    $f10, 0x4($s1)
    add.s   $f6, $f4, $f22
    add.s   $f16, $f10, $f30
    trunc.w.s   $f8, $f6
    trunc.w.s   $f18, $f16
    mfc1    $t0, $t0
    mfc1    $t1, $s2
    nop
    mtc1    $t0, $a0
branch_0x801fa680:
    mtc1    $t1, $a2
    lw      $t8, 0x0($s2)
    cvt.s.w $f4, $f4
    lw      $t7, 0x0($s5)
    sll     $t6, $t8, 6
    mfc1    $a3, $s4
    addu    $a0, $t7, $t6
    cvt.s.w $f6, $f6
    mfc1    $a1, $a0
    addiu   $a0, $a0, 0x4140
    mfc1    $a2, $a2
    jal     Function_0x801edd8c
    nop
    or      $v0, $s0, $zero
    sw      $fp, 0x0($v0)
    lw      $t9, 0x0($s2)
    mfc1    $a2, $s4
    mfc1    $a3, $s4
    sll     $t8, $t9, 6
    addu    $t7, $s6, $t8
    addiu   $t6, $t7, 0x4140
    sw      $t6, 0x4($v0)
    lw      $t9, 0x0($s2)
    lwc1    $f8, 0x8($s1)
    lw      $t7, 0x0($s5)
    addiu   $t8, $t9, 0x1
    neg.s   $f10, $f8
    sll     $t9, $t8, 6
    mfc1    $a1, $t2
    addu    $a0, $t7, $t9
    sw      $t8, 0x0($s2)
    addiu   $s0, $s0, 0x8
    addiu   $a0, $a0, 0x4140
    jal     Function_0x801edfb8
    swc1    $f24, 0x10($sp)
    lui     $t8, 0x100
    ori     $t8, $t8, 0x40
    or      $v0, $s0, $zero
    sw      $t8, 0x0($v0)
    lw      $t6, 0x0($s2)
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    sll     $t7, $t6, 6
    addu    $t9, $s6, $t7
    addiu   $t8, $t9, 0x4140
    sw      $t8, 0x4($v0)
    lw      $t6, 0x0($s2)
    lui     $t9, 0x600
    lui     $a1, 0x801a
    addiu   $t7, $t6, 0x1
    sw      $t7, 0x0($s2)
    sw      $s4, 0x4($v1)
    sw      $t9, 0x0($v1)
    lw      $a1, -0x7fb0($a1)
    lui     $a2, 0x800e
    lw      $a2, -0x5758($a2)
    sll     $a0, $a1, 2
    addu    $a0, $a0, $a1
    sll     $a0, $a0, 2
    addiu   $t5, $zero, 0x1
    addiu   $s0, $s0, 0x8
branch_0x801fa774:
    addiu   $s3, $s3, 0x14
    slt     $at, $s3, $a0
    bnez    $at, branch_0x801fa5dc
    addiu   $s1, $s1, 0x14
branch_0x801fa784:
    addiu   $s7, $s7, 0x1
    slt     $at, $s7, $a2
    bnez    $at, branch_0x801fa5bc
    nop
    or      $s7, $zero, $zero
branch_0x801fa798:
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    lui     $t8, 0xe700
    sw      $t8, 0x0($v0)
    or      $v1, $s0, $zero
    lui     $t6, 0xba00
    sw      $zero, 0x4($v0)
    ori     $t6, $t6, 0x1301
    addiu   $s0, $s0, 0x8
    sw      $t6, 0x0($v1)
    or      $a0, $s0, $zero
    sw      $zero, 0x4($v1)
    lui     $t7, 0xfcff
    lui     $t9, 0xfffc
    ori     $t9, $t9, 0xf279
    ori     $t7, $t7, 0xffff
    addiu   $s0, $s0, 0x8
    sw      $t7, 0x0($a0)
    sw      $t9, 0x4($a0)
    or      $a1, $s0, $zero
    lui     $t6, 0x55
    lui     $t8, 0xb900
    ori     $t8, $t8, 0x31d
    ori     $t6, $t6, 0x2048
    sw      $t6, 0x4($a1)
    sw      $t8, 0x0($a1)
    lui     $a2, 0x800e
    lw      $a2, -0x5758($a2)
    addiu   $s0, $s0, 0x8
    lui     $a1, 0x801a
    blez    $a2, branch_0x801faad0
    lui     $fp, 0x718
    lui     $s5, 0x8022
    lui     $s3, 0x800d
    lui     $s2, 0x800d
    lui     $t4, 0x801d
    addiu   $t4, $t4, 0xe454
    addiu   $s2, $s2, 0x465c
    addiu   $s3, $s3, 0x4660
    addiu   $s5, $s5, 0x7738
    lw      $a1, -0x7fb0($a1)
    ori     $fp, $fp, 0xf19a
    lui     $s6, 0xf510
    lui     $s4, 0xfd10
    addiu   $ra, $zero, 0x2
branch_0x801fa84c:
    blez    $a1, branch_0x801faac0
    or      $a3, $zero, $zero
    sll     $t7, $s7, 2
    addu    $t7, $t7, $s7
    lui     $t9, 0x8023
    addiu   $t9, $t9, 0x8948
    sll     $t7, $t7, 4
    addu    $s1, $t7, $t9
branch_0x801fa86c:
    lw      $t8, 0x10($s1)
    sll     $t6, $a3, 2
    subu    $t6, $t6, $a3
    beqz    $t8, branch_0x801faab0
    or      $t2, $zero, $zero
    sll     $t6, $t6, 3
    subu    $t6, $t6, $a3
    sll     $t6, $t6, 3
    addu    $t6, $t6, $a3
    sll     $t6, $t6, 2
    subu    $t6, $t6, $a3
    lui     $t7, 0x8019
    addiu   $t7, $t7, 0x23f0
    sll     $t6, $t6, 3
    bne     $t5, $a2, branch_0x801fa8d4
    addu    $t3, $t6, $t7
    lwc1    $f16, 0x0($s1)
    lwc1    $f6, 0x4($s1)
    add.s   $f18, $f16, $f22
    add.s   $f8, $f6, $f26
    trunc.w.s   $f4, $f18
    trunc.w.s   $f10, $f8
    mfc1    $t0, $a0
    mfc1    $t1, $t2
    b       branch_0x801fa928
    nop
branch_0x801fa8d4:
    bnezl   $s7, branch_0x801fa908
    lwc1    $f16, 0x0($s1)
    lwc1    $f16, 0x0($s1)
    lwc1    $f6, 0x4($s1)
    add.s   $f18, $f16, $f22
    add.s   $f8, $f6, $f28
    trunc.w.s   $f4, $f18
    trunc.w.s   $f10, $f8
    mfc1    $t0, $a0
    mfc1    $t1, $t2
    b       branch_0x801fa928
    nop

.globl Function_0x801fa904
Function_0x801fa904: # 0x801fa904
    lwc1    $f16, 0x0($s1)
branch_0x801fa908:
    lwc1    $f6, 0x4($s1)
    add.s   $f18, $f16, $f22
    add.s   $f8, $f6, $f30
    trunc.w.s   $f4, $f18
    trunc.w.s   $f10, $f8
    mfc1    $t0, $a0
    mfc1    $t1, $t2
    nop
branch_0x801fa928:
    bne     $ra, $a2, branch_0x801fa964
    or      $v0, $s0, $zero
    lw      $t6, 0x0($s2)
    bnel    $a3, $t6, branch_0x801fa94c
    lw      $t9, 0x0($s3)
    lh      $t7, 0x0($t4)
    bnezl   $t7, branch_0x801fa964
    addiu   $t2, $zero, 0x4
    lw      $t9, 0x0($s3)
branch_0x801fa94c:
    bnel    $a3, $t9, branch_0x801fa968
    sw      $s4, 0x0($v0)
    lh      $t8, 0x2($t4)
    beqzl   $t8, branch_0x801fa968
    sw      $s4, 0x0($v0)
    addiu   $t2, $zero, 0x4
branch_0x801fa964:
    sw      $s4, 0x0($v0)
branch_0x801fa968:
    lw      $t6, 0xb68($t3)
    sll     $t8, $t2, 2
    addiu   $s0, $s0, 0x8
    sll     $t7, $t6, 2
    addu    $t9, $s5, $t7
    addu    $t6, $t9, $t8
    lw      $t7, 0x0($t6)
    lui     $t9, 0x708
    or      $v1, $s0, $zero
    sw      $t7, 0x4($v0)
    addiu   $s0, $s0, 0x8
    ori     $t9, $t9, 0x200
    sw      $t9, 0x4($v1)
    or      $a0, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $s6, 0x0($v1)
    lui     $t8, 0xe600
    sw      $t8, 0x0($a0)
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($a0)
    or      $a2, $s0, $zero
    lui     $t6, 0xf300
    sw      $t6, 0x0($a1)
    addiu   $s0, $s0, 0x8
    sw      $fp, 0x4($a1)
    or      $v0, $s0, $zero
    lui     $t7, 0xe700
    sw      $t7, 0x0($a2)
    sw      $zero, 0x4($a2)
    lui     $t8, 0x8
    lui     $t9, 0xf510
    ori     $t9, $t9, 0xa00
    ori     $t8, $t8, 0x200
    sw      $t8, 0x4($v0)
    sw      $t9, 0x0($v0)
    addiu   $s0, $s0, 0x8
    addiu   $t0, $t0, 0xfffb
    or      $v1, $s0, $zero
    lui     $t7, 0x4
    lui     $t6, 0xf200
    addiu   $t9, $t0, 0xa
    sw      $t6, 0x0($v1)
    ori     $t7, $t7, 0xc04c
    sll     $t8, $t9, 2
    sw      $t7, 0x4($v1)
    andi    $t6, $t8, 0xfff
    addiu   $t1, $t1, 0xfffb
    sll     $t7, $t6, 12
    addiu   $t8, $t1, 0xa
    lui     $at, 0xe400
    or      $t9, $t7, $at
    sll     $t6, $t8, 2
    andi    $t7, $t6, 0xfff
    addiu   $s0, $s0, 0x8
    or      $t8, $t9, $t7
    or      $a0, $s0, $zero
    sll     $t6, $t0, 2
    andi    $t9, $t6, 0xfff
    sw      $t8, 0x0($a0)
    sll     $t8, $t1, 2
    andi    $t6, $t8, 0xfff
    sll     $t7, $t9, 12
    addiu   $s0, $s0, 0x8
    or      $v0, $s0, $zero
    or      $t9, $t7, $t6
    sw      $t9, 0x4($a0)
    addiu   $s0, $s0, 0x8
    lui     $t8, 0xb300
    sw      $t8, 0x0($v0)
    or      $v1, $s0, $zero
    sw      $zero, 0x4($v0)
    lui     $t6, 0x800
    ori     $t6, $t6, 0x800
    lui     $t7, 0xb200
    sw      $t7, 0x0($v1)
    sw      $t6, 0x4($v1)
    lui     $a2, 0x800e
    lui     $a1, 0x801a
    lw      $a1, -0x7fb0($a1)
    lw      $a2, -0x5758($a2)
    addiu   $s0, $s0, 0x8
branch_0x801faab0:
    addiu   $a3, $a3, 0x1
    slt     $at, $a3, $a1
    bnez    $at, branch_0x801fa86c
    addiu   $s1, $s1, 0x14
branch_0x801faac0:
    addiu   $s7, $s7, 0x1
    slt     $at, $s7, $a2
    bnez    $at, branch_0x801fa84c
    nop
branch_0x801faad0:
    lw      $t9, 0x78($sp)
    sw      $s0, 0x0($t9)
    lw      $ra, 0x74($sp)
    lw      $fp, 0x70($sp)
    lw      $s7, 0x6c($sp)
    lw      $s6, 0x68($sp)
    lw      $s5, 0x64($sp)
    lw      $s4, 0x60($sp)
    lw      $s3, 0x5c($sp)
    lw      $s2, 0x58($sp)
    lw      $s1, 0x54($sp)
    lw      $s0, 0x50($sp)
    ldc1    $30, 0x48($29)
    ldc1    $28, 0x40($29)
    ldc1    $26, 0x38($29)
    ldc1    $24, 0x30($29)
    ldc1    $22, 0x28($29)
    ldc1    $20, 0x20($29)
    jr      $ra
    addiu   $sp, $sp, 0x78

.globl Function_0x801fab20
Function_0x801fab20: # 0x801fab20
    addiu   $sp, $sp, 0xfff0
    subu    $v1, $a2, $a0
    subu    $t1, $a3, $a1
    sw      $s1, 0xc($sp)
    sw      $s0, 0x8($sp)
    or      $v0, $v1, $zero
    bnez    $v1, branch_0x801fab48
    or      $t0, $t1, $zero
    b       branch_0x801fab5c
    or      $t2, $zero, $zero
branch_0x801fab48:
    blez    $v1, branch_0x801fab58
    addiu   $t3, $zero, 0xffff
    b       branch_0x801fab58
    addiu   $t3, $zero, 0x1
branch_0x801fab58:
    or      $t2, $t3, $zero
branch_0x801fab5c:
    bnez    $t1, branch_0x801fab6c
    lw      $t5, 0x24($sp)
    b       branch_0x801fab80
    or      $t4, $zero, $zero
branch_0x801fab6c:
    blez    $t1, branch_0x801fab7c
    addiu   $t3, $zero, 0xffff
    b       branch_0x801fab7c
    addiu   $t3, $zero, 0x1
branch_0x801fab7c:
    or      $t4, $t3, $zero
branch_0x801fab80:
    bgez    $v1, branch_0x801fab8c
    or      $t3, $zero, $zero
    subu    $v0, $zero, $v1
branch_0x801fab8c:
    bgez    $t1, branch_0x801fab98
    or      $v1, $a0, $zero
    subu    $t0, $zero, $t1
branch_0x801fab98:
    sw      $a0, 0x0($t5)
    lw      $t6, 0x28($sp)
    slt     $at, $v0, $t0
    or      $t1, $a1, $zero
    addiu   $s0, $zero, 0x1
    bnez    $at, branch_0x801fac00
    sw      $a1, 0x0($t6)
    beq     $a0, $a2, branch_0x801fac48
    sll     $a0, $s0, 2
    addu    $a1, $t5, $a0
    addu    $s1, $t6, $a0
branch_0x801fabc4:
    addu    $t3, $t3, $t0
    sll     $t7, $t3, 1
    slt     $at, $t7, $v0
    bnez    $at, branch_0x801fabe0
    addu    $v1, $v1, $t2
    subu    $t3, $t3, $v0
    addu    $t1, $t1, $t4
branch_0x801fabe0:
    sw      $v1, 0x0($a1)
    sw      $t1, 0x0($s1)
    addiu   $s0, $s0, 0x1
    addiu   $a1, $a1, 0x4
    bne     $v1, $a2, branch_0x801fabc4
    addiu   $s1, $s1, 0x4
    b       branch_0x801fac4c
    lw      $t6, 0x20($sp)
branch_0x801fac00:
    beq     $a1, $a3, branch_0x801fac48
    lw      $t8, 0x28($sp)
    sll     $a0, $s0, 2
    addu    $a1, $t5, $a0
    addu    $s1, $t8, $a0
branch_0x801fac14:
    addu    $t3, $t3, $v0
    sll     $t9, $t3, 1
    slt     $at, $t9, $t0
    bnez    $at, branch_0x801fac30
    addu    $t1, $t1, $t4
    subu    $t3, $t3, $t0
    addu    $v1, $v1, $t2
branch_0x801fac30:
    sw      $v1, 0x0($a1)
    sw      $t1, 0x0($s1)
    addiu   $s0, $s0, 0x1
    addiu   $a1, $a1, 0x4
    bne     $t1, $a3, branch_0x801fac14
    addiu   $s1, $s1, 0x4
branch_0x801fac48:
    lw      $t6, 0x20($sp)
branch_0x801fac4c:
    sw      $s0, 0x0($t6)
    lw      $s1, 0xc($sp)
    lw      $s0, 0x8($sp)
    jr      $ra
    addiu   $sp, $sp, 0x10

.globl Function_0x801fac60
Function_0x801fac60: # 0x801fac60
    jr      $ra
    nop

.globl Function_0x801fac68
Function_0x801fac68: # 0x801fac68
    jr      $ra
    sw      $a0, 0x0($sp)

.globl Function_0x801fac70
Function_0x801fac70: # 0x801fac70
    addiu   $sp, $sp, 0xff38
    lui     $t3, 0x800e
    lw      $t3, -0x5758($t3)
    sw      $ra, 0x94($sp)
    sw      $fp, 0x90($sp)
    sw      $s7, 0x8c($sp)
    sw      $s6, 0x88($sp)
    sw      $s5, 0x84($sp)
    sw      $s4, 0x80($sp)
    sw      $s3, 0x7c($sp)
    sw      $s2, 0x78($sp)
    sw      $s1, 0x74($sp)
    sw      $s0, 0x70($sp)
    sdc1    $24, 0x68($29)
    sdc1    $22, 0x60($29)
    sdc1    $20, 0x58($29)
    sw      $a0, 0xc8($sp)
    lw      $s5, 0x0($a0)
    blez    $t3, branch_0x801fb1fc
    or      $s6, $zero, $zero
    lui     $at, 0x3f80
    mtc1    $at, $t8
    lui     $at, 0x4040
    mtc1    $at, $s6
    lui     $at, 0x8022
    lui     $s7, 0x8023
    lui     $v0, 0x801c
    addiu   $v0, $v0, 0x2698
    addiu   $s7, $s7, 0x8920
    lwc1    $f20, 0x7814($at)
    or      $s4, $zero, $zero
    addiu   $v1, $zero, 0x378
branch_0x801facf0:
    bnez    $s6, branch_0x801fad14
    lui     $t9, 0x800d
    lui     $t7, 0x800d
    lw      $t7, 0x465c($t7)
    multu   $t7, $v1
    mflo    $t8
    addu    $s3, $v0, $t8
    b       branch_0x801fad2c
    lw      $t7, 0x308($s3)
branch_0x801fad14:
    lw      $t9, 0x4660($t9)
    multu   $t9, $v1
    mflo    $t6
    addu    $s3, $v0, $t6
    nop
    lw      $t7, 0x308($s3)
branch_0x801fad2c:
    lui     $at, 0x8023
    addiu   $t8, $zero, 0x28
    beqz    $t7, branch_0x801fad5c
    addu    $at, $at, $s4
    sw      $zero, 0x308($s3)
    sw      $t8, 0x0($s7)
    sw      $zero, -0x76d0($at)
    lui     $at, 0x8023
    addu    $at, $at, $s4
    lui     $t3, 0x800e
    lw      $t3, -0x5758($t3)
    sw      $zero, -0x76d8($at)
branch_0x801fad5c:
    lw      $t1, 0x0($s7)
    lui     $t6, 0x8023
    addiu   $t6, $t6, 0x8930
    blez    $t1, branch_0x801fb1e8
    addu    $a2, $s4, $t6
    lw      $a0, 0x0($a2)
    addiu   $s0, $zero, 0x3
    lui     $t8, 0x8023
    subu    $t7, $s0, $a0
    mtc1    $t7, $a0
    addiu   $t8, $t8, 0x8928
    addu    $a3, $s4, $t8
    cvt.s.w $f6, $f4
    lw      $t2, 0x0($a3)
    addiu   $t9, $t1, 0xffff
    sw      $t9, 0x0($s7)
    multu   $t2, $s0
    lui     $t9, 0x8022
    div.s   $f0, $f6, $f22
    addiu   $t9, $t9, 0x7504
    lui     $at, 0x4f80
    mflo    $a1
    addu    $v0, $a1, $t9
    lbu     $t6, 0x3($v0)
    mtc1    $t6, $t0
    nop
    cvt.s.w $f10, $f8
    bgez    $t6, branch_0x801faddc
    sub.s   $f2, $f24, $f0
    mtc1    $at, $s0
    nop
    add.s   $f10, $f10, $f16
branch_0x801faddc:
    lbu     $t7, 0x0($v0)
    mul.s   $f18, $f10, $f2
    lui     $at, 0x4f80
    mtc1    $t7, $a0
    bgez    $t7, branch_0x801fae00
    cvt.s.w $f6, $f4
    mtc1    $at, $t0
    nop
    add.s   $f6, $f6, $f8
branch_0x801fae00:
    mul.s   $f16, $f6, $f0
    lbu     $t9, 0x4($v0)
    lui     $at, 0x4f80
    mtc1    $t9, $t0
    add.s   $f10, $f18, $f16
    cvt.s.w $f6, $f8
    trunc.w.s   $f4, $f10
    mfc1    $t4, $a0
    bgezl   $t9, branch_0x801fae38
    lbu     $t6, 0x1($v0)
    mtc1    $at, $s2
    nop
    add.s   $f6, $f6, $f18
    lbu     $t6, 0x1($v0)
branch_0x801fae38:
    mul.s   $f16, $f6, $f2
    lui     $at, 0x4f80
    mtc1    $t6, $t2
    bgez    $t6, branch_0x801fae58
    cvt.s.w $f4, $f10
    mtc1    $at, $t0
    nop
    add.s   $f4, $f4, $f8
branch_0x801fae58:
    mul.s   $f18, $f4, $f0
    lbu     $t8, 0x5($v0)
    lui     $at, 0x4f80
    mtc1    $t8, $t0
    add.s   $f6, $f16, $f18
    cvt.s.w $f4, $f8
    trunc.w.s   $f10, $f6
    mfc1    $t5, $t2
    bgezl   $t8, branch_0x801fae90
    lbu     $t9, 0x2($v0)
    mtc1    $at, $s0
    nop
    add.s   $f4, $f4, $f16
    lbu     $t9, 0x2($v0)
branch_0x801fae90:
    mul.s   $f18, $f4, $f2
    lui     $at, 0x4f80
    mtc1    $t9, $a2
    andi    $v0, $t4, 0xff
    bgez    $t9, branch_0x801faeb4
    cvt.s.w $f10, $f6
    mtc1    $at, $t0
    nop
    add.s   $f10, $f10, $f8
branch_0x801faeb4:
    mul.s   $f16, $f10, $f0
    lui     $t7, 0x8022
    addiu   $t7, $t7, 0x7514
    addu    $v1, $a1, $t7
    lbu     $t8, 0x3($v1)
    lui     $at, 0x4f80
    or      $a1, $zero, $zero
    add.s   $f4, $f18, $f16
    mtc1    $t8, $t0
    trunc.w.s   $f6, $f4
    cvt.s.w $f10, $f8
    mfc1    $ra, $a2
    bgezl   $t8, branch_0x801faefc
    lbu     $t9, 0x0($v1)
    mtc1    $at, $s2
    nop
    add.s   $f10, $f10, $f18
    lbu     $t9, 0x0($v1)
branch_0x801faefc:
    mul.s   $f16, $f10, $f2
    lui     $at, 0x4f80
    mtc1    $t9, $a0
    andi    $t0, $ra, 0xff
    bgez    $t9, branch_0x801faf20
    cvt.s.w $f6, $f4
    mtc1    $at, $t0
    nop
    add.s   $f6, $f6, $f8
branch_0x801faf20:
    mul.s   $f18, $f6, $f0
    lbu     $t7, 0x4($v1)
    lui     $at, 0x4f80
    addiu   $t9, $t2, 0x1
    mtc1    $t7, $t0
    add.s   $f10, $f16, $f18
    cvt.s.w $f6, $f8
    trunc.w.s   $f4, $f10
    mfc1    $fp, $a0
    bgezl   $t7, branch_0x801faf5c
    lbu     $t8, 0x1($v1)
    mtc1    $at, $s0
    nop
    add.s   $f6, $f6, $f16
    lbu     $t8, 0x1($v1)
branch_0x801faf5c:
    mul.s   $f18, $f6, $f2
    lui     $at, 0x4f80
    mtc1    $t8, $t2
    andi    $t1, $fp, 0xff
    bgez    $t8, branch_0x801faf80
    cvt.s.w $f4, $f10
    mtc1    $at, $t0
    nop
    add.s   $f4, $f4, $f8
branch_0x801faf80:
    mul.s   $f16, $f4, $f0
    lbu     $t7, 0x5($v1)
    lui     $at, 0x4f80
    mtc1    $t7, $t0
    add.s   $f6, $f18, $f16
    cvt.s.w $f4, $f8
    trunc.w.s   $f10, $f6
    mfc1    $t6, $t2
    bgez    $t7, branch_0x801fafb4
    sw      $t6, 0x9c($sp)
    mtc1    $at, $s2
    nop
    add.s   $f4, $f4, $f18
branch_0x801fafb4:
    lbu     $t8, 0x2($v1)
    mul.s   $f16, $f4, $f2
    lui     $at, 0x4f80
    mtc1    $t8, $a2
    andi    $v1, $t5, 0xff
    bgez    $t8, branch_0x801fafdc
    cvt.s.w $f10, $f6
    mtc1    $at, $t0
    nop
    add.s   $f10, $f10, $f8
branch_0x801fafdc:
    mul.s   $f18, $f10, $f0
    addiu   $t7, $a0, 0x1
    sw      $t7, 0x0($a2)
    slti    $at, $t7, 0x3
    andi    $t7, $t9, 0x3
    or      $a0, $s5, $zero
    add.s   $f4, $f16, $f18
    trunc.w.s   $f6, $f4
    mfc1    $t6, $a2
    bnez    $at, branch_0x801fb014
    sw      $t6, 0x98($sp)
    sw      $t9, 0x0($a3)
    sw      $zero, 0x0($a2)
    sw      $t7, 0x0($a3)
branch_0x801fb014:
    lui     $t9, 0x801d
    lw      $t9, -0x1b78($t9)
    lw      $t8, 0x0($s3)
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x77c0
    slt     $at, $t8, $t9
    beqz    $at, branch_0x801fb130
    addiu   $t7, $zero, 0x2
    addiu   $at, $zero, 0x1
    bne     $t3, $at, branch_0x801fb054
    or      $a0, $s5, $zero
    addiu   $s1, $zero, 0x74
    addiu   $s0, $zero, 0x46
    addiu   $s2, $zero, 0x3c
    b       branch_0x801fb070
    mov.s   $f0, $f20
branch_0x801fb054:
    addiu   $s1, $zero, 0x7d
    addiu   $s2, $zero, 0x30
    bnez    $s6, branch_0x801fb06c
    mov.s   $f0, $f24
    b       branch_0x801fb070
    addiu   $s0, $zero, 0x28
branch_0x801fb06c:
    addiu   $s0, $zero, 0x96
branch_0x801fb070:
    lbu     $t2, 0x9f($sp)
    lbu     $t3, 0x9b($sp)
    andi    $t0, $ra, 0xff
    lui     $a2, 0x8022
    addiu   $t6, $zero, 0x2
    andi    $v0, $t4, 0xff
    andi    $v1, $t5, 0xff
    andi    $t1, $fp, 0xff
    sw      $t1, 0x30($sp)
    sw      $t1, 0x3c($sp)
    sw      $v1, 0x1c($sp)
    sw      $v1, 0x28($sp)
    sw      $v0, 0x18($sp)
    sw      $v0, 0x24($sp)
    sw      $t6, 0x14($sp)
    addiu   $a2, $a2, 0x77b8
    sw      $t0, 0x20($sp)
    sw      $t0, 0x2c($sp)
    or      $a1, $zero, $zero
    or      $a3, $s1, $zero
    sw      $s0, 0x10($sp)
    swc1    $f0, 0x48($sp)
    sw      $t2, 0x34($sp)
    sw      $t2, 0x40($sp)
    sw      $t3, 0x38($sp)
    jal     Function_0x801e913c
    sw      $t3, 0x44($sp)
    lui     $a0, 0x8023
    lui     $a1, 0x8022
    or      $s5, $v0, $zero
    addiu   $a1, $a1, 0x77bc
    addiu   $a0, $a0, 0x8ab8
    jal     Function_0x800c9f70
    lw      $a2, 0x0($s3)
    lui     $a2, 0x8023
    addiu   $a2, $a2, 0x8ab8
    or      $a0, $s5, $zero
    or      $a1, $zero, $zero
    addu    $a3, $s1, $s2
    jal     Function_0x801e95e0
    sw      $s0, 0x10($sp)
    or      $s5, $v0, $zero
    lui     $v0, 0x801c
    lui     $t3, 0x800e
    lw      $t3, -0x5758($t3)
    addiu   $v0, $v0, 0x2698
    b       branch_0x801fb1e8
    addiu   $v1, $zero, 0x378
branch_0x801fb130:
    addiu   $at, $zero, 0x1
    bne     $t3, $at, branch_0x801fb150
    addiu   $s1, $zero, 0x64
    addiu   $s1, $zero, 0x52
    addiu   $s0, $zero, 0x46
    addiu   $s2, $zero, 0x62
    b       branch_0x801fb168
    mov.s   $f0, $f20
branch_0x801fb150:
    mov.s   $f0, $f24
    bnez    $s6, branch_0x801fb164
    addiu   $s2, $zero, 0x4d
    b       branch_0x801fb168
    addiu   $s0, $zero, 0x28
branch_0x801fb164:
    addiu   $s0, $zero, 0x96
branch_0x801fb168:
    lbu     $t2, 0x9f($sp)
    lbu     $t3, 0x9b($sp)
    or      $a3, $s1, $zero
    sw      $s0, 0x10($sp)
    sw      $t7, 0x14($sp)
    sw      $v0, 0x18($sp)
    sw      $v1, 0x1c($sp)
    sw      $t0, 0x20($sp)
    sw      $v0, 0x24($sp)
    sw      $v1, 0x28($sp)
    sw      $t0, 0x2c($sp)
    sw      $t1, 0x30($sp)
    sw      $t1, 0x3c($sp)
    swc1    $f0, 0x48($sp)
    sw      $t2, 0x34($sp)
    sw      $t2, 0x40($sp)
    sw      $t3, 0x38($sp)
    jal     Function_0x801e913c
    sw      $t3, 0x44($sp)
    lui     $a2, 0x8022
    addiu   $a2, $a2, 0x77c8
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addu    $a3, $s1, $s2
    jal     Function_0x801e95e0
    sw      $s0, 0x10($sp)
    or      $s5, $v0, $zero
    lui     $v0, 0x801c
    lui     $t3, 0x800e
    lw      $t3, -0x5758($t3)
    addiu   $v0, $v0, 0x2698
    addiu   $v1, $zero, 0x378
branch_0x801fb1e8:
    addiu   $s6, $s6, 0x1
    slt     $at, $s6, $t3
    addiu   $s4, $s4, 0x4
    bnez    $at, branch_0x801facf0
    addiu   $s7, $s7, 0x4
branch_0x801fb1fc:
    lw      $t8, 0xc8($sp)
    sw      $s5, 0x0($t8)
    lw      $ra, 0x94($sp)
    lw      $fp, 0x90($sp)
    lw      $s7, 0x8c($sp)
    lw      $s6, 0x88($sp)
    lw      $s5, 0x84($sp)
    lw      $s4, 0x80($sp)
    lw      $s3, 0x7c($sp)
    lw      $s2, 0x78($sp)
    lw      $s1, 0x74($sp)
    lw      $s0, 0x70($sp)
    ldc1    $24, 0x68($29)
    ldc1    $22, 0x60($29)
    ldc1    $20, 0x58($29)
    jr      $ra
    addiu   $sp, $sp, 0xc8

.globl Function_0x801fb240
Function_0x801fb240: # 0x801fb240
    lui     $v1, 0x8023
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x8910
    addiu   $v1, $v1, 0x88a0
    lw      $t6, 0x0($v1)
branch_0x801fb254:
    beqz    $t6, branch_0x801fb26c
    nop
    addiu   $v1, $v1, 0x1c
    sltu    $at, $v1, $v0
    bnezl   $at, branch_0x801fb254
    lw      $t6, 0x0($v1)
branch_0x801fb26c:
    lui     $t7, 0x8023
    addiu   $t7, $t7, 0x8910
    sltu    $at, $v1, $t7
    bnez    $at, branch_0x801fb288
    addiu   $t8, $zero, 0xfff8
    lui     $v1, 0x8023
    addiu   $v1, $v1, 0x88a0
branch_0x801fb288:
    sw      $a0, 0x0($v1)
    sw      $a1, 0x4($v1)
    sw      $zero, 0x10($v1)
    sw      $zero, 0xc($v1)
    sw      $zero, 0x8($v1)
    bnez    $a2, branch_0x801fb2ac
    sw      $t8, 0x14($v1)
    b       branch_0x801fb2b4
    sw      $zero, 0x18($v1)
branch_0x801fb2ac:
    addiu   $t9, $zero, 0xffe0
    sw      $t9, 0x18($v1)
branch_0x801fb2b4:
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x8ad8
    sw      $zero, 0x0($v0)
    lui     $at, 0x8023
    jr      $ra
    sw      $zero, -0x752c($at)

.globl Function_0x801fb2cc
Function_0x801fb2cc: # 0x801fb2cc
    lui     $a2, 0x8023
    addiu   $a2, $a2, 0x8ad8
    lw      $v1, 0x0($a2)
    addiu   $t7, $zero, 0x2
    lui     $at, 0x4000
    subu    $t8, $t7, $v1
    mtc1    $t8, $a0
    mtc1    $at, $t0
    addiu   $sp, $sp, 0xff48
    cvt.s.w $f6, $f4
    sw      $ra, 0x74($sp)
    sw      $fp, 0x70($sp)
    sw      $s7, 0x6c($sp)
    sw      $s6, 0x68($sp)
    sw      $s5, 0x64($sp)
    div.s   $f0, $f6, $f8
    sw      $s4, 0x60($sp)
    sw      $s3, 0x5c($sp)
    sw      $s2, 0x58($sp)
    sw      $s1, 0x54($sp)
    sw      $s0, 0x50($sp)
    sw      $a0, 0xb8($sp)
    lw      $s0, 0x0($a0)
    lui     $at, 0x3f80
    mtc1    $at, $t2
    addiu   $t7, $v1, 0x1
    or      $v0, $s0, $zero
    lui     $a3, 0x8023
    addiu   $s0, $s0, 0x8
    addiu   $a3, $a3, 0x8ad4
    slti    $at, $t7, 0x2
    or      $v1, $s0, $zero
    lw      $a1, 0x0($a3)
    sw      $t7, 0x0($a2)
    lui     $s3, 0xe700
    lui     $t8, 0xb600
    addiu   $s0, $s0, 0x8
    bnez    $at, branch_0x801fb37c
    sub.s   $f0, $f10, $f0
    addiu   $t9, $a1, 0x1
    sw      $t9, 0x0($a3)
    andi    $t7, $t9, 0x3
    sw      $zero, 0x0($a2)
    sw      $t7, 0x0($a3)
branch_0x801fb37c:
    lui     $t9, 0xf
    ori     $t9, $t9, 0x3001
    sw      $t9, 0x4($v0)
    sw      $t8, 0x0($v0)
    lui     $t6, 0xb700
    addiu   $t7, $zero, 0x4
    or      $a0, $s0, $zero
    sw      $t7, 0x4($v1)
    sw      $t6, 0x0($v1)
    lui     $t8, 0xbb00
    lui     $t9, 0x8000
    ori     $t9, $t9, 0x8000
    ori     $t8, $t8, 0x1
    sw      $t8, 0x0($a0)
    sw      $t9, 0x4($a0)
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x8
    or      $a2, $s0, $zero
    lui     $t6, 0xba00
    sw      $s3, 0x0($a1)
    sw      $zero, 0x4($a1)
    ori     $t6, $t6, 0x1402
    addiu   $s0, $s0, 0x8
    sw      $t6, 0x0($a2)
    or      $v0, $s0, $zero
    sw      $zero, 0x4($a2)
    addiu   $s0, $s0, 0x8
    lui     $t7, 0xba00
    ori     $t7, $t7, 0x1301
    or      $v1, $s0, $zero
    sw      $t7, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t8, 0xba00
    ori     $t8, $t8, 0xc02
    addiu   $s0, $s0, 0x8
    addiu   $t9, $zero, 0x2000
    sw      $t9, 0x4($v1)
    sw      $t8, 0x0($v1)
    or      $a0, $s0, $zero
    lui     $t6, 0xfc12
    ori     $t6, $t6, 0x9a25
    addiu   $s0, $s0, 0x8
    lui     $t7, 0xff37
    ori     $t7, $t7, 0xffff
    sw      $t6, 0x0($a0)
    or      $a1, $s0, $zero
    sw      $t7, 0x4($a0)
    lui     $t8, 0xb900
    lui     $t9, 0x50
    ori     $t9, $t9, 0x4240
    ori     $t8, $t8, 0x31d
    addiu   $s0, $s0, 0x8
    sw      $t8, 0x0($a1)
    sw      $t9, 0x4($a1)
    or      $a2, $s0, $zero
    lui     $t6, 0xb900
    ori     $t6, $t6, 0x2
    sw      $t6, 0x0($a2)
    sw      $zero, 0x4($a2)
    lui     $t5, 0x8023
    lui     $s6, 0x708
    addiu   $s0, $s0, 0x8
    ori     $s6, $s6, 0x200
    addiu   $t5, $t5, 0x88a0
    lw      $t4, 0xa0($sp)
    lui     $fp, 0xf300
    lui     $s7, 0xe600
    lui     $s5, 0xf570
    lui     $s4, 0xfd70
    addiu   $ra, $zero, 0xa
    lw      $t7, 0x0($t5)
branch_0x801fb49c:
    or      $v1, $s0, $zero
    beqz    $t7, branch_0x801fbbc4
    nop
    lw      $v0, 0x8($t5)
    or      $t0, $zero, $zero
    addiu   $a1, $zero, 0xbf
    slti    $at, $v0, 0x4
    beqz    $at, branch_0x801fb4dc
    sll     $a0, $v0, 8
    subu    $a0, $a0, $v0
    bgez    $a0, branch_0x801fb4d4
    sra     $t8, $a0, 2
    addiu   $at, $a0, 0x3
    sra     $t8, $at, 2
branch_0x801fb4d4:
    b       branch_0x801fb510
    or      $a0, $t8, $zero
branch_0x801fb4dc:
    slti    $at, $v0, 0x14
    bnez    $at, branch_0x801fb510
    addiu   $a0, $zero, 0xff
    subu    $a0, $zero, $v0
    sll     $t9, $a0, 8
    subu    $t9, $t9, $a0
    addiu   $a0, $t9, 0x16e9
    bgez    $a0, branch_0x801fb508
    sra     $t6, $a0, 2
    addiu   $at, $a0, 0x3
    sra     $t6, $at, 2
branch_0x801fb508:
    b       branch_0x801fb510
    or      $a0, $t6, $zero
branch_0x801fb510:
    sw      $s3, 0x0($v1)
    sw      $zero, 0x4($v1)
    lw      $v0, 0x0($t5)
    addiu   $at, $zero, 0x1
    addiu   $s0, $s0, 0x8
    beq     $v0, $at, branch_0x801fb5a4
    lui     $t8, 0x802
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x801fb5f4
    lui     $t9, 0x802
    addiu   $at, $zero, 0x3
    beq     $v0, $at, branch_0x801fb648
    lui     $t6, 0x802
    lw      $v1, 0x98($sp)
    or      $v0, $v1, $zero
    addiu   $t3, $v0, 0x7
    sra     $t8, $t3, 3
    andi    $t9, $t8, 0x1ff
    sll     $a1, $v1, 2
    sll     $t6, $t9, 9
    subu    $a1, $a1, $v1
    addiu   $s1, $v1, 0xffff
    sll     $t8, $s1, 2
    sll     $a1, $a1, 2
    addiu   $a1, $a1, 0x1
    andi    $t9, $t8, 0xfff
    sra     $t7, $a1, 1
    addiu   $a1, $t7, 0xffff
    bgez    $v0, branch_0x801fb590
    sra     $a2, $v0, 3
    addiu   $at, $v0, 0x7
    sra     $a2, $at, 3
branch_0x801fb590:
    lui     $at, 0xf568
    or      $t3, $t6, $at
    sll     $t6, $t9, 12
    b       branch_0x801fb694
    ori     $s1, $t6, 0x2c
branch_0x801fb5a4:
    addiu   $t8, $t8, 0x46d0
    lui     $at, 0xff85
    sw      $t8, 0x7c($sp)
    addiu   $t9, $zero, 0x20
    ori     $at, $at, 0xff00
    or      $v0, $s0, $zero
    andi    $t7, $a0, 0xff
    sw      $t9, 0x98($sp)
    or      $t8, $t7, $at
    lui     $t6, 0xfb00
    lui     $t3, 0xf568
    lui     $s1, 0x7
    addiu   $t4, $zero, 0x90
    sw      $t6, 0x0($v0)
    sw      $t8, 0x4($v0)
    addiu   $s0, $s0, 0x8
    ori     $s1, $s1, 0xc02c
    ori     $t3, $t3, 0x800
    b       branch_0x801fb694
    addiu   $a2, $zero, 0x4
branch_0x801fb5f4:
    addiu   $t9, $t9, 0x4858
    lui     $at, 0x64ff
    sw      $t9, 0x7c($sp)
    addiu   $t6, $zero, 0x28
    ori     $at, $at, 0x6400
    or      $v0, $s0, $zero
    andi    $t8, $a0, 0xff
    sw      $t6, 0x98($sp)
    or      $t9, $t8, $at
    lui     $t7, 0xfb00
    lui     $t3, 0xf568
    lui     $s1, 0x9
    addiu   $t4, $zero, 0x8c
    sw      $t7, 0x0($v0)
    sw      $t9, 0x4($v0)
    addiu   $s0, $s0, 0x8
    ori     $s1, $s1, 0xc02c
    ori     $t3, $t3, 0xa00
    addiu   $a1, $zero, 0xef
    b       branch_0x801fb694
    addiu   $a2, $zero, 0x5
branch_0x801fb648:
    addiu   $t6, $t6, 0x4a40
    sw      $t6, 0x7c($sp)
    addiu   $t7, $zero, 0x20
    or      $v0, $s0, $zero
    sw      $t7, 0x98($sp)
    andi    $t9, $a0, 0xff
    addiu   $at, $zero, 0x8000
    or      $t6, $t9, $at
    lui     $t8, 0xfb00
    lui     $t3, 0xf568
    lui     $s1, 0x7
    addiu   $t4, $zero, 0x90
    sw      $t8, 0x0($v0)
    sw      $t6, 0x4($v0)
    addiu   $s0, $s0, 0x8
    ori     $s1, $s1, 0xc02c
    ori     $t3, $t3, 0x800
    addiu   $a1, $zero, 0xbf
    addiu   $a2, $zero, 0x4
branch_0x801fb694:
    lw      $t7, 0xc($t5)
    lw      $t8, 0x10($t5)
    lw      $t9, 0x18($t5)
    or      $v0, $s0, $zero
    sw      $s4, 0x0($v0)
    lw      $t6, 0x7c($sp)
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $t6, 0x4($v0)
    or      $a0, $s0, $zero
    sw      $s6, 0x4($v1)
    sw      $s5, 0x0($v1)
    addiu   $s0, $s0, 0x8
    or      $s2, $s0, $zero
    sw      $zero, 0x4($a0)
    sw      $s7, 0x0($a0)
    slti    $at, $a1, 0x7ff
    addu    $a3, $t8, $t9
    addiu   $a3, $a3, 0x74
    sw      $fp, 0x0($s2)
    addiu   $s0, $s0, 0x8
    beqz    $at, branch_0x801fb6fc
    addu    $t4, $t4, $t7
    b       branch_0x801fb700
    or      $t1, $a1, $zero
branch_0x801fb6fc:
    addiu   $t1, $zero, 0x7ff
branch_0x801fb700:
    bgtz    $a2, branch_0x801fb710
    or      $v1, $s0, $zero
    b       branch_0x801fb714
    addiu   $t2, $zero, 0x1
branch_0x801fb710:
    or      $t2, $a2, $zero
branch_0x801fb714:
    bgtz    $a2, branch_0x801fb724
    addiu   $t7, $t2, 0x7ff
    b       branch_0x801fb728
    addiu   $v0, $zero, 0x1
branch_0x801fb724:
    or      $v0, $a2, $zero
branch_0x801fb728:
    div     $zero, $t7, $v0
    bnez    $v0, branch_0x801fb738
    nop
    break   0x7
branch_0x801fb738:
    addiu   $at, $zero, 0xffff
    bne     $v0, $at, branch_0x801fb750
    lui     $at, 0x8000
    bne     $t7, $at, branch_0x801fb750
    nop
    break   0x6
branch_0x801fb750:
    mflo    $t8
    andi    $t9, $t8, 0xfff
    lui     $at, 0x700
    andi    $t7, $t1, 0xfff
    sll     $t8, $t7, 12
    or      $t6, $t9, $at
    or      $t9, $t6, $t8
    sw      $t9, 0x4($s2)
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    sw      $zero, 0x4($v1)
    sw      $s3, 0x0($v1)
    lui     $t7, 0x8
    ori     $t7, $t7, 0x200
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    sw      $t7, 0x4($a0)
    sw      $t3, 0x0($a0)
    lui     $t6, 0xf200
    sw      $t6, 0x0($a1)
    sw      $s1, 0x4($a1)
    lw      $t8, 0x98($sp)
    lui     $at, 0xe400
    addiu   $s0, $s0, 0x8
    addu    $t9, $t4, $t8
    sll     $t7, $t9, 2
    andi    $t6, $t7, 0xfff
    sll     $t8, $t6, 12
    addiu   $t7, $a3, 0xc
    sll     $t6, $t7, 2
    or      $t9, $t8, $at
    andi    $t8, $t6, 0xfff
    or      $t7, $t9, $t8
    sll     $t6, $t4, 2
    or      $a2, $s0, $zero
    sw      $t7, 0x0($a2)
    andi    $t9, $t6, 0xfff
    sll     $t7, $a3, 2
    andi    $t6, $t7, 0xfff
    sll     $t8, $t9, 12
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    or      $t9, $t8, $t6
    sw      $t9, 0x4($a2)
    addiu   $s0, $s0, 0x8
    lui     $t7, 0xb300
    sw      $t7, 0x0($a0)
    or      $a1, $s0, $zero
    sw      $zero, 0x4($a0)
    lui     $t6, 0x400
    ori     $t6, $t6, 0x400
    lui     $t8, 0xb200
    sw      $t8, 0x0($a1)
    sw      $t6, 0x4($a1)
    lui     $v1, 0x8023
    addiu   $s0, $s0, 0x8
    lw      $v0, 0x4($t5)
    addiu   $v1, $v1, 0x8abc
branch_0x801fb838:
    div     $zero, $v0, $ra
    bnez    $ra, branch_0x801fb848
    nop
    break   0x7
branch_0x801fb848:
    addiu   $at, $zero, 0xffff
    bne     $ra, $at, branch_0x801fb860
    lui     $at, 0x8000
    bne     $v0, $at, branch_0x801fb860
    nop
    break   0x6
branch_0x801fb860:
    mfhi    $t9
    mflo    $v0
    sb      $t9, 0x0($v1)
    beqzl   $v0, branch_0x801fb888
    addiu   $t3, $t0, 0x1
    addiu   $t0, $t0, 0x1
    slti    $at, $t0, 0x5
    bnez    $at, branch_0x801fb838
    addiu   $v1, $v1, 0xffff
    addiu   $t3, $t0, 0x1
branch_0x801fb888:
    slti    $v1, $t3, 0x6
    bnez    $v1, branch_0x801fb898
    or      $t0, $zero, $zero
    addiu   $t3, $zero, 0x5
branch_0x801fb898:
    sll     $t7, $t3, 3
    subu    $t7, $t7, $t3
    sll     $t7, $t7, 1
    addiu   $t8, $zero, 0x130
    subu    $t6, $t8, $t7
    lw      $t8, 0xc($t5)
    lw      $t7, 0x18($t5)
    lw      $v1, 0x10($t5)
    bgez    $t6, branch_0x801fb8c8
    sra     $t9, $t6, 1
    addiu   $at, $t6, 0x1
    sra     $t9, $at, 1
branch_0x801fb8c8:
    addu    $t4, $t9, $t8
    addu    $a3, $v1, $t7
    addiu   $t4, $t4, 0x8
    blez    $t3, branch_0x801fba2c
    addiu   $a3, $a3, 0x80
    sll     $t1, $a3, 2
    lui     $t8, 0x8023
    addiu   $t2, $a3, 0x10
    sll     $t7, $t2, 2
    addiu   $t8, $t8, 0x8abd
    andi    $t6, $t1, 0xfff
    subu    $t9, $zero, $t3
    addu    $a2, $t9, $t8
    or      $t1, $t6, $zero
    andi    $t2, $t7, 0xfff
branch_0x801fb904:
    or      $v0, $s0, $zero
    sw      $s4, 0x0($v0)
    lb      $t9, 0x0($a2)
    lui     $t7, 0x802
    addiu   $t7, $t7, 0x69d0
    sll     $t8, $t9, 8
    addu    $t6, $t8, $t7
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    sw      $t6, 0x4($v0)
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $s6, 0x4($v1)
    sw      $s5, 0x0($v1)
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($a0)
    sw      $s7, 0x0($a0)
    lui     $t9, 0x707
    ori     $t9, $t9, 0xf400
    or      $a3, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $t9, 0x4($a1)
    sw      $fp, 0x0($a1)
    or      $v0, $s0, $zero
    sw      $zero, 0x4($a3)
    sw      $s3, 0x0($a3)
    lui     $t7, 0x8
    lui     $t8, 0xf568
    ori     $t8, $t8, 0x400
    ori     $t7, $t7, 0x200
    sw      $t7, 0x4($v0)
    sw      $t8, 0x0($v0)
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    lui     $t9, 0x3
    lui     $t6, 0xf200
    addiu   $t8, $t4, 0x10
    sw      $t6, 0x0($v1)
    ori     $t9, $t9, 0xc03c
    sll     $t7, $t8, 2
    sw      $t9, 0x4($v1)
    andi    $t6, $t7, 0xfff
    sll     $t9, $t6, 12
    lui     $at, 0xe400
    addiu   $s0, $s0, 0x8
    or      $t8, $t9, $at
    or      $t7, $t8, $t2
    or      $a0, $s0, $zero
    sll     $t6, $t4, 2
    andi    $t9, $t6, 0xfff
    sll     $t8, $t9, 12
    sw      $t7, 0x0($a0)
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    or      $t7, $t8, $t1
    sw      $t7, 0x4($a0)
    addiu   $s0, $s0, 0x8
    or      $v0, $s0, $zero
    lui     $t8, 0x400
    lui     $t6, 0xb300
    addiu   $t0, $t0, 0x1
    sw      $t6, 0x0($a1)
    ori     $t8, $t8, 0x400
    sw      $zero, 0x4($a1)
    lui     $t9, 0xb200
    addiu   $a2, $a2, 0x1
    sw      $t9, 0x0($v0)
    sw      $t8, 0x4($v0)
    addiu   $s0, $s0, 0x8
    bne     $t0, $t3, branch_0x801fb904
    addiu   $t4, $t4, 0xe
    lw      $v1, 0x10($t5)
branch_0x801fba2c:
    lw      $v0, 0x14($t5)
    addiu   $t8, $zero, 0xfff6
    addu    $t7, $v1, $v0
    slti    $at, $v0, 0xfff8
    bnez    $at, branch_0x801fba4c
    sw      $t7, 0x10($t5)
    addiu   $t6, $v0, 0x1
    sw      $t6, 0x14($t5)
branch_0x801fba4c:
    lw      $t9, 0x10($t5)
    lui     $v0, 0x801c
    addiu   $v0, $v0, 0x2430
    bltzl   $t9, branch_0x801fba6c
    lw      $t7, 0x14($t5)
    sw      $t8, 0x14($t5)
    sw      $zero, 0x10($t5)
    lw      $t7, 0x14($t5)
branch_0x801fba6c:
    addiu   $at, $zero, 0xfff6
    bnel    $t7, $at, branch_0x801fba88
    lw      $t8, 0x8($t5)
    lw      $t6, 0xc($t5)
    addiu   $t9, $t6, 0xfff6
    sw      $t9, 0xc($t5)
    lw      $t8, 0x8($t5)
branch_0x801fba88:
    addiu   $t7, $t8, 0x1
    slti    $at, $t7, 0x17
    bnez    $at, branch_0x801fbbc4
    sw      $t7, 0x8($t5)
    lw      $t9, 0x0($v0)
    lw      $t8, 0x4($t5)
    lui     $at, 0x801c
    addu    $t7, $t9, $t8
    sw      $t7, 0x2430($at)
    lw      $t6, 0x0($v0)
    lui     $at, 0x1
    ori     $at, $at, 0x86a0
    slt     $at, $t6, $at
    bnez    $at, branch_0x801fbad0
    lui     $t9, 0x1
    ori     $t9, $t9, 0x869f
    lui     $at, 0x801c
    sw      $t9, 0x2430($at)
branch_0x801fbad0:
    lw      $v0, 0x0($t5)
    addiu   $at, $zero, 0x1
    beq     $v0, $at, branch_0x801fbaf8
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x801fbb3c
    addiu   $at, $zero, 0x3
    beq     $v0, $at, branch_0x801fbb80
    nop
    b       branch_0x801fbbc4
    sw      $zero, 0x0($t5)
branch_0x801fbaf8:
    lui     $v0, 0x801c
    addiu   $v0, $v0, 0x2434
    lw      $t8, 0x0($v0)
    lw      $t7, 0x4($t5)
    lui     $at, 0x801c
    addu    $t6, $t8, $t7
    sw      $t6, 0x2434($at)
    lw      $t9, 0x0($v0)
    lui     $at, 0x1
    ori     $at, $at, 0x86a0
    slt     $at, $t9, $at
    bnez    $at, branch_0x801fbbc0
    lui     $t8, 0x1
    ori     $t8, $t8, 0x869f
    lui     $at, 0x801c
    b       branch_0x801fbbc0
    sw      $t8, 0x2434($at)
branch_0x801fbb3c:
    lui     $v0, 0x801c
    addiu   $v0, $v0, 0x243c
    lw      $t7, 0x0($v0)
    lw      $t6, 0x4($t5)
    lui     $at, 0x801c
    addu    $t9, $t7, $t6
    sw      $t9, 0x243c($at)
    lw      $t8, 0x0($v0)
    lui     $at, 0x1
    ori     $at, $at, 0x86a0
    slt     $at, $t8, $at
    bnez    $at, branch_0x801fbbc0
    lui     $t7, 0x1
    ori     $t7, $t7, 0x869f
    lui     $at, 0x801c
    b       branch_0x801fbbc0
    sw      $t7, 0x243c($at)
branch_0x801fbb80:
    lui     $v0, 0x801c
    addiu   $v0, $v0, 0x2438
    lw      $t6, 0x0($v0)
    lw      $t9, 0x4($t5)
    lui     $at, 0x801c
    addu    $t8, $t6, $t9
    sw      $t8, 0x2438($at)
    lw      $t7, 0x0($v0)
    lui     $at, 0x1
    ori     $at, $at, 0x86a0
    slt     $at, $t7, $at
    bnez    $at, branch_0x801fbbc0
    lui     $t6, 0x1
    ori     $t6, $t6, 0x869f
    lui     $at, 0x801c
    sw      $t6, 0x2438($at)
branch_0x801fbbc0:
    sw      $zero, 0x0($t5)
branch_0x801fbbc4:
    lui     $t9, 0x8023
    addiu   $t9, $t9, 0x8910
    addiu   $t5, $t5, 0x1c
    bnel    $t5, $t9, branch_0x801fb49c
    lw      $t7, 0x0($t5)
    lui     $v1, 0x8023
    addiu   $v1, $v1, 0x8854
    lw      $v0, 0x0($v1)
    sw      $t4, 0xa0($sp)
    or      $a0, $s0, $zero
    beqz    $v0, branch_0x801fbca8
    addiu   $t8, $v0, 0xffff
    lui     $a2, 0x8022
    addiu   $t7, $zero, 0x3c
    addiu   $t6, $zero, 0x9
    sw      $t8, 0x0($v1)
    sw      $t6, 0x14($sp)
    sw      $t7, 0x10($sp)
    addiu   $a2, $a2, 0x77cc
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0x50
    sw      $zero, 0x18($sp)
    sw      $zero, 0x1c($sp)
    sw      $zero, 0x20($sp)
    sw      $zero, 0x24($sp)
    sw      $zero, 0x28($sp)
    sw      $zero, 0x2c($sp)
    sw      $zero, 0x30($sp)
    sw      $zero, 0x34($sp)
    sw      $zero, 0x38($sp)
    sw      $zero, 0x3c($sp)
    sw      $zero, 0x40($sp)
    jal     Function_0x801e9084
    sw      $zero, 0x44($sp)
    lui     $a2, %hi(Unknown_0x802277d4)
    addiu   $t9, $zero, 0x3c
    addiu   $t8, $zero, 0x9
    sw      $t8, 0x14($sp)
    sw      $t9, 0x10($sp)
    addiu   $a2, $a2, %lo(Unknown_0x802277d4)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a3, $zero, 0x99
    sw      $zero, 0x18($sp)
    sw      $zero, 0x1c($sp)
    sw      $zero, 0x20($sp)
    sw      $zero, 0x24($sp)
    sw      $zero, 0x28($sp)
    sw      $zero, 0x2c($sp)
    sw      $zero, 0x30($sp)
    sw      $zero, 0x34($sp)
    sw      $zero, 0x38($sp)
    sw      $zero, 0x3c($sp)
    sw      $zero, 0x40($sp)
    jal     Function_0x801e9084
    sw      $zero, 0x44($sp)
    or      $s0, $v0, $zero
branch_0x801fbca8:
    lui     $t7, %hi(Unknown_0x80227500)
    lw      $t7, %lo(Unknown_0x80227500)($t7)
    lui     $a2, 0x801c
    beqzl   $t7, branch_0x801fbd38
    lw      $t8, 0xb8($sp)
    lw      $a2, 0x2444($a2)
    lui     $s1, 0x8023
    addiu   $s1, $s1, 0x8ab8
    beqz    $a2, branch_0x801fbd34
    or      $a0, $s1, $zero
    lui     $a1, %hi(Unknown_0x802277dc)
    jal     Function_0x800c9f70
    addiu   $a1, $a1, %lo(Unknown_0x802277dc)
    addiu   $t6, $zero, 0xbc
    addiu   $t9, $zero, 0x9
    sw      $t9, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    or      $a2, $s1, $zero
    addiu   $a3, $zero, 0xe0
    sw      $zero, 0x18($sp)
    sw      $zero, 0x1c($sp)
    sw      $zero, 0x20($sp)
    sw      $zero, 0x24($sp)
    sw      $zero, 0x28($sp)
    sw      $zero, 0x2c($sp)
    sw      $zero, 0x30($sp)
    sw      $zero, 0x34($sp)
    sw      $zero, 0x38($sp)
    sw      $zero, 0x3c($sp)
    sw      $zero, 0x40($sp)
    jal     Function_0x801e9084
    sw      $zero, 0x44($sp)
    or      $s0, $v0, $zero
branch_0x801fbd34:
    lw      $t8, 0xb8($sp)
branch_0x801fbd38:
    sw      $s0, 0x0($t8)
    lw      $ra, 0x74($sp)
    lw      $fp, 0x70($sp)
    lw      $s7, 0x6c($sp)
    lw      $s6, 0x68($sp)
    lw      $s5, 0x64($sp)
    lw      $s4, 0x60($sp)
    lw      $s3, 0x5c($sp)
    lw      $s2, 0x58($sp)
    lw      $s1, 0x54($sp)
    lw      $s0, 0x50($sp)
    jr      $ra
    addiu   $sp, $sp, 0xb8

.globl Function_0x801fbd6c
Function_0x801fbd6c: # 0x801fbd6c
    addiu   $sp, $sp, 0xff20
    sw      $ra, 0x5c($sp)
    sw      $fp, 0x58($sp)
    sw      $s7, 0x54($sp)
    sw      $s6, 0x50($sp)
    sw      $s5, 0x4c($sp)
    sw      $s4, 0x48($sp)
    sw      $s3, 0x44($sp)
    sw      $s2, 0x40($sp)
    sw      $s1, 0x3c($sp)
    sw      $s0, 0x38($sp)
    sdc1    $30, 0x30($29)
    sdc1    $28, 0x28($29)
    sdc1    $26, 0x20($29)
    sdc1    $24, 0x18($29)
    sdc1    $22, 0x10($29)
    sdc1    $20, 0x8($29)
    sw      $a0, 0xe0($sp)
    lw      $v0, 0x0($a0)
    lui     $at, 0x3f00
    mtc1    $at, $fp
    lui     $t8, 0x101
    lui     $at, 0x4200
    or      $v1, $v0, $zero
    addiu   $t8, $t8, 0x46b0
    lui     $t7, 0x600
    mtc1    $at, $gp
    sw      $t7, 0x0($v1)
    sw      $t8, 0x4($v1)
    lui     $at, %hi(Unknown_0x80227818)
    lwc1    $f26, %lo(Unknown_0x80227818)($at)
    lui     $at, 0x40a0
    mtc1    $at, $t8
    lui     $at, 0x4080
    lui     $s5, 0x708
    lui     $ra, 0x8
    lui     $a2, %hi(Unknown_0x80228bc0)
    mtc1    $at, $s0
    addiu   $a2, $a2, %lo(Unknown_0x80228bc0)
    ori     $ra, $ra, 0x200
    ori     $s5, $s5, 0x200
    sw      $zero, 0x68($sp)
    lui     $s6, 0xe600
    lui     $s7, 0xf400
    lui     $fp, 0xe700
    addiu   $v0, $v0, 0x8
branch_0x801fbe24:
    lw      $a0, 0x0($a2)
    lui     $t6, 0x8023
    addiu   $t6, $t6, 0x8bc8
    beqz    $a0, branch_0x801fc0e8
    lw      $t9, 0x68($sp)
    addiu   $t7, $zero, 0xa0
    mtc1    $t7, $a0
    lui     $t8, %hi(Unknown_0x80228bc0)
    addiu   $t8, $t8, %lo(Unknown_0x80228bc0)
    addu    $a1, $t9, $t6
    bne     $a2, $t8, branch_0x801fbe5c
    cvt.s.w $f22, $f4
    b       branch_0x801fbe60
    addiu   $t0, $zero, 0x40
branch_0x801fbe5c:
    addiu   $t0, $zero, 0xae
branch_0x801fbe60:
    lw      $v1, 0x0($a1)
    lui     $s4, 0x805
    addiu   $s4, $s4, 0xf010
    slti    $at, $v1, 0x6
    beqz    $at, branch_0x801fbe94
    addiu   $s3, $zero, 0x60
    mtc1    $v1, $a2
    nop
    cvt.s.w $f8, $f6
    div.s   $f10, $f8, $f24
    mul.s   $f20, $f10, $f26
    b       branch_0x801fbea4
    addiu   $at, $zero, 0x1
branch_0x801fbe94:
    lui     $at, 0x3f80
    mtc1    $at, $s4
    nop
    addiu   $at, $zero, 0x1
branch_0x801fbea4:
    beq     $a0, $at, branch_0x801fbed0
    addiu   $at, $zero, 0x2
    beq     $a0, $at, branch_0x801fbed8
    sw      $a2, 0x64($sp)
    lui     $s4, 0x805
    addiu   $at, $zero, 0x3
    addiu   $s4, $s4, 0x2018
    beq     $a0, $at, branch_0x801fbee4
    addiu   $s3, $zero, 0x70
    b       branch_0x801fbee4
    nop
branch_0x801fbed0:
    b       branch_0x801fbee4
    sw      $a2, 0x64($sp)
branch_0x801fbed8:
    lui     $s4, 0x805
    addiu   $s4, $s4, 0xc008
    addiu   $s3, $zero, 0x60
branch_0x801fbee4:
    mul.s   $f12, $f28, $f20
    mtc1    $t0, $a0
    mtc1    $s3, $t2
    lui     $at, 0x3e80
    sll     $t2, $s3, 1
    addiu   $t2, $t2, 0x7
    cvt.s.w $f6, $f4
    mul.s   $f8, $f12, $f30
    addiu   $v1, $s3, 0xffff
    andi    $t3, $v1, 0xfff
    sra     $t6, $t2, 3
    andi    $t7, $t6, 0x1ff
    sll     $t8, $t7, 9
    cvt.s.w $f4, $f10
    sll     $a0, $v1, 2
    andi    $t6, $a0, 0xfff
    sll     $t7, $t6, 12
    ori     $t5, $t7, 0x1c
    sub.s   $f0, $f6, $f8
    mul.s   $f14, $f4, $f20
    mtc1    $at, $a2
    lui     $at, 0xfd18
    or      $t9, $t3, $at
    mul.s   $f2, $f12, $f6
    lui     $at, 0xf518
    or      $t2, $t8, $at
    mul.s   $f8, $f14, $f30
    lui     $at, 0x700
    or      $t4, $t7, $at
    ori     $t8, $t4, 0x1c
    or      $t4, $t8, $zero
    sll     $t8, $s3, 10
    mtc1    $t8, $a2
    sub.s   $f18, $f22, $f8
    lui     $at, 0x4700
    or      $t3, $t9, $zero
    cvt.s.w $f8, $f6
    mul.s   $f10, $f18, $f16
    mtc1    $at, $a2
    lui     $at, 0xe400
    or      $a2, $zero, $zero
    or      $a3, $zero, $zero
    trunc.w.s   $f4, $f10
    div.s   $f10, $f8, $f14
    mfc1    $s0, $a0
    nop
    andi    $t6, $s0, 0xfff
    sll     $s0, $t6, 12
    div.s   $f8, $f6, $f12
    trunc.w.s   $f4, $f10
    mfc1    $t7, $a0
    nop
    sll     $t8, $t7, 16
    add.s   $f4, $f18, $f14
    trunc.w.s   $f10, $f8
    mul.s   $f6, $f4, $f16
    mfc1    $t6, $t2
    nop
    andi    $t7, $t6, 0xffff
    trunc.w.s   $f8, $f6
    or      $s1, $t8, $t7
    mfc1    $s2, $t0
    nop
    andi    $t6, $s2, 0xfff
    sll     $t8, $t6, 12
    or      $s2, $t8, $at
branch_0x801fbfec:
    add.s   $f12, $f0, $f2
    or      $v1, $v0, $zero
    addiu   $v0, $v0, 0x8
    sll     $t9, $a3, 2
    mul.s   $f10, $f12, $f16
    addu    $t6, $t9, $s4
    or      $a0, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $t6, 0x4($v1)
    sw      $t3, 0x0($v1)
    mul.s   $f6, $f0, $f16
    or      $a1, $v0, $zero
    sw      $s5, 0x4($a0)
    sw      $t2, 0x0($a0)
    addiu   $v0, $v0, 0x8
    or      $t0, $v0, $zero
    trunc.w.s   $f4, $f10
    sw      $zero, 0x4($a1)
    sw      $s6, 0x0($a1)
    addiu   $v0, $v0, 0x8
    or      $v1, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $t4, 0x4($t0)
    sw      $s7, 0x0($t0)
    trunc.w.s   $f8, $f6
    mfc1    $t9, $a0
    or      $a0, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $zero, 0x4($v1)
    sw      $fp, 0x0($v1)
    or      $a1, $v0, $zero
    sw      $ra, 0x4($a0)
    sw      $t2, 0x0($a0)
    lui     $t8, 0xf200
    andi    $t6, $t9, 0xfff
    mfc1    $t9, $t0
    sw      $t8, 0x0($a1)
    addiu   $v0, $v0, 0x8
    or      $t1, $v0, $zero
    or      $t8, $s2, $t6
    sw      $t5, 0x4($a1)
    sw      $t8, 0x0($t1)
    addiu   $v0, $v0, 0x8
    andi    $t6, $t9, 0xfff
    or      $t8, $s0, $t6
    or      $v1, $v0, $zero
    addiu   $v0, $v0, 0x8
    sw      $t8, 0x4($t1)
    or      $a0, $v0, $zero
    lui     $t7, 0xb300
    sll     $t6, $s3, 3
    addiu   $a2, $a2, 0x1
    addiu   $at, $zero, 0x4
    sw      $t7, 0x0($v1)
    sw      $zero, 0x4($v1)
    lui     $t9, 0xb200
    addu    $a3, $a3, $t6
    sw      $t9, 0x0($a0)
    sw      $s1, 0x4($a0)
    addiu   $v0, $v0, 0x8
    bne     $a2, $at, branch_0x801fbfec
    mov.s   $f0, $f12
    lw      $a2, 0x64($sp)
branch_0x801fc0e8:
    lw      $t8, 0x68($sp)
    lui     $t9, 0x8023
    addiu   $t9, $t9, 0x8bc8
    addiu   $a2, $a2, 0x4
    addiu   $t7, $t8, 0x4
    bne     $a2, $t9, branch_0x801fbe24
    sw      $t7, 0x68($sp)
    lw      $t6, 0xe0($sp)
    sw      $v0, 0x0($t6)
    lw      $ra, 0x5c($sp)
    lw      $fp, 0x58($sp)
    lw      $s7, 0x54($sp)
    lw      $s6, 0x50($sp)
    lw      $s5, 0x4c($sp)
    lw      $s4, 0x48($sp)
    lw      $s3, 0x44($sp)
    lw      $s2, 0x40($sp)
    lw      $s1, 0x3c($sp)
    lw      $s0, 0x38($sp)
    ldc1    $30, 0x30($29)
    ldc1    $28, 0x28($29)
    ldc1    $26, 0x20($29)
    ldc1    $24, 0x18($29)
    ldc1    $22, 0x10($29)
    ldc1    $20, 0x8($29)
    jr      $ra
    addiu   $sp, $sp, 0xe0

.globl Function_0x801fc154
Function_0x801fc154: # 0x801fc154
    lui     $v0, 0x8023
    addiu   $v0, $v0, 0x8864
    lw      $t6, 0x0($v0)
    addiu   $v1, $zero, 0x1
    lui     $a0, 0x8023
    bne     $v1, $t6, branch_0x801fc1a4
    lui     $t3, 0x801d
    addiu   $a0, $a0, 0x8910
    lui     $a1, 0x8023
    lw      $t7, 0x0($a0)
    addiu   $a1, $a1, 0x8914
    lw      $t9, 0x0($a1)
    addiu   $t8, $t7, 0x1e
    slti    $at, $t8, 0x140
    addiu   $t1, $t9, 0xffe2
    sw      $t8, 0x0($a0)
    bnez    $at, branch_0x801fc1a4
    sw      $t1, 0x0($a1)
    addiu   $a0, $zero, 0x2
    sw      $a0, 0x0($v0)
branch_0x801fc1a4:
    lw      $t3, -0x1c80($t3)
    lui     $a1, 0x8023
    addiu   $a0, $zero, 0x2
    bne     $v1, $t3, branch_0x801fc284
    addiu   $a1, $a1, 0x8868
    lw      $v0, 0x0($a1)
    beqz    $v0, branch_0x801fc220
    nop
    bne     $v1, $v0, branch_0x801fc1e0
    nop
    lui     $v0, %hi(Unknown_0x80228bc0)
    addiu   $v0, $v0, %lo(Unknown_0x80228bc0)
    sw      $v1, 0x0($v0)
    b       branch_0x801fc20c
    sw      $a0, 0x4($v0)
branch_0x801fc1e0:
    bne     $a0, $v0, branch_0x801fc1f8
    lui     $v0, %hi(Unknown_0x80228bc0)
    addiu   $v0, $v0, %lo(Unknown_0x80228bc0)
    sw      $a0, 0x0($v0)
    b       branch_0x801fc20c
    sw      $v1, 0x4($v0)
branch_0x801fc1f8:
    lui     $v0, %hi(Unknown_0x80228bc0)
    addiu   $v0, $v0, %lo(Unknown_0x80228bc0)
    addiu   $t4, $zero, 0x3
    sw      $t4, 0x4($v0)
    sw      $t4, 0x0($v0)
branch_0x801fc20c:
    lui     $a3, 0x8023
    addiu   $a3, $a3, 0x8bc8
    sw      $zero, 0x0($a1)
    sw      $zero, 0x4($a3)
    sw      $zero, 0x0($a3)
branch_0x801fc220:
    lui     $v1, 0x800e
    lw      $v1, -0x5758($v1)
    lui     $a3, 0x8023
    addiu   $a3, $a3, 0x8bc8
    blez    $v1, branch_0x801fc284
    or      $v0, $zero, $zero
    lui     $t7, %hi(Unknown_0x80228bc0)
    addiu   $a0, $t7, %lo(Unknown_0x80228bc0)
    sll     $t8, $v1, 2
    lui     $t0, 0x7fff
    ori     $t0, $t0, 0xffff
    addu    $a2, $t8, $a0
branch_0x801fc250:
    lw      $t9, 0x0($a0)
    addiu   $a0, $a0, 0x4
    addu    $v1, $a3, $v0
    beqzl   $t9, branch_0x801fc27c
    sltu    $at, $a0, $a2
    lw      $a1, 0x0($v1)
    slt     $at, $a1, $t0
    beqz    $at, branch_0x801fc278
    addiu   $t1, $a1, 0x1
    sw      $t1, 0x0($v1)
branch_0x801fc278:
    sltu    $at, $a0, $a2
branch_0x801fc27c:
    bnez    $at, branch_0x801fc250
    addiu   $v0, $v0, 0x4
branch_0x801fc284:
    jr      $ra
    nop

.globl Function_0x801fc28c
Function_0x801fc28c: # 0x801fc28c
    addiu   $sp, $sp, 0xffc8
    lui     $v0, %hi(Unknown_0x801ce398)
    lw      $v0, %lo(Unknown_0x801ce398)($v0)
    sw      $ra, 0x14($sp)
    sw      $a0, 0x38($sp)
    lw      $t7, 0x0($a0)
    addiu   $at, $zero, 0x1
    beq     $v0, $at, branch_0x801fc2bc
    sw      $t7, 0x2c($sp)
    addiu   $at, $zero, 0x8
    bnel    $v0, $at, branch_0x801fc5e8
    lw      $ra, 0x14($sp)
branch_0x801fc2bc:
    jal     Function_0x801ee750
    nop
    jal     Function_0x801ef154
    nop
    lw      $t8, 0x2c($sp)
    lui     $t0, 0x380
    lui     $t1, 0x101
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x2c($sp)
    addiu   $t1, $t1, 0x4450
    ori     $t0, $t0, 0x10
    sw      $t0, 0x0($t8)
    sw      $t1, 0x4($t8)
    lw      $t2, 0x2c($sp)
    lui     $t4, 0xe700
    lui     $t5, 0x800e
    addiu   $t3, $t2, 0x8
    sw      $t3, 0x2c($sp)
    sw      $zero, 0x4($t2)
    sw      $t4, 0x0($t2)
    lw      $t5, -0x5758($t5)
    addiu   $at, $zero, 0x1
    lw      $t0, 0x2c($sp)
    bne     $t5, $at, branch_0x801fc348
    lui     $t4, %hi(Unknown_0x801ce398)
    lw      $t6, 0x2c($sp)
    lui     $t8, 0xed02
    lui     $t9, 0x4d
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x2c($sp)
    ori     $t9, $t9, 0xc36c
    ori     $t8, $t8, 0x50
    sw      $t8, 0x0($t6)
    b       branch_0x801fc368
    sw      $t9, 0x4($t6)
branch_0x801fc348:
    addiu   $t1, $t0, 0x8
    sw      $t1, 0x2c($sp)
    lui     $t2, 0xed02
    lui     $t3, 0x4d
    ori     $t3, $t3, 0xc394
    ori     $t2, $t2, 0x30
    sw      $t2, 0x0($t0)
    sw      $t3, 0x4($t0)
branch_0x801fc368:
    lw      $t4, %lo(Unknown_0x801ce398)($t4)
    addiu   $at, $zero, 0x8
    lui     $t5, 0x800d
    bne     $t4, $at, branch_0x801fc3b4
    nop
    lw      $t5, 0x465c($t5)
    addiu   $a0, $zero, 0x378
    lui     $v1, 0x801c
    multu   $t5, $a0
    addiu   $v1, $v1, 0x2698
    lw      $t9, 0x2c($sp)
    lw      $t0, 0x38($sp)
    mflo    $t6
    addu    $v0, $v1, $t6
    lw      $t7, 0x19c($v0)
    addiu   $t8, $t7, 0x32
    sw      $t8, 0x19c($v0)
    b       branch_0x801fc5e4
    sw      $t9, 0x0($t0)
branch_0x801fc3b4:
    lui     $v0, 0x801d
    lw      $v0, -0x1c80($v0)
    addiu   $at, $zero, 0x4
    beq     $v0, $at, branch_0x801fc3cc
    addiu   $at, $zero, 0x1
    bne     $v0, $at, branch_0x801fc408
branch_0x801fc3cc:
    lui     $t1, 0x801d
    lw      $t1, -0x1c50($t1)
    addiu   $at, $zero, 0x3
    lui     $t2, 0x800d
    bne     $t1, $at, branch_0x801fc408
    nop
    lw      $t2, 0x7ef0($t2)
    lui     $t3, 0x801c
    beqz    $t2, branch_0x801fc408
    nop
    lw      $t3, 0x1d38($t3)
    bnez    $t3, branch_0x801fc408
    nop
    jal     Function_0x801fa178
    addiu   $a0, $sp, 0x2c
branch_0x801fc408:
    lui     $t4, 0x801d
    lw      $t4, -0x1c50($t4)
    addiu   $at, $zero, 0x3
    bne     $t4, $at, branch_0x801fc428
    lui     $t5, %hi(Unknown_0x80228AC8)
    lw      $t5, %lo(Unknown_0x80228AC8)($t5)
    addiu   $at, $zero, 0x2
    bne     $t5, $at, branch_0x801fc490
branch_0x801fc428:
    lui     $t6, 0x800d
    lw      $t6, 0x465c($t6)
    addiu   $a0, $zero, 0x378
    lui     $v1, 0x801c
    multu   $t6, $a0
    addiu   $v1, $v1, 0x2698
    lui     $t0, 0x800e
    mflo    $t7
    addu    $t8, $v1, $t7
    lw      $t9, 0x2ec($t8)
    bnez    $t9, branch_0x801fc490
    nop
    lw      $t0, -0x5758($t0)
    addiu   $at, $zero, 0x2
    lui     $t1, 0x800d
    bne     $t0, $at, branch_0x801fc488
    nop
    lw      $t1, 0x4660($t1)
    multu   $t1, $a0
    mflo    $t2
    addu    $t3, $v1, $t2
    lw      $t4, 0x2ec($t3)
    bnez    $t4, branch_0x801fc490
    nop
branch_0x801fc488:
    jal     Function_0x801f0430
    addiu   $a0, $sp, 0x2c
branch_0x801fc490:
    lui     $t5, %hi(Unknown_0x801ce398)
    lw      $t5, %lo(Unknown_0x801ce398)($t5)
    addiu   $at, $zero, 0x1
    bne     $t5, $at, branch_0x801fc4f4
    lui     $t6, 0x801d
    lh      $t6, -0x1c7c($t6)
    addiu   $at, $zero, 0xffff
    lui     $t7, 0x801d
    bne     $t6, $at, branch_0x801fc4f4
    nop
    lw      $t7, -0x1c50($t7)
    addiu   $at, $zero, 0x3
    lui     $t8, 0x800e
    bne     $t7, $at, branch_0x801fc4f4
    nop
    lw      $t8, -0x5758($t8)
    addiu   $at, $zero, 0x2
    lui     $t9, 0x801d
    bne     $t8, $at, branch_0x801fc4ec
    nop
    lh      $t9, -0x1bb0($t9)
    bnez    $t9, branch_0x801fc4f4
    nop
branch_0x801fc4ec:
    jal     Function_0x801efd68
    addiu   $a0, $sp, 0x2c
branch_0x801fc4f4:
    lui     $t0, 0x801d
    lw      $t0, -0x1c80($t0)
    addiu   $at, $zero, 0xb
    beq     $t0, $at, branch_0x801fc51c
    lui     $t1, 0x800d
    lw      $t1, 0x7ef0($t1)
    beqz    $t1, branch_0x801fc51c
    nop
    jal     Function_0x801f1244
    addiu   $a0, $sp, 0x2c
branch_0x801fc51c:
    lui     $t2, 0x801d
    lh      $t2, -0x1c7c($t2)
    addiu   $at, $zero, 0xffff
    bne     $t2, $at, branch_0x801fc55c
    nop
    jal     Function_0x801f1df0
    addiu   $a0, $sp, 0x2c
    jal     Function_0x801fac70
    addiu   $a0, $sp, 0x2c
    lui     $t3, 0x801d
    lw      $t3, -0x1c80($t3)
    addiu   $at, $zero, 0xb
    bne     $t3, $at, branch_0x801fc55c
    nop
    jal     Function_0x801fb2cc
    addiu   $a0, $sp, 0x2c
branch_0x801fc55c:
    jal     Function_0x801f3ed8
    addiu   $a0, $sp, 0x2c
    lui     $v0, 0x801d
    lw      $v0, -0x1c80($v0)
    addiu   $at, $zero, 0x4
    beq     $v0, $at, branch_0x801fc57c
    addiu   $at, $zero, 0x1
    bne     $v0, $at, branch_0x801fc59c
branch_0x801fc57c:
    lui     $t4, 0x800d
    lw      $t4, 0x7ef0($t4)
    beqzl   $t4, branch_0x801fc5a0
    addiu   $at, $zero, 0x1
    jal     Function_0x801f92d8
    addiu   $a0, $sp, 0x2c
    lui     $v0, 0x801d
    lw      $v0, -0x1c80($v0)
branch_0x801fc59c:
    addiu   $at, $zero, 0x1
branch_0x801fc5a0:
    bne     $v0, $at, branch_0x801fc5b0
    nop
    jal     Function_0x801fbd6c
    addiu   $a0, $sp, 0x2c
branch_0x801fc5b0:
    lui     $t5, 0x800e
    lw      $t5, -0x5758($t5)
    addiu   $at, $zero, 0x1
    bne     $t5, $at, branch_0x801fc5d8
    lui     $t6, %hi(Unknown_0x80227500)
    lw      $t6, %lo(Unknown_0x80227500)($t6)
    beqzl   $t6, branch_0x801fc5dc
    lw      $t7, 0x2c($sp)
    jal     Function_0x801fac68
    addiu   $a0, $sp, 0x2c
branch_0x801fc5d8:
    lw      $t7, 0x2c($sp)
branch_0x801fc5dc:
    lw      $t8, 0x38($sp)
    sw      $t7, 0x0($t8)
branch_0x801fc5e4:
    lw      $ra, 0x14($sp)
branch_0x801fc5e8:
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop


Unknown_0x801fc5f4: # 0xcac24
.incbin "./roms/Wave Race 64 (USA).z64", 0xcac24, 0xcac30 - 0xcac24

Unknown_0x801fc600: # 0xcac30
.incbin "./roms/Wave Race 64 (USA).z64", 0xcac30, 0xCB314 - 0xcac30

Unknown_0x801fcce4: # 0xCB314
.incbin "./roms/Wave Race 64 (USA).z64", 0xCB314, 0xcb480 - 0xCB314

Unknown_0x801FCE50: # 0xcb480
.word Unknown_0x801fc600, Unknown_0x801fcce4, 0x801FCCF8, 0x801FCD0C
.word 0x801FCD20, 0x801FCD34, 0x801FCD48, 0x801FCD5C
.word 0x801FCD70, 0x801FCD84, 0x801FCD98, 0x801FCDAC
.word 0x801FCDC0, 0x801FCDD4, 0x801FCDE8, 0x801FCDFC
.word 0x801FCE10, 0x801FCE24, 0x801FCE38

Unknown_0x801FCE9C: # 0xcb4cc
.incbin "./roms/Wave Race 64 (USA).z64", 0xcb4cc, 0xce79c - 0xcb4cc

Unknown_0x8020016C: # 0xce79c
.incbin "./roms/Wave Race 64 (USA).z64", 0xce79c, 0xcf2dc - 0xce79c

Unknown_0x80200CAC: # 0xcf2dc
.incbin "./roms/Wave Race 64 (USA).z64", 0xcf2dc, 0xcf390 - 0xcf2dc

Unknown_0x80200D60: # 0xcf390
.incbin "./roms/Wave Race 64 (USA).z64", 0xcf390, 0xcf448 - 0xcf390

Unknown_0x80200E18: # 0xcf448
.word Unknown_0x801FCE9C, 0x8020016C, 0x80200220, 0x802002D4
.word 0x80200388, 0x8020043C, 0x802004F0, 0x802005A4
.word 0x80200658, 0x8020070C, 0x802007C0, 0x80200874
.word 0x80200928, 0x802009DC, 0x80200A90, 0x80200B44
.word 0x80200BF8, Unknown_0x80200CAC, Unknown_0x80200D60

.incbin "./roms/Wave Race 64 (USA).z64", 0xcf494, 0xd3ed8 - 0xcf494

Unknown_0x802058A8: # 0xd3ed8
.word 0x80200E64, 0x80204A94, 0x80204B5C, 0x80204C24
.word 0x80204CEC, 0x80204DB4, 0x80204E7C, 0x80204F44
.word 0x8020500C, 0x802050D4, 0x8020519C, 0x80205264
.word 0x8020532C, 0x802053F4, 0x802054BC, 0x80205584
.word 0x8020564C, 0x80205714, 0x802057DC

.incbin "./roms/Wave Race 64 (USA).z64", 0xd3f24, 0xd6574 - 0xd3f24

Unknown_0x80207F44: # 0xd6574
.word 0x802058F4, 0x802077A8, 0x80207814, 0x80207880
.word 0x802078EC, 0x80207958, 0x802079C4, 0x80207A30
.word 0x80207A9C, 0x80207B08, 0x80207B74, 0x80207BE0
.word 0x80207C4C, 0x80207CB8, 0x80207D24, 0x80207D90
.word 0x80207DFC, 0x80207E68, 0x80207ED4

.incbin "./roms/Wave Race 64 (USA).z64", 0xd65c0, 0xd91f8 - 0xd65c0

Unknown_0x8020ABC8: # 0xd91f8
.word 0x80207F90, 0x8020A084, 0x8020A124, 0x8020A1C4
.word 0x8020A264, 0x8020A304, 0x8020A3A4, 0x8020A444
.word 0x8020A4E4, 0x8020A584, 0x8020A624, 0x8020A6C4
.word 0x8020A764, 0x8020A804, 0x8020A8A4, 0x8020A944
.word 0x8020A9E4, 0x8020AA84, 0x8020AB24

.incbin "./roms/Wave Race 64 (USA).z64", 0xd9244, 0xdb5b0 - 0xd9244

Unknown_0x8020CF80: # 0xdb5b0
.word 0x8020C9D8, 0x8020CA28, 0x8020CA78, 0x8020CAC8
.word 0x8020CB18, 0x8020CB68, 0x8020CBB8, 0x8020CC08
.word 0x8020CC58, 0x8020CCA8, 0x8020CCF8, 0x8020CD48
.word 0x8020CD98, 0x8020CDE8, 0x8020CE38, 0x8020CE88
.word 0x8020CED8, 0x8020CF28

.incbin "./roms/Wave Race 64 (USA).z64", 0xdb5f8, 0xde1a0 - 0xdb5f8

Unknown_0x8020FB70: # 0xde1a0
.word 0x8020CFC8, 0x8020F3D4, 0x8020F440, 0x8020F4AC
.word 0x8020F518, 0x8020F584, 0x8020F5F0, 0x8020F65C
.word 0x8020F6C8, 0x8020F734, 0x8020F7A0, 0x8020F80C
.word 0x8020F878, 0x8020F8E4, 0x8020F950, 0x8020F9BC
.word 0x8020FA28, 0x8020FA94, 0x8020FB00

.incbin "./roms/Wave Race 64 (USA).z64", 0xde1ec, 0xe2f24 - 0xde1ec

Unknown_0x802148F4: # 0xe2f24
.word 0x8020FBBC, 0x80213CD8, 0x80213D84, 0x80213E30
.word 0x80213EDC, 0x80213F88, 0x80214034, 0x802140E0
.word 0x8021418C, 0x80214238, 0x802142E4, 0x80214390
.word 0x8021443C, 0x802144E8, 0x80214594, 0x80214640
.word 0x802146EC, 0x80214798, 0x80214844

# 0xe2f70
.incbin "./roms/Wave Race 64 (USA).z64", 0xe2f70, 0xF5B30 - 0xe2f70 # more pointers list here


Unknown_0x80227500: # 0xF5B30
.incbin "./roms/Wave Race 64 (USA).z64", 0xF5B30, 0xF5DC0 - 0xF5B30

#Unknown_0x80227790: # 0xF5DC0
.incbin "./roms/Wave Race 64 (USA).z64", 0xF5DC0, 0xF5E04 - 0xF5DC0 # strings COURSE OUT

Unknown_0x802277d4: # 0xF5E04
.incbin "./roms/Wave Race 64 (USA).z64", 0xF5E04, 0xF5E0C - 0xF5E04

Unknown_0x802277dc: # 0xF5E0C
.incbin "./roms/Wave Race 64 (USA).z64", 0xF5E0C, 0xF5E48 - 0xF5E0C

Unknown_0x80227818: # 0xF5E48
.float 1.3
.word 0


