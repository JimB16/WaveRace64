
.globl Function_0x80064bac_SimulateDriver
Function_0x80064bac_SimulateDriver: # 0x80064bac
    sll     $t7, $a0, 2
    subu    $t7, $t7, $a0
    sll     $t7, $t7, 3
    subu    $t7, $t7, $a0
    sll     $t7, $t7, 3
    addu    $t7, $t7, $a0
    sll     $t7, $t7, 2
    subu    $t7, $t7, $a0
    lui     $t8, %hi(Unknown_0x801923f0_GameStruct)
    addiu   $t8, $t8, %lo(Unknown_0x801923f0_GameStruct)
    sll     $t7, $t7, 3
    addu    $a3, $t7, $t8
    lw      $t9, GameStruct_16b4($a3)
    addiu   $sp, $sp, 0xffb0
    sw      $ra, 0x14($sp)
    slti    $at, $t9, 0x28
    sw      $a0, 0x50($sp)
    bnez    $at, branch_0x80064c00
    sw      $a3, 0x4c($sp)

    b       branch_0x80064d90
    lwc1    $f18, GameStruct_bbc($a3)

branch_0x80064c00:
    mtc1    $zero, $a0
    lwc1    $f6, GameStruct_c4c($a3)
    lui     $at, %hi(Unknown_0x800e9598)
    c.eq.s  $f4, $f6
    nop
    bc1tl   branch_0x80064c38
    lwc1    $f0, GameStruct_68($a3)

    lui     $at, %hi(Unknown_0x800d93b0)
    lwc1    $f10, %lo(Unknown_0x800d93b0)($at)
    lwc1    $f8, GameStruct_bbc($a3)
    mul.s   $f18, $f8, $f10
    b       branch_0x80064d94
    lhu     $t2, GameStruct_c66($a3)

# 0x80064c34
    lwc1    $f0, GameStruct_68($a3)
branch_0x80064c38:
    lwc1    $f4, %lo(Unknown_0x800e9598)($at)
    c.le.s  $f4, $f0
    nop
    bc1fl   branch_0x80064c64
    lwc1    $f2, GameStruct_bd0($a3)
    lwc1    $f6, GameStruct_bcc($a3)
    lwc1    $f8, GameStruct_bc4($a3)
    mul.s   $f18, $f6, $f8
    b       branch_0x80064d2c
    lwc1    $f0, GameStruct_70($a3)

# 0x80064c60
    lwc1    $f2, GameStruct_bd0($a3)
branch_0x80064c64:
    c.le.s $f2, $f0
    nop
    bc1fl   branch_0x80064cd4
    sub.s   $f4, $f2, $f0
    sub.s   $f10, $f0, $f2
    lwc1    $f4, GameStruct_bdc($a3)
    lui     $at, %hi(FLOAT_1)
    mul.s   $f6, $f10, $f4
    mtc1    $at, $f10
    lui     $at, %hi(Unknown_0x801540b0)
    trunc.w.s   $f8, $f6
    mfc1    $v0, $f8
    lwc1    $f8, GameStruct_be0($a3)
    addiu   $t1, $v0, 0x400
    andi    $t2, $t1, 0xfff
    sll     $t3, $t2, 2
    addu    $at, $at, $t3
    lwc1    $f4, %lo(Unknown_0x801540b0)($at)
    lui     $at, %hi(FLOAT_1)
    sub.s   $f6, $f10, $f4
    mtc1    $at, $f4
    mul.s   $f10, $f6, $f8
    lwc1    $f8, GameStruct_bc4($a3)
    sub.s   $f6, $f4, $f10
    mul.s   $f18, $f6, $f8
    b       branch_0x80064d2c
    lwc1    $f0, GameStruct_70($a3)

# 0x80064cd0
    sub.s   $f4, $f2, $f0
branch_0x80064cd4:
    lwc1    $f10, GameStruct_bd4($a3)
    lui     $at, %hi(FLOAT_1)
    mul.s   $f6, $f4, $f10
    mtc1    $at, $f4
    lui     $at, %hi(Unknown_0x801540b0)
    trunc.w.s   $f8, $f6
    mfc1    $v0, $f8
    lwc1    $f8, GameStruct_bd8($a3)
    addiu   $t5, $v0, 0x400
    andi    $t6, $t5, 0xfff
    sll     $t7, $t6, 2
    addu    $at, $at, $t7
    lwc1    $f10, %lo(Unknown_0x801540b0)($at)
    lui     $at, %hi(FLOAT_1)
    sub.s   $f6, $f4, $f10
    mtc1    $at, $f10
    mul.s   $f4, $f6, $f8
    lwc1    $f8, GameStruct_bc4($a3)
    sub.s   $f6, $f10, $f4
    mul.s   $f18, $f6, $f8
    nop
    lwc1    $f0, GameStruct_70($a3)
branch_0x80064d2c:
    lwc1    $f10, GameStruct_b9c($a3)
    lui     $at, %hi(FLOAT_1)
    mul.s   $f6, $f0, $f0
    add.s   $f18, $f18, $f10
    mtc1    $at, $f4
    sw      $a3, 0x28($sp)
    swc1    $f18, 0x40($sp)
    jal     sqrtf
    sub.s   $f12, $f4, $f6
    lw      $a3, 0x28($sp)
    lwc1    $f18, 0x40($sp)
    lui     $at, %hi(Unknown_0x800d4744)
    lw      $t8, GameStruct_ac($a3)
    lw      $t9, GameStruct_ec($a3)
    mul.s   $f18, $f18, $f0
    or      $t0, $t8, $t9
    andi    $t1, $t0, 0x1
    bnezl   $t1, branch_0x80064d88
    lwc1    $f10, GameStruct_1578($a3)

    lwc1    $f8, %lo(Unknown_0x800d4744)($at)
    mul.s   $f18, $f18, $f8
    nop
    lwc1    $f10, GameStruct_1578($a3)
branch_0x80064d88:
    mul.s   $f18, $f18, $f10
    nop
branch_0x80064d90:
    lhu     $t2, GameStruct_c66($a3)
branch_0x80064d94:
    lui     $at, %hi(Unknown_0x800d4748)
    beqz    $t2, branch_0x80064da8
    nop

    b       branch_0x80064de8
    swc1    $f18, GameStruct_b98($a3)

branch_0x80064da8:
    lwc1    $f0, %lo(Unknown_0x800d4748)($at)
    lwc1    $f12, GameStruct_b98($a3)
    c.lt.s  $f0, $f12
    nop
    bc1fl   branch_0x80064de0
    mtc1    $zero, $a2
    lw      $t3, GameStruct_c54($a3)
    addiu   $at, $zero, 0x17
    beql    $t3, $at, branch_0x80064de0
    mtc1    $zero, $a2
    sub.s   $f4, $f12, $f0
    b       branch_0x80064de8
    swc1    $f4, GameStruct_b98($a3)

# 0x80064ddc
    mtc1    $zero, $a2
branch_0x80064de0:
    nop
    swc1    $f6, GameStruct_b98($a3)
branch_0x80064de8:
    lwc1    $f0, GameStruct_15e0($a3)
    lwc1    $f8, GameStruct_6c($a3)
    lwc1    $f10, GameStruct_70($a3)
    lwc1    $f6, GameStruct_74($a3)
    mul.s   $f14, $f0, $f8
    lwc1    $f12, GameStruct_15e4($a3)
    mul.s   $f4, $f0, $f10
    lwc1    $f10, GameStruct_84($a3)
    mul.s   $f8, $f0, $f6
    swc1    $f14, GameStruct_ba0($a3)
    mul.s   $f16, $f12, $f10
    swc1    $f4, GameStruct_ba4($a3)
    lwc1    $f4, GameStruct_88($a3)
    swc1    $f8, GameStruct_ba8($a3)
    mul.s   $f6, $f12, $f4
    lwc1    $f8, GameStruct_8c($a3)
    add.s   $f2, $f14, $f16
    lwc1    $f4, GameStruct_ba4($a3)
    mul.s   $f10, $f12, $f8
    lwc1    $f8, GameStruct_ba8($a3)
    swc1    $f16, GameStruct_bac($a3)
    swc1    $f6, GameStruct_bb0($a3)
    lwc1    $f6, GameStruct_bb0($a3)
    swc1    $f10, GameStruct_bb4($a3)
    lwc1    $f10, GameStruct_bb4($a3)
    add.s   $f16, $f4, $f6
    mul.s   $f4, $f2, $f2
    add.s   $f14, $f8, $f10
    mtc1    $zero, $t0
    mul.s   $f6, $f14, $f14
    add.s   $f12, $f4, $f6
    c.eq.s  $f8, $f12
    nop
    bc1tl   branch_0x80064ea8
    mtc1    $zero, $s2
    sw      $a3, 0x28($sp)
    swc1    $f2, 0x38($sp)
    swc1    $f14, 0x30($sp)
    jal     sqrtf
    swc1    $f16, 0x34($sp)
    lw      $a3, 0x28($sp)
    lwc1    $f2, 0x38($sp)
    lwc1    $f14, 0x30($sp)
    lwc1    $f12, GameStruct_b98($a3)
    lwc1    $f16, 0x34($sp)
    b       branch_0x80064eac
    div.s   $f18, $f12, $f0

# 0x80064ea4
    mtc1    $zero, $s2
branch_0x80064ea8:
    lwc1    $f12, GameStruct_b98($a3)
branch_0x80064eac:
    mul.s   $f2, $f2, $f18
    lwc1    $f10, GameStruct_dc($a3)
    lwc1    $f6, GameStruct_e0($a3)
    mul.s   $f16, $f16, $f12
    nop
    mul.s   $f14, $f14, $f18
    add.s   $f4, $f10, $f2
    lwc1    $f10, GameStruct_e4($a3)
    add.s   $f8, $f6, $f16
    swc1    $f4, GameStruct_dc($a3)
    lwc1    $f6, GameStruct_9c($a3)
    add.s   $f4, $f10, $f14
    lwc1    $f10, GameStruct_a0($a3)
    swc1    $f8, 0xe0($a3)
    add.s   $f8, $f6, $f2
    swc1    $f4, GameStruct_e4($a3)
    lwc1    $f6, GameStruct_a4($a3)
    add.s   $f4, $f10, $f16
    mtc1    $zero, $t2
    swc1    $f8, GameStruct_9c($a3)
    add.s   $f8, $f6, $f14
    swc1    $f4, GameStruct_a0($a3)
    lwc1    $f4, GameStruct_15c4($a3)
    swc1    $f8, GameStruct_a4($a3)
    c.eq.s  $f10, $f4
    nop
    bc1t    branch_0x800651b8
    nop
    lwc1    $f6, GameStruct_6b4($a3)
    lwc1    $f8, GameStruct_44($a3)
    lwc1    $f10, GameStruct_6b8($a3)
    lwc1    $f4, GameStruct_48($a3)
    sub.s   $f2, $f6, $f8
    lwc1    $f12, GameStruct_6c($a3)
    lwc1    $f8, GameStruct_4c($a3)
    sub.s   $f16, $f10, $f4
    lwc1    $f6, GameStruct_6bc($a3)
    mul.s   $f4, $f12, $f2
    lwc1    $f0, GameStruct_70($a3)
    sub.s   $f14, $f6, $f8
    lwc1    $f10, GameStruct_74($a3)
    mul.s   $f6, $f16, $f0
    sw      $a3, 0x28($sp)
    swc1    $f10, 0x1c($sp)
    lwc1    $f10, 0x1c($sp)
    add.s   $f8, $f4, $f6
    mul.s   $f4, $f14, $f10
    add.s   $f18, $f8, $f4
    mul.s   $f6, $f18, $f12
    sub.s   $f2, $f2, $f6
    mul.s   $f8, $f18, $f0
    swc1    $f2, 0x38($sp)
    mul.s   $f4, $f18, $f10
    sub.s   $f16, $f16, $f8
    mul.s   $f6, $f2, $f2
    sub.s   $f14, $f14, $f4
    mul.s   $f8, $f16, $f16
    swc1    $f16, 0x34($sp)
    mul.s   $f4, $f14, $f14
    swc1    $f14, 0x30($sp)
    add.s   $f10, $f6, $f8
    jal     sqrtf
    add.s   $f12, $f10, $f4
    lui     $at, %hi(FLOAT_1)
    mtc1    $at, $f6
    lwc1    $f2, 0x38($sp)
    lwc1    $f16, 0x34($sp)
    div.s   $f12, $f6, $f0
    lw      $a3, 0x28($sp)
    lwc1    $f14, 0x30($sp)
    lwc1    $f8, GameStruct_78($a3)
    lwc1    $f4, GameStruct_7c($a3)
    mul.s   $f2, $f2, $f12
    nop
    mul.s   $f16, $f16, $f12
    nop
    mul.s   $f14, $f14, $f12
    nop
    mul.s   $f10, $f8, $f2
    nop
    mul.s   $f6, $f16, $f4
    lwc1    $f4, 0x80($a3)
    add.s   $f8, $f10, $f6
    mul.s   $f10, $f14, $f4
    mtc1    $at, $a2
    lui     $at, %hi(FLOAT_1)
    add.s   $f18, $f8, $f10
    mul.s   $f18, $f18, $f18
    c.lt.s $f6, $f18
    nop
    bc1f    branch_0x80065024
    nop
    mtc1    $at, $f18
    nop
branch_0x80065024:
    mul.s   $f8, $f18, $f18
    lui     $at, %hi(FLOAT_1)
    mtc1    $at, $f4
    sw      $a3, 0x28($sp)
    swc1    $f2, 0x38($sp)
    swc1    $f14, 0x30($sp)
    swc1    $f16, 0x34($sp)
    jal     sqrtf
    sub.s   $f12, $f4, $f8
    lw      $a3, 0x28($sp)
    lui     $at, %hi(FLOAT_1)
    mtc1    $at, $f10
    lwc1    $f6, GameStruct_1568($a3)
    lwc1    $f2, 0x38($sp)
    lwc1    $f16, 0x34($sp)
    mul.s   $f4, $f0, $f6
    lwc1    $f6, GameStruct_15c4($a3)
    lwc1    $f14, 0x30($sp)
    lui     $at, %hi(FLOAT_3)
    mtc1    $at, $f0
    sub.s   $f8, $f10, $f4
    lwc1    $f10, GameStruct_17c($a3)
    mul.s   $f18, $f8, $f6
    lwc1    $f8, GameStruct_180($a3)
    mul.s   $f2, $f2, $f18
    nop
    mul.s   $f16, $f16, $f18
    sub.s   $f4, $f10, $f2
    mul.s   $f14, $f14, $f18
    lwc1    $f10, GameStruct_184($a3)
    sub.s   $f6, $f8, $f16
    lwc1    $f8, GameStruct_15c($a3)
    swc1    $f4, GameStruct_17c($a3)
    swc1    $f6, GameStruct_180($a3)
    sub.s   $f4, $f10, $f14
    lwc1    $f10, GameStruct_160($a3)
    sub.s   $f6, $f8, $f2
    lwc1    $f8, GameStruct_164($a3)
    swc1    $f4, GameStruct_184($a3)
    sub.s   $f4, $f10, $f16
    swc1    $f6, GameStruct_15c($a3)
    lwc1    $f10, GameStruct_1dc($a3)
    sub.s   $f6, $f8, $f14
    lwc1    $f8, GameStruct_1e0($a3)
    swc1    $f4, GameStruct_160($a3)
    add.s   $f4, $f10, $f2
    swc1    $f6, GameStruct_164($a3)
    lwc1    $f10, GameStruct_1e4($a3)
    add.s   $f6, $f8, $f16
    lwc1    $f8, GameStruct_1bc($a3)
    swc1    $f4, GameStruct_1dc($a3)
    add.s   $f4, $f10, $f14
    swc1    $f6, GameStruct_1e0($a3)
    lwc1    $f10, GameStruct_1c0($a3)
    add.s   $f6, $f8, $f2
    mul.s   $f2, $f2, $f0
    swc1    $f4, GameStruct_1e4($a3)
    add.s   $f4, $f10, $f16
    lwc1    $f8, GameStruct_1c4($a3)
    mul.s   $f16, $f16, $f0
    swc1    $f6, GameStruct_1bc($a3)
    add.s   $f6, $f8, $f14
    lwc1    $f10, GameStruct_13c($a3)
    lwc1    $f8, GameStruct_140($a3)
    mul.s   $f14, $f14, $f0
    swc1    $f4, GameStruct_1c0($a3)
    swc1    $f6, GameStruct_1c4($a3)
    sub.s   $f4, $f10, $f2
    lwc1    $f10, GameStruct_144($a3)
    sub.s   $f6, $f8, $f16
    lwc1    $f8, GameStruct_fc($a3)
    swc1    $f4, GameStruct_13c($a3)
    sub.s   $f4, $f10, $f14
    swc1    $f6, GameStruct_140($a3)
    lwc1    $f10, GameStruct_100($a3)
    sub.s   $f6, $f8, $f2
    lwc1    $f8, GameStruct_104($a3)
    swc1    $f4, GameStruct_144($a3)
    sub.s   $f4, $f10, $f16
    swc1    $f6, GameStruct_fc($a3)
    lwc1    $f10, GameStruct_dc($a3)
    sub.s   $f6, $f8, $f14
    lwc1    $f8, GameStruct_e0($a3)
    swc1    $f4, GameStruct_100($a3)
    add.s   $f4, $f10, $f2
    swc1    $f6, GameStruct_104($a3)
    lwc1    $f10, GameStruct_e4($a3)
    add.s   $f6, $f8, $f16
    lwc1    $f8, GameStruct_9c($a3)
    swc1    $f4, GameStruct_dc($a3)
    add.s   $f4, $f10, $f14
    swc1    $f6, GameStruct_e0($a3)
    lwc1    $f10, GameStruct_a0($a3)
    add.s   $f6, $f8, $f2
    lwc1    $f8, GameStruct_a4($a3)
    swc1    $f4, GameStruct_e4($a3)
    add.s   $f4, $f10, $f16
    swc1    $f6, GameStruct_9c($a3)
    add.s   $f6, $f8, $f14
    swc1    $f4, GameStruct_a0($a3)
    swc1    $f6, GameStruct_a4($a3)
branch_0x800651b8:
    lw      $t4, GameStruct_c54($a3)
    addiu   $at, $zero, 0x17
    bne     $t4, $at, branch_0x8006532c
    lui     $at, 0x800f
    lwc1    $f10, -0x6a64($at)
    lwc1    $f0, GameStruct_7c($a3)
    lui     $at, 0x800f
    c.lt.s  $f0, $f10
    nop
    bc1f    branch_0x80065288
    nop
    lwc1    $f4, -0x6a60($at)
    lui     $at, 0x800f
    c.lt.s  $f4, $f0
    nop
    bc1f    branch_0x80065288
    nop
    lwc1    $f8, GameStruct_b90($a3)
    lwc1    $f6, -0x6a5c($at)
    lui     $t7, %hi(Unknown_0x800d4710)
    c.lt.s  $f8, $f6
    nop
    bc1fl   branch_0x8006522c
    lw      $t6, GameStruct_c74($a3)
    lw      $t5, GameStruct_c78($a3)
    slti    $at, $t5, 0x4
    beqz    $at, branch_0x80065238
    nop
    lw      $t6, GameStruct_c74($a3)
branch_0x8006522c:
    lw      $t7, %lo(Unknown_0x800d4710)($t7)
    slt     $at, $t6, $t7
    bnez    $at, branch_0x80065288
branch_0x80065238:
    lui     $v0, %hi(Unknown_0x800d46d0)
    addiu   $v0, $v0, %lo(Unknown_0x800d46d0)
    lwc1    $f4, 0x0($v0)
    lwc1    $f10, GameStruct_c0($a3)
    lwc1    $f6, GameStruct_120($a3)
    lwc1    $f0, GameStruct_0($a3)
    add.s   $f8, $f10, $f4
    lwc1    $f10, 0x0($v0)
    add.s   $f4, $f6, $f10
    swc1    $f8, GameStruct_c0($a3)
    lwc1    $f8, GameStruct_1a0($a3)
    lwc1    $f6, 0x0($v0)
    swc1    $f4, GameStruct_120($a3)
    lwc1    $f4, GameStruct_200($a3)
    add.s   $f10, $f8, $f6
    lwc1    $f8, 0x0($v0)
    add.s   $f6, $f4, $f8
    swc1    $f10, GameStruct_1a0($a3)
    b       branch_0x800652c8
    swc1    $f6, GameStruct_200($a3)
branch_0x80065288:
    lui     $at, 0x800f
    lwc1    $f4, -0x6a58($at)
    lwc1    $f10, GameStruct_0($a3)
    lwc1    $f8, GameStruct_c0($a3)
    mul.s   $f0, $f10, $f4
    lwc1    $f10, GameStruct_120($a3)
    add.s   $f6, $f8, $f0
    lwc1    $f8, GameStruct_1a0($a3)
    add.s   $f4, $f10, $f0
    lwc1    $f10, GameStruct_200($a3)
    swc1    $f6, GameStruct_c0($a3)
    add.s   $f6, $f8, $f0
    swc1    $f4, GameStruct_120($a3)
    add.s   $f4, $f10, $f0
    swc1    $f6, GameStruct_1a0($a3)
    swc1    $f4, GameStruct_200($a3)
branch_0x800652c8:
    lwc1    $f8, GameStruct_140($a3)
    lwc1    $f10, GameStruct_180($a3)
    add.s   $f6, $f8, $f0
    lwc1    $f8, GameStruct_1e0($a3)
    add.s   $f4, $f10, $f0
    lwc1    $f10, GameStruct_e0($a3)
    swc1    $f6, GameStruct_140($a3)
    add.s   $f6, $f8, $f0
    swc1    $f4, GameStruct_180($a3)
    lwc1    $f8, GameStruct_100($a3)
    add.s   $f4, $f10, $f0
    lwc1    $f10, GameStruct_160($a3)
    swc1    $f6, GameStruct_1e0($a3)
    add.s   $f6, $f8, $f0
    swc1    $f4, GameStruct_e0($a3)
    lwc1    $f8, GameStruct_1c0($a3)
    add.s   $f4, $f10, $f0
    lwc1    $f10, GameStruct_a0($a3)
    swc1    $f6, GameStruct_100($a3)
    add.s   $f6, $f8, $f0
    swc1    $f4, GameStruct_160($a3)
    add.s   $f4, $f10, $f0
    swc1    $f6, GameStruct_1c0($a3)
    b       branch_0x800653d4
    swc1    $f4, GameStruct_a0($a3)

branch_0x8006532c:
    lwc1    $f8, GameStruct_84($a3)
    lwc1    $f6, GameStruct_c20($a3)
    lwc1    $f4, GameStruct_88($a3)
    lwc1    $f2, GameStruct_0($a3)
    mul.s   $f10, $f8, $f6
    lwc1    $f8, GameStruct_c24($a3)
    mul.s   $f6, $f4, $f8
    lwc1    $f8, GameStruct_8c($a3)
    add.s   $f4, $f10, $f6
    lwc1    $f10, GameStruct_c28($a3)
    mul.s   $f6, $f8, $f10
    lwc1    $f10, GameStruct_1590($a3)
    add.s   $f8, $f4, $f6
    lwc1    $f6, GameStruct_15cc($a3)
    mul.s   $f4, $f10, $f8
    lwc1    $f10, GameStruct_140($a3)
    add.s   $f18, $f4, $f6
    lwc1    $f4, GameStruct_180($a3)
    add.s   $f0, $f2, $f18
    add.s   $f8, $f10, $f0
    lwc1    $f10, GameStruct_1e0($a3)
    add.s   $f6, $f4, $f0
    lwc1    $f4, GameStruct_e0($a3)
    swc1    $f8, GameStruct_140($a3)
    add.s   $f8, $f10, $f0
    swc1    $f6, GameStruct_180($a3)
    lwc1    $f10, GameStruct_100($a3)
    add.s   $f6, $f4, $f0
    lwc1    $f4, GameStruct_160($a3)
    swc1    $f8, GameStruct_1e0($a3)
    sub.s   $f0, $f2, $f18
    swc1    $f6, GameStruct_e0($a3)
    add.s   $f8, $f10, $f0
    lwc1    $f10, GameStruct_1c0($a3)
    add.s   $f6, $f4, $f0
    lwc1    $f4, GameStruct_a0($a3)
    swc1    $f8, GameStruct_100($a3)
    add.s   $f8, $f10, $f0
    swc1    $f6, GameStruct_160($a3)
    add.s   $f6, $f4, $f0
    swc1    $f8, GameStruct_1c0($a3)
    swc1    $f6, GameStruct_a0($a3)
branch_0x800653d4:
    lwc1    $f0, GameStruct_bf8($a3)
    mtc1    $zero, $t2
    nop
    c.eq.s  $f10, $f0
    nop
    bc1tl   branch_0x800654e4
    lw      $v1, 0x1598($a3)
    lwc1    $f8, GameStruct_84($a3)
    lwc1    $f4, GameStruct_88($a3)
    lwc1    $f6, GameStruct_8c($a3)
    mul.s   $f2, $f0, $f8
    lwc1    $f10, GameStruct_fc($a3)
    mul.s   $f16, $f0, $f4
    lwc1    $f4, GameStruct_100($a3)
    mul.s   $f14, $f0, $f6
    sub.s   $f8, $f10, $f2
    lwc1    $f10, GameStruct_104($a3)
    sub.s   $f6, $f4, $f16
    lwc1    $f4, GameStruct_11c($a3)
    swc1    $f8, GameStruct_fc($a3)
    sub.s   $f8, $f10, $f14
    swc1    $f6, GameStruct_100($a3)
    lwc1    $f10, GameStruct_120($a3)
    sub.s   $f6, $f4, $f2
    lwc1    $f4, GameStruct_124($a3)
    swc1    $f8, GameStruct_104($a3)
    sub.s   $f8, $f10, $f16
    swc1    $f6, GameStruct_11c($a3)
    lwc1    $f10, GameStruct_13c($a3)
    sub.s   $f6, $f4, $f14
    lwc1    $f4, GameStruct_140($a3)
    swc1    $f8, GameStruct_120($a3)
    sub.s   $f8, $f10, $f2
    swc1    $f6, GameStruct_124($a3)
    lwc1    $f10, GameStruct_144($a3)
    sub.s   $f6, $f4, $f16
    lwc1    $f4, GameStruct_9c($a3)
    swc1    $f8, GameStruct_13c($a3)
    sub.s   $f8, $f10, $f14
    swc1    $f6, GameStruct_140($a3)
    lwc1    $f10, GameStruct_a0($a3)
    add.s   $f6, $f4, $f2
    lwc1    $f4, GameStruct_a4($a3)
    swc1    $f8, GameStruct_144($a3)
    add.s   $f8, $f10, $f16
    swc1    $f6, GameStruct_9c($a3)
    lwc1    $f10, GameStruct_bc($a3)
    add.s   $f6, $f4, $f14
    lwc1    $f4, GameStruct_c0($a3)
    swc1    $f8, GameStruct_a0($a3)
    add.s   $f8, $f10, $f2
    swc1    $f6, GameStruct_a4($a3)
    lwc1    $f10, GameStruct_c4($a3)
    add.s   $f6, $f4, $f16
    lwc1    $f4, GameStruct_dc($a3)
    swc1    $f8, GameStruct_bc($a3)
    add.s   $f8, $f10, $f14
    swc1    $f6, GameStruct_c0($a3)
    lwc1    $f10, GameStruct_e0($a3)
    add.s   $f6, $f4, $f2
    lwc1    $f4, GameStruct_e4($a3)
    swc1    $f8, GameStruct_c4($a3)
    add.s   $f8, $f10, $f16
    swc1    $f6, GameStruct_dc($a3)
    add.s   $f6, $f4, $f14
    swc1    $f8, GameStruct_e0($a3)
    swc1    $f6, GameStruct_e4($a3)
    lw      $v1, GameStruct_1598($a3)
branch_0x800654e4:
    addiu   $at, $zero, 0x2
    beq     $v1, $at, branch_0x800654f8
    addiu   $at, $zero, 0x1
    bnel    $v1, $at, branch_0x80065624
    addiu   $at, $zero, 0x4
branch_0x800654f8:
    lwc1    $f0, GameStruct_15ac($a3)
    lwc1    $f10, GameStruct_84($a3)
    lwc1    $f8, GameStruct_88($a3)
    lwc1    $f4, GameStruct_8c($a3)
    mul.s   $f2, $f0, $f10
    lui     $at, %hi(FLOAT_0_5)
    mtc1    $at, $f10
    mul.s   $f16, $f0, $f8
    lwc1    $f6, GameStruct_0($a3)
    lwc1    $f8, GameStruct_dc($a3)
    mul.s   $f14, $f0, $f4
    lw      $v1, GameStruct_1598($a3)
    add.s   $f4, $f8, $f2
    mul.s   $f18, $f6, $f10
    lwc1    $f6, GameStruct_e0($a3)
    lwc1    $f8, GameStruct_e4($a3)
    swc1    $f4, GameStruct_dc($a3)
    add.s   $f4, $f8, $f14
    lwc1    $f8, GameStruct_1e0($a3)
    sub.s   $f12, $f16, $f18
    swc1    $f4, GameStruct_e4($a3)
    add.s   $f10, $f6, $f12
    lwc1    $f6, GameStruct_1dc($a3)
    add.s   $f4, $f8, $f12
    swc1    $f10, GameStruct_e0($a3)
    lwc1    $f8, GameStruct_9c($a3)
    add.s   $f10, $f6, $f2
    lwc1    $f6, GameStruct_1e4($a3)
    swc1    $f4, GameStruct_1e0($a3)
    add.s   $f4, $f8, $f2
    swc1    $f10, GameStruct_1dc($a3)
    lwc1    $f8, GameStruct_a4($a3)
    add.s   $f10, $f6, $f14
    lwc1    $f6, GameStruct_a0($a3)
    swc1    $f4, GameStruct_9c($a3)
    add.s   $f4, $f8, $f14
    swc1    $f10, GameStruct_1e4($a3)
    lwc1    $f8, GameStruct_1c0($a3)
    add.s   $f10, $f6, $f12
    lwc1    $f6, GameStruct_1bc($a3)
    swc1    $f4, GameStruct_a4($a3)
    add.s   $f4, $f8, $f12
    swc1    $f10, GameStruct_a0($a3)
    lwc1    $f8, GameStruct_bc($a3)
    add.s   $f10, $f6, $f2
    lwc1    $f6, GameStruct_1c4($a3)
    swc1    $f4, GameStruct_1c0($a3)
    sub.s   $f4, $f8, $f2
    swc1    $f10, GameStruct_1bc($a3)
    lwc1    $f8, GameStruct_c4($a3)
    add.s   $f10, $f6, $f14
    lwc1    $f6, GameStruct_c0($a3)
    swc1    $f4, GameStruct_bc($a3)
    sub.s   $f4, $f8, $f14
    swc1    $f10, GameStruct_1c4($a3)
    lwc1    $f8, GameStruct_200($a3)
    sub.s   $f10, $f6, $f12
    lwc1    $f6, GameStruct_1fc($a3)
    swc1    $f4, GameStruct_c4($a3)
    sub.s   $f4, $f8, $f12
    swc1    $f10, GameStruct_c0($a3)
    lwc1    $f8, GameStruct_120($a3)
    sub.s   $f10, $f6, $f2
    lwc1    $f6, GameStruct_204($a3)
    swc1    $f4, GameStruct_200($a3)
    add.s   $f4, $f8, $f18
    swc1    $f10, GameStruct_1fc($a3)
    sub.s   $f10, $f6, $f14
    lwc1    $f6, GameStruct_1a0($a3)
    swc1    $f4, GameStruct_120($a3)
    swc1    $f10, GameStruct_204($a3)
    add.s   $f10, $f6, $f18
    b       branch_0x80065784
    swc1    $f10, GameStruct_1a0($a3)

# 0x80065620
    addiu   $at, $zero, 0x4
branch_0x80065624:
    bnel    $v1, $at, branch_0x80065788
    lw      $t8, GameStruct_c78($a3)
    lwc1    $f0, GameStruct_15ac($a3)
    lwc1    $f8, GameStruct_78($a3)
    lwc1    $f4, GameStruct_7c($a3)
    lwc1    $f6, GameStruct_80($a3)
    mul.s   $f2, $f0, $f8
    lui     $at, %hi(FLOAT_0_5)
    mtc1    $at, $f8
    mul.s   $f16, $f0, $f4
    lwc1    $f10, GameStruct_0($a3)
    lwc1    $f4, GameStruct_fc($a3)
    mul.s   $f14, $f0, $f6
    lw      $v1, GameStruct_1598($a3)
    add.s   $f6, $f4, $f2
    mul.s   $f18, $f10, $f8
    lwc1    $f10, GameStruct_100($a3)
    lwc1    $f4, GameStruct_104($a3)
    swc1    $f6, GameStruct_fc($a3)
    add.s   $f6, $f4, $f14
    lwc1    $f4, GameStruct_120($a3)
    sub.s   $f12, $f16, $f18
    swc1    $f6, GameStruct_104($a3)
    add.s   $f0, $f16, $f18
    add.s   $f8, $f10, $f12
    lwc1    $f10, GameStruct_11c($a3)
    add.s   $f6, $f4, $f0
    swc1    $f8, GameStruct_100($a3)
    lwc1    $f4, GameStruct_13c($a3)
    add.s   $f8, $f10, $f2
    lwc1    $f10, GameStruct_124($a3)
    swc1    $f6, GameStruct_120($a3)
    add.s   $f6, $f4, $f2
    swc1    $f8, GameStruct_11c($a3)
    lwc1    $f4, GameStruct_144($a3)
    add.s   $f8, $f10, $f14
    lwc1    $f10, GameStruct_140($a3)
    swc1    $f6, GameStruct_13c($a3)
    add.s   $f6, $f4, $f14
    swc1    $f8, GameStruct_124($a3)
    lwc1    $f4, GameStruct_a0($a3)
    add.s   $f8, $f10, $f12
    lwc1    $f10, GameStruct_9c($a3)
    swc1    $f6, GameStruct_144($a3)
    sub.s   $f6, $f4, $f0
    swc1    $f8, GameStruct_140($a3)
    lwc1    $f4, GameStruct_bc($a3)
    sub.s   $f8, $f10, $f2
    lwc1    $f10, GameStruct_a4($a3)
    swc1    $f6, GameStruct_a0($a3)
    sub.s   $f6, $f4, $f2
    swc1    $f8, GameStruct_9c($a3)
    lwc1    $f4, GameStruct_c4($a3)
    sub.s   $f8, $f10, $f14
    lwc1    $f10, GameStruct_c0($a3)
    swc1    $f6, GameStruct_bc($a3)
    sub.s   $f6, $f4, $f14
    swc1    $f8, GameStruct_a4($a3)
    lwc1    $f4, GameStruct_e0($a3)
    sub.s   $f8, $f10, $f12
    lwc1    $f10, GameStruct_dc($a3)
    swc1    $f6, GameStruct_c4($a3)
    sub.s   $f6, $f4, $f0
    swc1    $f8, GameStruct_c0($a3)
    lwc1    $f4, GameStruct_1a0($a3)
    sub.s   $f8, $f10, $f2
    lwc1    $f10, GameStruct_e4($a3)
    swc1    $f6, GameStruct_e0($a3)
    add.s   $f6, $f4, $f18
    swc1    $f8, GameStruct_dc($a3)
    lwc1    $f4, GameStruct_160($a3)
    sub.s   $f8, $f10, $f14
    lwc1    $f10, GameStruct_200($a3)
    swc1    $f6, GameStruct_1a0($a3)
    sub.s   $f6, $f4, $f18
    swc1    $f8, GameStruct_e4($a3)
    lwc1    $f4, GameStruct_1c0($a3)
    add.s   $f8, $f10, $f18
    lwc1    $f10, GameStruct_180($a3)
    swc1    $f6, GameStruct_160($a3)
    sub.s   $f6, $f4, $f18
    swc1    $f8, GameStruct_200($a3)
    sub.s   $f8, $f10, $f18
    lwc1    $f10, GameStruct_1e0($a3)
    swc1    $f6, GameStruct_1c0($a3)
    swc1    $f8, GameStruct_180($a3)
    sub.s   $f8, $f10, $f18
    swc1    $f8, GameStruct_1e0($a3)
branch_0x80065784:
    lw      $t8, GameStruct_c78($a3)
branch_0x80065788:
    bnezl   $t8, branch_0x8006588c
    addiu   $at, $zero, 0x3
    bnezl   $v1, branch_0x8006588c
    addiu   $at, $zero, 0x3
    lwc1    $f0, GameStruct_78($a3)
    lwc1    $f4, GameStruct_50($a3)
    lwc1    $f12, GameStruct_80($a3)
    lwc1    $f10, GameStruct_58($a3)
    mul.s   $f6, $f4, $f0
    lui     $at, 0x800d
    lw      $t9, GameStruct_28($a3)
    mul.s   $f8, $f10, $f12
    lwc1    $f10, 0x470c($at)
    lui     $at, 0x800f
    sll     $t0, $t9, 5
    addu    $v0, $a3, $t0
    addiu   $v0, $v0, 0x90
    addiu   $t1, $a3, GameStruct_90
    add.s   $f4, $f6, $f8
    mul.s   $f18, $f4, $f10
    ldc1    $f4, -0x6a50($at)
    lui     $at, 0x800f
    mul.s   $f6, $f0, $f18
    cvt.d.s $f8, $f6
    lwc1    $f6, GameStruct_7c($a3)
    mul.d   $f10, $f8, $f4
    nop
    mul.s   $f16, $f6, $f18
    nop
    mul.s   $f8, $f12, $f18
    cvt.s.d $f2, $f10
    ldc1    $f10, -0x6a48($at)
    sltu    $at, $v0, $t1
    cvt.d.s $f4, $f8
    mul.d   $f6, $f4, $f10
    bnez    $at, branch_0x80065888
    cvt.s.d $f14, $f6
    lw      $v1, 0x4c($sp)
    addiu   $v1, $v1, 0x90
    addiu   $v0, $v0, 0xffe0
    sltu    $at, $v0, $v1
    bnez    $at, branch_0x80065864
    lwc1    $f18, 0x2c($v0)
branch_0x80065834:
    add.s   $f12, $f18, $f2
    lwc1    $f10, 0x30($v0)
    lwc1    $f8, 0x34($v0)
    lwc1    $f18, 0xc($v0)
    add.s   $f10, $f10, $f16
    addiu   $v0, $v0, 0xffe0
    sltu    $at, $v0, $v1
    add.s   $f8, $f8, $f14
    swc1    $f12, 0x4c($v0)
    swc1    $f10, 0x50($v0)
    beqz    $at, branch_0x80065834
    swc1    $f8, 0x54($v0)
branch_0x80065864:
    lwc1    $f10, 0x30($v0)
    lwc1    $f8, 0x34($v0)
    add.s   $f12, $f18, $f2
    add.s   $f10, $f10, $f16
    swc1    $f12, 0x2c($v0)
    add.s   $f8, $f8, $f14
    swc1    $f10, 0x30($v0)
    swc1    $f8, 0x34($v0)
    lw      $v1, GameStruct_1598($a3)
branch_0x80065888:
    addiu   $at, $zero, 0x3
branch_0x8006588c:
    bne     $v1, $at, branch_0x800658a0
    lui     $at, 0x800d
    lwc1    $f10, 0x4758($at)
    b       branch_0x80065974
    swc1    $f10, GameStruct_18($a3)

branch_0x800658a0:
    lwc1    $f6, GameStruct_50($a3)
    lwc1    $f8, GameStruct_6c($a3)
    lwc1    $f0, GameStruct_70($a3)
    lwc1    $f10, GameStruct_54($a3)
    mul.s   $f4, $f6, $f8
    lui     $at, 0x800d
    mul.s   $f6, $f10, $f0
    lwc1    $f10, GameStruct_58($a3)
    add.s   $f8, $f4, $f6
    lwc1    $f4, GameStruct_74($a3)
    mul.s   $f6, $f10, $f4
    lwc1    $f4, 0x4708($at)
    lui     $at, 0x3f80
    add.s   $f10, $f8, $f6
    mul.s   $f8, $f0, $f4
    mtc1    $zero, $a2
    mul.s   $f18, $f8, $f10
    c.lt.s $f18, $f6
    nop
    bc1fl   branch_0x8006590c
    mtc1    $at, $a0
    lui     $at, 0x800d
    lwc1    $f18, 0x4750($at)
    lui     $at, 0x800d
    b       branch_0x80065948
    lwc1    $f0, 0x4754($at)

.globl Function_0x80065908
Function_0x80065908: # 0x80065908
    mtc1    $at, $a0
branch_0x8006590c:
    lui     $at, 0x800d
    c.lt.s $f4, $f18
    nop
    bc1f    branch_0x80065930
    nop
    lui     $at, 0x800d
    lwc1    $f0, 0x4754($at)
    b       branch_0x80065948
    mov.s   $f18, $f0
branch_0x80065930:
    lwc1    $f0, 0x4754($at)
    lui     $at, 0x800d
    lwc1    $f2, 0x4750($at)
    sub.s   $f8, $f0, $f2
    mul.s   $f10, $f8, $f18
    add.s   $f18, $f10, $f2
branch_0x80065948:
    lwc1    $f2, GameStruct_18($a3)
    lui     $at, 0x800f
    c.lt.s  $f2, $f0
    nop
    bc1fl   branch_0x80065974
    swc1    $f18, GameStruct_18($a3)
    lwc1    $f6, -0x6a40($at)
    add.s   $f4, $f2, $f6
    b       branch_0x80065974
    swc1    $f4, GameStruct_18($a3)

# 0x80065970
    swc1    $f18, GameStruct_18($a3)
branch_0x80065974:
    lw      $t2, 0x50($sp)
    lui     $t4, 0x801c
    sll     $t3, $t2, 3
    subu    $t3, $t3, $t2
    sll     $t3, $t3, 2
    addu    $t3, $t3, $t2
    sll     $t3, $t3, 3
    addu    $t4, $t4, $t3
    lw      $t4, 0x3a74($t4)
    beqz    $t4, branch_0x800659b4
    or      $a0, $a3, $zero
    lw      $a1, GameStruct_15d4($a3)
    jal     Function_0x8004e044
    sw      $a3, 0x28($sp)
    b       branch_0x800659c8
    lw      $a3, 0x28($sp)

branch_0x800659b4:
    or      $a0, $a3, $zero
    lw      $a1, GameStruct_15d4($a3)
    jal     Function_0x8004e4e8
    sw      $a3, 0x28($sp)
    lw      $a3, 0x28($sp)
branch_0x800659c8:
    lb      $t5, GameStruct_b5f($a3)
    lui     $at, 0x428c
    mtc1    $at, $a2
    mtc1    $t5, $t0
    mtc1    $zero, $a0
    lui     $at, 0x800d
    cvt.s.w $f10, $f8
    lui     $t6, 0x800d
    div.s   $f18, $f10, $f6
    c.lt.s  $f18, $f4
    nop
    bc1f    branch_0x80065a24
    nop
    lui     $at, 0x800d
    lwc1    $f2, 0x4850($at)
    lui     $at, 0x800d
    mul.s   $f18, $f18, $f18
    lwc1    $f8, 0x484c($at)
    sub.s   $f10, $f8, $f2
    mul.s   $f6, $f10, $f18
    add.s   $f4, $f6, $f2
    b       branch_0x80065a68
    swc1    $f4, GameStruct_10($a3)

branch_0x80065a24:
    lwc1    $f0, 0x4754($at)
    lui     $at, 0x800d
    lwc1    $f6, 0x4750($at)
    lwc1    $f8, GameStruct_18($a3)
    lui     $at, 0x800d
    sub.s   $f4, $f6, $f0
    lwc1    $f2, 0x4850($at)
    lui     $at, 0x800d
    sub.s   $f10, $f8, $f0
    lwc1    $f6, 0x4854($at)
    div.s   $f8, $f10, $f4
    sub.s   $f10, $f6, $f2
    mul.s   $f18, $f18, $f8
    nop
    mul.s   $f4, $f10, $f18
    add.s   $f8, $f4, $f2
    swc1    $f8, GameStruct_10($a3)
branch_0x80065a68:
    lhu     $t6, 0x46ec($t6)
    or      $a0, $a3, $zero
    or      $a1, $a3, $zero
    beqz    $t6, branch_0x80065a88
    nop
    jal     Function_0x800516e0
    sw      $a3, 0x28($sp)
    lw      $a3, 0x28($sp)
branch_0x80065a88:
    lui     $t7, 0x800d
    lhu     $t7, 0x46f4($t7)
    or      $a0, $a3, $zero
    or      $a1, $a3, $zero
    beqzl   $t7, branch_0x80065ab0
    or      $a0, $a3, $zero
    jal     Function_0x8007efd0
    sw      $a3, 0x28($sp)
    lw      $a3, 0x28($sp)
    or      $a0, $a3, $zero
branch_0x80065ab0:
    jal     Function_0x8007f6a0
    sw      $a3, 0x28($sp)
    lui     $t8, 0x800d
    lhu     $t8, 0x46f8($t8)
    lw      $a3, 0x28($sp)
    beqz    $t8, branch_0x80065ad8
    or      $a0, $a3, $zero
    jal     Function_0x8007e868
    sw      $a3, 0x28($sp)
    lw      $a3, 0x28($sp)
branch_0x80065ad8:
    or      $a0, $a3, $zero
    jal     Function_0x8007ef20
    sw      $a3, 0x28($sp)
    jal     Function_0x8007ec5c
    lw      $a0, 0x28($sp)
    jal     Function_0x8004b154
    lw      $a0, 0x28($sp)
    jal     Function_0x8006246c
    lw      $a0, 0x28($sp)
    lw      $a3, 0x28($sp)
    lui     $at, 0xbf80
    lhu     $t9, GameStruct_c7c($a3)
    beqzl   $t9, branch_0x80065bac
    lw      $ra, 0x14($sp)
    mtc1    $at, $zero
    lui     $at, 0x800f
    lwc1    $f10, -0x6a3c($at)
    lwc1    $f6, GameStruct_b90($a3)
    lui     $at, 0xbf00
    mul.s   $f18, $f6, $f10
    c.lt.s  $f18, $f0
    nop
    bc1fl   branch_0x80065b44
    mtc1    $at, $zero
    b       branch_0x80065b68
    mov.s   $f18, $f0

# 0x80065b40
    mtc1    $at, $zero
branch_0x80065b44:
    nop
    c.lt.s $f0, $f18
    nop
    bc1fl   branch_0x80065b6c
    lui     $at, 0x42f0
    lhu     $t0, GameStruct_c66($a3)
    beqzl   $t0, branch_0x80065b6c
    lui     $at, 0x42f0
    mov.s   $f18, $f0
branch_0x80065b68:
    lui     $at, 0x42f0
branch_0x80065b6c:
    mtc1    $at, $zero
    lwc1    $f8, GameStruct_5c($a3)
    lwc1    $f4, GameStruct_44($a3)
    lwc1    $f10, GameStruct_4c($a3)
    mul.s   $f6, $f0, $f8
    lwc1    $f8, GameStruct_64($a3)
    sub.s   $f12, $f4, $f6
    mul.s   $f4, $f0, $f8
    lwc1    $f6, GameStruct_15d0($a3)
    mul.s   $f8, $f6, $f18
    sub.s   $f14, $f10, $f4
    trunc.w.s   $f10, $f8
    mfc1    $a2, $t2
    jal     Function_0x8004f374
    nop
    lw      $ra, 0x14($sp)
branch_0x80065bac:
    addiu   $sp, $sp, 0x50
    jr      $ra
    nop


/* Input:
a0: Driver Nr?
*/
.globl Function_0x80065bb8_DrawDriver
Function_0x80065bb8_DrawDriver: # 0x80065bb8
    sll     $t7, $a0, 2
    subu    $t7, $t7, $a0
    sll     $t7, $t7, 3
    subu    $t7, $t7, $a0
    sll     $t7, $t7, 3
    addu    $t7, $t7, $a0
    sll     $t7, $t7, 2
    addiu   $sp, $sp, -0x50
    subu    $t7, $t7, $a0
    lui     $t8, %hi(Unknown_0x801923f0_GameStruct)
    sw      $s0, 0x18($sp)
    addiu   $t8, $t8, %lo(Unknown_0x801923f0_GameStruct)
    sll     $t7, $t7, 3
    addu    $s0, $t7, $t8
    lui     $at, %hi(Unknown_0x80192210)
    lwc1    $f4, %lo(Unknown_0x80192210)($at)
    lwc1    $f0, GameStruct_44($s0)
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x50($sp)
    c.lt.s  $f0, $f4
    sw      $s0, 0x4c($sp)
    lui     $at, %hi(Unknown_0x8019220c)
    lui     $t0, %hi(Unknown_0x800d465c)
    bc1f    branch_0x80065c28
    lui     $t1, %hi(Unknown_0x802236f0)

    lui     $at, %hi(Unknown_0x80192214)
    b       branch_0x80065c54
    lwc1    $f16, %lo(Unknown_0x80192214)($at)

branch_0x80065c28:
    lwc1    $f6, %lo(Unknown_0x8019220c)($at)
    lui     $at, %hi(Unknown_0x80192214)
    c.lt.s  $f6, $f0
    nop
    bc1fl   branch_0x80065c50
    mtc1    $zero, $s0

    lwc1    $f16, %lo(Unknown_0x80192214)($at)
    b       branch_0x80065c54
    neg.s   $f16, $f16

# 0x80065c4c
    mtc1    $zero, $s0
branch_0x80065c50:
    nop
branch_0x80065c54:
    lui     $at, %hi(Unknown_0x8019221c)
    lwc1    $f8, %lo(Unknown_0x8019221c)($at)
    lwc1    $f0, GameStruct_4c($s0)
    lui     $at, %hi(Unknown_0x80192218)
    c.lt.s  $f0, $f8
    nop
    bc1f    branch_0x80065c80
    nop

    lui     $at, %hi(Unknown_0x80192220)
    b       branch_0x80065cac
    lwc1    $f14, %lo(Unknown_0x80192220)($at)

branch_0x80065c80:
    lwc1    $f10, %lo(Unknown_0x80192218)($at)
    lui     $at, %hi(Unknown_0x80192220)
    c.lt.s  $f10, $f0
    nop
    bc1fl   branch_0x80065ca8
    mtc1    $zero, $t6

    lwc1    $f14, %lo(Unknown_0x80192220)($at)
    b       branch_0x80065cac
    neg.s   $f14, $f14

# 0x80065ca4
    mtc1    $zero, $t6
branch_0x80065ca8:
    nop
branch_0x80065cac:
    swc1    $f16, GameStruct_bf0($s0)
    swc1    $f14, GameStruct_bf4($s0)
    lw      $t0, %lo(Unknown_0x800d465c)($t0)
    lw      $t9, 0x50($sp)
    bne     $t9, $t0, branch_0x80065d04
    nop
    lw      $t1, %lo(Unknown_0x802236f0)($t1)
    lui     $t3, %hi(Unknown_0x80227a40)
    addiu   $t3, $t3, %lo(Unknown_0x80227a40)
    sll     $t2, $t1, 4
    addu    $t2, $t2, $t1
    sll     $t2, $t2, 2
    subu    $t2, $t2, $t1
    sll     $t2, $t2, 2
    addu    $v0, $t2, $t3
    lwc1    $f4, 0x4c($v0)
    lwc1    $f8, 0x54($v0)
    add.s   $f6, $f4, $f16
    add.s   $f10, $f8, $f14
    swc1    $f6, 0x4c($v0)
    b       branch_0x80065d68
    swc1    $f10, 0x54($v0)

branch_0x80065d04:
    lui     $t4, %hi(Unknown_0x800da8a8)
    lw      $t4, %lo(Unknown_0x800da8a8)($t4)
    addiu   $at, $zero, 0x2
    bne     $t4, $at, branch_0x80065d68
    lui     $t6, %hi(Unknown_0x800d4660)

    lw      $t6, %lo(Unknown_0x800d4660)($t6)
    lw      $t5, 0x50($sp)
    lui     $t7, %hi(Unknown_0x802236f4)
    bnel    $t5, $t6, branch_0x80065d6c
    mfc1    $a1, $s0

    lw      $t7, %lo(Unknown_0x802236f4)($t7)
    lui     $t9, %hi(Unknown_0x80227a40)
    addiu   $t9, $t9, %lo(Unknown_0x80227a40)
    sll     $t8, $t7, 4
    addu    $t8, $t8, $t7
    sll     $t8, $t8, 2
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 2
    addu    $v0, $t8, $t9
    lwc1    $f4, 0x4c($v0)
    lwc1    $f8, 0x54($v0)
    add.s   $f6, $f4, $f16
    add.s   $f10, $f8, $f14
    swc1    $f6, 0x4c($v0)
    swc1    $f10, 0x54($v0)
branch_0x80065d68:
    mfc1    $a1, $s0
branch_0x80065d6c:
    mfc1    $a3, $t6
    or      $a0, $s0, $zero
    jal     Function_0x80061894
    addiu   $a2, $zero, 0x0
    lui     $t0, %hi(Unknown_0x801ce3a8)
    lw      $t0, %lo(Unknown_0x801ce3a8)($t0)
    beqzl   $t0, branch_0x80065e18
    mtc1    $zero, $a2

    lwc1    $f4, GameStruct_44($s0)
    lwc1    $f6, GameStruct_be4($s0)
    lwc1    $f8, GameStruct_b78($s0)
    sub.s   $f16, $f4, $f6
    lwc1    $f6, GameStruct_be8($s0)
    lwc1    $f4, GameStruct_48($s0)
    sub.s   $f10, $f16, $f8
    lwc1    $f8, GameStruct_b7c($s0)
    swc1    $f16, GameStruct_b78($s0)
    sub.s   $f2, $f4, $f6
    lwc1    $f6, GameStruct_bec($s0)
    lwc1    $f4, GameStruct_4c($s0)
    swc1    $f10, GameStruct_b84($s0)
    sub.s   $f10, $f2, $f8
    lwc1    $f8, GameStruct_b80($s0)
    swc1    $f2, GameStruct_b7c($s0)
    sub.s   $f14, $f4, $f6
    mul.s   $f4, $f16, $f16
    swc1    $f10, GameStruct_b88($s0)
    mul.s   $f6, $f2, $f2
    swc1    $f14, GameStruct_b80($s0)
    sub.s   $f10, $f14, $f8
    swc1    $f10, GameStruct_b8c($s0)
    mul.s   $f10, $f14, $f14
    add.s   $f8, $f4, $f6
    jal     sqrtf
    add.s   $f12, $f8, $f10
    lwc1    $f4, GameStruct_b94($s0)
    swc1    $f0, GameStruct_b90($s0)
    c.lt.s  $f4, $f0
    nop
    bc1fl   branch_0x80065e18
    mtc1    $zero, $a2

    swc1    $f0, GameStruct_b94($s0)
    mtc1    $zero, $a2
branch_0x80065e18:
    lwc1    $f8, GameStruct_c4c($s0)
    addiu   $t3, $s0, GameStruct_90
    c.eq.s  $f6, $f8
    nop
    bc1fl   branch_0x80065e4c
    lhu     $t1, GameStruct_c66($s0)

    mtc1    $zero, $t2
    lwc1    $f4, GameStruct_c48($s0)
    c.eq.s  $f10, $f4
    nop
    bc1tl   branch_0x80065e94
    sw      $zero, GameStruct_16b4($s0)

    lhu     $t1, GameStruct_c66($s0)
branch_0x80065e4c:
    beqzl   $t1, branch_0x80065e94
    sw      $zero, GameStruct_16b4($s0)

    lw      $v0, GameStruct_16b4($s0)
    slti    $at, $v0, 0x28
    beqz    $at, branch_0x80065e84
    lui     $at, %hi(Unknown_0x800e95c8)

    lwc1    $f8, %lo(Unknown_0x800e95c8)($at)
    lwc1    $f6, GameStruct_b90($s0)
    addiu   $t2, $v0, 0x1
    c.lt.s  $f6, $f8
    nop
    bc1f    branch_0x80065e84
    nop

    sw      $t2, GameStruct_16b4($s0)
branch_0x80065e84:
    lui     $v0, %hi(Unknown_0x801ce3a8)
    b       branch_0x80065e9c
    lw      $v0, %lo(Unknown_0x801ce3a8)($v0)

# 0x80065e90
    sw      $zero, GameStruct_16b4($s0)
branch_0x80065e94:
    lui     $v0, %hi(Unknown_0x801ce3a8)
    lw      $v0, %lo(Unknown_0x801ce3a8)($v0)
branch_0x80065e9c:
    beqzl   $v0, branch_0x80065f9c
    addiu   $v0, $s0, GameStruct_1f0

    lwc1    $f6, GameStruct_78($s0)
    lwc1    $f10, GameStruct_44($s0)
    lui     $at, %hi(Unknown_0x800e95d0)
    ldc1    $f14, %lo(Unknown_0x800e95d0)($at)
    cvt.d.s $f8, $f6
    cvt.d.s $f4, $f10
    mul.d   $f10, $f14, $f8
    lwc1    $f8, GameStruct_6c($s0)
    lui     $at, %hi(Unknown_0x800e95d8)
    ldc1    $f18, %lo(Unknown_0x800e95d8)($at)
    lwc1    $f16, GameStruct_c14($s0)
    lwc1    $f2, GameStruct_c20($s0)
    add.d   $f6, $f4, $f10
    cvt.d.s $f4, $f8
    mul.d   $f10, $f18, $f4
    add.d   $f8, $f6, $f10
    lwc1    $f6, GameStruct_48($s0)
    cvt.s.d $f0, $f8
    lwc1    $f8, GameStruct_7c($s0)
    cvt.d.s $f10, $f6
    sub.s   $f12, $f0, $f16
    swc1    $f0, GameStruct_c14($s0)
    lwc1    $f16, GameStruct_c18($s0)
    sub.s   $f4, $f12, $f2
    lwc1    $f2, GameStruct_c24($s0)
    swc1    $f12, GameStruct_c20($s0)
    swc1    $f4, GameStruct_c2c($s0)
    cvt.d.s $f4, $f8
    mul.d   $f6, $f14, $f4
    lwc1    $f4, GameStruct_70($s0)
    add.d   $f8, $f10, $f6
    cvt.d.s $f10, $f4
    mul.d   $f6, $f18, $f10
    add.d   $f4, $f8, $f6
    cvt.s.d $f0, $f4
    sub.s   $f10, $f0, $f16
    swc1    $f0, GameStruct_c18($s0)
    lwc1    $f16, GameStruct_c1c($s0)
    swc1    $f10, 0x20($sp)
    lwc1    $f6, 0x20($sp)
    lwc1    $f8, 0x20($sp)
    lwc1    $f10, GameStruct_4c($s0)
    sub.s   $f4, $f6, $f2
    lwc1    $f6, GameStruct_80($s0)
    swc1    $f8, GameStruct_c24($s0)
    cvt.d.s $f8, $f10
    swc1    $f4, GameStruct_c30($s0)
    cvt.d.s $f4, $f6
    lwc1    $f2, GameStruct_c28($s0)
    mul.d   $f10, $f14, $f4
    lwc1    $f4, GameStruct_74($s0)
    add.d   $f6, $f8, $f10
    cvt.d.s $f8, $f4
    mul.d   $f10, $f18, $f8
    add.d   $f4, $f6, $f10
    cvt.s.d $f0, $f4
    sub.s   $f12, $f0, $f16
    swc1    $f0, GameStruct_c1c($s0)
    sub.s   $f8, $f12, $f2
    swc1    $f12, GameStruct_c28($s0)
    swc1    $f8, GameStruct_c34($s0)
    addiu   $v0, $s0, GameStruct_1f0
branch_0x80065f9c:
    sltu    $at, $v0, $t3
    bnez    $at, branch_0x80065fd4
    or      $v1, $zero, $zero
    lw      $a0, 0x4c($sp)
    addiu   $a0, $a0, 0x90
    lw      $t4, 0x1c($v0)
branch_0x80065fb4:
    addiu   $v0, $v0, -0x20
    sltu    $at, $v0, $a0
    andi    $t5, $t4, 0x1
    beqz    $t5, branch_0x80065fcc
    nop
    addiu   $v1, $v1, 0x1
branch_0x80065fcc:
    beqzl   $at, branch_0x80065fb4
    lw      $t4, 0x1c($v0)
branch_0x80065fd4:
    lhu     $t6, GameStruct_c7c($s0)
    beqz    $v1, branch_0x80065fec
    sh      $t6, GameStruct_c82($s0)
    addiu   $t7, $zero, 0x1
    b       branch_0x80065ff0
    sh      $t7, GameStruct_c7c($s0)

branch_0x80065fec:
    sh      $zero, GameStruct_c7c($s0)
branch_0x80065ff0:
    lhu     $a0, GameStruct_c82($s0)
    lhu     $v0, GameStruct_c7c($s0)
    sw      $v1, GameStruct_c78($s0)
    xor     $v1, $a0, $v0
    and     $t9, $a0, $v1
    and     $t8, $v0, $v1
    sh      $t8, GameStruct_c7e($s0)
    bnez    $v0, branch_0x80066080
    sh      $t9, GameStruct_c80($s0)

    mtc1    $zero, $a2
    lwc1    $f10, GameStruct_c4c($s0)
    c.eq.s  $f6, $f10
    nop
    bc1fl   branch_0x8006606c
    lw      $t1, GameStruct_16d0($s0)

    mtc1    $zero, $a0
    lwc1    $f8, GameStruct_c48($s0)
    c.eq.s  $f4, $f8
    nop
    bc1tl   branch_0x80066054
    mtc1    $zero, $a2

    lh      $t0, GameStruct_15de($s0)
    beqzl   $t0, branch_0x8006606c
    lw      $t1, GameStruct_16d0($s0)

    mtc1    $zero, $a2
branch_0x80066054:
    lwc1    $f10, GameStruct_c44($s0)
    c.eq.s  $f6, $f10
    nop
    bc1t    branch_0x80066078
    nop

    lw      $t1, GameStruct_16d0($s0)
branch_0x8006606c:
    addiu   $t2, $t1, 0x1
    b       branch_0x80066084
    sw      $t2, GameStruct_16d0($s0)

branch_0x80066078:
    b       branch_0x80066084
    sw      $zero, GameStruct_16d0($s0)

branch_0x80066080:
    sw      $zero, GameStruct_16d0($s0)
branch_0x80066084:
    lhu     $t3, GameStruct_c7c($s0)
    bnezl   $t3, branch_0x800660bc
    lw      $t4, GameStruct_1598($s0)

    lwc1    $f8, GameStruct_c4c($s0)
    lwc1    $f6, GameStruct_c48($s0)
    mtc1    $zero, $a0
    add.s   $f10, $f8, $f6
    lwc1    $f8, GameStruct_c44($s0)
    add.s   $f6, $f10, $f8
    c.eq.s  $f4, $f6
    nop
    bc1tl   branch_0x800660d4
    lw      $t5, GameStruct_16dc($s0)

    lw      $t4, GameStruct_1598($s0)
branch_0x800660bc:
    bnezl   $t4, branch_0x800660e0
    lh      $t7, GameStruct_16e2($s0)

    sh      $zero, GameStruct_16e2($s0)
    b       branch_0x800660dc
    sw      $zero, GameStruct_16d4($s0)

# 0x800660d0
    lw      $t5, GameStruct_16dc($s0)
branch_0x800660d4:
    addiu   $t6, $t5, 0x1
    sw      $t6, GameStruct_16dc($s0)
branch_0x800660dc:
    lh      $t7, GameStruct_16e2($s0)
branch_0x800660e0:
    beqz    $t7, branch_0x80066218
    lui     $t8, %hi(Unknown_0x801ce3a8)

    lw      $t8, %lo(Unknown_0x801ce3a8)($t8)
    beqzl   $t8, branch_0x8006621c
    lhu     $t9, GameStruct_16ce($s0)

    lwc1    $f10, GameStruct_11c($s0)
    lwc1    $f8, GameStruct_50($s0)
    lwc1    $f4, GameStruct_120($s0)
    lwc1    $f6, GameStruct_54($s0)
    sub.s   $f16, $f10, $f8
    lwc1    $f8, GameStruct_58($s0)
    lwc1    $f10, GameStruct_124($s0)
    sub.s   $f2, $f4, $f6
    mul.s   $f4, $f16, $f16
    sub.s   $f14, $f10, $f8
    mul.s   $f6, $f2, $f2
    add.s   $f10, $f4, $f6
    mul.s   $f8, $f14, $f14
    jal     sqrtf
    add.s   $f12, $f10, $f8
    lwc1    $f4, GameStruct_bc($s0)
    lwc1    $f6, GameStruct_50($s0)
    lwc1    $f10, GameStruct_c0($s0)
    lwc1    $f8, GameStruct_54($s0)
    sub.s   $f16, $f4, $f6
    lwc1    $f6, GameStruct_58($s0)
    lwc1    $f4, GameStruct_c4($s0)
    sub.s   $f2, $f10, $f8
    mul.s   $f10, $f16, $f16
    swc1    $f0, 0x34($sp)
    sub.s   $f14, $f4, $f6
    mul.s   $f8, $f2, $f2
    add.s   $f4, $f10, $f8
    mul.s   $f6, $f14, $f14
    jal     sqrtf
    add.s   $f12, $f4, $f6
    lwc1    $f2, GameStruct_88($s0)
    mtc1    $zero, $f10
    lwc1    $f18, 0x34($sp)
    lui     $at, %hi(FLOAT_0_5)
    c.lt.s  $f2, $f10
    add.s   $f18, $f18, $f0
    bc1fl   branch_0x800661bc
    mtc1    $at, $f6

    lui     $at, %hi(FLOAT_1_875)
    mtc1    $at, $f9
    lui     $at, %hi(FLOAT_0_5)
    mtc1    $at, $f4
    mtc1    $zero, $f8
    mul.s   $f6, $f2, $f4
    cvt.d.s $f10, $f6
    sub.d   $f4, $f8, $f10
    b       branch_0x800661d8
    cvt.s.d $f0, $f4

# 0x800661b8
    mtc1    $at, $f6
branch_0x800661bc:
    lui     $at, %hi(FLOAT_1_875)
    mtc1    $at, $f5
    mul.s   $f8, $f2, $f6
    mtc1    $zero, $f4
    cvt.d.s $f10, $f8
    add.d   $f6, $f10, $f4
    cvt.s.d $f0, $f6
branch_0x800661d8:
    lw      $v0, GameStruct_1598($s0)
    mul.s   $f18, $f18, $f0
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x800661f0
    addiu   $at, $zero, 0x1
    bne     $v0, $at, branch_0x8006620c
branch_0x800661f0:
    lui     $at, %hi(Unknown_0x800e95e0)
    lwc1    $f10, %lo(Unknown_0x800e95e0)($at)
    lwc1    $f8, GameStruct_15ec($s0)
    mul.s   $f4, $f10, $f18
    add.s   $f6, $f8, $f4
    b       branch_0x80066218
    swc1    $f6, GameStruct_15ec($s0)

branch_0x8006620c:
    lwc1    $f10, GameStruct_15ec($s0)
    add.s   $f8, $f10, $f18
    swc1    $f8, GameStruct_15ec($s0)
branch_0x80066218:
    lhu     $t9, GameStruct_16ce($s0)
branch_0x8006621c:
    beqz    $t9, branch_0x8006624c
    nop

    mtc1    $zero, $f4
    lwc1    $f6, GameStruct_c40($s0)
    addiu   $t0, $zero, 0x1
    c.eq.s  $f4, $f6
    nop
    bc1tl   branch_0x8006624c
    sh      $zero, GameStruct_1602($s0)
    b       branch_0x8006624c
    sh      $t0, GameStruct_1602($s0)

# 0x80066248
    sh      $zero, GameStruct_1602($s0)
branch_0x8006624c:
    jal     Function_0x8005ddc4_DriverInput
    lw      $a0, 0x50($sp)
    lw      $t1, GameStruct_Driver2($s0)
    addiu   $a1, $zero, 0x2
    beq     $a1, $t1, branch_0x80066270
    lui     $t2, %hi(Unknown_0x801ce3ac)
    lw      $t2, %lo(Unknown_0x801ce3ac)($t2)
    bnel    $a1, $t2, branch_0x80066280
    lw      $v0, GameStruct_c54($s0)

branch_0x80066270:
    jal     Function_0x8006098c
    lw      $a0, 0x50($sp)
    addiu   $a1, $zero, 0x2
    lw      $v0, GameStruct_c54($s0)
branch_0x80066280:
    lhu     $t3, GameStruct_c86($s0)
    addiu   $at, $zero, 0x17
    beq     $v0, $at, branch_0x8006629c
    sh      $t3, GameStruct_c84($s0)
    addiu   $at, $zero, 0x5
    bnel    $v0, $at, branch_0x800662dc
    sh      $zero, GameStruct_c86($s0)
branch_0x8006629c:
    lwc1    $f12, GameStruct_6b4($s0)
    jal     Function_0x8004d2ac
    lwc1    $f14, GameStruct_6bc($s0)
    lwc1    $f10, GameStruct_6b8($s0)
    addiu   $t4, $zero, 0x1
    addiu   $a1, $zero, 0x2
    c.lt.s  $f10, $f0
    nop
    bc1fl   branch_0x800662d0
    sh      $zero, GameStruct_c86($s0)
    b       branch_0x800662dc
    sh      $t4, GameStruct_c86($s0)

# 0x800662cc
    sh      $zero, GameStruct_c86($s0)
branch_0x800662d0:
    b       branch_0x800662dc
    addiu   $a1, $zero, 0x2

# 0x800662d8
    sh      $zero, GameStruct_c86($s0)
branch_0x800662dc:
    lh      $v0, GameStruct_1606($s0)
    blez    $v0, branch_0x800663ac
    addiu   $t5, $v0, -1

    sh      $t5, GameStruct_1606($s0)
    lh      $v0, GameStruct_1606($s0)
    bnez    $v0, branch_0x800663ac
    nop

    lw      $v0, GameStruct_c54($s0)
    addiu   $v1, $zero, 0x7
    addiu   $at, $zero, 0x17
    bne     $v1, $v0, branch_0x80066318
    nop

    lw      $t6, GameStruct_157c($s0)
    beqzl   $t6, branch_0x8006632c
    addiu   $t8, $zero, 0x8
branch_0x80066318:
    beql    $v0, $at, branch_0x8006632c
    addiu   $t8, $zero, 0x8

    lhu     $t7, GameStruct_1608($s0)
    beqz    $t7, branch_0x80066334
    addiu   $t8, $zero, 0x8

branch_0x8006632c:
    b       branch_0x8006639c
    sh      $t8, GameStruct_1604($s0)

branch_0x80066334:
    bnel    $v1, $v0, branch_0x8006634c
    addiu   $at, $zero, 0x18

    lw      $t9, GameStruct_157c($s0)
    addiu   $at, $zero, 0x1
    beq     $t9, $at, branch_0x80066360
    addiu   $at, $zero, 0x18

branch_0x8006634c:
    beq     $v0, $at, branch_0x80066360
    nop

    lhu     $t0, GameStruct_16e0($s0)
    beqzl   $t0, branch_0x8006636c
    lwc1    $f8, GameStruct_15ec($s0)

branch_0x80066360:
    b       branch_0x8006639c
    sh      $v1, GameStruct_1604($s0)

# 0x80066368
    lwc1    $f8, GameStruct_15ec($s0)
branch_0x8006636c:
    lwc1    $f4, GameStruct_7c($s0)
    addiu   $t1, $zero, 0x6
    sh      $t1, GameStruct_1604($s0)
    mul.s   $f6, $f8, $f4
    lui     $t3, %hi(Unknown_0x800d465c)
    lw      $t2, 0x50($sp)
    swc1    $f6, GameStruct_15ec($s0)
    lw      $t3, %lo(Unknown_0x800d465c)($t3)
    bne     $t2, $t3, branch_0x8006639c
    nop

    jal     Function_0x800c3354
    nop
branch_0x8006639c:
    jal     Function_0x80051e60
    lw      $a0, 0x50($sp)
    b       branch_0x800664e0
    addiu   $a1, $zero, 0x2

branch_0x800663ac:
    bgez    $v0, branch_0x80066408
    addiu   $v1, $zero, 0x9

    lhu     $t4, GameStruct_c7c($s0)
    addiu   $t6, $zero, 0x5
    bnezl   $t4, branch_0x80066408
    sh      $t6, GameStruct_1606($s0)

    mtc1    $zero, $f10
    lwc1    $f8, GameStruct_c4c($s0)
    c.eq.s  $f10, $f8
    nop
    bc1fl   branch_0x800663f8
    lw      $t5, GameStruct_16dc($s0)

    mtc1    $zero, $f4
    lwc1    $f6, GameStruct_c48($s0)
    c.eq.s  $f4, $f6
    nop
    bc1tl   branch_0x8006640c
    lw      $v0, GameStruct_c54($s0)

    lw      $t5, GameStruct_16dc($s0)
branch_0x800663f8:
    slti    $at, $t5, 0x6
    bnezl   $at, branch_0x8006640c
    lw      $v0, GameStruct_c54($s0)

    sh      $t6, GameStruct_1606($s0)
branch_0x80066408:
    lw      $v0, GameStruct_c54($s0)
branch_0x8006640c:
    addiu   $at, $zero, 0x8
    addiu   $t7, $zero, 0x1
    bne     $v0, $at, branch_0x80066424
    nop

    b       branch_0x800664e0
    sh      $t7, GameStruct_1604($s0)

branch_0x80066424:
    bne     $v1, $v0, branch_0x80066434
    addiu   $at, $zero, 0x11

    b       branch_0x800664e0
    sh      $a1, GameStruct_1604($s0)

branch_0x80066434:
    bnel    $v0, $at, branch_0x80066478
    lw      $v0, GameStruct_1598($s0)

    lw      $v0, GameStruct_c58($s0)
    addiu   $at, $zero, 0x3c
    addiu   $t8, $zero, 0xa
    bnel    $v0, $at, branch_0x8006645c
    addiu   $at, $zero, 0x25

    b       branch_0x800664e0
    sh      $t8, GameStruct_1604($s0)

# 0x80066458
    addiu   $at, $zero, 0x25
branch_0x8006645c:
    bne     $v0, $at, branch_0x8006646c
    nop

    b       branch_0x800664e0
    sh      $zero, GameStruct_1604($s0)

branch_0x8006646c:
    b       branch_0x800664e0
    sh      $v1, GameStruct_1604($s0)

# 0x80066474
    lw      $v0, GameStruct_1598($s0)
branch_0x80066478:
    addiu   $t9, $zero, 0x3
    addiu   $at, $zero, 0x1
    bne     $a1, $v0, branch_0x80066490
    nop

    b       branch_0x800664e0
    sh      $t9, GameStruct_1604($s0)

branch_0x80066490:
    bne     $v0, $at, branch_0x800664a0
    addiu   $t0, $zero, 0x4

    b       branch_0x800664e0
    sh      $t0, GameStruct_1604($s0)

branch_0x800664a0:
    addiu   $at, $zero, 0x4
    bne     $v0, $at, branch_0x800664b4
    addiu   $t1, $zero, 0x5

    b       branch_0x800664e0
    sh      $t1, GameStruct_1604($s0)

branch_0x800664b4:
    addiu   $at, $zero, 0x3
    bnel    $v0, $at, branch_0x800664e0
    sh      $zero, GameStruct_1604($s0)

    lw      $t2, GameStruct_c78($s0)
    addiu   $at, $zero, 0xc
    addiu   $t3, $zero, 0xb
    bnel    $t2, $at, branch_0x800664e0
    sh      $zero, GameStruct_1604($s0)

    b       branch_0x800664e0
    sh      $t3, GameStruct_1604($s0)

# 0x800664dc
    sh      $zero, GameStruct_1604($s0)
branch_0x800664e0:
    lw      $v0, GameStruct_c54($s0)
    addiu   $at, $zero, 0x17
    bnel    $v0, $at, branch_0x800664fc
    addiu   $at, $zero, 0x18

    b       branch_0x8006653c
    sw      $a1, GameStruct_15c0($s0)

# 0x800664f8
    addiu   $at, $zero, 0x18
branch_0x800664fc:
    bne     $v0, $at, branch_0x8006650c
    addiu   $t4, $zero, 0x1

    b       branch_0x8006653c
    sw      $t4, GameStruct_15c0($s0)

branch_0x8006650c:
    addiu   $at, $zero, 0x7
    bnel    $v0, $at, branch_0x8006653c
    sw      $zero, GameStruct_15c0($s0)

    lw      $t5, GameStruct_157c($s0)
    addiu   $t6, $zero, 0x1
    bnez    $t5, branch_0x80066530
    nop

    b       branch_0x8006653c
    sw      $a1, GameStruct_15c0($s0)

branch_0x80066530:
    b       branch_0x8006653c
    sw      $t6, GameStruct_15c0($s0)

# 0x80066538
    sw      $zero, GameStruct_15c0($s0)
branch_0x8006653c:
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x50
    jr      $ra
    nop



.globl Function_0x80066550_DrawDrivers
Function_0x80066550_DrawDrivers: # 0x80066550
    addiu   $sp, $sp, 0xffa0
    lui     $t6, %hi(Unknown_0x801ce398)
    lw      $t6, %lo(Unknown_0x801ce398)($t6)
    addiu   $at, $zero, 0x15
    sw      $ra, 0x2c($sp)
    sw      $s3, 0x28($sp)
    sw      $s2, 0x24($sp)
    sw      $s1, 0x20($sp)
    beq     $t6, $at, branch_0x80066668
    sw      $s0, 0x1c($sp)
    lui     $s0, %hi(Unknown_0x80198050)
    lw      $s0, %lo(Unknown_0x80198050)($s0)
    lui     $s3, %hi(Unknown_0x800d4660)
    addiu   $s3, $s3, %lo(Unknown_0x800d4660)
    addiu   $s0, $s0, -1
    bltz    $s0, branch_0x80066668
    lui     $s2, %hi(Unknown_0x800d465c)

    lui     $s1, %hi(Unknown_0x800d46e4)
    addiu   $s1, $s1, %lo(Unknown_0x800d46e4)
    addiu   $s2, $s2, %lo(Unknown_0x800d465c)
    lw      $t7, 0x0($s2)
branch_0x800665a4:
    bnel    $s0, $t7, branch_0x800665f4
    lw      $t3, 0x0($s3)
    lhu     $t8, 0x0($s1)
    lui     $t9, 0x801d
    bnez    $t8, branch_0x800665d0
    nop

    lw      $t9, -0x1c58($t9)
    addiu   $at, $zero, 0x2
    or      $a0, $s0, $zero
    bne     $t9, $at, branch_0x800665e0
    nop

branch_0x800665d0:
    jal     Function_0x80061650
    or      $a0, $s0, $zero
    b       branch_0x80066660
    addiu   $s0, $s0, -1

branch_0x800665e0:
    jal     Function_0x800616a8
    or      $a1, $zero, $zero
    b       branch_0x80066660
    addiu   $s0, $s0, -1

# 0x800665f0
    lw      $t3, 0x0($s3)
branch_0x800665f4:
    bne     $s0, $t3, branch_0x80066654
    nop
    lhu     $t4, 0x0($s1)
    lui     $t5, 0x801d
    bnez    $t4, branch_0x80066634
    nop
    lw      $t5, -0x1c58($t5)
    addiu   $at, $zero, 0x2
    lui     $t6, %hi(Unknown_0x800da8a8)
    beq     $t5, $at, branch_0x80066634
    nop
    lw      $t6, %lo(Unknown_0x800da8a8)($t6)
    addiu   $at, $zero, 0x1
    or      $a0, $s0, $zero
    bne     $t6, $at, branch_0x80066644
    nop
branch_0x80066634:
    jal     Function_0x80061650
    or      $a0, $s0, $zero
    b       branch_0x80066660
    addiu   $s0, $s0, -1

branch_0x80066644:
    jal     Function_0x800616a8
    addiu   $a1, $zero, 0x1
    b       branch_0x80066660
    addiu   $s0, $s0, -1

branch_0x80066654:
    jal     Function_0x80061650
    or      $a0, $s0, $zero
    addiu   $s0, $s0, -1
branch_0x80066660:
    bgezl   $s0, branch_0x800665a4
    lw      $t7, 0x0($s2)

branch_0x80066668:
    lui     $s0, %hi(Unknown_0x80198050)
    lw      $s0, %lo(Unknown_0x80198050)($s0)
    lui     $s2, %hi(Unknown_0x800d465c)
    lui     $s3, %hi(Unknown_0x800d4660)
    addiu   $s0, $s0, -1
    addiu   $s3, $s3, %lo(Unknown_0x800d4660)
    bltz    $s0, branch_0x8006669c
    addiu   $s2, $s2, %lo(Unknown_0x800d465c)
branch_0x80066688:
    jal     Function_0x80063c28
    or      $a0, $s0, $zero
    addiu   $s0, $s0, -1
    bgez    $s0, branch_0x80066688
    nop
branch_0x8006669c:
    lui     $t7, %hi(Unknown_0x801ce398)
    lw      $t7, %lo(Unknown_0x801ce398)($t7)
    addiu   $at, $zero, 0x15
    lui     $t8, 0x801d
    beq     $t7, $at, branch_0x80066718
    nop
    lw      $t8, -0x1c58($t8)
    lui     $s1, %hi(Unknown_0x800d46a4)
    beqz    $t8, branch_0x80066718
    nop
    lw      $s1, %lo(Unknown_0x800d46a4)($s1)
    beqz    $s1, branch_0x80066718

branch_0x800666cc:
    lui     $t9, %hi(Unknown_0x800d46e8)
    lhu     $t9, %lo(Unknown_0x800d46e8)($t9)
    beqz    $t9, branch_0x800666e4
    nop
    jal     Function_0x80061f8c
    nop
branch_0x800666e4:

    lui     $s0, %hi(Unknown_0x80198050)
    lw      $s0, %lo(Unknown_0x80198050)($s0)
    addiu   $s0, $s0, -1
    bltzl   $s0, branch_0x80066710
    addiu   $s1, $s1, -1
branch_0x800666f8:
    jal     Function_0x80064bac_SimulateDriver
    or      $a0, $s0, $zero
    addiu   $s0, $s0, -1
    bgez    $s0, branch_0x800666f8
    nop

    addiu   $s1, $s1, -1
branch_0x80066710:
    bnez    $s1, branch_0x800666cc
    nop

branch_0x80066718:
    lui     $s0, %hi(Unknown_0x80198050)
    lw      $s0, %lo(Unknown_0x80198050)($s0)
    addiu   $s0, $s0, -1
    bltz    $s0, branch_0x80066740
    nop
branch_0x8006672c:
    jal     Function_0x80065bb8_DrawDriver
    or      $a0, $s0, $zero
    addiu   $s0, $s0, -1
    bgez    $s0, branch_0x8006672c
    nop
branch_0x80066740:

    lui     $s0, %hi(Unknown_0x80192370)
    addiu   $s0, $s0, %lo(Unknown_0x80192370)
    or      $a1, $s0, $zero
    jal     Function_0x80052420
    lw      $a0, 0x0($s2)
    jal     Function_0x800c0f2c
    or      $a0, $s0, $zero

    lui     $t3, %hi(Unknown_0x800da8a8)
    lw      $t3, %lo(Unknown_0x800da8a8)($t3)
    addiu   $at, $zero, 0x2
    lui     $s0, %hi(Unknown_0x80192390)
    bne     $t3, $at, branch_0x80066794
    lui     $v0, %hi(Unknown_0x80198050)
    addiu   $s0, $s0, %lo(Unknown_0x80192390)
    or      $a1, $s0, $zero
    jal     Function_0x80052420
    lw      $a0, 0x0($s3)
    jal     Function_0x800c0f6c
    or      $a0, $s0, $zero

    b       branch_0x800669e8
    nop

branch_0x80066794:
    lw      $v0, %lo(Unknown_0x80198050)($v0)
    slti    $at, $v0, 0x2
    bnez    $at, branch_0x800669e8
    nop
    lw      $v1, 0x0($s2)
    addiu   $t1, $zero, GameStruct_1718
    lui     $t0, %hi(Unknown_0x801923f0_GameStruct)
    multu   $v1, $t1
    addiu   $t0, $t0, %lo(Unknown_0x801923f0_GameStruct)
    lui     $at, %hi(Unknown_0x800e95e4)
    addiu   $s0, $v0, -1
    lwc1    $f16, %lo(Unknown_0x800e95e4)($at)
    mflo    $t4
    addu    $a2, $t0, $t4
    lwc1    $f0, GameStruct_44($a2)
    bltz    $s0, branch_0x80066830
    lwc1    $f18, GameStruct_4c($a2)
branch_0x800667d8:
    beql    $s0, $v1, branch_0x80066828
    addiu   $s0, $s0, -1
    multu   $s0, $t1
    mflo    $t5
    addu    $v0, $t0, $t5
    lwc1    $f4, GameStruct_44($v0)
    lwc1    $f6, GameStruct_4c($v0)
    sub.s   $f2, $f0, $f4
    sub.s   $f14, $f18, $f6
    mul.s   $f8, $f2, $f2
    nop
    mul.s   $f10, $f14, $f14
    add.s   $f12, $f8, $f10
    c.lt.s $f12, $f16
    nop
    bc1f    branch_0x80066824
    nop
    mov.s   $f16, $f12
    sw      $s0, 0x54($sp)
branch_0x80066824:
    addiu   $s0, $s0, 0xffff
branch_0x80066828:
    bgez    $s0, branch_0x800667d8
    nop

branch_0x80066830:
    lui     $s0, %hi(Unknown_0x80192390)
    addiu   $s0, $s0, %lo(Unknown_0x80192390)
    or      $a1, $s0, $zero
    lw      $a0, 0x54($sp)
    jal     Function_0x80052420
    sw      $a2, 0x30($sp)
    jal     Function_0x800c0f6c
    or      $a0, $s0, $zero
    lw      $a2, 0x30($sp)
    lui     $s0, %hi(Unknown_0x801923b0)
    addiu   $s0, $s0, %lo(Unknown_0x801923b0)
    lwc1    $f4, GameStruct_44($a2)
    lw      $t6, 0x54($sp)
    addiu   $t1, $zero, GameStruct_1718
    swc1    $f4, 0x0($s0)
    lwc1    $f6, GameStruct_48($a2)
    lui     $at, %hi(Unknown_0x801923c0)
    multu   $t6, $t1
    swc1    $f6, 0x4($s0)
    lwc1    $f8, GameStruct_4c($a2)
    lui     $t0, %hi(Unknown_0x801923f0_GameStruct)
    addiu   $t0, $t0, %lo(Unknown_0x801923f0_GameStruct)
    swc1    $f8, 0x8($s0)
    lwc1    $f10, GameStruct_b78($a2)
    lui     $s1, %hi(Unknown_0x801923d0)
    addiu   $s1, $s1, %lo(Unknown_0x801923d0)
    swc1    $f10, %lo(Unknown_0x801923c0)($at)
    lwc1    $f4, GameStruct_b7c($a2)
    mflo    $t7
    addu    $v0, $t0, $t7
    swc1    $f4, %lo(Unknown_0x801923c4)($at)
    lwc1    $f6, GameStruct_b80($a2)
    lui     $at, %hi(Unknown_0x801923c8)
    lui     $a3, %hi(Unknown_0x801923e0)
    swc1    $f6, %lo(Unknown_0x801923c8)($at)
    lwc1    $f8, GameStruct_44($v0)
    lwc1    $f10, GameStruct_48($v0)
    lwc1    $f4, GameStruct_4c($v0)
    lwc1    $f6, GameStruct_b78($v0)
    addiu   $a3, $a3, %lo(Unknown_0x801923e0)
    swc1    $f8, 0x0($s1)
    swc1    $f10, 0x4($s1)
    lwc1    $f8, GameStruct_b7c($v0)
    lwc1    $f10, GameStruct_b80($v0)
    swc1    $f4, 0x8($s1)
    swc1    $f6, 0x0($a3)
    lwc1    $f6, 0x0($s0)
    lwc1    $f4, 0x0($s1)
    swc1    $f8, 0x4($a3)
    swc1    $f10, 0x8($a3)
    sub.s   $f2, $f4, $f6
    lwc1    $f10, 0x8($s0)
    lwc1    $f8, 0x8($s1)
    mul.s   $f4, $f2, $f2
    sub.s   $f14, $f8, $f10
    mtc1    $zero, $t0
    mul.s   $f6, $f14, $f14
    add.s   $f12, $f4, $f6
    c.eq.s $f8, $f12
    nop
    bc1fl   branch_0x80066934
    swc1    $f2, 0x4c($sp)
    b       branch_0x800669d0
    addiu   $v1, $zero, 0x40

# 0x80066930
    swc1    $f2, 0x4c($sp)
branch_0x80066934:
    jal     sqrtf
    swc1    $f14, 0x44($sp)
    lui     $t8, %hi(Unknown_0x802236f0)
    lw      $t8, %lo(Unknown_0x802236f0)($t8)
    lui     $t3, %hi(Unknown_0x80227a40)
    addiu   $t3, $t3, %lo(Unknown_0x80227a40)
    sll     $t9, $t8, 4
    addu    $t9, $t9, $t8
    sll     $t9, $t9, 2
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 2
    addu    $v0, $t9, $t3
    lwc1    $f2, 0x4c($sp)
    lwc1    $f10, 0xf4($v0)
    lwc1    $f14, 0x44($sp)
    lwc1    $f6, 0xf0($v0)
    mul.s   $f4, $f10, $f2
    lui     $at, %hi(FLOAT_1)
    mtc1    $at, $f12
    mul.s   $f8, $f6, $f14
    lui     $at, %hi(FLOAT_63_5)
    addiu   $t6, $zero, 0x7f
    lui     $a3, %hi(Unknown_0x801923e0)
    addiu   $a3, $a3, %lo(Unknown_0x801923e0)
    div.s   $f6, $f12, $f0
    sub.s   $f10, $f4, $f8
    mtc1    $at, $f8
    lui     $at, %hi(FLOAT_0_5)
    mul.s   $f16, $f6, $f10
    mtc1    $at, $f10
    add.s   $f4, $f16, $f12
    mul.s   $f6, $f4, $f8
    add.s   $f4, $f6, $f10
    trunc.w.s   $f8, $f4
    mfc1    $t5, $f8
    nop
    subu    $v1, $t6, $t5
    andi    $t7, $v1, 0xff
    or      $v1, $t7, $zero
branch_0x800669d0:
    lui     $a2, %hi(Unknown_0x801923c0)
    addiu   $a2, $a2, %lo(Unknown_0x801923c0)
    or      $a0, $s0, $zero
    or      $a1, $s1, $zero
    jal     Function_0x800bf924
    sw      $v1, 0x10($sp)
branch_0x800669e8:
    lui     $t8, 0x801d
    lw      $t8, -0x1c58($t8)
    lui     $t0, %hi(Unknown_0x801923f0_GameStruct)
    addiu   $t0, $t0, %lo(Unknown_0x801923f0_GameStruct)
    beqz    $t8, branch_0x80066d0c
    addiu   $t1, $zero, GameStruct_1718
    lui     $t9, %hi(Unknown_0x802236f0)
    lw      $t9, %lo(Unknown_0x802236f0)($t9)
    addiu   $t2, $zero, 0x10c
    lui     $a0, %hi(Unknown_0x801921f8)
    multu   $t9, $t2
    lw      $a0, %lo(Unknown_0x801921f8)($a0)
    lui     $s0, %hi(Unknown_0x80192180)
    addiu   $s0, $s0, %lo(Unknown_0x80192180)
    mtc1    $a0, $a2
    lui     $a1, %hi(Unknown_0x80227a40)
    lw      $t4, 0x0($s0)
    cvt.s.w $f0, $f6
    addiu   $a1, $a1, %lo(Unknown_0x80227a40)
    mtc1    $t4, $t2
    mflo    $t3
    addu    $v0, $a1, $t3
    lwc1    $f8, 0xf0($v0)
    cvt.s.w $f4, $f10
    lw      $t6, 0x4($s0)
    mul.s   $f6, $f0, $f8
    lui     $t5, %hi(Unknown_0x800da8a8)
    mtc1    $t6, $t0
    lw      $t5, %lo(Unknown_0x800da8a8)($t5)
    addiu   $at, $zero, 0x1
    add.s   $f10, $f4, $f6
    cvt.s.w $f4, $f8
    swc1    $f10, 0x40($sp)
    lwc1    $f6, 0xf4($v0)
    mul.s   $f10, $f0, $f6
    add.s   $f8, $f4, $f10
    bne     $t5, $at, branch_0x80066b94
    swc1    $f8, 0x38($sp)
    lw      $t7, 0x0($s2)
    multu   $t7, $t1
    mflo    $t8
    addu    $v1, $t0, $t8
    lwc1    $f0, 0x4c($v1)
    lwc1    $f2, 0x44($v1)
    mul.s   $f6, $f0, $f0
    nop
    mul.s   $f4, $f2, $f2
    jal     sqrtf
    add.s   $f12, $f6, $f4
    trunc.w.s   $f10, $f0
    lui     $at, %hi(Unknown_0x801c1d14)
    lwc1    $f2, %lo(Unknown_0x801c1d14)($at)
    lui     $s0, %hi(Unknown_0x800d4730)
    mfc1    $t3, $t2
    lui     $at, %hi(FLOAT_4000)
    lwc1    $f14, 0x38($sp)
    mtc1    $t3, $t0
    lui     $a3, %hi(Unknown_0x800d472c)
    addiu   $t7, $zero, 0x1
    cvt.s.w $f12, $f8
    c.le.s  $f12, $f2
    nop
    bc1fl   branch_0x80066af4
    mtc1    $at, $f6
    b       branch_0x80066b70
    lw      $s0, %lo(Unknown_0x800d4730)($s0)

# 0x80066af0
    mtc1    $at, $a2
branch_0x80066af4:
    lui     $at, %hi(Unknown_0x8019220c)
    lwc1    $f0, %lo(Unknown_0x8019220c)($at)
    add.s   $f16, $f2, $f6
    lui     $v0, %hi(Unknown_0x800d4730)
    addiu   $s0, $zero, 0x3c
    c.lt.s  $f0, $f16
    nop
    bc1fl   branch_0x80066b20
    c.lt.s  $f12, $f16
    mov.s   $f16, $f0
    c.lt.s  $f12, $f16
branch_0x80066b20:
    nop
    bc1f    branch_0x80066b70
    nop
    lw      $v0, %lo(Unknown_0x800d4730)($v0)
    addiu   $t4, $zero, 0x3c
    sub.s   $f4, $f12, $f2
    subu    $t6, $t4, $v0
    mtc1    $t6, $t2
    nop
    cvt.s.w $f8, $f10
    sub.s   $f10, $f16, $f2
    mul.s   $f6, $f4, $f8
    mtc1    $v0, $t0
    div.s   $f4, $f6, $f10
    cvt.s.w $f6, $f8
    add.s   $f10, $f4, $f6
    trunc.w.s   $f8, $f10
    mfc1    $s0, $t0
    b       branch_0x80066b74
    lwc1    $f12, 0x40($sp)
branch_0x80066b70:
    lwc1    $f12, 0x40($sp)
branch_0x80066b74:
    or      $a2, $s0, $zero
    lw      $a3, %lo(Unknown_0x800d472c)($a3)
    jal     Function_0x8004cfb8
    sw      $t7, 0x10($sp)
    lui     $t0, %hi(Unknown_0x801923f0_GameStruct)
    addiu   $t0, $t0, %lo(Unknown_0x801923f0_GameStruct)
    b       branch_0x80066d0c
    addiu   $t1, $zero, GameStruct_1718
branch_0x80066b94:
    lw      $t8, 0x0($s3)
    lwc1    $f4, 0x40($sp)
    lwc1    $f10, 0x38($sp)
    multu   $t8, $t1
    addiu   $s1, $zero, 0x1
    lui     $a2, %hi(Unknown_0x800d4730)
    lui     $a3, %hi(Unknown_0x800d472c)
    addiu   $t4, $zero, 0x1
    mflo    $t9
    addu    $v1, $t0, $t9
    lwc1    $f6, 0x44($v1)
    multu   $a0, $a0
    lwc1    $f8, 0x4c($v1)
    sub.s   $f2, $f4, $f6
    sub.s   $f14, $f10, $f8
    mul.s   $f8, $f2, $f2
    mflo    $t3
    mtc1    $t3, $a2
    nop
    cvt.s.w $f12, $f6
    mul.s   $f6, $f14, $f14
    add.s   $f8, $f8, $f6
    c.lt.s $f12, $f8
    nop
    bc1f    branch_0x80066c54
    nop
    mov.s   $f12, $f4
    mov.s   $f14, $f10
    lw      $a2, %lo(Unknown_0x800d4730)($a2)
    lw      $a3, %lo(Unknown_0x800d472c)($a3)
    sw      $t4, 0x10($sp)
    jal     Function_0x8004cfb8
    or      $s1, $zero, $zero
    lui     $t6, 0x8019
    lw      $t6, 0x21f8($t6)
    lui     $t0, %hi(Unknown_0x801923f0_GameStruct)
    lui     $a1, %hi(Unknown_0x80227a40)
    multu   $t6, $t6
    mtc1    $t6, $a2
    addiu   $a1, $a1, %lo(Unknown_0x80227a40)
    addiu   $t0, $t0, %lo(Unknown_0x801923f0_GameStruct)
    addiu   $t1, $zero, GameStruct_1718
    addiu   $t2, $zero, 0x10c
    cvt.s.w $f0, $f6
    mflo    $t5
    mtc1    $t5, $t0
    nop
    cvt.s.w $f12, $f8
branch_0x80066c54:
    lui     $t7, 0x8022
    lw      $t7, 0x36f4($t7)
    lw      $t9, 0x1c($s0)
    lw      $t3, 0x20($s0)
    multu   $t7, $t2
    mtc1    $t9, $a0
    lw      $t4, 0x0($s2)
    lui     $a2, %hi(Unknown_0x800d4730)
    cvt.s.w $f10, $f4
    lui     $a3, %hi(Unknown_0x800d472c)
    mflo    $t8
    addu    $v0, $a1, $t8
    lwc1    $f6, 0xf0($v0)
    multu   $t4, $t1
    mul.s   $f8, $f0, $f6
    mtc1    $t3, $a2
    add.s   $f4, $f10, $f8
    mflo    $t6
    addu    $v1, $t0, $t6
    cvt.s.w $f10, $f6
    swc1    $4, 0x40($sp)
    lwc1    $f8, 0xf4($v0)
    mul.s   $f6, $f0, $f8
    add.s   $f8, $f10, $f6
    lwc1    $f10, 0x44($v1)
    lwc1    $f6, 0x4c($v1)
    sub.s   $f2, $f4, $f10
    swc1    $8, 0x38($sp)
    sub.s   $f14, $f8, $f6
    mul.s   $f10, $f2, $f2
    nop
    mul.s   $f6, $f14, $f14
    add.s   $f10, $f10, $f6
    c.lt.s $f12, $f10
    nop
    bc1f    branch_0x80066d0c
    nop
    mov.s   $f12, $f4
    mov.s   $f14, $f8
    lw      $a2, %lo(Unknown_0x800d4730)($a2)
    lw      $a3, %lo(Unknown_0x800d472c)($a3)
    jal     Function_0x8004cfb8
    sw      $s1, 0x10($sp)
    lui     $t0, %hi(Unknown_0x801923f0_GameStruct)
    addiu   $t0, $t0, %lo(Unknown_0x801923f0_GameStruct)
    addiu   $t1, $zero, GameStruct_1718
branch_0x80066d0c:
    lui     $t5, 0x8022
    lw      $t5, 0x36f0($t5)
    addiu   $t2, $zero, 0x10c
    lw      $t8, 0x0($s2)
    multu   $t5, $t2
    addiu   $a0, $zero, 0x288
    lui     $a1, %hi(Unknown_0x80227a40)
    addiu   $a1, $a1, %lo(Unknown_0x80227a40)
    addiu   $at, $zero, 0x2
    mflo    $t7
    addu    $v0, $a1, $t7
    nop
    multu   $t8, $t1
    mflo    $t9
    addu    $v1, $t0, $t9
    lw      $t3, 0x1424($v1)
    multu   $t3, $a0
    mflo    $t4
    addu    $t6, $v1, $t4
    lwc1    $f6, 0xd84($t6)
    swc1    $6, 0x40($v0)
    lw      $t5, 0x0($s2)
    multu   $t5, $t1
    mflo    $t7
    addu    $v1, $t0, $t7
    lw      $t8, 0x1424($v1)
    multu   $t8, $a0
    mflo    $t9
    addu    $t3, $v1, $t9
    lwc1    $f10, 0xd88($t3)
    swc1    $10, 0x44($v0)
    lw      $t4, 0x0($s2)
    multu   $t4, $t1
    mflo    $t6
    addu    $v1, $t0, $t6
    lw      $t5, 0x1424($v1)
    multu   $t5, $a0
    mflo    $t7
    addu    $t8, $v1, $t7
    lwc1    $f4, 0xd8c($t8)
    swc1    $4, 0x48($v0)
    lw      $t9, 0x0($s2)
    multu   $t9, $t1
    mflo    $t3
    addu    $t4, $t0, $t3
    lwc1    $f8, 0x44($t4)
    swc1    $8, 0x4($v0)
    lw      $t6, 0x0($s2)
    multu   $t6, $t1
    mflo    $t5
    addu    $t7, $t0, $t5
    lwc1    $f6, 0x48($t7)
    swc1    $6, 0x8($v0)
    lw      $t8, 0x0($s2)
    multu   $t8, $t1
    mflo    $t9
    addu    $t3, $t0, $t9
    lwc1    $f10, 0x4c($t3)
    swc1    $10, 0xc($v0)
    lw      $t4, 0x0($s2)
    multu   $t4, $t1
    mflo    $t6
    addu    $t5, $t0, $t6
    lwc1    $f4, 0xb78($t5)
    swc1    $4, 0x10($v0)
    lw      $t7, 0x0($s2)
    multu   $t7, $t1
    mflo    $t8
    addu    $t9, $t0, $t8
    lwc1    $f8, 0xb7c($t9)
    swc1    $8, 0x14($v0)
    lw      $t3, 0x0($s2)
    multu   $t3, $t1
    mflo    $t4
    addu    $t6, $t0, $t4
    lwc1    $f6, 0xb80($t6)
    swc1    $6, 0x18($v0)
    lw      $t5, 0x0($s2)
    multu   $t5, $t1
    mflo    $t7
    addu    $t8, $t0, $t7
    lwc1    $f10, 0x6c($t8)
    swc1    $10, 0x1c($v0)
    lw      $t9, 0x0($s2)
    multu   $t9, $t1
    mflo    $t3
    addu    $t4, $t0, $t3
    lwc1    $f4, 0x70($t4)
    swc1    $4, 0x20($v0)
    lw      $t6, 0x0($s2)
    multu   $t6, $t1
    mflo    $t5
    addu    $t7, $t0, $t5
    lwc1    $f8, 0x74($t7)
    swc1    $8, 0x24($v0)
    lw      $t8, 0x0($s2)
    multu   $t8, $t1
    mflo    $t9
    addu    $t3, $t0, $t9
    lwc1    $f6, 0x78($t3)
    swc1    $6, 0x28($v0)
    lw      $t4, 0x0($s2)
    multu   $t4, $t1
    mflo    $t6
    addu    $t5, $t0, $t6
    lwc1    $f10, 0x7c($t5)
    swc1    $10, 0x2c($v0)
    lw      $t7, 0x0($s2)
    multu   $t7, $t1
    mflo    $t8
    addu    $t9, $t0, $t8
    lwc1    $f4, 0x80($t9)
    swc1    $4, 0x30($v0)
    lw      $t3, 0x0($s2)
    multu   $t3, $t1
    mflo    $t4
    addu    $t6, $t0, $t4
    lwc1    $f8, 0x84($t6)
    lui     $t6, %hi(Unknown_0x800da8a8)
    swc1    $8, 0x34($v0)
    lw      $t5, 0x0($s2)
    multu   $t5, $t1
    lui     $t5, 0x8022
    mflo    $t7
    addu    $t8, $t0, $t7
    lwc1    $f6, 0x88($t8)
    swc1    $6, 0x38($v0)
    lw      $t9, 0x0($s2)
    multu   $t9, $t1
    mflo    $t3
    addu    $t4, $t0, $t3
    lwc1    $f10, 0x8c($t4)
    swc1    $10, 0x3c($v0)
    lw      $t6, %lo(Unknown_0x800da8a8)($t6)
    bnel    $t6, $at, branch_0x80067124
    lw      $ra, 0x2c($sp)
    lw      $t5, 0x36f4($t5)
    lw      $t8, 0x0($s3)
    multu   $t5, $t2
    mflo    $t7
    addu    $v0, $a1, $t7
    nop
    multu   $t8, $t1
    mflo    $t9
    addu    $v1, $t0, $t9
    lw      $t3, 0x1424($v1)
    multu   $t3, $a0
    mflo    $t4
    addu    $t6, $v1, $t4
    lwc1    $f4, 0xd84($t6)
    swc1    $4, 0x40($v0)
    lw      $t5, 0x0($s3)
    multu   $t5, $t1
    mflo    $t7
    addu    $v1, $t0, $t7
    lw      $t8, 0x1424($v1)
    multu   $t8, $a0
    mflo    $t9
    addu    $t3, $v1, $t9
    lwc1    $f8, 0xd88($t3)
    swc1    $8, 0x44($v0)
    lw      $t4, 0x0($s3)
    multu   $t4, $t1
    mflo    $t6
    addu    $v1, $t0, $t6
    lw      $t5, 0x1424($v1)
    multu   $t5, $a0
    mflo    $t7
    addu    $t8, $v1, $t7
    lwc1    $f6, 0xd8c($t8)
    swc1    $6, 0x48($v0)
    lw      $t9, 0x0($s3)
    multu   $t9, $t1
    mflo    $t3
    addu    $t4, $t0, $t3
    lwc1    $f10, 0x44($t4)
    swc1    $10, 0x4($v0)
    lw      $t6, 0x0($s3)
    multu   $t6, $t1
    mflo    $t5
    addu    $t7, $t0, $t5
    lwc1    $f4, 0x48($t7)
    swc1    $4, 0x8($v0)
    lw      $t8, 0x0($s3)
    multu   $t8, $t1
    mflo    $t9
    addu    $t3, $t0, $t9
    lwc1    $f8, 0x4c($t3)
    swc1    $8, 0xc($v0)
    lw      $t4, 0x0($s3)
    multu   $t4, $t1
    mflo    $t6
    addu    $t5, $t0, $t6
    lwc1    $f6, 0xb78($t5)
    swc1    $6, 0x10($v0)
    lw      $t7, 0x0($s3)
    multu   $t7, $t1
    mflo    $t8
    addu    $t9, $t0, $t8
    lwc1    $f10, 0xb7c($t9)
    swc1    $10, 0x14($v0)
    lw      $t3, 0x0($s3)
    multu   $t3, $t1
    mflo    $t4
    addu    $t6, $t0, $t4
    lwc1    $f4, 0xb80($t6)
    swc1    $4, 0x18($v0)
    lw      $t5, 0x0($s3)
    multu   $t5, $t1
    mflo    $t7
    addu    $t8, $t0, $t7
    lwc1    $f8, 0x6c($t8)
    swc1    $8, 0x1c($v0)
    lw      $t9, 0x0($s3)
    multu   $t9, $t1
    mflo    $t3
    addu    $t4, $t0, $t3
    lwc1    $f6, 0x70($t4)
    swc1    $6, 0x20($v0)
    lw      $t6, 0x0($s3)
    multu   $t6, $t1
    mflo    $t5
    addu    $t7, $t0, $t5
    lwc1    $f10, 0x74($t7)
    swc1    $10, 0x24($v0)
    lw      $t8, 0x0($s3)
    multu   $t8, $t1
    mflo    $t9
    addu    $t3, $t0, $t9
    lwc1    $f4, 0x78($t3)
    swc1    $4, 0x28($v0)
    lw      $t4, 0x0($s3)
    multu   $t4, $t1
    mflo    $t6
    addu    $t5, $t0, $t6
    lwc1    $f8, 0x7c($t5)
    swc1    $8, 0x2c($v0)
    lw      $t7, 0x0($s3)
    multu   $t7, $t1
    mflo    $t8
    addu    $t9, $t0, $t8
    lwc1    $f6, 0x80($t9)
    swc1    $6, 0x30($v0)
    lw      $t3, 0x0($s3)
    multu   $t3, $t1
    mflo    $t4
    addu    $t6, $t0, $t4
    lwc1    $f10, 0x84($t6)
    swc1    $10, 0x34($v0)
    lw      $t5, 0x0($s3)
    multu   $t5, $t1
    mflo    $t7
    addu    $t8, $t0, $t7
    lwc1    $f4, 0x88($t8)
    swc1    $4, 0x38($v0)
    lw      $t9, 0x0($s3)
    multu   $t9, $t1
    mflo    $t3
    addu    $t4, $t0, $t3
    lwc1    $f8, 0x8c($t4)
    swc1    $8, 0x3c($v0)
    lw      $ra, 0x2c($sp)
branch_0x80067124:
    lw      $s0, 0x1c($sp)
    lw      $s1, 0x20($sp)
    lw      $s2, 0x24($sp)
    lw      $s3, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x60

