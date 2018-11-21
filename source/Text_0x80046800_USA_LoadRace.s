

.globl Function_0x8006e614
Function_0x8006e614: # 0x8006e614
    addiu   $sp, $sp, -0x5f0
    lui     $a1, %hi(Unknown_0x800da8ac)
    lw      $a1, %lo(Unknown_0x800da8ac)($a1)
    sw      $ra, 0x7c($sp)
    sw      $fp, 0x78($sp)
    sw      $s7, 0x74($sp)
    sw      $s6, 0x70($sp)
    sw      $s5, 0x6c($sp)
    sw      $s4, 0x68($sp)
    sw      $s3, 0x64($sp)
    sw      $s2, 0x60($sp)
    sw      $s1, 0x5c($sp)
    sw      $s0, 0x58($sp)
    sdc1    $f26, 0x50($sp)
    sdc1    $f24, 0x48($sp)
    sdc1    $f22, 0x40($sp)
    sdc1    $f20, 0x38($sp)
    sw      $a0, 0x5f0($sp)
    lw      $t7, 0x0($a0)
    lui     $s7, %hi(Unknown_0x801c09e0)
    bnez    $a1, branch_0x8006e6f0
    sw      $t7, 0x550($sp)

    lui     $t8, %hi(Unknown_0x802236f0)
    lw      $t8, %lo(Unknown_0x802236f0)($t8)
    lui     $v0, %hi(Unknown_0x800d465c)
    lw      $v0, %lo(Unknown_0x800d465c)($v0)
    sll     $t9, $t8, 4
    addu    $t9, $t9, $t8
    sll     $t9, $t9, 2
    lui     $t6, %hi(Unknown_0x80227a40)
    subu    $t9, $t9, $t8
    sll     $t7, $v0, 2
    sll     $t9, $t9, 2
    addiu   $t6, $t6, %lo(Unknown_0x80227a40)
    subu    $t7, $t7, $v0
    addu    $s6, $t9, $t6
    sll     $t7, $t7, 3
    subu    $t7, $t7, $v0
    sll     $t9, $v0, 3
    sll     $t7, $t7, 3
    subu    $t9, $t9, $v0
    sll     $t9, $t9, 4
    addu    $t7, $t7, $v0
    sll     $t7, $t7, 2
    subu    $t9, $t9, $v0
    lui     $t8, %hi(Unknown_0x801923f0_GameStruct)
    sll     $t9, $t9, 3
    lui     $s0, %hi(Unknown_0x801c2698_RaceStruct+RaceStruct_c)
    subu    $t7, $t7, $v0
    sll     $t7, $t7, 3
    addiu   $t8, $t8, %lo(Unknown_0x801923f0_GameStruct)
    addu    $s0, $s0, $t9
    addu    $v1, $t7, $t8
    b       branch_0x8006e770
    lw      $s0, %lo(Unknown_0x801c2698_RaceStruct+RaceStruct_c)($s0)

branch_0x8006e6f0:
    lui     $t6, %hi(Unknown_0x802236f4)
    lw      $t6, %lo(Unknown_0x802236f4)($t6)
    lui     $v0, %hi(Unknown_0x800d4660)
    lw      $v0, %lo(Unknown_0x800d4660)($v0)
    sll     $t7, $t6, 4
    addu    $t7, $t7, $t6
    sll     $t7, $t7, 2
    lui     $t8, %hi(Unknown_0x80227a40)
    subu    $t7, $t7, $t6
    sll     $t9, $v0, 2
    sll     $t7, $t7, 2
    addiu   $t8, $t8, %lo(Unknown_0x80227a40)
    subu    $t9, $t9, $v0
    addu    $s6, $t7, $t8
    sll     $t9, $t9, 3
    subu    $t9, $t9, $v0
    sll     $t7, $v0, 3
    sll     $t9, $t9, 3
    subu    $t7, $t7, $v0
    sll     $t7, $t7, 4
    addu    $t9, $t9, $v0
    sll     $t9, $t9, 2
    subu    $t7, $t7, $v0
    lui     $t6, %hi(Unknown_0x801923f0_GameStruct)
    sll     $t7, $t7, 3
    lui     $s0, %hi(Unknown_0x801c2698_RaceStruct+RaceStruct_c)
    subu    $t9, $t9, $v0
    sll     $t9, $t9, 3
    addiu   $t6, $t6, %lo(Unknown_0x801923f0_GameStruct)
    addu    $s0, $s0, $t7
    addu    $v1, $t9, $t6
    lw      $s0, %lo(Unknown_0x801c2698_RaceStruct+RaceStruct_c)($s0)
branch_0x8006e770:
    sll     $t8, $a1, 4
    addu    $t8, $t8, $a1
    lui     $t9, %hi(Unknown_0x801cadb8)
    addiu   $t9, $t9, %lo(Unknown_0x801cadb8)
    sll     $t8, $t8, 4
    addiu   $s7, $s7, %lo(Unknown_0x801c09e0)
    addu    $t6, $t8, $t9
    sw      $t6, 0x0($s7)
    lwc1    $f0, 0x6c($v1)
    lwc1    $f2, 0x74($v1)
    mul.s   $f4, $f0, $f0
    nop
    mul.s   $f6, $f2, $f2
    jal     sqrtf
    add.s   $f12, $f4, $f6
    lwc1    $f0, 0x64($s6)
    lwc1    $f2, 0x6c($s6)
    mtc1    $zero, $t8
    mul.s   $f8, $f0, $f0
    swc1    $f0, 0x568($sp)
    swc1    $f2, 0x564($sp)
    mul.s   $f10, $f2, $f2
    jal     sqrtf
    add.s   $f12, $f8, $f10
    c.lt.s $f24, $f0
    addiu   $a2, $zero, 0x104
    bc1f    branch_0x8006e7f8
    nop
    lwc1    $f4, 0x568($sp)
    lwc1    $f8, 0x564($sp)
    div.s   $f6, $f4, $f0
    div.s   $f10, $f8, $f0
    swc1    $f6, 0x568($sp)
    swc1    $f10, 0x564($sp)
branch_0x8006e7f8:
    multu   $s0, $a2
    lui     $fp, %hi(Unknown_0x801aeb80_ObjsStruct)
    addiu   $fp, $fp, %lo(Unknown_0x801aeb80_ObjsStruct)
    lui     $a0, %hi(Unknown_0x801bae80)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
    or      $t5, $a0, $zero
    mflo    $t7
    addu    $a1, $fp, $t7
    lw      $t8, ObjsStruct_9c($a1)
    bnezl   $t8, branch_0x8006e830
    addiu   $t5, $t5, 0xffff

    lw      $t9, ObjsStruct_c8($a1)
    bnez    $t9, branch_0x8006e86c
    addiu   $t5, $t5, 0xffff

branch_0x8006e830:
    blezl   $t5, branch_0x8006e870
    lw      $v1, ObjsStruct_a0($a1)

    lw      $s0, ObjsStruct_a0($a1)
branch_0x8006e83c:
    addiu   $t5, $t5, 0xffff
    multu   $s0, $a2
    mflo    $t6
    addu    $a1, $fp, $t6
    lw      $t7, ObjsStruct_9c($a1)
    bnez    $t7, branch_0x8006e864
    nop

    lw      $t8, ObjsStruct_c8($a1)
    bnezl   $t8, branch_0x8006e870
    lw      $v1, ObjsStruct_a0($a1)

branch_0x8006e864:
    bgtzl   $t5, branch_0x8006e83c
    lw      $s0, ObjsStruct_a0($a1)
branch_0x8006e86c:
    lw      $v1, ObjsStruct_a0($a1)
branch_0x8006e870:
    or      $t5, $a0, $zero
    multu   $v1, $a2
    mflo    $t9
    addu    $v0, $fp, $t9
    lw      $t6, ObjsStruct_9c($v0)
    bnezl   $t6, branch_0x8006e898
    addiu   $t5, $t5, 0xffff
    lw      $t7, ObjsStruct_c8($v0)
    bnez    $t7, branch_0x8006e8d4
    addiu   $t5, $t5, 0xffff
branch_0x8006e898:
    blezl   $t5, branch_0x8006e8d8
    lw      $v1, ObjsStruct_a8($a1)
    lw      $v1, ObjsStruct_a0($v0)
branch_0x8006e8a4:
    addiu   $t5, $t5, 0xffff
    multu   $v1, $a2
    mflo    $t8
    addu    $v0, $fp, $t8
    lw      $t9, ObjsStruct_9c($v0)
    bnez    $t9, branch_0x8006e8cc
    nop
    lw      $t6, ObjsStruct_c8($v0)
    bnezl   $t6, branch_0x8006e8d8
    lw      $v1, ObjsStruct_a8($a1)
branch_0x8006e8cc:
    bgtzl   $t5, branch_0x8006e8a4
    lw      $v1, ObjsStruct_a0($v0)
branch_0x8006e8d4:
    lw      $v1, ObjsStruct_a8($a1)
branch_0x8006e8d8:
    or      $t5, $a0, $zero
    multu   $v1, $a2
    mflo    $t7
    addu    $v0, $fp, $t7
    lw      $t8, ObjsStruct_9c($v0)
    bnezl   $t8, branch_0x8006e900
    addiu   $t5, $t5, 0xffff
    lw      $t9, ObjsStruct_c8($v0)
    bnez    $t9, branch_0x8006e93c
    addiu   $t5, $t5, 0xffff
branch_0x8006e900:
    blezl   $t5, branch_0x8006e940
    lw      $v0, 0x0($s7)
    lw      $v1, ObjsStruct_a8($v0)
branch_0x8006e90c:
    addiu   $t5, $t5, 0xffff
    multu   $v1, $a2
    mflo    $t6
    addu    $v0, $fp, $t6
    lw      $t7, ObjsStruct_9c($v0)
    bnez    $t7, branch_0x8006e934
    nop
    lw      $t8, ObjsStruct_c8($v0)
    bnezl   $t8, branch_0x8006e940
    lw      $v0, 0x0($s7)

branch_0x8006e934:
    bgtzl   $t5, branch_0x8006e90c
    lw      $v1, ObjsStruct_a8($v0)
branch_0x8006e93c:
    lw      $v0, 0x0($s7)
branch_0x8006e940:
    or      $s0, $zero, $zero
    lw      $s1, ObjsStruct_a0($v0)
    blez    $a0, branch_0x8006eb60
    lw      $s2, ObjsStruct_a4($v0)


    lui     $at, %hi(FLOAT_255)
    lui     $a1, %hi(Unknown_0x801aeb80_ObjsStruct)
    lui     $t1, %hi(Unknown_0x801c05a0)
    lui     $s3, %hi(Unknown_0x800d51c4)
    lui     $s0, %hi(Unknown_0x800d4884)
    mtc1    $at, $k0
    addiu   $s0, $s0, %lo(Unknown_0x800d4884)
    addiu   $s3, $s3, %lo(Unknown_0x800d51c4)
    addiu   $t1, $t1, %lo(Unknown_0x801c05a0)
    addiu   $a1, $a1, %lo(Unknown_0x801aeb80_ObjsStruct)
    addiu   $s5, $zero, 0xffff
    addiu   $s4, $zero, 0x8
branch_0x8006e980_ObjsLoop:
    lw      $t9, ObjsStruct_c0($a1)
    slti    $at, $t9, 0x2
    bnezl   $at, branch_0x8006e9c0
    lw      $t7, ObjsStruct_c8($a1)

    lw      $t6, 0x0($s0)
    sll     $t9, $a0, 1
    andi    $t7, $t6, 0x1
    bnez    $t7, branch_0x8006e9ac
    lui     $t6, %hi(Unknown_0x801c05a0)

    lw      $t8, 0x0($s3)
    bnez    $t8, branch_0x8006e9ec

branch_0x8006e9ac:
    addiu   $t6, $t6, %lo(Unknown_0x801c05a0)
    sh      $s5, 0x0($t1)
    b       branch_0x8006eb4c
    addu    $v0, $t9, $t6

# 0x8006e9bc
    lw      $t7, ObjsStruct_c8($a1)
branch_0x8006e9c0:
    lui     $t8, %hi(Unknown_0x800d51c8)
    bnezl   $t7, branch_0x8006e9f0
    lwc1    $f4, ObjsStruct_0($a1)

    lw      $t8, %lo(Unknown_0x800d51c8)($t8)
    lui     $t6, %hi(Unknown_0x801c05a0)
    addiu   $t6, $t6, %lo(Unknown_0x801c05a0)
    bnez    $t8, branch_0x8006e9ec
    sll     $t9, $a0, 1

    sh      $s5, 0x0($t1)
    b       branch_0x8006eb4c
    addu    $v0, $t9, $t6

branch_0x8006e9ec:
    lwc1    $f4, ObjsStruct_0($a1)
branch_0x8006e9f0:
    lwc1    $f6, 0x4c($s6)
    lwc1    $f8, ObjsStruct_8($a1)
    lwc1    $f10, 0x54($s6)
    sub.s   $f20, $f4, $f6
    sw      $t1, 0x94($sp)
    sw      $a1, 0x98($sp)
    sub.s   $f22, $f8, $f10
    mul.s   $f4, $f20, $f20
    mtc1    $s2, $t0
    mul.s   $f6, $f22, $f22
    cvt.s.w $f14, $f8
    add.s   $f12, $f4, $f6
    jal     sqrtf
    swc1    $f14, 0x90($sp)
    lw      $a1, 0x98($sp)
    addiu   $at, $zero, 0x1
    lui     $a0, %hi(Unknown_0x801bae80)
    lw      $v0, ObjsStruct_9c($a1)
    lw      $t1, 0x94($sp)
    lwc1    $f14, 0x90($sp)
    bne     $v0, $at, branch_0x8006ea50
    lwc1    $f4, 0x568($sp)
    b       branch_0x8006ea54
    add.s   $f2, $f14, $f14
branch_0x8006ea50:
    mov.s   $f2, $f14
branch_0x8006ea54:
    c.lt.s $f0, $f2
    lwc1    $f8, 0x564($sp)
    bc1fl   branch_0x8006eb38
    sh      $s5, 0x0($t1)
    c.lt.s $f24, $f0
    nop
    bc1f    branch_0x8006ea7c
    nop

    div.s   $f20, $f20, $f0
    div.s   $f22, $f22, $f0
branch_0x8006ea7c:
    mul.s   $f6, $f20, $f4
    lui     $at, %hi(FLOAT_0_5)
    mtc1    $at, $t2
    mul.s   $f4, $f22, $f8
    addiu   $at, $zero, 0x1
    add.s   $f8, $f6, $f4
    c.lt.s $f10, $f8
    nop
    bc1tl   branch_0x8006eac8
    mtc1    $s1, $a2

    beql    $v0, $at, branch_0x8006eac8
    mtc1    $s1, $a2

    lw      $v0, ObjsStruct_98($a1)
    addiu   $at, $zero, 0x9
    beql    $s4, $v0, branch_0x8006eac8
    mtc1    $s1, $a2

    bne     $v0, $at, branch_0x8006eb2c
    nop

    mtc1    $s1, $a2
branch_0x8006eac8:
    nop
    cvt.s.w $f2, $f6
    c.le.s $f0, $f2
    nop
    bc1fl   branch_0x8006eaec
    sub.s   $f4, $f0, $f2

    b       branch_0x8006eb10
    sh      $zero, 0x0($t1)

# 0x8006eae8
    sub.s   $f4, $f0, $f2
branch_0x8006eaec:
    subu    $t7, $s2, $s1
    mtc1    $t7, $t0
    mul.s   $f10, $f4, $f26
    cvt.s.w $f6, $f8
    div.s   $f4, $f10, $f6
    trunc.w.s   $f8, $f4
    mfc1    $t9, $t0
    nop
    sh      $t9, 0x0($t1)
branch_0x8006eb10:
    lh      $t6, 0x0($t1)
    addiu   $t7, $zero, 0xff
    slti    $at, $t6, 0x100
    bnez    $at, branch_0x8006eb38
    nop

    b       branch_0x8006eb38
    sh      $t7, 0x0($t1)

branch_0x8006eb2c:
    b       branch_0x8006eb38
    sh      $s5, 0x0($t1)

# 0x8006eb34
    sh      $s5, 0x0($t1)
branch_0x8006eb38:
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
    lui     $t9, %hi(Unknown_0x801c05a0)
    addiu   $t9, $t9, %lo(Unknown_0x801c05a0)
    sll     $t8, $a0, 1
    addu    $v0, $t8, $t9
branch_0x8006eb4c:
    addiu   $t1, $t1, 0x2
    sltu    $at, $t1, $v0
    bnez    $at, branch_0x8006e980_ObjsLoop
    addiu   $a1, $a1, ObjsStruct_104

    or      $s0, $zero, $zero
branch_0x8006eb60:
    lui     $t3, %hi(Unknown_0x801bc698)
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
    lui     $at, %hi(FLOAT_255)
    mtc1    $at, $k0
    addiu   $s5, $zero, 0xffff
    blez    $t3, branch_0x8006ecec
    or      $t5, $zero, $zero
    lui     $t0, %hi(Unknown_0x801bae98)
    lui     $v1, %hi(Unknown_0x801c0620)
    addiu   $v1, $v1, %lo(Unknown_0x801c0620)
    addiu   $t0, $t0, %lo(Unknown_0x801bae98)
    addiu   $s4, $zero, 0x5
    addiu   $s3, $zero, 0x4
branch_0x8006eb94:
    lw      $v0, 0x10($t0)
    lwc1    $f10, 0x0($t0)
    lwc1    $f6, 0x4c($s6)
    lwc1    $f4, 0x8($t0)
    lwc1    $f8, 0x54($s6)
    sub.s   $f20, $f10, $f6
    beq     $s3, $v0, branch_0x8006ebb8
    sub.s   $f22, $f4, $f8

    bne     $s4, $v0, branch_0x8006ebd0
branch_0x8006ebb8:
    lui     $t7, %hi(Unknown_0x801c0620)

    addiu   $t7, $t7, %lo(Unknown_0x801c0620)
    sll     $t6, $t3, 1
    addu    $v0, $t6, $t7
    b       branch_0x8006ecd4
    sh      $s5, 0x0($v1)

branch_0x8006ebd0:
    mul.s   $f10, $f20, $f20
    mtc1    $s2, $a0
    sw      $v1, 0x8c($sp)
    mul.s   $f6, $f22, $f22
    sw      $t0, 0x94($sp)
    cvt.s.w $f14, $f4
    add.s   $f12, $f10, $f6
    jal     sqrtf
    swc1    $f14, 0x90($sp)
    lwc1    $f14, 0x90($sp)
    lw      $v1, 0x8c($sp)
    lw      $t0, 0x94($sp)
    c.lt.s  $f0, $f14
    lwc1    $f10, 0x568($sp)
    lwc1    $f4, 0x564($sp)
    lui     $t3, %hi(Unknown_0x801bc698)
    bc1fl   branch_0x8006ecc0
    sh      $s5, 0x0($v1)

    c.lt.s  $f24, $f0
    lui     $t3, %hi(Unknown_0x801bc698)
    bc1f    branch_0x8006ec30
    nop
    div.s   $f20, $f20, $f0
    div.s   $f22, $f22, $f0
branch_0x8006ec30:
    mul.s   $f6, $f20, $f10
    lui     $at, %hi(FLOAT_0_5)
    mtc1    $at, $t0
    mul.s   $f10, $f22, $f4
    add.s   $f4, $f6, $f10
    c.lt.s $f8, $f4
    nop
    bc1fl   branch_0x8006eca4
    sh      $s5, 0x0($v1)
    mtc1    $s1, $a2
    nop
    cvt.s.w $f2, $f6
    c.le.s $f0, $f2
    nop
    bc1fl   branch_0x8006ec7c
    sub.s   $f10, $f0, $f2
    b       branch_0x8006eca4
    sh      $zero, 0x0($v1)

# 0x8006ec78
    sub.s   $f10, $f0, $f2
branch_0x8006ec7c:
    subu    $t8, $s2, $s1
    mtc1    $t8, $a0
    mul.s   $f8, $f10, $f26
    cvt.s.w $f6, $f4
    div.s   $f10, $f8, $f6
    trunc.w.s   $f4, $f10
    mfc1    $t6, $a0
    b       branch_0x8006eca4
    sh      $t6, 0x0($v1)

# 0x8006eca0
    sh      $s5, 0x0($v1)
branch_0x8006eca4:
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
    lui     $t8, %hi(Unknown_0x801c0620)
    addiu   $t8, $t8, %lo(Unknown_0x801c0620)
    sll     $t7, $t3, 1
    b       branch_0x8006ecd4
    addu    $v0, $t7, $t8

# 0x8006ecbc
    sh      $s5, 0x0($v1)
branch_0x8006ecc0:
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
    lui     $t6, %hi(Unknown_0x801c0620)
    addiu   $t6, $t6, %lo(Unknown_0x801c0620)
    sll     $t9, $t3, 1
    addu    $v0, $t9, $t6
branch_0x8006ecd4:
    addiu   $v1, $v1, 0x2
    sltu    $at, $v1, $v0
    bnez    $at, branch_0x8006eb94
    addiu   $t0, $t0, 0x18
    or      $s0, $zero, $zero
    or      $t5, $zero, $zero
branch_0x8006ecec:
    lui     $t7, %hi(Unknown_0x801bf7a0)
    lw      $t7, %lo(Unknown_0x801bf7a0)($t7)
    blezl   $t7, branch_0x8006ee3c
    lw      $t8, 0x550($sp)
    mtc1    $s2, $t0
    lui     $a2, %hi(Unknown_0x801bc6a0)
    lui     $a3, %hi(Unknown_0x801c0820)
    addiu   $a3, $a3, %lo(Unknown_0x801c0820)
    addiu   $a2, $a2, %lo(Unknown_0x801bc6a0)
    addiu   $s4, $zero, 0x2
    addiu   $s3, $zero, 0x1
    cvt.s.w $f14, $f8
branch_0x8006ed1c:
    lwc1    $f6, 0x0($a2)
    lwc1    $f10, 0x4c($s6)
    lwc1    $f4, 0x8($a2)
    lwc1    $f8, 0x54($s6)
    sub.s   $f20, $f6, $f10
    swc1    $f14, 0x90($sp)
    sw      $a3, 0x94($sp)
    sub.s   $f22, $f4, $f8
    mul.s   $f6, $f20, $f20
    sw      $a2, 0x98($sp)
    mul.s   $f10, $f22, $f22
    jal     sqrtf
    add.s   $f12, $f6, $f10
    lwc1    $f14, 0x90($sp)
    lui     $t7, %hi(Unknown_0x801bf7a0)
    lw      $a2, 0x98($sp)
    c.lt.s $f0, $f14
    lw      $a3, 0x94($sp)
    lwc1    $f4, 0x568($sp)
    lwc1    $f6, 0x564($sp)
    bc1fl   branch_0x8006ee18
    sh      $s5, 0x0($a3)
    c.lt.s $f24, $f0
    nop
    bc1f    branch_0x8006ed8c
    nop

    div.s   $f20, $f20, $f0
    div.s   $f22, $f22, $f0
branch_0x8006ed8c:
    mul.s   $f8, $f20, $f4
    nop
    mul.s   $f10, $f22, $f6
    add.s   $f4, $f8, $f10
    c.lt.s $f24, $f4
    nop
    bc1t    branch_0x8006edc0
    nop

    lw      $v0, 0x4c($a2)
    beql    $s3, $v0, branch_0x8006edc4
    mtc1    $s1, $a2

    bne     $s4, $v0, branch_0x8006ee0c
    nop

branch_0x8006edc0:
    mtc1    $s1, $a2
branch_0x8006edc4:
    nop
    cvt.s.w $f2, $f6
    c.le.s $f0, $f2
    nop
    bc1fl   branch_0x8006ede8
    sub.s   $f8, $f0, $f2

    b       branch_0x8006ee18
    sh      $zero, 0x0($a3)

# 0x8006ede4
    sub.s   $f8, $f0, $f2
branch_0x8006ede8:
    subu    $t8, $s2, $s1
    mtc1    $t8, $a0
    mul.s   $f10, $f8, $f26
    cvt.s.w $f6, $f4
    div.s   $f8, $f10, $f6
    trunc.w.s   $f4, $f8
    mfc1    $t6, $a0
    b       branch_0x8006ee18
    sh      $t6, 0x0($a3)

branch_0x8006ee0c:
    b       branch_0x8006ee18
    sh      $s5, 0x0($a3)

# 0x8006ee14
    sh      $s5, 0x0($a3)
branch_0x8006ee18:
    lw      $t7, %lo(Unknown_0x801bf7a0)($t7)
    addiu   $s0, $s0, 0x1
    addiu   $a2, $a2, 0xc4
    slt     $at, $s0, $t7
    bnez    $at, branch_0x8006ed1c
    addiu   $a3, $a3, 0x2

    or      $s0, $zero, $zero
    or      $t5, $zero, $zero
    lw      $t8, 0x550($sp)
branch_0x8006ee3c:
    lui     $t6, %hi(0x1014438)
    lui     $ra, %hi(0x6000000)
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    addiu   $t6, $t6, %lo(0x1014438)
    sw      $t6, 0x4($t8)
    sw      $ra, 0x0($t8)
    lw      $t7, 0x550($sp)
    lui     $t9, %hi(0x102cb78)
    addiu   $t9, $t9, %lo(0x102cb78)
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $t9, 0x4($t7)
    sw      $ra, 0x0($t7)
    lw      $t6, 0x550($sp)
    lui     $s1, 0xe700
    lui     $t3, %hi(Unknown_0x801bc698)
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $s1, 0x0($t6)
    lw      $t8, 0x550($sp)
    lui     $t6, %hi(0xba000e02)
    ori     $t6, $t6, %lo(0xba000e02)
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    li      $t7, 0x8000
    sw      $t7, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
    blez    $t3, branch_0x8006eff0
    lui     $at, 0x3f80

    lui     $v1, %hi(Unknown_0x801c0620)
    lui     $s2, %hi(Unknown_0x801bae98)
    mtc1    $at, $k0
    addiu   $s2, $s2, %lo(Unknown_0x801bae98)
    addiu   $v1, $v1, %lo(Unknown_0x801c0620)
    li      $s3, 0xa1c0
branch_0x8006eed4:
    lh      $t8, 0x0($v1)
    sll     $t9, $s0, 2
    subu    $t9, $t9, $s0
    bltz    $t8, branch_0x8006efd8
    sll     $t9, $t9, 3

    addu    $t0, $s2, $t9
    lwc1    $f12, 0x0($t0)
    lwc1    $f10, 0x4c($s6)
    lwc1    $f16, 0x4($t0)
    lwc1    $f6, 0x50($s6)
    sub.s   $f20, $f10, $f12
    lwc1    $f14, 0x8($t0)
    lwc1    $f8, 0x54($s6)
    sub.s   $f18, $f6, $f16
    lui     $t6, %hi(Unknown_0x801c08e0)
    addiu   $t6, $t6, %lo(Unknown_0x801c08e0)
    c.eq.s $f20, $f24
    mfc1    $a3, $s2
    addu    $v0, $s0, $t6
    sll     $t2, $t5, 6
    bc1f    branch_0x8006ef3c
    sub.s   $f22, $f8, $f14

    c.eq.s $f22, $f24
    nop
    bc1tl   branch_0x8006ef4c
    mov.s   $f0, $f24

branch_0x8006ef3c:
    mov.s   $f0, $f26
    b       branch_0x8006ef50
    mov.s   $f2, $f24

# 0x8006ef48
    mov.s   $f0, $f24
branch_0x8006ef4c:
    mov.s   $f2, $f26
branch_0x8006ef50:
    lui     $t8, %hi(Unknown_0x800da8ac)
    lw      $t8, %lo(Unknown_0x800da8ac)($t8)
    lui     $t7, %hi(Unknown_0x801ae6a8)
    lw      $t7, %lo(Unknown_0x801ae6a8)($t7)
    sll     $t9, $t8, 11
    mfc1    $a2, $s4
    addu    $t6, $t7, $t9
    addu    $t8, $t6, $t2
    addu    $a0, $t8, $s3
    addiu   $a1, $sp, 0x4f8
    swc1    $f22, 0x10($sp)
    swc1    $f24, 0x14($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f2, 0x1c($sp)
    swc1    $f12, 0x20($sp)
    swc1    $f16, 0x24($sp)
    swc1    $f14, 0x28($sp)
    sw      $v0, 0x88($sp)
    sw      $v1, 0x8c($sp)
    jal     Function_0x800487f4
    sw      $t5, 0x5e4($sp)
    lw      $v0, 0x88($sp)
    lw      $t5, 0x5e4($sp)
    lui     $t3, %hi(Unknown_0x801bc698)
    lw      $v1, 0x8c($sp)
    sb      $t5, 0x0($v0)
    addiu   $t5, $t5, 0x1
    slti    $at, $t5, 0x20
    bnez    $at, branch_0x8006efd4
    nop

    or      $s0, $zero, $zero
    b       branch_0x8006eff0
    or      $t5, $zero, $zero

branch_0x8006efd4:
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
branch_0x8006efd8:
    addiu   $s0, $s0, 0x1
    slt     $at, $s0, $t3
    bnez    $at, branch_0x8006eed4
    addiu   $v1, $v1, 0x2
    or      $s0, $zero, $zero
    or      $t5, $zero, $zero
branch_0x8006eff0:
    lw      $v0, 0x0($s7)
    lui     $at, %hi(FLOAT_1)
    mtc1    $at, $k0
    lwc1    $f20, 0xac($v0)
    lwc1    $f22, 0xb4($v0)
    li      $s3, 0xa1c0
    neg.s   $f20, $f20
    neg.s   $f22, $f22
    mul.s   $f4, $f20, $f20
    sw      $t5, 0x5e4($sp)
    mul.s   $f10, $f22, $f22
    jal     sqrtf
    add.s   $f12, $f4, $f10
    c.lt.s $f24, $f0
    lw      $t5, 0x5e4($sp)
    lwc1    $f6, 0x568($sp)
    lwc1    $f4, 0x564($sp)
    bc1f    branch_0x8006f044
    nop
    div.s   $f20, $f20, $f0
    div.s   $f22, $f22, $f0
branch_0x8006f044:
    mul.s   $f8, $f6, $f20
    sw      $t5, 0x5e4($sp)
    mul.s   $f10, $f4, $f22
    jal     Function_0x801ece20
    add.s   $f12, $f8, $f10
    lwc1    $f6, 0x568($sp)
    lwc1    $f8, 0x564($sp)
    lw      $t5, 0x5e4($sp)
    mul.s   $f4, $f6, $f22
    lui     $ra, 0x600
    mov.s   $f2, $f0
    mul.s   $f10, $f8, $f20
    sub.s   $f6, $f4, $f10
    c.lt.s $f24, $f6
    nop
    bc1f    branch_0x8006f094
    lui     $at, %hi(FLOAT_360)
    mtc1    $at, $t0
    nop
    sub.s   $f2, $f8, $f0
branch_0x8006f094:
    lui     $at, %hi(FLOAT_360)
    mtc1    $at, $a0
    lui     $at, %hi(FLOAT_18)
    mtc1    $at, $a2
    div.s   $f10, $f2, $f4
    mul.s   $f8, $f10, $f6
    trunc.w.s   $f4, $f8
    mfc1    $a2, $a0
    nop
    bgezl   $a2, branch_0x8006f0c8
    slti    $at, $a2, 0x12
    or      $a2, $zero, $zero
    slti    $at, $a2, 0x12
branch_0x8006f0c8:
    bnezl   $at, branch_0x8006f0d8
    slti    $at, $a2, 0xa
    addiu   $a2, $zero, 0x11
    slti    $at, $a2, 0xa
branch_0x8006f0d8:
    beqz    $at, branch_0x8006f10c
    lui     $t9, 0x103
    lui     $t6, 0x103
    lui     $t8, 0x103
    addiu   $t9, $t9, 0xcc58
    addiu   $t6, $t6, 0xcc70
    lui     $t4, 0x103
    addiu   $t8, $t8, 0xcd90
    sw      $t9, 0x54c($sp)
    sw      $t6, 0x548($sp)
    addiu   $t4, $t4, 0xcd78
    b       branch_0x8006f140
    sw      $t8, 0x540($sp)
branch_0x8006f10c:
    lui     $t9, 0x103
    lui     $t6, 0x103
    lui     $t8, 0x103
    addiu   $t7, $zero, 0x12
    addiu   $t9, $t9, 0xcce8
    addiu   $t6, $t6, 0xcd00
    lui     $t4, 0x103
    addiu   $t8, $t8, 0xce20
    subu    $a2, $t7, $a2
    sw      $t9, 0x54c($sp)
    sw      $t6, 0x548($sp)
    addiu   $t4, $t4, 0xce08
    sw      $t8, 0x540($sp)
branch_0x8006f140:
    lui     $t7, %hi(Unknown_0x800da8ac)
    lw      $t7, %lo(Unknown_0x800da8ac)($t7)
    lui     $t8, 0x500
    addiu   $t8, $t8, 0x0
    sll     $t9, $t7, 11
    lw      $t7, 0x550($sp)
    addu    $t6, $t9, $s3
    addu    $s2, $t6, $t8
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    lui     $t8, 0xd
    addiu   $t8, $t8, 0x4c98
    lui     $t6, 0xfd10
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x550($sp)
    lui     $t6, 0xe800
    lui     $t3, %hi(Unknown_0x801bc698)
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t8, 0x550($sp)
    lui     $t9, 0xf500
    ori     $t9, $t9, 0x100
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    lui     $t6, 0x700
    sw      $t6, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t8, 0x550($sp)
    lui     $t9, 0xe600
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $a3, 0x550($sp)
    lui     $t9, 0x73f
    ori     $t9, $t9, 0xc000
    addiu   $t8, $a3, 0x8
    sw      $t8, 0x550($sp)
    lui     $t7, 0xf000
    sw      $t7, 0x0($a3)
    sw      $t9, 0x4($a3)
    lw      $t6, 0x550($sp)
    lui     $t7, 0x102
    addiu   $t7, $t7, 0xf978
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $s1, 0x0($t6)
    lw      $v1, 0x550($sp)
    lui     $t6, 0xfd50
    sll     $t8, $a2, 12
    addiu   $t9, $v1, 0x8
    sw      $t9, 0x550($sp)
    addu    $t9, $t8, $t7
    sw      $t6, 0x0($v1)
    sw      $t9, 0x8c($sp)
    sw      $t9, 0x4($v1)
    lw      $t6, 0x550($sp)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    lui     $t7, 0xf550
    sw      $t7, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $t6, 0x550($sp)
    lui     $t7, 0xe600
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t0, 0x550($sp)
    lui     $t7, 0x73f
    ori     $t7, $t7, 0xf100
    addiu   $t6, $t0, 0x8
    sw      $t6, 0x550($sp)
    lui     $t8, 0xf300
    sw      $t8, 0x0($t0)
    sw      $t7, 0x4($t0)
    lw      $t9, 0x550($sp)
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t9)
    sw      $s1, 0x0($t9)
    lw      $t8, 0x550($sp)
    lui     $t9, 0xf548
    lui     $t6, 0x8
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    ori     $t6, $t6, 0x200
    ori     $t9, $t9, 0x1000
    sw      $t9, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $t8, 0x550($sp)
    lui     $t6, 0xf
    ori     $t6, $t6, 0xc07c
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    lui     $t9, 0xf200
    sw      $t9, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
    blezl   $t3, branch_0x8006f3f0
    lw      $v0, 0x550($sp)

    lui     $t0, %hi(Unknown_0x801bae98)
    lui     $a3, %hi(Unknown_0x801c03a0)
    lui     $s4, 0x102
    ori     $s4, $s4, 0x40
    addiu   $a3, $a3, %lo(Unknown_0x801c03a0)
    addiu   $t0, $t0, %lo(Unknown_0x801bae98)
    or      $t2, $zero, $zero
    lui     $s3, 0xfb00
branch_0x8006f30c:
    lw      $t8, 0x10($t0)
    addiu   $t0, $t0, 0x18
    sh      $s5, 0x0($a3)
    bnez    $t8, branch_0x8006f3d4
    lui     $v1, %hi(Unknown_0x801c0620)
    addu    $v1, $v1, $t2
    lh      $v1, %lo(Unknown_0x801c0620)($v1)
    lui     $t6, %hi(Unknown_0x801c08e0)
    bltzl   $v1, branch_0x8006f3d8
    addiu   $s0, $s0, 0x1
    lw      $a0, 0x550($sp)
    sh      $v1, 0x0($a3)
    addu    $t6, $t6, $s0
    addiu   $t9, $a0, 0x8
    sw      $t9, 0x550($sp)
    sw      $s4, 0x0($a0)
    lbu     $t6, %lo(Unknown_0x801c08e0)($t6)
    lui     $t3, %hi(Unknown_0x801bc698)
    sll     $t8, $t6, 6
    addu    $t7, $t8, $s2
    sw      $t7, 0x4($a0)
    lw      $t9, 0x550($sp)
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t9)
    sw      $s1, 0x0($t9)
    lw      $a2, 0x550($sp)
    addiu   $t7, $a2, 0x8
    sw      $t7, 0x550($sp)
    sw      $s3, 0x0($a2)
    lw      $v0, 0x0($s7)
    lw      $t6, 0x48($v0)
    lw      $t7, 0x4c($v0)
    sll     $t8, $t6, 24
    andi    $t9, $t7, 0xff
    sll     $t6, $t9, 16
    lw      $t9, 0x50($v0)
    or      $t7, $t8, $t6
    andi    $t8, $t9, 0xff
    sll     $t6, $t8, 8
    or      $t9, $t7, $t6
    andi    $t8, $v1, 0xff
    or      $t7, $t9, $t8
    sw      $t7, 0x4($a2)
    lw      $t1, 0x550($sp)
    addiu   $t9, $t1, 0x8
    sw      $t9, 0x550($sp)
    sw      $t4, 0x4($t1)
    sw      $ra, 0x0($t1)
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
branch_0x8006f3d4:
    addiu   $s0, $s0, 0x1
branch_0x8006f3d8:
    slt     $at, $s0, $t3
    addiu   $t2, $t2, 0x2
    bnez    $at, branch_0x8006f30c
    addiu   $a3, $a3, 0x2
    or      $s0, $zero, $zero
    lw      $v0, 0x550($sp)
branch_0x8006f3f0:
    lui     $t6, 0xfd50
    lui     $t3, %hi(Unknown_0x801bc698)
    addiu   $t7, $v0, 0x8
    sw      $t7, 0x550($sp)
    sw      $t6, 0x0($v0)
    lw      $t9, 0x8c($sp)
    lui     $s4, 0x102
    ori     $s4, $s4, 0x40
    addiu   $t8, $t9, 0x800
    sw      $t8, 0x80($sp)
    sw      $t8, 0x4($v0)
    lw      $t7, 0x550($sp)
    lui     $t8, 0x708
    ori     $t8, $t8, 0x200
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    lui     $t9, 0xf550
    sw      $t9, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x550($sp)
    lui     $t9, 0xe600
    lui     $s3, 0xfb00
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t8, 0x550($sp)
    lui     $t9, 0x73f
    ori     $t9, $t9, 0xf100
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    lui     $t6, 0xf300
    sw      $t6, 0x0($t8)
    sw      $t9, 0x4($t8)
    lw      $t8, 0x550($sp)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $t6, 0x550($sp)
    lui     $t8, 0xf548
    lui     $t7, 0x8
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    ori     $t7, $t7, 0x200
    ori     $t8, $t8, 0x1000
    sw      $t8, 0x0($t6)
    sw      $t7, 0x4($t6)
    lw      $t6, 0x550($sp)
    lui     $t7, 0xf
    ori     $t7, $t7, 0xc07c
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    lui     $t8, 0xf200
    sw      $t8, 0x0($t6)
    sw      $t7, 0x4($t6)
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
    blezl   $t3, branch_0x8006f5ac
    lw      $t7, 0x550($sp)

    lui     $a3, %hi(Unknown_0x801c03a0)
    addiu   $a3, $a3, %lo(Unknown_0x801c03a0)
branch_0x8006f4e4:
    lh      $t6, 0x0($a3)
    lw      $v1, 0x550($sp)
    lui     $t7, %hi(Unknown_0x801c08e0)
    bltz    $t6, branch_0x8006f594
    addiu   $t8, $v1, 0x8

    sw      $t8, 0x550($sp)
    sw      $s4, 0x0($v1)
    addu    $t7, $t7, $s0
    lbu     $t7, %lo(Unknown_0x801c08e0)($t7)
    lui     $t3, %hi(Unknown_0x801bc698)
    sll     $t6, $t7, 6
    addu    $t9, $t6, $s2
    sw      $t9, 0x4($v1)
    lw      $t8, 0x550($sp)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $a1, 0x550($sp)
    addiu   $t9, $a1, 0x8
    sw      $t9, 0x550($sp)
    sw      $s3, 0x0($a1)
    lw      $v0, 0x0($s7)
    lh      $t8, 0x0($a3)
    lw      $t9, 0x48($v0)
    andi    $t7, $t8, 0xff
    sll     $t8, $t9, 24
    lw      $t9, 0x4c($v0)
    or      $t6, $t7, $t8
    andi    $t7, $t9, 0xff
    sll     $t8, $t7, 16
    lw      $t7, 0x50($v0)
    or      $t9, $t6, $t8
    andi    $t6, $t7, 0xff
    sll     $t8, $t6, 8
    or      $t7, $t9, $t8
    sw      $t7, 0x4($a1)
    lw      $t6, 0x550($sp)
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    sw      $ra, 0x0($t6)
    lw      $t8, 0x540($sp)
    sw      $t8, 0x4($t6)
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
branch_0x8006f594:
    addiu   $s0, $s0, 0x1
    slt     $at, $s0, $t3
    bnez    $at, branch_0x8006f4e4
    addiu   $a3, $a3, 0x2
    or      $s0, $zero, $zero
    lw      $t7, 0x550($sp)
branch_0x8006f5ac:
    lui     $t8, 0xd
    addiu   $t8, $t8, 0x4e98
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    lui     $t9, 0xfd10
    sw      $t9, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x550($sp)
    lui     $t9, 0xe800
    lui     $t3, %hi(Unknown_0x801bc698)
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t8, 0x550($sp)
    lui     $t6, 0xf500
    ori     $t6, $t6, 0x100
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    lui     $t9, 0x700
    sw      $t9, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t8, 0x550($sp)
    lui     $t6, 0xe600
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t9, 0x550($sp)
    lui     $t6, 0x73f
    ori     $t6, $t6, 0xc000
    addiu   $t8, $t9, 0x8
    sw      $t8, 0x550($sp)
    lui     $t7, 0xf000
    sw      $t7, 0x0($t9)
    sw      $t6, 0x4($t9)
    lw      $t9, 0x550($sp)
    addiu   $t8, $t9, 0x8
    sw      $t8, 0x550($sp)
    sw      $zero, 0x4($t9)
    sw      $s1, 0x0($t9)
    lw      $t7, 0x550($sp)
    lui     $t9, 0xfd50
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    sw      $t9, 0x0($t7)
    lw      $t8, 0x8c($sp)
    lui     $t9, 0xf550
    sw      $t8, 0x4($t7)
    lw      $t7, 0x550($sp)
    lui     $t8, 0x708
    ori     $t8, $t8, 0x200
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    sw      $t8, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t7, 0x550($sp)
    lui     $t9, 0xe600
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t8, 0x550($sp)
    lui     $t9, 0x73f
    ori     $t9, $t9, 0xf100
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    lui     $t6, 0xf300
    sw      $t6, 0x0($t8)
    sw      $t9, 0x4($t8)
    lw      $t8, 0x550($sp)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $t6, 0x550($sp)
    lui     $t8, 0xf548
    lui     $t7, 0x8
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    ori     $t7, $t7, 0x200
    ori     $t8, $t8, 0x1000
    sw      $t8, 0x0($t6)
    sw      $t7, 0x4($t6)
    lw      $t6, 0x550($sp)
    lui     $t7, 0xf
    ori     $t7, $t7, 0xc07c
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    lui     $t8, 0xf200
    sw      $t8, 0x0($t6)
    sw      $t7, 0x4($t6)
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
    blezl   $t3, branch_0x8006f824
    lw      $t6, 0x550($sp)

    lui     $t0, %hi(Unknown_0x801bae98)
    lui     $a3, %hi(Unknown_0x801c03a0)
    addiu   $a3, $a3, %lo(Unknown_0x801c03a0)
    addiu   $t0, $t0, %lo(Unknown_0x801bae98)
    or      $t2, $zero, $zero
branch_0x8006f73c:
    lw      $t6, 0x10($t0)
    addiu   $at, $zero, 0x1
    addiu   $t0, $t0, 0x18
    bne     $t6, $at, branch_0x8006f808
    sh      $s5, 0x0($a3)

    lui     $v1, %hi(Unknown_0x801c0620)
    addu    $v1, $v1, $t2
    lh      $v1, %lo(Unknown_0x801c0620)($v1)
    lui     $t7, %hi(Unknown_0x801c08e0)
    bltzl   $v1, branch_0x8006f80c
    addiu   $s0, $s0, 0x1

    lw      $a0, 0x550($sp)
    sh      $v1, 0x0($a3)
    addu    $t7, $t7, $s0
    addiu   $t8, $a0, 0x8
    sw      $t8, 0x550($sp)
    sw      $s4, 0x0($a0)
    lbu     $t7, %lo(Unknown_0x801c08e0)($t7)
    lui     $t3, %hi(Unknown_0x801bc698)
    sll     $t6, $t7, 6
    addu    $t9, $t6, $s2
    sw      $t9, 0x4($a0)
    lw      $t8, 0x550($sp)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $a2, 0x550($sp)
    addiu   $t9, $a2, 0x8
    sw      $t9, 0x550($sp)
    sw      $s3, 0x0($a2)
    lw      $v0, 0x0($s7)
    lw      $t7, 0x48($v0)
    lw      $t9, 0x4c($v0)
    sll     $t6, $t7, 24
    andi    $t8, $t9, 0xff
    sll     $t7, $t8, 16
    lw      $t8, 0x50($v0)
    or      $t9, $t6, $t7
    andi    $t6, $t8, 0xff
    sll     $t7, $t6, 8
    or      $t8, $t9, $t7
    andi    $t6, $v1, 0xff
    or      $t9, $t8, $t6
    sw      $t9, 0x4($a2)
    lw      $t1, 0x550($sp)
    addiu   $t8, $t1, 0x8
    sw      $t8, 0x550($sp)
    sw      $t4, 0x4($t1)
    sw      $ra, 0x0($t1)
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
branch_0x8006f808:
    addiu   $s0, $s0, 0x1
branch_0x8006f80c:
    slt     $at, $s0, $t3
    addiu   $t2, $t2, 0x2
    bnez    $at, branch_0x8006f73c
    addiu   $a3, $a3, 0x2

    or      $s0, $zero, $zero
    lw      $t6, 0x550($sp)
branch_0x8006f824:
    lui     $t7, 0xfd50
    lui     $t3, %hi(Unknown_0x801bc698)
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    sw      $t7, 0x0($t6)
    lw      $t8, 0x80($sp)
    lui     $t7, 0xf550
    sw      $t8, 0x4($t6)
    lw      $t6, 0x550($sp)
    lui     $t8, 0x708
    ori     $t8, $t8, 0x200
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    sw      $t8, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t6, 0x550($sp)
    lui     $t7, 0xe600
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t8, 0x550($sp)
    lui     $t7, 0x73f
    ori     $t7, $t7, 0xf100
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x550($sp)
    lui     $t9, 0xf300
    sw      $t9, 0x0($t8)
    sw      $t7, 0x4($t8)
    lw      $t8, 0x550($sp)
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $t9, 0x550($sp)
    lui     $t8, 0xf548
    lui     $t6, 0x8
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    ori     $t6, $t6, 0x200
    ori     $t8, $t8, 0x1000
    sw      $t8, 0x0($t9)
    sw      $t6, 0x4($t9)
    lw      $t9, 0x550($sp)
    lui     $t6, 0xf
    ori     $t6, $t6, 0xc07c
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    lui     $t8, 0xf200
    sw      $t8, 0x0($t9)
    sw      $t6, 0x4($t9)
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
    blezl   $t3, branch_0x8006f9cc
    lw      $t6, 0x550($sp)

    lui     $a3, %hi(Unknown_0x801c03a0)
    addiu   $a3, $a3, %lo(Unknown_0x801c03a0)
branch_0x8006f904:
    lh      $t9, 0x0($a3)
    lw      $v1, 0x550($sp)
    lui     $t6, %hi(Unknown_0x801c08e0)
    bltz    $t9, branch_0x8006f9b4
    addiu   $t8, $v1, 0x8
    sw      $t8, 0x550($sp)
    sw      $s4, 0x0($v1)
    addu    $t6, $t6, $s0
    lbu     $t6, %lo(Unknown_0x801c08e0)($t6)
    lui     $t3, %hi(Unknown_0x801bc698)
    sll     $t9, $t6, 6
    addu    $t7, $t9, $s2
    sw      $t7, 0x4($v1)
    lw      $t8, 0x550($sp)
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $a1, 0x550($sp)
    addiu   $t7, $a1, 0x8
    sw      $t7, 0x550($sp)
    sw      $s3, 0x0($a1)
    lw      $v0, 0x0($s7)
    lh      $t8, 0x0($a3)
    lw      $t7, 0x48($v0)
    andi    $t6, $t8, 0xff
    sll     $t8, $t7, 24
    lw      $t7, 0x4c($v0)
    or      $t9, $t6, $t8
    andi    $t6, $t7, 0xff
    sll     $t8, $t6, 16
    lw      $t6, 0x50($v0)
    or      $t7, $t9, $t8
    andi    $t9, $t6, 0xff
    sll     $t8, $t9, 8
    or      $t6, $t7, $t8
    sw      $t6, 0x4($a1)
    lw      $t9, 0x550($sp)
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    sw      $ra, 0x0($t9)
    lw      $t8, 0x540($sp)
    sw      $t8, 0x4($t9)
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
branch_0x8006f9b4:
    addiu   $s0, $s0, 0x1
    slt     $at, $s0, $t3
    bnez    $at, branch_0x8006f904
    addiu   $a3, $a3, 0x2
    or      $s0, $zero, $zero
    lw      $t6, 0x550($sp)
branch_0x8006f9cc:
    lui     $t3, %hi(Unknown_0x801bc698)
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $s1, 0x0($t6)
    lw      $t7, 0x550($sp)
    lui     $t6, 0xba00
    ori     $t6, $t6, 0xe02
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t9, 0x550($sp)
    lui     $t6, 0x101
    addiu   $t6, $t6, 0x6a38
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    lui     $t8, 0xfd10
    sw      $t8, 0x0($t9)
    sw      $t6, 0x4($t9)
    lw      $t9, 0x550($sp)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    lui     $t8, 0xf510
    sw      $t8, 0x0($t9)
    sw      $t6, 0x4($t9)
    lw      $t9, 0x550($sp)
    lui     $t8, 0xe600
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t6, 0x550($sp)
    lui     $t8, 0x77f
    ori     $t8, $t8, 0xf080
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    lui     $t7, 0xf300
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $t6, 0x550($sp)
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $s1, 0x0($t6)
    lw      $t7, 0x550($sp)
    lui     $t6, 0xf510
    lui     $t9, 0x8
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    ori     $t9, $t9, 0x200
    ori     $t6, $t6, 0x2000
    sw      $t6, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $t7, 0x550($sp)
    lui     $t9, 0xf
    ori     $t9, $t9, 0xc07c
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    lui     $t6, 0xf200
    sw      $t6, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
    blezl   $t3, branch_0x8006fbe4
    lw      $t9, 0x550($sp)
    lui     $t0, %hi(Unknown_0x801bae98)
    lui     $a3, %hi(Unknown_0x801c03a0)
    addiu   $a3, $a3, %lo(Unknown_0x801c03a0)
    addiu   $t0, $t0, %lo(Unknown_0x801bae98)
    or      $t2, $zero, $zero
branch_0x8006faec:
    lw      $v0, 0x10($t0)
    addiu   $at, $zero, 0x2
    addiu   $t0, $t0, 0x18
    beq     $v0, $at, branch_0x8006fb08
    sh      $s5, 0x0($a3)
    addiu   $at, $zero, 0x3
    bne     $v0, $at, branch_0x8006fbc8
branch_0x8006fb08:
    lui     $v1, %hi(Unknown_0x801c0620)
    addu    $v1, $v1, $t2
    lh      $v1, %lo(Unknown_0x801c0620)($v1)
    lui     $t6, %hi(Unknown_0x801c08e0)
    bltzl   $v1, branch_0x8006fbcc
    addiu   $s0, $s0, 0x1
    lw      $a0, 0x550($sp)
    sh      $v1, 0x0($a3)
    addu    $t6, $t6, $s0
    addiu   $t8, $a0, 0x8
    sw      $t8, 0x550($sp)
    sw      $s4, 0x0($a0)
    lbu     $t6, %lo(Unknown_0x801c08e0)($t6)
    lui     $t4, 0x103
    addiu   $t4, $t4, 0xcf10
    sll     $t9, $t6, 6
    addu    $t7, $t9, $s2
    sw      $t7, 0x4($a0)
    lw      $t8, 0x550($sp)
    lui     $t3, %hi(Unknown_0x801bc698)
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $a2, 0x550($sp)
    addiu   $t7, $a2, 0x8
    sw      $t7, 0x550($sp)
    sw      $s3, 0x0($a2)
    lw      $v0, 0x0($s7)
    lw      $t6, 0x48($v0)
    lw      $t7, 0x4c($v0)
    sll     $t9, $t6, 24
    andi    $t8, $t7, 0xff
    sll     $t6, $t8, 16
    lw      $t8, 0x50($v0)
    or      $t7, $t9, $t6
    andi    $t9, $t8, 0xff
    sll     $t6, $t9, 8
    or      $t8, $t7, $t6
    andi    $t9, $v1, 0xff
    or      $t7, $t8, $t9
    sw      $t7, 0x4($a2)
    lw      $t1, 0x550($sp)
    addiu   $t8, $t1, 0x8
    sw      $t8, 0x550($sp)
    sw      $t4, 0x4($t1)
    sw      $ra, 0x0($t1)
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
branch_0x8006fbc8:
    addiu   $s0, $s0, 0x1
branch_0x8006fbcc:
    slt     $at, $s0, $t3
    addiu   $t2, $t2, 0x2
    bnez    $at, branch_0x8006faec
    addiu   $a3, $a3, 0x2
    or      $s0, $zero, $zero
    lw      $t9, 0x550($sp)
branch_0x8006fbe4:
    lui     $t8, 0x101
    addiu   $t8, $t8, 0x7a38
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    lui     $t6, 0xfd10
    sw      $t6, 0x0($t9)
    sw      $t8, 0x4($t9)
    lw      $t9, 0x550($sp)
    lui     $t8, 0x708
    ori     $t8, $t8, 0x200
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    lui     $t6, 0xf510
    sw      $t6, 0x0($t9)
    sw      $t8, 0x4($t9)
    lw      $t9, 0x550($sp)
    lui     $t6, 0xe600
    lui     $t3, %hi(Unknown_0x801bc698)
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t9)
    sw      $t6, 0x0($t9)
    lw      $t8, 0x550($sp)
    lui     $t6, 0x77f
    ori     $t6, $t6, 0xf080
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    lui     $t7, 0xf300
    sw      $t7, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $t8, 0x550($sp)
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $t7, 0x550($sp)
    lui     $t8, 0xf510
    lui     $t9, 0x8
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    ori     $t9, $t9, 0x200
    ori     $t8, $t8, 0x2000
    sw      $t8, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $t7, 0x550($sp)
    lui     $t9, 0xf
    ori     $t9, $t9, 0xc07c
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    lui     $t8, 0xf200
    sw      $t8, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
    blezl   $t3, branch_0x8006fd94
    lw      $t8, 0x550($sp)
    lui     $a3, %hi(Unknown_0x801c03a0)
    lui     $t0, 0x103
    addiu   $t0, $t0, 0xcf28
    addiu   $a3, $a3, %lo(Unknown_0x801c03a0)
branch_0x8006fcd0:
    lh      $t7, 0x0($a3)
    lw      $v1, 0x550($sp)
    lui     $t9, %hi(Unknown_0x801c08e0)
    bltz    $t7, branch_0x8006fd7c
    addiu   $t8, $v1, 0x8
    sw      $t8, 0x550($sp)
    sw      $s4, 0x0($v1)
    addu    $t9, $t9, $s0
    lbu     $t9, %lo(Unknown_0x801c08e0)($t9)
    lui     $t3, %hi(Unknown_0x801bc698)
    sll     $t7, $t9, 6
    addu    $t6, $t7, $s2
    sw      $t6, 0x4($v1)
    lw      $t8, 0x550($sp)
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $a1, 0x550($sp)
    addiu   $t6, $a1, 0x8
    sw      $t6, 0x550($sp)
    sw      $s3, 0x0($a1)
    lw      $v0, 0x0($s7)
    lh      $t8, 0x0($a3)
    lw      $t6, 0x48($v0)
    andi    $t9, $t8, 0xff
    sll     $t8, $t6, 24
    lw      $t6, 0x4c($v0)
    or      $t7, $t9, $t8
    andi    $t9, $t6, 0xff
    sll     $t8, $t9, 16
    lw      $t9, 0x50($v0)
    or      $t6, $t7, $t8
    andi    $t7, $t9, 0xff
    sll     $t8, $t7, 8
    or      $t9, $t6, $t8
    sw      $t9, 0x4($a1)
    lw      $t7, 0x550($sp)
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    sw      $t0, 0x4($t7)
    sw      $ra, 0x0($t7)
    lw      $t3, %lo(Unknown_0x801bc698)($t3)
branch_0x8006fd7c:
    addiu   $s0, $s0, 0x1
    slt     $at, $s0, $t3
    bnez    $at, branch_0x8006fcd0
    addiu   $a3, $a3, 0x2
    or      $s0, $zero, $zero
    lw      $t8, 0x550($sp)
branch_0x8006fd94:
    lui     $a0, %hi(Unknown_0x801bae80)
    or      $v0, $fp, $zero
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $t7, 0x550($sp)
    lui     $t8, 0xba00
    ori     $t8, $t8, 0xe02
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    li      $t9, 0x8000
    sw      $t9, 0x4($t7)
    sw      $t8, 0x0($t7)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
    blez    $a0, branch_0x800700d8
    nop

    lui     $t1, %hi(Unknown_0x801c05a0)
    addiu   $t1, $t1, %lo(Unknown_0x801c05a0)
branch_0x8006fde0:
    lh      $t7, 0x0($t1)
    sll     $t8, $s0, 6
    addu    $t8, $t8, $s0
    bltz    $t7, branch_0x800700c0
    sll     $t2, $t5, 6

    sll     $t8, $t8, 2
    addu    $t9, $fp, $t8
    lw      $t7, 0x9c($t9)
    lui     $t6, %hi(Unknown_0x801c08a0)
    addiu   $t6, $t6, %lo(Unknown_0x801c08a0)
    bnez    $t7, branch_0x8006ffb4
    addu    $s2, $s0, $t6

    lwc1    $f12, 0x0($v0)
    lwc1    $f10, 0x4c($s6)
    lwc1    $f14, 0x4($v0)
    lwc1    $f6, 0x50($s6)
    sub.s   $f20, $f10, $f12
    lwc1    $f16, 0x8($v0)
    lwc1    $f8, 0x54($s6)
    lui     $t6, %hi(Unknown_0x801ae6a8)
    c.eq.s $f20, $f24
    lui     $t8, %hi(Unknown_0x800da8ac)
    sub.s   $f18, $f6, $f14
    bc1f    branch_0x8006fe54
    sub.s   $f22, $f8, $f16

    c.eq.s $f22, $f24
    nop
    bc1tl   branch_0x8006fe64
    mov.s   $f0, $f24

branch_0x8006fe54:
    mov.s   $f0, $f26
    b       branch_0x8006fe68
    mov.s   $f2, $f24

# 0x8006fe60
    mov.s   $f0, $f24
branch_0x8006fe64:
    mov.s   $f2, $f26
branch_0x8006fe68:
    lw      $t8, %lo(Unknown_0x800da8ac)($t8)
    lw      $t6, %lo(Unknown_0x801ae6a8)($t6)
    li      $at, 0x95c0
    sll     $t9, $t8, 2
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 8
    addu    $t7, $t6, $t9
    addu    $a0, $t7, $t2
    mfc1    $a2, $s4
    mfc1    $a3, $s2
    addu    $a0, $a0, $at
    addiu   $a1, $sp, 0x4f8
    swc1    $f22, 0x10($sp)
    swc1    $f24, 0x14($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f2, 0x1c($sp)
    swc1    $f12, 0x20($sp)
    swc1    $f14, 0x24($sp)
    swc1    $f16, 0x28($sp)
    sw      $v0, 0x4f4($sp)
    sw      $t1, 0x94($sp)
    sw      $t2, 0x90($sp)
    jal     Function_0x800487f4
    sw      $t5, 0x5e4($sp)
    lui     $t8, %hi(Unknown_0x801921b8_GeneralWaterLevel)
    lw      $v0, 0x4f4($sp)
    lw      $t8, %lo(Unknown_0x801921b8_GeneralWaterLevel)($t8)
    lw      $t1, 0x94($sp)
    lwc1    $f12, 0x0($v0)
    mtc1    $t8, $a2
    lwc1    $f4, 0x60($v0)
    lwc1    $f10, 0x64($v0)
    cvt.s.w $f8, $f6
    lwc1    $f14, 0x4($v0)
    lwc1    $f6, 0x68($v0)
    lwc1    $f16, 0x8($v0)
    lw      $t2, 0x90($sp)
    sub.s   $f20, $f4, $f12
    lw      $t5, 0x5e4($sp)
    lui     $t6, %hi(Unknown_0x801ae6a8)
    add.s   $f4, $f10, $f8
    lui     $t9, %hi(Unknown_0x800da8ac)
    li      $at, 0x9bc0
    c.eq.s $f20, $f24
    addiu   $a1, $sp, 0x4f8
    sub.s   $f18, $f4, $f14
    bc1f    branch_0x8006ff38
    sub.s   $f22, $f6, $f16
    c.eq.s $f22, $f24
    nop
    bc1tl   branch_0x8006ff48
    mov.s   $f0, $f24
branch_0x8006ff38:
    mov.s   $f0, $f26
    b       branch_0x8006ff4c
    mov.s   $f2, $f24

# 0x8006ff44
    mov.s   $f0, $f24
branch_0x8006ff48:
    mov.s   $f2, $f26
branch_0x8006ff4c:
    lw      $t9, %lo(Unknown_0x800da8ac)($t9)
    lw      $t6, %lo(Unknown_0x801ae6a8)($t6)
    mfc1    $a2, $s4
    sll     $t7, $t9, 2
    subu    $t7, $t7, $t9
    sll     $t7, $t7, 8
    addu    $t8, $t6, $t7
    addu    $a0, $t8, $t2
    mfc1    $a3, $s2
    addu    $a0, $a0, $at
    swc1    $f22, 0x10($sp)
    swc1    $f24, 0x14($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f2, 0x1c($sp)
    swc1    $f12, 0x20($sp)
    swc1    $f14, 0x24($sp)
    swc1    $f16, 0x28($sp)
    sw      $v0, 0x4f4($sp)
    sw      $t1, 0x94($sp)
    jal     Function_0x800487f4
    sw      $t5, 0x5e4($sp)
    lw      $v0, 0x4f4($sp)
    lw      $t1, 0x94($sp)
    lw      $t5, 0x5e4($sp)
    b       branch_0x800700a0
    lui     $ra, 0x600
branch_0x8006ffb4:
    lwc1    $f10, 0xc($v0)
    lwc1    $f8, 0x18($v0)
    lui     $at, %hi(FLOAT_0_5)
    mtc1    $at, $v0
    add.s   $f4, $f10, $f8
    lui     $t9, %hi(TrackNr_0x800d7ef0)
    addiu   $at, $zero, Track_7
    mul.s   $f6, $f4, $f2
    swc1    $f6, 0x0($v0)
    lw      $t9, %lo(TrackNr_0x800d7ef0)($t9)
    beql    $t9, $at, branch_0x80070000
    swc1    $f24, 0x4($v0)
    lwc1    $f10, 0x10($v0)
    lwc1    $f8, 0x1c($v0)
    add.s   $f4, $f10, $f8
    mul.s   $f6, $f4, $f2
    b       branch_0x80070000
    swc1    $f6, 0x4($v0)

# 0x8006fffc
    swc1    $f24, 0x4($v0)
branch_0x80070000:
    lwc1    $f10, 0x14($v0)
    lwc1    $f8, 0x20($v0)
    lwc1    $f6, 0x70($v0)
    lui     $t7, %hi(Unknown_0x800da8ac)
    add.s   $f4, $f10, $f8
    lwc1    $f8, 0x74($v0)
    lui     $t6, %hi(Unknown_0x801ae6a8)
    neg.s   $f10, $f6
    mul.s   $f0, $f4, $f2
    neg.s   $f4, $f8
    mfc1    $a2, $t2
    li      $at, 0x95c0
    mfc1    $a3, $t8
    addiu   $a1, $sp, 0x4f8
    swc1    $f0, 0x8($v0)
    swc1    $f24, 0x1c($sp)
    swc1    $f26, 0x18($sp)
    swc1    $f24, 0x14($sp)
    swc1    $f4, 0x10($sp)
    lwc1    $f6, 0x0($v0)
    lw      $t7, %lo(Unknown_0x800da8ac)($t7)
    lw      $t6, %lo(Unknown_0x801ae6a8)($t6)
    swc1    $f6, 0x20($sp)
    sll     $t8, $t7, 2
    lwc1    $f10, 0x4($v0)
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 8
    addu    $t9, $t6, $t8
    addu    $a0, $t9, $t2
    addu    $a0, $a0, $at
    sw      $t5, 0x5e4($sp)
    sw      $t1, 0x94($sp)
    sw      $v0, 0x4f4($sp)
    swc1    $f0, 0x28($sp)
    jal     Function_0x800487f4
    swc1    $f10, 0x24($sp)
    lw      $v0, 0x4f4($sp)
    lw      $t1, 0x94($sp)
    lw      $t5, 0x5e4($sp)
    lui     $ra, 0x600
branch_0x800700a0:
    sb      $t5, 0x0($s2)
    addiu   $t5, $t5, 0x1
    slti    $at, $t5, 0xc
    bnez    $at, branch_0x800700bc
    lui     $a0, %hi(Unknown_0x801bae80)
    b       branch_0x800700d8
    or      $s0, $zero, $zero
branch_0x800700bc:
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
branch_0x800700c0:
    addiu   $s0, $s0, 0x1
    slt     $at, $s0, $a0
    addiu   $t1, $t1, 0x2
    bnez    $at, branch_0x8006fde0
    addiu   $v0, $v0, 0x104
    or      $s0, $zero, $zero
branch_0x800700d8:
    lui     $t7, %hi(Unknown_0x800da8ac)
    lw      $t7, %lo(Unknown_0x800da8ac)($t7)
    li      $at, 0x95c0
    lui     $t9, 0x500
    sll     $t6, $t7, 2
    subu    $t6, $t6, $t7
    lw      $t7, 0x550($sp)
    sll     $t6, $t6, 8
    addu    $t8, $t6, $at
    addiu   $t9, $t9, 0x0
    addu    $s2, $t8, $t9
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    lui     $t9, 0x103
    addiu   $t9, $t9, 0x9978
    lui     $t8, 0xfd10
    sw      $t8, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $t7, 0x550($sp)
    lui     $t8, 0xe800
    lui     $a0, %hi(Unknown_0x801bae80)
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $t8, 0x0($t7)
    lw      $t9, 0x550($sp)
    lui     $t6, 0xf500
    ori     $t6, $t6, 0x100
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    lui     $t8, 0x700
    sw      $t8, 0x4($t9)
    sw      $t6, 0x0($t9)
    lw      $t9, 0x550($sp)
    lui     $t6, 0xe600
    lui     $t4, %hi(Unknown_0x801c08a0)
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t9)
    sw      $t6, 0x0($t9)
    lw      $t8, 0x550($sp)
    lui     $t6, 0x73f
    ori     $t6, $t6, 0xc000
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    lui     $t7, 0xf000
    sw      $t7, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $t8, 0x550($sp)
    addiu   $t4, $t4, %lo(Unknown_0x801c08a0)
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $t7, 0x550($sp)
    lui     $t8, 0xfd50
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    sw      $t8, 0x0($t7)
    lw      $t9, 0x8c($sp)
    lui     $t8, 0xf550
    sw      $t9, 0x4($t7)
    lw      $t7, 0x550($sp)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    sw      $t9, 0x4($t7)
    sw      $t8, 0x0($t7)
    lw      $t7, 0x550($sp)
    lui     $t8, 0xe600
    addiu   $t6, $t7, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $t8, 0x0($t7)
    lw      $t9, 0x550($sp)
    lui     $t8, 0x73f
    ori     $t8, $t8, 0xf100
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    lui     $t6, 0xf300
    sw      $t6, 0x0($t9)
    sw      $t8, 0x4($t9)
    lw      $t9, 0x550($sp)
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t9)
    sw      $s1, 0x0($t9)
    lw      $t6, 0x550($sp)
    lui     $t9, 0xf548
    lui     $t7, 0x8
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    ori     $t7, $t7, 0x200
    ori     $t9, $t9, 0x1000
    sw      $t9, 0x0($t6)
    sw      $t7, 0x4($t6)
    lw      $t6, 0x550($sp)
    lui     $t7, 0xf
    ori     $t7, $t7, 0xc07c
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    lui     $t9, 0xf200
    sw      $t9, 0x0($t6)
    sw      $t7, 0x4($t6)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
    blezl   $a0, branch_0x8007039c
    lw      $t8, 0x550($sp)

    lui     $t1, %hi(Unknown_0x801c05a0)
    lui     $a3, %hi(Unknown_0x801c0320)
    addiu   $a3, $a3, %lo(Unknown_0x801c0320)
    addiu   $t1, $t1, %lo(Unknown_0x801c05a0)
branch_0x80070298:
    lh      $v1, 0x0($t1)
    addiu   $t1, $t1, 0x2
    sh      $s5, 0x0($a3)
    bltz    $v1, branch_0x80070384
    sll     $t6, $s0, 6

    addu    $t6, $t6, $s0
    sll     $t6, $t6, 2
    addu    $a1, $fp, $t6
    lw      $t8, 0x98($a1)
    bnezl   $t8, branch_0x80070388
    addiu   $s0, $s0, 0x1

    lw      $t9, 0xc8($a1)
    lui     $t7, %hi(Unknown_0x800d51c8)
    bnezl   $t9, branch_0x800702e4
    lw      $a0, 0x550($sp)

    lw      $t7, %lo(Unknown_0x800d51c8)($t7)
    beqzl   $t7, branch_0x80070388
    addiu   $s0, $s0, 0x1

    lw      $a0, 0x550($sp)
branch_0x800702e4:
    sh      $v1, 0x0($a3)
    addu    $t9, $t4, $s0
    addiu   $t8, $a0, 0x8
    sw      $t8, 0x550($sp)
    sw      $s4, 0x0($a0)
    lbu     $t7, 0x0($t9)
    sll     $t6, $t7, 6
    addu    $t8, $t6, $s2
    sw      $t8, 0x4($a0)
    lw      $t9, 0x550($sp)
    lui     $a0, %hi(Unknown_0x801bae80)
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t9)
    sw      $s1, 0x0($t9)
    lw      $a2, 0x550($sp)
    addiu   $t8, $a2, 0x8
    sw      $t8, 0x550($sp)
    sw      $s3, 0x0($a2)
    lw      $v0, 0x0($s7)
    lw      $t7, 0x48($v0)
    lw      $t8, 0x4c($v0)
    sll     $t6, $t7, 24
    andi    $t9, $t8, 0xff
    sll     $t7, $t9, 16
    lw      $t9, 0x50($v0)
    or      $t8, $t6, $t7
    andi    $t6, $t9, 0xff
    sll     $t7, $t6, 8
    or      $t9, $t8, $t7
    andi    $t6, $v1, 0xff
    or      $t8, $t9, $t6
    sw      $t8, 0x4($a2)
    lw      $t0, 0x550($sp)
    addiu   $t9, $t0, 0x8
    sw      $t9, 0x550($sp)
    sw      $ra, 0x0($t0)
    lw      $t6, 0x54c($sp)
    sw      $t6, 0x4($t0)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
branch_0x80070384:
    addiu   $s0, $s0, 0x1
branch_0x80070388:
    slt     $at, $s0, $a0
    bnez    $at, branch_0x80070298
    addiu   $a3, $a3, 0x2
    or      $s0, $zero, $zero
    lw      $t8, 0x550($sp)
branch_0x8007039c:
    lui     $t9, 0xfd50
    lui     $a0, %hi(Unknown_0x801bae80)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $t9, 0x0($t8)
    lw      $t6, 0x80($sp)
    lui     $t9, 0xf550
    lui     $t4, %hi(Unknown_0x801c08a0)
    sw      $t6, 0x4($t8)
    lw      $t8, 0x550($sp)
    lui     $t6, 0x708
    ori     $t6, $t6, 0x200
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $t6, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t8, 0x550($sp)
    lui     $t9, 0xe600
    addiu   $t4, $t4, %lo(Unknown_0x801c08a0)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t6, 0x550($sp)
    lui     $t9, 0x73f
    ori     $t9, $t9, 0xf100
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    lui     $t7, 0xf300
    sw      $t7, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $t6, 0x550($sp)
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $s1, 0x0($t6)
    lw      $t7, 0x550($sp)
    lui     $t6, 0xf548
    lui     $t8, 0x8
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    ori     $t8, $t8, 0x200
    ori     $t6, $t6, 0x1000
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x550($sp)
    lui     $t8, 0xf
    ori     $t8, $t8, 0xc07c
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    lui     $t6, 0xf200
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
    blezl   $a0, branch_0x80070548
    lw      $t7, 0x550($sp)

    lui     $a3, %hi(Unknown_0x801c0320)
    addiu   $a3, $a3, %lo(Unknown_0x801c0320)
branch_0x80070484:
    lh      $t7, 0x0($a3)
    lw      $v1, 0x550($sp)
    addu    $t8, $t4, $s0
    bltz    $t7, branch_0x80070530
    addiu   $t6, $v1, 0x8

    sw      $t6, 0x550($sp)
    sw      $s4, 0x0($v1)
    lbu     $t7, 0x0($t8)
    lui     $a0, %hi(Unknown_0x801bae80)
    sll     $t9, $t7, 6
    addu    $t6, $t9, $s2
    sw      $t6, 0x4($v1)
    lw      $t8, 0x550($sp)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $a1, 0x550($sp)
    addiu   $t6, $a1, 0x8
    sw      $t6, 0x550($sp)
    sw      $s3, 0x0($a1)
    lw      $v0, 0x0($s7)
    lh      $t8, 0x0($a3)
    lw      $t6, 0x48($v0)
    andi    $t7, $t8, 0xff
    sll     $t8, $t6, 24
    lw      $t6, 0x4c($v0)
    or      $t9, $t7, $t8
    andi    $t7, $t6, 0xff
    sll     $t8, $t7, 16
    lw      $t7, 0x50($v0)
    or      $t6, $t9, $t8
    andi    $t9, $t7, 0xff
    sll     $t8, $t9, 8
    or      $t7, $t6, $t8
    sw      $t7, 0x4($a1)
    lw      $t9, 0x550($sp)
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $ra, 0x0($t9)
    lw      $t8, 0x548($sp)
    sw      $t8, 0x4($t9)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
branch_0x80070530:
    addiu   $s0, $s0, 0x1
    slt     $at, $s0, $a0
    bnez    $at, branch_0x80070484
    addiu   $a3, $a3, 0x2

    or      $s0, $zero, $zero
    lw      $t7, 0x550($sp)
branch_0x80070548:
    lui     $t8, 0xd
    addiu   $t8, $t8, 0x4898
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    lui     $t6, 0xfd10
    sw      $t6, 0x0($t7)
    sw      $t8, 0x4($t7)
    lw      $t7, 0x550($sp)
    lui     $t6, 0xe800
    lui     $a0, %hi(Unknown_0x801bae80)
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t8, 0x550($sp)
    lui     $t9, 0xf500
    ori     $t9, $t9, 0x100
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    lui     $t6, 0x700
    sw      $t6, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t8, 0x550($sp)
    lui     $t9, 0xe600
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t6, 0x550($sp)
    lui     $t9, 0x73f
    ori     $t9, $t9, 0xc000
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    lui     $t7, 0xf000
    sw      $t7, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $t6, 0x550($sp)
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $s1, 0x0($t6)
    lw      $t7, 0x550($sp)
    lui     $t6, 0xfd50
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $t6, 0x0($t7)
    lw      $t8, 0x8c($sp)
    lui     $t6, 0xf550
    sw      $t8, 0x4($t7)
    lw      $t7, 0x550($sp)
    lui     $t8, 0x708
    ori     $t8, $t8, 0x200
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $t8, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t7, 0x550($sp)
    lui     $t6, 0xe600
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $t6, 0x0($t7)
    lw      $t8, 0x550($sp)
    lui     $t6, 0x73f
    ori     $t6, $t6, 0xf100
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    lui     $t9, 0xf300
    sw      $t9, 0x0($t8)
    sw      $t6, 0x4($t8)
    lw      $t8, 0x550($sp)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $t9, 0x550($sp)
    lui     $t8, 0xf548
    lui     $t7, 0x8
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    ori     $t7, $t7, 0x200
    ori     $t8, $t8, 0x1000
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $t9, 0x550($sp)
    lui     $t7, 0xf
    ori     $t7, $t7, 0xc07c
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    lui     $t8, 0xf200
    sw      $t8, 0x0($t9)
    sw      $t7, 0x4($t9)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
    blezl   $a0, branch_0x800707dc
    lw      $t6, 0x550($sp)

    lui     $t1, %hi(Unknown_0x801c05a0)
    lui     $a3, %hi(Unknown_0x801c0320)
    addiu   $a3, $a3, %lo(Unknown_0x801c0320)
    addiu   $t1, $t1, %lo(Unknown_0x801c05a0)
branch_0x800706d4:
    lh      $v1, 0x0($t1)
    addiu   $t1, $t1, 0x2
    sh      $s5, 0x0($a3)
    bltz    $v1, branch_0x800707c4
    sll     $t9, $s0, 6
    addu    $t9, $t9, $s0
    sll     $t9, $t9, 2
    addu    $a1, $fp, $t9
    lw      $t6, 0x98($a1)
    addiu   $at, $zero, 0x1
    bnel    $t6, $at, branch_0x800707c8
    addiu   $s0, $s0, 0x1
    lw      $t8, 0xc8($a1)
    lui     $t7, %hi(Unknown_0x800d51c8)
    bnezl   $t8, branch_0x80070724
    lw      $a0, 0x550($sp)
    lw      $t7, %lo(Unknown_0x800d51c8)($t7)
    beqzl   $t7, branch_0x800707c8
    addiu   $s0, $s0, 0x1
    lw      $a0, 0x550($sp)
branch_0x80070724:
    sh      $v1, 0x0($a3)
    addu    $t8, $t4, $s0
    addiu   $t6, $a0, 0x8
    sw      $t6, 0x550($sp)
    sw      $s4, 0x0($a0)
    lbu     $t7, 0x0($t8)
    sll     $t9, $t7, 6
    addu    $t6, $t9, $s2
    sw      $t6, 0x4($a0)
    lw      $t8, 0x550($sp)
    lui     $a0, %hi(Unknown_0x801bae80)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $a2, 0x550($sp)
    addiu   $t6, $a2, 0x8
    sw      $t6, 0x550($sp)
    sw      $s3, 0x0($a2)
    lw      $v0, 0x0($s7)
    lw      $t7, 0x48($v0)
    lw      $t6, 0x4c($v0)
    sll     $t9, $t7, 24
    andi    $t8, $t6, 0xff
    sll     $t7, $t8, 16
    lw      $t8, 0x50($v0)
    or      $t6, $t9, $t7
    andi    $t9, $t8, 0xff
    sll     $t7, $t9, 8
    or      $t8, $t6, $t7
    andi    $t9, $v1, 0xff
    or      $t6, $t8, $t9
    sw      $t6, 0x4($a2)
    lw      $t0, 0x550($sp)
    addiu   $t8, $t0, 0x8
    sw      $t8, 0x550($sp)
    sw      $ra, 0x0($t0)
    lw      $t9, 0x54c($sp)
    sw      $t9, 0x4($t0)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
branch_0x800707c4:
    addiu   $s0, $s0, 0x1
branch_0x800707c8:
    slt     $at, $s0, $a0
    bnez    $at, branch_0x800706d4
    addiu   $a3, $a3, 0x2

    or      $s0, $zero, $zero
    lw      $t6, 0x550($sp)
branch_0x800707dc:
    lui     $t8, 0xfd50
    lui     $a0, %hi(Unknown_0x801bae80)
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $t8, 0x0($t6)
    lw      $t9, 0x80($sp)
    lui     $t8, 0xf550
    sw      $t9, 0x4($t6)
    lw      $t6, 0x550($sp)
    lui     $t9, 0x708
    ori     $t9, $t9, 0x200
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $t9, 0x4($t6)
    sw      $t8, 0x0($t6)
    lw      $t6, 0x550($sp)
    lui     $t8, 0xe600
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $t8, 0x0($t6)
    lw      $t9, 0x550($sp)
    lui     $t8, 0x73f
    ori     $t8, $t8, 0xf100
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    lui     $t7, 0xf300
    sw      $t7, 0x0($t9)
    sw      $t8, 0x4($t9)
    lw      $t9, 0x550($sp)
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t9)
    sw      $s1, 0x0($t9)
    lw      $t7, 0x550($sp)
    lui     $t9, 0xf548
    lui     $t6, 0x8
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    ori     $t6, $t6, 0x200
    ori     $t9, $t9, 0x1000
    sw      $t9, 0x0($t7)
    sw      $t6, 0x4($t7)
    lw      $t7, 0x550($sp)
    lui     $t6, 0xf
    ori     $t6, $t6, 0xc07c
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    lui     $t9, 0xf200
    sw      $t9, 0x0($t7)
    sw      $t6, 0x4($t7)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
    blez    $a0, branch_0x8007097c
    nop

    lui     $a3, %hi(Unknown_0x801c0320)
    addiu   $a3, $a3, %lo(Unknown_0x801c0320)
branch_0x800708bc:
    lh      $t7, 0x0($a3)
    lw      $v1, 0x550($sp)
    addu    $t6, $t4, $s0
    bltz    $t7, branch_0x80070968
    addiu   $t9, $v1, 0x8
    sw      $t9, 0x550($sp)
    sw      $s4, 0x0($v1)
    lbu     $t7, 0x0($t6)
    lui     $a0, %hi(Unknown_0x801bae80)
    sll     $t8, $t7, 6
    addu    $t9, $t8, $s2
    sw      $t9, 0x4($v1)
    lw      $t6, 0x550($sp)
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $s1, 0x0($t6)
    lw      $a1, 0x550($sp)
    addiu   $t9, $a1, 0x8
    sw      $t9, 0x550($sp)
    sw      $s3, 0x0($a1)
    lw      $v0, 0x0($s7)
    lh      $t6, 0x0($a3)
    lw      $t9, 0x48($v0)
    andi    $t7, $t6, 0xff
    sll     $t6, $t9, 24
    lw      $t9, 0x4c($v0)
    or      $t8, $t7, $t6
    andi    $t7, $t9, 0xff
    sll     $t6, $t7, 16
    lw      $t7, 0x50($v0)
    or      $t9, $t8, $t6
    andi    $t8, $t7, 0xff
    sll     $t6, $t8, 8
    or      $t7, $t9, $t6
    sw      $t7, 0x4($a1)
    lw      $t8, 0x550($sp)
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $ra, 0x0($t8)
    lw      $t6, 0x548($sp)
    sw      $t6, 0x4($t8)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
branch_0x80070968:
    addiu   $s0, $s0, 0x1
    slt     $at, $s0, $a0
    bnez    $at, branch_0x800708bc
    addiu   $a3, $a3, 0x2

    or      $s0, $zero, $zero
branch_0x8007097c:
    lui     $t7, %hi(Unknown_0x800d51c8)
    lw      $t7, %lo(Unknown_0x800d51c8)($t7)
    lw      $t8, 0x550($sp)
    lui     $t6, 0xfd10
    beqz    $t7, branch_0x80070db8
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    lui     $t7, 0xd
    addiu   $t7, $t7, 0x4a98
    sw      $t7, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t8, 0x550($sp)
    lui     $t6, 0xe800
    lui     $a0, %hi(Unknown_0x801bae80)
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t7, 0x550($sp)
    lui     $t9, 0xf500
    ori     $t9, $t9, 0x100
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    lui     $t6, 0x700
    sw      $t6, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t7, 0x550($sp)
    lui     $t9, 0xe600
    addiu   $t2, $zero, 0xa
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t6, 0x550($sp)
    lui     $t9, 0x73f
    ori     $t9, $t9, 0xc000
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    lui     $t8, 0xf000
    sw      $t8, 0x0($t6)
    sw      $t9, 0x4($t6)
    lw      $t6, 0x550($sp)
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $s1, 0x0($t6)
    lw      $t8, 0x550($sp)
    lui     $t6, 0xfd50
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $t6, 0x0($t8)
    lw      $t7, 0x8c($sp)
    lui     $t6, 0xf550
    sw      $t7, 0x4($t8)
    lw      $t8, 0x550($sp)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $t7, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t8, 0x550($sp)
    lui     $t6, 0xe600
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t7, 0x550($sp)
    lui     $t6, 0x73f
    ori     $t6, $t6, 0xf100
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    lui     $t9, 0xf300
    sw      $t9, 0x0($t7)
    sw      $t6, 0x4($t7)
    lw      $t7, 0x550($sp)
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $s1, 0x0($t7)
    lw      $t9, 0x550($sp)
    lui     $t7, 0xf548
    lui     $t8, 0x8
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    ori     $t8, $t8, 0x200
    ori     $t7, $t7, 0x1000
    sw      $t7, 0x0($t9)
    sw      $t8, 0x4($t9)
    lw      $t9, 0x550($sp)
    lui     $t8, 0xf
    ori     $t8, $t8, 0xc07c
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    lui     $t7, 0xf200
    sw      $t7, 0x0($t9)
    sw      $t8, 0x4($t9)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
    blezl   $a0, branch_0x80070c18
    lw      $t8, 0x550($sp)
    lui     $t1, %hi(Unknown_0x801c05a0)
    lui     $a3, %hi(Unknown_0x801c0320)
    addiu   $a3, $a3, %lo(Unknown_0x801c0320)
    addiu   $t1, $t1, %lo(Unknown_0x801c05a0)
branch_0x80070b1c:
    lh      $v1, 0x0($t1)
    addiu   $t1, $t1, 0x2
    sh      $s5, 0x0($a3)
    bltz    $v1, branch_0x80070c00
    sll     $t9, $s0, 6
    addu    $t9, $t9, $s0
    sll     $t9, $t9, 2
    addu    $t6, $fp, $t9
    lw      $v0, 0x98($t6)
    addiu   $at, $zero, 0x4
    beq     $v0, $at, branch_0x80070b5c
    addiu   $at, $zero, 0x6
    beql    $v0, $at, branch_0x80070b60
    lw      $a0, 0x550($sp)
    bnel    $t2, $v0, branch_0x80070c04
    addiu   $s0, $s0, 0x1
branch_0x80070b5c:
    lw      $a0, 0x550($sp)
branch_0x80070b60:
    sh      $v1, 0x0($a3)
    addu    $t9, $t4, $s0
    addiu   $t8, $a0, 0x8
    sw      $t8, 0x550($sp)
    sw      $s4, 0x0($a0)
    lbu     $t6, 0x0($t9)
    sll     $t7, $t6, 6
    addu    $t8, $t7, $s2
    sw      $t8, 0x4($a0)
    lw      $t9, 0x550($sp)
    lui     $a0, %hi(Unknown_0x801bae80)
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t9)
    sw      $s1, 0x0($t9)
    lw      $a2, 0x550($sp)
    addiu   $t8, $a2, 0x8
    sw      $t8, 0x550($sp)
    sw      $s3, 0x0($a2)
    lw      $v0, 0x0($s7)
    lw      $t6, 0x48($v0)
    lw      $t8, 0x4c($v0)
    sll     $t7, $t6, 24
    andi    $t9, $t8, 0xff
    sll     $t6, $t9, 16
    lw      $t9, 0x50($v0)
    or      $t8, $t7, $t6
    andi    $t7, $t9, 0xff
    sll     $t6, $t7, 8
    or      $t9, $t8, $t6
    andi    $t7, $v1, 0xff
    or      $t8, $t9, $t7
    sw      $t8, 0x4($a2)
    lw      $t0, 0x550($sp)
    addiu   $t9, $t0, 0x8
    sw      $t9, 0x550($sp)
    sw      $ra, 0x0($t0)
    lw      $t7, 0x54c($sp)
    sw      $t7, 0x4($t0)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
branch_0x80070c00:
    addiu   $s0, $s0, 0x1
branch_0x80070c04:
    slt     $at, $s0, $a0
    bnez    $at, branch_0x80070b1c
    addiu   $a3, $a3, 0x2
    or      $s0, $zero, $zero
    lw      $t8, 0x550($sp)
branch_0x80070c18:
    lui     $t9, 0xfd50
    lui     $a0, %hi(Unknown_0x801bae80)
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x550($sp)
    sw      $t9, 0x0($t8)
    lw      $t7, 0x80($sp)
    lui     $t9, 0xf550
    sw      $t7, 0x4($t8)
    lw      $t8, 0x550($sp)
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x550($sp)
    sw      $t7, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t8, 0x550($sp)
    lui     $t9, 0xe600
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $t7, 0x550($sp)
    lui     $t9, 0x73f
    ori     $t9, $t9, 0xf100
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    lui     $t6, 0xf300
    sw      $t6, 0x0($t7)
    sw      $t9, 0x4($t7)
    lw      $t7, 0x550($sp)
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $s1, 0x0($t7)
    lw      $t6, 0x550($sp)
    lui     $t7, 0xf548
    lui     $t8, 0x8
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    ori     $t8, $t8, 0x200
    ori     $t7, $t7, 0x1000
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $t6, 0x550($sp)
    lui     $t8, 0xf
    ori     $t8, $t8, 0xc07c
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    lui     $t7, 0xf200
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
    blezl   $a0, branch_0x80070dbc
    lw      $t6, 0x550($sp)
    lui     $a3, %hi(Unknown_0x801c0320)
    addiu   $a3, $a3, %lo(Unknown_0x801c0320)
branch_0x80070cf8:
    lh      $t6, 0x0($a3)
    lw      $v1, 0x550($sp)
    addu    $t8, $t4, $s0
    bltz    $t6, branch_0x80070da4
    addiu   $t7, $v1, 0x8
    sw      $t7, 0x550($sp)
    sw      $s4, 0x0($v1)
    lbu     $t6, 0x0($t8)
    lui     $a0, %hi(Unknown_0x801bae80)
    sll     $t9, $t6, 6
    addu    $t7, $t9, $s2
    sw      $t7, 0x4($v1)
    lw      $t8, 0x550($sp)
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $a1, 0x550($sp)
    addiu   $t7, $a1, 0x8
    sw      $t7, 0x550($sp)
    sw      $s3, 0x0($a1)
    lw      $v0, 0x0($s7)
    lh      $t8, 0x0($a3)
    lw      $t7, 0x48($v0)
    andi    $t6, $t8, 0xff
    sll     $t8, $t7, 24
    lw      $t7, 0x4c($v0)
    or      $t9, $t6, $t8
    andi    $t6, $t7, 0xff
    sll     $t8, $t6, 16
    lw      $t6, 0x50($v0)
    or      $t7, $t9, $t8
    andi    $t9, $t6, 0xff
    sll     $t8, $t9, 8
    or      $t6, $t7, $t8
    sw      $t6, 0x4($a1)
    lw      $t9, 0x550($sp)
    addiu   $t7, $t9, 0x8
    sw      $t7, 0x550($sp)
    sw      $ra, 0x0($t9)
    lw      $t8, 0x548($sp)
    sw      $t8, 0x4($t9)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
branch_0x80070da4:
    addiu   $s0, $s0, 0x1
    slt     $at, $s0, $a0
    bnez    $at, branch_0x80070cf8
    addiu   $a3, $a3, 0x2
    or      $s0, $zero, $zero
branch_0x80070db8:
    lw      $t6, 0x550($sp)
branch_0x80070dbc:
    lui     $t8, 0xf
    ori     $t8, $t8, 0x3001
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    lui     $t7, 0xb600
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $t6, 0x550($sp)
    lui     $t8, 0x3
    ori     $t8, $t8, 0x205
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    lui     $t7, 0xb700
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $t6, 0x550($sp)
    lui     $t8, 0x8000
    lui     $t7, 0xbb00
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    ori     $t7, $t7, 0x1
    ori     $t8, $t8, 0x8000
    sw      $t8, 0x4($t6)
    sw      $t7, 0x0($t6)
    lw      $t6, 0x550($sp)
    lui     $t7, 0xbc00
    lui     $t8, 0x8000
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    ori     $t8, $t8, 0x40
    ori     $t7, $t7, 0x2
    sw      $t7, 0x0($t6)
    sw      $t8, 0x4($t6)
    lw      $t6, 0x550($sp)
    lui     $t7, 0x386
    ori     $t7, $t7, 0x10
    addiu   $t9, $t6, 0x8
    sw      $t9, 0x550($sp)
    lui     $t8, %hi(Unknown_0x800da8ac)
    sw      $t7, 0x0($t6)
    lw      $t8, %lo(Unknown_0x800da8ac)($t8)
    or      $a2, $t6, $zero
    lui     $t2, 0x600
    sll     $t6, $t8, 2
    subu    $t6, $t6, $t8
    addiu   $t2, $t2, 0x0
    sll     $t6, $t6, 3
    addu    $t9, $t2, $t6
    addiu   $t7, $t9, 0x35d8
    sw      $t7, 0x4($a2)
    lw      $t8, 0x550($sp)
    lui     $t9, 0x388
    ori     $t9, $t9, 0x10
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x550($sp)
    lui     $t7, %hi(Unknown_0x800da8ac)
    sw      $t9, 0x0($t8)
    lw      $t7, %lo(Unknown_0x800da8ac)($t7)
    or      $v1, $t8, $zero
    sll     $t8, $t7, 2
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 3
    addu    $t6, $t2, $t8
    addiu   $t9, $t6, 0x35d0
    sw      $t9, 0x4($v1)
    lw      $t7, 0x550($sp)
    lui     $t6, 0xbc00
    ori     $t6, $t6, 0x8
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $t6, 0x0($t7)
    lw      $v0, 0x0($s7)
    or      $a0, $t7, $zero
    lui     $t7, 0x1
    lw      $a1, 0x78($v0)
    lw      $t9, 0x7c($v0)
    ori     $t7, $t7, 0xf400
    lui     $t2, 0xb900
    subu    $a2, $t9, $a1
    div     $zero, $t7, $a2
    bnez    $a2, branch_0x80070f08
    nop
    break   0x7
branch_0x80070f08:

    addiu   $at, $zero, 0xffff
    bne     $a2, $at, branch_0x80070f20
    lui     $at, %hi(0x80000000)
    bne     $t7, $at, branch_0x80070f20
    nop
    break   0x6
branch_0x80070f20:

    mflo    $t6
    lui     $at, 0x1
    subu    $t7, $zero, $a1
    sll     $t8, $t7, 8
    ori     $at, $at, 0xf400
    sll     $t9, $t6, 16
    addu    $t6, $t8, $at
    div     $zero, $t6, $a2
    mflo    $t7
    andi    $t8, $t7, 0xffff
    bnez    $a2, branch_0x80070f54
    nop
    break   0x7
branch_0x80070f54:

    addiu   $at, $zero, 0xffff
    bne     $a2, $at, branch_0x80070f6c
    lui     $at, 0x8000
    bne     $t6, $at, branch_0x80070f6c
    nop
    break   0x6
branch_0x80070f6c:

    or      $t6, $t9, $t8
    sw      $t6, 0x4($a0)
    lw      $t7, 0x550($sp)
    ori     $t2, $t2, 0x31d
    addiu   $at, $zero, Track_9
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $s1, 0x0($t7)
    sw      $zero, 0x4($t7)
    lw      $t8, 0x550($sp)
    lui     $t7, 0xba00
    ori     $t7, $t7, 0xe02
    addiu   $t6, $t8, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $t7, 0x0($t8)
    lw      $t9, 0x550($sp)
    or      $t0, $t8, $zero
    lui     $t6, 0xba00
    addiu   $t8, $t9, 0x8
    sw      $t8, 0x550($sp)
    ori     $t6, $t6, 0x1402
    lui     $t7, 0x10
    sw      $t7, 0x4($t9)
    sw      $t6, 0x0($t9)
    or      $t1, $t9, $zero
    lw      $t9, 0x550($sp)
    lui     $t6, 0xba00
    ori     $t6, $t6, 0x1301
    addiu   $t8, $t9, 0x8
    sw      $t8, 0x550($sp)
    lui     $t7, 0x8
    sw      $t7, 0x4($t9)
    sw      $t6, 0x0($t9)
    or      $v1, $t9, $zero
    lw      $t9, 0x550($sp)
    lui     $t6, 0xba00
    ori     $t6, $t6, 0xc02
    addiu   $t8, $t9, 0x8
    sw      $t8, 0x550($sp)
    addiu   $t7, $zero, 0x2000
    sw      $t7, 0x4($t9)
    sw      $t6, 0x0($t9)
    or      $a0, $t9, $zero
    lw      $t9, 0x550($sp)
    lui     $t6, 0xfc12
    ori     $t6, $t6, 0x7fff
    addiu   $t8, $t9, 0x8
    sw      $t8, 0x550($sp)
    addiu   $t7, $zero, 0xf238
    sw      $t7, 0x4($t9)
    sw      $t6, 0x0($t9)
    or      $a1, $t9, $zero
    lw      $t9, 0x550($sp)
    lui     $t6, 0xc811
    ori     $t6, $t6, 0x2078
    addiu   $t8, $t9, 0x8
    sw      $t8, 0x550($sp)
    sw      $t6, 0x4($t9)
    sw      $t2, 0x0($t9)
    lw      $t7, 0x550($sp)
    or      $a2, $t9, $zero
    lui     $t8, 0xf800
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $t8, 0x0($t7)
    lw      $v0, 0x0($s7)
    or      $a3, $t7, $zero
    addiu   $s7, $zero, 0x2000
    lw      $t7, 0x48($v0)
    lw      $t8, 0x4c($v0)
    lui     $a0, %hi(Unknown_0x801bae80)
    sll     $t9, $t7, 24
    andi    $t6, $t8, 0xff
    sll     $t7, $t6, 16
    lw      $t6, 0x50($v0)
    or      $t8, $t9, $t7
    andi    $t9, $t6, 0xff
    sll     $t7, $t9, 8
    lw      $t9, 0x54($v0)
    or      $t6, $t8, $t7
    andi    $t8, $t9, 0xff
    or      $t7, $t6, $t8
    sw      $t7, 0x4($a3)
    lw      $t9, 0x550($sp)
    lui     $t8, 0xb900
    ori     $t8, $t8, 0x2
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    lui     $t7, %hi(TrackNr_0x800d7ef0)
    sw      $zero, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $t7, %lo(TrackNr_0x800d7ef0)($t7)
    or      $v0, $t9, $zero
    lui     $t9, %hi(Unknown_0x800da8ac)
    beq     $t7, $at, branch_0x80071388
    nop
    lw      $t9, %lo(Unknown_0x800da8ac)($t9)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
    li      $at, 0x95c0
    sll     $t6, $t9, 2
    subu    $t6, $t6, $t9
    sll     $t6, $t6, 8
    lui     $t7, %hi(0x5000000)
    addiu   $t7, $t7, 0x0
    addu    $t8, $t6, $at
    blez    $a0, branch_0x80071388
    addu    $s2, $t8, $t7

    lui     $t1, %hi(Unknown_0x801c05a0)
    lui     $s6, %hi(Unknown_0x8029fcd8)
    lui     $s5, %hi(Unknown_0x8029fc50)
    lui     $s3, %hi(Unknown_0x8029ff58)
    lui     $t5, %hi(Unknown_0x8029fad0)
    lui     $t3, %hi(0xc8113078)
    lui     $t0, %hi(Unknown_0x8029fdc8)
    lui     $a3, %hi(0xd02b640)
    lui     $a2, %hi(0x1060040)
    ori     $a2, $a2, %lo(0x1060040)
    addiu   $a3, $a3, %lo(0xd02b640)
    addiu   $t0, $t0, %lo(Unknown_0x8029fdc8)
    ori     $t3, $t3, %lo(0xc8113078)
    addiu   $t5, $t5, %lo(Unknown_0x8029fad0)
    addiu   $s3, $s3, %lo(Unknown_0x8029ff58)
    addiu   $s5, $s5, %lo(Unknown_0x8029fc50)
    addiu   $s6, $s6, %lo(Unknown_0x8029fcd8)
    addiu   $t1, $t1, %lo(Unknown_0x801c05a0)
branch_0x80071164:
    lh      $v1, 0x0($t1)
    sll     $t9, $s0, 6
    addu    $t9, $t9, $s0
    bltz    $v1, branch_0x80071374
    sll     $t9, $t9, 2
    addu    $a1, $fp, $t9
    lw      $t6, 0x9c($a1)
    lw      $v1, 0x550($sp)
    addiu   $at, $zero, 0x1
    bne     $t6, $at, branch_0x80071374
    addiu   $t7, $v1, 0x8

    sw      $t7, 0x550($sp)
    sw      $a2, 0x0($v1)
    addu    $t9, $t4, $s0
    lbu     $t6, 0x0($t9)
    addiu   $at, $zero, 0x3
    lui     $a0, %hi(Unknown_0x801bae80)
    sll     $t8, $t6, 6
    addu    $t7, $t8, $s2
    sw      $t7, 0x4($v1)
    lw      $v0, 0x98($a1)
    beq     $v0, $at, branch_0x800711c8
    addiu   $at, $zero, 0x5
    bne     $v0, $at, branch_0x80071314
    lw      $t9, 0x550($sp)
branch_0x800711c8:
    lui     $v0, %hi(TrackNr_0x800d7ef0)
    lw      $v0, %lo(TrackNr_0x800d7ef0)($v0)
    lui     $t9, %hi(Unknown_0x801ce380)
    bnezl   $v0, branch_0x80071204
    addiu   $at, $zero, Track_2
    lw      $t9, %lo(Unknown_0x801ce380)($t9)
    lw      $t6, 0x550($sp)
    addiu   $at, $zero, 0xb
    beq     $t9, $at, branch_0x80071200
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    sw      $a3, 0x4($t6)
    b       branch_0x80071370
    sw      $ra, 0x0($t6)

branch_0x80071200:
    addiu   $at, $zero, Track_2
branch_0x80071204:
    bne     $v0, $at, branch_0x8007125c
    lw      $t7, 0x550($sp)
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $t0, 0x4($t7)
    sw      $ra, 0x0($t7)
    lw      $t6, 0x550($sp)
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $s1, 0x0($t6)
    lw      $t7, 0x550($sp)
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $t3, 0x4($t7)
    sw      $t2, 0x0($t7)
    lw      $t6, 0x550($sp)
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    sw      $t5, 0x4($t6)
    b       branch_0x80071370
    sw      $ra, 0x0($t6)

branch_0x8007125c:
    addiu   $at, $zero, Track_7
    bne     $v0, $at, branch_0x800712bc
    lw      $t7, 0x550($sp)

    lw      $t7, 0x550($sp)
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $s3, 0x4($t7)
    sw      $ra, 0x0($t7)
    lw      $t6, 0x550($sp)
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $s1, 0x0($t6)
    lw      $t7, 0x550($sp)
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $t3, 0x4($t7)
    sw      $t2, 0x0($t7)
    lw      $t6, 0x550($sp)
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    sw      $s5, 0x4($t6)
    b       branch_0x80071370
    sw      $ra, 0x0($t6)

branch_0x800712bc:
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $s6, 0x4($t7)
    sw      $ra, 0x0($t7)
    lw      $t6, 0x550($sp)
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $s1, 0x0($t6)
    lw      $t7, 0x550($sp)
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $t3, 0x4($t7)
    sw      $t2, 0x0($t7)
    lw      $t6, 0x550($sp)
    lui     $t7, %hi(Unknown_0x8029fa70)
    addiu   $t7, $t7, %lo(Unknown_0x8029fa70)
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    sw      $t7, 0x4($t6)
    b       branch_0x80071370
    sw      $ra, 0x0($t6)
branch_0x80071314:
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    lui     $t8, 0x102
    addiu   $t8, $t8, 0x8d58
    sw      $t8, 0x4($t9)
    sw      $ra, 0x0($t9)
    lw      $t7, 0x550($sp)
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $s1, 0x0($t7)
    lw      $t6, 0x550($sp)
    addiu   $t8, $t6, 0x8
    sw      $t8, 0x550($sp)
    sw      $t3, 0x4($t6)
    sw      $t2, 0x0($t6)
    lw      $t7, 0x550($sp)
    lui     $t6, 0x102
    addiu   $t6, $t6, 0x8aa8
    addiu   $t9, $t7, 0x8
    sw      $t9, 0x550($sp)
    sw      $t6, 0x4($t7)
    sw      $ra, 0x0($t7)
branch_0x80071370:
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
branch_0x80071374:
    addiu   $s0, $s0, 0x1
    slt     $at, $s0, $a0
    bnez    $at, branch_0x80071164
    addiu   $t1, $t1, 0x2
    or      $s0, $zero, $zero
branch_0x80071388:
    lui     $s5, %hi(Unknown_0x800da8a8)
    addiu   $s5, $s5, %lo(Unknown_0x800da8a8)
    lw      $t8, 0x0($s5)
    lui     $t3, 0xc811
    addiu   $at, $zero, 0x1
    bne     $t8, $at, branch_0x80071594
    ori     $t3, $t3, 0x3078
    lui     $t7, %hi(Unknown_0x800da8ac)
    lw      $t7, %lo(Unknown_0x800da8ac)($t7)
    li      $at, 0x9bc0
    lui     $t8, 0x500
    sll     $t9, $t7, 2
    subu    $t9, $t9, $t7
    lw      $t7, 0x550($sp)
    sll     $t9, $t9, 8
    addu    $t6, $t9, $at
    addiu   $t8, $t8, 0x0
    addiu   $t9, $t7, 0x8
    addu    $s2, $t6, $t8
    sw      $t9, 0x550($sp)
    lui     $t6, 0xb700
    sw      $t6, 0x0($t7)
    sw      $s7, 0x4($t7)
    lw      $t8, 0x550($sp)
    lui     $a0, %hi(Unknown_0x801bae80)
    lui     $t1, %hi(Unknown_0x801c05a0)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $t9, 0x550($sp)
    lui     $t8, 0xfc12
    ori     $t8, $t8, 0x7fff
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    addiu   $t7, $zero, 0xf238
    sw      $t7, 0x4($t9)
    sw      $t8, 0x0($t9)
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
    lui     $t5, 0x103
    addiu   $t5, $t5, 0x9be0
    blez    $a0, branch_0x80071594
    addiu   $t1, $t1, %lo(Unknown_0x801c05a0)
    lui     $t0, 0x103
    lui     $a3, 0x103
    lui     $a2, 0x103
    addiu   $a2, $a2, 0xae38
    addiu   $a3, $a3, 0xad90
    addiu   $t0, $t0, 0x9c88
branch_0x8007144c:
    lh      $t9, 0x0($t1)
    sll     $t6, $s0, 6
    addu    $t6, $t6, $s0
    bltz    $t9, branch_0x80071580
    sll     $t6, $t6, 2
    addu    $a1, $fp, $t6
    lw      $t8, 0x9c($a1)
    bnezl   $t8, branch_0x80071584
    addiu   $s0, $s0, 0x1
    lw      $t7, 0xc8($a1)
    lw      $t9, 0x550($sp)
    beqz    $t7, branch_0x80071580
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t9)
    sw      $s1, 0x0($t9)
    lw      $t8, 0x550($sp)
    lui     $t9, 0xc811
    ori     $t9, $t9, 0x2078
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $t9, 0x4($t8)
    sw      $t2, 0x0($t8)
    lw      $a0, 0x550($sp)
    addu    $t7, $t4, $s0
    addiu   $t8, $a0, 0x8
    sw      $t8, 0x550($sp)
    sw      $s4, 0x0($a0)
    lbu     $t9, 0x0($t7)
    sll     $t6, $t9, 6
    addu    $t8, $t6, $s2
    sw      $t8, 0x4($a0)
    lw      $t7, 0x98($a1)
    lw      $t9, 0x550($sp)
    lui     $a0, %hi(Unknown_0x801bae80)
    bnez    $t7, branch_0x80071534
    addiu   $t6, $t9, 0x8
    lw      $t9, 0x550($sp)
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $a2, 0x4($t9)
    sw      $ra, 0x0($t9)
    lw      $t8, 0x550($sp)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $t9, 0x550($sp)
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $t3, 0x4($t9)
    sw      $t2, 0x0($t9)
    lw      $t8, 0x550($sp)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $a3, 0x4($t8)
    b       branch_0x8007157c
    sw      $ra, 0x0($t8)
branch_0x80071534:
    sw      $t6, 0x550($sp)
    sw      $t0, 0x4($t9)
    sw      $ra, 0x0($t9)
    lw      $t8, 0x550($sp)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $t9, 0x550($sp)
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $t3, 0x4($t9)
    sw      $t2, 0x0($t9)
    lw      $t8, 0x550($sp)
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    sw      $t5, 0x4($t8)
    sw      $ra, 0x0($t8)
branch_0x8007157c:
    lw      $a0, %lo(Unknown_0x801bae80)($a0)
branch_0x80071580:
    addiu   $s0, $s0, 0x1
branch_0x80071584:
    slt     $at, $s0, $a0
    bnez    $at, branch_0x8007144c
    addiu   $t1, $t1, 0x2
    or      $s0, $zero, $zero
branch_0x80071594:
    lw      $t9, 0x550($sp)
    lui     $v0, %hi(Unknown_0x801bf7a0)
    lui     $a3, %hi(Unknown_0x801c0820)
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t9)
    sw      $s1, 0x0($t9)
    lw      $t8, 0x550($sp)
    lui     $t9, 0xfc12
    ori     $t9, $t9, 0x7fff
    addiu   $t7, $t8, 0x8
    sw      $t7, 0x550($sp)
    addiu   $t6, $zero, 0xf238
    sw      $t6, 0x4($t8)
    sw      $t9, 0x0($t8)
    lw      $v0, %lo(Unknown_0x801bf7a0)($v0)
    addiu   $a3, $a3, %lo(Unknown_0x801c0820)
    addiu   $s3, $zero, 0xc4
    blez    $v0, branch_0x800717ac
    lui     $s2, %hi(Unknown_0x801bc6a0)
    lui     $t0, %hi(Unknown_0x801ae6b0)
    addiu   $t0, $t0, %lo(Unknown_0x801ae6b0)
    addiu   $s2, $s2, %lo(Unknown_0x801bc6a0)
branch_0x800715f0:
    lh      $t8, 0x0($a3)
    bltzl   $t8, branch_0x800717a0
    addiu   $s0, $s0, 0x1
    multu   $s0, $s3
    addiu   $at, $zero, 0x1
    mflo    $t7
    addu    $a2, $s2, $t7
    lw      $t9, 0x54($a2)
    bne     $t9, $at, branch_0x80071794
    nop
    lw      $t6, 0x58($a2)
    lw      $v0, 0x550($sp)
    sll     $t9, $s0, 6
    beqz    $t6, branch_0x800716b4
    addiu   $t8, $v0, 0x8
    lw      $t7, 0x0($t0)
    lui     $t8, %hi(Unknown_0x801ae6a8)
    lw      $t8, %lo(Unknown_0x801ae6a8)($t8)
    sll     $t9, $t7, 6
    addiu   $a0, $a2, 0x74
    addu    $a1, $t8, $t9
    addiu   $a1, $a1, 0x4140
    sw      $a2, 0x98($sp)
    jal     Function_0x801edb20
    sw      $a3, 0x94($sp)
    lw      $v0, 0x550($sp)
    lw      $a2, 0x98($sp)
    lw      $a3, 0x94($sp)
    addiu   $t7, $v0, 0x8
    lui     $t0, %hi(Unknown_0x801ae6b0)
    sw      $t7, 0x550($sp)
    addiu   $t0, $t0, %lo(Unknown_0x801ae6b0)
    sw      $s4, 0x0($v0)
    lw      $t8, 0x0($t0)
    lui     $t7, 0x500
    addiu   $t7, $t7, 0x0
    sll     $t9, $t8, 6
    addiu   $t6, $t9, 0x4140
    addu    $t8, $t6, $t7
    sw      $t8, 0x4($v0)
    lw      $t9, 0x0($t0)
    lui     $t2, 0xb900
    lui     $t3, 0xc811
    addiu   $t6, $t9, 0x1
    ori     $t3, $t3, 0x3078
    ori     $t2, $t2, 0x31d
    lui     $ra, 0x600
    b       branch_0x800716cc
    sw      $t6, 0x0($t0)

branch_0x800716b4:
    lui     $t6, %hi(Unknown_0x801c0a30)
    addiu   $t6, $t6, %lo(Unknown_0x801c0a30)
    sw      $t8, 0x550($sp)
    addu    $t7, $t9, $t6
    sw      $t7, 0x4($v0)
    sw      $s4, 0x0($v0)
branch_0x800716cc:
    lw      $t8, 0x550($sp)
    lui     $t6, 0xb700
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $s7, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t7, 0xb4($a2)
    lw      $t8, 0x550($sp)
    beqz    $t7, branch_0x80071734
    addiu   $t9, $t8, 0x8

    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $t6, 0x550($sp)
    lui     $t8, 0xc811
    ori     $t8, $t8, 0x2078
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $t8, 0x4($t6)
    sw      $t2, 0x0($t6)
    lw      $t9, 0x550($sp)
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $ra, 0x0($t9)
    lw      $t7, 0xb4($a2)
    sw      $t7, 0x4($t9)
branch_0x80071734:
    lw      $t8, 0x550($sp)
    lui     $t6, 0xb600
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $s7, 0x4($t8)
    sw      $t6, 0x0($t8)
    lw      $t7, 0xb8($a2)
    lw      $t8, 0x550($sp)
    beqz    $t7, branch_0x80071794
    addiu   $t9, $t8, 0x8

    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $t6, 0x550($sp)
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $t3, 0x4($t6)
    sw      $t2, 0x0($t6)
    lw      $t8, 0x550($sp)
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $ra, 0x0($t8)
    lw      $t6, 0xb8($a2)
    sw      $t6, 0x4($t8)
branch_0x80071794:
    lui     $v0, %hi(Unknown_0x801bf7a0)
    lw      $v0, %lo(Unknown_0x801bf7a0)($v0)
    addiu   $s0, $s0, 0x1
branch_0x800717a0:
    slt     $at, $s0, $v0
    bnez    $at, branch_0x800715f0
    addiu   $a3, $a3, 0x2

branch_0x800717ac:
    lui     $t7, %hi(TrackNr_0x800d7ef0)
    lw      $t7, %lo(TrackNr_0x800d7ef0)($t7)
    addiu   $at, $zero, Track_6
    lui     $a0, 0xe01
    bnel    $t7, $at, branch_0x80071880
    lw      $t7, 0x550($sp)
    jal     Function_0x80093e28
    addiu   $a0, $a0, 0xf478

    lui     $s2, %hi(Unknown_0x801c0a1c)
    addiu   $s2, $s2, %lo(Unknown_0x801c0a1c)
    lw      $t8, 0x0($s2)
    lw      $t6, 0x550($sp)
    lui     $a0, 0xe01
    sll     $t9, $t8, 6
    lui     $t8, 0xbc00
    addiu   $t7, $t6, 0x8
    addu    $s0, $v0, $t9
    sw      $t7, 0x550($sp)
    ori     $t8, $t8, 0x2406
    addiu   $a0, $a0, 0x1480
    sw      $t8, 0x0($t6)
    jal     Function_0x80093e28
    sw      $s0, 0x4($t6)

    lw      $t9, 0x0($s2)
    lw      $t7, 0x550($sp)
    lui     $a0, 0xe01
    sll     $t6, $t9, 6
    lui     $t9, 0xbc00
    addiu   $t8, $t7, 0x8
    addu    $s0, $v0, $t6
    sw      $t8, 0x550($sp)
    ori     $t9, $t9, 0x2806
    addiu   $a0, $a0, 0x3488
    sw      $t9, 0x0($t7)
    jal     Function_0x80093e28
    sw      $s0, 0x4($t7)

    lui     $t6, 0x801c
    lw      $t6, 0xa20($t6)
    lw      $t8, 0x550($sp)
    lui     $t2, 0xb900
    sll     $t7, $t6, 12
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    lui     $t6, 0xbc00
    addu    $s0, $v0, $t7
    lui     $t3, 0xc811
    ori     $t6, $t6, 0x2c06
    ori     $t3, $t3, 0x3078
    ori     $t2, $t2, 0x31d
    lui     $ra, 0x600
    sw      $t6, 0x0($t8)
    sw      $s0, 0x4($t8)
    lw      $t7, 0x550($sp)
branch_0x80071880:
    lui     $t6, %hi(0xf3001)
    ori     $t6, $t6, %lo(0xf3001)
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    lui     $t9, 0xb600
    sw      $t9, 0x0($t7)
    sw      $t6, 0x4($t7)
    lw      $t7, 0x550($sp)
    lui     $t6, 0x3
    ori     $t6, $t6, 0x2205
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    lui     $t9, 0xb700
    sw      $t9, 0x0($t7)
    sw      $t6, 0x4($t7)
    lw      $t7, 0x550($sp)
    lui     $t6, 0x8000
    lui     $t9, 0xbb00
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    ori     $t9, $t9, 0x1
    ori     $t6, $t6, 0x8000
    sw      $t6, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t7, 0x550($sp)
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $s1, 0x0($t7)
    lw      $t9, 0x550($sp)
    lui     $t7, 0xfc12
    ori     $t7, $t7, 0x7fff
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    addiu   $t8, $zero, 0xf238
    sw      $t8, 0x4($t9)
    sw      $t7, 0x0($t9)
    lw      $t9, 0x550($sp)
    lui     $t7, 0xc811
    ori     $t7, $t7, 0x2078
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $t7, 0x4($t9)
    sw      $t2, 0x0($t9)
    lw      $t8, 0x550($sp)
    lui     $t6, 0x200
    addiu   $t6, $t6, 0xa40
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    lui     $t7, %hi(Unknown_0x800d51c0)
    sw      $t6, 0x4($t8)
    sw      $s4, 0x0($t8)
    lw      $t7, %lo(Unknown_0x800d51c0)($t7)
    lui     $t8, %hi(Unknown_0x801ce398)
    beqzl   $t7, branch_0x80071d40
    lw      $t8, 0x0($s5)
    lw      $t8, %lo(Unknown_0x801ce398)($t8)
    lw      $t9, 0x550($sp)
    addiu   $at, $zero, 0x15
    bne     $t8, $at, branch_0x80071a14
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    lui     $t7, 0xc19
    ori     $t7, $t7, 0x2078
    sw      $t7, 0x4($t9)
    sw      $t2, 0x0($t9)
    lw      $t8, 0x550($sp)
    lui     $a3, %hi(Unknown_0x801c1a30)
    addiu   $a3, $a3, %lo(Unknown_0x801c1a30)
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $ra, 0x0($t8)
    lw      $t6, 0x0($a3)
    lui     $t9, 0xb600
    lui     $a2, %hi(Unknown_0x801c1a34)
    sw      $t6, 0x4($t8)
    lw      $t7, 0x550($sp)
    addiu   $a2, $a2, %lo(Unknown_0x801c1a34)
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $s7, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t6, 0x550($sp)
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $s1, 0x0($t6)
    lw      $t8, 0x550($sp)
    lui     $t6, 0xc19
    ori     $t6, $t6, 0x3078
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $t6, 0x4($t8)
    sw      $t2, 0x0($t8)
    lw      $t7, 0x550($sp)
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $ra, 0x0($t7)
    lw      $t9, 0x0($a2)
    b       branch_0x80071b1c
    sw      $t9, 0x4($t7)

branch_0x80071a14:
    lui     $a3, %hi(Unknown_0x801c1a30)
    addiu   $a3, $a3, %lo(Unknown_0x801c1a30)
    lw      $t6, 0x0($a3)
    lui     $a2, %hi(Unknown_0x801c1a34)
    addiu   $a2, $a2, %lo(Unknown_0x801c1a34)
    beqz    $t6, branch_0x80071a48
    nop

    lw      $t7, 0x550($sp)
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $ra, 0x0($t7)
    lw      $t9, 0x0($a3)
    sw      $t9, 0x4($t7)
branch_0x80071a48:
    lui     $t6, %hi(TrackNr_0x800d7ef0)
    lw      $t6, %lo(TrackNr_0x800d7ef0)($t6)
    addiu   $at, $zero, Track_5
    bne     $t6, $at, branch_0x80071ab8
    lui     $t7, %hi(Unknown_0x801ce380)
    lw      $t7, %lo(Unknown_0x801ce380)($t7)
    addiu   $at, $zero, 0xb
    lui     $v0, %hi(Unknown_0x801cb098)
    beq     $t7, $at, branch_0x80071a7c
    lw      $t8, 0x550($sp)

    lw      $v0, %lo(Unknown_0x801cb098)($v0)
    addiu   $at, $zero, 0x2
    bnez    $v0, branch_0x80071a98
branch_0x80071a7c:
    addiu   $t9, $t8, 0x8

    lui     $t6, 0xe01
    addiu   $t6, $t6, 0xed0
    sw      $t9, 0x550($sp)
    sw      $t6, 0x4($t8)
    b       branch_0x80071ab8
    sw      $ra, 0x0($t8)
branch_0x80071a98:
    bne     $v0, $at, branch_0x80071ab8
    lw      $t7, 0x550($sp)

    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    lui     $t9, 0xe01
    addiu   $t9, $t9, 0xdf0
    sw      $t9, 0x4($t7)
    sw      $ra, 0x0($t7)
branch_0x80071ab8:
    lw      $t6, 0x0($a2)
    beqz    $t6, branch_0x80071b1c
    nop

    lw      $t7, 0x550($sp)
    lui     $t9, 0xb600
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $s7, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t6, 0x550($sp)
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $zero, 0x4($t6)
    sw      $s1, 0x0($t6)
    lw      $t8, 0x550($sp)
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $t3, 0x4($t8)
    sw      $t2, 0x0($t8)
    lw      $t6, 0x550($sp)
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $ra, 0x0($t6)
    lw      $t8, 0x0($a2)
    sw      $t8, 0x4($t6)
branch_0x80071b1c:
    lui     $t9, %hi(TrackNr_0x800d7ef0)
    lw      $t9, %lo(TrackNr_0x800d7ef0)($t9)
    addiu   $at, $zero, Track_5
    lui     $a1, %hi(Unknown_0x801c1a38)
    beq     $t9, $at, branch_0x80071b4c
    addiu   $a1, $a1, %lo(Unknown_0x801c1a38)

    lw      $t6, 0x550($sp)
    lui     $t8, 0xb700
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $s7, 0x4($t6)
    sw      $t8, 0x0($t6)
branch_0x80071b4c:
    lw      $t9, 0x550($sp)
    lui     $a3, 0xb600
    lui     $t7, 0x2
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $t7, 0x4($t9)
    sw      $a3, 0x0($t9)
    lw      $t8, 0x0($a1)
    lui     $a2, 0x801c
    addiu   $a2, $a2, 0x1a3c
    beqzl   $t8, branch_0x80071bc8
    lw      $t9, 0x0($a2)

    lw      $t9, 0x550($sp)
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t9)
    sw      $s1, 0x0($t9)
    lw      $t7, 0x550($sp)
    lui     $t9, 0xc811
    ori     $t9, $t9, 0x2078
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $t9, 0x4($t7)
    sw      $t2, 0x0($t7)
    lw      $t6, 0x550($sp)
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $ra, 0x0($t6)
    lw      $t8, 0x0($a1)
    sw      $t8, 0x4($t6)
    lw      $t9, 0x0($a2)
branch_0x80071bc8:
    beqzl   $t9, branch_0x80071c28
    lw      $t7, 0x550($sp)

    lw      $t6, 0x550($sp)
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $s7, 0x4($t6)
    sw      $a3, 0x0($t6)
    lw      $t8, 0x550($sp)
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $t6, 0x550($sp)
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $t3, 0x4($t6)
    sw      $t2, 0x0($t6)
    lw      $t8, 0x550($sp)
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $ra, 0x0($t8)
    lw      $t6, 0x0($a2)
    sw      $t6, 0x4($t8)
    lw      $t7, 0x550($sp)
branch_0x80071c28:
    lui     $t9, 0xb700
    lui     $a2, 0x801c
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $s7, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t6, 0x550($sp)
    lui     $t8, 0x1
    addiu   $a2, $a2, 0x1a40
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $t8, 0x4($t6)
    sw      $a3, 0x0($t6)
    lw      $t9, 0x550($sp)
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $zero, 0x4($t9)
    sw      $s1, 0x0($t9)
    lw      $t7, 0x550($sp)
    lui     $t9, 0xba00
    ori     $t9, $t9, 0x1402
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $zero, 0x4($t7)
    sw      $t9, 0x0($t7)
    lw      $t6, 0x0($a2)
    beqz    $t6, branch_0x80071ccc
    nop

    lw      $t7, 0x550($sp)
    lui     $t9, 0x44
    ori     $t9, $t9, 0x2078
    addiu   $t8, $t7, 0x8
    sw      $t8, 0x550($sp)
    sw      $t9, 0x4($t7)
    sw      $t2, 0x0($t7)
    lw      $t6, 0x550($sp)
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $ra, 0x0($t6)
    lw      $t8, 0x0($a2)
    sw      $t8, 0x4($t6)
branch_0x80071ccc:
    lui     $a2, %hi(Unknown_0x801c1a44)
    addiu   $a2, $a2, %lo(Unknown_0x801c1a44)
    lw      $t9, 0x0($a2)
    beqzl   $t9, branch_0x80071d40
    lw      $t8, 0x0($s5)
    lw      $t6, 0x550($sp)
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $s7, 0x4($t6)
    sw      $a3, 0x0($t6)
    lw      $t8, 0x550($sp)
    addiu   $t9, $t8, 0x8
    sw      $t9, 0x550($sp)
    sw      $zero, 0x4($t8)
    sw      $s1, 0x0($t8)
    lw      $t6, 0x550($sp)
    lui     $t8, 0x40
    ori     $t8, $t8, 0x49d8
    addiu   $t7, $t6, 0x8
    sw      $t7, 0x550($sp)
    sw      $t8, 0x4($t6)
    sw      $t2, 0x0($t6)
    lw      $t9, 0x550($sp)
    addiu   $t6, $t9, 0x8
    sw      $t6, 0x550($sp)
    sw      $ra, 0x0($t9)
    lw      $t7, 0x0($a2)
    sw      $t7, 0x4($t9)
    lw      $t8, 0x0($s5)
branch_0x80071d40:
    addiu   $at, $zero, 0x1
    bne     $t8, $at, branch_0x80071d70
    lui     $t9, %hi(TrackNr_0x800d7ef0)

    lw      $t9, %lo(TrackNr_0x800d7ef0)($t9)
    addiu   $at, $zero, Track_6
    addiu   $s0, $sp, 0x550
    bnel    $t9, $at, branch_0x80071d74
    addiu   $s0, $sp, 0x550

    jal     Function_0x8006cb38
    or      $a0, $s0, $zero
    jal     Function_0x8006cd88
    or      $a0, $s0, $zero
branch_0x80071d70:
    addiu   $s0, $sp, 0x550
branch_0x80071d74:
    jal     Function_0x8006cfd4
    or      $a0, $s0, $zero
    jal     Function_0x800b485c
    or      $a0, $s0, $zero
    lui     $t6, %hi(Unknown_0x801ce380)
    lw      $t6, %lo(Unknown_0x801ce380)($t6)
    addiu   $at, $zero, 0xb
    bne     $t6, $at, branch_0x80071da0
    nop
    jal     Function_0x8006d434
    or      $a0, $s0, $zero
branch_0x80071da0:
    lui     $t7, %hi(Unknown_0x800d51d0)
    lw      $t7, %lo(Unknown_0x800d51d0)($t7)
    beqzl   $t7, branch_0x80071dbc
    lw      $t8, 0x550($sp)

    jal     Function_0x8006dfbc
    or      $a0, $s0, $zero
    lw      $t8, 0x550($sp)

branch_0x80071dbc:
    lw      $t9, 0x5f0($sp)
    sw      $t8, 0x0($t9)
    lw      $ra, 0x7c($sp)
    lw      $fp, 0x78($sp)
    lw      $s7, 0x74($sp)
    lw      $s6, 0x70($sp)
    lw      $s5, 0x6c($sp)
    lw      $s4, 0x68($sp)
    lw      $s3, 0x64($sp)
    lw      $s2, 0x60($sp)
    lw      $s1, 0x5c($sp)
    lw      $s0, 0x58($sp)
    ldc1    $f26, 0x50($sp)
    ldc1    $f24, 0x48($sp)
    ldc1    $f22, 0x40($sp)
    ldc1    $f20, 0x38($sp)
    jr      $ra
    addiu   $sp, $sp, 0x5f0

