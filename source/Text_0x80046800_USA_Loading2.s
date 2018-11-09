
.globl Function_0x80093e64
Function_0x80093e64: # 0x80093e64
    addiu   $sp, $sp, 0xffd8
    lui     $v0, %hi(Unknown_0x800da8b8)
    sw      $ra, 0x14($sp)
    or      $a2, $a0, $zero
    or      $a3, $a1, $zero
    addiu   $v0, $v0, %lo(Unknown_0x800da8b8)
    or      $v1, $zero, $zero
branch_0x80093e80:
    lh      $t6, 0x0($v0)
    beqzl   $t6, branch_0x80093ea0
    addiu   $at, $zero, 0x5
    addiu   $v1, $v1, 0x1
    slti    $at, $v1, 0x5
    bnez    $at, branch_0x80093e80
    addiu   $v0, $v0, 0x8
    addiu   $at, $zero, 0x5

branch_0x80093ea0:
    beq     $v1, $at, branch_0x80093f60
    addiu   $a1, $zero, 0x1
    bne     $a3, $a1, branch_0x80093ec8
    sh      $a1, 0x0($v0)
    sll     $a0, $a2, 2
    lui     $t7, %hi(FileListList_TrackObjects1)
    addu    $t7, $t7, $a0
    lw      $t7, %lo(FileListList_TrackObjects1)($t7)
    b       branch_0x80093edc
    sw      $t7, 0x4($v0)
branch_0x80093ec8:
    sll     $a0, $a2, 2
    lui     $t8, %hi(FileListList_TrackObjects2)
    addu    $t8, $t8, $a0
    lw      $t8, %lo(FileListList_TrackObjects2)($t8)
    sw      $t8, 0x4($v0)
branch_0x80093edc:
    sw      $a0, 0x18($sp)
    jal     Function_0x80097c08
    sw      $a3, 0x2c($sp)
    lui     $v0, %hi(Unknown_0x800da8b8)
    lui     $v1, %hi(Unknown_0x800da8e0)
    lw      $a0, 0x18($sp)
    addiu   $a1, $zero, 0x1
    lw      $a3, 0x2c($sp)
    addiu   $v1, $v1, %lo(Unknown_0x800da8e0)
    addiu   $v0, $v0, %lo(Unknown_0x800da8b8)
    lh      $t9, 0x0($v0)
branch_0x80093f08:
    beqz    $t9, branch_0x80093f1c
    nop

    addiu   $v0, $v0, 0x8
    bnel    $v0, $v1, branch_0x80093f08
    lh      $t9, 0x0($v0)

branch_0x80093f1c:
    lui     $t0, %hi(Unknown_0x800da8e0)
    addiu   $t0, $t0, %lo(Unknown_0x800da8e0)
    beql    $v0, $t0, branch_0x80093f64
    lw      $ra, 0x14($sp)

    bne     $a3, $a1, branch_0x80093f48 # a3 != 1
    sh      $a1, 0x0($v0)

    lui     $t1, %hi(FileListList_TrackFiles)
    addu    $t1, $t1, $a0
    lw      $t1, %lo(FileListList_TrackFiles)($t1)
    b       branch_0x80093f58
    sw      $t1, 0x4($v0)

branch_0x80093f48:
    lui     $t2, %hi(FileListList_0x800DC294)
    addu    $t2, $t2, $a0
    lw      $t2, %lo(FileListList_0x800DC294)($t2)
    sw      $t2, 0x4($v0)

branch_0x80093f58:
    jal     Function_0x80097c08
    nop
branch_0x80093f60:
    lw      $ra, 0x14($sp)

branch_0x80093f64:
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop


.globl Function_0x80093f70
Function_0x80093f70: # 0x80093f70
    lb      $v0, 0x0($a0)
    or      $v1, $zero, $zero
    addiu   $a0, $a0, 0x1
    beqz    $v0, branch_0x80093f98
    nop
    lb      $v0, 0x0($a0)
branch_0x80093f88:
    addiu   $v1, $v1, 0x1
    addiu   $a0, $a0, 0x1
    bnezl   $v0, branch_0x80093f88
    lb      $v0, 0x0($a0)
branch_0x80093f98:
    jr      $ra
    or      $v0, $v1, $zero


.globl Function_0x80093fa0
Function_0x80093fa0: # 0x80093fa0
    addiu   $sp, $sp, 0xffa0
    sw      $s5, 0x34($sp)
    or      $s5, $a0, $zero
    sw      $ra, 0x44($sp)
    sw      $fp, 0x40($sp)
    sw      $s7, 0x3c($sp)
    sw      $s6, 0x38($sp)
    sw      $s4, 0x30($sp)
    sw      $s3, 0x2c($sp)
    sw      $s2, 0x28($sp)
    sw      $s1, 0x24($sp)
    sw      $s0, 0x20($sp)
    sw      $a1, 0x64($sp)
    addiu   $v0, $zero, 0xc
    bnez    $a1, branch_0x80093fe4
    or      $t6, $a1, $zero
    addiu   $v0, $zero, 0x12
branch_0x80093fe4:
    sll     $t7, $v0, 2
    lui     $fp, %hi(Unknown_0x800EA9D4)
    or      $s0, $a2, $zero
    addiu   $fp, $fp, %lo(Unknown_0x800EA9D4)
    addu    $s2, $t7, $a3
    or      $s1, $zero, $zero
    subu    $s6, $zero, $v0
    lw      $s7, 0x70($sp)
    addiu   $s4, $zero, 0xa
    addiu   $s3, $sp, 0x50
branch_0x8009400c:
    div     $zero, $s0, $s4
    mfhi    $a2
    or      $a0, $s3, $zero
    or      $a1, $fp, $zero
    bnez    $s4, branch_0x80094028
    nop
    break   0x7
branch_0x80094028:
    addiu   $at, $zero, 0xffff
    bne     $s4, $at, branch_0x80094040
    lui     $at, 0x8000
    bne     $s0, $at, branch_0x80094040
    nop
    break   0x6
branch_0x80094040:
    jal     Function_0x800c9f70
    nop
    or      $a0, $s5, $zero
    lw      $a1, 0x64($sp)
    or      $a2, $s3, $zero
    or      $a3, $s2, $zero
    jal     Function_0x801e95e0
    sw      $s7, 0x10($sp)
    div     $zero, $s0, $s4
    addiu   $s1, $s1, 0x1
    addu    $s2, $s2, $s6
    or      $s5, $v0, $zero
    bnez    $s4, branch_0x8009407c
    nop
    break   0x7
branch_0x8009407c:
    addiu   $at, $zero, 0xffff
    bne     $s4, $at, branch_0x80094094
    lui     $at, 0x8000
    bne     $s0, $at, branch_0x80094094
    nop
    break   0x6
branch_0x80094094:
    addiu   $at, $zero, 0x5
    mflo    $s0
    bne     $s1, $at, branch_0x8009400c
    nop
    lw      $ra, 0x44($sp)
    or      $v0, $s5, $zero
    lw      $s5, 0x34($sp)
    lw      $s0, 0x20($sp)
    lw      $s1, 0x24($sp)
    lw      $s2, 0x28($sp)
    lw      $s3, 0x2c($sp)
    lw      $s4, 0x30($sp)
    lw      $s6, 0x38($sp)
    lw      $s7, 0x3c($sp)
    lw      $fp, 0x40($sp)
    jr      $ra
    addiu   $sp, $sp, 0x60


.globl Function_0x800940d8
Function_0x800940d8: # 0x800940d8
    addiu   $sp, $sp, 0xff58
    sw      $s0, 0x8($sp)
    or      $s0, $a0, $zero
    sw      $s3, 0x14($sp)
    sw      $s2, 0x10($sp)
    beqz    $a1, branch_0x80094120
    sw      $s1, 0xc($sp)

    addiu   $at, $zero, 0x1
    beq     $a1, $at, branch_0x8009424c
    lw      $t0, 0xb8($sp)
    addiu   $at, $zero, 0x2
    beq     $a1, $at, branch_0x800941bc
    lw      $t0, 0xb8($sp)
    lw      $t1, 0xbc($sp)
    lw      $t0, 0xb8($sp)
    lw      $a1, 0x90($sp)
    b       branch_0x800942dc
    lw      $a0, 0x98($sp)
branch_0x80094120:
    lw      $t0, 0xb8($sp)
    addiu   $t6, $zero, 0x4
    sw      $t6, 0xa0($sp)
    lui     $t6, 0x4
    div     $zero, $t6, $t0
    lui     $t7, 0x105
    addiu   $t7, $t7, 0x15a8
    sw      $t7, 0x80($sp)
    lw      $t1, 0xbc($sp)
    li      $t7, 0x8000
    mflo    $a1
    addiu   $t8, $zero, 0x100
    sw      $t8, 0x98($sp)
    div     $zero, $t7, $t1
    addiu   $t9, $zero, 0x8
    mflo    $t8
    sw      $t9, 0x94($sp)
    bnez    $t0, branch_0x80094170
    nop
    break   0x7
branch_0x80094170:
    addiu   $at, $zero, 0xffff
    bne     $t0, $at, branch_0x80094188
    lui     $at, 0x8000
    bne     $t6, $at, branch_0x80094188
    nop
    break   0x6
branch_0x80094188:
    sw      $t8, 0x8c($sp)
    bnez    $t1, branch_0x80094198
    nop
    break   0x7
branch_0x80094198:
    addiu   $at, $zero, 0xffff
    bne     $t1, $at, branch_0x800941b0
    lui     $at, 0x8000
    bne     $t7, $at, branch_0x800941b0
    nop
    break   0x6
branch_0x800941b0:
    addiu   $a0, $zero, 0x100
    b       branch_0x800942e0
    slti    $at, $a2, 0x140
branch_0x800941bc:
    lui     $t8, 0x4
    div     $zero, $t8, $t0
    addiu   $t9, $zero, 0x4
    sw      $t9, 0xa0($sp)
    lw      $t1, 0xbc($sp)
    li      $t9, 0x8000
    mflo    $a1
    lui     $t6, 0x105
    addiu   $t6, $t6, 0x65b8
    div     $zero, $t9, $t1
    sw      $t6, 0x80($sp)
    addiu   $t7, $zero, 0x8
    mflo    $t6
    addiu   $a0, $zero, 0x100
    sw      $t7, 0x94($sp)
    bnez    $t0, branch_0x80094204
    nop
    break   0x7
branch_0x80094204:
    addiu   $at, $zero, 0xffff
    bne     $t0, $at, branch_0x8009421c
    lui     $at, 0x8000
    bne     $t8, $at, branch_0x8009421c
    nop
    break   0x6
branch_0x8009421c:
    sw      $t6, 0x8c($sp)
    bnez    $t1, branch_0x8009422c
    nop
    break   0x7
branch_0x8009422c:
    addiu   $at, $zero, 0xffff
    bne     $t1, $at, branch_0x80094244
    lui     $at, 0x8000
    bne     $t9, $at, branch_0x80094244
    nop
    break   0x6
branch_0x80094244:
    b       branch_0x800942e0
    slti    $at, $a2, 0x140
branch_0x8009424c:
    addiu   $t7, $zero, 0x1
    sw      $t7, 0xa0($sp)
    lui     $t7, 0x1
    div     $zero, $t7, $t0
    lui     $t8, 0x105
    addiu   $t8, $t8, 0x55b0
    sw      $t8, 0x80($sp)
    lw      $t1, 0xbc($sp)
    li      $t8, 0x8000
    mflo    $a1
    addiu   $t9, $zero, 0x40
    sw      $t9, 0x98($sp)
    div     $zero, $t8, $t1
    mflo    $t9
    addiu   $t6, $zero, 0x20
    sw      $t6, 0x94($sp)
    bnez    $t0, branch_0x80094298
    nop
    break   0x7
branch_0x80094298:
    addiu   $at, $zero, 0xffff
    bne     $t0, $at, branch_0x800942b0
    lui     $at, 0x8000
    bne     $t7, $at, branch_0x800942b0
    nop
    break   0x6
branch_0x800942b0:
    sw      $t9, 0x8c($sp)
    addiu   $a0, $zero, 0x40
    bnez    $t1, branch_0x800942c4
    nop
    break   0x7
branch_0x800942c4:
    addiu   $at, $zero, 0xffff
    bne     $t1, $at, branch_0x800942dc
    lui     $at, 0x8000
    bne     $t8, $at, branch_0x800942dc
    nop
    break   0x6
branch_0x800942dc:
    slti    $at, $a2, 0x140
branch_0x800942e0:
    bnez    $at, branch_0x800942f0
    addiu   $v0, $zero, 0x1
    b       branch_0x80094320
    or      $v0, $zero, $zero
branch_0x800942f0:
    addu    $t6, $a2, $t0
    bgez    $t6, branch_0x80094304
    slti    $at, $a3, 0xf0
    b       branch_0x80094320
    or      $v0, $zero, $zero
branch_0x80094304:
    bnez    $at, branch_0x80094314
    addu    $t7, $a3, $t1
    b       branch_0x80094320
    or      $v0, $zero, $zero
branch_0x80094314:
    bgez    $t7, branch_0x80094320
    nop
    or      $v0, $zero, $zero
branch_0x80094320:
    bnez    $v0, branch_0x80094330
    lw      $t8, 0xa0($sp)
    b       branch_0x80094664
    or      $v0, $s0, $zero
branch_0x80094330:
    blez    $t8, branch_0x80094660
    or      $t2, $zero, $zero
    mtc1    $t8, $t2
    lw      $t9, 0x94($sp)
    mtc1    $t1, $a2
    cvt.s.w $f16, $f10
    multu   $a0, $t9
    mtc1    $a3, $a0
    sll     $v1, $a0, 1
    addiu   $t6, $v1, 0x7
    cvt.s.w $f8, $f6
    sra     $t7, $t6, 3
    andi    $t8, $t7, 0x1ff
    sll     $t6, $t8, 9
    addiu   $t8, $a0, 0xffff
    cvt.s.w $f0, $f4
    mflo    $v0
    addu    $s1, $a2, $t0
    or      $t4, $zero, $zero
    addiu   $t5, $v0, 0xffff
    div.s   $f2, $f8, $f16
    bgez    $v1, branch_0x80094394
    sra     $t3, $v1, 3
    addiu   $at, $v1, 0x7
    sra     $t3, $at, 3
branch_0x80094394:
    lui     $at, 0xf510
    or      $t7, $t6, $at
    sw      $t7, 0x2c($sp)
    sll     $t6, $t8, 2
    andi    $t7, $t6, 0xfff
    sll     $t8, $t7, 12
    addiu   $t6, $t9, 0xffff
    sll     $t7, $t6, 2
    andi    $t9, $t7, 0xfff
    or      $t6, $t8, $t9
    sll     $t8, $a1, 1
    sllv    $s3, $a2, $t8
    lw      $t8, 0x8c($sp)
    sll     $t7, $s1, 2
    sra     $t9, $s3, 7
    or      $s1, $t7, $zero
    or      $s3, $t9, $zero
    sw      $t6, 0x28($sp)
    sll     $t7, $a1, 16
    andi    $t9, $t8, 0xffff
    lui     $at, 0x4080
    mtc1    $at, $t6
    or      $t6, $t7, $t9
    sll     $s2, $a2, 2
    sw      $t6, 0x18($sp)
    sw      $a0, 0x98($sp)
    or      $v0, $s0, $zero
branch_0x80094400:
    lui     $t8, 0xfd10
    sw      $t8, 0x0($v0)
    lw      $t9, 0x80($sp)
    sll     $t7, $t4, 1
    addiu   $s0, $s0, 0x8
    addu    $t6, $t7, $t9
    sw      $t6, 0x4($v0)
    or      $v1, $s0, $zero
    addiu   $s0, $s0, 0x8
    lui     $t7, 0x708
    ori     $t7, $t7, 0x200
    or      $v0, $s0, $zero
    lui     $t8, 0xf510
    sw      $t8, 0x0($v1)
    sw      $t7, 0x4($v1)
    addiu   $s0, $s0, 0x8
    lui     $t9, 0xe600
    sw      $t9, 0x0($v0)
    or      $t0, $s0, $zero
    sw      $zero, 0x4($v0)
    lui     $t6, 0xf300
    slti    $at, $t5, 0x7ff
    sw      $t6, 0x0($t0)
    beqz    $at, branch_0x8009446c
    addiu   $s0, $s0, 0x8
    b       branch_0x80094470
    or      $a3, $t5, $zero
branch_0x8009446c:
    addiu   $a3, $zero, 0x7ff
branch_0x80094470:
    bgtz    $t3, branch_0x80094480
    or      $v1, $s0, $zero
    b       branch_0x80094484
    addiu   $a2, $zero, 0x1
branch_0x80094480:
    or      $a2, $t3, $zero
branch_0x80094484:
    bgtz    $t3, branch_0x80094494
    addiu   $t8, $a2, 0x7ff
    b       branch_0x80094498
    addiu   $v0, $zero, 0x1
branch_0x80094494:
    or      $v0, $t3, $zero
branch_0x80094498:
    div     $zero, $t8, $v0
    bnez    $v0, branch_0x800944a8
    nop
    break   0x7
branch_0x800944a8:
    addiu   $at, $zero, 0xffff
    bne     $v0, $at, branch_0x800944c0
    lui     $at, 0x8000
    bne     $t8, $at, branch_0x800944c0
    nop
    break   0x6
branch_0x800944c0:
    mflo    $t7
    andi    $t9, $t7, 0xfff
    lui     $at, 0x700
    andi    $t8, $a3, 0xfff
    sll     $t7, $t8, 12
    or      $t6, $t9, $at
    or      $t9, $t6, $t7
    sw      $t9, 0x4($t0)
    lui     $t8, 0xe700
    sw      $t8, 0x0($v1)
    sw      $zero, 0x4($v1)
    addiu   $s0, $s0, 0x8
    lw      $t6, 0x2c($sp)
    or      $a0, $s0, $zero
    lui     $t7, 0x8
    ori     $t7, $t7, 0x200
    addiu   $s0, $s0, 0x8
    or      $a1, $s0, $zero
    sw      $t7, 0x4($a0)
    lui     $t9, 0xf200
    sw      $t6, 0x0($a0)
    sw      $t9, 0x0($a1)
    lw      $t8, 0x28($sp)
    addiu   $s0, $s0, 0x8
    or      $t1, $s0, $zero
    addiu   $s0, $s0, 0x8
    blez    $s1, branch_0x80094538
    sw      $t8, 0x4($a1)
    b       branch_0x8009453c
    or      $a2, $s1, $zero
branch_0x80094538:
    or      $a2, $zero, $zero
branch_0x8009453c:
    mtc1    $t2, $s2
    andi    $t8, $a2, 0xfff
    or      $a1, $s0, $zero
    cvt.s.w $f4, $f18
    addiu   $s0, $s0, 0x8
    sll     $t6, $t8, 12
    or      $a2, $zero, $zero
    lui     $at, 0xe400
    or      $v0, $zero, $zero
    mul.s   $f6, $f2, $f4
    add.s   $f12, $f0, $f6
    add.s   $f10, $f12, $f2
    mul.s   $f8, $f10, $f14
    trunc.w.s   $f16, $f8
    mul.s   $f18, $f12, $f14
    mfc1    $v1, $s0
    nop
    blez    $v1, branch_0x80094590
    trunc.w.s   $f4, $f18
    b       branch_0x80094590
    or      $v0, $v1, $zero
branch_0x80094590:
    andi    $t7, $v0, 0xfff
    or      $t9, $t7, $at
    or      $t7, $t9, $t6
    blez    $s2, branch_0x800945ac
    sw      $t7, 0x0($t1)
    b       branch_0x800945ac
    or      $a2, $s2, $zero
branch_0x800945ac:
    mfc1    $a0, $a0
    andi    $t6, $a2, 0xfff
    sll     $t7, $t6, 12
    blez    $a0, branch_0x800945c8
    lui     $t6, 0xb300
    b       branch_0x800945cc
    or      $v0, $a0, $zero
branch_0x800945c8:
    or      $v0, $zero, $zero
branch_0x800945cc:
    andi    $t9, $v0, 0xfff
    or      $t8, $t9, $t7
    sw      $t8, 0x4($t1)
    bgez    $s3, branch_0x800945e8
    sw      $t6, 0x0($a1)
    b       branch_0x800945ec
    or      $a2, $s3, $zero
branch_0x800945e8:
    or      $a2, $zero, $zero
branch_0x800945ec:
    lw      $t9, 0x8c($sp)
    or      $v0, $zero, $zero
    multu   $a0, $t9
    mflo    $v1
    sra     $t7, $v1, 7
    bgez    $t7, branch_0x80094610
    or      $v1, $s0, $zero
    b       branch_0x80094610
    or      $v0, $t7, $zero
branch_0x80094610:
    subu    $t8, $zero, $v0
    andi    $t6, $t8, 0xffff
    subu    $t7, $zero, $a2
    sll     $t8, $t7, 16
    or      $t9, $t6, $t8
    sw      $t9, 0x4($a1)
    lui     $t7, 0xb200
    sw      $t7, 0x0($v1)
    lw      $t6, 0x18($sp)
    addiu   $t2, $t2, 0x1
    addiu   $s0, $s0, 0x8
    sw      $t6, 0x4($v1)
    lw      $t9, 0x94($sp)
    lw      $t8, 0x98($sp)
    lw      $t6, 0xa0($sp)
    multu   $t8, $t9
    mflo    $t7
    addu    $t4, $t4, $t7
    bnel    $t2, $t6, branch_0x80094400
    or      $v0, $s0, $zero
branch_0x80094660:
    or      $v0, $s0, $zero
branch_0x80094664:
    lw      $s0, 0x8($sp)
    lw      $s1, 0xc($sp)
    lw      $s2, 0x10($sp)
    lw      $s3, 0x14($sp)
    jr      $ra
    addiu   $sp, $sp, 0xa8


/* Input:
a1: Track_#
*/
.globl Function_0x8009467c
Function_0x8009467c: # 0x8009467c
    sll     $t6, $a0, 2
    subu    $t6, $t6, $a0
    sll     $t6, $t6, 2
    lui     $v0, %hi(Unknown_0x801cb068)
    addu    $v0, $v0, $t6
    lw      $v0, %lo(Unknown_0x801cb068)($v0)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    beqz    $v0, branch_0x800946d0
    lui     $t7, 0x801d
    addiu   $v1, $zero, 0x1
    beq     $v0, $v1, branch_0x8009470c
    lui     $at, 0x801d
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x80094718
    addiu   $a0, $zero, 0x28
    addiu   $at, $zero, 0x3
    beq     $v0, $at, branch_0x80094724
    nop
    b       branch_0x80094744
    lw      $a0, 0x1c($sp)
branch_0x800946d0:
    lh      $t7, -0x1c94($t7)
    addiu   $v1, $zero, 0x1
    lui     $at, 0x801d
    bne     $v1, $t7, branch_0x800946f8
    sw      $zero, -0x1ca0($at)
    sll     $t8, $a1, 1
    lui     $a0, %hi(Unknown_0x800ea94c)
    addu    $a0, $a0, $t8
    b       branch_0x80094744
    lh      $a0, %lo(Unknown_0x800ea94c)($a0)
branch_0x800946f8:
    sll     $t9, $a1, 1
    lui     $a0, %hi(Unkown_800EA960)
    addu    $a0, $a0, $t9
    b       branch_0x80094744
    lh      $a0, %lo(Unkown_800EA960)($a0)
branch_0x8009470c:
    sw      $v1, -0x1ca0($at)
    b       branch_0x80094744
    addiu   $a0, $zero, 0xa
branch_0x80094718:
    lui     $at, 0x801d
    b       branch_0x80094744
    sw      $v1, -0x1ca0($at)
branch_0x80094724:
    lui     $at, 0x801d
    jal     Function_0x80047df0
    sw      $v1, -0x1ca0($at)
    addiu   $at, $zero, 0x1f
    divu    $zero, $v0, $at
    mfhi    $a0
    addiu   $a0, $a0, 0xa
    nop
branch_0x80094744:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    or      $v0, $a0, $zero
    jr      $ra
    nop


/* Input:
a1: TrackNr

Output:
v0:
*/
.globl Function_0x80094758
Function_0x80094758: # 0x80094758
    lui     $t7, %hi(0x106f8a0)
    sll     $t9, $a1, 2
    addiu   $t7, $t7, %lo(0x106f8a0)
    lui     $t6, %hi(0x6000000)
    subu    $t9, $t9, $a1
    lui     $t1, %hi(Unknown_0x800da7d8)
    sw      $t6, 0x0($a0)
    sw      $t7, 0x4($a0)
    addiu   $a3, $a0, 0x8
    addiu   $t1, $t1, %lo(Unknown_0x800da7d8)
    sll     $t9, $t9, 1
    lui     $t8, %hi(0xfa000000)
    sw      $t8, 0x0($a3)
    addu    $v1, $t9, $t1
    lhu     $t5, 0x2($v1)
    lhu     $t3, 0x0($v1)
    lhu     $t9, 0x4($v1)
    andi    $t6, $t5, 0xff
    sll     $t7, $t6, 16
    sll     $t4, $t3, 24
    andi    $t1, $t9, 0xff
    sll     $t2, $t1, 8
    or      $t8, $t4, $t7
    or      $t3, $t8, $t2
    ori     $t5, $t3, 0xff
    addiu   $t0, $a3, 0x8
    lui     $t4, %hi(0x20050)
    lui     $t6, %hi(0xf64cc36c)
    sw      $t5, 0x4($a3)
    ori     $t6, $t6, %lo(0xf64cc36c)
    ori     $t4, $t4, %lo(0x20050)
    sw      $t4, 0x4($t0)
    sw      $t6, 0x0($t0)
    jr      $ra
    addiu   $v0, $t0, 0x8


.globl Function_0x800947e4
Function_0x800947e4: # 0x800947e4
    bltz    $a1, branch_0x800947f8
    lui     $t1, 0xbf00
    slti    $at, $a1, 0x9
    bnez    $at, branch_0x800947fc
    nop
branch_0x800947f8:
    or      $a1, $zero, $zero
branch_0x800947fc:
    lui     $t7, 0x107
    addiu   $t7, $t7, 0xf8e8
    lui     $t6, 0x600
    lui     $t8, 0x400
    sw      $t6, 0x0($a0)
    sw      $t7, 0x4($a0)
    addiu   $a2, $a0, 0x8
    ori     $t8, $t8, 0x83f
    sll     $t9, $a1, 2
    lui     $t2, %hi(Unknown_0x800DA810)
    addu    $t2, $t2, $t9
    sw      $t8, 0x0($a2)
    lw      $t2, %lo(Unknown_0x800DA810)($t2)
    addiu   $a3, $a2, 0x8
    addiu   $t0, $a3, 0x8
    sw      $t2, 0x4($a2)
    addiu   $t3, $zero, 0xf05
    sw      $t3, 0x4($a3)
    sw      $t1, 0x0($a3)
    addiu   $t4, $zero, 0xa0f
    sw      $t4, 0x4($t0)
    sw      $t1, 0x0($t0)
    jr      $ra
    addiu   $v0, $t0, 0x8


.globl Function_0x8009485c
Function_0x8009485c: # 0x8009485c
    addiu   $t6, $zero, 0x1
    lui     $at, %hi(Unknown_0x800da88c)
    jr      $ra
    sh      $t6, %lo(Unknown_0x800da88c)($at)


.globl Function_0x8009486c
Function_0x8009486c: # 0x8009486c
    addiu   $sp, $sp, 0xfff0
    lui     $a0, 0x801d
    lui     $t2, %hi(Unknown_0x800ea910)
    sw      $s1, 0xc($sp)
    sw      $s0, 0x8($sp)
    addiu   $t2, $t2, %lo(Unknown_0x800ea910)
    lh      $a0, -0x1c92($a0)
    or      $v1, $zero, $zero
    addiu   $t1, $zero, 0x1
branch_0x80094890:
    blez    $a0, branch_0x80094918
    or      $v0, $zero, $zero
    lui     $a1, %hi(Unknown_0x801c2698_RaceStruct)
    addiu   $a1, $a1, %lo(Unknown_0x801c2698_RaceStruct)
branch_0x800948a0:
    lw      $t6, RaceStruct_4($a1)
    sll     $a2, $v0, 2
    lui     $t7, 0x801d
    bnel    $v1, $t6, branch_0x8009490c
    addiu   $v0, $v0, 0x1
    lw      $t7, -0x4f6c($t7)
    lui     $t6, 0x801d
    addiu   $t6, $t6, 0xb0b0
    sll     $t8, $t7, 4
    addu    $t9, $t8, $a2
    lw      $t8, RaceStruct_2ec($a1)
    lui     $t7, 0x801d
    addiu   $t7, $t7, 0xb0a0
    addu    $t0, $a2, $t7
    beqz    $t8, branch_0x800948e8
    addu    $a3, $t9, $t6
    b       branch_0x800948f8
    sw      $zero, 0x0($a3)
branch_0x800948e8:
    sll     $t9, $v1, 1
    addu    $t6, $t2, $t9
    lh      $t7, 0x0($t6)
    sw      $t7, 0x0($a3)
branch_0x800948f8:
    lw      $t8, 0x0($t0)
    lw      $t9, 0x0($a3)
    addu    $t6, $t8, $t9
    sw      $t6, 0x0($t0)
    addiu   $v0, $v0, 0x1
branch_0x8009490c:
    slt     $at, $v0, $a0
    bnez    $at, branch_0x800948a0
    addiu   $a1, $a1, RaceStruct_378
branch_0x80094918:
    or      $v1, $t1, $zero
    slti    $at, $v1, 0x4
    bnez    $at, branch_0x80094890
    addiu   $t1, $t1, 0x1
    lui     $a2, 0x801d
    addiu   $a2, $a2, 0xe478
    or      $v1, $zero, $zero
    addiu   $t1, $zero, 0x1
branch_0x80094938:
    sw      $v1, 0x0($a2)
    or      $v1, $t1, $zero
    slti    $at, $v1, 0x4
    addiu   $t1, $t1, 0x1
    bnez    $at, branch_0x80094938
    addiu   $a2, $a2, 0x4
    lui     $t4, 0x801d
    addiu   $t4, $t4, 0xe488
    or      $v1, $zero, $zero
    addiu   $t1, $zero, 0x1
    addiu   $t3, $zero, 0x4
branch_0x80094964:
    slti    $at, $t1, 0x4
    beqz    $at, branch_0x80094aa8
    or      $v0, $t1, $zero
    lui     $t7, 0x801d
    lw      $t7, -0x4f6c($t7)
    lui     $t9, 0x801d
    addiu   $t9, $t9, 0xb0b0
    sll     $t8, $t7, 4
    addu    $a1, $t8, $t9
    addiu   $t8, $zero, 0x4
    subu    $a0, $t8, $t1
    lui     $t7, 0x801d
    sll     $t6, $v1, 2
    andi    $v1, $a0, 0x1
    addiu   $t7, $t7, 0xe478
    beqz    $v1, branch_0x800949fc
    addu    $a2, $t6, $t7
    lw      $a3, 0x0($a2)
    sll     $t9, $t1, 2
    addu    $t0, $t9, $t7
    lw      $t2, 0x0($t0)
    sll     $t6, $a3, 2
    addu    $t8, $a1, $t6
    sll     $t7, $t2, 2
    lw      $t9, 0x0($t8)
    addu    $t6, $a1, $t7
    lw      $t8, 0x0($t6)
    or      $a0, $zero, $zero
    addiu   $v0, $t1, 0x1
    slt     $at, $t9, $t8
    beqz    $at, branch_0x800949e8
    nop
    addiu   $a0, $zero, 0x1
branch_0x800949e8:
    beqz    $a0, branch_0x800949f8
    nop
    sw      $t2, 0x0($a2)
    sw      $a3, 0x0($t0)
branch_0x800949f8:
    beq     $v0, $t3, branch_0x80094aa8
branch_0x800949fc:
    lui     $t6, 0x801d
    addiu   $t6, $t6, 0xe478
    sll     $t7, $v0, 2
    addu    $t0, $t7, $t6
    lw      $a3, 0x0($a2)
branch_0x80094a10:
    lw      $t2, 0x0($t0)
    or      $a0, $zero, $zero
    sll     $t9, $a3, 2
    addu    $t8, $a1, $t9
    sll     $t6, $t2, 2
    lw      $t7, 0x0($t8)
    addu    $t9, $a1, $t6
    lw      $t8, 0x0($t9)
    or      $v1, $a3, $zero
    slt     $at, $t7, $t8
    beqzl   $at, branch_0x80094a48
    sltu    $v0, $zero, $a0
    addiu   $a0, $zero, 0x1
    sltu    $v0, $zero, $a0
branch_0x80094a48:
    beqz    $v0, branch_0x80094a60
    or      $a0, $zero, $zero
    sw      $t2, 0x0($a2)
    sw      $a3, 0x0($t0)
    lw      $a3, 0x0($a2)
    or      $v1, $a3, $zero
branch_0x80094a60:
    lw      $t2, 0x4($t0)
    sll     $t6, $v1, 2
    addu    $t9, $a1, $t6
    sll     $t8, $t2, 2
    lw      $t7, 0x0($t9)
    addu    $t6, $a1, $t8
    lw      $t9, 0x0($t6)
    slt     $at, $t7, $t9
    beqz    $at, branch_0x80094a8c
    nop
    addiu   $a0, $zero, 0x1
branch_0x80094a8c:
    beqzl   $a0, branch_0x80094aa0
    addiu   $t0, $t0, 0x8
    sw      $t2, 0x0($a2)
    sw      $a3, 0x4($t0)
    addiu   $t0, $t0, 0x8
branch_0x80094aa0:
    bnel    $t0, $t4, branch_0x80094a10
    lw      $a3, 0x0($a2)
branch_0x80094aa8:
    or      $v1, $t1, $zero
    slti    $at, $v1, 0x3
    bnez    $at, branch_0x80094964
    addiu   $t1, $t1, 0x1
    lui     $a2, %hi(Unknown_0x800da75c)
    addiu   $a2, $a2, %lo(Unknown_0x800da75c)
    or      $v1, $zero, $zero
    addiu   $t1, $zero, 0x1
branch_0x80094ac8:
    sw      $v1, 0x0($a2)
    or      $v1, $t1, $zero
    slti    $at, $v1, 0x4
    addiu   $t1, $t1, 0x1
    bnez    $at, branch_0x80094ac8
    addiu   $a2, $a2, 0x4
    lui     $t2, %hi(Unknown_0x800da76c)
    lui     $a3, %hi(Unknown_0x801c2698_RaceStruct)
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xb0a0
    addiu   $a3, $a3, %lo(Unknown_0x801c2698_RaceStruct)
    addiu   $t2, $t2, %lo(Unknown_0x800da76c)
    or      $v1, $zero, $zero
    addiu   $t1, $zero, 0x1
    addiu   $t0, $zero, 0x378
branch_0x80094b04:
    slti    $at, $t1, 0x4
    beqz    $at, branch_0x80094d20
    or      $v0, $t1, $zero
    addiu   $t7, $zero, 0x4
    subu    $a0, $t7, $t1
    sll     $t8, $v1, 2
    lui     $t6, %hi(Unknown_0x800da75c)
    addiu   $t6, $t6, %lo(Unknown_0x800da75c)
    andi    $v1, $a0, 0x1
    beqz    $v1, branch_0x80094bd4
    addu    $a2, $t8, $t6
    lw      $t4, 0x0($a2)
    sll     $t9, $t1, 2
    addu    $t5, $t9, $t6
    lw      $s0, 0x0($t5)
    sll     $t8, $t4, 2
    addu    $t7, $a1, $t8
    sll     $t6, $s0, 2
    lw      $t9, 0x0($t7)
    addu    $t8, $a1, $t6
    lw      $t7, 0x0($t8)
    or      $a0, $zero, $zero
    addiu   $v0, $t1, 0x1
    bne     $t9, $t7, branch_0x80094b9c
    sll     $t8, $s0, 2
    multu   $s0, $t0
    mflo    $t6
    addu    $t8, $a3, $t6
    lw      $t9, RaceStruct_4($t8)
    multu   $t4, $t0
    mflo    $t7
    addu    $t6, $a3, $t7
    lw      $t8, RaceStruct_4($t6)
    slt     $at, $t9, $t8
    beqz    $at, branch_0x80094bc0
    nop
    b       branch_0x80094bc0
    addiu   $a0, $zero, 0x1
branch_0x80094b9c:
    sll     $t7, $t4, 2
    addu    $t6, $a1, $t7
    lw      $t9, 0x0($t6)
    addu    $t7, $a1, $t8
    lw      $t6, 0x0($t7)
    slt     $at, $t9, $t6
    beqz    $at, branch_0x80094bc0
    nop
    addiu   $a0, $zero, 0x1
branch_0x80094bc0:
    beqz    $a0, branch_0x80094bd0
    nop
    sw      $s0, 0x0($a2)
    sw      $t4, 0x0($t5)
branch_0x80094bd0:
    beq     $v0, $t3, branch_0x80094d20
branch_0x80094bd4:
    lui     $t7, %hi(Unknown_0x800da75c)
    addiu   $t7, $t7, %lo(Unknown_0x800da75c)
    sll     $t8, $v0, 2
    addu    $t5, $t8, $t7
    lw      $t4, 0x0($a2)
branch_0x80094be8:
    lw      $s0, 0x0($t5)
    or      $a0, $zero, $zero
    sll     $t9, $t4, 2
    addu    $t6, $a1, $t9
    sll     $t7, $s0, 2
    lw      $t8, 0x0($t6)
    addu    $t9, $a1, $t7
    lw      $t6, 0x0($t9)
    or      $v1, $t4, $zero
    sll     $t9, $s0, 2
    bnel    $t8, $t6, branch_0x80094c50
    sll     $t6, $t4, 2
    multu   $s0, $t0
    mflo    $t7
    addu    $t9, $a3, $t7
    lw      $t8, RaceStruct_4($t9)
    multu   $t4, $t0
    mflo    $t6
    addu    $t7, $a3, $t6
    lw      $t9, RaceStruct_4($t7)
    slt     $at, $t8, $t9
    beqzl   $at, branch_0x80094c74
    sltu    $v0, $zero, $a0
    b       branch_0x80094c70
    addiu   $a0, $zero, 0x1

.globl Function_0x80094c4c
Function_0x80094c4c: # 0x80094c4c
    sll     $t6, $t4, 2
branch_0x80094c50:
    addu    $t7, $a1, $t6
    lw      $t8, 0x0($t7)
    addu    $t6, $a1, $t9
    lw      $t7, 0x0($t6)
    slt     $at, $t8, $t7
    beqzl   $at, branch_0x80094c74
    sltu    $v0, $zero, $a0
    addiu   $a0, $zero, 0x1
branch_0x80094c70:
    sltu    $v0, $zero, $a0
branch_0x80094c74:
    beqz    $v0, branch_0x80094c8c
    or      $a0, $zero, $zero
    sw      $s0, 0x0($a2)
    sw      $t4, 0x0($t5)
    lw      $t4, 0x0($a2)
    or      $v1, $t4, $zero
branch_0x80094c8c:
    lw      $s1, 0x4($t5)
    sll     $t8, $v1, 2
    addu    $t7, $a1, $t8
    sll     $t9, $s1, 2
    addu    $t6, $a1, $t9
    lw      $s0, 0x0($t6)
    lw      $t9, 0x0($t7)
    or      $v0, $s1, $zero
    bnel    $t9, $s0, branch_0x80094cec
    sll     $t9, $t4, 2
    multu   $v0, $t0
    mflo    $t6
    addu    $t8, $a3, $t6
    lw      $t7, RaceStruct_4($t8)
    multu   $t4, $t0
    mflo    $t9
    addu    $t6, $a3, $t9
    lw      $t8, RaceStruct_4($t6)
    slt     $at, $t7, $t8
    beqz    $at, branch_0x80094d04
    nop
    b       branch_0x80094d04
    addiu   $a0, $zero, 0x1

.globl Function_0x80094ce8
Function_0x80094ce8: # 0x80094ce8
    sll     $t9, $t4, 2
branch_0x80094cec:
    addu    $t6, $a1, $t9
    lw      $t7, 0x0($t6)
    slt     $at, $t7, $s0
    beqz    $at, branch_0x80094d04
    nop
    addiu   $a0, $zero, 0x1
branch_0x80094d04:
    beqzl   $a0, branch_0x80094d18
    addiu   $t5, $t5, 0x8
    sw      $s1, 0x0($a2)
    sw      $t4, 0x4($t5)
    addiu   $t5, $t5, 0x8
branch_0x80094d18:
    bnel    $t5, $t2, branch_0x80094be8
    lw      $t4, 0x0($a2)
branch_0x80094d20:
    or      $v1, $t1, $zero
    slti    $at, $v1, 0x3
    bnez    $at, branch_0x80094b04
    addiu   $t1, $t1, 0x1
    lui     $a0, %hi(Unknown_0x801c2698_RaceStruct)
    addiu   $a0, $a0, %lo(Unknown_0x801c2698_RaceStruct)
    or      $v1, $zero, $zero
    addiu   $t1, $zero, 0x1
branch_0x80094d40:
    lui     $t5, %hi(Unknown_0x800da75c)
    addiu   $t5, $t5, %lo(Unknown_0x800da75c)
    or      $v0, $zero, $zero
branch_0x80094d4c:
    lw      $t8, 0x0($t5)
    beql    $v1, $t8, branch_0x80094d68
    or      $v1, $t1, $zero
    addiu   $v0, $v0, 0x1
    bne     $v0, $t3, branch_0x80094d4c
    addiu   $t5, $t5, 0x4
    or      $v1, $t1, $zero
branch_0x80094d68:
    addiu   $a0, $a0, RaceStruct_378
    sw      $v0, (RaceStruct_338-RaceStruct_378)($a0)
    bne     $t1, $t3, branch_0x80094d40
    addiu   $t1, $t1, 0x1
    lw      $s0, 0x8($sp)
    lw      $s1, 0xc($sp)
    jr      $ra
    addiu   $sp, $sp, 0x10


.globl Function_0x80094d88
Function_0x80094d88: # 0x80094d88
    lui     $v0, %hi(MainState_0x800da8a4)
    addiu   $v0, $v0, %lo(MainState_0x800da8a4)
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x11
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390_MainState)
    sw      $zero, %lo(Unknown_0x801ce390_MainState)($at)
    sw      $zero, 0x0($v0) # MainState_0
    lui     $at, %hi(Unknown_0x801ce398)
    sw      $t7, %lo(Unknown_0x801ce398)($at)
    addiu   $v1, $zero, 0x1
    lui     $at, 0x801d
    sw      $v1, -0x1c64($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, %hi(Unknown_0x800da89c)
    sw      $zero, %lo(Unknown_0x800da89c)($at)
    lui     $at, %hi(Unknown_0x800d439c)
    jr      $ra
    sw      $v1, %lo(Unknown_0x800d439c)($at)

.globl Function_0x80094de4
Function_0x80094de4: # 0x80094de4
    nop
    nop
    nop


.globl Function_0x80094df0_LoadGraphics
Function_0x80094df0_LoadGraphics: # 0x80094df0
    lui     $v0, %hi(MainState_0x800da8a4)
    lw      $v0, %lo(MainState_0x800da8a4)($v0)
    addiu   $sp, $sp, 0xff98
    sw      $ra, 0x14($sp)
    slti    $at, $v0, MainState_65
    or      $a1, $zero, $zero
    or      $a2, $zero, $zero
    bnez    $at, branch_0x80094e28
    or      $t1, $zero, $zero

    addiu   $at, $zero, MainState_66
    beq     $v0, $at, branch_0x800953e8_loadState66
    nop

    b       branch_0x80095430_loadStateDefault
    nop

branch_0x80094e28:
    slti    $at, $v0, MainState_49
    bnez    $at, branch_0x80094e48_StateLt49
    addiu   $t6, $v0, -1

    addiu   $at, $zero, MainState_64
    beq     $v0, $at, branch_0x800952b4
    lui     $t0, %hi(TrackNr_0x800d7ef0)

    b       branch_0x80095430_loadStateDefault
    nop

branch_0x80094e48_StateLt49:
    sltiu   $at, $t6, MainState_48
    beqz    $at, branch_0x80095430_loadStateDefault
    sll     $t6, $t6, 2

    lui     $at, %hi(SwitchTable_0x800EAEB0)
    addu    $at, $at, $t6
    lw      $t6, %lo(SwitchTable_0x800EAEB0)($at)
    jr      $t6
    nop


branch_0x80094e68_loadState5: # 0x80094e68
    lui     $a3, %hi(FileListList_BasicGraphics)
    addiu   $a3, $a3, %lo(FileListList_BasicGraphics)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x3
    b       branch_0x80095430_loadStateDefault
    sw      $a3, 0x48($sp)


branch_0x80094e80_loadState2: # 0x80094e80
    lui     $t0, %hi(TrackNr_0x800d7ef0)
    addiu   $t0, $t0, %lo(TrackNr_0x800d7ef0)
    lw      $a0, 0x0($t0)
    lui     $v1, %hi(Unknown_0x800dc4a8_LoadingStruct)
    addiu   $a1, $zero, 0x1

    bgez    $a0, branch_0x80094ea0
    addiu   $v1, $v1, %lo(Unknown_0x800dc4a8_LoadingStruct)
    or      $a0, $zero, $zero
branch_0x80094ea0:

    slti    $at, $a0, NrOfTracks
    bnez    $at, branch_0x80094eb0
    lui     $t7, %hi(FileListList_TrackFiles)

    addiu   $a0, $zero, 0x8
branch_0x80094eb0:
    sll     $v0, $a0, 2
    addu    $t7, $t7, $v0
    lw      $t7, %lo(FileListList_TrackFiles)($t7)
    lui     $t8, %hi(FileListList_TrackObjects1)
    addu    $t8, $t8, $v0
    sw      $t7, LoadingStruct_TrackFiles($v1)
    lw      $t8, %lo(FileListList_TrackObjects1)($t8)
    lui     $t9, %hi(FileListList_TrackTextures1)
    addu    $t9, $t9, $v0
    sw      $t8, LoadingStruct_c($v1)
    lw      $t9, %lo(FileListList_TrackTextures1)($t9)
    lui     $t2, %hi(FileListList_0x800dbf0c)
    addu    $t2, $t2, $v0
    sw      $t9, LoadingStruct_Textures($v1)
    lw      $t2, %lo(FileListList_0x800dbf0c)($t2)
    lui     $t3, %hi(Unknown_0x80316800_0x23930)
    lui     $at, %hi(Unknown_0x80316800)
    ori     $at, $at, %lo(Unknown_0x80316800)
    addiu   $t3, $t3, %lo(Unknown_0x80316800_0x23930)
    addu    $t4, $t3, $at
    lui     $at, %hi(Unknown_0x801ce6f8)
    sw      $t2, LoadingStruct_14($v1)
    sw      $t4, %lo(Unknown_0x801ce6f8)($at)
    b       branch_0x80095430_loadStateDefault
    sw      $v1, 0x48($sp)


branch_0x80094f14_loadState728: # 0x80094f14
    lui     $t0, %hi(TrackNr_0x800d7ef0)
    addiu   $t0, $t0, %lo(TrackNr_0x800d7ef0)
    lw      $a0, 0x0($t0)
    lui     $v1, %hi(Unknown_0x801ce368)
    addiu   $a1, $zero, 0x1

    bgez    $a0, branch_0x80094f34
    addiu   $v1, $v1, %lo(Unknown_0x801ce368)
    or      $a0, $zero, $zero
branch_0x80094f34:

    slti    $at, $a0, NrOfTracks
    bnezl   $at, branch_0x80094f48
    lh      $t5, Unknown_0x801ce368_4($v1)
    addiu   $a0, $zero, 0x8
    lh      $t5, Unknown_0x801ce368_4($v1)
branch_0x80094f48:

    addiu   $at, $zero, 0x1
    bnel    $t5, $at, branch_0x80094fec
    sll     $v0, $a0, 2

    lw      $v0, Unknown_0x801ce368_0($v1)
    lui     $a3, %hi(Unknown_0x800dc60c)
    lui     $t6, %hi(FileListList_TrackFiles)
    beqz    $v0, branch_0x80094f80
    lui     $t3, %hi(FileListList_TrackTextures1)

    addiu   $at, $zero, 0xb
    beq     $v0, $at, branch_0x80094f88
    lui     $a3, %hi(Unknown_0x800dc630)

    lui     $a3, %hi(Unknown_0x800dc5e8)
    b       branch_0x80094f8c
    addiu   $a3, $a3, %lo(Unknown_0x800dc5e8)

branch_0x80094f80:
    b       branch_0x80094f8c
    addiu   $a3, $a3, %lo(Unknown_0x800dc60c)

branch_0x80094f88:
    addiu   $a3, $a3, %lo(Unknown_0x800dc630)
branch_0x80094f8c:
    sll     $v0, $a0, 2
    addu    $t6, $t6, $v0
    lw      $t6, %lo(FileListList_TrackFiles)($t6)
    lui     $t7, %hi(FileListList_TrackObjects1)
    addu    $t7, $t7, $v0
    sw      $t6, LoadingStruct_TrackFiles($a3)
    lw      $t7, %lo(FileListList_TrackObjects1)($t7)
    addu    $t3, $t3, $v0
    sw      $t7, LoadingStruct_c($a3)
    lw      $t8, 0x0($t0)
    bnezl   $t8, branch_0x80094fdc
    sw      $zero, LoadingStruct_1c($a3)

    lw      $t9, 0x0($v1)
    addiu   $at, $zero, 0x4
    lui     $t2, %hi(Unknown_0x800dc4c8)
    bne     $t9, $at, branch_0x80094fd8
    addiu   $t2, $t2, %lo(Unknown_0x800dc4c8)

    b       branch_0x80094fdc
    sw      $t2, LoadingStruct_1c($a3)

branch_0x80094fd8:
    sw      $zero, LoadingStruct_1c($a3)
branch_0x80094fdc:
    lw      $t3, %lo(FileListList_TrackTextures1)($t3)
    b       branch_0x80095024
    sw      $t3, LoadingStruct_Textures($a3)

# 0x80094fe8
    sll     $v0, $a0, 2
branch_0x80094fec:
    lui     $t4, %hi(FileListList_0x800DC294)
    addu    $t4, $t4, $v0
    lw      $t4, %lo(FileListList_0x800DC294)($t4)
    lui     $v1, %hi(Unknown_0x800dc654)
    addiu   $a3, $v1, %lo(Unknown_0x800dc654)
    lui     $t5, %hi(FileListList_TrackObjects2)
    addu    $t5, $t5, $v0
    sw      $t4, LoadingStruct_TrackFiles($a3)
    lw      $t5, %lo(FileListList_TrackObjects2)($t5)
    lui     $t6, %hi(FileListList_TrackTextures2)
    addu    $t6, $t6, $v0
    sw      $t5, LoadingStruct_c($a3)
    lw      $t6, %lo(FileListList_TrackTextures2)($t6)
    sw      $t6, LoadingStruct_Textures($a3)
branch_0x80095024:
    lui     $t7, %hi(FileListList_0x800dbf0c)
    addu    $t7, $t7, $v0
    lw      $t7, %lo(FileListList_0x800dbf0c)($t7)
    sw      $t7, LoadingStruct_14($a3)
    b       branch_0x80095430_loadStateDefault
    sw      $a3, 0x48($sp)


branch_0x8009503c_loadState2a: # 0x8009503c
    lui     $a3, %hi(Unknown_0x800dc5e8)
    addiu   $a3, $a3, %lo(Unknown_0x800dc5e8)
    b       branch_0x80095430_loadStateDefault
    sw      $a3, 0x48($sp)


branch_0x8009504c_loadState29: # 0x8009504c
    lui     $a3, %hi(Unknown_0x800dc5e8)
    addiu   $a3, $a3, %lo(Unknown_0x800dc5e8)
    b       branch_0x80095430_loadStateDefault
    sw      $a3, 0x48($sp)


branch_0x8009505c_loadStateA: # 0x8009505c
    lui     $t8, %hi(FileListList_TrackTextures1)
    lw      $t8, %lo(FileListList_TrackTextures1)($t8)
    lui     $v0, %hi(Unknown_0x800dc6bc)
    addiu   $v0, $v0, %lo(Unknown_0x800dc6bc)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x2
    sw      $v0, 0x48($sp)
    b       branch_0x80095430_loadStateDefault
    sw      $t8, 0x4($v0)


branch_0x80095080_loadState14: # 0x80095080
    lui     $t0, %hi(TrackNr_0x800d7ef0)
    addiu   $t0, $t0, %lo(TrackNr_0x800d7ef0)
    lw      $a0, 0x0($t0)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1
    bgez    $a0, branch_0x800950a0
    lui     $v0, %hi(Unknown_0x800dc77c)
    or      $a0, $zero, $zero
branch_0x800950a0:
    slti    $at, $a0, NrOfTracks
    bnez    $at, branch_0x800950b0
    addiu   $v0, $v0, %lo(Unknown_0x800dc77c)
    addiu   $a0, $zero, 0x8
branch_0x800950b0:
    sll     $t9, $a0, 2
    lui     $t2, %hi(FileListList_TrackTextures1)
    addu    $t2, $t2, $t9
    lw      $t2, %lo(FileListList_TrackTextures1)($t2)
    sw      $v0, 0x48($sp)
    b       branch_0x80095430_loadStateDefault
    sw      $t2, 0x0($v0)

branch_0x800950cc: # 0x800950cc
    lui     $t0, %hi(TrackNr_0x800d7ef0)
    addiu   $t0, $t0, %lo(TrackNr_0x800d7ef0)
    lw      $a0, 0x0($t0)
    lui     $a3, %hi(Unknown_0x800dc7b8)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1
    bgez    $a0, branch_0x800950f0
    addiu   $a3, $a3, %lo(Unknown_0x800dc7b8)
    or      $a0, $zero, $zero
branch_0x800950f0:
    slti    $at, $a0, NrOfTracks
    bnez    $at, branch_0x80095100
    lui     $t4, %hi(FileListList_TrackTextures1)
    addiu   $a0, $zero, 0x8
branch_0x80095100:
    sll     $t3, $a0, 2
    addu    $t4, $t4, $t3
    lw      $t4, %lo(FileListList_TrackTextures1)($t4)
    lui     $at, %hi(Unknown_0x800dc7bc)
    sw      $a3, 0x48($sp)
    b       branch_0x80095430_loadStateDefault
    sw      $t4, %lo(Unknown_0x800dc7bc)($at)

branch_0x8009511c_loadState32: # 0x8009511c
    lui     $t5, %hi(Unknown_0x801ce394_oldMainState)
    lw      $t5, %lo(Unknown_0x801ce394_oldMainState)($t5)
    addiu   $at, $zero, 0x64
    lui     $t0, %hi(TrackNr_0x800d7ef0)
    beq     $t5, $at, branch_0x80095174
    addiu   $t0, $t0, %lo(TrackNr_0x800d7ef0)
    lw      $a0, 0x0($t0)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1
    bgez    $a0, branch_0x8009514c
    lui     $v0, %hi(Unknown_0x800dc814)
    or      $a0, $zero, $zero
branch_0x8009514c:
    slti    $at, $a0, NrOfTracks
    bnez    $at, branch_0x8009515c
    lui     $t7, %hi(FileListList_TrackTextures1)
    addiu   $a0, $zero, 0x8
branch_0x8009515c:
    sll     $t6, $a0, 2
    addu    $t7, $t7, $t6
    lw      $t7, %lo(FileListList_TrackTextures1)($t7)
    addiu   $v0, $v0, %lo(Unknown_0x800dc814)
    sw      $v0, 0x48($sp)
    sw      $t7, 0x4($v0)
branch_0x80095174:
    b       branch_0x80095430_loadStateDefault
    nop

branch_0x8009517c_loadState1e: # 0x8009517c
    lui     $a0, %hi(Unknown_0x801cb090)
    lw      $a0, %lo(Unknown_0x801cb090)($a0)
    lui     $v1, %hi(Unknown_0x800dc988_LoadingStruct)
    addiu   $a1, $zero, 0x1
    bgez    $a0, branch_0x80095198
    addiu   $v1, $v1, %lo(Unknown_0x800dc988_LoadingStruct)
    or      $a0, $zero, $zero
branch_0x80095198:
    slti    $at, $a0, NrOfTracks
    bnez    $at, branch_0x800951a8
    lui     $t8, %hi(FileListList_TrackFiles)
    addiu   $a0, $zero, 0x8
branch_0x800951a8:
    sll     $v0, $a0, 2
    addu    $t8, $t8, $v0
    lw      $t8, %lo(FileListList_TrackFiles)($t8)
    lui     $t9, %hi(FileListList_TrackObjects1)
    addu    $t9, $t9, $v0
    sw      $t8, LoadingStruct_TrackFiles($v1)
    lw      $t9, %lo(FileListList_TrackObjects1)($t9)
    lui     $t2, %hi(FileListList_TrackTextures1)
    addu    $t2, $t2, $v0
    sw      $t9, LoadingStruct_c($v1)
    lw      $t2, %lo(FileListList_TrackTextures1)($t2)
    lui     $t3, %hi(TrackPreviewFileListList)
    addu    $t3, $t3, $v0
    sw      $t2, LoadingStruct_Textures($v1)
    lw      $t3, %lo(TrackPreviewFileListList)($t3)
    lui     $t4, %hi(FileListList_0x800dbf0c)
    addu    $t4, $t4, $v0
    sw      $t3, LoadingStruct_18($v1)
    lw      $t4, %lo(FileListList_0x800dbf0c)($t4)
    sw      $v1, 0x48($sp)
    b       branch_0x80095430_loadStateDefault
    sw      $t4, LoadingStruct_14($v1)

branch_0x80095200: # 0x80095200
    lui     $a3, %hi(Unknown_0x800dc9cc)
    addiu   $a3, $a3, %lo(Unknown_0x800dc9cc)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1
    b       branch_0x80095430_loadStateDefault
    sw      $a3, 0x48($sp)

branch_0x80095218: # 0x80095218
    lui     $t5, %hi(FileListList_TrackTextures1)
    lw      $t5, %lo(FileListList_TrackTextures1)($t5)
    lui     $v0, %hi(Unknown_0x800dc9f4)
    addiu   $v0, $v0, %lo(Unknown_0x800dc9f4)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1
    sw      $v0, 0x48($sp)
    b       branch_0x80095430_loadStateDefault
    sw      $t5, 0x4($v0)

branch_0x8009523c: # 0x8009523c
    lui     $a3, %hi(Unknown_0x800dca50)
    addiu   $a3, $a3, %lo(Unknown_0x800dca50)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1
    b       branch_0x80095430_loadStateDefault
    sw      $a3, 0x48($sp)

branch_0x80095254: # 0x80095254
    lui     $a3, %hi(Unknown_0x800dca78)
    addiu   $a3, $a3, %lo(Unknown_0x800dca78)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1
    b       branch_0x80095430_loadStateDefault
    sw      $a3, 0x48($sp)

branch_0x8009526c: # 0x8009526c
    lui     $a3, %hi(Unknown_0x800dcac8)
    addiu   $a3, $a3, %lo(Unknown_0x800dcac8)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1
    b       branch_0x80095430_loadStateDefault
    sw      $a3, 0x48($sp)

branch_0x80095284: # 0x80095284
    lui     $a3, %hi(Unknown_0x800dca24)
    addiu   $a3, $a3, %lo(Unknown_0x800dca24)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1
    b       branch_0x80095430_loadStateDefault
    sw      $a3, 0x48($sp)

branch_0x8009529c: # 0x8009529c
    lui     $a3, %hi(Unknown_0x800dcaa0)
    addiu   $a3, $a3, %lo(Unknown_0x800dcaa0)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1
    b       branch_0x80095430_loadStateDefault
    sw      $a3, 0x48($sp)

branch_0x800952b4:
    addiu   $t0, $t0, %lo(TrackNr_0x800d7ef0)
    lw      $a0, 0x0($t0)
    lui     $v1, %hi(Unknown_0x801ce368)
    addiu   $v1, $v1, %lo(Unknown_0x801ce368)
    bgez    $a0, branch_0x800952d0
    lui     $t6, %hi(Unknown_0x801ce394_oldMainState)

    or      $a0, $zero, $zero
branch_0x800952d0:
    slti    $at, $a0, NrOfTracks
    bnez    $at, branch_0x800952e0
    lui     $t8, %hi(FileListList_TrackTextures1)
    addiu   $a0, $zero, 0x8
branch_0x800952e0:
    lw      $v0, 0x0($v1)
    addiu   $at, $zero, 0x4
    sll     $t7, $a0, 2
    bne     $v0, $at, branch_0x80095320
    addu    $t8, $t8, $t7
    lw      $t6, %lo(Unknown_0x801ce394_oldMainState)($t6)
    addiu   $at, $zero, 0x67
    lui     $v0, %hi(Unknown_0x800dc7e8)
    bne     $t6, $at, branch_0x80095310
    addiu   $v0, $v0, %lo(Unknown_0x800dc7e8)
    addiu   $a1, $zero, 0x1
    addiu   $t1, $zero, 0x1
branch_0x80095310:
    lw      $t8, %lo(FileListList_TrackTextures1)($t8)
    sw      $v0, 0x48($sp)
    b       branch_0x80095348
    sw      $t8, 0x0($v0)
branch_0x80095320:
    bnez    $v0, branch_0x80095348
    sll     $t9, $a0, 2
    lui     $t2, %hi(FileListList_TrackTextures1)
    addu    $t2, $t2, $t9
    lw      $t2, %lo(FileListList_TrackTextures1)($t2)
    lui     $v0, %hi(Unknown_0x800dc814)
    addiu   $v0, $v0, %lo(Unknown_0x800dc814)
    addiu   $a1, $zero, 0x1
    sw      $v0, 0x48($sp)
    sw      $t2, 0x4($v0)
branch_0x80095348:
    b       branch_0x80095430_loadStateDefault
    addiu   $a2, $zero, 0x1

branch_0x80095350: # 0x80095350
    lui     $t0, %hi(TrackNr_0x800d7ef0)
    addiu   $t0, $t0, %lo(TrackNr_0x800d7ef0)
    lw      $a0, 0x0($t0)
    lui     $a3, %hi(Unknown_0x800dcb04)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1
    bgez    $a0, branch_0x80095374
    addiu   $a3, $a3, %lo(Unknown_0x800dcb04)
    or      $a0, $zero, $zero
branch_0x80095374:
    slti    $at, $a0, NrOfTracks
    bnez    $at, branch_0x80095384
    lui     $t4, %hi(FileListList_TrackTextures1)

    addiu   $a0, $zero, 0x8
branch_0x80095384:
    sll     $t3, $a0, 2
    addu    $t4, $t4, $t3
    lw      $t4, %lo(FileListList_TrackTextures1)($t4)
    lui     $at, %hi(Unknown_0x800dcb08)
    sw      $a3, 0x48($sp)
    b       branch_0x80095430_loadStateDefault
    sw      $t4, %lo(Unknown_0x800dcb08)($at)

branch_0x800953a0: # 0x800953a0
    lui     $t0, %hi(TrackNr_0x800d7ef0)
    addiu   $t0, $t0, %lo(TrackNr_0x800d7ef0)
    lw      $a0, 0x0($t0)
    lui     $v0, %hi(Unknown_0x800dcb34)
    addiu   $a1, $zero, 0x1
    bgez    $a0, branch_0x800953c0
    addiu   $v0, $v0, %lo(Unknown_0x800dcb34)

    or      $a0, $zero, $zero
branch_0x800953c0:
    slti    $at, $a0, NrOfTracks
    bnez    $at, branch_0x800953d0
    lui     $t6, %hi(FileListList_TrackTextures1)

    addiu   $a0, $zero, 0x8
branch_0x800953d0:
    sll     $t5, $a0, 2
    addu    $t6, $t6, $t5
    lw      $t6, %lo(FileListList_TrackTextures1)($t6)
    sw      $v0, 0x48($sp)
    b       branch_0x80095430_loadStateDefault
    sw      $t6, 0x0($v0)

branch_0x800953e8_loadState66:
    lui     $t0, %hi(TrackNr_0x800d7ef0)
    addiu   $t0, $t0, %lo(TrackNr_0x800d7ef0)
    lw      $a0, 0x0($t0)
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x4
    bgez    $a0, branch_0x80095408
    lui     $v0, %hi(Unknown_0x800dcb80)

    or      $a0, $zero, $zero
branch_0x80095408:
    slti    $at, $a0, NrOfTracks
    bnez    $at, branch_0x80095418
    lui     $t8, %hi(FileListList_TrackTextures1)

    addiu   $a0, $zero, 0x8
branch_0x80095418:
    sll     $t7, $a0, 2
    addu    $t8, $t8, $t7
    lw      $t8, %lo(FileListList_TrackTextures1)($t8)
    addiu   $v0, $v0, %lo(Unknown_0x800dcb80)
    sw      $v0, 0x48($sp)
    sw      $t8, 0xc($v0)


branch_0x80095430_loadStateDefault:
    beqz    $a1, branch_0x800957b8
    lw      $a3, 0x48($sp)

    sll     $t9, $a2, 2
    lui     $t2, %hi(Unknown_0x800dcc04)
    addu    $t2, $t2, $t9
    lw      $a0, %lo(Unknown_0x800dcc04)($t2)
    lui     $v0, %hi(Unknown_0x800d4370)
    addiu   $v0, $v0, %lo(Unknown_0x800d4370)
    sw      $a3, 0x48($sp)
    sw      $t1, 0x50($sp)
    jal     osVirtualToPhysical
    sw      $a0, 0x0($v0)
    lui     $at, 0x801d
    sw      $v0, -0x1bd0($at)

    lui     $at, %hi(Unknown_0x801ce490)
    sw      $zero, %lo(Unknown_0x801ce490)($at)
    lui     $at, 0x801d
    lw      $a3, 0x48($sp)
    sw      $zero, -0x1b6c($at)
    lui     $at, 0x801d
    sw      $zero, -0x1b68($at)
    lw      $t3, LoadingStruct_FileDatas($a3)
    or      $v0, $a3, $zero
    beqz    $t3, branch_0x800954b8
    nop

    lw      $v1, LoadingStruct_FileDatas($a3)
    or      $a0, $v1, $zero
branch_0x8009549c:
    jal     Function_0x800957c8_LoadUncompressFiles
    sw      $v0, 0x18($sp)
    lw      $v0, 0x18($sp)
    lw      $v1, LoadingStruct_4($v0)
    addiu   $v0, $v0, 0x4
    bnezl   $v1, branch_0x8009549c
    or      $a0, $v1, $zero

branch_0x800954b8:
    lui     $t4, %hi(Unknown_0x801ce490)
    lw      $t4, %lo(Unknown_0x801ce490)($t4)
    lui     $a3, %hi(Unknown_0x801ce4c0)
    addiu   $a3, $a3, %lo(Unknown_0x801ce4c0)
    blez    $t4, branch_0x80095724
    lui     $t0, %hi(Unknown_0x801516a4)

    lw      $a0, 0x0($a3)
    addiu   $a2, $zero, 0xffff
    lui     $v0, %hi(Unknown_0x80227820)
    beq     $a2, $a0, branch_0x80095544
    addiu   $v0, $v0, %lo(Unknown_0x80227820)

    lw      $t5, 0x30($v0)
    lw      $t6, 0x34($v0)
    lw      $t7, 0x38($v0)
    lw      $t8, 0x3c($v0)
    lw      $t9, 0x40($v0)
    sll     $t2, $a0, 4
    addu    $t2, $t2, $a0
    sll     $t2, $t2, 2
    addu    $v1, $v0, $t2
    sw      $t5, 0x44($sp)
    sw      $t6, 0x40($sp)
    sw      $t7, 0x3c($sp)
    sw      $t8, 0x38($sp)
    sw      $t9, 0x34($sp)
    lw      $t3, 0x30($v1)
    sw      $t3, 0x30($v0)
    lw      $t4, 0x34($v1)
    sw      $t4, 0x34($v0)
    lw      $t5, 0x38($v1)
    sw      $t5, 0x38($v0)
    lw      $t6, 0x3c($v1)
    sw      $t6, 0x3c($v0)
    lw      $t7, 0x40($v1)
    sw      $t7, 0x40($v0)
branch_0x80095544:
    lw      $a1, 0x4($a3)
    lui     $v0, %hi(Unknown_0x80227820)
    addiu   $v0, $v0, %lo(Unknown_0x80227820)
    beq     $a2, $a1, branch_0x800955ec
    nop

    bnez    $a1, branch_0x800955a4
    sll     $t5, $a1, 4

    beq     $a2, $a0, branch_0x800955a4
    lw      $t8, 0x44($sp)

    lw      $t9, 0x40($sp)
    lui     $at, %hi(Unknown_0x80227894)
    sw      $t8, %lo(Unknown_0x80227894)($at)
    lw      $t2, 0x3c($sp)
    lui     $at, %hi(Unknown_0x80227898)
    sw      $t9, %lo(Unknown_0x80227898)($at)
    lw      $t3, 0x38($sp)
    lui     $at, %hi(Unknown_0x8022789c)
    sw      $t2, %lo(Unknown_0x8022789c)($at)
    lui     $at, %hi(Unknown_0x802278a0)
    lw      $t4, 0x34($sp)
    sw      $t3, %lo(Unknown_0x802278a0)($at)
    lui     $at, %hi(Unknown_0x802278a4)
    b       branch_0x800955ec
    sw      $t4, %lo(Unknown_0x802278a4)($at)

branch_0x800955a4:
    addu    $t5, $t5, $a1
    sll     $t5, $t5, 2
    addu    $v1, $v0, $t5
    lw      $t6, 0x30($v1)
    lui     $at, %hi(Unknown_0x80227894)
    sw      $t6, %lo(Unknown_0x80227894)($at)
    lw      $t7, 0x34($v1)
    lui     $at, %hi(Unknown_0x80227898)
    sw      $t7, %lo(Unknown_0x80227898)($at)
    lw      $t8, 0x38($v1)
    lui     $at, %hi(Unknown_0x8022789c)
    sw      $t8, %lo(Unknown_0x8022789c)($at)
    lw      $t9, 0x3c($v1)
    lui     $at, %hi(Unknown_0x802278a0)
    sw      $t9, %lo(Unknown_0x802278a0)($at)
    lw      $t2, 0x40($v1)
    lui     $at, %hi(Unknown_0x802278a4)
    sw      $t2, %lo(Unknown_0x802278a4)($at)
branch_0x800955ec:
    lui     $t3, %hi(Unknown_0x801ce49c)
    lw      $t3, %lo(Unknown_0x801ce49c)($t3)
    addiu   $at, $zero, 0x4
    lui     $t2, %hi(MainState_0x800da8a4)
    bne     $t3, $at, branch_0x80095634
    lui     $a0, %hi(Unknown_0x800dcc18)
    lw      $t4, 0x94($v0)
    lw      $t5, 0xd8($v0)
    lw      $t6, 0x4($v0)
    lw      $t7, 0xc($v0)
    lw      $t8, 0x48($v0)
    lw      $t9, 0x50($v0)
    sw      $t4, 0x11c($v0)
    sw      $t5, 0x160($v0)
    sw      $t6, 0x8c($v0)
    sw      $t7, 0x94($v0)
    sw      $t8, 0xd0($v0)
    sw      $t9, 0xd8($v0)
branch_0x80095634:
    lw      $t2, %lo(MainState_0x800da8a4)($t2)
    addiu   $at, $zero, MainState_66
    addiu   $a0, $a0, %lo(Unknown_0x800dcc18)
    bne     $t2, $at, branch_0x80095724
    lui     $a1, 0x809

    lui     $t5, %hi(Unknown_0x80227828)
    lw      $t5, %lo(Unknown_0x80227828)($t5)
    lui     $t3, %hi(Unknown_0x800da730)
    lw      $t3, %lo(Unknown_0x800da730)($t3)
    lui     $at, %hi(Unknown_0x801ce700)
    sw      $t5, %lo(Unknown_0x801ce700)($at)
    addiu   $a1, $a1, 0x510
    lui     $at, %hi(Unknown_0x80227828)
    sll     $t4, $t3, 3
    addu    $v0, $a0, $t4
    sw      $a1, %lo(Unknown_0x80227828)($at)
    lw      $t6, 0x0($v0)
    lui     $at, %hi(Unknown_0x8022782c)
    lui     $v1, %hi(Unknown_0x80227864)
    sw      $t6, %lo(Unknown_0x8022782c)($at)
    lw      $t7, 0x4($v0)
    lui     $at, %hi(Unknown_0x80227840)
    addiu   $v1, $v1, %lo(Unknown_0x80227864)
    lui     $t8, %hi(Unknown_0x800da734)
    sw      $t7, %lo(Unknown_0x80227840)($at)
    lw      $t2, 0x8($v1)
    lw      $t8, %lo(Unknown_0x800da734)($t8)
    lui     $at, 0x801d
    sw      $t2, -0x18fc($at)
    sll     $t9, $t8, 3
    addu    $v0, $a0, $t9
    sw      $a1, 0x8($v1)
    lw      $t3, 0x0($v0)
    lui     $t5, %hi(Unknown_0x800da738)
    lw      $t7, 0x4c($v1)
    sw      $t3, 0xc($v1)
    lw      $t4, 0x4($v0)
    lui     $at, 0x801d
    lui     $t2, %hi(Unknown_0x800da73c)
    sw      $t4, 0x20($v1)
    lw      $t5, %lo(Unknown_0x800da738)($t5)
    sw      $t7, -0x18f8($at)
    sw      $a1, 0x4c($v1)
    sll     $t6, $t5, 3
    addu    $v0, $a0, $t6
    lw      $t8, 0x0($v0)
    lw      $t4, 0x90($v1)
    addiu   $v1, $v1, 0x88
    sw      $t8, -0x38($v1)
    lw      $t9, 0x4($v0)
    sw      $t9, -0x24($v1)
    lw      $t2, %lo(Unknown_0x800da73c)($t2)
    sw      $t4, -0x18f4($at)
    sw      $a1, 0x8($v1)
    sll     $t3, $t2, 3
    addu    $v0, $a0, $t3
    lw      $t5, 0x0($v0)
    sw      $t5, 0xc($v1)
    lw      $t6, 0x4($v0)
    sw      $t6, 0x20($v1)
branch_0x80095724:
    lui     $t7, %hi(MainState_0x800da8a4)
    lw      $t7, %lo(MainState_0x800da8a4)($t7)
    addiu   $at, $zero, MainState_5_BootUp
    lui     $t8, %hi(Unknown_0x80151618)
    beql    $t7, $at, branch_0x800957bc
    lw      $ra, 0x14($sp)

    lw      $t9, 0x50($sp)
    lw      $t8, %lo(Unknown_0x80151618)($t8)
    addiu   $t0, $t0, %lo(Unknown_0x801516a4)
    bnez    $t9, branch_0x80095768
    sw      $t8, 0x0($t0)

    jal     Function_0x80093d18
    or      $a0, $t8, $zero
    lui     $t0, %hi(Unknown_0x801516a4)
    addiu   $t0, $t0, %lo(Unknown_0x801516a4)
    b       branch_0x80095788
    sw      $v0, 0x0($t0)

branch_0x80095768:
    lw      $a0, 0x0($t0)
    addiu   $a1, $zero, 0xff
    addiu   $a2, $zero, 0xff
    jal     Function_0x80093b5c
    addiu   $a3, $zero, 0xff
    lui     $t0, %hi(Unknown_0x801516a4)
    addiu   $t0, $t0, %lo(Unknown_0x801516a4)
    sw      $v0, 0x0($t0)
branch_0x80095788:
    lw      $v0, 0x0($t0)
    lui     $t3, %hi(0xe9000000)
    lui     $t5, %hi(0xb8000000)
    addiu   $t2, $v0, 0x8
    sw      $t2, 0x0($t0)
    sw      $zero, 0x4($v0)
    sw      $t3, 0x0($v0)
    lw      $v0, 0x0($t0)
    addiu   $t4, $v0, 0x8
    sw      $t4, 0x0($t0)
    sw      $zero, 0x4($v0)
    sw      $t5, 0x0($v0)
branch_0x800957b8:
    lw      $ra, 0x14($sp)
branch_0x800957bc:
    addiu   $sp, $sp, 0x68
    jr      $ra
    nop


/* Input:
a0: Ptr to FileDatas
*/
.globl Function_0x800957c8_LoadUncompressFiles
Function_0x800957c8_LoadUncompressFiles: # 0x800957c8
    addiu   $sp, $sp, 0xffb0
    sw      $ra, 0x3c($sp)
    sw      $fp, 0x38($sp)
    sw      $s7, 0x34($sp)
    sw      $s6, 0x30($sp)
    sw      $s5, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)

    lw      $v0, FileData_8($a0)
    or      $s2, $a0, $zero
    lui     $s7, %hi(Unknown_0x800d4368)
    beqz    $v0, branch_0x80095a58 # FileData_8_0
    lw      $fp, 0x44($sp)

    lui     $s6, 0x801d
    lui     $s5, 0x801d
    lui     $s4, 0x801d
    addiu   $s4, $s4, 0xe490
    addiu   $s5, $s5, 0xe494
    addiu   $s6, $s6, 0xe498
    addiu   $s7, $s7, %lo(Unknown_0x800d4368)
    addiu   $s3, $zero, 0x1 # MainState_1
    addiu   $s1, $zero, 0x1000
    lw      $a0, FileData_Start($s2)
branch_0x80095830:
    lw      $t6, FileData_End($s2)
    addiu   $at, $zero, 0xfffe
    lui     $t8, %hi(MainState_0x800da8a4)
    subu    $a2, $t6, $a0
    addiu   $a2, $a2, 0x1
    and     $t7, $a2, $at
    addiu   $at, $zero, FileData_8_6
    bne     $v0, $at, branch_0x80095868
    or      $a2, $t7, $zero

    lui     $a1, %hi(RamAddrForObjFile_0x800d436c)
    jal     Function_0x80097d14_CopyFromCartToRamInChuncks
    lw      $a1, %lo(RamAddrForObjFile_0x800d436c)($a1)
    b       branch_0x80095a48_checkForFileType0
    lw      $v0, (FileData_Size+FileData_8)($s2)

branch_0x80095868:
    lw      $t8, %lo(MainState_0x800da8a4)($t8)
    bne     $s3, $t8, branch_0x80095884 # MainState != 1
    nop

    jal     Function_0x80097d14_CopyFromCartToRamInChuncks
    lui     $a1, %hi(Unknown_0x80360000)
    b       branch_0x80095890_checkForFileType5
    lw      $v0, FileData_8($s2)

branch_0x80095884:
    jal     Function_0x80097d14_CopyFromCartToRamInChuncks
    lui     $a1, %hi(RamForCompressedTrackFiles_0x802a0000)
    lw      $v0, FileData_8($s2)


branch_0x80095890_checkForFileType5: # Handle Track Files
    addiu   $at, $zero, FileData_8_5
    lui     $t9, %hi(Unknown_0x801ce36c)
    bnel    $v0, $at, branch_0x800958ec_checkForFileType8
    addiu   $at, $zero, FileData_8_8

    lh      $t9, %lo(Unknown_0x801ce36c)($t9)
    lui     $s0, %hi(RamAddrForTrackFile_0x800d4364)
    lw      $s0, %lo(RamAddrForTrackFile_0x800d4364)($s0)
    bne     $s3, $t9, branch_0x800958d0
    lui     $t2, %hi(TrackNr_0x800d7ef0)

    lui     $t0, %hi(TrackNr_0x800d7ef0)
    lw      $t0, %lo(TrackNr_0x800d7ef0)($t0)
    lui     $fp, %hi(Unknown_0x800dcbbc_UncompressedTrackFileSizes)
    sll     $t1, $t0, 2
    addu    $fp, $fp, $t1
    b       branch_0x80095930_uncompressData
    lw      $fp, %lo(Unknown_0x800dcbbc_UncompressedTrackFileSizes)($fp)

branch_0x800958d0:
    lw      $t2, %lo(TrackNr_0x800d7ef0)($t2)
    lui     $fp, %hi(Unknown_0x800dcbe0)
    sll     $t3, $t2, 2
    addu    $fp, $fp, $t3
    b       branch_0x80095930_uncompressData
    lw      $fp, %lo(Unknown_0x800dcbe0)($fp)


# 0x800958e8
    addiu   $at, $zero, FileData_8_8
branch_0x800958ec_checkForFileType8: # Handle the file after Track Files
    bne     $v0, $at, branch_0x80095914_checkForFileType9
    lui     $t4, %hi(RamAddrForTrackFile_0x800d4364)

    lw      $t4, %lo(RamAddrForTrackFile_0x800d4364)($t4)
    addu    $a0, $t4, $fp			# add size of uncpmressed track file
    jal     osVirtualToPhysical
    sw      $a0, 0x0($s7)
    lui     $at, %hi(Unknown_0x801ce448)
    sw      $v0, %lo(Unknown_0x801ce448)($at)
    b       branch_0x80095930_uncompressData
    lw      $s0, 0x0($s7)


branch_0x80095914_checkForFileType9:
    addiu   $at, $zero, FileData_8_9
    bne     $v0, $at, branch_0x8009592c
    lui     $s0, %hi(Unknown_0x800d4370)

    lui     $s0, %hi(Code_0x8028a200)
    b       branch_0x80095930_uncompressData
    ori     $s0, $s0, %lo(Code_0x8028a200)


branch_0x8009592c:
    lw      $s0, %lo(Unknown_0x800d4370)($s0)


branch_0x80095930_uncompressData:
    lui     $t7, %hi(MainState_0x800da8a4)
    lw      $t7, %lo(MainState_0x800da8a4)($t7)
    lw      $t6, FileData_c($s2)
    lui     $a0, %hi(RamForCompressedTrackFiles_0x802a0000)
    bne     $s3, $t7, branch_0x8009595c_notInState1
    addu    $s0, $s0, $t6

    lui     $a0, %hi(Unknown_0x80360000)
    jal     Function_0x800b4ad0_UncompressMio0
    or      $a1, $s0, $zero				# destination of uncompressed data
    b       branch_0x80095968_checkForFileType3
    lw      $v0, FileData_8($s2)

branch_0x8009595c_notInState1:
    jal     Function_0x800b4ad0_UncompressMio0
    or      $a1, $s0, $zero				# destination of uncompressed data
    lw      $v0, FileData_8($s2)


branch_0x80095968_checkForFileType3:
    addiu   $at, $zero, FileData_8_3
    addiu   $v1, $s0, 0x2000
    bne     $v0, $at, branch_0x800959b4_checkforFileType4
    or      $a0, $zero, $zero

    or      $v0, $s0, $zero
branch_0x8009597c:
    lbu     $t8, 0x0($v0)
    addiu   $a0, $a0, 0x4
    addiu   $v1, $v1, 0x4
    sb      $t8, -0x4($v1)
    lbu     $t9, 0x1($v0)
    addiu   $v0, $v0, 0x4
    sb      $t9, -0x3($v1)
    lbu     $t0, -0x2($v0)
    sb      $t0, -0x2($v1)
    lbu     $t1, -0x1($v0)
    bne     $a0, $s1, branch_0x8009597c # while(a0 != s1 (0x1000))
    sb      $t1, -0x1($v1)
    b       branch_0x80095a48_checkForFileType0
    lw      $v0, (FileData_Size+FileData_8)($s2)


branch_0x800959b4_checkforFileType4:
    addiu   $at, $zero, FileData_8_4
    bnel    $v0, $at, branch_0x800959e8_checkForFileType7
    addiu   $at, $zero, FileData_8_7
    jal     osWritebackDCacheAll
    nop
    or      $a0, $s0, $zero
    jal     Function_0x80095a88
    lw      $a1, 0x0($s4)
    lw      $t2, 0x0($s4)
    addiu   $t3, $t2, 0x1
    b       branch_0x80095a44
    sw      $t3, 0x0($s4)


# 0x800959e4
    addiu   $at, $zero, FileData_8_7
branch_0x800959e8_checkForFileType7:
    bnel    $v0, $at, branch_0x80095a18_checkForFileTypeA
    addiu   $at, $zero, FileData_8_a
    jal     osWritebackDCacheAll
    nop
    or      $a0, $s0, $zero
    jal     Function_0x80095de8
    lw      $a1, 0x0($s5)
    lw      $t4, 0x0($s5)
    addiu   $t5, $t4, 0x1
    b       branch_0x80095a44
    sw      $t5, 0x0($s5)


# 0x80095a14
    addiu   $at, $zero, FileData_8_a
branch_0x80095a18_checkForFileTypeA:
    bnel    $v0, $at, branch_0x80095a48_checkForFileType0
    lw      $v0, (FileData_Size+FileData_8)($s2)
    jal     osWritebackDCacheAll
    nop
    or      $a0, $s0, $zero
    lw      $a1, FileData_c($s2)
    jal     Function_0x80096434
    lw      $a2, 0x0($s6)
    lw      $t6, 0x0($s6)
    addiu   $t7, $t6, 0x1
    sw      $t7, 0x0($s6)
branch_0x80095a44:
    lw      $v0, (FileData_Size+FileData_8)($s2)


branch_0x80095a48_checkForFileType0:
    addiu   $s2, $s2, FileData_Size
    bnezl   $v0, branch_0x80095830 # FileData_8_0 0 means reached end of file list
    lw      $a0, FileData_Start($s2)

    sw      $fp, 0x44($sp)
branch_0x80095a58:
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


.globl Function_0x80095a88
Function_0x80095a88: # 0x80095a88
    addiu   $sp, $sp, 0xff90
    sw      $s7, 0x34($sp)
    lui     $t6, %hi(Unknown_0x801ce4a0)
    addiu   $t6, $t6, %lo(Unknown_0x801ce4a0)
    sll     $s7, $a1, 2
    addu    $a2, $s7, $t6
    lh      $t7, 0x2($a2)
    sw      $ra, 0x3c($sp)
    sw      $fp, 0x38($sp)
    sw      $s6, 0x30($sp)
    sw      $s5, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    beqz    $t7, branch_0x80095adc
    sw      $a0, 0x70($sp)
    addiu   $t8, $zero, 0x2
    b       branch_0x80095ae4
    sw      $t8, 0x60($sp)
branch_0x80095adc:
    addiu   $t9, $zero, 0x1
    sw      $t9, 0x60($sp)
branch_0x80095ae4:
    lw      $t0, 0x60($sp)
    or      $v1, $zero, $zero
    addiu   $fp, $zero, 0x1
    blez    $t0, branch_0x80095db8
    addiu   $s6, $zero, 0x2
    lui     $s4, 0xff
    lui     $s2, %hi(Unknown_0x800daa50)
    addiu   $s2, $s2, %lo(Unknown_0x800daa50)
    ori     $s4, $s4, 0xffff
    addiu   $s3, $zero, 0x44
    lw      $s1, 0x58($sp)
    addiu   $a3, $zero, 0x3
    lh      $t2, 0x0($a2)
branch_0x80095b18:
    lh      $t1, 0x2($a2)
    or      $s5, $zero, $zero
    multu   $t2, $a3
    mflo    $t3
    addu    $t4, $t1, $t3
    addu    $s0, $t4, $v1
    sltiu   $at, $s5, 0x11
branch_0x80095b34:
    beqz    $at, branch_0x80095cfc
    or      $v0, $zero, $zero
    sll     $t5, $s5, 2
    lui     $at, %hi(SwitchTable_0x800EAFD0)
    addu    $at, $at, $t5
    lw      $t5, %lo(SwitchTable_0x800EAFD0)($at)
    jr      $t5
    nop

branch_0x80095b54:
    multu   $s0, $s3
    mflo    $t6
    addu    $t7, $s2, $t6
    lw      $t8, 0x0($t7)
    b       branch_0x80095cfc
    and     $s1, $t8, $s4

branch_0x80095B6C:
    multu   $s0, $s3
    mflo    $t9
    addu    $t0, $s2, $t9
    lw      $t2, 0x4($t0)
    b       branch_0x80095cfc
    and     $s1, $t2, $s4

branch_0x80095B84:
    multu   $s0, $s3
    mflo    $t1
    addu    $t3, $s2, $t1
    lw      $t4, 0x8($t3)
    b       branch_0x80095cfc
    and     $s1, $t4, $s4

branch_0x80095B9C:
    multu   $s0, $s3
    mflo    $t5
    addu    $t6, $s2, $t5
    lw      $t7, 0xc($t6)
    b       branch_0x80095cfc
    and     $s1, $t7, $s4

branch_0x80095BB4:
    multu   $s0, $s3
    mflo    $t8
    addu    $t9, $s2, $t8
    lw      $t0, 0x10($t9)
    b       branch_0x80095cfc
    and     $s1, $t0, $s4

branch_0x80095BCC:
    multu   $s0, $s3
    mflo    $t2
    addu    $t1, $s2, $t2
    lw      $t3, 0x14($t1)
    b       branch_0x80095cfc
    and     $s1, $t3, $s4

branch_0x80095BE4:
    multu   $s0, $s3
    mflo    $t4
    addu    $t5, $s2, $t4
    lw      $t6, 0x18($t5)
    b       branch_0x80095cfc
    and     $s1, $t6, $s4

branch_0x80095BFC:
    multu   $s0, $s3
    mflo    $t7
    addu    $t8, $s2, $t7
    lw      $t9, 0x1c($t8)
    b       branch_0x80095cfc
    and     $s1, $t9, $s4

branch_0x80095C14:
    multu   $s0, $s3
    mflo    $t0
    addu    $t2, $s2, $t0
    lw      $t1, 0x20($t2)
    b       branch_0x80095cfc
    and     $s1, $t1, $s4

branch_0x80095C2C:
    multu   $s0, $s3
    mflo    $t3
    addu    $t4, $s2, $t3
    lw      $t5, 0x24($t4)
    b       branch_0x80095cfc
    and     $s1, $t5, $s4

branch_0x80095C44:
    multu   $s0, $s3
    mflo    $t6
    addu    $t7, $s2, $t6
    lw      $t8, 0x28($t7)
    b       branch_0x80095cfc
    and     $s1, $t8, $s4

branch_0x80095C5C:
    multu   $s0, $s3
    mflo    $t9
    addu    $t0, $s2, $t9
    lw      $t2, 0x2c($t0)
    b       branch_0x80095cfc
    and     $s1, $t2, $s4

branch_0x80095C74:
    multu   $s0, $s3
    or      $v0, $s6, $zero
    mflo    $t1
    addu    $t3, $s2, $t1
    lw      $t4, 0x30($t3)
    b       branch_0x80095cfc
    and     $s1, $t4, $s4

branch_0x80095C90:
    multu   $s0, $s3
    or      $v0, $s6, $zero
    mflo    $t5
    addu    $t6, $s2, $t5
    lw      $t7, 0x34($t6)
    b       branch_0x80095cfc
    and     $s1, $t7, $s4

branch_0x80095CAC:
    multu   $s0, $s3
    or      $v0, $s6, $zero
    mflo    $t8
    addu    $t9, $s2, $t8
    lw      $t0, 0x38($t9)
    b       branch_0x80095cfc
    and     $s1, $t0, $s4

branch_0x80095CC8:
    multu   $s0, $s3
    or      $v0, $s6, $zero
    mflo    $t2
    addu    $t1, $s2, $t2
    lw      $t3, 0x3c($t1)
    b       branch_0x80095cfc
    and     $s1, $t3, $s4

branch_0x80095CE4:
    multu   $s0, $s3
    or      $v0, $s6, $zero
    mflo    $t4
    addu    $t5, $s2, $t4
    lw      $t6, 0x40($t5)
    and     $s1, $t6, $s4
branch_0x80095cfc:
    bne     $v0, $fp, branch_0x80095d14
    nop
    bne     $v1, $fp, branch_0x80095d30
    nop
    b       branch_0x80095d98
    addiu   $s5, $s5, 0x1
branch_0x80095d14:
    bne     $v0, $s6, branch_0x80095d30
    nop
    lh      $v0, 0x0($a2)
    addiu   $at, $zero, 0x6
    beq     $s6, $v0, branch_0x80095d30
    nop
    bne     $v0, $at, branch_0x80095d94
branch_0x80095d30:
    lui     $v0, %hi(Unknown_0x801ce49c)
    lw      $v0, %lo(Unknown_0x801ce49c)($v0)
    lw      $t7, 0x70($sp)
    lui     $a1, %hi(Unknown_0x800da920)
    beq     $a3, $v0, branch_0x80095d50
    addu    $a0, $t7, $s1
    bne     $s6, $v0, branch_0x80095d5c
    addiu   $at, $zero, 0x4
branch_0x80095d50:
    addu    $a1, $a1, $s7
    b       branch_0x80095d7c
    lw      $a1, %lo(Unknown_0x800da920)($a1)
branch_0x80095d5c:
    bne     $v0, $at, branch_0x80095d74
    lui     $a1, %hi(Unknown_0x800da910)
    lui     $a1, %hi(Unknown_0x800da940)
    addu    $a1, $a1, $s7
    b       branch_0x80095d7c
    lw      $a1, %lo(Unknown_0x800da940)($a1)
branch_0x80095d74:
    addu    $a1, $a1, $s7
    lw      $a1, %lo(Unknown_0x800da910)($a1)
branch_0x80095d7c:
    sw      $v1, 0x68($sp)
    jal     Function_0x8009658c
    sw      $a2, 0x44($sp)
    lw      $v1, 0x68($sp)
    lw      $a2, 0x44($sp)
    addiu   $a3, $zero, 0x3
branch_0x80095d94:
    addiu   $s5, $s5, 0x1
branch_0x80095d98:
    addiu   $at, $zero, 0x11
    bnel    $s5, $at, branch_0x80095b34
    sltiu   $at, $s5, 0x11
    lw      $t8, 0x60($sp)
    addiu   $v1, $v1, 0x1
    bnel    $v1, $t8, branch_0x80095b18
    lh      $t2, 0x0($a2)
    sw      $s1, 0x58($sp)
branch_0x80095db8:
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
    addiu   $sp, $sp, 0x70


.globl Function_0x80095de8
Function_0x80095de8: # 0x80095de8
    addiu   $sp, $sp, 0xffb8
    lui     $t7, 0x801d
    addiu   $t7, $t7, 0xe538
    sll     $t6, $a1, 3
    addu    $v0, $t6, $t7
    lw      $t8, 0x0($v0)
    sll     $t2, $a1, 2
    subu    $t2, $t2, $a1
    lw      $t1, 0x4($v0)
    sw      $s7, 0x34($sp)
    sll     $t2, $t2, 2
    lui     $s7, 0xff
    lui     $v1, %hi(Unknown_0x800DB204)
    subu    $t2, $t2, $a1
    lui     $t3, 0x801d
    sll     $t0, $t8, 2
    ori     $s7, $s7, 0xffff
    sw      $fp, 0x38($sp)
    sw      $s6, 0x30($sp)
    sw      $s5, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    addu    $v1, $v1, $t0
    addiu   $t3, $t3, 0xe4e0
    sll     $t2, $t2, 2
    or      $s6, $a0, $zero
    sw      $ra, 0x3c($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    lw      $s3, %lo(Unknown_0x800DB204)($v1)
    or      $s4, $zero, $zero
    addu    $fp, $t2, $t3
    or      $s2, $zero, $zero
    sw      $t8, 0x40($sp)
    and     $s5, $t1, $s7
branch_0x80095e78:
    lw      $s0, 0x0($s3)
    or      $a1, $s5, $zero
    addu    $s1, $fp, $s2
    bnez    $s0, branch_0x80095eb4
    and     $t5, $s0, $s7
    sw      $s4, 0x0($fp)
    lw      $t4, 0x40($sp)
    sltiu   $at, $t4, 0x9
    beqz    $at, branch_0x80095f28
    sll     $t4, $t4, 2
    lui     $at, %hi(SwitchTable_0x800eb014)
    addu    $at, $at, $t4
    lw      $t4, %lo(SwitchTable_0x800eb014)($at)
    jr      $t4
    nop

branch_0x80095eb4:
    jal     Function_0x8009658c
    addu    $a0, $t5, $s6
    addu    $t6, $s0, $s5
    sw      $t6, 0x8($s1)
    addiu   $s4, $s4, 0x1
    addiu   $s2, $s2, 0x4
    b       branch_0x80095e78
    addiu   $s3, $s3, 0x4

branch_0x80095ed4: # 0x80095ed4
    lw      $a0, 0x40($sp)
    jal     Function_0x80095f58
    or      $a1, $s5, $zero
    b       branch_0x80095f28
    sw      $v0, 0x4($fp)

branch_0x80095ee8: # 0x80095ee8
    jal     Function_0x80096090
    or      $a0, $s5, $zero
    b       branch_0x80095f28
    sw      $v0, 0x4($fp)

branch_0x80095ef8: # 0x80095ef8
    lw      $a0, 0x40($sp)
    jal     Function_0x8009616c
    or      $a1, $s5, $zero
    b       branch_0x80095f28
    sw      $v0, 0x4($fp)

branch_0x80095f0c: # 0x80095f0c
    jal     Function_0x80096358
    or      $a0, $s5, $zero
    b       branch_0x80095f28
    sw      $v0, 0x4($fp)

branch_0x80095f1c: # 0x80095f1c
    jal     Function_0x8009626c
    or      $a0, $s5, $zero
    sw      $v0, 0x4($fp)

branch_0x80095f28:
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
    addiu   $sp, $sp, 0x48


.globl Function_0x80095f58
Function_0x80095f58: # 0x80095f58
    addiu   $sp, $sp, 0xffb8
    sw      $s1, 0x1c($sp)
    addiu   $at, $zero, 0x3
    or      $s1, $a1, $zero
    sw      $ra, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    beq     $a0, $at, branch_0x80095f94
    sw      $s0, 0x18($sp)
    addiu   $at, $zero, 0x6
    beq     $a0, $at, branch_0x80095fa8
    lui     $t7, 0x800
    b       branch_0x80095fb4
    lw      $s4, 0x40($sp)

branch_0x80095f94:
    lui     $t6, %hi(0x8002fa8)
    addiu   $t6, $t6, %lo(0x8002fa8)
    sw      $t6, 0x34($sp)
    b       branch_0x80095fb4
    addiu   $s4, $zero, 0x1

branch_0x80095fa8:
    addiu   $t7, $t7, 0x2c00
    sw      $t7, 0x34($sp)
    addiu   $s4, $zero, 0x1

branch_0x80095fb4:
    jal     Function_0x80093e28
    lw      $a0, 0x34($sp)
    addu    $t8, $v0, $s1
    sw      $t8, 0x38($sp)
    blez    $s4, branch_0x8009606c
    or      $s3, $zero, $zero
    or      $s2, $t8, $zero
branch_0x80095fd0:
    jal     Function_0x80093e28
    lw      $a0, 0x0($s2)
    addu    $s0, $v0, $s1
    sw      $s0, 0x0($s2)
    jal     Function_0x80093e28
    lw      $a0, 0x4($s0)
    addu    $t9, $v0, $s1
    sw      $t9, 0x4($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x8($s0)
    addu    $t0, $v0, $s1
    sw      $t0, 0x8($s0)
    jal     Function_0x80093e28
    lw      $a0, 0xc($s0)
    addu    $t1, $v0, $s1
    sw      $t1, 0xc($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x10($s0)
    addu    $t2, $v0, $s1
    sw      $t2, 0x10($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x14($s0)
    addu    $t3, $v0, $s1
    sw      $t3, 0x14($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x18($s0)
    addu    $t4, $v0, $s1
    sw      $t4, 0x18($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x1c($s0)
    addu    $t5, $v0, $s1
    sw      $t5, 0x1c($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x20($s0)
    addiu   $s3, $s3, 0x1
    addu    $t6, $v0, $s1
    addiu   $s2, $s2, 0x4
    bne     $s3, $s4, branch_0x80095fd0
    sw      $t6, 0x20($s0)
branch_0x8009606c:
    lw      $ra, 0x2c($sp)
    lw      $v0, 0x38($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x48

.globl Function_0x80096090
Function_0x80096090: # 0x80096090
    addiu   $sp, $sp, 0xffc0
    sw      $s1, 0x1c($sp)
    or      $s1, $a0, $zero
    sw      $ra, 0x2c($sp)
    lui     $a0, %hi(0x80030ec)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s0, 0x18($sp)
    jal     Function_0x80093e28
    addiu   $a0, $a0, %lo(0x80030ec)
    addu    $s2, $v0, $s1
    sw      $s2, 0x34($sp)
    or      $s3, $zero, $zero
    addiu   $s4, $zero, 0xc
branch_0x800960cc:
    jal     Function_0x80093e28
    lw      $a0, 0x0($s2)
    addu    $s0, $v0, $s1
    sw      $s0, 0x0($s2)
    jal     Function_0x80093e28
    lw      $a0, 0x4($s0)
    addu    $t6, $v0, $s1
    sw      $t6, 0x4($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x8($s0)
    addu    $t7, $v0, $s1
    sw      $t7, 0x8($s0)
    jal     Function_0x80093e28
    lw      $a0, 0xc($s0)
    addu    $t8, $v0, $s1
    sw      $t8, 0xc($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x10($s0)
    addu    $t9, $v0, $s1
    sw      $t9, 0x10($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x14($s0)
    addu    $t0, $v0, $s1
    sw      $t0, 0x14($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x18($s0)
    addiu   $s3, $s3, 0x4
    addu    $t1, $v0, $s1
    addiu   $s2, $s2, 0x4
    bne     $s3, $s4, branch_0x800960cc
    sw      $t1, 0x18($s0)
    lw      $ra, 0x2c($sp)
    lw      $v0, 0x34($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x40


.globl Function_0x8009616c
Function_0x8009616c: # 0x8009616c
    addiu   $sp, $sp, 0xffb8
    sw      $s3, 0x24($sp)
    addiu   $at, $zero, 0x2
    or      $s3, $a1, $zero
    sw      $ra, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    beq     $a0, $at, branch_0x800961a8
    sw      $s0, 0x18($sp)
    addiu   $at, $zero, 0x4
    beq     $a0, $at, branch_0x800961bc
    lui     $t7, 0x800
    b       branch_0x800961c8
    lw      $s4, 0x40($sp)
branch_0x800961a8:
    lui     $t6, %hi(0x8003578)
    addiu   $t6, $t6, %lo(0x8003578)
    sw      $t6, 0x34($sp)
    b       branch_0x800961c8
    addiu   $s4, $zero, 0x2
branch_0x800961bc:
    addiu   $t7, $t7, 0xd9c
    sw      $t7, 0x34($sp)
    addiu   $s4, $zero, 0x1
branch_0x800961c8:
    jal     Function_0x80093e28
    lw      $a0, 0x34($sp)
    addu    $t8, $v0, $s3
    sw      $t8, 0x38($sp)
    blez    $s4, branch_0x80096240
    or      $s2, $zero, $zero
    or      $s1, $t8, $zero
branch_0x800961e4:
    jal     Function_0x80093e28
    lw      $a0, 0x0($s1)
    addu    $s0, $v0, $s3
    sw      $s0, 0x0($s1)
    jal     Function_0x80093e28
    lw      $a0, 0x4($s0)
    addu    $t9, $v0, $s3
    sw      $t9, 0x4($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x8($s0)
    addu    $t0, $v0, $s3
    sw      $t0, 0x8($s0)
    jal     Function_0x80093e28
    lw      $a0, 0xc($s0)
    addu    $t1, $v0, $s3
    sw      $t1, 0xc($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x10($s0)
    addiu   $s2, $s2, 0x1
    addu    $t2, $v0, $s3
    addiu   $s1, $s1, 0x4
    bne     $s2, $s4, branch_0x800961e4
    sw      $t2, 0x10($s0)
branch_0x80096240:
    lw      $ra, 0x2c($sp)
    lw      $v0, 0x38($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x48


.globl Function_0x80096264
Function_0x80096264: # 0x80096264
    jr      $ra
    nop


.globl Function_0x8009626c
Function_0x8009626c: # 0x8009626c
    addiu   $sp, $sp, 0xffc0
    sw      $s1, 0x1c($sp)
    or      $s1, $a0, $zero
    sw      $ra, 0x2c($sp)
    lui     $a0, %hi(0x8001c58)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s0, 0x18($sp)
    jal     Function_0x80093e28
    addiu   $a0, $a0, %lo(0x8001c58)
    addu    $s2, $v0, $s1
    sw      $s2, 0x34($sp)
    or      $s3, $zero, $zero
    addiu   $s4, $zero, 0x8
branch_0x800962a8:
    jal     Function_0x80093e28
    lw      $a0, 0x0($s2)
    addu    $s0, $v0, $s1
    sw      $s0, 0x0($s2)
    jal     Function_0x80093e28
    lw      $a0, 0x4($s0)
    addu    $t6, $v0, $s1
    sw      $t6, 0x4($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x8($s0)
    addu    $t7, $v0, $s1
    sw      $t7, 0x8($s0)
    jal     Function_0x80093e28
    lw      $a0, 0xc($s0)
    addu    $t8, $v0, $s1
    sw      $t8, 0xc($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x10($s0)
    addu    $t9, $v0, $s1
    sw      $t9, 0x10($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x14($s0)
    addu    $t0, $v0, $s1
    sw      $t0, 0x14($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x18($s0)
    addu    $t1, $v0, $s1
    sw      $t1, 0x18($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x1c($s0)
    addiu   $s3, $s3, 0x4
    addu    $t2, $v0, $s1
    addiu   $s2, $s2, 0x4
    bne     $s3, $s4, branch_0x800962a8
    sw      $t2, 0x1c($s0)
    lw      $ra, 0x2c($sp)
    lw      $v0, 0x34($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x40


.globl Function_0x80096358
Function_0x80096358: # 0x80096358
    addiu   $sp, $sp, 0xffc0
    sw      $s1, 0x1c($sp)
    or      $s1, $a0, $zero
    sw      $ra, 0x2c($sp)
    lui     $a0, %hi(0x800c1fc)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s0, 0x18($sp)
    jal     Function_0x80093e28
    addiu   $a0, $a0, %lo(0x800c1fc)
    addu    $s2, $v0, $s1
    sw      $s2, 0x34($sp)
    or      $s3, $zero, $zero
    addiu   $s4, $zero, 0x20
branch_0x80096394:
    jal     Function_0x80093e28
    lw      $a0, 0x0($s2)
    addu    $s0, $v0, $s1
    sw      $s0, 0x0($s2)
    jal     Function_0x80093e28
    lw      $a0, 0x4($s0)
    addu    $t6, $v0, $s1
    sw      $t6, 0x4($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x8($s0)
    addu    $t7, $v0, $s1
    sw      $t7, 0x8($s0)
    jal     Function_0x80093e28
    lw      $a0, 0xc($s0)
    addu    $t8, $v0, $s1
    sw      $t8, 0xc($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x10($s0)
    addu    $t9, $v0, $s1
    sw      $t9, 0x10($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x14($s0)
    addu    $t0, $v0, $s1
    sw      $t0, 0x14($s0)
    jal     Function_0x80093e28
    lw      $a0, 0x18($s0)
    addiu   $s3, $s3, 0x4
    addu    $t1, $v0, $s1
    addiu   $s2, $s2, 0x4
    bne     $s3, $s4, branch_0x80096394
    sw      $t1, 0x18($s0)
    lw      $ra, 0x2c($sp)
    lw      $v0, 0x34($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x40


.globl Function_0x80096434
Function_0x80096434: # 0x80096434
    addiu   $sp, $sp, 0xffa8
    lui     $t6, %hi(MainState_0x800da8a4)
    lw      $t6, %lo(MainState_0x800da8a4)($t6)
    sw      $fp, 0x38($sp)
    sw      $s7, 0x34($sp)
    addiu   $at, $zero, 0x1e
    or      $s7, $a0, $zero
    or      $fp, $a1, $zero
    sw      $ra, 0x3c($sp)
    sw      $s6, 0x30($sp)
    sw      $s5, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    bne     $t6, $at, branch_0x80096484
    sw      $s0, 0x18($sp)
    lui     $v0, %hi(TrackNr_0x800d7ef0)
    b       branch_0x80096488
    lw      $v0, %lo(TrackNr_0x800d7ef0)($v0)
branch_0x80096484:
    or      $v0, $a2, $zero
branch_0x80096488:
    sll     $t8, $v0, 2
    sll     $t0, $v0, 2
    subu    $t0, $t0, $v0
    subu    $t8, $t8, $v0
    lui     $t9, %hi(Unknown_0x800db4f8)
    lui     $t1, 0x801d
    addiu   $t1, $t1, 0xe548
    addiu   $t9, $t9, %lo(Unknown_0x800db4f8)
    sll     $t8, $t8, 2
    sll     $t0, $t0, 4
    lui     $s3, %hi(Unknown_0x800db4e0)
    sll     $t7, $v0, 3
    lui     $s2, 0xff
    ori     $s2, $s2, 0xffff
    sw      $t7, 0x40($sp)
    addiu   $s3, $s3, %lo(Unknown_0x800db4e0)
    addu    $s1, $t0, $t1
    addu    $s5, $t8, $t9
    or      $s4, $zero, $zero
    lui     $s6, 0x800
branch_0x800964d8:
    lh      $t3, 0x0($s5)
    lw      $s0, 0x0($s3)
    lw      $t2, 0x40($sp)
    beqz    $t3, branch_0x8009653c
    addu    $s0, $s0, $t2
    lw      $t4, 0x0($s0)
    or      $a1, $fp, $zero
    and     $t5, $t4, $s2
    addu    $t6, $t5, $s6
    sw      $t6, 0x0($s1)
    lw      $t7, 0x4($s0)
    and     $t8, $t7, $s2
    addu    $t9, $t8, $s6
    sw      $t9, 0x18($s1)
    lw      $t0, 0x0($s0)
    and     $t1, $t0, $s2
    jal     Function_0x8009658c
    addu    $a0, $t1, $s7
    lw      $t2, 0x4($s0)
    or      $a1, $fp, $zero
    and     $t3, $t2, $s2
    jal     Function_0x8009658c
    addu    $a0, $t3, $s7
    b       branch_0x80096548
    addiu   $s4, $s4, 0x2
branch_0x8009653c:
    sw      $zero, 0x0($s1)
    sw      $zero, 0x18($s1)
    addiu   $s4, $s4, 0x2
branch_0x80096548:
    addiu   $at, $zero, 0xc
    addiu   $s3, $s3, 0x4
    addiu   $s5, $s5, 0x2
    bne     $s4, $at, branch_0x800964d8
    addiu   $s1, $s1, 0x4
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

.globl Function_0x8009658c
Function_0x8009658c: # 0x8009658c
    or      $v0, $a0, $zero
    addiu   $t0, $zero, 0xfd
    addiu   $a3, $zero, 0x4
    addiu   $a2, $zero, 0xb8
branch_0x8009659c:
    lw      $v1, 0x0($v0)
    srl     $t6, $v1, 24
    beq     $t6, $a2, branch_0x800965e4
    or      $v1, $t6, $zero
    bne     $t6, $a3, branch_0x800965bc
    or      $a0, $zero, $zero
    b       branch_0x800965c8
    addiu   $a0, $zero, 0x1
branch_0x800965bc:
    bne     $v1, $t0, branch_0x800965c8
    nop
    addiu   $a0, $zero, 0x2
branch_0x800965c8:
    beqz    $a0, branch_0x800965dc
    addiu   $v1, $v0, 0x4
    lw      $t7, 0x0($v1)
    addu    $t8, $t7, $a1
    sw      $t8, 0x0($v1)
branch_0x800965dc:
    b       branch_0x8009659c
    addiu   $v0, $v0, 0x8
branch_0x800965e4:
    jr      $ra
    nop
