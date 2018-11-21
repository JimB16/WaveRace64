
.globl Function_0x800501a4
Function_0x800501a4: # 0x800501a4
    addiu   $sp, $sp, -0x78
    lui     $a2, %hi(Unknown_0x801921f4)
    addiu   $a2, $a2, %lo(Unknown_0x801921f4)
    lw      $v0, 0x0($a2)
    sw      $s5, 0x34($sp)
    lui     $t6, %hi(Unknown_0x801607f8)
    addiu   $s5, $t6, %lo(Unknown_0x801607f8)
    sll     $t7, $v0, 3
    addu    $v1, $t7, $s5
    sw      $s3, 0x2c($sp)
    sltu    $at, $v1, $s5
    sw      $ra, 0x44($sp)
    sw      $fp, 0x40($sp)
    sw      $s7, 0x3c($sp)
    sw      $s6, 0x38($sp)
    sw      $s4, 0x30($sp)
    sw      $s2, 0x28($sp)
    sw      $s1, 0x24($sp)
    sw      $s0, 0x20($sp)
    sdc1    $f20, 0x18($sp)
    sw      $a1, 0x7c($sp)
    or      $a3, $a0, $zero
    bnez    $at, branch_0x80050260
    or      $s3, $a1, $zero
    sll     $t8, $a0, 3
    subu    $t8, $t8, $a0
    lui     $t9, %hi(Unknown_0x80192180)
    addiu   $t9, $t9, %lo(Unknown_0x80192180)
    sll     $t8, $t8, 2
    lui     $a1, %hi(Unknown_0x801921b8_GeneralWaterLevel)
    addiu   $a1, $a1, %lo(Unknown_0x801921b8_GeneralWaterLevel)
    addu    $fp, $t8, $t9
branch_0x80050224:
    lw      $t1, 0x0($fp)
    lh      $t2, 0x4($s5)
    addiu   $s5, $s5, 0x8
    sltu    $at, $v1, $s5
    addu    $t3, $t1, $t2
    sh      $t3, 0x0($s3)
    lw      $t4, 0x0($a1)
    addiu   $s3, $s3, 0x10
    sh      $t4, -0xe($s3)
    lw      $t7, 0x4($fp)
    lh      $t5, -0x2($s5)
    addu    $t6, $t5, $t7
    beqz    $at, branch_0x80050224
    sh      $t6, -0xc($s3)
    lw      $v0, 0x0($a2)
branch_0x80050260:
    sll     $t9, $a3, 3
    subu    $t9, $t9, $a3
    addiu   $t8, $zero, 0x1
    lui     $t1, %hi(Unknown_0x80192180)
    lui     $a1, %hi(Unknown_0x801921b8_GeneralWaterLevel)
    addiu   $t1, $t1, %lo(Unknown_0x80192180)
    subu    $a0, $t8, $v0
    sll     $t9, $t9, 2
    addiu   $a1, $a1, %lo(Unknown_0x801921b8_GeneralWaterLevel)
    bgez    $a0, branch_0x8005047c
    addu    $fp, $t9, $t1
    lui     $at, %hi(0x44780000)
    mtc1    $at, $s4
    nop
branch_0x80050298:
    lw      $t2, 0x0($fp)
    lh      $t3, 0x4($s5)
    addiu   $s5, $s5, 0x8
    lui     $s1, %hi(Unknown_0x80162180)
    addu    $t4, $t2, $t3
    sh      $t4, 0x0($s3)
    lw      $t5, 0x0($a1)
    addiu   $s3, $s3, 0x10
    addiu   $s1, $s1, %lo(Unknown_0x80162180)
    sh      $t5, -0xe($s3)
    lw      $t6, 0x4($fp)
    lh      $t7, -0x2($s5)
    addu    $t8, $t7, $t6
    sh      $t8, -0xc($s3)
    lw      $v0, 0x0($a2)
    sll     $t2, $v0, 1
    addu    $t3, $t2, $a0
    addiu   $t4, $t3, -2
    sll     $t5, $t4, 3
    sll     $t9, $v0, 1
    addu    $v1, $t9, $a0
    addu    $s7, $s5, $t5
    addiu   $v1, $v1, 0x1
    sltu    $at, $s7, $s5
    bnez    $at, branch_0x80050444
    sll     $t1, $v1, 3
    subu    $s6, $s5, $t1
    addu    $s4, $s5, $t1
    sw      $a0, 0x54($sp)
branch_0x8005030c:
    lw      $t7, 0x0($s6)
    lw      $t9, 0x0($s4)
    lw      $t5, 0x8($s5)
    addu    $t6, $s1, $t7
    addu    $t1, $s1, $t9
    lh      $v1, 0x0($t6)
    lh      $s0, 0x0($t1)
    addu    $t7, $s1, $t5
    lh      $t6, 0x0($t7)
    sra     $t8, $v1, 7
    sra     $t2, $s0, 7
    addu    $t3, $t8, $t2
    or      $v1, $t8, $zero
    sra     $t4, $t3, 1
    sra     $t8, $t6, 7
    subu    $s2, $t4, $t8
    sll     $t9, $s2, 6
    multu   $t9, $t9
    subu    $s0, $v1, $t2
    sll     $t1, $s0, 3
    subu    $t1, $t1, $s0
    sll     $t1, $t1, 3
    subu    $t1, $t1, $s0
    lui     $at, %hi(0xc00000)
    or      $s2, $t9, $zero
    or      $s0, $t1, $zero
    mflo    $t2
    nop
    nop
    multu   $t1, $t1
    mflo    $t3
    addu    $t5, $t2, $t3
    addu    $t7, $t5, $at
    mtc1    $t7, $a0
    jal     sqrtf
    cvt.s.w $f12, $f4
    div.s   $f2, $f20, $f0
    mtc1    $s2, $a2
    mtc1    $s0, $s2
    lui     $a1, %hi(Unknown_0x801921b8_GeneralWaterLevel)
    cvt.s.w $f8, $f6
    addiu   $a1, $a1, %lo(Unknown_0x801921b8_GeneralWaterLevel)
    addiu   $s5, $s5, 0x8
    sltu    $at, $s7, $s5
    addiu   $s3, $s3, 0x10
    addiu   $s6, $s6, 0x8
    addiu   $s4, $s4, 0x8
    cvt.s.w $f4, $f18
    mul.s   $f10, $f8, $f2
    nop
    mul.s   $f6, $f4, $f2
    trunc.w.s   $f16, $f10
    trunc.w.s   $f8, $f6
    mfc1    $t4, $s0
    mfc1    $t1, $t0
    addiu   $t8, $t4, 0x400
    sh      $t8, -0x8($s3)
    addiu   $t2, $t1, 0x400
    sh      $t2, -0x6($s3)
    lw      $t3, -0x8($s5)
    lw      $t4, 0x0($a1)
    addu    $t5, $s1, $t3
    lh      $t7, 0x0($t5)
    sra     $t6, $t7, 8
    addu    $t8, $t6, $t4
    sh      $t8, -0xe($s3)
    lh      $t1, -0x4($s5)
    lw      $t9, 0x0($fp)
    addu    $t2, $t9, $t1
    sh      $t2, -0x10($s3)
    lw      $t5, 0x4($fp)
    lh      $t3, -0x2($s5)
    addu    $t7, $t3, $t5
    beqz    $at, branch_0x8005030c
    sh      $t7, -0xc($s3)
    lui     $a2, %hi(Unknown_0x801921f4)
    addiu   $a2, $a2, %lo(Unknown_0x801921f4)
    lw      $a0, 0x54($sp)
branch_0x80050444:
    lw      $t6, 0x0($fp)
    lh      $t4, 0x4($s5)
    addiu   $a0, $a0, 0x1
    addiu   $s3, $s3, 0x10
    addu    $t8, $t6, $t4
    sh      $t8, -0x10($s3)
    lw      $t9, 0x0($a1)
    addiu   $s5, $s5, 0x8
    sh      $t9, -0xe($s3)
    lw      $t2, 0x4($fp)
    lh      $t1, -0x2($s5)
    addu    $t3, $t1, $t2
    bltz    $a0, branch_0x80050298
    sh      $t3, -0xc($s3)
branch_0x8005047c:
    lw      $t5, 0x0($fp)
    lh      $t7, 0x4($s5)
    lui     $at, 0x4478
    addiu   $s5, $s5, 0x8
    addu    $t6, $t5, $t7
    sh      $t6, 0x0($s3)
    lw      $t4, 0x0($a1)
    mtc1    $at, $s4
    lui     $s1, %hi(Unknown_0x80162180)
    sh      $t4, 0x2($s3)
    lw      $t9, 0x4($fp)
    lh      $t8, -0x2($s5)
    addiu   $s3, $s3, 0x10
    addiu   $s1, $s1, %lo(Unknown_0x80162180)
    addu    $t1, $t8, $t9
    sh      $t1, -0xc($s3)
    lw      $t2, 0x0($a2)
    sll     $t3, $t2, 1
    addiu   $t5, $t3, -2
    sll     $t7, $t5, 3
    addu    $s7, $s5, $t7
    sltu    $at, $s7, $s5
    bnez    $at, branch_0x80050624
branch_0x800504d8:
    lui     $v0, %hi(Unknown_0x801921f4)
    lw      $v0, %lo(Unknown_0x801921f4)($v0)
    lui     $at, 0xc0
    sll     $t6, $v0, 1
    addiu   $t4, $t6, 0x1
    sll     $t8, $t4, 3
    subu    $t9, $s5, $t8
    sll     $t5, $t6, 3
    lw      $t1, 0x0($t9)
    addu    $t7, $s5, $t5
    lw      $t6, 0x0($t7)
    addu    $t2, $s1, $t1
    lh      $v1, 0x0($t2)
    addu    $t4, $s1, $t6
    lh      $s0, 0x0($t4)
    lw      $t2, 0x8($s5)
    sra     $t3, $v1, 7
    sra     $t8, $s0, 7
    or      $v1, $t3, $zero
    addu    $t9, $t3, $t8
    addu    $t3, $s1, $t2
    lh      $t5, 0x0($t3)
    sra     $t1, $t9, 1
    subu    $s0, $v1, $t8
    sra     $t7, $t5, 7
    subu    $s2, $t1, $t7
    sll     $t6, $s2, 6
    multu   $t6, $t6
    sll     $t4, $s0, 3
    subu    $t4, $t4, $s0
    sll     $t4, $t4, 3
    subu    $t4, $t4, $s0
    or      $s2, $t6, $zero
    or      $s0, $t4, $zero
    mflo    $t8
    nop
    nop
    multu   $t4, $t4
    mflo    $t9
    addu    $t2, $t8, $t9
    addu    $t3, $t2, $at
    mtc1    $t3, $t2
    jal     sqrtf
    cvt.s.w $f12, $f10
    div.s   $f2, $f20, $f0
    mtc1    $s2, $s0
    mtc1    $s0, $t0
    lui     $a1, %hi(Unknown_0x801921b8_GeneralWaterLevel)
    cvt.s.w $f18, $f16
    addiu   $a1, $a1, %lo(Unknown_0x801921b8_GeneralWaterLevel)
    addiu   $s5, $s5, 0x8
    sltu    $at, $s7, $s5
    addiu   $s3, $s3, 0x10
    cvt.s.w $f10, $f8
    mul.s   $f4, $f18, $f2
    nop
    mul.s   $f16, $f10, $f2
    trunc.w.s   $f6, $f4
    trunc.w.s   $f18, $f16
    mfc1    $t1, $a2
    mfc1    $t4, $s2
    addiu   $t7, $t1, 0x400
    sh      $t7, -0x8($s3)
    addiu   $t8, $t4, 0x400
    sh      $t8, -0x6($s3)
    lw      $t9, -0x8($s5)
    lw      $t1, 0x0($a1)
    addu    $t2, $s1, $t9
    lh      $t3, 0x0($t2)
    sra     $t5, $t3, 8
    addu    $t7, $t5, $t1
    sh      $t7, -0xe($s3)
    lh      $t4, -0x4($s5)
    lw      $t6, 0x0($fp)
    addu    $t8, $t6, $t4
    sh      $t8, -0x10($s3)
    lw      $t2, 0x4($fp)
    lh      $t9, -0x2($s5)
    addu    $t3, $t9, $t2
    beqz    $at, branch_0x800504d8
    sh      $t3, -0xc($s3)
    lui     $a2, %hi(Unknown_0x801921f4)
    addiu   $a2, $a2, %lo(Unknown_0x801921f4)
branch_0x80050624:
    lw      $t5, 0x0($fp)
    lh      $t1, 0x4($s5)
    addiu   $t2, $zero, 0x1
    addiu   $s3, $s3, 0x10
    addu    $t7, $t5, $t1
    sh      $t7, -0x10($s3)
    lw      $t6, 0x0($a1)
    addiu   $s5, $s5, 0x8
    sh      $t6, -0xe($s3)
    lw      $t8, 0x4($fp)
    lh      $t4, -0x2($s5)
    addu    $t9, $t4, $t8
    sh      $t9, -0xc($s3)
    lw      $t3, 0x0($a2)
    sw      $t2, 0x54($sp)
    slti    $at, $t3, 0x2
    bnez    $at, branch_0x8005085c
    nop
branch_0x8005066c:
    lw      $t5, 0x0($fp)
    lh      $t1, 0x4($s5)
    addiu   $s5, $s5, 0x8
    lui     $s1, %hi(Unknown_0x80162180)
    addu    $t7, $t5, $t1
    sh      $t7, 0x0($s3)
    lw      $t6, 0x0($a1)
    addiu   $s3, $s3, 0x10
    addiu   $s1, $s1, %lo(Unknown_0x80162180)
    sh      $t6, -0xe($s3)
    lw      $t8, 0x4($fp)
    lh      $t4, -0x2($s5)
    addu    $t9, $t4, $t8
    sh      $t9, -0xc($s3)
    lw      $v0, 0x0($a2)
    lw      $t3, 0x54($sp)
    sll     $t1, $v0, 1
    subu    $t7, $t1, $t3
    addiu   $t6, $t7, 0xfffe
    sll     $t4, $t6, 3
    addu    $s7, $s5, $t4
    sll     $t2, $v0, 1
    sltu    $at, $s7, $s5
    subu    $v1, $t2, $t3
    bnez    $at, branch_0x80050814
    sll     $t5, $v1, 3
    subu    $s6, $s5, $t5
    addiu   $s6, $s6, 0xfff0
    addu    $s4, $s5, $t5
branch_0x800506e0:
    lw      $t8, 0x0($s6)
    lw      $t5, 0x0($s4)
    lw      $t4, 0x8($s5)
    addu    $t9, $s1, $t8
    addu    $t1, $s1, $t5
    lh      $v1, 0x0($t9)
    lh      $s0, 0x0($t1)
    addu    $t8, $s1, $t4
    lh      $t9, 0x0($t8)
    sra     $t2, $v1, 7
    sra     $t3, $s0, 7
    addu    $t7, $t2, $t3
    or      $v1, $t2, $zero
    sra     $t6, $t7, 1
    sra     $t2, $t9, 7
    subu    $s2, $t6, $t2
    sll     $t5, $s2, 6
    multu   $t5, $t5
    subu    $s0, $v1, $t3
    sll     $t1, $s0, 3
    subu    $t1, $t1, $s0
    sll     $t1, $t1, 3
    subu    $t1, $t1, $s0
    lui     $at, %hi(0xc00000)
    or      $s2, $t5, $zero
    or      $s0, $t1, $zero
    mflo    $t3
    nop
    nop
    multu   $t1, $t1
    mflo    $t7
    addu    $t4, $t3, $t7
    addu    $t8, $t4, $at
    mtc1    $t8, $a0
    jal     sqrtf
    cvt.s.w $f12, $f4
    div.s   $f2, $f20, $f0
    mtc1    $s2, $a2
    mtc1    $s0, $s2
    lui     $a1, %hi(Unknown_0x801921b8_GeneralWaterLevel)
    cvt.s.w $f8, $f6
    addiu   $a1, $a1, %lo(Unknown_0x801921b8_GeneralWaterLevel)
    addiu   $s5, $s5, 0x8
    sltu    $at, $s7, $s5
    addiu   $s3, $s3, 0x10
    addiu   $s4, $s4, 0x8
    addiu   $s6, $s6, 0x8
    cvt.s.w $f4, $f18
    mul.s   $f10, $f8, $f2
    nop
    mul.s   $f6, $f4, $f2
    trunc.w.s   $f16, $f10
    trunc.w.s   $f8, $f6
    mfc1    $t6, $s0
    mfc1    $t1, $t0
    addiu   $t2, $t6, 0x400
    sh      $t2, -0x8($s3)
    addiu   $t3, $t1, 0x400
    sh      $t3, -0x6($s3)
    lw      $t7, -0x8($s5)
    lw      $t6, 0x0($a1)
    addu    $t4, $s1, $t7
    lh      $t8, 0x0($t4)
    sra     $t9, $t8, 8
    addu    $t2, $t9, $t6
    sh      $t2, -0xe($s3)
    lh      $t1, -0x4($s5)
    lw      $t5, 0x0($fp)
    addu    $t3, $t5, $t1
    sh      $t3, -0x10($s3)
    lw      $t4, 0x4($fp)
    lh      $t7, -0x2($s5)
    addu    $t8, $t7, $t4
    beqz    $at, branch_0x800506e0
    sh      $t8, -0xc($s3)
    lui     $a2, %hi(Unknown_0x801921f4)
    addiu   $a2, $a2, %lo(Unknown_0x801921f4)
branch_0x80050814:
    lw      $t9, 0x0($fp)
    lh      $t6, 0x4($s5)
    addiu   $s3, $s3, 0x10
    addiu   $s5, $s5, 0x8
    addu    $t2, $t9, $t6
    sh      $t2, -0x10($s3)
    lw      $t5, 0x0($a1)
    sh      $t5, -0xe($s3)
    lw      $t3, 0x4($fp)
    lh      $t1, -0x2($s5)
    addu    $t7, $t1, $t3
    sh      $t7, -0xc($s3)
    lw      $t4, 0x54($sp)
    lw      $t9, 0x0($a2)
    addiu   $t8, $t4, 0x1
    slt     $at, $t8, $t9
    bnez    $at, branch_0x8005066c
    sw      $t8, 0x54($sp)
branch_0x8005085c:
    lui     $t6, %hi(Unknown_0x801921fc)
    lw      $t6, %lo(Unknown_0x801921fc)($t6)
    lui     $t1, %hi(Unknown_0x801607f8)
    addiu   $t1, $t1, %lo(Unknown_0x801607f8)
    sll     $t2, $t6, 3
    addiu   $t5, $t2, 0xfff8
    addu    $v1, $t5, $t1
    sltu    $at, $v1, $s5
    bnez    $at, branch_0x800508bc
    lui     $t0, %hi(Unknown_0x801921f8)
branch_0x80050884:
    lw      $t3, 0x0($fp)
    lh      $t7, 0x4($s5)
    addiu   $s5, $s5, 0x8
    sltu    $at, $v1, $s5
    addu    $t4, $t3, $t7
    sh      $t4, 0x0($s3)
    lw      $t8, 0x0($a1)
    addiu   $s3, $s3, 0x10
    sh      $t8, -0xe($s3)
    lw      $t6, 0x4($fp)
    lh      $t9, -0x2($s5)
    addu    $t2, $t9, $t6
    beqz    $at, branch_0x80050884
    sh      $t2, -0xc($s3)
branch_0x800508bc:
    lui     $s2, %hi(Unknown_0x800d44a0)
    addiu   $s2, $s2, %lo(Unknown_0x800d44a0)
    addiu   $t0, $t0, %lo(Unknown_0x801921f8)
    lw      $t1, 0x0($t0)
    lw      $t5, 0x0($s2)
    lui     $a0, %hi(Unknown_0x801921c4)
    mtc1    $t1, $s2
    mtc1    $t5, $t2
    lui     $s1, %hi(Unknown_0x801921c0)
    cvt.s.w $f4, $f18
    lui     $a2, %hi(Unknown_0x801921dc)
    addiu   $a2, $a2, %lo(Unknown_0x801921dc)
    addiu   $s1, $s1, %lo(Unknown_0x801921c0)
    addiu   $a0, $a0, %lo(Unknown_0x801921c4)
    cvt.s.w $f16, $f10
    lw      $a3, 0x7c($sp)
    div.s   $f20, $f16, $f4
branch_0x80050900:
    lw      $t3, 0x18($a0)
    lw      $t4, 0x0($s1)
    addiu   $a0, $a0, 0x4
    sll     $t7, $t3, 4
    lw      $t3, -0x4($a0)
    addu    $s3, $t7, $a3
    lh      $t9, 0x0($s3)
    lh      $t2, 0x4($s3)
    sll     $t8, $t4, 4
    addu    $v0, $a3, $t8
    lh      $v1, 0x0($v0)
    lh      $t5, 0x4($v0)
    sll     $t7, $t3, 4
    subu    $t6, $t9, $v1
    mtc1    $t6, $s2
    subu    $t1, $t2, $t5
    mtc1    $t1, $s0
    cvt.s.w $f18, $f18
    addu    $s3, $t7, $a3
    sltu    $at, $a0, $a2
    cvt.s.w $f16, $f16
    mul.s   $f18, $f20, $f18
    trunc.w.s   $f18, $f18
    mul.s   $f16, $f20, $f16
    mfc1    $t8, $s2
    nop
    addu    $t9, $v1, $t8
    trunc.w.s   $f16, $f16
    sh      $t9, 0x0($s3)
    lw      $t6, 0x0($s1)
    mfc1    $t7, $s0
    sll     $t2, $t6, 4
    addu    $t5, $a3, $t2
    lh      $t1, 0x4($t5)
    addu    $t4, $t1, $t7
    sh      $t4, 0x4($s3)
    lw      $t8, 0x0($a1)
    bnez    $at, branch_0x80050900
    sh      $t8, 0x2($s3)
    lui     $t9, %hi(Unknown_0x80192180)
    addiu   $t9, $t9, %lo(Unknown_0x80192180)
    beq     $fp, $t9, branch_0x800509c0
    lui     $v0, %hi(Unknown_0x80227a40)

    lui     $v0, %hi(Unknown_0x80227a40)
    addiu   $v0, $v0, %lo(Unknown_0x80227a40)
    lwc1    $f0, 0x1fc($v0)
    b       branch_0x800509cc
    lwc1    $f2, 0x200($v0)

branch_0x800509c0:
    addiu   $v0, $v0, %lo(Unknown_0x80227a40)
    lwc1    $f0, 0xf0($v0)
    lwc1    $f2, 0xf4($v0)
branch_0x800509cc:
    lw      $t6, 0x0($s2)
    lw      $t2, 0x0($t0)
    lui     $at, %hi(Unknown_0x800e9078)
    lwc1    $f10, %lo(Unknown_0x800e9078)($at)
    subu    $t5, $t6, $t2
    mtc1    $t5, $a2
    swc1    $f2, 0x4c($sp)
    cvt.s.w $f8, $f6
    mul.s   $f20, $f8, $f10
    nop
    mul.s   $f12, $f20, $f0
    jal     Function_0x80047b80
    nop
    lwc1    $f2, 0x4c($sp)
    or      $s0, $v0, $zero
    mul.s   $f12, $f20, $f2
    jal     Function_0x80047b80
    nop
    lui     $a0, %hi(Unknown_0x801921c4)
    lui     $v1, %hi(Unknown_0x801921dc)
    addiu   $v1, $v1, %lo(Unknown_0x801921dc)
    addiu   $a0, $a0, %lo(Unknown_0x801921c4)
    lw      $a2, 0x7c($sp)
branch_0x80050a28:
    lw      $t3, 0x0($a0)
    addiu   $a0, $a0, 0x4
    sltu    $at, $a0, $v1
    sll     $t1, $t3, 4
    addu    $s3, $t1, $a2
    lh      $t7, 0x0($s3)
    lh      $t8, 0x4($s3)
    addu    $t4, $t7, $s0
    addu    $t9, $t8, $v0
    sh      $t4, 0x0($s3)
    bnez    $at, branch_0x80050a28
    sh      $t9, 0x4($s3)
    lw      $v1, 0x4($s1)
    lw      $s0, 0x10($s1)
    lui     $at, %hi(0x3f000000)
    sll     $t2, $v1, 4
    sll     $t6, $s0, 4
    addu    $a0, $a2, $t6
    addu    $a1, $a2, $t2
    lh      $t3, 0x0($a1)
    lh      $t5, 0x0($a0)
    mtc1    $at, $zero
    lwc1    $f6, 0x14($fp)
    addu    $t1, $t5, $t3
    mtc1    $t1, $s2
    nop
    cvt.s.w $f16, $f18
    mul.s   $f4, $f16, $f0
    sub.s   $f8, $f4, $f6
    lwc1    $f4, 0x18($fp)
    swc1    $f8, 0x8($fp)
    lh      $t4, 0x4($a1)
    lh      $t7, 0x4($a0)
    addu    $t8, $t7, $t4
    mtc1    $t8, $t2
    nop
    cvt.s.w $f18, $f10
    mul.s   $f16, $f18, $f0
    sub.s   $f6, $f16, $f4
    swc1    $f6, 0xc($fp)
    lw      $v0, 0x0($s2)
    multu   $v0, $v0
    mflo    $t9
    mtc1    $t9, $t0
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x10($fp)
    lw      $ra, 0x44($sp)
    lw      $fp, 0x40($sp)
    lw      $s7, 0x3c($sp)
    lw      $s6, 0x38($sp)
    lw      $s5, 0x34($sp)
    lw      $s4, 0x30($sp)
    lw      $s3, 0x2c($sp)
    lw      $s2, 0x28($sp)
    lw      $s1, 0x24($sp)
    lw      $s0, 0x20($sp)
    ldc1    $20, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x78


.globl Function_0x80050b18
Function_0x80050b18: # 0x80050b18
    addiu   $sp, $sp, 0xff40
    sw      $ra, 0x3c($sp)
    sdc1    $28, 0x30($sp)
    sdc1    $26, 0x28($sp)
    sdc1    $24, 0x20($sp)
    sdc1    $22, 0x18($sp)
    sdc1    $20, 0x10($sp)
    sw      $a1, 0xc4($sp)
    sw      $a2, 0xc8($sp)
    lui     $at, 0x4434
    mtc1    $at, $a2
    lwc1    $f4, 0x88($a0)
    lui     $at, 0x4580
    mtc1    $at, $t2
    div.s   $f8, $f4, $f6
    sw      $a0, 0xc0($sp)
    mul.s   $f12, $f8, $f10
    jal     Function_0x80047b80
    nop
    lw      $a0, 0xc0($sp)
    lui     $v1, 0x8015
    andi    $t6, $v0, 0xfff
    addiu   $v1, $v1, 0x40b0
    sll     $t7, $t6, 2
    addu    $t8, $v1, $t7
    lwc1    $f4, 0x0($t8)
    lwc1    $f2, 0x9c($a0)
    addiu   $t9, $v0, 0x400
    andi    $t0, $t9, 0xfff
    mul.s   $f6, $f2, $f4
    sll     $t1, $t0, 2
    addu    $t2, $v1, $t1
    lwc1    $f8, 0x0($t2)
    lwc1    $f10, 0x68($a0)
    lwc1    $f22, 0x74($a0)
    lwc1    $f18, 0x6c($a0)
    lwc1    $f24, 0x78($a0)
    div.s   $f20, $f6, $f8
    swc1    $10, 0x54($sp)
    lwc1    $f6, 0x54($sp)
    lwc1    $f10, 0x64($a0)
    mul.s   $f4, $f22, $f18
    lui     $at, 0x43a0
    swc1    $10, 0x50($sp)
    mul.s   $f8, $f24, $f6
    lwc1    $f26, 0x70($a0)
    lui     $t3, %hi(Unknown_0x801921b8_GeneralWaterLevel)
    lui     $t4, %hi(Unknown_0x800d4730)
    lw      $t4, %lo(Unknown_0x800d4730)($t4)
    lw      $t3, %lo(Unknown_0x801921b8_GeneralWaterLevel)($t3)
    lui     $t6, 0x8019
    lw      $t6, 0x2208($t6)
    addu    $t5, $t3, $t4
    lui     $t7, %hi(Unknown_0x801921f8)
    sub.s   $f12, $f4, $f8
    lwc1    $f4, 0x50($sp)
    mul.s   $f8, $f24, $f4
    nop
    mul.s   $f10, $f26, $f18
    sub.s   $f14, $f8, $f10
    mul.s   $f8, $f26, $f6
    nop
    mul.s   $f10, $f22, $f4
    sub.s   $f16, $f8, $f10
    lwc1    $f8, 0x94($a0)
    mtc1    $at, $t2
    lui     $at, 0x4370
    swc1    $8, 0x48($sp)
    mul.s   $f8, $f20, $f10
    mtc1    $at, $t2
    swc1    $20, 0xb0($sp)
    lui     $at, 0x800f
    div.s   $f28, $f8, $f10
    lwc1    $f8, 0x48($sp)
    add.s   $f0, $f8, $f28
    swc1    $28, 0x64($sp)
    mul.s   $f10, $f0, $f12
    swc1    $10, 0x98($sp)
    mul.s   $f10, $f0, $f14
    swc1    $10, 0x94($sp)
    mul.s   $f10, $f0, $f16
    swc1    $10, 0x90($sp)
    lwc1    $f10, 0x64($sp)
    sub.s   $f0, $f8, $f10
    mul.s   $f8, $f0, $f12
    swc1    $8, 0xa4($sp)
    mul.s   $f10, $f0, $f14
    swc1    $10, 0xa0($sp)
    mul.s   $f8, $f0, $f16
    swc1    $8, 0x9c($sp)
    mul.s   $f10, $f2, $f4
    nop
    mul.s   $f8, $f2, $f6
    nop
    mul.s   $f4, $f2, $f18
    swc1    $10, 0x74($sp)
    mtc1    $t5, $t2
    swc1    $8, 0x70($sp)
    cvt.s.w $f6, $f10
    swc1    $4, 0x6c($sp)
    mtc1    $t6, $a0
    lwc1    $f8, 0x50($a0)
    cvt.s.w $f10, $f4
    sub.s   $f28, $f6, $f8
    mul.s   $f6, $f2, $f10
    lwc1    $f8, -0x6f84($at)
    lui     $at, 0x43a0
    mtc1    $at, $t2
    lui     $at, 0xc0a0
    mul.s   $f4, $f6, $f8
    lwc1    $f6, 0x98($a0)
    swc1    $6, 0x44($sp)
    lwc1    $f8, 0x44($sp)
    lwc1    $f6, 0x74($sp)
    div.s   $f20, $f4, $f10
    lwc1    $f4, 0xb0($sp)
    sub.s   $f0, $f8, $f4
    lwc1    $f4, 0x70($sp)
    mul.s   $f10, $f26, $f0
    nop
    mul.s   $f8, $f22, $f0
    add.s   $f12, $f10, $f6
    lwc1    $f6, 0x6c($sp)
    mul.s   $f10, $f24, $f0
    add.s   $f14, $f8, $f4
    lwc1    $f8, 0x94($sp)
    mtc1    $at, $a0
    add.s   $f16, $f10, $f6
    lwc1    $f10, 0x98($sp)
    add.s   $f2, $f14, $f8
    c.lt.s $f2, $f4
    nop
    bc1f    branch_0x80050d6c
    nop
    add.s   $f6, $f12, $f10
    lwc1    $f8, 0xf0($a0)
    lwc1    $f10, 0x90($sp)
    mul.s   $f4, $f6, $f8
    add.s   $f6, $f16, $f10
    lwc1    $f8, 0xf4($a0)
    mul.s   $f10, $f6, $f8
    div.s   $f8, $f28, $f2
    add.s   $f6, $f4, $f10
    mul.s   $f0, $f8, $f6
    c.lt.s $f0, $f20
    nop
    bc1fl   branch_0x80050d70
    lwc1    $f4, 0xa0($sp)
    mov.s   $f20, $f0
branch_0x80050d6c:
    lwc1    $f4, 0xa0($sp)
branch_0x80050d70:
    lui     $at, 0xc0a0
    mtc1    $at, $t2
    add.s   $f2, $f14, $f4
    lwc1    $f18, 0xf0($a0)
    lwc1    $f8, 0x9c($sp)
    c.lt.s $f2, $f10
    nop
    bc1fl   branch_0x80050dd0
    lwc1    $f4, 0x44($sp)
    add.s   $f6, $f16, $f8
    lwc1    $f4, 0xf4($a0)
    lwc1    $f8, 0xa4($sp)
    mul.s   $f10, $f6, $f4
    add.s   $f6, $f12, $f8
    mul.s   $f4, $f6, $f18
    div.s   $f6, $f28, $f2
    add.s   $f8, $f4, $f10
    mul.s   $f0, $f6, $f8
    c.lt.s $f0, $f20
    nop
    bc1fl   branch_0x80050dd0
    lwc1    $f4, 0x44($sp)
    mov.s   $f20, $f0
    lwc1    $f4, 0x44($sp)
branch_0x80050dd0:
    lwc1    $f10, 0xb0($sp)
    lwc1    $f8, 0x74($sp)
    lui     $at, 0xc0a0
    add.s   $f0, $f4, $f10
    lwc1    $f10, 0x70($sp)
    mul.s   $f6, $f26, $f0
    nop
    mul.s   $f4, $f22, $f0
    add.s   $f12, $f6, $f8
    mul.s   $f6, $f24, $f0
    lwc1    $f8, 0x6c($sp)
    add.s   $f14, $f4, $f10
    lwc1    $f4, 0x94($sp)
    mtc1    $at, $t2
    add.s   $f2, $f14, $f4
    add.s   $f16, $f6, $f8
    lwc1    $f6, 0x90($sp)
    c.lt.s $f2, $f10
    nop
    bc1f    branch_0x80050e5c
    nop
    add.s   $f8, $f16, $f6
    lwc1    $f4, 0xf4($a0)
    lwc1    $f6, 0x98($sp)
    mul.s   $f10, $f8, $f4
    add.s   $f8, $f12, $f6
    mul.s   $f4, $f8, $f18
    div.s   $f8, $f28, $f2
    add.s   $f6, $f4, $f10
    mul.s   $f0, $f8, $f6
    c.lt.s $f0, $f20
    nop
    bc1fl   branch_0x80050e60
    lwc1    $f4, 0xa0($sp)
    mov.s   $f20, $f0
branch_0x80050e5c:
    lwc1    $f4, 0xa0($sp)
branch_0x80050e60:
    lui     $at, 0xc0a0
    mtc1    $at, $t2
    add.s   $f2, $f14, $f4
    lwc1    $f8, 0x9c($sp)
    c.lt.s $f2, $f10
    nop
    bc1f    branch_0x80050eb8
    nop
    add.s   $f6, $f16, $f8
    lwc1    $f4, 0xf4($a0)
    lwc1    $f8, 0xa4($sp)
    mul.s   $f10, $f6, $f4
    add.s   $f6, $f12, $f8
    mul.s   $f4, $f6, $f18
    div.s   $f6, $f28, $f2
    add.s   $f8, $f4, $f10
    mul.s   $f0, $f6, $f8
    c.lt.s $f0, $f20
    nop
    bc1f    branch_0x80050eb8
    nop
    mov.s   $f20, $f0
branch_0x80050eb8:
    lw      $t7, %lo(Unknown_0x801921f8)($t7)
    lui     $at, 0x800f
    lwc1    $f6, -0x6f80($at)
    mtc1    $t7, $a0
    lui     $at, %hi(0x42000000)
    lw      $t8, 0xc4($sp)
    cvt.s.w $f10, $f4
    mul.s   $f8, $f10, $f6
    mtc1    $at, $t2
    lwc1    $f6, 0x4c($a0)
    add.s   $f4, $f8, $f20
    sub.s   $f0, $f4, $f10
    mul.s   $f8, $f0, $f18
    add.s   $f4, $f6, $f8
    swc1    $f4, 0x0($24)
    lwc1    $f6, 0xf4($a0)
    lwc1    $f10, 0x54($a0)
    lw      $t9, 0xc8($sp)
    mul.s   $f8, $f0, $f6
    add.s   $f4, $f10, $f8
    swc1    $f4, 0x0($25)
    lw      $ra, 0x3c($sp)
    ldc1    $f28, 0x30($sp)
    ldc1    $f26, 0x28($sp)
    ldc1    $f24, 0x20($sp)
    ldc1    $f22, 0x18($sp)
    ldc1    $f20, 0x10($sp)
    jr      $ra
    addiu   $sp, $sp, 0xc0


.globl Function_0x80050f2c_SimulateDrawWater
Function_0x80050f2c_SimulateDrawWater: # 0x80050f2c
    lui     $at, %hi(0x3f000000)
    mtc1    $at, $s2
    lui     $at, %hi(Unknown_0x800e9084)
    mtc1    $a2, $t4
    lwc1    $f4, %lo(Unknown_0x800e9084)($at)
    addiu   $sp, $sp, -0x50
    sw      $a1, 0x54($sp)
    mul.s   $f6, $f4, $f12
    lwc1    $f8, 0x54($sp)
    addiu   $t0, $zero, 0x6000
    sll     $t6, $a0, 3
    subu    $t6, $t6, $a0
    lui     $t7, %hi(Unknown_0x80192180)
    addiu   $t7, $t7, %lo(Unknown_0x80192180)
    add.s   $f10, $f6, $f8
    sll     $t6, $t6, 2
    addu    $t3, $t6, $t7
    lui     $a3, %hi(Unknown_0x801921fc)
    trunc.w.s   $f4, $f10
    lui     $t2, %hi(Unknown_0x80160190)
    addiu   $t2, $t2, %lo(Unknown_0x80160190)
    sw      $ra, 0x14($sp)
    mfc1    $t9, $a0
    nop
    div     $zero, $t9, $t0
    bnez    $t0, branch_0x80050f9c
    nop
    break   0x7
branch_0x80050f9c:

    addiu   $at, $zero, 0xffff
    bne     $t0, $at, branch_0x80050fb4
    lui     $at, %hi(0x80000000)
    bne     $t9, $at, branch_0x80050fb4
    nop
    break   0x6
branch_0x80050fb4:

    lui     $at, %hi(Unknown_0x800e9088)
    lwc1    $f6, %lo(Unknown_0x800e9088)($at)
    mfhi    $v0
    addiu   $t4, $v0, 0x20
    mul.s   $f8, $f6, $f12
    sra     $t6, $t4, 6
    or      $t4, $t6, $zero
    sll     $t7, $t4, 6
    trunc.w.s   $f10, $f8
    mtc1    $t7, $t0
    mfc1    $t8, $t2
    cvt.s.w $f10, $f8
    mtc1    $v0, $t0
    div     $zero, $t8, $t0
    mfhi    $a2
    addiu   $t5, $a2, 0x20
    sra     $t9, $t5, 6
    sll     $t6, $t9, 6
    mtc1    $t6, $a0
    mtc1    $a2, $a2
    bnez    $t0, branch_0x80051010
    nop
    break   0x7
branch_0x80051010:

    addiu   $at, $zero, 0xffff
    bne     $t0, $at, branch_0x80051028
    lui     $at, %hi(0x80000000)
    bne     $t8, $at, branch_0x80051028
    nop
    break   0x6
branch_0x80051028:

    cvt.s.w $f0, $f4
    or      $t5, $t9, $zero
    lui     $at, %hi(Unknown_0x800e908c)
    andi    $t0, $t4, 0x7f
    cvt.s.w $f2, $f6
    mul.s   $f4, $f18, $f0
    sub.s   $f6, $f10, $f4
    mul.s   $f4, $f18, $f2
    cvt.s.w $f10, $f8
    sub.s   $f8, $f10, $f4
    lwc1    $f10, 0x54($sp)
    sub.s   $f14, $f6, $f8
    add.s   $f4, $f14, $f10
    swc1    $f14, 0x14($11)
    trunc.w.s   $f6, $f4
    mfc1    $t9, $a2
    nop
    sw      $t9, 0x0($t3)
    lwc1    $f8, %lo(Unknown_0x800e908c)($at)
    lui     $at, %hi(Unknown_0x800e9090)
    lwc1    $f4, %lo(Unknown_0x800e9090)($at)
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f6, $f4, $f2
    sub.s   $f16, $f10, $f6
    add.s   $f8, $f16, $f12
    swc1    $f16, 0x18($11)
    trunc.w.s   $f4, $f8
    mfc1    $t7, $a0
    nop
    sw      $t7, 0x4($t3)
    lw      $a3, %lo(Unknown_0x801921fc)($a3)
    lui     $t7, %hi(Unknown_0x801607f8)
    addiu   $t7, $t7, %lo(Unknown_0x801607f8)
    sll     $t8, $a3, 1
    addu    $v1, $t2, $t8
    addiu   $v1, $v1, -2
    sll     $t9, $a3, 3
    addiu   $t6, $t9, -8
    sltu    $at, $v1, $t2
    bnez    $at, branch_0x80051160
    addu    $a1, $t6, $t7
    sra     $t8, $t4, 7
    sll     $t9, $t8, 7
    addu    $t1, $t5, $t9
    addiu   $t1, $t1, 0x600
    addiu   $at, $zero, 0x180
    div     $zero, $t1, $at
    mfhi    $t1
    addiu   $a3, $zero, 0x180
    addiu   $a2, $zero, 0xff80
branch_0x800510f4:
    lb      $t7, 0x0($v1)
    lb      $t8, 0x1($v1)
    addiu   $v1, $v1, -2
    addu    $v0, $t7, $t0
    and     $t9, $v0, $a2
    addu    $a0, $t8, $t1
    addu    $t6, $t9, $a0
    addiu   $t7, $t6, 0x600
    div     $zero, $t7, $a3
    bnez    $a3, branch_0x80051124
    nop
    break   0x7
branch_0x80051124:

    addiu   $at, $zero, -1
    bne     $a3, $at, branch_0x8005113c
    lui     $at, 0x8000
    bne     $t7, $at, branch_0x8005113c
    nop
    break   0x6
branch_0x8005113c:

    mfhi    $t8
    sll     $t9, $t8, 7
    andi    $t6, $v0, 0x7f
    addu    $t7, $t9, $t6
    sltu    $at, $v1, $t2
    sll     $t8, $t7, 2
    addiu   $a1, $a1, -8
    beqz    $at, branch_0x800510f4
    sw      $t8, 0x8($a1)

branch_0x80051160:
    lui     $t9, %hi(Unknown_0x801ce3a8)
    lw      $t9, %lo(Unknown_0x801ce3a8)($t9)
    beqz    $t9, branch_0x8005117c
    nop

    jal     Function_0x8004ea44
    sw      $t3, 0x1c($sp)
    lw      $t3, 0x1c($sp)

branch_0x8005117c:
    lui     $t6, %hi(Unknown_0x80192180)
    addiu   $t6, $t6, %lo(Unknown_0x80192180)
    bne     $t3, $t6, branch_0x800511b0
    addiu   $a0, $zero, 0x1

    lui     $a1, %hi(Unknown_0x80151618)
    lw      $a1, %lo(Unknown_0x80151618)($a1)
    lui     $at, %hi(Unknown_0x80151618_0x13d68)
    ori     $at, $at, %lo(Unknown_0x80151618_0x13d68)
    or      $a0, $zero, $zero
    jal     Function_0x800501a4
    addu    $a1, $a1, $at
    b       branch_0x800511cc
    lw      $ra, 0x14($sp)

branch_0x800511b0:
    lui     $a1, %hi(Unknown_0x80151618)
    lw      $a1, %lo(Unknown_0x80151618)($a1)
    lui     $at, %hi(Unknown_0x80151618_0x170d8)
    ori     $at, $at, %lo(Unknown_0x80151618_0x170d8)
    jal     Function_0x800501a4
    addu    $a1, $a1, $at
    lw      $ra, 0x14($sp)
branch_0x800511cc:
    addiu   $sp, $sp, 0x50
    jr      $ra
    nop


.globl Function_0x800511d8_ResetFrameBufferDrawWater
Function_0x800511d8_ResetFrameBufferDrawWater: # 0x800511d8
    lui     $t6, %hi(TrackNr_0x800d7ef0)
    lw      $t6, %lo(TrackNr_0x800d7ef0)($t6)
    addiu   $sp, $sp, -0x28

	# When Southern Island is selected change the water level in lap 2 and 3
    addiu   $at, $zero, Track_7
    bne     $t6, $at, branch_0x80051264_notTrack7
    sw      $ra, 0x14($sp)

    lui     $t7, %hi(Unknown_0x801ce3a8)
    lw      $t7, %lo(Unknown_0x801ce3a8)($t7)
    lui     $t8, %hi(Unknown_0x801ce398)
    beqz    $t7, branch_0x80051264_notTrack7
    nop
    lw      $t8, %lo(Unknown_0x801ce398)($t8)
    addiu   $a0, $zero, 0x1
    lui     $v0, %hi(Unknown_0x801c1d2c_CurLapNr)
    bne     $a0, $t8, branch_0x80051264_notTrack7
    nop

    lw      $v0, %lo(Unknown_0x801c1d2c_CurLapNr)($v0)
    lui     $v1, %hi(Unknown_0x801921b8_GeneralWaterLevel)
    addiu   $v1, $v1, %lo(Unknown_0x801921b8_GeneralWaterLevel)
    bne     $a0, $v0, branch_0x80051244_checkLap3 # change water level if in lap 2
    addiu   $at, $zero, 0x2
    lw      $v0, 0x0($v1)
    slti    $at, $v0, -99
    bnez    $at, branch_0x80051264_notTrack7
    addiu   $t9, $v0, -1
    #slti    $at, $v0, 50
    #beqz    $at, branch_0x80051264_notTrack7
    #addiu   $t9, $v0, 1
    b       branch_0x80051264_notTrack7
    sw      $t9, 0x0($v1)

branch_0x80051244_checkLap3: # change water level if in lap 3
    bne     $v0, $at, branch_0x80051264_notTrack7
    lui     $v1, %hi(Unknown_0x801921b8_GeneralWaterLevel)

    addiu   $v1, $v1, %lo(Unknown_0x801921b8_GeneralWaterLevel)
    lw      $v0, 0x0($v1)
    slti    $at, $v0, -149
    bnez    $at, branch_0x80051264_notTrack7
    addiu   $t0, $v0, -1
    #slti    $at, $v0, 150
    #beqz    $at, branch_0x80051264_notTrack7
    #addiu   $t0, $v0, 1

    sw      $t0, 0x0($v1)
branch_0x80051264_notTrack7:

    lui     $t1, %hi(Unknown_0x801ce3ac)
    lw      $t1, %lo(Unknown_0x801ce3ac)($t1)
    addiu   $a0, $zero, 0x1
    lui     $t2, %hi(Unknown_0x801ce398)
    bne     $a0, $t1, branch_0x80051464
    lui     $t5, %hi(Unknown_0x800da8a8)
    lw      $t2, %lo(Unknown_0x801ce398)($t2)
    addiu   $at, $zero, 0x6
    lui     $v1, %hi(Unknown_0x800d4544)
    beq     $t2, $at, branch_0x80051444
    lui     $a0, %hi(Unknown_0x801540b0)
    lui     $t3, %hi(Unknown_0x800d4548)
    lw      $v1, %lo(Unknown_0x800d4544)($v1)
    lw      $t3, %lo(Unknown_0x800d4548)($t3)
    addiu   $a0, $a0, %lo(Unknown_0x801540b0)
    lui     $at, %hi(Unknown_0x800e9098)
    addu    $v1, $v1, $t3
    addiu   $v1, $v1, 0x1000
    andi    $t4, $v1, 0xfff
    addiu   $t5, $t4, 0x400
    andi    $t6, $t5, 0xfff
    sll     $t7, $t6, 2
    addu    $t8, $a0, $t7
    lwc1    $f6, 0x0($t8)
    ldc1    $0, %lo(Unknown_0x800e9098)($at)
    andi    $t9, $t4, 0xfff
    cvt.d.s $f8, $f6
    lui     $at, %hi(Unknown_0x800d454c)
    mul.d   $f10, $f0, $f8
    sll     $t0, $t9, 2
    lwc1    $f12, %lo(Unknown_0x800d454c)($at)
    addu    $t1, $a0, $t0
    lwc1    $f6, 0x0($t1)
    cvt.d.s $f4, $f12
    lui     $at, %hi(Unknown_0x800d4550)
    cvt.d.s $f8, $f6
    add.d   $f16, $f4, $f10
    mul.d   $f4, $f0, $f8
    lwc1    $f14, %lo(Unknown_0x800d4550)($at)
    lui     $v0, %hi(Unknown_0x801921f8)
    lw      $v0, %lo(Unknown_0x801921f8)($v0)
    cvt.d.s $f18, $f14
    lui     $at, %hi(Unknown_0x800d4544)
    multu   $v0, $v0
    cvt.s.d $f12, $f16
    sw      $t4, %lo(Unknown_0x800d4544)($at)
    lui     $at, %hi(Unknown_0x800d454c)
    add.d   $f10, $f18, $f4
    mul.s   $f8, $f12, $f12
    swc1    $f12, %lo(Unknown_0x800d454c)($at)
    lui     $at, %hi(Unknown_0x800d4550)
    mflo    $t2
    cvt.s.d $f14, $f10
    mtc1    $t2, $s0
    mul.s   $f18, $f14, $f14
    swc1    $f14, %lo(Unknown_0x800d4550)($at)
    cvt.s.w $f6, $f16
    add.s   $f4, $f8, $f18
    c.lt.s  $f6, $f4
    nop
    bc1f    branch_0x8005142c
    nop

    jal     Function_0x80047df0
    nop
    lui     $t3, %hi(Unknown_0x801921f8)
    lw      $t3, %lo(Unknown_0x801921f8)($t3)
    andi    $v1, $v0, 0xfff
    addiu   $t4, $v1, 0x400
    mtc1    $t3, $t2
    lui     $a0, %hi(Unknown_0x801540b0)
    andi    $t5, $t4, 0xfff
    cvt.s.w $f0, $f10
    addiu   $a0, $a0, %lo(Unknown_0x801540b0)
    sll     $t6, $t5, 2
    addu    $t7, $a0, $t6
    lwc1    $f16, 0x0($t7)
    andi    $t8, $v1, 0xfff
    sll     $t9, $t8, 2
    mul.s   $f12, $f16, $f0
    addu    $t0, $a0, $t9
    lwc1    $f8, 0x0($t0)
    lui     $at, %hi(Unknown_0x800d4544)
    sw      $v1, %lo(Unknown_0x800d4544)($at)
    mul.s   $f14, $f8, $f0
    lui     $at, %hi(Unknown_0x800d454c)
    swc1    $f12, %lo(Unknown_0x800d454c)($at)
    lui     $at, %hi(Unknown_0x800d4550)
    jal     Function_0x80047df0
    swc1    $f14, %lo(Unknown_0x800d4550)($at)
    andi    $v1, $v0, 0xfff
    lui     $at, %hi(Unknown_0x800d4544)
    jal     Function_0x80047df0
    sw      $v1, %lo(Unknown_0x800d4544)($at)
    andi    $t1, $v0, 0x3fff
    mtc1    $t1, $s2
    lui     $at, %hi(0x4f800000)
    bgez    $t1, branch_0x800513f8
    cvt.s.w $f6, $f18
    mtc1    $at, $a0
    nop
    add.s   $f6, $f6, $f4
branch_0x800513f8:
    lui     $at, %hi(0x41600000)
    mtc1    $at, $t2
    lui     $at, %hi(Unknown_0x800e90a0)
    ldc1    $f18, %lo(Unknown_0x800e90a0)($at)
    mul.s   $f16, $f6, $f10
    lui     $at, %hi(Unknown_0x800d4548)
    cvt.d.s $f8, $f16
    div.d   $f4, $f8, $f18
    trunc.w.d   $f6, $f4
    mfc1    $t3, $a2
    nop
    addiu   $t4, $t3, 0xfff9
    sw      $t4, %lo(Unknown_0x800d4548)($at)
branch_0x8005142c:
    lui     $at, %hi(Unknown_0x800d454c)
    lwc1    $f12, %lo(Unknown_0x800d454c)($at)
    lui     $at, %hi(Unknown_0x800d4550)
    lwc1    $f14, %lo(Unknown_0x800d4550)($at)
    jal     Function_0x8004ef54
    addiu   $a2, $zero, 0xffce
branch_0x80051444:
    mtc1    $zero, $zero
    or      $a0, $zero, $zero
    mfc1    $a1, $zero
    mfc1    $a2, $zero
    jal     Function_0x80050f2c_SimulateDrawWater
    nop
    b       branch_0x800514bc
    lw      $ra, 0x14($sp)
branch_0x80051464:
    lw      $t5, %lo(Unknown_0x800da8a8)($t5)
    addiu   $at, $zero, 0x2
    lui     $a0, %hi(Unknown_0x80227b4c)
    bne     $t5, $at, branch_0x80051494
    addiu   $a0, $a0, %lo(Unknown_0x80227b4c)
    addiu   $a1, $sp, 0x20
    jal     Function_0x80050b18
    addiu   $a2, $sp, 0x1c
    addiu   $a0, $zero, 0x1
    lw      $a1, 0x20($sp)
    jal     Function_0x80050f2c_SimulateDrawWater
    lw      $a2, 0x1c($sp)
branch_0x80051494:
    lui     $a0, %hi(Unknown_0x80227a40)
    addiu   $a0, $a0, %lo(Unknown_0x80227a40)
    addiu   $a1, $sp, 0x20
    jal     Function_0x80050b18
    addiu   $a2, $sp, 0x1c
    or      $a0, $zero, $zero
    lw      $a1, 0x20($sp)
    jal     Function_0x80050f2c_SimulateDrawWater
    lw      $a2, 0x1c($sp)
    lw      $ra, 0x14($sp)
branch_0x800514bc:
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

