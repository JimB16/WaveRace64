

.include "source/constants.s"

.section .textoverlay2, "ax"

.set noreorder


.globl Function_2_0x802c5800
Function_2_0x802c5800: # 0x802c5800
    addiu   $sp, $sp, 0xfe08
    lui     $t6, 0x801d
    lw      $t6, -0x1c64($t6)
    sw      $ra, 0x84($sp)
    sw      $fp, 0x80($sp)
    sw      $s7, 0x7c($sp)
    sw      $s6, 0x78($sp)
    sw      $s5, 0x74($sp)
    sw      $s4, 0x70($sp)
    sw      $s3, 0x6c($sp)
    sw      $s2, 0x68($sp)
    sw      $s1, 0x64($sp)
    sw      $s0, 0x60($sp)
    sdc1    $28, 0x58($29)
    sdc1    $26, 0x50($29)
    sdc1    $24, 0x48($29)
    sdc1    $22, 0x40($29)
    beqz    $t6, branch_0x802c5868
    sdc1    $20, 0x38($29)
    lui     $t7, %hi(MainState_0x800da8a4)
    lw      $t7, %lo(MainState_0x800da8a4)($t7)
    addiu   $at, $zero, MainState_a
    bnel    $t7, $at, branch_0x802c586c
    lui     $at, 0x3f80
    jal     Function_0x802c5ae4
    nop
branch_0x802c5868:
    lui     $at, 0x3f80
branch_0x802c586c:
    mtc1    $at, $gp
    lui     $at, 0x4180
    mtc1    $at, $a0
    mtc1    $zero, $k0
    lui     $at, 0x4580
    lui     $a0, 0x801d
    lw      $a0, -0x1ca8($a0)
    mtc1    $at, $a2
    lui     $a1, 0x802d
    mfc1    $a3, $gp
    addiu   $a1, $a1, 0x8c50
    lui     $a2, 0x4204
    swc1    $f4, 0x10($sp)
    swc1    $f26, 0x18($sp)
    swc1    $f26, 0x1c($sp)
    addiu   $a0, $a0, 0xa40
    jal     Function_0x80048180
    swc1    $f6, 0x14($sp)
    lui     $at, 0x802d
    lwc1    $f8, -0x7418($at)
    mfc1    $a1, $k0
    mfc1    $a2, $k0
    mfc1    $a3, $gp
    addiu   $a0, $sp, 0xe0
    swc1    $f26, 0x10($sp)
    swc1    $f28, 0x14($sp)
    swc1    $f26, 0x18($sp)
    swc1    $f26, 0x1c($sp)
    swc1    $f26, 0x20($sp)
    swc1    $f26, 0x24($sp)
    jal     Function_0x80048a28
    swc1    $f8, 0x28($sp)
    lui     $at, 0x43fa
    lui     $s7, 0x801d
    lui     $s2, 0x802d
    lui     $s0, 0x8015
    mtc1    $at, $s4
    addiu   $s0, $s0, 0x40b0
    addiu   $s2, $s2, 0x8c60
    addiu   $s7, $s7, 0xe368
    or      $s1, $zero, $zero
    or      $s3, $zero, $zero
    lwc1    $f24, 0x1e4($sp)
    lwc1    $f22, 0x1e8($sp)
    addiu   $fp, $sp, 0xa0
    addiu   $s6, $sp, 0x124
    addiu   $s5, $sp, 0x1a4
    addiu   $s4, $sp, 0x164
branch_0x802c592c:
    lh      $a3, 0x4($s7)
    or      $a0, $zero, $zero
    or      $a1, $zero, $zero
    blez    $a3, branch_0x802c59e0
    lui     $a2, 0x800e
    addiu   $a2, $a2, 0xa740
branch_0x802c5944:
    lw      $t8, 0x0($a2)
    addiu   $a0, $a0, 0x1
    addiu   $a2, $a2, 0x4
    bne     $s1, $t8, branch_0x802c595c
    or      $v1, $zero, $zero
    addiu   $v1, $zero, 0x1
branch_0x802c595c:
    beqz    $v1, branch_0x802c59b8
    slt     $at, $a0, $a3
    addu    $t9, $s2, $a1
    lw      $v0, 0x0($t9)
    bgez    $v0, branch_0x802c5980
    andi    $t0, $v0, 0xfff
    beqz    $t0, branch_0x802c5980
    nop
    addiu   $t0, $t0, 0xf000
branch_0x802c5980:
    addiu   $t1, $t0, 0x400
    andi    $t2, $t1, 0xfff
    sll     $t3, $t2, 2
    addu    $t4, $s0, $t3
    lwc1    $f10, 0x0($t4)
    andi    $t5, $t0, 0xfff
    sll     $t6, $t5, 2
    addu    $t7, $s0, $t6
    lwc1    $f16, 0x0($t7)
    mul.s   $f22, $f10, $f20
    nop
    mul.s   $f24, $f16, $f20
    b       branch_0x802c59d0
    nop
branch_0x802c59b8:
    lwc1    $f18, 0x1800($s0)
    lwc1    $f4, 0x800($s0)
    mul.s   $f22, $f18, $f20
    nop
    mul.s   $f24, $f4, $f20
    nop
branch_0x802c59d0:
    bnezl   $v1, branch_0x802c59e4
    mfc1    $a2, $s6
    bnez    $at, branch_0x802c5944
    addiu   $a1, $a1, 0x4
branch_0x802c59e0:
    mfc1    $a2, $s6
branch_0x802c59e4:
    mfc1    $a3, $s4
    or      $a0, $fp, $zero
    or      $a1, $s4, $zero
    swc1    $f24, 0x10($sp)
    swc1    $f26, 0x14($sp)
    swc1    $f26, 0x18($sp)
    swc1    $f26, 0x1c($sp)
    swc1    $f26, 0x20($sp)
    swc1    $f28, 0x24($sp)
    jal     Function_0x80048468
    swc1    $f26, 0x28($sp)
    addiu   $a0, $sp, 0xe0
    jal     Function_0x80047e18
    or      $a1, $s5, $zero
    or      $a0, $s4, $zero
    or      $a1, $s5, $zero
    jal     Function_0x80049e58
    or      $a2, $s6, $zero
    lui     $t8, 0x801d
    lw      $t8, -0x1ca8($t8)
    or      $a0, $s6, $zero
    addu    $a1, $t8, $s3
    jal     Function_0x80047e80
    addiu   $a1, $a1, 0xa80
    addiu   $s1, $s1, 0x1
    slti    $at, $s1, 0x4
    bnez    $at, branch_0x802c592c
    addiu   $s3, $s3, 0x40
    lh      $a3, 0x4($s7)
    swc1    $f24, 0x1e4($sp)
    swc1    $f22, 0x1e8($sp)
    blez    $a3, branch_0x802c5aa0
    lui     $t9, 0x802d
    addiu   $v0, $t9, 0x8c60
    sll     $t0, $a3, 2
    addu    $a0, $t0, $v0
    lw      $t1, 0x0($v0)
branch_0x802c5a78:
    addiu   $t2, $t1, 0x30
    slti    $at, $t2, 0x1000
    bnez    $at, branch_0x802c5a90
    sw      $t2, 0x0($v0)
    addiu   $t3, $t2, 0xf000
    sw      $t3, 0x0($v0)
branch_0x802c5a90:
    addiu   $v0, $v0, 0x4
    sltu    $at, $v0, $a0
    bnezl   $at, branch_0x802c5a78
    lw      $t1, 0x0($v0)
branch_0x802c5aa0:
    lw      $ra, 0x84($sp)
    ldc1    $20, 0x38($29)
    ldc1    $22, 0x40($29)
    ldc1    $24, 0x48($29)
    ldc1    $26, 0x50($29)
    ldc1    $28, 0x58($29)
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
    addiu   $sp, $sp, 0x1f8

Function_0x802c5ae4: # 0x802c5ae4
    lui     $v1, %hi(Unknown_2_0x802c8c58)
    lui     $a0, 0x802d
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe454
    addiu   $a0, $a0, 0x8c60
    addiu   $v1, $v1, %lo(Unknown_2_0x802c8c58)
    or      $v0, $zero, $zero
branch_0x802c5b00:
    sh      $v0, 0x0($a1)
    addiu   $v0, $v0, 0x1
    slti    $at, $v0, 0x2
    addiu   $v1, $v1, 0x4
    addiu   $a0, $a0, 0x4
    addiu   $a1, $a1, 0x2
    sw      $zero, -0x4($v1)
    bnez    $at, branch_0x802c5b00
    sw      $zero, -0x4($a0)
    lui     $at, 0x802d
    sh      $zero, -0x7390($at)
    sh      $zero, -0x738e($at)
    sh      $zero, -0x738c($at)
    sh      $zero, -0x738a($at)
    lui     $at, 0x802d
    sh      $zero, -0x7398($at)
    lui     $at, 0x802d
    jr      $ra
    sh      $zero, -0x7396($at)


.globl Function_2_0x802c5b4c
Function_2_0x802c5b4c: # 0x802c5b4c
    lui     $v0, %hi(Unknown_0x801ce39c)
    addiu   $v0, $v0, %lo(Unknown_0x801ce39c)
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, -0x20
    sw      $s0, 0x18($sp)
    or      $s0, $a0, $zero
    beqz    $t6, branch_0x802c5b94
    sw      $ra, 0x1c($sp)
    sw      $zero, 0x0($v0)
    lui     $t7, %hi(MainState_0x800da8a4)
    lw      $t7, %lo(MainState_0x800da8a4)($t7)
    addiu   $at, $zero, MainState_a
    bne     $t7, $at, branch_0x802c5b94
    nop
    jal     Function_0x800939e4
    nop
    b       branch_0x802c5e18
    lw      $ra, 0x1c($sp)

branch_0x802c5b94:
    lui     $at, 0x800e
    sw      $zero, -0x5754($at)
    or      $v0, $s0, $zero
    addiu   $v1, $s0, 0x8
    lui     $t8, 0xe700
    sw      $t8, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t9, 0xed02
    lui     $t0, 0x4d
    ori     $t0, $t0, 0xc36c
    ori     $t9, $t9, 0x50
    addiu   $a1, $v1, 0x8
    lui     $t2, 0x107
    sw      $t9, 0x0($v1)
    sw      $t0, 0x4($v1)
    addiu   $t2, $t2, 0xfaf0
    lui     $t1, 0x600
    sw      $t1, 0x0($a1)
    sw      $t2, 0x4($a1)
    jal     Function_0x802c88dc
    addiu   $a0, $a1, 0x8
    lui     $t3, 0x103
    lui     $t4, 0x700
    lui     $t5, 0x102
    lui     $t6, 0x200
    lui     $t8, 0x107
    addiu   $t4, $t4, 0x0
    ori     $t3, $t3, 0x40
    addiu   $t6, $t6, 0xa40
    ori     $t5, $t5, 0x40
    addiu   $t8, $t8, 0xf808
    lui     $t7, 0x600
    sw      $t3, 0x0($v0)
    sw      $t4, 0x4($v0)
    sw      $t5, 0x8($v0)
    sw      $t6, 0xc($v0)
    sw      $t7, 0x10($v0)
    sw      $t8, 0x14($v0)
    lui     $t9, 0x801d
    lh      $t9, -0x1c94($t9)
    addiu   $at, $zero, 0x1
    addiu   $s0, $v0, 0x18
    bne     $t9, $at, branch_0x802c5c54
    lui     $t0, 0x802d
    jal     Function_0x8009302c
    or      $a0, $s0, $zero
    b       branch_0x802c5ca0
    or      $s0, $v0, $zero
branch_0x802c5c54:
    lw      $t0, -0x73a8($t0)
    lui     $at, 0x800e
    or      $a0, $s0, $zero
    bnez    $t0, branch_0x802c5c74
    nop
    jal     Function_0x80093164
    sw      $zero, -0x5754($at)
    or      $s0, $v0, $zero
branch_0x802c5c74:
    lui     $t1, 0x802d
    lw      $t1, -0x73a4($t1)
    addiu   $t2, $zero, 0x1
    lui     $at, 0x800e
    bnez    $t1, branch_0x802c5c98
    or      $a0, $s0, $zero
    jal     Function_0x80093164
    sw      $t2, -0x5754($at)
    or      $s0, $v0, $zero
branch_0x802c5c98:
    lui     $at, 0x800e
    sw      $zero, -0x5754($at)
branch_0x802c5ca0:
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    lui     $t3, 0xe700
    sw      $t3, 0x0($v0)
    sw      $zero, 0x4($v0)
    or      $v1, $s0, $zero
    lui     $t4, 0xed02
    lui     $t5, 0x4d
    ori     $t5, $t5, 0xc36c
    ori     $t4, $t4, 0x50
    sw      $t4, 0x0($v1)
    sw      $t5, 0x4($v1)
    lui     $t6, 0x801d
    lh      $t6, -0x1c94($t6)
    addiu   $at, $zero, 0x1
    addiu   $s0, $s0, 0x8
    bne     $t6, $at, branch_0x802c5d0c
    nop
    jal     Function_0x802c6adc
    or      $a0, $s0, $zero
    lui     $t8, 0x80c
    addiu   $t8, $t8, 0xe500
    lui     $t7, 0x600
    sw      $t7, 0x0($v0)
    sw      $t8, 0x4($v0)
    b       branch_0x802c5d64
    addiu   $s0, $v0, 0x8
branch_0x802c5d0c:
    jal     Function_0x802c7c50
    or      $a0, $s0, $zero
    lui     $a0, %hi(Unknown_2_0x802c8c58)
    addiu   $a0, $a0, %lo(Unknown_2_0x802c8c58)
    lw      $t9, 0x0($a0)
    or      $s0, $v0, $zero
    lui     $t0, 0x600
    bnez    $t9, branch_0x802c5d40
    lui     $t1, 0x80c
    addiu   $t1, $t1, 0xe4a8
    sw      $t1, 0x4($v0)
    addiu   $s0, $v0, 0x8
    sw      $t0, 0x0($v0)
branch_0x802c5d40:
    lw      $t2, 0x4($a0)
    or      $v0, $s0, $zero
    lui     $t3, 0x600
    bnez    $t2, branch_0x802c5d64
    lui     $t4, 0x80c
    addiu   $t4, $t4, 0xe500
    sw      $t4, 0x4($v0)
    addiu   $s0, $s0, 0x8
    sw      $t3, 0x0($v0)
branch_0x802c5d64:
    lui     $t5, %hi(MainState_0x800da8a4)
    lw      $t5, %lo(MainState_0x800da8a4)($t5)
    addiu   $at, $zero, MainState_a
    lui     $t8, 0x8023
    bne     $t5, $at, branch_0x802c5da4
    nop
    jal     Function_0x802c5e28
    nop
    lui     $t6, 0x8023
    lh      $t6, -0x782a($t6)
    addiu   $at, $zero, 0x1
    addiu   $t7, $zero, 0x1
    bne     $t6, $at, branch_0x802c5e10
    lui     $at, %hi(Unknown_2_0x802c8bc0)
    b       branch_0x802c5e10
    sw      $t7, %lo(Unknown_2_0x802c8bc0)($at)
branch_0x802c5da4:
    lh      $t8, -0x782a($t8)
    addiu   $at, $zero, 0x1
    bnel    $t8, $at, branch_0x802c5e14
    or      $v0, $s0, $zero
    jal     Function_0x8007c2bc
    nop
    lui     $v1, %hi(Unknown_0x801ce390_MainState)
    lw      $v1, %lo(Unknown_0x801ce390_MainState)($v1)
    addiu   $at, $zero, 0x2
    beq     $v1, $at, branch_0x802c5de8
    addiu   $at, $zero, 0x14
    beq     $v1, $at, branch_0x802c5e08
    addiu   $at, $zero, 0x1e
    beq     $v1, $at, branch_0x802c5df8
    nop
    b       branch_0x802c5e14
    or      $v0, $s0, $zero
branch_0x802c5de8:
    jal     Function_0x801eaf10_ChangeStateTo2
    nop
    b       branch_0x802c5e14
    or      $v0, $s0, $zero
branch_0x802c5df8:
    jal     Function_0x801eb6ac_ChangeStateTo1e
    nop
    b       branch_0x802c5e14
    or      $v0, $s0, $zero
branch_0x802c5e08:
    jal     Function_0x801ebd74_ChangeStateTo14
    nop
branch_0x802c5e10:
    or      $v0, $s0, $zero
branch_0x802c5e14:
    lw      $ra, 0x1c($sp)
branch_0x802c5e18:
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop


Function_0x802c5e28: # 0x802c5e28
    addiu   $sp, $sp, 0xffa8
    lui     $t0, 0x801d
    lh      $t0, -0x1c94($t0)
    sw      $s0, 0x18($sp)
    sw      $ra, 0x3c($sp)
    sw      $fp, 0x38($sp)
    sw      $s7, 0x34($sp)
    sw      $s6, 0x30($sp)
    sw      $s5, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    blez    $t0, branch_0x802c6734
    or      $s0, $zero, $zero
    lui     $s2, %hi(Unknown_2_0x802c8c58)
    lui     $s7, %hi(Unknown_0x800da740)
    addiu   $s7, $s7, %lo(Unknown_0x800da740)
    addiu   $s2, $s2, %lo(Unknown_2_0x802c8c58)
    or      $s4, $zero, $zero
    addiu   $fp, $zero, 0x4
    addiu   $s3, $zero, 0x1
branch_0x802c5e80:
    bnez    $s0, branch_0x802c5e9c
    lui     $t9, %hi(Unknown_0x801ce3b8)
    lui     $t6, %hi(Unknown_0x800d465c)
    lw      $t6, %lo(Unknown_0x800d465c)($t6)
    or      $v0, $zero, $zero
    b       branch_0x802c5eac
    sw      $t6, 0x48($sp)
branch_0x802c5e9c:
    lui     $t7, %hi(Unknown_0x800d4660)
    lw      $t7, %lo(Unknown_0x800d4660)($t7)
    or      $v0, $s3, $zero
    sw      $t7, 0x48($sp)
branch_0x802c5eac:
    sll     $t8, $v0, 3
    subu    $t8, $t8, $v0
    sll     $t8, $t8, 2
    addiu   $t9, $t9, %lo(Unknown_0x801ce3b8)
    addu    $s6, $t8, $t9
    lhu     $a0, Unknown_0x801ce3b8_2($s6)
    lui     $t2, %hi(Unknown_2_0x802c8bc0)
    andi    $t1, $a0, JOY_START|JOY_Z|JOY_A
    beqz    $t1, branch_0x802c60a4
    andi    $t7, $a0, JOY_B
    lw      $t2, %lo(Unknown_2_0x802c8bc0)($t2)
    beqz    $t2, branch_0x802c60a4
    nop
    lw      $t3, 0x0($s2)
    or      $a1, $s3, $zero
    sltiu   $at, $t3, 0x6
    beqz    $at, branch_0x802c6050
    sll     $t3, $t3, 2
    lui     $at, %hi(SwitchTable_2_0x802c8bec)
    addu    $at, $at, $t3
    lw      $t3, %lo(SwitchTable_2_0x802c8bec)($at)
    jr      $t3
    nop

branch_0x802c5f08: # 0x802c5f08
    sw      $s3, 0x0($s2)
    lui     $t6, 0x800e
    lh      $t6, -0x571c($t6)
    lui     $t5, 0x801d
    addiu   $t5, $t5, 0xe454
    sll     $t4, $s0, 1
    addu    $v0, $t4, $t5
    beqz    $t6, branch_0x802c5f3c
    addu    $v1, $s7, $s4
    andi    $t7, $a0, JOY_Z
    beqzl   $t7, branch_0x802c5f40
    lh      $t8, 0x0($v0)
    sh      $s3, 0x0($v0)
branch_0x802c5f3c:
    lh      $t8, 0x0($v0)
branch_0x802c5f40:
    beqzl   $t8, branch_0x802c5f70
    lw      $t5, 0x0($v1)
    lw      $t9, 0x0($v1)
    lui     $t2, 0x802d
    addiu   $t2, $t2, 0x8c70
    sll     $t1, $t9, 1
    addu    $v0, $t1, $t2
    lh      $t3, 0x0($v0)
    ori     $t4, $t3, 0x2
    b       branch_0x802c6050
    sh      $t4, 0x0($v0)

Function_0x802c5f6c: # 0x802c5f6c
    lw      $t5, 0x0($v1)
branch_0x802c5f70:
    lui     $t7, 0x802d
    addiu   $t7, $t7, 0x8c70
    sll     $t6, $t5, 1
    addu    $v0, $t6, $t7
    lh      $t8, 0x0($v0)
    ori     $t9, $t8, 0x1
    b       branch_0x802c6050
    sh      $t9, 0x0($v0)

branch_0x802c5f90: # 0x802c5f90
    lui     $t1, 0x800e
    addu    $t1, $t1, $s4
    lw      $t1, -0x58b8($t1)
    lui     $v0, 0x801d
    addiu   $t3, $zero, 0x2
    bnez    $t1, branch_0x802c5fe4
    nop
    bnez    $s0, branch_0x802c5fbc
    lw      $v0, -0x1c98($v0)
    lui     $at, 0x801d
    sw      $zero, -0x4f74($at)
branch_0x802c5fbc:
    beqz    $v0, branch_0x802c5fcc
    addiu   $at, $zero, 0xb
    bne     $v0, $at, branch_0x802c5fdc
    addiu   $t2, $zero, 0x5
branch_0x802c5fcc:
    jal     Function_0x802c6864
    or      $a0, $s0, $zero
    b       branch_0x802c6050
    addiu   $a1, $zero, 0x2
branch_0x802c5fdc:
    b       branch_0x802c6050
    sw      $t2, 0x0($s2)
branch_0x802c5fe4:
    bnez    $s0, branch_0x802c5ff0
    lui     $at, 0x801d
    sw      $s3, -0x4f74($at)
branch_0x802c5ff0:
    b       branch_0x802c6050
    sw      $t3, 0x0($s2)

branch_0x802c5ff8: # 0x802c5ff8
    addiu   $t4, $zero, 0x3
    b       branch_0x802c6050
    sw      $t4, 0x0($s2)

branch_0x802c6004: # 0x802c6004
    b       branch_0x802c6050
    sw      $fp, 0x0($s2)

branch_0x802c600c: # 0x802c600c
    lui     $v0, 0x801d
    lw      $v0, -0x1c98($v0)
    addiu   $at, $zero, 0xb
    beqz    $v0, branch_0x802c6028
    nop
    bne     $v0, $at, branch_0x802c6038
    addiu   $t5, $zero, 0x5
branch_0x802c6028:
    jal     Function_0x802c6864
    or      $a0, $s0, $zero
    b       branch_0x802c6050
    addiu   $a1, $zero, 0x2
branch_0x802c6038:
    b       branch_0x802c6050
    sw      $t5, 0x0($s2)

branch_0x802c6040: # 0x802c6040
    or      $a0, $s0, $zero
    jal     Function_0x802c6864
    sw      $a1, 0x40($sp)
    lw      $a1, 0x40($sp)
branch_0x802c6050:
    beqz    $a1, branch_0x802c6690
    lui     $t6, 0x8023
    lh      $t6, -0x780e($t6)
    addiu   $a0, $zero, 0x2a
    bne     $s3, $t6, branch_0x802c6078
    nop
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6694
    lw      $t1, 0x0($s2)
branch_0x802c6078:
    bne     $a1, $s3, branch_0x802c6094
    addiu   $a0, $zero, 0x37
    addiu   $a0, $zero, 0x11
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6694
    lw      $t1, 0x0($s2)
branch_0x802c6094:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6694
    lw      $t1, 0x0($s2)

branch_0x802c60a4:
    beqz    $t7, branch_0x802c61b0
    andi    $t6, $a0, JOY_CRIGHT|JOY_CLEFT|JOY_CDOWN|JOY_CUP
    lw      $t8, 0x0($s2)
    or      $a1, $s3, $zero
    sltiu   $at, $t8, 0x6
    beqz    $at, branch_0x802c6194
    sll     $t8, $t8, 2
    lui     $at, %hi(SwitchTable_2_0x802c8c04)
    addu    $at, $at, $t8
    lw      $t8, %lo(SwitchTable_2_0x802c8c04)($at)
    jr      $t8
    nop

branch_0x802c60d4_ChangeStateToB: # 0x802c60d4
    addiu   $a0, $zero, 0x2
    jal     Function_0x802c84ec_ChangeStateToB
    sw      $a1, 0x40($sp)

    b       branch_0x802c6198
    lw      $a1, 0x40($sp)

branch_0x802c60e8: # 0x802c60e8
    sll     $t9, $s0, 1
    lui     $t1, 0x801d
    sw      $zero, 0x0($s2)
    addu    $t1, $t1, $t9
    lh      $t1, -0x1bac($t1)
    addu    $v1, $s7, $s4
    beqzl   $t1, branch_0x802c6130
    lw      $t7, 0x0($v1)
    lw      $t2, 0x0($v1)
    lui     $t4, 0x802d
    addiu   $t4, $t4, 0x8c70
    sll     $t3, $t2, 1
    addu    $v0, $t3, $t4
    lh      $t5, 0x0($v0)
    andi    $t6, $t5, 0xfffd
    b       branch_0x802c6198
    sh      $t6, 0x0($v0)

Function_0x802c612c: # 0x802c612c
    lw      $t7, 0x0($v1)
branch_0x802c6130:
    lui     $t9, 0x802d
    addiu   $t9, $t9, 0x8c70
    sll     $t8, $t7, 1
    addu    $v0, $t8, $t9
    lh      $t1, 0x0($v0)
    andi    $t2, $t1, 0xfffe
    b       branch_0x802c6198
    sh      $t2, 0x0($v0)

branch_0x802c6150: # 0x802c6150
    lui     $t3, 0x800e
    addu    $t3, $t3, $s4
    lw      $t3, -0x58b8($t3)
    bnez    $t3, branch_0x802c616c
    nop
    b       branch_0x802c6198
    sw      $s3, 0x0($s2)
branch_0x802c616c:
    b       branch_0x802c6198
    sw      $fp, 0x0($s2)

branch_0x802c6174: # 0x802c6174
    b       branch_0x802c6198
    sw      $s3, 0x0($s2)

branch_0x802c617c: # 0x802c617c
    addiu   $t4, $zero, 0x2
    b       branch_0x802c6198
    sw      $t4, 0x0($s2)

branch_0x802c6188: # 0x802c6188
    addiu   $t5, $zero, 0x3
    b       branch_0x802c6198
    sw      $t5, 0x0($s2)
branch_0x802c6194:
    or      $a1, $zero, $zero
branch_0x802c6198:
    beqz    $a1, branch_0x802c6690
    addiu   $a0, $zero, 0x16
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6694
    lw      $t1, 0x0($s2)
branch_0x802c61b0:
    beqz    $t6, branch_0x802c6298
    addiu   $v1, $zero, 0x1
    addu    $t7, $s7, $s4
    lw      $t8, 0x0($t7)
    lw      $v0, 0x0($s2)
    lui     $v1, 0x802d
    sll     $t9, $t8, 2
    addu    $v1, $v1, $t9
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c61f8
    lw      $v1, -0x7428($v1)
    addiu   $at, $zero, 0x3
    beq     $v0, $at, branch_0x802c6230
    lui     $t4, 0x800e
    beq     $v0, $fp, branch_0x802c6264
    lui     $t7, 0x800e
    b       branch_0x802c6694
    lw      $t1, 0x0($s2)
branch_0x802c61f8:
    sll     $v0, $v1, 3
    subu    $v0, $v0, $v1
    sll     $t2, $s0, 3
    subu    $t2, $t2, $s0
    sll     $v0, $v0, 1
    lui     $t1, 0x800e
    addu    $t1, $t1, $v0
    sll     $t2, $t2, 3
    lb      $t1, -0x5925($t1)
    addu    $t3, $t2, $v0
    lui     $at, 0x801d
    addu    $at, $at, $t3
    b       branch_0x802c6690
    sb      $t1, -0x4ffd($at)
branch_0x802c6230:
    sll     $v0, $v1, 3
    subu    $v0, $v0, $v1
    sll     $t5, $s0, 3
    subu    $t5, $t5, $s0
    sll     $v0, $v0, 1
    addu    $t4, $t4, $v0
    sll     $t5, $t5, 3
    lb      $t4, -0x5924($t4)
    addu    $t6, $t5, $v0
    lui     $at, 0x801d
    addu    $at, $at, $t6
    b       branch_0x802c6690
    sb      $t4, -0x4ffc($at)
branch_0x802c6264:
    sll     $v0, $v1, 3
    subu    $v0, $v0, $v1
    sll     $t8, $s0, 3
    subu    $t8, $t8, $s0
    sll     $v0, $v0, 1
    addu    $t7, $t7, $v0
    sll     $t8, $t8, 3
    lb      $t7, -0x5923($t7)
    addu    $t9, $t8, $v0
    lui     $at, 0x801d
    addu    $at, $at, $t9
    b       branch_0x802c6690
    sb      $t7, -0x4ffb($at)
branch_0x802c6298:
    lui     $t3, 0x800e
    lw      $t3, -0x5758($t3)
    lui     $t2, 0x802d
    lui     $t1, 0x802d
    addiu   $t1, $t1, 0x8bb8
    addiu   $t2, $t2, 0x8bb0
    addu    $s1, $s4, $t2
    addu    $s5, $s4, $t1
    beq     $s3, $t3, branch_0x802c62d4
    or      $a3, $zero, $zero
    lw      $t5, 0x0($s7)
    lw      $t4, 0x4($s7)
    bnel    $t5, $t4, branch_0x802c62d8
    lw      $a2, 0x0($s2)
    or      $v1, $zero, $zero
branch_0x802c62d4:
    lw      $a2, 0x0($s2)
branch_0x802c62d8:
    lui     $t8, 0x801d
    addiu   $t8, $t8, 0xe454
    bnez    $a2, branch_0x802c6390
    sll     $t6, $s0, 1
    lui     $a1, 0x800e
    lh      $a1, -0x5720($a1)
    beqz    $v1, branch_0x802c6320
    addu    $v0, $t6, $t8
    lhu     $t7, 0x0($s6)
    xori    $t2, $s0, 0x1
    andi    $t9, $t7, JOY_UP
    beqz    $t9, branch_0x802c6318
    nop
    or      $a3, $s3, $zero
    b       branch_0x802c635c
    sh      $t2, 0x0($v0)
branch_0x802c6318:
    b       branch_0x802c635c
    sh      $s0, 0x0($v0)
branch_0x802c6320:
    addu    $t1, $s7, $s4
    lw      $t3, 0x0($t1)
    lui     $v1, 0x802d
    sll     $t5, $t3, 1
    addu    $v1, $v1, $t5
    lh      $v1, -0x7390($v1)
    bnez    $v1, branch_0x802c6348
    andi    $t4, $v1, 0x1
    b       branch_0x802c635c
    sh      $s0, 0x0($v0)
branch_0x802c6348:
    beqzl   $t4, branch_0x802c635c
    sh      $zero, 0x0($v0)
    b       branch_0x802c635c
    sh      $s3, 0x0($v0)

Function_0x802c6358: # 0x802c6358
    sh      $zero, 0x0($v0)
branch_0x802c635c:
    beqzl   $a1, branch_0x802c6394
    andi    $t7, $a0, 0x200
    bnel    $s3, $t0, branch_0x802c6394
    andi    $t7, $a0, 0x200
    lhu     $t6, 0x0($s6)
    lui     $at, %hi(Unknown_0x800da8e4)
    andi    $t8, $t6, JOY_DOWN
    beqz    $t8, branch_0x802c638c
    nop
    lui     $at, %hi(Unknown_0x800da8e4)
    b       branch_0x802c6390
    sh      $s3, %lo(Unknown_0x800da8e4)($at)
branch_0x802c638c:
    sh      $zero, %lo(Unknown_0x800da8e4)($at)
branch_0x802c6390:
    andi    $t7, $a0, 0x200
branch_0x802c6394:
    beqz    $t7, branch_0x802c6488
    sw      $zero, 0x0($s1)
    sltiu   $at, $a2, 0x5
    beqz    $at, branch_0x802c646c
    or      $a1, $s3, $zero
    sll     $t9, $a2, 2
    lui     $at, %hi(SwitchTable_2_0x802c8c1c)
    addu    $at, $at, $t9
    lw      $t9, %lo(SwitchTable_2_0x802c8c1c)($at)
    jr      $t9
    nop

branch_0x802c63c0: # 0x802c63c0
    beqz    $a3, branch_0x802c63d0
    addu    $v1, $s7, $s4
    b       branch_0x802c6470
    or      $a1, $zero, $zero
branch_0x802c63d0:
    lw      $t2, 0x0($v1)
    lui     $t3, 0x802d
    addiu   $t3, $t3, 0x8c60
    addiu   $t1, $t2, 0xffff
    sw      $t1, 0x0($v1)
    bgez    $t1, branch_0x802c63f4
    addu    $v0, $s4, $t3
    addiu   $t4, $zero, 0x3
    sw      $t4, 0x0($v1)
branch_0x802c63f4:
    addiu   $t6, $zero, 0x200
    b       branch_0x802c6470
    sw      $t6, 0x0($v0)

branch_0x802c6400: # 0x802c6400
    lui     $t8, %hi(Unknown_0x800da748)
    addiu   $t8, $t8, %lo(Unknown_0x800da748)
    addu    $v0, $s4, $t8
    lw      $t7, 0x0($v0)
    addiu   $t9, $t7, 0xffff
    bgez    $t9, branch_0x802c6470
    sw      $t9, 0x0($v0)
    b       branch_0x802c6470
    sw      $s3, 0x0($v0)

branch_0x802c6424: # 0x802c6424
    sw      $s3, 0x0($s1)
    or      $a0, $s0, $zero
    jal     Function_0x802c676c
    or      $a1, $zero, $zero
    b       branch_0x802c6470
    or      $a1, $v0, $zero

branch_0x802c643c: # 0x802c643c
    sw      $s3, 0x0($s1)
    or      $a0, $s0, $zero
    jal     Function_0x802c676c
    or      $a1, $s3, $zero
    b       branch_0x802c6470
    or      $a1, $v0, $zero

branch_0x802c6454: # 0x802c6454
    sw      $s3, 0x0($s1)
    or      $a0, $s0, $zero
    jal     Function_0x802c676c
    addiu   $a1, $zero, 0x2
    b       branch_0x802c6470
    or      $a1, $v0, $zero
branch_0x802c646c:
    or      $a1, $zero, $zero
branch_0x802c6470:
    beqz    $a1, branch_0x802c6574
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6578
    lw      $t5, 0x0($s1)
branch_0x802c6488:
    andi    $t1, $a0, 0x100
    beqz    $t1, branch_0x802c6574
    sltiu   $at, $a2, 0x5
    beqz    $at, branch_0x802c6560
    or      $a1, $s3, $zero
    sll     $t3, $a2, 2
    lui     $at, %hi(SwitchTable_2_0x802c8c30)
    addu    $at, $at, $t3
    lw      $t3, %lo(SwitchTable_2_0x802c8c30)($at)
    jr      $t3
    nop

branch_0x802c64b4:
    beqz    $a3, branch_0x802c64c4
    addu    $v1, $s7, $s4
    b       branch_0x802c6564
    or      $a1, $zero, $zero
branch_0x802c64c4:
    lw      $t5, 0x0($v1)
    lui     $t6, 0x802d
    addiu   $t6, $t6, 0x8c60
    addiu   $t4, $t5, 0x1
    sw      $t4, 0x0($v1)
    bne     $fp, $t4, branch_0x802c64e4
    addu    $v0, $s4, $t6
    sw      $zero, 0x0($v1)
branch_0x802c64e4:
    addiu   $t7, $zero, 0x200
    b       branch_0x802c6564
    sw      $t7, 0x0($v0)

branch_0x802c64f0:
    lui     $t9, 0x800e
    addiu   $t9, $t9, 0xa748
    addu    $v0, $s4, $t9
    lw      $t2, 0x0($v0)
    addiu   $at, $zero, 0x2
    addiu   $t1, $t2, 0x1
    bne     $t1, $at, branch_0x802c6564
    sw      $t1, 0x0($v0)
    b       branch_0x802c6564
    sw      $zero, 0x0($v0)

branch_0x802c6518:
    sw      $s3, 0x0($s1)
    or      $a0, $s0, $zero
    jal     Function_0x802c67e4
    or      $a1, $zero, $zero
    b       branch_0x802c6564
    or      $a1, $v0, $zero

branch_0x802c6530:
    sw      $s3, 0x0($s1)
    or      $a0, $s0, $zero
    jal     Function_0x802c67e4
    or      $a1, $s3, $zero
    b       branch_0x802c6564
    or      $a1, $v0, $zero

branch_0x802c6548:
    sw      $s3, 0x0($s1)
    or      $a0, $s0, $zero
    jal     Function_0x802c67e4
    addiu   $a1, $zero, 0x2
    b       branch_0x802c6564
    or      $a1, $v0, $zero
branch_0x802c6560:
    or      $a1, $zero, $zero
branch_0x802c6564:
    beqz    $a1, branch_0x802c6574
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c6574:
    lw      $t5, 0x0($s1)
branch_0x802c6578:
    beqz    $t5, branch_0x802c6588
    addiu   $t4, $zero, 0xfffd
    b       branch_0x802c6690
    sw      $t4, 0x0($s5)
branch_0x802c6588:
    lw      $t6, 0x0($s5)
    addiu   $t8, $t6, 0x1
    slti    $at, $t8, 0x4
    bnez    $at, branch_0x802c6690
    sw      $t8, 0x0($s5)
    lhu     $v0, 0x0($s6)
    sw      $zero, 0x0($s5)
    andi    $t9, $v0, JOY_LEFT
    beqz    $t9, branch_0x802c6620
    andi    $t2, $v0, JOY_RIGHT
    lw      $v0, 0x0($s2)
    addiu   $at, $zero, 0x2
    or      $a0, $s0, $zero
    beq     $v0, $at, branch_0x802c65dc
    addiu   $at, $zero, 0x3
    beq     $v0, $at, branch_0x802c65ec
    or      $a0, $s0, $zero
    beq     $v0, $fp, branch_0x802c65fc
    or      $a0, $s0, $zero
    b       branch_0x802c6608
    or      $a1, $zero, $zero
branch_0x802c65dc:
    jal     Function_0x802c676c
    or      $a1, $zero, $zero
    b       branch_0x802c6608
    or      $a1, $v0, $zero
branch_0x802c65ec:
    jal     Function_0x802c676c
    or      $a1, $s3, $zero
    b       branch_0x802c6608
    or      $a1, $v0, $zero
branch_0x802c65fc:
    jal     Function_0x802c676c
    addiu   $a1, $zero, 0x2
    or      $a1, $v0, $zero
branch_0x802c6608:
    beqz    $a1, branch_0x802c6690
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6694
    lw      $t1, 0x0($s2)
branch_0x802c6620:
    beqzl   $t2, branch_0x802c6694
    lw      $t1, 0x0($s2)
    lw      $v0, 0x0($s2)
    addiu   $at, $zero, 0x2
    or      $a0, $s0, $zero
    beq     $v0, $at, branch_0x802c6654
    addiu   $at, $zero, 0x3
    beq     $v0, $at, branch_0x802c6664
    or      $a0, $s0, $zero
    beq     $v0, $fp, branch_0x802c6674
    or      $a0, $s0, $zero
    b       branch_0x802c6680
    or      $a1, $zero, $zero
branch_0x802c6654:
    jal     Function_0x802c67e4
    or      $a1, $zero, $zero
    b       branch_0x802c6680
    or      $a1, $v0, $zero
branch_0x802c6664:
    jal     Function_0x802c67e4
    or      $a1, $s3, $zero
    b       branch_0x802c6680
    or      $a1, $v0, $zero
branch_0x802c6674:
    jal     Function_0x802c67e4
    addiu   $a1, $zero, 0x2
    or      $a1, $v0, $zero
branch_0x802c6680:
    beqz    $a1, branch_0x802c6690
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c6690:
    lw      $t1, 0x0($s2)
branch_0x802c6694:
    lui     $t0, 0x801d
    addiu   $s0, $s0, 0x1
    bnez    $t1, branch_0x802c6724
    lh      $t0, -0x1c94($t0)
    addu    $t6, $s7, $s4
    lw      $t8, 0x0($t6)
    lw      $t3, 0x48($sp)
    lui     $a0, 0x802d
    sll     $t7, $t8, 2
    sll     $t5, $t3, 2
    addu    $a0, $a0, $t7
    subu    $t5, $t5, $t3
    lw      $a0, -0x7428($a0)
    sll     $t5, $t5, 3
    subu    $t5, $t5, $t3
    sll     $t5, $t5, 3
    addu    $t5, $t5, $t3
    sll     $t9, $a0, 3
    sll     $t5, $t5, 2
    lui     $t2, %hi(String_DriverNames)
    subu    $t9, $t9, $a0
    lui     $t4, %hi(Unknown_0x801923f0_GameStruct)
    sll     $t9, $t9, 1
    addiu   $t2, $t2, %lo(String_DriverNames)
    subu    $t5, $t5, $t3
    sll     $t5, $t5, 3
    addiu   $t4, $t4, %lo(Unknown_0x801923f0_GameStruct)
    addu    $v1, $t9, $t2
    addu    $v0, $t5, $t4
    lb      $t1, 0xb($v1)
    lb      $t3, 0xc($v1)
    lb      $t5, 0xd($v1)
    sw      $a0, 0xb68($v0)
    sw      $t1, 0xb6c($v0)
    sw      $t3, 0xb70($v0)
    sw      $t5, 0xb74($v0)
branch_0x802c6724:
    slt     $at, $s0, $t0
    addiu   $s4, $s4, 0x4
    bnez    $at, branch_0x802c5e80
    addiu   $s2, $s2, 0x4
branch_0x802c6734:
    jal     Function_0x80047df0
    nop
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
    addiu   $sp, $sp, 0x58

Function_0x802c676c: # 0x802c676c
    sll     $t6, $a0, 2
    lui     $t7, 0x800e
    addu    $t7, $t7, $t6
    lw      $t7, -0x58c0($t7)
    lui     $v0, 0x802d
    sll     $t9, $a0, 3
    sll     $t8, $t7, 2
    addu    $v0, $v0, $t8
    lw      $v0, -0x7428($v0)
    subu    $t9, $t9, $a0
    sll     $t9, $t9, 3
    sll     $t0, $v0, 3
    subu    $t0, $t0, $v0
    sll     $t0, $t0, 1
    addu    $t1, $t9, $t0
    lui     $t3, 0x801d
    addiu   $t3, $t3, 0xaff8
    addu    $t2, $t1, $a1
    addu    $a2, $t2, $t3
    lb      $t4, 0xb($a2)
    addiu   $v1, $zero, 0x1
    addiu   $t5, $t4, 0xffff
    sb      $t5, 0xb($a2)
    lb      $t6, 0xb($a2)
    bgez    $t6, branch_0x802c67dc
    nop
    or      $v1, $zero, $zero
    sb      $zero, 0xb($a2)
branch_0x802c67dc:
    jr      $ra
    or      $v0, $v1, $zero

Function_0x802c67e4: # 0x802c67e4
    sll     $t6, $a0, 2
    lui     $t7, 0x800e
    addu    $t7, $t7, $t6
    lw      $t7, -0x58c0($t7)
    lui     $v0, 0x802d
    sll     $t9, $a0, 3
    sll     $t8, $t7, 2
    addu    $v0, $v0, $t8
    lw      $v0, -0x7428($v0)
    subu    $t9, $t9, $a0
    sll     $t9, $t9, 3
    sll     $t0, $v0, 3
    subu    $t0, $t0, $v0
    sll     $t0, $t0, 1
    addu    $t1, $t9, $t0
    lui     $t3, 0x801d
    addiu   $t3, $t3, 0xaff8
    addu    $t2, $t1, $a1
    addu    $a2, $t2, $t3
    lb      $t4, 0xb($a2)
    addiu   $at, $zero, 0xc
    addiu   $v1, $zero, 0x1
    addiu   $t5, $t4, 0x1
    sb      $t5, 0xb($a2)
    lb      $t6, 0xb($a2)
    addiu   $t7, $zero, 0xb
    bne     $t6, $at, branch_0x802c685c
    nop
    or      $v1, $zero, $zero
    sb      $t7, 0xb($a2)
branch_0x802c685c:
    jr      $ra
    or      $v0, $v1, $zero

Function_0x802c6864: # 0x802c6864
    lui     $a2, 0x801d
    addiu   $a2, $a2, 0xe368
    lh      $t6, 0x4($a2)
    addiu   $sp, $sp, 0xffb8
    sw      $ra, 0x14($sp)
    addiu   $ra, $zero, 0x1
    or      $a1, $a0, $zero
    bne     $ra, $t6, branch_0x802c6890
    or      $v0, $zero, $zero
    b       branch_0x802c68c4
    or      $v0, $ra, $zero
branch_0x802c6890:
    lui     $v1, %hi(Unknown_2_0x802c8c58)
    addiu   $v1, $v1, %lo(Unknown_2_0x802c8c58)
    sll     $t7, $a1, 2
    addiu   $a0, $zero, 0x6
    addu    $t8, $v1, $t7
    sw      $a0, 0x0($t8)
    lw      $t9, 0x0($v1)
    bne     $a0, $t9, branch_0x802c68c4
    nop
    lw      $t6, 0x4($v1)
    bne     $a0, $t6, branch_0x802c68c4
    nop
    or      $v0, $ra, $zero
branch_0x802c68c4:
    beqzl   $v0, branch_0x802c6ad0
    lw      $ra, 0x14($sp)
    lw      $v0, 0x0($a2)
    lui     $v1, 0x800e
    addiu   $v1, $v1, 0xa740
    beqz    $v0, branch_0x802c6a3c
    lui     $t1, 0x802d
    beq     $v0, $ra, branch_0x802c6a74
    addiu   $t2, $zero, 0x4
    beq     $v0, $t2, branch_0x802c6904
    or      $a2, $zero, $zero
    addiu   $at, $zero, 0xb
    beql    $v0, $at, branch_0x802c6a40
    lw      $t8, 0x0($v1)
    b       branch_0x802c6ac4_ChangeStateToB
    nop
branch_0x802c6904:
    addiu   $v0, $sp, 0x34
    addiu   $v1, $sp, 0x38
branch_0x802c690c:
    addiu   $v0, $v0, 0x1
    sltu    $at, $v0, $v1
    bnez    $at, branch_0x802c690c
    sb      $zero, -0x1($v0)
    lui     $v1, 0x800e
    addiu   $v1, $v1, 0xa740
    lw      $t3, 0x0($v1)
    lui     $t4, %hi(Unknown_0x800d465c)
    lui     $a3, 0x800e
    addu    $t7, $sp, $t3
    sb      $ra, 0x34($t7)
    lui     $t1, 0x802d
    addiu   $t1, $t1, 0x8bd8
    lw      $t4, %lo(Unknown_0x800d465c)($t4)
    addiu   $a3, $a3, 0xa730
    addiu   $t5, $zero, 0xc
branch_0x802c694c:
    beq     $a2, $t4, branch_0x802c6a14
    or      $v1, $zero, $zero
    sll     $t8, $a2, 2
    subu    $t8, $t8, $a2
    sll     $t8, $t8, 3
    subu    $t8, $t8, $a2
    sll     $t8, $t8, 3
    addu    $t8, $t8, $a2
    lui     $t6, %hi(TrackNr_0x800d7ef0)
    lw      $t6, %lo(TrackNr_0x800d7ef0)($t6)
    sll     $t8, $t8, 2
    subu    $t8, $t8, $a2
    lui     $t9, %hi(Unknown_0x801923f0_GameStruct)
    addiu   $t9, $t9, %lo(Unknown_0x801923f0_GameStruct)
    sll     $t8, $t8, 3
    addu    $a1, $t8, $t9
    sll     $t7, $t6, 2
    lui     $t8, 0x800e
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 4
    addiu   $t8, $t8, 0x9424
    addu    $t0, $t7, $t8
    addiu   $v0, $sp, 0x34
branch_0x802c69a8:
    lb      $t9, 0x0($v0)
    bnezl   $t9, branch_0x802c69c0
    addiu   $v1, $v1, 0x1
    b       branch_0x802c69cc
    sb      $ra, 0x0($v0)

Function_0x802c69bc: # 0x802c69bc
    addiu   $v1, $v1, 0x1
branch_0x802c69c0:
    slti    $at, $v1, 0x4
    bnez    $at, branch_0x802c69a8
    addiu   $v0, $v0, 0x1
branch_0x802c69cc:
    bnel    $v1, $t2, branch_0x802c69dc
    sll     $t6, $v1, 2
    addiu   $v1, $v1, 0xffff
    sll     $t6, $v1, 2
branch_0x802c69dc:
    addu    $t7, $t1, $t6
    lw      $v0, 0x0($t7)
    multu   $v0, $t5
    sw      $v0, 0x0($a3)
    sw      $v0, 0xb68($a1)
    mflo    $t8
    addu    $a0, $t0, $t8
    lw      $t9, 0x0($a0)
    lw      $t6, 0x4($a0)
    lw      $t7, 0x8($a0)
    sw      $t9, 0xb6c($a1)
    sw      $t6, 0xb70($a1)
    b       branch_0x802c6a24
    sw      $t7, 0xb74($a1)
branch_0x802c6a14:
    sll     $t8, $t3, 2
    addu    $t9, $t1, $t8
    lw      $t6, 0x0($t9)
    sw      $t6, 0x0($a3)
branch_0x802c6a24:
    addiu   $a2, $a2, 0x1
    bne     $a2, $t2, branch_0x802c694c
    addiu   $a3, $a3, 0x4
    addiu   $t7, $zero, 0x1e
    b       branch_0x802c6ac4_ChangeStateToB
    sw      $t7, 0x38($sp)
branch_0x802c6a3c:
    lw      $t8, 0x0($v1)
branch_0x802c6a40:
    addiu   $t1, $t1, 0x8bd8
    lui     $v0, 0x800e
    sll     $t9, $t8, 2
    addu    $t6, $t1, $t9
    lw      $t7, 0x0($t6)
    addiu   $v0, $v0, 0xa730
    addiu   $t8, $zero, 0x14
    sw      $zero, 0x4($v0)
    sw      $zero, 0x8($v0)
    sw      $zero, 0xc($v0)
    sw      $t8, 0x38($sp)
    b       branch_0x802c6ac4_ChangeStateToB
    sw      $t7, 0x0($v0)
branch_0x802c6a74:
    lui     $v1, 0x800e
    addiu   $v1, $v1, 0xa740
    lw      $t9, 0x0($v1)
    lui     $t1, 0x802d
    addiu   $t1, $t1, 0x8bd8
    sll     $t6, $t9, 2
    lw      $t9, 0x4($v1)
    addu    $t7, $t1, $t6
    lw      $t8, 0x0($t7)
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa730
    sll     $t6, $t9, 2
    addu    $t7, $t1, $t6
    sw      $t8, 0x0($v0)
    lw      $t8, 0x0($t7)
    addiu   $t9, $zero, 0x14
    sw      $zero, 0x8($v0)
    sw      $zero, 0xc($v0)
    sw      $t9, 0x38($sp)
    sw      $t8, 0x4($v0)

branch_0x802c6ac4_ChangeStateToB:
    jal     Function_0x802c84ec_ChangeStateToB
    lw      $a0, 0x38($sp)
    lw      $ra, 0x14($sp)

branch_0x802c6ad0:
    addiu   $sp, $sp, 0x48
    jr      $ra
    nop

Function_0x802c6adc: # 0x802c6adc
    addiu   $sp, $sp, 0xffd8
    sw      $s0, 0x20($sp)
    or      $v0, $a0, $zero
    sw      $ra, 0x24($sp)
    lui     $t6, 0x80c
    lui     $s0, 0x600
    addiu   $t6, $t6, 0xe248
    addiu   $a0, $a0, 0x8
    sw      $t6, 0x4($v0)
    sw      $s0, 0x0($v0)
    or      $v1, $a0, $zero
    lui     $t7, 0x107
    addiu   $t7, $t7, 0xf628
    sw      $t7, 0x4($v1)
    sw      $s0, 0x0($v1)
    addiu   $t8, $zero, 0x108
    addiu   $t9, $zero, 0x1e
    addiu   $a0, $a0, 0x8
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1c
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x16
    addiu   $t5, $zero, 0x82
    addiu   $t6, $zero, 0xd
    sw      $t6, 0x14($sp)
    sw      $t5, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1c
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x60
    addiu   $t7, $zero, 0x3b
    addiu   $t8, $zero, 0xd
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x20
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x6e
    addiu   $t9, $zero, 0x3b
    addiu   $t5, $zero, 0xd
    sw      $t5, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x5f
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x6e
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x13
    jal     Function_0x802c86e4
    addiu   $a2, $zero, 0x68
    lui     $t6, 0x802d
    lw      $t6, -0x73a8($t6)
    addiu   $at, $zero, 0x5
    or      $a0, $v0, $zero
    beq     $t6, $at, branch_0x802c6be4
    lui     $a3, 0x802d
    lui     $t7, 0x80c
    addiu   $t7, $t7, 0xe2b8
    sw      $t7, 0x4($v0)
    addiu   $a0, $v0, 0x8
    sw      $s0, 0x0($v0)
branch_0x802c6be4:
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t4, 0xe700
    or      $v1, $a0, $zero
    sw      $t4, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t8, 0xb900
    lui     $t9, 0x50
    ori     $t9, $t9, 0x4240
    ori     $t8, $t8, 0x31d
    addiu   $a0, $a0, 0x8
    sw      $t8, 0x0($v1)
    sw      $t9, 0x4($v1)
    or      $a1, $a0, $zero
    lui     $t5, 0xfc11
    lui     $t6, 0xff2f
    ori     $t6, $t6, 0xffff
    ori     $t5, $t5, 0x9623
    addiu   $a3, $a3, 0x8c6a
    sw      $t5, 0x0($a1)
    sw      $t6, 0x4($a1)
    lh      $a2, 0x0($a3)
    lui     $t3, 0xf568
    addiu   $a0, $a0, 0x8
    bnez    $a2, branch_0x802c6d0c
    ori     $t3, $t3, 0x1000
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x8c68
    lh      $v0, 0x0($v1)
    lui     $at, 0x4080
    mtc1    $at, $zero
    mtc1    $v0, $a0
    lui     $at, 0x437f
    mtc1    $at, $t0
    cvt.s.w $f6, $f4
    addiu   $t0, $zero, 0x1
    lui     $at, 0x4f00
    mul.s   $f10, $f6, $f8
    div.s   $f16, $f10, $f0
    cfc1    $t7, $ra
    ctc1    $t0, $ra
    nop
    cvt.w.s $f18, $f16
    cfc1    $t0, $ra
    nop
    andi    $t0, $t0, 0x78
    beqzl   $t0, branch_0x802c6cf4
    mfc1    $t0, $s2
    mtc1    $at, $s2
    addiu   $t0, $zero, 0x1
    lui     $at, 0x8000
    sub.s   $f18, $f16, $f18
    ctc1    $t0, $ra
    nop
    cvt.w.s $f18, $f18
    cfc1    $t0, $ra
    nop
    andi    $t0, $t0, 0x78
    bnezl   $t0, branch_0x802c6ce8
    ctc1    $t7, $ra
    mfc1    $t0, $s2
    ctc1    $t7, $ra
    b       branch_0x802c6dc8
    or      $t0, $t0, $at

Function_0x802c6ce4: # 0x802c6ce4
    ctc1    $t7, $ra
branch_0x802c6ce8:
    b       branch_0x802c6dc8
    addiu   $t0, $zero, 0xffff

Function_0x802c6cf0: # 0x802c6cf0
    mfc1    $t0, $s2
branch_0x802c6cf4:
    nop
    bltzl   $t0, branch_0x802c6ce8
    ctc1    $t7, $ra
    ctc1    $t7, $ra
    b       branch_0x802c6dcc
    addiu   $t9, $v0, 0x1
branch_0x802c6d0c:
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x8c68
    lh      $v0, 0x0($v1)
    lui     $at, 0x4080
    mtc1    $at, $zero
    mtc1    $v0, $a0
    lui     $at, 0x437f
    mtc1    $at, $t2
    cvt.s.w $f6, $f4
    addiu   $t0, $zero, 0x1
    lui     $at, 0x4f00
    sub.s   $f8, $f0, $f6
    mul.s   $f16, $f8, $f10
    div.s   $f18, $f16, $f0
    cfc1    $t8, $ra
    ctc1    $t0, $ra
    nop
    cvt.w.s $f4, $f18
    cfc1    $t0, $ra
    nop
    andi    $t0, $t0, 0x78
    beqzl   $t0, branch_0x802c6db0
    mfc1    $t0, $a0
    mtc1    $at, $a0
    addiu   $t0, $zero, 0x1
    sub.s   $f4, $f18, $f4
    ctc1    $t0, $ra
    nop
    cvt.w.s $f4, $f4
    cfc1    $t0, $ra
    nop
    andi    $t0, $t0, 0x78
    bnez    $t0, branch_0x802c6da4
    nop
    mfc1    $t0, $a0
    lui     $at, 0x8000
    b       branch_0x802c6dbc
    or      $t0, $t0, $at
branch_0x802c6da4:
    b       branch_0x802c6dbc
    addiu   $t0, $zero, 0xffff

Function_0x802c6dac: # 0x802c6dac
    mfc1    $t0, $a0
branch_0x802c6db0:
    nop
    bltz    $t0, branch_0x802c6da4
    nop
branch_0x802c6dbc:
    ctc1    $t8, $ra
    nop
    nop
branch_0x802c6dc8:
    addiu   $t9, $v0, 0x1
branch_0x802c6dcc:
    sh      $t9, 0x0($v1)
    lh      $t5, 0x0($v1)
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    slti    $at, $t5, 0x4
    bnez    $at, branch_0x802c6df4
    lui     $t7, 0xfa00
    xori    $t6, $a2, 0x1
    sh      $zero, 0x0($v1)
    sh      $t6, 0x0($a3)
branch_0x802c6df4:
    andi    $v1, $t0, 0xff
    sll     $t8, $v1, 24
    lui     $at, 0xff
    or      $t9, $t8, $at
    sll     $t5, $v1, 8
    or      $t6, $t9, $t5
    sw      $t7, 0x0($v0)
    ori     $t7, $t6, 0xff
    or      $a1, $a0, $zero
    sw      $t7, 0x4($v0)
    lui     $t9, 0x80b
    lui     $t8, 0xfd68
    ori     $t8, $t8, 0x3f
    addiu   $t9, $t9, 0x6590
    sw      $t9, 0x4($a1)
    sw      $t8, 0x0($a1)
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    lui     $t5, 0x708
    ori     $t5, $t5, 0x200
    addiu   $a0, $a0, 0x8
    or      $a3, $a0, $zero
    sw      $t5, 0x4($a2)
    addiu   $a0, $a0, 0x8
    sw      $t3, 0x0($a2)
    lui     $t6, 0xe600
    sw      $t6, 0x0($a3)
    or      $t1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($a3)
    lui     $t8, 0x70f
    ori     $t8, $t8, 0xc08c
    or      $v0, $a0, $zero
    lui     $t7, 0xf400
    sw      $t7, 0x0($t1)
    addiu   $a0, $a0, 0x8
    sw      $t8, 0x4($t1)
    or      $v1, $a0, $zero
    sw      $zero, 0x4($v0)
    sw      $t4, 0x0($v0)
    lui     $t9, 0x8
    ori     $t9, $t9, 0x200
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    sw      $t9, 0x4($v1)
    sw      $t3, 0x0($v1)
    lui     $t6, 0xf
    ori     $t6, $t6, 0xc08c
    lui     $t5, 0xf200
    lui     $t2, 0x800e
    addiu   $t2, $t2, 0xa740
    sw      $t5, 0x0($a1)
    sw      $t6, 0x4($a1)
    lw      $t7, 0x0($t2)
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x8bd0
    sll     $t8, $t7, 1
    addu    $t9, $t0, $t8
    lh      $t5, 0x0($t9)
    lui     $at, 0xe400
    addiu   $a0, $a0, 0x8
    addiu   $t6, $t5, 0x48
    sll     $t7, $t6, 2
    andi    $t8, $t7, 0xfff
    sll     $t9, $t8, 12
    or      $t5, $t9, $at
    ori     $t6, $t5, 0x16c
    or      $a2, $a0, $zero
    sw      $t6, 0x0($a2)
    lw      $t7, 0x0($t2)
    addiu   $a0, $a0, 0x8
    or      $a3, $a0, $zero
    sll     $t8, $t7, 1
    addu    $t9, $t0, $t8
    lh      $t5, 0x0($t9)
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    addiu   $t6, $t5, 0x8
    sll     $t7, $t6, 2
    andi    $t8, $t7, 0xfff
    sll     $t9, $t8, 12
    ori     $t5, $t9, 0xdc
    sw      $t5, 0x4($a2)
    lui     $t8, 0x400
    lui     $t6, 0xb300
    sw      $t6, 0x0($a3)
    ori     $t8, $t8, 0x400
    sw      $zero, 0x4($a3)
    lui     $t7, 0xb200
    sw      $t7, 0x0($v0)
    sw      $t8, 0x4($v0)
    addiu   $a0, $a0, 0x8
    jal     Function_0x802c70ec
    or      $a1, $zero, $zero
    lui     $t9, 0xb400
    sw      $t9, 0x0($v0)
    lui     $t5, 0x802d
    lhu     $t5, -0x73b0($t5)
    lui     $t6, 0x103
    ori     $t6, $t6, 0x40
    sw      $t6, 0x8($v0)
    lui     $t7, 0x700
    sw      $t5, 0x4($v0)
    addiu   $t7, $t7, 0xa40
    lui     $t8, 0x107
    lui     $t9, 0x80c
    lui     $t5, 0x102
    lui     $t6, 0x700
    sw      $t7, 0xc($v0)
    addiu   $t8, $t8, 0xf488
    addiu   $t9, $t9, 0xe468
    addiu   $t6, $t6, 0xa80
    ori     $t5, $t5, 0x40
    sw      $t8, 0x14($v0)
    sw      $s0, 0x10($v0)
    sw      $t9, 0x1c($v0)
    sw      $s0, 0x18($v0)
    sw      $t5, 0x20($v0)
    sw      $t6, 0x24($v0)
    lui     $t7, 0x801d
    lw      $t7, -0x1ca8($t7)
    addiu   $a0, $v0, 0x28
    or      $a1, $zero, $zero
    addiu   $t8, $t7, 0xc80
    sw      $t8, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    lui     $t9, 0x80c
    lui     $t5, 0x102
    lui     $t6, 0x700
    addiu   $t9, $t9, 0xe478
    addiu   $t6, $t6, 0xac0
    ori     $t5, $t5, 0x40
    sw      $t9, 0x4($v0)
    sw      $s0, 0x0($v0)
    sw      $t5, 0x8($v0)
    sw      $t6, 0xc($v0)
    lui     $t7, 0x801d
    lw      $t7, -0x1ca8($t7)
    addiu   $a0, $v0, 0x10
    addiu   $a1, $zero, 0x2
    addiu   $t8, $t7, 0xd40
    sw      $t8, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    lui     $t9, 0x80c
    lui     $t5, 0x102
    lui     $t6, 0x700
    addiu   $t9, $t9, 0xe488
    addiu   $t6, $t6, 0xb00
    ori     $t5, $t5, 0x40
    sw      $t9, 0x4($v0)
    sw      $s0, 0x0($v0)
    sw      $t5, 0x8($v0)
    sw      $t6, 0xc($v0)
    lui     $t7, 0x801d
    lw      $t7, -0x1ca8($t7)
    addiu   $a0, $v0, 0x10
    addiu   $a1, $zero, 0x3
    addiu   $t8, $t7, 0xe00
    sw      $t8, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    lui     $t9, 0x80c
    lui     $t5, 0x102
    lui     $t6, 0x700
    addiu   $t9, $t9, 0xe498
    addiu   $t6, $t6, 0xb40
    ori     $t5, $t5, 0x40
    sw      $t9, 0x4($v0)
    sw      $s0, 0x0($v0)
    sw      $t5, 0x8($v0)
    sw      $t6, 0xc($v0)
    lui     $t7, 0x801d
    lw      $t7, -0x1ca8($t7)
    addiu   $a0, $v0, 0x10
    addiu   $a1, $zero, 0x1
    addiu   $t8, $t7, 0xec0
    sw      $t8, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    lw      $ra, 0x24($sp)
    lw      $s0, 0x20($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

Function_0x802c70ec: # 0x802c70ec
    addiu   $sp, $sp, 0xff08
    sw      $s0, 0x40($sp)
    or      $s0, $a0, $zero
    bnez    $a1, branch_0x802c710c
    sw      $ra, 0x44($sp)
    addiu   $t6, $zero, 0x13
    b       branch_0x802c7114
    sw      $t6, 0xdc($sp)
branch_0x802c710c:
    addiu   $t7, $zero, 0x99
    sw      $t7, 0xdc($sp)
branch_0x802c7114:
    lui     $t8, 0x800e
    addiu   $t8, $t8, 0xa748
    sll     $v0, $a1, 2
    addu    $t9, $v0, $t8
    sw      $t9, 0x58($sp)
    lw      $t5, 0x0($t9)
    lui     $t6, %hi(Unknown_2_0x802c8c58)
    addiu   $t6, $t6, %lo(Unknown_2_0x802c8c58)
    beqz    $t5, branch_0x802c7148
    addu    $t7, $v0, $t6
    sw      $t7, 0x54($sp)
    lw      $v1, 0x0($t7)
    bnez    $v1, branch_0x802c719c
branch_0x802c7148:
    lui     $t9, 0x800e
    addiu   $t9, $t9, 0xa740
    addu    $t4, $v0, $t9
    sw      $t4, 0x4c($sp)
    lw      $t6, 0x0($t4)
    lui     $t8, 0x802d
    lui     $t5, %hi(Unknown_2_0x802c8c58)
    sll     $t7, $t6, 2
    addu    $t8, $t8, $t7
    lw      $t8, -0x7428($t8)
    addiu   $t5, $t5, %lo(Unknown_2_0x802c8c58)
    lui     $t4, %hi(String_DriverNames)
    sll     $t9, $t8, 3
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 1
    addiu   $t4, $t4, %lo(String_DriverNames)
    addu    $a0, $v0, $t5
    lw      $v1, 0x0($a0)
    sw      $a0, 0x54($sp)
    b       branch_0x802c71e8
    addu    $t0, $t9, $t4
branch_0x802c719c:
    lui     $t6, 0x800e
    addiu   $t6, $t6, 0xa740
    addu    $a0, $v0, $t6
    lw      $t8, 0x0($a0)
    lui     $t4, 0x802d
    sll     $t7, $a1, 3
    sll     $t9, $t8, 2
    addu    $t4, $t4, $t9
    lw      $t4, -0x7428($t4)
    subu    $t7, $t7, $a1
    sll     $t7, $t7, 3
    sll     $t5, $t4, 3
    subu    $t5, $t5, $t4
    sll     $t5, $t5, 1
    lui     $t8, 0x801d
    addiu   $t8, $t8, 0xaff8
    addu    $t6, $t7, $t5
    addu    $t0, $t6, $t8
    sw      $a0, 0x4c($sp)
branch_0x802c71e8:
    slti    $at, $v1, 0x2
    or      $t1, $zero, $zero
    sw      $zero, 0xf0($sp)
    sw      $zero, 0xec($sp)
    sw      $zero, 0xe8($sp)
    bnez    $at, branch_0x802c720c
    sw      $zero, 0xe4($sp)
    addiu   $t9, $zero, 0x1
    sw      $t9, 0xe8($sp)
branch_0x802c720c:
    blez    $v1, branch_0x802c7224
    lui     $t7, 0x801d
    addiu   $at, $zero, 0x6
    beq     $v1, $at, branch_0x802c7224
    addiu   $t4, $zero, 0x1
    sw      $t4, 0xe4($sp)
branch_0x802c7224:
    lh      $t7, -0x1c94($t7)
    addiu   $at, $zero, 0x1
    bne     $t7, $at, branch_0x802c725c
    addiu   $at, $zero, 0x5
    beq     $v1, $at, branch_0x802c7240
    addiu   $t5, $zero, 0x1
    addiu   $t1, $zero, 0x1
branch_0x802c7240:
    lw      $t8, 0xdc($sp)
    addiu   $t6, $zero, 0x1
    sw      $t5, 0xf0($sp)
    addiu   $t9, $t8, 0xa1
    sw      $t6, 0xec($sp)
    b       branch_0x802c7294
    sw      $t9, 0xd8($sp)
branch_0x802c725c:
    blez    $v1, branch_0x802c7270
    slti    $at, $v1, 0x5
    beqz    $at, branch_0x802c7270
    nop
    addiu   $t1, $zero, 0x1
branch_0x802c7270:
    blez    $v1, branch_0x802c727c
    addiu   $t4, $zero, 0x1
    sw      $t4, 0xf0($sp)
branch_0x802c727c:
    bnez    $v1, branch_0x802c7288
    addiu   $t7, $zero, 0x1
    sw      $t7, 0xec($sp)
branch_0x802c7288:
    lw      $t5, 0xdc($sp)
    addiu   $t6, $t5, 0x1b
    sw      $t6, 0xd8($sp)
branch_0x802c7294:
    beqz    $t1, branch_0x802c7554
    sw      $t1, 0xf4($sp)
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    lui     $t2, 0xe700
    or      $v1, $s0, $zero
    sw      $t2, 0x0($v0)
    sw      $zero, 0x4($v0)
    addiu   $s0, $s0, 0x8
    lui     $t8, 0xb900
    lui     $t9, 0xf0a
    ori     $t9, $t9, 0x4000
    ori     $t8, $t8, 0x31d
    or      $a0, $s0, $zero
    sw      $t8, 0x0($v1)
    sw      $t9, 0x4($v1)
    lui     $t4, 0xfcff
    lui     $t7, 0xfffc
    ori     $t7, $t7, 0xf279
    ori     $t4, $t4, 0xffff
    addiu   $s0, $s0, 0x8
    sw      $t4, 0x0($a0)
    sw      $t7, 0x4($a0)
    or      $a1, $s0, $zero
    lui     $t5, 0xfd10
    ori     $t5, $t5, 0x8
    addiu   $s0, $s0, 0x8
    lui     $t6, 0x80b
    addiu   $t6, $t6, 0x6518
    or      $a2, $s0, $zero
    sw      $t5, 0x0($a1)
    lui     $t8, 0x708
    lui     $a3, 0xf510
    ori     $t8, $t8, 0x200
    sw      $t6, 0x4($a1)
    ori     $a3, $a3, 0x600
    sw      $t8, 0x4($a2)
    sw      $a3, 0x0($a2)
    addiu   $s0, $s0, 0x8
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $t1, 0xf4($sp)
    or      $v1, $s0, $zero
    lui     $t9, 0xe600
    sw      $t9, 0x0($v0)
    addiu   $s0, $s0, 0x8
    sw      $zero, 0x4($v0)
    lui     $t7, 0x702
    ori     $t7, $t7, 0x14
    or      $a0, $s0, $zero
    lui     $t4, 0xf400
    sw      $t4, 0x0($v1)
    addiu   $s0, $s0, 0x8
    sw      $t7, 0x4($v1)
    or      $a1, $s0, $zero
    sw      $zero, 0x4($a0)
    sw      $t2, 0x0($a0)
    lui     $t5, 0x8
    ori     $t5, $t5, 0x200
    addiu   $s0, $s0, 0x8
    or      $a2, $s0, $zero
    sw      $t5, 0x4($a1)
    sw      $a3, 0x0($a1)
    lui     $t8, 0x2
    ori     $t8, $t8, 0x14
    lui     $t6, 0xf200
    sw      $t6, 0x0($a2)
    sw      $t8, 0x4($a2)
    lb      $t9, 0xb($t0)
    addiu   $a1, $zero, 0xa
    lw      $t1, 0xdc($sp)
    multu   $t9, $a1
    lui     $t2, 0xe400
    addiu   $s0, $s0, 0x8
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    lui     $t3, 0xb300
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    addiu   $s0, $s0, 0x8
    mflo    $t4
    addu    $t7, $t4, $t1
    addiu   $t5, $t7, 0x17
    sll     $t6, $t5, 2
    andi    $t8, $t6, 0xfff
    sll     $t9, $t8, 12
    or      $t4, $t9, $t2
    ori     $t7, $t4, 0x264
    sw      $t7, 0x0($v0)
    lb      $t5, 0xb($t0)
    or      $a2, $s0, $zero
    addiu   $s0, $s0, 0x8
    multu   $t5, $a1
    mflo    $t6
    addu    $t8, $t6, $t1
    addiu   $t9, $t8, 0xe
    sll     $t4, $t9, 2
    andi    $t7, $t4, 0xfff
    sll     $t5, $t7, 12
    ori     $t6, $t5, 0x24c
    sw      $t6, 0x4($v0)
    sw      $zero, 0x4($v1)
    sw      $t3, 0x0($v1)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    lui     $t8, 0xb200
    sw      $t8, 0x0($a0)
    sw      $t9, 0x4($a0)
    lb      $t4, 0xc($t0)
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    multu   $t4, $a1
    or      $v1, $s0, $zero
    addiu   $s0, $s0, 0x8
    or      $a0, $s0, $zero
    addiu   $s0, $s0, 0x8
    or      $a3, $s0, $zero
    addiu   $s0, $s0, 0x8
    mflo    $t7
    addu    $t5, $t7, $t1
    addiu   $t6, $t5, 0x17
    sll     $t8, $t6, 2
    andi    $t9, $t8, 0xfff
    sll     $t4, $t9, 12
    or      $t7, $t4, $t2
    ori     $t5, $t7, 0x2d8
    sw      $t5, 0x0($a2)
    lb      $t6, 0xc($t0)
    multu   $t6, $a1
    mflo    $t8
    addu    $t9, $t8, $t1
    addiu   $t4, $t9, 0xe
    sll     $t7, $t4, 2
    andi    $t5, $t7, 0xfff
    sll     $t6, $t5, 12
    ori     $t8, $t6, 0x2c0
    sw      $t8, 0x4($a2)
    sw      $zero, 0x4($v0)
    sw      $t3, 0x0($v0)
    lui     $t4, 0x400
    ori     $t4, $t4, 0x400
    lui     $t9, 0xb200
    sw      $t9, 0x0($v1)
    sw      $t4, 0x4($v1)
    lb      $t7, 0xd($t0)
    or      $v0, $s0, $zero
    addiu   $s0, $s0, 0x8
    multu   $t7, $a1
    mflo    $t5
    addu    $t6, $t5, $t1
    addiu   $t8, $t6, 0x17
    sll     $t9, $t8, 2
    andi    $t4, $t9, 0xfff
    sll     $t7, $t4, 12
    or      $t5, $t7, $t2
    ori     $t6, $t5, 0x34c
    sw      $t6, 0x0($a0)
    lb      $t8, 0xd($t0)
    multu   $t8, $a1
    mflo    $t9
    addu    $t4, $t9, $t1
    addiu   $t7, $t4, 0xe
    sll     $t5, $t7, 2
    andi    $t6, $t5, 0xfff
    sll     $t8, $t6, 12
    ori     $t9, $t8, 0x334
    sw      $t9, 0x4($a0)
    lui     $t4, 0xb300
    sw      $t4, 0x0($a3)
    sw      $zero, 0x4($a3)
    lui     $t5, 0x400
    ori     $t5, $t5, 0x400
    lui     $t7, 0xb200
    sw      $t7, 0x0($v0)
    sw      $t5, 0x4($v0)
branch_0x802c7554:
    addiu   $t6, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t5, $zero, 0xff
    sw      $t5, 0x24($sp)
    sw      $t7, 0x20($sp)
    sw      $t4, 0x1c($sp)
    sw      $t4, 0x34($sp)
    sw      $t9, 0x18($sp)
    sw      $t9, 0x30($sp)
    sw      $t8, 0x14($sp)
    sw      $t8, 0x2c($sp)
    sw      $t6, 0x10($sp)
    sw      $t6, 0x28($sp)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lw      $t7, 0x4c($sp)
    lui     $t5, 0x800e
    addiu   $t5, $t5, 0xa740
    bne     $t7, $t5, branch_0x802c7620
    or      $s0, $v0, $zero
    addiu   $t6, $zero, 0x1c
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x3
    addiu   $a3, $zero, 0x26
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    addiu   $t8, $zero, 0x1a
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x4
    addiu   $a2, $zero, 0xc
    addiu   $a3, $zero, 0xde
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    addiu   $t9, $zero, 0x25
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x4
    addiu   $a2, $zero, 0xd
    addiu   $a3, $zero, 0xde
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    or      $s0, $v0, $zero
branch_0x802c7620:
    lw      $t4, 0xf4($sp)
    lw      $t7, 0x54($sp)
    beqzl   $t4, branch_0x802c77cc
    lw      $t7, 0xec($sp)
    lw      $t5, 0x0($t7)
    addiu   $at, $zero, 0x2
    lw      $t6, 0xe8($sp)
    bne     $t5, $at, branch_0x802c764c
    or      $a0, $s0, $zero
    bnezl   $t6, branch_0x802c7674
    lw      $a3, 0xdc($sp)
branch_0x802c764c:
    lw      $a3, 0xdc($sp)
    addiu   $t8, $zero, 0x80
    sw      $t8, 0x10($sp)
    addiu   $a1, $zero, 0x4
    addiu   $a2, $zero, 0x9
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0xd
    or      $s0, $v0, $zero
    lw      $a3, 0xdc($sp)
branch_0x802c7674:
    addiu   $t9, $zero, 0x8a
    sw      $t9, 0x10($sp)
    addiu   $a3, $a3, 0xd
    sw      $a3, 0x5c($sp)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x6
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lw      $a3, 0xdc($sp)
    addiu   $t4, $zero, 0x8a
    sw      $t4, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x7
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x62
    lw      $t7, 0x54($sp)
    or      $s0, $v0, $zero
    addiu   $at, $zero, 0x3
    lw      $t5, 0x0($t7)
    lw      $t6, 0xe8($sp)
    or      $a0, $s0, $zero
    bne     $t5, $at, branch_0x802c76e0
    addiu   $a1, $zero, 0x4
    bnez    $t6, branch_0x802c76fc
branch_0x802c76e0:
    addiu   $t8, $zero, 0x9c
    sw      $t8, 0x10($sp)
    addiu   $a2, $zero, 0xb
    lw      $a3, 0x5c($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    or      $s0, $v0, $zero
branch_0x802c76fc:
    addiu   $t9, $zero, 0xa7
    sw      $t9, 0x10($sp)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x9
    lw      $a3, 0x5c($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lw      $a3, 0xdc($sp)
    addiu   $t4, $zero, 0xa7
    sw      $t4, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xa
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x59
    lw      $t7, 0x54($sp)
    or      $s0, $v0, $zero
    addiu   $at, $zero, 0x4
    lw      $t5, 0x0($t7)
    lw      $t6, 0xe8($sp)
    or      $a0, $s0, $zero
    bne     $t5, $at, branch_0x802c7764
    addiu   $a1, $zero, 0x4
    bnez    $t6, branch_0x802c7780
branch_0x802c7764:
    addiu   $t8, $zero, 0xb9
    sw      $t8, 0x10($sp)
    addiu   $a2, $zero, 0xa
    lw      $a3, 0x5c($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    or      $s0, $v0, $zero
branch_0x802c7780:
    addiu   $t9, $zero, 0xc4
    sw      $t9, 0x10($sp)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xc
    lw      $a3, 0x5c($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)
    lw      $a3, 0xdc($sp)
    addiu   $t4, $zero, 0xc4
    sw      $t4, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xb
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x67
    or      $s0, $v0, $zero
    lw      $t7, 0xec($sp)
branch_0x802c77cc:
    lui     $t6, 0x800e
    addiu   $t6, $t6, 0xa740
    beqz    $t7, branch_0x802c7878
    lw      $t5, 0x4c($sp)
    bne     $t5, $t6, branch_0x802c7830
    or      $a0, $s0, $zero
    lw      $t8, 0x0($t5)
    lui     $t4, 0x802d
    lui     $t6, 0x801d
    sll     $t9, $t8, 2
    addu    $t4, $t4, $t9
    lw      $t4, -0x7428($t4)
    addiu   $t6, $t6, 0xaff8
    addiu   $t5, $zero, 0xcb
    sll     $t7, $t4, 3
    subu    $t7, $t7, $t4
    sll     $t7, $t7, 1
    addu    $a2, $t7, $t6
    sw      $t5, 0x10($sp)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e95e0
    lw      $a3, 0xd8($sp)
    b       branch_0x802c7878
    or      $s0, $v0, $zero
branch_0x802c7830:
    lw      $t8, 0x4c($sp)
    lui     $t7, 0x802d
    lui     $t5, %hi(String_DriverNames)
    lw      $t9, 0x0($t8)
    addiu   $t8, $zero, 0xcb
    addiu   $t5, $t5, %lo(String_DriverNames)
    sll     $t4, $t9, 2
    addu    $t7, $t7, $t4
    lw      $t7, -0x7428($t7)
    sw      $t8, 0x10($sp)
    addiu   $a1, $zero, 0x1
    sll     $t6, $t7, 3
    subu    $t6, $t6, $t7
    sll     $t6, $t6, 1
    addu    $a2, $t6, $t5
    jal     Function_0x801e95e0
    lw      $a3, 0xd8($sp)
    or      $s0, $v0, $zero
branch_0x802c7878:
    lw      $t9, 0xf0($sp)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    beqz    $t9, branch_0x802c792c
    addiu   $a2, $zero, 0x25
    lw      $a3, 0xdc($sp)
    addiu   $t4, $zero, 0x62
    sw      $t4, 0x10($sp)
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0xc
    lw      $t7, 0x58($sp)
    or      $s0, $v0, $zero
    lw      $t6, 0xe4($sp)
    lw      $v1, 0x0($t7)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    bnez    $v1, branch_0x802c78cc
    addiu   $a2, $zero, 0x3
    bnezl   $t6, branch_0x802c78f4
    addiu   $at, $zero, 0x1
branch_0x802c78cc:
    lw      $a3, 0xdc($sp)
    addiu   $t5, $zero, 0x70
    sw      $t5, 0x10($sp)
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x15
    lw      $t8, 0x58($sp)
    or      $s0, $v0, $zero
    lw      $v1, 0x0($t8)
    addiu   $at, $zero, 0x1
branch_0x802c78f4:
    bne     $v1, $at, branch_0x802c7904
    lw      $t9, 0xe4($sp)
    bnezl   $t9, branch_0x802c7930
    lw      $t7, 0x54($sp)
branch_0x802c7904:
    lw      $a3, 0xdc($sp)
    addiu   $t4, $zero, 0x70
    sw      $t4, 0x10($sp)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x26
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x54
    or      $s0, $v0, $zero
branch_0x802c792c:
    lw      $t7, 0x54($sp)
branch_0x802c7930:
    or      $a0, $s0, $zero
    addiu   $a2, $zero, 0x80
    lw      $v1, 0x0($t7)
    addiu   $a3, $zero, 0x80
    addiu   $t6, $zero, 0x80
    slti    $at, $v1, 0x5
    bnez    $at, branch_0x802c7a88
    addiu   $t5, $zero, 0xff
    addiu   $at, $zero, 0x5
    bne     $v1, $at, branch_0x802c7964
    addiu   $t8, $zero, 0xff
    b       branch_0x802c7968
    addiu   $a1, $zero, 0x6
branch_0x802c7964:
    addiu   $a1, $zero, 0x7
branch_0x802c7968:
    sw      $t6, 0x10($sp)
    addiu   $t6, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x24($sp)
    sw      $t4, 0x20($sp)
    sw      $t9, 0x1c($sp)
    sw      $t9, 0x34($sp)
    sw      $t6, 0x28($sp)
    sw      $t5, 0x14($sp)
    sw      $t8, 0x18($sp)
    sw      $t5, 0x2c($sp)
    jal     Function_0x801e91f4_changePalette
    sw      $t8, 0x30($sp)
    lui     $t7, 0x80c
    addiu   $t7, $t7, 0xbfa8
    lui     $t4, 0xfd68
    lui     $t6, 0x708
    lui     $t5, 0xe600
    lui     $v1, 0xf568
    sw      $t5, 0x10($v0)
    ori     $t6, $t6, 0x200
    ori     $t4, $t4, 0x57
    sw      $t7, 0x4($v0)
    ori     $v1, $v1, 0x1600
    lui     $t7, 0x8
    sw      $t4, 0x0($v0)
    sw      $t6, 0xc($v0)
    lui     $t5, 0x15
    lui     $t9, 0x715
    ori     $t9, $t9, 0xc024
    ori     $t5, $t5, 0xc024
    lui     $t6, 0xf200
    lui     $t4, 0xe700
    ori     $t7, $t7, 0x200
    lui     $t8, 0xf400
    sw      $t8, 0x18($v0)
    sw      $t7, 0x2c($v0)
    sw      $t4, 0x20($v0)
    sw      $t6, 0x30($v0)
    sw      $t5, 0x34($v0)
    sw      $t9, 0x1c($v0)
    sw      $v1, 0x8($v0)
    sw      $v1, 0x28($v0)
    sw      $zero, 0x14($v0)
    sw      $zero, 0x24($v0)
    lw      $t8, 0xdc($sp)
    lui     $at, 0xe400
    addiu   $s0, $v0, 0x50
    addiu   $t9, $t8, 0x75
    sll     $t4, $t9, 2
    andi    $t7, $t4, 0xfff
    sll     $t6, $t7, 12
    or      $t5, $t6, $at
    ori     $t8, $t5, 0x2b0
    sw      $t8, 0x38($v0)
    lw      $t9, 0xdc($sp)
    sw      $zero, 0x44($v0)
    addiu   $t4, $t9, 0x1d
    sll     $t7, $t4, 2
    andi    $t6, $t7, 0xfff
    sll     $t5, $t6, 12
    lui     $t7, 0x400
    ori     $t7, $t7, 0x400
    ori     $t8, $t5, 0x288
    lui     $t4, 0xb200
    lui     $t9, 0xb300
    sw      $t9, 0x40($v0)
    sw      $t4, 0x48($v0)
    sw      $t8, 0x3c($v0)
    sw      $t7, 0x4c($v0)
branch_0x802c7a88:
    addiu   $t6, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x24($sp)
    sw      $t4, 0x20($sp)
    sw      $t9, 0x1c($sp)
    sw      $t9, 0x34($sp)
    sw      $t8, 0x18($sp)
    sw      $t8, 0x30($sp)
    sw      $t5, 0x14($sp)
    sw      $t5, 0x2c($sp)
    sw      $t6, 0x10($sp)
    sw      $t6, 0x28($sp)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x6
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lw      $t4, 0xf4($sp)
    or      $s0, $v0, $zero
    lw      $t7, 0x54($sp)
    beqzl   $t4, branch_0x802c7bb4
    lw      $t8, 0xf0($sp)
    lw      $v1, 0x0($t7)
    addiu   $at, $zero, 0x2
    lw      $t6, 0xe8($sp)
    bnel    $v1, $at, branch_0x802c7b3c
    addiu   $at, $zero, 0x3
    beqz    $t6, branch_0x802c7b38
    or      $a0, $v0, $zero
    lw      $a3, 0xdc($sp)
    addiu   $t5, $zero, 0x80
    sw      $t5, 0x10($sp)
    addiu   $a1, $zero, 0x4
    addiu   $a2, $zero, 0x9
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0xd
    lw      $t8, 0x54($sp)
    or      $s0, $v0, $zero
    lw      $v1, 0x0($t8)
branch_0x802c7b38:
    addiu   $at, $zero, 0x3
branch_0x802c7b3c:
    bne     $v1, $at, branch_0x802c7b78
    lw      $t9, 0xe8($sp)
    beqz    $t9, branch_0x802c7b78
    or      $a0, $s0, $zero
    lw      $a3, 0xdc($sp)
    addiu   $t4, $zero, 0x9c
    sw      $t4, 0x10($sp)
    addiu   $a1, $zero, 0x4
    addiu   $a2, $zero, 0xb
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0xd
    lw      $t7, 0x54($sp)
    or      $s0, $v0, $zero
    lw      $v1, 0x0($t7)
branch_0x802c7b78:
    addiu   $at, $zero, 0x4
    bne     $v1, $at, branch_0x802c7bb0
    lw      $t6, 0xe8($sp)
    beqz    $t6, branch_0x802c7bb0
    or      $a0, $s0, $zero
    lw      $a3, 0xdc($sp)
    addiu   $t5, $zero, 0xb9
    sw      $t5, 0x10($sp)
    addiu   $a1, $zero, 0x4
    addiu   $a2, $zero, 0xa
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0xd
    or      $s0, $v0, $zero
branch_0x802c7bb0:
    lw      $t8, 0xf0($sp)
branch_0x802c7bb4:
    lw      $t9, 0x58($sp)
    beqzl   $t8, branch_0x802c7c40
    lw      $ra, 0x44($sp)
    lw      $v1, 0x0($t9)
    lw      $t4, 0xe4($sp)
    bnezl   $v1, branch_0x802c7c08
    addiu   $at, $zero, 0x1
    beqz    $t4, branch_0x802c7c04
    or      $a0, $s0, $zero
    lw      $a3, 0xdc($sp)
    addiu   $t7, $zero, 0x70
    sw      $t7, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x3
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x15
    lw      $t6, 0x58($sp)
    or      $s0, $v0, $zero
    lw      $v1, 0x0($t6)
branch_0x802c7c04:
    addiu   $at, $zero, 0x1
branch_0x802c7c08:
    bne     $v1, $at, branch_0x802c7c3c
    lw      $t5, 0xe4($sp)
    beqz    $t5, branch_0x802c7c3c
    or      $a0, $s0, $zero
    lw      $a3, 0xdc($sp)
    addiu   $t8, $zero, 0x70
    sw      $t8, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x26
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x54
    or      $s0, $v0, $zero
branch_0x802c7c3c:
    lw      $ra, 0x44($sp)
branch_0x802c7c40:
    or      $v0, $s0, $zero
    lw      $s0, 0x40($sp)
    jr      $ra
    addiu   $sp, $sp, 0xf8

Function_0x802c7c50: # 0x802c7c50
    addiu   $sp, $sp, 0xffe0
    or      $v0, $a0, $zero
    sw      $ra, 0x1c($sp)
    lui     $t6, 0x80c
    lui     $t0, 0x600
    addiu   $t6, $t6, 0xe358
    addiu   $a0, $a0, 0x8
    sw      $t6, 0x4($v0)
    sw      $t0, 0x0($v0)
    or      $v1, $a0, $zero
    lui     $t7, 0x107
    addiu   $t7, $t7, 0xf628
    sw      $t7, 0x4($v1)
    sw      $t0, 0x0($v1)
    addiu   $t8, $zero, 0x108
    addiu   $t9, $zero, 0x1e
    addiu   $a0, $a0, 0x8
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1c
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x16
    lui     $t0, %hi(Unknown_2_0x802c8c58)
    addiu   $t0, $t0, %lo(Unknown_2_0x802c8c58)
    lw      $t6, 0x0($t0)
    or      $a0, $v0, $zero
    beqz    $t6, branch_0x802c7d34
    addiu   $t7, $zero, 0x82
    addiu   $t8, $zero, 0xd
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1c
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x60
    addiu   $t9, $zero, 0x3b
    addiu   $t6, $zero, 0xd
    sw      $t6, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x20
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x6e
    addiu   $t7, $zero, 0x3b
    addiu   $t8, $zero, 0xd
    sw      $t8, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x5f
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x6e
    lui     $t0, %hi(Unknown_2_0x802c8c58)
    addiu   $t0, $t0, %lo(Unknown_2_0x802c8c58)
    or      $a0, $v0, $zero
branch_0x802c7d34:
    lw      $t9, 0x4($t0)
    beqz    $t9, branch_0x802c7db0
    addiu   $t6, $zero, 0x82
    addiu   $t7, $zero, 0xd
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xa1
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x60
    addiu   $t8, $zero, 0x3b
    addiu   $t9, $zero, 0xd
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xa5
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x6e
    addiu   $t6, $zero, 0x3b
    addiu   $t7, $zero, 0xd
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xe4
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0x6e
    lui     $t0, %hi(Unknown_2_0x802c8c58)
    addiu   $t0, $t0, %lo(Unknown_2_0x802c8c58)
    or      $a0, $v0, $zero
branch_0x802c7db0:
    lw      $t8, 0x0($t0)
    beqz    $t8, branch_0x802c7dd0
    addiu   $a1, $zero, 0x13
    jal     Function_0x802c86e4
    addiu   $a2, $zero, 0x68
    lui     $t0, %hi(Unknown_2_0x802c8c58)
    addiu   $t0, $t0, %lo(Unknown_2_0x802c8c58)
    or      $a0, $v0, $zero
branch_0x802c7dd0:
    lw      $t9, 0x4($t0)
    beqz    $t9, branch_0x802c7df0
    addiu   $a1, $zero, 0x99
    jal     Function_0x802c86e4
    addiu   $a2, $zero, 0x68
    lui     $t0, %hi(Unknown_2_0x802c8c58)
    addiu   $t0, $t0, %lo(Unknown_2_0x802c8c58)
    or      $a0, $v0, $zero
branch_0x802c7df0:
    lw      $v1, 0x0($t0)
    lui     $a3, 0x802d
    addiu   $a3, $a3, 0x8c6a
    beqz    $v1, branch_0x802c7e24
    lui     $t4, 0xf568
    slti    $at, $v1, 0x5
    beqz    $at, branch_0x802c7e24
    lui     $t6, 0x600
    lui     $t7, 0x80c
    addiu   $t7, $t7, 0xe2b8
    sw      $t7, 0x4($v0)
    addiu   $a0, $v0, 0x8
    sw      $t6, 0x0($v0)
branch_0x802c7e24:
    lw      $v0, 0x4($t0)
    lui     $t7, 0xb900
    lui     $t6, 0xe700
    beqz    $v0, branch_0x802c7e5c
    ori     $t7, $t7, 0x31d
    slti    $at, $v0, 0x5
    beqz    $at, branch_0x802c7e5c
    or      $v0, $a0, $zero
    lui     $t9, 0x80c
    addiu   $t9, $t9, 0xe3c8
    lui     $t8, 0x600
    sw      $t8, 0x0($v0)
    sw      $t9, 0x4($v0)
    addiu   $a0, $a0, 0x8
branch_0x802c7e5c:
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $t6, 0x0($v0)
    or      $v1, $a0, $zero
    sw      $zero, 0x4($v0)
    lui     $t8, 0x50
    ori     $t8, $t8, 0x4240
    addiu   $a0, $a0, 0x8
    sw      $t8, 0x4($v1)
    sw      $t7, 0x0($v1)
    or      $a1, $a0, $zero
    lui     $t6, 0xff2f
    lui     $t9, 0xfc11
    ori     $t9, $t9, 0x9623
    ori     $t6, $t6, 0xffff
    sw      $t6, 0x4($a1)
    sw      $t9, 0x0($a1)
    lh      $a2, 0x0($a3)
    lui     $t0, 0x800e
    addiu   $a0, $a0, 0x8
    bnez    $a2, branch_0x802c7f74
    addiu   $t0, $t0, 0xa740
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x8c68
    lh      $v0, 0x0($v1)
    lui     $at, 0x4080
    mtc1    $at, $zero
    mtc1    $v0, $a0
    lui     $at, 0x437f
    mtc1    $at, $t0
    cvt.s.w $f6, $f4
    addiu   $t3, $zero, 0x1
    lui     $at, 0x4f00
    mul.s   $f10, $f6, $f8
    div.s   $f16, $f10, $f0
    cfc1    $t7, $ra
    ctc1    $t3, $ra
    nop
    cvt.w.s $f18, $f16
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    beqzl   $t3, branch_0x802c7f5c
    mfc1    $t3, $s2
    mtc1    $at, $s2
    addiu   $t3, $zero, 0x1
    lui     $at, 0x8000
    sub.s   $f18, $f16, $f18
    ctc1    $t3, $ra
    nop
    cvt.w.s $f18, $f18
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    bnezl   $t3, branch_0x802c7f50
    ctc1    $t7, $ra
    mfc1    $t3, $s2
    ctc1    $t7, $ra
    b       branch_0x802c8030
    or      $t3, $t3, $at

Function_0x802c7f4c: # 0x802c7f4c
    ctc1    $t7, $ra
branch_0x802c7f50:
    b       branch_0x802c8030
    addiu   $t3, $zero, 0xffff

Function_0x802c7f58: # 0x802c7f58
    mfc1    $t3, $s2
branch_0x802c7f5c:
    nop
    bltzl   $t3, branch_0x802c7f50
    ctc1    $t7, $ra
    ctc1    $t7, $ra
    b       branch_0x802c8034
    addiu   $t9, $v0, 0x1
branch_0x802c7f74:
    lui     $v1, 0x802d
    addiu   $v1, $v1, 0x8c68
    lh      $v0, 0x0($v1)
    lui     $at, 0x4080
    mtc1    $at, $zero
    mtc1    $v0, $a0
    lui     $at, 0x437f
    mtc1    $at, $t2
    cvt.s.w $f6, $f4
    addiu   $t3, $zero, 0x1
    lui     $at, 0x4f00
    sub.s   $f8, $f0, $f6
    mul.s   $f16, $f8, $f10
    div.s   $f18, $f16, $f0
    cfc1    $t8, $ra
    ctc1    $t3, $ra
    nop
    cvt.w.s $f4, $f18
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    beqzl   $t3, branch_0x802c8018
    mfc1    $t3, $a0
    mtc1    $at, $a0
    addiu   $t3, $zero, 0x1
    sub.s   $f4, $f18, $f4
    ctc1    $t3, $ra
    nop
    cvt.w.s $f4, $f4
    cfc1    $t3, $ra
    nop
    andi    $t3, $t3, 0x78
    bnez    $t3, branch_0x802c800c
    nop
    mfc1    $t3, $a0
    lui     $at, 0x8000
    b       branch_0x802c8024
    or      $t3, $t3, $at
branch_0x802c800c:
    b       branch_0x802c8024
    addiu   $t3, $zero, 0xffff

Function_0x802c8014: # 0x802c8014
    mfc1    $t3, $a0
branch_0x802c8018:
    nop
    bltz    $t3, branch_0x802c800c
    nop
branch_0x802c8024:
    ctc1    $t8, $ra
    nop
    nop
branch_0x802c8030:
    addiu   $t9, $v0, 0x1
branch_0x802c8034:
    sh      $t9, 0x0($v1)
    lh      $t6, 0x0($v1)
    or      $v0, $a0, $zero
    ori     $t4, $t4, 0x1000
    slti    $at, $t6, 0x4
    bnez    $at, branch_0x802c805c
    addiu   $a0, $a0, 0x8
    xori    $t7, $a2, 0x1
    sh      $zero, 0x0($v1)
    sh      $t7, 0x0($a3)
branch_0x802c805c:
    lw      $t8, 0x0($t0)
    lw      $t9, 0x4($t0)
    andi    $a3, $t3, 0xff
    sll     $t1, $a3, 8
    bne     $t8, $t9, branch_0x802c807c
    lui     $t6, 0xfa00
    b       branch_0x802c8080
    addiu   $ra, $zero, 0x20
branch_0x802c807c:
    addiu   $ra, $zero, 0x40
branch_0x802c8080:
    sll     $t7, $a3, 16
    lui     $at, 0xff00
    or      $t8, $t7, $at
    or      $t9, $t8, $t1
    sw      $t6, 0x0($v0)
    ori     $t6, $t9, 0xff
    sw      $t6, 0x4($v0)
    or      $v1, $a0, $zero
    lui     $t8, 0x80b
    lui     $t7, 0xfd68
    ori     $t7, $t7, 0x3f
    addiu   $t8, $t8, 0x6e98
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    sw      $t8, 0x4($v1)
    sw      $t7, 0x0($v1)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    sw      $t9, 0x4($a1)
    addiu   $a0, $a0, 0x8
    sw      $t4, 0x0($a1)
    or      $t2, $a0, $zero
    lui     $t6, 0xe600
    sw      $t6, 0x0($a2)
    sw      $zero, 0x4($a2)
    lui     $t8, 0x70f
    ori     $t8, $t8, 0xc08c
    addiu   $a0, $a0, 0x8
    lui     $t7, 0xf400
    sw      $t7, 0x0($t2)
    or      $v0, $a0, $zero
    sw      $t8, 0x4($t2)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    lui     $t9, 0xe700
    sw      $t9, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t6, 0x8
    ori     $t6, $t6, 0x200
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    sw      $t6, 0x4($v1)
    sw      $t4, 0x0($v1)
    lui     $t8, 0xf
    ori     $t8, $t8, 0xc08c
    lui     $t7, 0xf200
    sw      $t7, 0x0($a1)
    sw      $t8, 0x4($a1)
    lw      $t9, 0x4($t0)
    lui     $t5, 0x802d
    addiu   $t5, $t5, 0x8bd0
    sll     $t6, $t9, 1
    addu    $t7, $t5, $t6
    lh      $t8, 0x0($t7)
    lui     $at, 0xe400
    addiu   $a0, $a0, 0x8
    addiu   $t9, $t8, 0x48
    sll     $t6, $t9, 2
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 12
    or      $t9, $t8, $at
    ori     $t6, $t9, 0x16c
    or      $a2, $a0, $zero
    sw      $t6, 0x0($a2)
    lw      $t7, 0x4($t0)
    addiu   $a0, $a0, 0x8
    or      $t3, $a0, $zero
    sll     $t8, $t7, 1
    addu    $t9, $t5, $t8
    lh      $t6, 0x0($t9)
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    addiu   $t7, $t6, 0x8
    sll     $t8, $t7, 2
    andi    $t9, $t8, 0xfff
    sll     $t6, $t9, 12
    ori     $t7, $t6, 0xdc
    sw      $t7, 0x4($a2)
    lui     $t2, 0xb300
    sw      $t2, 0x0($t3)
    sw      $zero, 0x4($t3)
    lui     $t9, 0x400
    ori     $t9, $t9, 0x400
    lui     $t8, 0xb200
    addiu   $a0, $a0, 0x8
    sw      $t8, 0x0($v0)
    sw      $t9, 0x4($v0)
    or      $v1, $a0, $zero
    sll     $t7, $a3, 24
    lui     $at, 0xff
    or      $t8, $t7, $at
    lui     $t6, 0xfa00
    sw      $t6, 0x0($v1)
    or      $t9, $t8, $t1
    addiu   $a0, $a0, 0x8
    ori     $t6, $t9, 0xff
    or      $a1, $a0, $zero
    sw      $t6, 0x4($v1)
    lui     $t8, 0x80b
    lui     $t7, 0xfd68
    ori     $t7, $t7, 0x3f
    addiu   $t8, $t8, 0x6590
    sw      $t8, 0x4($a1)
    sw      $t7, 0x0($a1)
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    sw      $t9, 0x4($a2)
    addiu   $a0, $a0, 0x8
    sw      $t4, 0x0($a2)
    or      $v1, $a0, $zero
    lui     $t6, 0xe600
    sw      $t6, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t8, 0x70f
    ori     $t8, $t8, 0xc08c
    addiu   $a0, $a0, 0x8
    lui     $t7, 0xf400
    sw      $t7, 0x0($v1)
    or      $a1, $a0, $zero
    sw      $t8, 0x4($v1)
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    lui     $t9, 0xe700
    sw      $t9, 0x0($a1)
    sw      $zero, 0x4($a1)
    lui     $t6, 0x8
    ori     $t6, $t6, 0x200
    addiu   $a0, $a0, 0x8
    or      $a3, $a0, $zero
    sw      $t6, 0x4($a2)
    sw      $t4, 0x0($a2)
    lui     $t8, 0xf
    ori     $t8, $t8, 0xc08c
    lui     $t7, 0xf200
    sw      $t7, 0x0($a3)
    sw      $t8, 0x4($a3)
    lw      $t9, 0x0($t0)
    lui     $at, 0xe400
    addiu   $a0, $a0, 0x8
    sll     $t6, $t9, 1
    addu    $t7, $t5, $t6
    lh      $t8, 0x0($t7)
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    addu    $t9, $t8, $ra
    addiu   $t6, $t9, 0x8
    sll     $t7, $t6, 2
    andi    $t8, $t7, 0xfff
    sll     $t9, $t8, 12
    or      $t6, $t9, $at
    ori     $t7, $t6, 0x16c
    sw      $t7, 0x0($v0)
    lw      $t8, 0x0($t0)
    or      $v1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sll     $t9, $t8, 1
    addu    $t6, $t5, $t9
    lh      $t7, 0x0($t6)
    or      $a2, $a0, $zero
    addiu   $a0, $a0, 0x8
    addiu   $t8, $t7, 0x8
    sll     $t9, $t8, 2
    andi    $t6, $t9, 0xfff
    sll     $t7, $t6, 12
    ori     $t8, $t7, 0xdc
    sw      $t8, 0x4($v0)
    lui     $t6, 0x400
    ori     $t6, $t6, 0x400
    sw      $zero, 0x4($v1)
    sw      $t2, 0x0($v1)
    lui     $t9, 0xb200
    sw      $t9, 0x0($a2)
    sw      $t6, 0x4($a2)
    jal     Function_0x802c70ec
    or      $a1, $zero, $zero
    or      $a0, $v0, $zero
    jal     Function_0x802c70ec
    addiu   $a1, $zero, 0x1
    lui     $t7, 0xb400
    sw      $t7, 0x0($v0)
    lui     $t8, 0x802d
    lhu     $t8, -0x73b0($t8)
    lui     $t9, 0x103
    lui     $t6, 0x700
    addiu   $t6, $t6, 0xa40
    ori     $t9, $t9, 0x40
    sw      $t9, 0x8($v0)
    sw      $t6, 0xc($v0)
    lui     $t7, 0x107
    sw      $t8, 0x4($v0)
    lui     $v1, 0x600
    addiu   $t7, $t7, 0xf488
    lui     $t8, 0x80c
    lui     $t6, 0x700
    lui     $t9, 0x102
    sw      $t7, 0x14($v0)
    addiu   $t8, $t8, 0xe468
    ori     $t9, $t9, 0x40
    addiu   $t6, $t6, 0xa80
    sw      $v1, 0x10($v0)
    sw      $t8, 0x1c($v0)
    sw      $v1, 0x18($v0)
    sw      $t6, 0x24($v0)
    sw      $t9, 0x20($v0)
    lui     $t7, 0x801d
    lw      $t7, -0x1ca8($t7)
    addiu   $a0, $v0, 0x28
    or      $a1, $zero, $zero
    addiu   $t8, $t7, 0xc80
    sw      $t8, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    lui     $t9, 0x600
    lui     $t6, 0x80c
    lui     $t7, 0x102
    lui     $t8, 0x700
    addiu   $t6, $t6, 0xe478
    sw      $t9, 0x0($v0)
    addiu   $t8, $t8, 0xac0
    ori     $t7, $t7, 0x40
    sw      $t6, 0x4($v0)
    sw      $t7, 0x8($v0)
    sw      $t8, 0xc($v0)
    lui     $t9, 0x801d
    lw      $t9, -0x1ca8($t9)
    addiu   $a0, $v0, 0x10
    addiu   $a1, $zero, 0x2
    addiu   $t6, $t9, 0xd40
    sw      $t6, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    lui     $t7, 0x600
    lui     $t8, 0x80c
    lui     $t9, 0x102
    lui     $t6, 0x700
    addiu   $t8, $t8, 0xe488
    sw      $t7, 0x0($v0)
    addiu   $t6, $t6, 0xb00
    ori     $t9, $t9, 0x40
    sw      $t8, 0x4($v0)
    sw      $t9, 0x8($v0)
    sw      $t6, 0xc($v0)
    lui     $t7, 0x801d
    lw      $t7, -0x1ca8($t7)
    addiu   $a0, $v0, 0x10
    addiu   $a1, $zero, 0x3
    addiu   $t8, $t7, 0xe00
    sw      $t8, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    lui     $t9, 0x600
    lui     $t6, 0x80c
    lui     $t7, 0x102
    lui     $t8, 0x700
    addiu   $t6, $t6, 0xe498
    sw      $t9, 0x0($v0)
    addiu   $t8, $t8, 0xb40
    ori     $t7, $t7, 0x40
    sw      $t6, 0x4($v0)
    sw      $t7, 0x8($v0)
    sw      $t8, 0xc($v0)
    lui     $t9, 0x801d
    lw      $t9, -0x1ca8($t9)
    addiu   $a0, $v0, 0x10
    addiu   $a1, $zero, 0x1
    addiu   $t6, $t9, 0xec0
    sw      $t6, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

Function_0x802c84ec_ChangeStateToB: # 0x802c84ec
    lui     $v0, %hi(MainState_0x800da8a4)
    addiu   $v0, $v0, %lo(MainState_0x800da8a4)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_b
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390_MainState)
    sw      $a0, %lo(Unknown_0x801ce390_MainState)($at)
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x4
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    lui     $at, 0x801d
    addiu   $t9, $zero, 0x1
    sw      $t9, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $t2, 0x801d
    lh      $t2, -0x1c94($t2)
    lui     $at, 0x800e
    addiu   $sp, $sp, 0xffe0
    sw      $zero, -0x5764($at)
    lui     $at, %hi(Unknown_0x800d439c)
    addiu   $t6, $zero, 0x3
    sw      $ra, 0x1c($sp)
    sw      $s1, 0x18($sp)
    sw      $s0, 0x14($sp)
    sw      $t6, %lo(Unknown_0x800d439c)($at)
    blez    $t2, branch_0x802c8660
    or      $v1, $zero, $zero
    lui     $a3, 0x800e
    lui     $a2, 0x800e
    lui     $s1, 0x801d
    lui     $s0, %hi(Unknown_0x800d4660)
    lui     $t5, %hi(Unknown_0x801923f0_GameStruct)
    lui     $t4, %hi(Unknown_0x800d465c)
    lui     $t3, %hi(String_DriverNames)
    lui     $t0, 0x802d
    addiu   $t0, $t0, 0x8bd8
    addiu   $t3, $t3, %lo(String_DriverNames)
    addiu   $t4, $t4, %lo(Unknown_0x800d465c)
    addiu   $t5, $t5, %lo(Unknown_0x801923f0_GameStruct)
    addiu   $s0, $s0, %lo(Unknown_0x800d4660)
    addiu   $s1, $s1, 0xaff8
    addiu   $a2, $a2, 0xa740
    addiu   $a3, $a3, 0xa748
    addiu   $ra, $zero, 0x1718
    addiu   $t1, $zero, 0xe
branch_0x802c85b4:
    lw      $t7, 0x0($a3)
    sll     $t9, $v1, 3
    subu    $t9, $t9, $v1
    bnezl   $t7, branch_0x802c85f0
    lw      $t7, 0x0($a2)
    lw      $t8, 0x0($a2)
    sll     $t9, $t8, 2
    addu    $t6, $t0, $t9
    lw      $t7, 0x0($t6)
    multu   $t7, $t1
    mflo    $t8
    addu    $a0, $t3, $t8
    b       branch_0x802c8614
    nop

Function_0x802c85ec: # 0x802c85ec
    lw      $t7, 0x0($a2)
branch_0x802c85f0:
    sll     $t9, $t9, 3
    addu    $t6, $s1, $t9
    sll     $t8, $t7, 2
    addu    $t9, $t0, $t8
    lw      $t7, 0x0($t9)
    multu   $t7, $t1
    mflo    $t8
    addu    $a0, $t6, $t8
    nop
branch_0x802c8614:
    bnezl   $v1, branch_0x802c8628
    lw      $a1, 0x0($s0)
    b       branch_0x802c8628
    lw      $a1, 0x0($t4)

Function_0x802c8624: # 0x802c8624
    lw      $a1, 0x0($s0)
branch_0x802c8628:
    multu   $a1, $ra
    lb      $t7, 0xb($a0)
    addiu   $v1, $v1, 0x1
    slt     $at, $v1, $t2
    addiu   $a3, $a3, 0x4
    addiu   $a2, $a2, 0x4
    mflo    $t9
    addu    $v0, $t5, $t9
    sw      $t7, 0xb6c($v0)
    lb      $t6, 0xc($a0)
    sw      $t6, 0xb70($v0)
    lb      $t8, 0xd($a0)
    bnez    $at, branch_0x802c85b4
    sw      $t8, 0xb74($v0)
branch_0x802c8660:
    lui     $t9, 0x801d
    lw      $t9, -0x1c98($t9)
    addiu   $at, $zero, 0x4
    lui     $t7, %hi(Unknown_0x801ce390_MainState)
    bne     $t9, $at, branch_0x802c869c
    addiu   $a0, $zero, 0x1
    lw      $t7, %lo(Unknown_0x801ce390_MainState)($t7)
    addiu   $at, $zero, 0x1e
    or      $a1, $zero, $zero
    bne     $t7, $at, branch_0x802c869c
    or      $a2, $zero, $zero
    jal     Function_0x801e6d10
    addiu   $a0, $zero, 0x5
    b       branch_0x802c86ac
    or      $a0, $zero, $zero
branch_0x802c869c:
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
branch_0x802c86ac:
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $t6, %hi(Unknown_0x801ce390_MainState)
    lw      $t6, %lo(Unknown_0x801ce390_MainState)($t6)
    addiu   $at, $zero, 0x1e
    bnel    $t6, $at, branch_0x802c86d4
    lw      $ra, 0x1c($sp)
    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x2
    lw      $ra, 0x1c($sp)
branch_0x802c86d4:
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x20

Function_0x802c86e4: # 0x802c86e4
    addiu   $sp, $sp, 0xffd0
    sw      $s1, 0xc($sp)
    addiu   $s1, $a1, 0x8a
    sll     $t6, $s1, 2
    sw      $s2, 0x10($sp)
    andi    $t7, $t6, 0xfff
    addiu   $s2, $a1, 0x8
    sw      $ra, 0x2c($sp)
    sw      $s6, 0x20($sp)
    sw      $s5, 0x1c($sp)
    sw      $s4, 0x18($sp)
    sw      $s0, 0x8($sp)
    sll     $t6, $s2, 2
    sll     $t8, $t7, 12
    sw      $fp, 0x28($sp)
    sw      $s7, 0x24($sp)
    sw      $s3, 0x14($sp)
    andi    $t7, $t6, 0xfff
    lui     $s0, 0xf510
    lui     $s4, 0xfd10
    lui     $s5, 0x80b
    lui     $s6, 0x708
    lui     $ra, 0x720
    lui     $at, 0xe400
    or      $s1, $t8, $at
    ori     $ra, $ra, 0x4000
    ori     $s6, $s6, 0x200
    addiu   $s5, $s5, 0x8
    ori     $s4, $s4, 0x81
    ori     $s0, $s0, 0x4200
    sll     $s2, $t7, 12
    addiu   $s3, $zero, 0x5a
    lui     $s7, 0xe600
    lui     $fp, 0xf400
    or      $t4, $zero, $zero
    or      $t2, $zero, $zero
    or      $t3, $a2, $zero
    addiu   $t5, $a2, 0x14
branch_0x802c877c:
    beq     $t2, $s3, branch_0x802c878c
    or      $v0, $a0, $zero
    b       branch_0x802c8790
    addiu   $a3, $zero, 0xf
branch_0x802c878c:
    addiu   $a3, $zero, 0x2
branch_0x802c8790:
    sll     $t9, $t4, 1
    addu    $t6, $s5, $t9
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $t6, 0x4($v0)
    sw      $s4, 0x0($v0)
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    sw      $s6, 0x4($v1)
    sw      $s0, 0x0($v1)
    addiu   $t0, $a3, 0xffff
    sll     $t7, $t0, 2
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    andi    $t0, $t7, 0xfff
    or      $t9, $t0, $ra
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($a1)
    sw      $s7, 0x0($a1)
    sw      $t9, 0x4($a2)
    or      $t1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $fp, 0x0($a2)
    lui     $t6, 0xe700
    sw      $t6, 0x0($t1)
    or      $v0, $a0, $zero
    lui     $t7, 0x8
    ori     $t7, $t7, 0x200
    sw      $zero, 0x4($t1)
    sw      $t7, 0x4($v0)
    addiu   $a0, $a0, 0x8
    lui     $at, 0x20
    ori     $at, $at, 0x4000
    or      $v1, $a0, $zero
    sw      $s0, 0x0($v0)
    lui     $t8, 0xf200
    addu    $t6, $t3, $a3
    sw      $t8, 0x0($v1)
    or      $t9, $t0, $at
    addiu   $t7, $t6, 0x14
    sw      $t9, 0x4($v1)
    sll     $t8, $t7, 2
    addiu   $a0, $a0, 0x8
    andi    $t9, $t8, 0xfff
    or      $t6, $s1, $t9
    or      $a1, $a0, $zero
    sll     $t7, $t5, 2
    andi    $t8, $t7, 0xfff
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    or      $t9, $s2, $t8
    sw      $t6, 0x0($a1)
    sw      $t9, 0x4($a1)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    lui     $t6, 0xb300
    lui     $t8, 0x400
    addiu   $at, $zero, 0x69
    addiu   $t2, $t2, 0xf
    ori     $t8, $t8, 0x400
    sw      $t6, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t7, 0xb200
    addiu   $t5, $t5, 0xf
    addiu   $t3, $t3, 0xf
    addiu   $t4, $t4, 0x79e
    sw      $t7, 0x0($v1)
    sw      $t8, 0x4($v1)
    bne     $t2, $at, branch_0x802c877c
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

Function_0x802c88dc: # 0x802c88dc
    addiu   $sp, $sp, 0xff88
    sw      $s3, 0x14($sp)
    sw      $ra, 0x2c($sp)
    sw      $fp, 0x28($sp)
    sw      $s4, 0x18($sp)
    sw      $s2, 0x10($sp)
    sw      $s1, 0xc($sp)
    sw      $s0, 0x8($sp)
    lui     $s3, 0x400
    sw      $s7, 0x24($sp)
    sw      $s6, 0x20($sp)
    sw      $s5, 0x1c($sp)
    or      $a3, $a0, $zero
    ori     $s3, $s3, 0x400
    lui     $s0, 0xe400
    lui     $s1, 0xb300
    lui     $s2, 0xb200
    addiu   $s4, $zero, 0x1e0
    addiu   $fp, $zero, 0x120
    or      $ra, $zero, $zero
    sw      $zero, 0x34($sp)
branch_0x802c8930:
    addiu   $at, $zero, 0x5f
    bne     $ra, $at, branch_0x802c8944
    or      $v0, $a3, $zero
    b       branch_0x802c8948
    addiu   $a2, $zero, 0x1
branch_0x802c8944:
    addiu   $a2, $zero, 0x5
branch_0x802c8948:
    lui     $t6, 0xfd10
    sw      $t6, 0x0($v0)
    lw      $t7, 0x34($sp)
    lui     $t9, 0x80b
    addiu   $t9, $t9, 0x77a0
    sll     $t8, $t7, 1
    addu    $t6, $t8, $t9
    addiu   $a3, $a3, 0x8
    or      $v1, $a3, $zero
    sw      $t6, 0x4($v0)
    addiu   $a3, $a3, 0x8
    lui     $t8, 0x708
    sll     $a1, $a2, 2
    subu    $a1, $a1, $a2
    ori     $t8, $t8, 0x200
    or      $a0, $a3, $zero
    lui     $t7, 0xf510
    sw      $t7, 0x0($v1)
    sw      $t8, 0x4($v1)
    sll     $a1, $a1, 5
    addiu   $a1, $a1, 0xffff
    addiu   $a3, $a3, 0x8
    lui     $t9, 0xe600
    sw      $t9, 0x0($a0)
    or      $t0, $a3, $zero
    slti    $at, $a1, 0x7ff
    sw      $zero, 0x4($a0)
    lui     $t6, 0xf300
    sw      $t6, 0x0($t0)
    beqz    $at, branch_0x802c89cc
    addiu   $a3, $a3, 0x8
    b       branch_0x802c89d0
    or      $v1, $a1, $zero
branch_0x802c89cc:
    addiu   $v1, $zero, 0x7ff
branch_0x802c89d0:
    andi    $t7, $v1, 0xfff
    sll     $t8, $t7, 12
    lui     $at, 0x700
    or      $t9, $t8, $at
    ori     $t6, $t9, 0x56
    or      $v0, $a3, $zero
    addiu   $a3, $a3, 0x8
    sw      $t6, 0x4($t0)
    lui     $t7, 0xe700
    sw      $t7, 0x0($v0)
    or      $a0, $a3, $zero
    sw      $zero, 0x4($v0)
    lui     $t9, 0x8
    lui     $t8, 0xf510
    ori     $t8, $t8, 0x3000
    ori     $t9, $t9, 0x200
    sw      $t9, 0x4($a0)
    sw      $t8, 0x0($a0)
    addiu   $a3, $a3, 0x8
    addiu   $t7, $a2, 0xffff
    sll     $t8, $t7, 2
    or      $a1, $a3, $zero
    lui     $t6, 0xf200
    lui     $at, 0x17
    ori     $at, $at, 0xc000
    sw      $t6, 0x0($a1)
    andi    $t9, $t8, 0xfff
    or      $t6, $t9, $at
    sw      $t6, 0x4($a1)
    addiu   $a3, $a3, 0x8
    or      $s6, $zero, $zero
    or      $s5, $ra, $zero
    addu    $s7, $ra, $a2
branch_0x802c8a54:
    sll     $t3, $s5, 2
    sll     $t5, $t3, 10
    sra     $t7, $t5, 7
    or      $t5, $t7, $zero
    or      $t2, $zero, $zero
    addiu   $t1, $zero, 0x60
    sll     $t4, $s7, 2
branch_0x802c8a70:
    or      $t0, $a3, $zero
    sll     $v0, $t1, 2
    blez    $v0, branch_0x802c8a88
    addiu   $a3, $a3, 0x8
    b       branch_0x802c8a8c
    or      $a0, $v0, $zero
branch_0x802c8a88:
    or      $a0, $zero, $zero
branch_0x802c8a8c:
    blez    $t4, branch_0x802c8a9c
    andi    $t6, $a0, 0xfff
    b       branch_0x802c8aa0
    or      $v1, $t4, $zero
branch_0x802c8a9c:
    or      $v1, $zero, $zero
branch_0x802c8aa0:
    andi    $t8, $v1, 0xfff
    or      $t9, $t8, $s0
    sll     $t7, $t6, 12
    or      $t8, $t9, $t7
    sll     $a1, $t2, 2
    blez    $a1, branch_0x802c8ac4
    sw      $t8, 0x0($t0)
    b       branch_0x802c8ac8
    or      $a0, $a1, $zero
branch_0x802c8ac4:
    or      $a0, $zero, $zero
branch_0x802c8ac8:
    blez    $t3, branch_0x802c8ad8
    andi    $t9, $a0, 0xfff
    b       branch_0x802c8adc
    or      $v1, $t3, $zero
branch_0x802c8ad8:
    or      $v1, $zero, $zero
branch_0x802c8adc:
    andi    $t6, $v1, 0xfff
    sll     $t7, $t9, 12
    or      $t8, $t6, $t7
    sll     $v0, $a1, 10
    sra     $t9, $v0, 7
    sw      $t8, 0x4($t0)
    or      $a2, $a3, $zero
    sw      $s1, 0x0($a2)
    bgez    $t9, branch_0x802c8b0c
    addiu   $a3, $a3, 0x8
    b       branch_0x802c8b10
    or      $a0, $t9, $zero
branch_0x802c8b0c:
    or      $a0, $zero, $zero
branch_0x802c8b10:
    bgez    $t5, branch_0x802c8b20
    subu    $t9, $zero, $a0
    b       branch_0x802c8b24
    or      $v1, $t5, $zero
branch_0x802c8b20:
    or      $v1, $zero, $zero
branch_0x802c8b24:
    subu    $t6, $zero, $v1
    andi    $t7, $t6, 0xffff
    sll     $t6, $t9, 16
    or      $t8, $t7, $t6
    or      $v0, $a3, $zero
    addiu   $t1, $t1, 0x60
    sw      $t8, 0x4($a2)
    addiu   $t2, $t2, 0x60
    sw      $s3, 0x4($v0)
    sw      $s2, 0x0($v0)
    bne     $t1, $s4, branch_0x802c8a70
    addiu   $a3, $a3, 0x8
    addiu   $s6, $s6, 0x60
    addiu   $s5, $s5, 0x60
    bne     $s6, $fp, branch_0x802c8a54
    addiu   $s7, $s7, 0x60
    lw      $t9, 0x34($sp)
    addiu   $ra, $ra, 0x5
    addiu   $at, $zero, 0x64
    addiu   $t7, $t9, 0x1e0
    bne     $ra, $at, branch_0x802c8930
    sw      $t7, 0x34($sp)
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
    addiu   $sp, $sp, 0x78
    jr      $ra
    or      $v0, $a3, $zero

# 0x802c8bb0 0x1bc5b0
.incbin "./roms/Wave Race 64 (USA).z64", 0x1bc5b0, 0x1bc5ec - 0x1bc5b0

SwitchTable_2_0x802c8bec: # 0x1bc5ec
.word branch_0x802c5f08, branch_0x802c5f90, branch_0x802c5ff8, branch_0x802c6004
.word branch_0x802c600c, branch_0x802c6040

SwitchTable_2_0x802c8c04: # 0x1bc604
.word branch_0x802c60d4_ChangeStateToB, branch_0x802c60e8, branch_0x802c6174, branch_0x802c617c
.word branch_0x802c6188, branch_0x802c6150

SwitchTable_2_0x802c8c1c: # 0x1bc61c
.word branch_0x802c63c0, branch_0x802c6400, branch_0x802c6424, branch_0x802c643c
.word branch_0x802c6454

SwitchTable_2_0x802c8c30: # 0x1bc630
.word branch_0x802c64b4, branch_0x802c64f0, branch_0x802c6518, branch_0x802c6530
.word branch_0x802c6548, 0x0, 0x0, 0x0


