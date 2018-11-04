
.globl Function_0x80096700
Function_0x80096700: # 0x80096700
    addiu   $sp, $sp, 0xff90
    lui     $t1, %hi(Unknown_0x801ce4a0)
    lui     $v0, %hi(Unknown_0x801ce4a0+0x20)
    sw      $s0, 0x4($sp)
    sw      $a0, 0x70($sp)
    sw      $a1, 0x74($sp)
    sw      $a2, 0x78($sp)
    sw      $a3, 0x7c($sp)
    addiu   $v0, $v0, %lo(Unknown_0x801ce4a0+0x20)
    addiu   $t1, $t1, %lo(Unknown_0x801ce4a0)
    or      $t0, $zero, $zero
    addiu   $t4, $zero, 0x1
branch_0x80096730:
    addiu   $t1, $t1, 0x4
    sltu    $at, $t1, $v0
    bnez    $at, branch_0x80096730
    sh      $t4, -0x2($t1)

    lw      $t8, 0x70($sp)
    lui     $v0, %hi(Unknown_0x801ce49c)
    lui     $a2, %hi(Unknown_0x801ce4c0)
    addiu   $a2, $a2, %lo(Unknown_0x801ce4c0)
    addiu   $v0, $v0, %lo(Unknown_0x801ce49c)
    addiu   $t6, $zero, 0xffff
    sltiu   $at, $t8, 0x5
    sw      $t6, Unknown_0x801ce4c0_4($a2)
    sw      $t6, Unknown_0x801ce4c0_0($a2)
    beqz    $at, branch_0x80096854
    sw      $t8, 0x0($v0)
    sll     $t9, $t8, 2
    lui     $at, %hi(SwitchTable_0x800EB038)
    addu    $at, $at, $t9
    lw      $t9, %lo(SwitchTable_0x800EB038)($at)
    jr      $t9
    nop

branch_0x80096784:
    addiu   $s0, $zero, 0x4
    addiu   $t6, $zero, 0x7
    lui     $at, %hi(Unknown_0x801ce4a2)
    sw      $t6, 0x64($sp)
    sh      $zero, %lo(Unknown_0x801ce4a2)($at)
    b       branch_0x80096854
    sw      $s0, 0x68($sp)

branch_0x800967a0:
    lui     $v1, %hi(Unknown_0x801ce4a0)
    addiu   $v1, $v1, %lo(Unknown_0x801ce4a0)
    sh      $zero, 0x6($v1)
    lh      $t8, 0x6($v1)
    addiu   $s0, $zero, 0x2
    addiu   $t7, $zero, 0x2
    sw      $t7, 0x64($sp)
    sw      $s0, 0x68($sp)
    b       branch_0x80096854
    sh      $t8, 0x2($v1)

branch_0x800967c8:
    lui     $at, %hi(Unknown_0x801ce4a2)
    sh      $zero, %lo(Unknown_0x801ce4a2)($at)
    sh      $zero, %lo(Unknown_0x801ce4a6)($at)
    lui     $at, %hi(Unknown_0x801ce4aa)
    addiu   $s0, $zero, 0x4
    addiu   $t9, $zero, 0x4
    sh      $zero, %lo(Unknown_0x801ce4aa)($at)
    sh      $zero, %lo(Unknown_0x801ce4ae)($at)
    sw      $t9, 0x64($sp)
    b       branch_0x80096854
    sw      $s0, 0x68($sp)

branch_0x800967f4:
    lui     $t1, %hi(Unknown_0x801ce4c0)
    lui     $v1, %hi(Unknown_0x801ce4a0)
    addiu   $v1, $v1, %lo(Unknown_0x801ce4c0)
    addiu   $t1, $t1, %lo(Unknown_0x801ce4a0)
branch_0x80096804:
    addiu   $t1, $t1, 0x10
    sh      $zero, -0xe($t1)
    sh      $zero, -0xa($t1)
    sh      $zero, -0x6($t1)
    bne     $t1, $v1, branch_0x80096804
    sh      $zero, -0x2($t1)
    addiu   $s0, $zero, 0x8
    addiu   $t6, $zero, 0x8
    sw      $t6, 0x64($sp)
    b       branch_0x80096854
    sw      $s0, 0x68($sp)

branch_0x80096830:
    lui     $v1, %hi(Unknown_0x801ce4a0)
    addiu   $v1, $v1, %lo(Unknown_0x801ce4a0)
    sh      $zero, 0x6($v1)
    lh      $t8, 0x6($v1)
    addiu   $s0, $zero, 0x4
    addiu   $t7, $zero, 0x6
    sw      $t7, 0x64($sp)
    sw      $s0, 0x68($sp)
    sh      $t8, 0x2($v1)
branch_0x80096854:
    lw      $s0, 0x68($sp)
    lui     $a1, %hi(Unknown_0x800db0b0)
    addiu   $a1, $a1, %lo(Unknown_0x800db0b0)
    blez    $s0, branch_0x800969ac
    or      $t0, $zero, $zero
    lui     $t1, %hi(Unknown_0x801ce4a0)
    addiu   $t1, $t1, %lo(Unknown_0x801ce4a0)
    or      $a3, $zero, $zero
    addiu   $t3, $zero, 0x3
    addiu   $t2, $zero, 0x2
    lw      $a0, 0x60($sp)
branch_0x80096880:
    or      $t5, $a1, $zero
    bgez    $t0, branch_0x80096898
    andi    $v0, $t0, 0x3
    beqz    $v0, branch_0x80096898
    nop
    addiu   $v0, $v0, 0xfffc
branch_0x80096898:
    beqz    $v0, branch_0x800968c0
    lui     $t6, %hi(FileList_0x800da950)
    beq     $v0, $t4, branch_0x800968c8 # == 1
    nop
    beq     $v0, $t2, branch_0x800968d0 # == 2
    nop
    beql    $v0, $t3, branch_0x800968dc # == 3
    lw      $a0, 0x80($sp)
    b       branch_0x800968dc
    nop
branch_0x800968c0:
    b       branch_0x800968dc
    lw      $a0, 0x74($sp)
branch_0x800968c8:
    b       branch_0x800968dc
    lw      $a0, 0x78($sp)
branch_0x800968d0:
    b       branch_0x800968dc
    lw      $a0, 0x7c($sp)


.globl Function_0x800968d8
Function_0x800968d8: # 0x800968d8
    lw      $a0, 0x80($sp)
branch_0x800968dc:
    bgez    $a0, branch_0x800968e8
    addiu   $t6, $t6, %lo(FileList_0x800da950)
    or      $a0, $zero, $zero
branch_0x800968e8:
    sll     $t9, $a0, 4
    slti    $at, $t0, 0x4
    bnez    $at, branch_0x80096900
    addu    $v0, $t9, $t6
    addiu   $a0, $a0, 0x4
    addiu   $v0, $v0, 0x40

branch_0x80096900:
    lh      $t7, 0x2($t1)
    addiu   $t0, $t0, 0x1
    sh      $a0, 0x0($t1)
    beqz    $t7, branch_0x8009691c
    addiu   $t6, $zero, 0x4
    addiu   $a0, $a0, 0x8
    addiu   $v0, $v0, 0x80

branch_0x8009691c:
    lw      $at, FileData_Start($v0) # FileStart
    lw      $t9, FileData_End($v0) # FileEnd
    lui     $v1, %hi(Unknown_0x801ce49c)
    sw      $at, FileData_Start($a1)
    lw      $at, FileData_8($v0) # ?
    sw      $t9, FileData_End($a1)
    lw      $t9, FileData_c($v0) # ?
    sw      $at, FileData_8($a1)
    sw      $t6, 0x8($a1)
    sw      $t9, FileData_c($a1)
    lw      $v1, %lo(Unknown_0x801ce49c)($v1)
    lui     $t7, %hi(Unknown_0x800da920)
    addiu   $t1, $t1, 0x4
    beq     $t3, $v1, branch_0x80096960
    addu    $t7, $t7, $a3
    bne     $t2, $v1, branch_0x8009696c
    addiu   $at, $zero, 0x4
branch_0x80096960:
    lw      $t7, %lo(Unknown_0x800da920)($t7)
    b       branch_0x80096994
    sw      $t7, FileData_c($a1)
branch_0x8009696c:
    bne     $v1, $at, branch_0x80096988
    lui     $t9, %hi(Unknown_0x800da910)
    lui     $t8, %hi(Unknown_0x800da940)
    addu    $t8, $t8, $a3
    lw      $t8, %lo(Unknown_0x800da940)($t8)
    b       branch_0x80096994
    sw      $t8, FileData_c($a1)
branch_0x80096988:
    addu    $t9, $t9, $a3
    lw      $t9, %lo(Unknown_0x800da910)($t9)
    sw      $t9, FileData_c($a1)
branch_0x80096994:
    addiu   $a3, $a3, 0x4
    bne     $t0, $s0, branch_0x80096880
    addiu   $a1, $a1, FileData_Size

    sw      $a0, 0x60($sp)
    or      $t0, $zero, $zero
    sw      $t5, 0x54($sp)
branch_0x800969ac:
    lw      $t5, 0x54($sp)
    addiu   $t2, $zero, 0x2
    addiu   $t3, $zero, 0x3
    addiu   $v0, $sp, 0x40
    addiu   $v1, $sp, 0x50
    addiu   $t5, $t5, 0x10
    sw      $zero, 0x0($t5)
    sw      $zero, 0x4($t5)
    sw      $zero, 0x8($t5)
    sw      $zero, 0xc($t5)
branch_0x800969d4:
    addiu   $v0, $v0, 0x2
    sltu    $at, $v0, $v1
    bnez    $at, branch_0x800969d4
    sh      $zero, -0x2($v0)
    lw      $t6, 0x70($sp)
    sltiu   $at, $t6, 0x5
    beqz    $at, branch_0x80097a08
    sw      $t6, 0x1c($sp)
    sll     $t7, $t6, 2
    lui     $at, %hi(SwitchTable_0x800EB04C)
    addu    $at, $at, $t7
    lw      $t7, %lo(SwitchTable_0x800EB04C)($at)
    jr      $t7
    nop

branch_0x80096a0c: # 0x80096a0c
    lui     $v0, %hi(Unknown_0x801ce4a0)
    lh      $v0, %lo(Unknown_0x801ce4a0)($v0)
    addiu   $a1, $zero, 0x44
    lui     $a0, %hi(Unknown_0x800daa50)
    multu   $v0, $t3
    addiu   $a0, $a0, %lo(Unknown_0x800daa50)
    lui     $t8, %hi(Unknown_0x80227820)
    addiu   $t8, $t8, %lo(Unknown_0x80227820)
    mflo    $t9
    nop
    nop
    multu   $t9, $a1
    mflo    $t6
    addu    $t7, $a0, $t6
    addiu   $t6, $t7, 0x3c
branch_0x80096a48:
    lw      $at, 0x0($t7)
    addiu   $t7, $t7, 0xc
    addiu   $t8, $t8, 0xc
    sw      $at, -0xc($t8)
    lw      $at, -0x8($t7)
    sw      $at, -0x8($t8)
    lw      $at, -0x4($t7)
    bne     $t7, $t6, branch_0x80096a48
    sw      $at, -0x4($t8)
    lw      $at, 0x0($t7)
    lui     $t1, %hi(Unknown_0x801ce4a4)
    sw      $at, 0x0($t8)
    lw      $t6, 0x4($t7)
    lui     $t7, %hi(Unknown_0x80227864)
    addiu   $t7, $t7, %lo(Unknown_0x80227864)
    sw      $t6, 0x4($t8)
    lh      $t1, %lo(Unknown_0x801ce4a4)($t1)
    multu   $t1, $t3
    mflo    $t9
    nop
    nop
    multu   $t9, $a1
    mflo    $t6
    addu    $v1, $a0, $t6
    or      $t9, $v1, $zero
    addiu   $t6, $v1, 0x3c
branch_0x80096ab0:
    lw      $at, 0x44($t9)
    addiu   $t9, $t9, 0xc
    addiu   $t7, $t7, 0xc
    sw      $at, -0xc($t7)
    lw      $at, 0x3c($t9)
    sw      $at, -0x8($t7)
    lw      $at, 0x40($t9)
    bne     $t9, $t6, branch_0x80096ab0
    sw      $at, -0x4($t7)
    lw      $at, 0x44($t9)
    lui     $t8, %hi(Unknown_0x802278a8)
    addiu   $t8, $t8, %lo(Unknown_0x802278a8)
    sw      $at, 0x0($t7)
    lw      $t6, 0x48($t9)
    or      $t9, $v1, $zero
    sw      $t6, 0x4($t7)
    addiu   $t7, $v1, 0x3c
branch_0x80096af4:
    lw      $at, 0x88($t9)
    addiu   $t9, $t9, 0xc
    addiu   $t8, $t8, 0xc
    sw      $at, -0xc($t8)
    lw      $at, 0x80($t9)
    sw      $at, -0x8($t8)
    lw      $at, 0x84($t9)
    bne     $t9, $t7, branch_0x80096af4
    sw      $at, -0x4($t8)
    lw      $at, 0x88($t9)
    lui     $t4, %hi(Unknown_0x801ce4a8)
    sw      $at, 0x0($t8)
    lw      $t7, 0x8c($t9)
    lui     $t9, %hi(Unknown_0x802278ec)
    addiu   $t9, $t9, %lo(Unknown_0x802278ec)
    sw      $t7, 0x4($t8)
    lh      $t4, %lo(Unknown_0x801ce4a8)($t4)
    multu   $t4, $t3
    mflo    $t6
    nop
    nop
    multu   $t6, $a1
    mflo    $t7
    addu    $a3, $a0, $t7
    or      $t6, $a3, $zero
    addiu   $t7, $a3, 0x3c
branch_0x80096b5c:
    lw      $at, 0x44($t6)
    addiu   $t6, $t6, 0xc
    addiu   $t9, $t9, 0xc
    sw      $at, -0xc($t9)
    lw      $at, 0x3c($t6)
    sw      $at, -0x8($t9)
    lw      $at, 0x40($t6)
    bne     $t6, $t7, branch_0x80096b5c
    sw      $at, -0x4($t9)
    lw      $at, 0x44($t6)
    lui     $t8, %hi(Unknown_0x80227930)
    addiu   $t8, $t8, %lo(Unknown_0x80227930)
    sw      $at, 0x0($t9)
    lw      $t7, 0x48($t6)
    or      $t6, $a3, $zero
    sw      $t7, 0x4($t9)
    addiu   $t9, $a3, 0x3c
branch_0x80096ba0:
    lw      $at, 0x88($t6)
    addiu   $t6, $t6, 0xc
    addiu   $t8, $t8, 0xc
    sw      $at, -0xc($t8)
    lw      $at, 0x80($t6)
    sw      $at, -0x8($t8)
    lw      $at, 0x84($t6)
    bne     $t6, $t9, branch_0x80096ba0
    sw      $at, -0x4($t8)
    lw      $at, 0x88($t6)
    lui     $t5, %hi(Unknown_0x801ce4ac)
    addiu   $a3, $zero, 0x6
    sw      $at, 0x0($t8)
    lw      $t9, 0x8c($t6)
    lui     $t6, %hi(Unknown_0x80227974)
    addiu   $t6, $t6, %lo(Unknown_0x80227974)
    sw      $t9, 0x4($t8)
    lh      $t5, %lo(Unknown_0x801ce4ac)($t5)
    multu   $t5, $t3
    mflo    $t7
    nop
    nop
    multu   $t7, $a1
    mflo    $t9
    addu    $t0, $a0, $t9
    or      $t7, $t0, $zero
    addiu   $t9, $t0, 0x3c
branch_0x80096c0c:
    lw      $at, 0x44($t7)
    addiu   $t7, $t7, 0xc
    addiu   $t6, $t6, 0xc
    sw      $at, -0xc($t6)
    lw      $at, 0x3c($t7)
    sw      $at, -0x8($t6)
    lw      $at, 0x40($t7)
    bne     $t7, $t9, branch_0x80096c0c
    sw      $at, -0x4($t6)
    lw      $at, 0x44($t7)
    lui     $t8, %hi(Unknown_0x802279b8)
    addiu   $t8, $t8, %lo(Unknown_0x802279b8)
    sw      $at, 0x0($t6)
    lw      $t9, 0x48($t7)
    or      $t7, $t0, $zero
    addiu   $v1, $zero, 0x1
    sw      $t9, 0x4($t6)
    addiu   $t6, $t0, 0x3c
branch_0x80096c54:
    lw      $at, 0x88($t7)
    addiu   $t7, $t7, 0xc
    addiu   $t8, $t8, 0xc
    sw      $at, -0xc($t8)
    lw      $at, 0x80($t7)
    sw      $at, -0x8($t8)
    lw      $at, 0x84($t7)
    bne     $t7, $t6, branch_0x80096c54
    sw      $at, -0x4($t8)
    lw      $at, 0x88($t7)
    addiu   $t9, $zero, 0x1
    sw      $at, 0x0($t8)
    lw      $t6, 0x8c($t7)
    bne     $t2, $v0, branch_0x80096c9c
    sw      $t6, 0x4($t8)
    sh      $t9, 0x40($sp)
    b       branch_0x80096ca8
    addiu   $a3, $zero, 0x6
branch_0x80096c9c:
    bne     $a3, $v0, branch_0x80096ca8
    nop
    sh      $t2, 0x40($sp)
branch_0x80096ca8:
    bne     $t2, $t1, branch_0x80096cbc
    addiu   $v0, $zero, 0x1
    sh      $v0, 0x42($sp)
    b       branch_0x80096ccc
    sh      $v0, 0x44($sp)
branch_0x80096cbc:
    bne     $a3, $t1, branch_0x80096ccc
    nop
    sh      $t2, 0x42($sp)
    sh      $t2, 0x44($sp)
branch_0x80096ccc:
    bne     $t2, $t4, branch_0x80096ce0
    addiu   $t8, $zero, 0x1
    sh      $v1, 0x46($sp)
    b       branch_0x80096cf0
    sh      $v1, 0x48($sp)
branch_0x80096ce0:
    bne     $a3, $t4, branch_0x80096cf0
    nop
    sh      $t2, 0x46($sp)
    sh      $t2, 0x48($sp)
branch_0x80096cf0:
    bne     $t2, $t5, branch_0x80096d04
    andi    $v0, $s0, 0x3
    sh      $t8, 0x4c($sp)
    b       branch_0x80096d14
    sh      $t8, 0x4a($sp)
branch_0x80096d04:
    bne     $a3, $t5, branch_0x80096d14
    nop
    sh      $t2, 0x4c($sp)
    sh      $t2, 0x4a($sp)
branch_0x80096d14:
    blez    $s0, branch_0x80097a08
    or      $t0, $zero, $zero
    beqz    $v0, branch_0x80096d8c
    or      $v1, $v0, $zero
    lui     $t8, %hi(Unknown_0x801ce4a0)
    addiu   $t8, $t8, %lo(Unknown_0x801ce4a0)
    sll     $t7, $zero, 2
    addu    $t1, $t7, $t8
branch_0x80096d34:
    lh      $v0, 0x0($t1)
    bne     $t2, $v0, branch_0x80096d5c
    nop
    bnez    $t0, branch_0x80096d50
    addu    $t9, $t0, $t0
    b       branch_0x80096d7c
    sw      $t0, 0x0($a2)
branch_0x80096d50:
    addiu   $t6, $t9, 0xffff
    b       branch_0x80096d7c
    sw      $t6, 0x0($a2)
branch_0x80096d5c:
    bnel    $a3, $v0, branch_0x80096d80
    addiu   $t0, $t0, 0x1
    bnez    $t0, branch_0x80096d74
    addu    $t7, $t0, $t0
    b       branch_0x80096d7c
    sw      $t0, 0x4($a2)
branch_0x80096d74:
    addiu   $t8, $t7, 0xffff
    sw      $t8, 0x4($a2)
branch_0x80096d7c:
    addiu   $t0, $t0, 0x1
branch_0x80096d80:
    bne     $v1, $t0, branch_0x80096d34
    addiu   $t1, $t1, 0x4
    beq     $t0, $s0, branch_0x80097a08
branch_0x80096d8c:
    lui     $t6, %hi(Unknown_0x801ce4a0)
    addiu   $t6, $t6, %lo(Unknown_0x801ce4a0)
    sll     $t9, $t0, 2
    addu    $t1, $t9, $t6
    addiu   $a1, $zero, 0xffff
    addiu   $a0, $zero, 0xfffd
    addiu   $v1, $zero, 0xfffe
branch_0x80096da8:
    lh      $v0, 0x0($t1)
    bne     $t2, $v0, branch_0x80096dd0
    nop
    bnez    $t0, branch_0x80096dc4
    addu    $t7, $t0, $t0
    b       branch_0x80096df0
    sw      $t0, 0x0($a2)
branch_0x80096dc4:
    addiu   $t8, $t7, 0xffff
    b       branch_0x80096df0
    sw      $t8, 0x0($a2)
branch_0x80096dd0:
    bnel    $a3, $v0, branch_0x80096df4
    lh      $v0, 0x4($t1)
    bnez    $t0, branch_0x80096de8
    addu    $t9, $t0, $t0
    b       branch_0x80096df0
    sw      $t0, 0x4($a2)
branch_0x80096de8:
    addiu   $t6, $t9, 0xffff
    sw      $t6, 0x4($a2)
branch_0x80096df0:
    lh      $v0, 0x4($t1)
branch_0x80096df4:
    bne     $t2, $v0, branch_0x80096e1c
    nop
    bne     $t0, $a1, branch_0x80096e10
    addu    $t8, $t0, $t0
    addiu   $t7, $t0, 0x1
    b       branch_0x80096e40
    sw      $t7, 0x0($a2)
branch_0x80096e10:
    addiu   $t9, $t8, 0x1
    b       branch_0x80096e40
    sw      $t9, 0x0($a2)
branch_0x80096e1c:
    bnel    $a3, $v0, branch_0x80096e44
    lh      $v0, 0x8($t1)
    bne     $t0, $a1, branch_0x80096e38
    addu    $t7, $t0, $t0
    addiu   $t6, $t0, 0x1
    b       branch_0x80096e40
    sw      $t6, 0x4($a2)
branch_0x80096e38:
    addiu   $t8, $t7, 0x1
    sw      $t8, 0x4($a2)
branch_0x80096e40:
    lh      $v0, 0x8($t1)
branch_0x80096e44:
    bne     $t2, $v0, branch_0x80096e6c
    nop
    bne     $t0, $v1, branch_0x80096e60
    addu    $t6, $t0, $t0
    addiu   $t9, $t0, 0x2
    b       branch_0x80096e90
    sw      $t9, 0x0($a2)
branch_0x80096e60:
    addiu   $t7, $t6, 0x3
    b       branch_0x80096e90
    sw      $t7, 0x0($a2)
branch_0x80096e6c:
    bnel    $a3, $v0, branch_0x80096e94
    lh      $v0, 0xc($t1)
    bne     $t0, $v1, branch_0x80096e88
    addu    $t9, $t0, $t0
    addiu   $t8, $t0, 0x2
    b       branch_0x80096e90
    sw      $t8, 0x4($a2)
branch_0x80096e88:
    addiu   $t6, $t9, 0x3
    sw      $t6, 0x4($a2)
branch_0x80096e90:
    lh      $v0, 0xc($t1)
branch_0x80096e94:
    bne     $t2, $v0, branch_0x80096ebc
    nop
    bne     $t0, $a0, branch_0x80096eb0
    addu    $t8, $t0, $t0
    addiu   $t7, $t0, 0x3
    b       branch_0x80096ee0
    sw      $t7, 0x0($a2)
branch_0x80096eb0:
    addiu   $t9, $t8, 0x5
    b       branch_0x80096ee0
    sw      $t9, 0x0($a2)
branch_0x80096ebc:
    bnel    $a3, $v0, branch_0x80096ee4
    addiu   $t0, $t0, 0x4
    bne     $t0, $a0, branch_0x80096ed8
    addu    $t7, $t0, $t0
    addiu   $t6, $t0, 0x3
    b       branch_0x80096ee0
    sw      $t6, 0x4($a2)
branch_0x80096ed8:
    addiu   $t8, $t7, 0x5
    sw      $t8, 0x4($a2)
branch_0x80096ee0:
    addiu   $t0, $t0, 0x4
branch_0x80096ee4:
    bne     $t0, $s0, branch_0x80096da8
    addiu   $t1, $t1, 0x10
    b       branch_0x80097a0c
    lw      $t8, 0x64($sp)

branch_0x80096ef4: # 0x80096ef4
    lui     $v1, %hi(Unknown_0x801ce4a0)
    addiu   $v1, $v1, %lo(Unknown_0x801ce4a0)
    lh      $v0, 0x0($v1)
    addiu   $a1, $zero, 0x44
    lui     $a0, %hi(Unknown_0x800daa50)
    multu   $v0, $t3
    addiu   $a0, $a0, %lo(Unknown_0x800daa50)
    lui     $t9, %hi(Unknown_0x80227820)
    addiu   $t9, $t9, %lo(Unknown_0x80227820)
    addiu   $a3, $zero, 0x6
    mflo    $t6
    nop
    nop
    multu   $t6, $a1
    mflo    $t7
    addu    $t8, $a0, $t7
    addiu   $t7, $t8, 0x3c
branch_0x80096f38:
    lw      $at, 0x0($t8)
    addiu   $t8, $t8, 0xc
    addiu   $t9, $t9, 0xc
    sw      $at, -0xc($t9)
    lw      $at, -0x8($t8)
    sw      $at, -0x8($t9)
    lw      $at, -0x4($t8)
    bne     $t8, $t7, branch_0x80096f38
    sw      $at, -0x4($t9)
    lw      $at, 0x0($t8)
    lui     $t6, %hi(Unknown_0x80227864)
    addiu   $t6, $t6, %lo(Unknown_0x80227864)
    sw      $at, 0x0($t9)
    lw      $t7, 0x4($t8)
    sw      $t7, 0x4($t9)
    lh      $t1, 0x4($v1)
    multu   $t1, $t3
    mflo    $t7
    nop
    nop
    multu   $t7, $a1
    addiu   $t7, $zero, 0x1
    mflo    $t8
    addu    $t9, $a0, $t8
    addiu   $t8, $t9, 0x3c
branch_0x80096f9c:
    lw      $at, 0x0($t9)
    addiu   $t9, $t9, 0xc
    addiu   $t6, $t6, 0xc
    sw      $at, -0xc($t6)
    lw      $at, -0x8($t9)
    sw      $at, -0x8($t6)
    lw      $at, -0x4($t9)
    bne     $t9, $t8, branch_0x80096f9c
    sw      $at, -0x4($t6)
    lw      $at, 0x0($t9)
    sw      $at, 0x0($t6)
    lw      $t8, 0x4($t9)
    bne     $t2, $v0, branch_0x80096fe0
    sw      $t8, 0x4($t6)
    sh      $t7, 0x40($sp)
    b       branch_0x80096fec
    addiu   $a3, $zero, 0x6
branch_0x80096fe0:
    bne     $a3, $v0, branch_0x80096fec
    nop
    sh      $t2, 0x40($sp)
branch_0x80096fec:
    bne     $t2, $t1, branch_0x80096ffc
    addiu   $t8, $zero, 0x1
    b       branch_0x80097008
    sh      $t8, 0x42($sp)
branch_0x80096ffc:
    bne     $a3, $t1, branch_0x80097008
    nop
    sh      $t2, 0x42($sp)
branch_0x80097008:
    blez    $s0, branch_0x80097a08
    or      $t0, $zero, $zero
    andi    $v0, $s0, 0x3
    beqz    $v0, branch_0x8009705c
    or      $v1, $v0, $zero
    lui     $t6, %hi(Unknown_0x801ce4a0)
    addiu   $t6, $t6, %lo(Unknown_0x801ce4a0)
    sll     $t9, $zero, 2
    addu    $t1, $t9, $t6
branch_0x8009702c:
    lh      $v0, 0x0($t1)
    bne     $t2, $v0, branch_0x80097040
    nop
    b       branch_0x8009704c
    sw      $t0, 0x0($a2)
branch_0x80097040:
    bnel    $a3, $v0, branch_0x80097050
    addiu   $t0, $t0, 0x1
    sw      $t0, 0x4($a2)
branch_0x8009704c:
    addiu   $t0, $t0, 0x1
branch_0x80097050:
    bne     $v1, $t0, branch_0x8009702c
    addiu   $t1, $t1, 0x4
    beq     $t0, $s0, branch_0x80097a08
branch_0x8009705c:
    lui     $t8, %hi(Unknown_0x801ce4a0)
    addiu   $t8, $t8, %lo(Unknown_0x801ce4a0)
    sll     $t7, $t0, 2
    addu    $t1, $t7, $t8
branch_0x8009706c:
    lh      $v0, 0x0($t1)
    addiu   $t9, $t0, 0x1
    addiu   $t7, $t0, 0x2
    bne     $t2, $v0, branch_0x80097088
    nop
    b       branch_0x80097094
    sw      $t0, 0x0($a2)
branch_0x80097088:
    bnel    $a3, $v0, branch_0x80097098
    lh      $v0, 0x4($t1)
    sw      $t0, 0x4($a2)
branch_0x80097094:
    lh      $v0, 0x4($t1)
branch_0x80097098:
    bne     $t2, $v0, branch_0x800970a8
    nop
    b       branch_0x800970b4
    sw      $t9, 0x0($a2)
branch_0x800970a8:
    bne     $a3, $v0, branch_0x800970b4
    addiu   $t6, $t0, 0x1
    sw      $t6, 0x4($a2)
branch_0x800970b4:
    lh      $v0, 0x8($t1)
    addiu   $t9, $t0, 0x3
    bne     $t2, $v0, branch_0x800970cc
    nop
    b       branch_0x800970d8
    sw      $t7, 0x0($a2)
branch_0x800970cc:
    bne     $a3, $v0, branch_0x800970d8
    addiu   $t8, $t0, 0x2
    sw      $t8, 0x4($a2)
branch_0x800970d8:
    lh      $v0, 0xc($t1)
    bne     $t2, $v0, branch_0x800970ec
    nop
    b       branch_0x800970f8
    sw      $t9, 0x0($a2)
branch_0x800970ec:
    bne     $a3, $v0, branch_0x800970f8
    addiu   $t6, $t0, 0x3
    sw      $t6, 0x4($a2)
branch_0x800970f8:
    addiu   $t0, $t0, 0x4
    bne     $t0, $s0, branch_0x8009706c
    addiu   $t1, $t1, 0x10
    b       branch_0x80097a0c
    lw      $t8, 0x64($sp)

branch_0x8009710c: # 0x8009710c
    lui     $v1, %hi(Unknown_0x801ce4a0)
    addiu   $v1, $v1, %lo(Unknown_0x801ce4a0)
    lh      $v0, 0x0($v1)
    addiu   $a1, $zero, 0x44
    lui     $a0, %hi(Unknown_0x800daa50)
    multu   $v0, $t3
    addiu   $a0, $a0, %lo(Unknown_0x800daa50)
    lui     $t7, %hi(Unknown_0x80227820)
    addiu   $t7, $t7, %lo(Unknown_0x80227820)
    addiu   $a3, $zero, 0x6
    mflo    $t8
    nop
    nop
    multu   $t8, $a1
    mflo    $t9
    addu    $t6, $a0, $t9
    addiu   $t9, $t6, 0x3c
branch_0x80097150:
    lw      $at, 0x0($t6)
    addiu   $t6, $t6, 0xc
    addiu   $t7, $t7, 0xc
    sw      $at, -0xc($t7)
    lw      $at, -0x8($t6)
    sw      $at, -0x8($t7)
    lw      $at, -0x4($t6)
    bne     $t6, $t9, branch_0x80097150
    sw      $at, -0x4($t7)
    lw      $at, 0x0($t6)
    lui     $t8, %hi(Unknown_0x80227864)
    addiu   $t8, $t8, %lo(Unknown_0x80227864)
    sw      $at, 0x0($t7)
    lw      $t9, 0x4($t6)
    sw      $t9, 0x4($t7)
    lh      $t1, 0x4($v1)
    multu   $t1, $t3
    mflo    $t9
    nop
    nop
    multu   $t9, $a1
    mflo    $t6
    addu    $t7, $a0, $t6
    addiu   $t6, $t7, 0x3c
branch_0x800971b0:
    lw      $at, 0x0($t7)
    addiu   $t7, $t7, 0xc
    addiu   $t8, $t8, 0xc
    sw      $at, -0xc($t8)
    lw      $at, -0x8($t7)
    sw      $at, -0x8($t8)
    lw      $at, -0x4($t7)
    bne     $t7, $t6, branch_0x800971b0
    sw      $at, -0x4($t8)
    lw      $at, 0x0($t7)
    lui     $t9, %hi(Unknown_0x802278a8)
    addiu   $t9, $t9, %lo(Unknown_0x802278a8)
    sw      $at, 0x0($t8)
    lw      $t6, 0x4($t7)
    sw      $t6, 0x4($t8)
    lh      $t4, 0x8($v1)
    multu   $t4, $t3
    mflo    $t6
    nop
    nop
    multu   $t6, $a1
    mflo    $t7
    addu    $t8, $a0, $t7
    addiu   $t7, $t8, 0x3c
branch_0x80097210:
    lw      $at, 0x0($t8)
    addiu   $t8, $t8, 0xc
    addiu   $t9, $t9, 0xc
    sw      $at, -0xc($t9)
    lw      $at, -0x8($t8)
    sw      $at, -0x8($t9)
    lw      $at, -0x4($t8)
    bne     $t8, $t7, branch_0x80097210
    sw      $at, -0x4($t9)
    lw      $at, 0x0($t8)
    lui     $t6, %hi(Unknown_0x802278ec)
    addiu   $t6, $t6, %lo(Unknown_0x802278ec)
    sw      $at, 0x0($t9)
    lw      $t7, 0x4($t8)
    sw      $t7, 0x4($t9)
    lh      $t5, 0xc($v1)
    multu   $t5, $t3
    mflo    $t7
    nop
    nop
    multu   $t7, $a1
    addiu   $t7, $zero, 0x1
    mflo    $t8
    addu    $t9, $a0, $t8
    addiu   $t8, $t9, 0x3c
branch_0x80097274:
    lw      $at, 0x0($t9)
    addiu   $t9, $t9, 0xc
    addiu   $t6, $t6, 0xc
    sw      $at, -0xc($t6)
    lw      $at, -0x8($t9)
    sw      $at, -0x8($t6)
    lw      $at, -0x4($t9)
    bne     $t9, $t8, branch_0x80097274
    sw      $at, -0x4($t6)
    lw      $at, 0x0($t9)
    sw      $at, 0x0($t6)
    lw      $t8, 0x4($t9)
    bne     $t2, $v0, branch_0x800972b8
    sw      $t8, 0x4($t6)
    sh      $t7, 0x40($sp)
    b       branch_0x800972c4
    addiu   $a3, $zero, 0x6
branch_0x800972b8:
    bne     $a3, $v0, branch_0x800972c4
    nop
    sh      $t2, 0x40($sp)
branch_0x800972c4:
    bne     $t2, $t1, branch_0x800972d4
    addiu   $t8, $zero, 0x1
    b       branch_0x800972e0
    sh      $t8, 0x42($sp)
branch_0x800972d4:
    bne     $a3, $t1, branch_0x800972e0
    nop
    sh      $t2, 0x42($sp)
branch_0x800972e0:
    bne     $t2, $t4, branch_0x800972f0
    addiu   $v0, $zero, 0x1
    b       branch_0x800972fc
    sh      $v0, 0x44($sp)
branch_0x800972f0:
    bne     $a3, $t4, branch_0x800972fc
    nop
    sh      $t2, 0x44($sp)
branch_0x800972fc:
    bne     $t2, $t5, branch_0x8009730c
    addiu   $t6, $zero, 0x1
    b       branch_0x80097318
    sh      $t6, 0x46($sp)
branch_0x8009730c:
    bne     $a3, $t5, branch_0x80097318
    nop
    sh      $t2, 0x46($sp)
branch_0x80097318:
    blez    $s0, branch_0x80097a08
    or      $t0, $zero, $zero
    andi    $v0, $s0, 0x3
    beqz    $v0, branch_0x8009736c
    or      $v1, $v0, $zero
    lui     $t8, %hi(Unknown_0x801ce4a0)
    addiu   $t8, $t8, %lo(Unknown_0x801ce4a0)
    sll     $t7, $zero, 2
    addu    $t1, $t7, $t8
branch_0x8009733c:
    lh      $v0, 0x0($t1)
    bne     $t2, $v0, branch_0x80097350
    nop
    b       branch_0x8009735c
    sw      $t0, 0x0($a2)
branch_0x80097350:
    bnel    $a3, $v0, branch_0x80097360
    addiu   $t0, $t0, 0x1
    sw      $t0, 0x4($a2)
branch_0x8009735c:
    addiu   $t0, $t0, 0x1
branch_0x80097360:
    bne     $v1, $t0, branch_0x8009733c
    addiu   $t1, $t1, 0x4
    beq     $t0, $s0, branch_0x80097a08
branch_0x8009736c:
    lui     $t6, %hi(Unknown_0x801ce4a0)
    addiu   $t6, $t6, %lo(Unknown_0x801ce4a0)
    sll     $t9, $t0, 2
    addu    $t1, $t9, $t6
branch_0x8009737c:
    lh      $v0, 0x0($t1)
    addiu   $t7, $t0, 0x1
    addiu   $t9, $t0, 0x2
    bne     $t2, $v0, branch_0x80097398
    nop
    b       branch_0x800973a4
    sw      $t0, 0x0($a2)
branch_0x80097398:
    bnel    $a3, $v0, branch_0x800973a8
    lh      $v0, 0x4($t1)
    sw      $t0, 0x4($a2)
branch_0x800973a4:
    lh      $v0, 0x4($t1)
branch_0x800973a8:
    bne     $t2, $v0, branch_0x800973b8
    nop
    b       branch_0x800973c4
    sw      $t7, 0x0($a2)
branch_0x800973b8:
    bne     $a3, $v0, branch_0x800973c4
    addiu   $t8, $t0, 0x1
    sw      $t8, 0x4($a2)
branch_0x800973c4:
    lh      $v0, 0x8($t1)
    addiu   $t7, $t0, 0x3
    bne     $t2, $v0, branch_0x800973dc
    nop
    b       branch_0x800973e8
    sw      $t9, 0x0($a2)
branch_0x800973dc:
    bne     $a3, $v0, branch_0x800973e8
    addiu   $t6, $t0, 0x2
    sw      $t6, 0x4($a2)
branch_0x800973e8:
    lh      $v0, 0xc($t1)
    bne     $t2, $v0, branch_0x800973fc
    nop
    b       branch_0x80097408
    sw      $t7, 0x0($a2)
branch_0x800973fc:
    bne     $a3, $v0, branch_0x80097408
    addiu   $t8, $t0, 0x3
    sw      $t8, 0x4($a2)
branch_0x80097408:
    addiu   $t0, $t0, 0x4
    bne     $t0, $s0, branch_0x8009737c
    addiu   $t1, $t1, 0x10
    b       branch_0x80097a0c
    lw      $t8, 0x64($sp)

branch_0x8009741c: # 0x8009741c
    lui     $v1, %hi(Unknown_0x801ce4a0)
    addiu   $v1, $v1, %lo(Unknown_0x801ce4a0)
    lh      $v0, 0x0($v1)
    addiu   $a1, $zero, 0x44
    lui     $a0, %hi(Unknown_0x800daa50)
    multu   $v0, $t3
    addiu   $a0, $a0, %lo(Unknown_0x800daa50)
    lui     $t9, %hi(Unknown_0x80227820)
    addiu   $t9, $t9, %lo(Unknown_0x80227820)
    mflo    $t6
    nop
    nop
    multu   $t6, $a1
    mflo    $t7
    addu    $t8, $a0, $t7
    addiu   $t7, $t8, 0x3c
branch_0x8009745c:
    lw      $at, 0x0($t8)
    addiu   $t8, $t8, 0xc
    addiu   $t9, $t9, 0xc
    sw      $at, -0xc($t9)
    lw      $at, -0x8($t8)
    sw      $at, -0x8($t9)
    lw      $at, -0x4($t8)
    bne     $t8, $t7, branch_0x8009745c
    sw      $at, -0x4($t9)
    lw      $at, 0x0($t8)
    lui     $t6, %hi(Unknown_0x80227864)
    addiu   $t6, $t6, %lo(Unknown_0x80227864)
    sw      $at, 0x0($t9)
    lw      $t7, 0x4($t8)
    sw      $t7, 0x4($t9)
    lh      $t1, 0x4($v1)
    multu   $t1, $t3
    mflo    $t7
    nop
    nop
    multu   $t7, $a1
    mflo    $t8
    addu    $t9, $a0, $t8
    addiu   $t8, $t9, 0x3c
branch_0x800974bc:
    lw      $at, 0x0($t9)
    addiu   $t9, $t9, 0xc
    addiu   $t6, $t6, 0xc
    sw      $at, -0xc($t6)
    lw      $at, -0x8($t9)
    sw      $at, -0x8($t6)
    lw      $at, -0x4($t9)
    bne     $t9, $t8, branch_0x800974bc
    sw      $at, -0x4($t6)
    lw      $at, 0x0($t9)
    sw      $at, 0x0($t6)
    lw      $t8, 0x4($t9)
    lui     $t9, %hi(Unknown_0x802278a8)
    addiu   $t9, $t9, %lo(Unknown_0x802278a8)
    sw      $t8, 0x4($t6)
    lh      $t4, 0x8($v1)
    multu   $t4, $t3
    mflo    $t7
    nop
    nop
    multu   $t7, $a1
    mflo    $t8
    addu    $a3, $a0, $t8
    or      $t8, $a3, $zero
    addiu   $t7, $a3, 0x3c
branch_0x80097520:
    lw      $at, 0x44($t8)
    addiu   $t8, $t8, 0xc
    addiu   $t9, $t9, 0xc
    sw      $at, -0xc($t9)
    lw      $at, 0x3c($t8)
    sw      $at, -0x8($t9)
    lw      $at, 0x40($t8)
    bne     $t8, $t7, branch_0x80097520
    sw      $at, -0x4($t9)
    lw      $at, 0x44($t8)
    sw      $at, 0x0($t9)
    lw      $t7, 0x48($t8)
    lui     $t8, %hi(Unknown_0x802278ec)
    addiu   $t8, $t8, %lo(Unknown_0x802278ec)
    sw      $t7, 0x4($t9)
    lh      $t5, 0xc($v1)
    multu   $t5, $t3
    mflo    $t6
    nop
    nop
    multu   $t6, $a1
    mflo    $t7
    addu    $t0, $a0, $t7
    or      $t7, $t0, $zero
    addiu   $t6, $t0, 0x3c
branch_0x80097584:
    lw      $at, 0x44($t7)
    addiu   $t7, $t7, 0xc
    addiu   $t8, $t8, 0xc
    sw      $at, -0xc($t8)
    lw      $at, 0x3c($t7)
    sw      $at, -0x8($t8)
    lw      $at, 0x40($t7)
    bne     $t7, $t6, branch_0x80097584
    sw      $at, -0x4($t8)
    lw      $at, 0x44($t7)
    lui     $t9, %hi(Unknown_0x80227930)
    addiu   $t9, $t9, %lo(Unknown_0x80227930)
    sw      $at, 0x0($t8)
    lw      $t6, 0x48($t7)
    addiu   $t7, $a3, 0x3c
    sw      $t6, 0x4($t8)
    or      $t8, $a3, $zero
branch_0x800975c8:
    lw      $at, 0x88($t8)
    addiu   $t8, $t8, 0xc
    addiu   $t9, $t9, 0xc
    sw      $at, -0xc($t9)
    lw      $at, 0x80($t8)
    sw      $at, -0x8($t9)
    lw      $at, 0x84($t8)
    bne     $t8, $t7, branch_0x800975c8
    sw      $at, -0x4($t9)
    lw      $at, 0x88($t8)
    lui     $t6, %hi(Unknown_0x80227974)
    addiu   $t6, $t6, %lo(Unknown_0x80227974)
    sw      $at, 0x0($t9)
    lw      $t7, 0x8c($t8)
    addiu   $t8, $t0, 0x3c
    addiu   $a3, $zero, 0x6
    sw      $t7, 0x4($t9)
    or      $t9, $t0, $zero
branch_0x80097610:
    lw      $at, 0x88($t9)
    addiu   $t9, $t9, 0xc
    addiu   $t6, $t6, 0xc
    sw      $at, -0xc($t6)
    lw      $at, 0x80($t9)
    sw      $at, -0x8($t6)
    lw      $at, 0x84($t9)
    bne     $t9, $t8, branch_0x80097610
    sw      $at, -0x4($t6)
    lw      $at, 0x88($t9)
    addiu   $t7, $zero, 0x1
    or      $t0, $zero, $zero
    sw      $at, 0x0($t6)
    lw      $t8, 0x8c($t9)
    addiu   $t9, $zero, 0x1
    bne     $t2, $v0, branch_0x80097660
    sw      $t8, 0x4($t6)
    sh      $t7, 0x40($sp)
    b       branch_0x8009766c
    addiu   $a3, $zero, 0x6
branch_0x80097660:
    bne     $a3, $v0, branch_0x8009766c
    nop
    sh      $t2, 0x40($sp)
branch_0x8009766c:
    bne     $t2, $t1, branch_0x8009767c
    addiu   $t8, $zero, 0x1
    b       branch_0x80097688
    sh      $t8, 0x42($sp)
branch_0x8009767c:
    bne     $a3, $t1, branch_0x80097688
    nop
    sh      $t2, 0x42($sp)
branch_0x80097688:
    bne     $t2, $t4, branch_0x8009769c
    lui     $t1, %hi(Unknown_0x801ce4a0)
    sh      $t9, 0x44($sp)
    b       branch_0x800976ac
    sh      $t9, 0x48($sp)
branch_0x8009769c:
    bne     $a3, $t4, branch_0x800976ac
    nop
    sh      $t2, 0x44($sp)
    sh      $t2, 0x48($sp)
branch_0x800976ac:
    bne     $t2, $t5, branch_0x800976c4
    addiu   $t1, $t1, %lo(Unknown_0x801ce4a0)
    addiu   $v1, $zero, 0x1
    sh      $v1, 0x46($sp)
    b       branch_0x800976d4
    sh      $v1, 0x4a($sp)
branch_0x800976c4:
    bne     $a3, $t5, branch_0x800976d4
    nop
    sh      $t2, 0x46($sp)
    sh      $t2, 0x4a($sp)
branch_0x800976d4:
    lh      $v0, 0x0($t1)
    bne     $t2, $v0, branch_0x800976e8
    nop
    b       branch_0x800976f4
    sw      $t0, 0x0($a2)
branch_0x800976e8:
    bnel    $a3, $v0, branch_0x800976f8
    addiu   $t0, $t0, 0x1
    sw      $t0, 0x4($a2)
branch_0x800976f4:
    addiu   $t0, $t0, 0x1
branch_0x800976f8:
    bne     $t0, $t2, branch_0x800976d4
    addiu   $t1, $t1, 0x4
    b       branch_0x80097a0c
    lw      $t8, 0x64($sp)

branch_0x80097708: # 0x80097708
    lw      $t9, 0x64($sp)
    or      $t0, $zero, $zero
    blez    $t9, branch_0x8009790c
    andi    $v0, $t9, 0x1
    beqz    $v0, branch_0x800977b4
    lui     $v0, %hi(Unknown_0x801ce4a0)
    lh      $v0, %lo(Unknown_0x801ce4a0)($v0)
    addiu   $a1, $zero, 0x44
    lui     $a0, %hi(Unknown_0x800daa50)
    multu   $v0, $t3
    addiu   $a0, $a0, %lo(Unknown_0x800daa50)
    lui     $t6, %hi(Unknown_0x80227820)
    addiu   $t6, $t6, %lo(Unknown_0x80227820)
    addiu   $a3, $zero, 0x6
    mflo    $t7
    nop
    nop
    multu   $t7, $a1
    mflo    $t8
    addu    $t9, $a0, $t8
    addiu   $t8, $t9, 0x3c
branch_0x8009775c:
    lw      $at, 0x0($t9)
    addiu   $t9, $t9, 0xc
    addiu   $t6, $t6, 0xc
    sw      $at, -0xc($t6)
    lw      $at, -0x8($t9)
    sw      $at, -0x8($t6)
    lw      $at, -0x4($t9)
    bne     $t9, $t8, branch_0x8009775c
    sw      $at, -0x4($t6)
    lw      $at, 0x0($t9)
    sw      $at, 0x0($t6)
    lw      $t8, 0x4($t9)
    bne     $t2, $v0, branch_0x8009779c
    sw      $t8, 0x4($t6)
    b       branch_0x800977a8
    sh      $t4, 0x40($sp)
branch_0x8009779c:
    bnel    $a3, $v0, branch_0x800977ac
    lw      $t7, 0x64($sp)
    sh      $t2, 0x40($sp)
branch_0x800977a8:
    lw      $t7, 0x64($sp)
branch_0x800977ac:
    or      $t0, $t4, $zero
    beq     $t4, $t7, branch_0x80097908
branch_0x800977b4:
    sll     $t6, $t0, 4
    addu    $t6, $t6, $t0
    lui     $t7, %hi(Unknown_0x80227820)
    addiu   $t7, $t7, %lo(Unknown_0x80227820)
    sll     $t6, $t6, 2
    lui     $t9, %hi(Unknown_0x801ce4a0)
    addiu   $t9, $t9, %lo(Unknown_0x801ce4a0)
    addu    $v1, $t6, $t7
    lui     $a0, %hi(Unknown_0x800daa50)
    sll     $t8, $t0, 2
    addu    $t1, $t8, $t9
    addiu   $a0, $a0, %lo(Unknown_0x800daa50)
    addiu   $t5, $v1, 0x44
    addiu   $a1, $zero, 0x44
    addiu   $a3, $zero, 0x6
branch_0x800977f0:
    lh      $v0, 0x0($t1)
    sll     $t7, $t0, 1
    multu   $v0, $t3
    mflo    $t8
    nop
    nop
    multu   $t8, $a1
    mflo    $t9
    addu    $t6, $a0, $t9
    addiu   $t8, $t6, 0x3c
    or      $t9, $v1, $zero
branch_0x8009781c:
    lw      $at, 0x0($t6)
    addiu   $t6, $t6, 0xc
    addiu   $t9, $t9, 0xc
    sw      $at, -0xc($t9)
    lw      $at, -0x8($t6)
    sw      $at, -0x8($t9)
    lw      $at, -0x4($t6)
    bne     $t6, $t8, branch_0x8009781c
    sw      $at, -0x4($t9)
    lw      $at, 0x0($t6)
    addiu   $v1, $v1, 0x88
    sw      $at, 0x0($t9)
    lw      $t8, 0x4($t6)
    bne     $t2, $v0, branch_0x80097864
    sw      $t8, 0x4($t9)
    addu    $t8, $sp, $t7
    b       branch_0x80097874
    sh      $t4, 0x40($t8)
branch_0x80097864:
    bne     $a3, $v0, branch_0x80097874
    sll     $t6, $t0, 1
    addu    $t9, $sp, $t6
    sh      $t2, 0x40($t9)
branch_0x80097874:
    lh      $v0, 0x4($t1)
    sll     $t9, $t0, 1
    multu   $v0, $t3
    mflo    $t7
    nop
    nop
    multu   $t7, $a1
    mflo    $t8
    addu    $t6, $a0, $t8
    addiu   $t7, $t6, 0x3c
    or      $t8, $t5, $zero
branch_0x800978a0:
    lw      $at, 0x0($t6)
    addiu   $t6, $t6, 0xc
    addiu   $t8, $t8, 0xc
    sw      $at, -0xc($t8)
    lw      $at, -0x8($t6)
    sw      $at, -0x8($t8)
    lw      $at, -0x4($t6)
    bne     $t6, $t7, branch_0x800978a0
    sw      $at, -0x4($t8)
    lw      $at, 0x0($t6)
    sw      $at, 0x0($t8)
    lw      $t7, 0x4($t6)
    bne     $t2, $v0, branch_0x800978e4
    sw      $t7, 0x4($t8)
    addu    $t7, $sp, $t9
    b       branch_0x800978f4
    sh      $t4, 0x42($t7)
branch_0x800978e4:
    bne     $a3, $v0, branch_0x800978f4
    sll     $t6, $t0, 1
    addu    $t8, $sp, $t6
    sh      $t2, 0x42($t8)
branch_0x800978f4:
    lw      $t9, 0x64($sp)
    addiu   $t0, $t0, 0x2
    addiu   $t1, $t1, 0x8
    bne     $t0, $t9, branch_0x800977f0
    addiu   $t5, $t5, 0x88
branch_0x80097908:
    or      $t0, $zero, $zero
branch_0x8009790c:
    blez    $s0, branch_0x80097a08
    addiu   $a3, $zero, 0x6
    andi    $v0, $s0, 0x3
    beqz    $v0, branch_0x80097960
    or      $v1, $v0, $zero
    lui     $t6, %hi(Unknown_0x801ce4a0)
    addiu   $t6, $t6, %lo(Unknown_0x801ce4a0)
    sll     $t7, $t0, 2
    addu    $t1, $t7, $t6
branch_0x80097930:
    lh      $v0, 0x0($t1)
    bne     $t2, $v0, branch_0x80097944
    nop
    b       branch_0x80097950
    sw      $t0, 0x0($a2)
branch_0x80097944:
    bnel    $a3, $v0, branch_0x80097954
    addiu   $t0, $t0, 0x1
    sw      $t0, 0x4($a2)
branch_0x80097950:
    addiu   $t0, $t0, 0x1
branch_0x80097954:
    bne     $v1, $t0, branch_0x80097930
    addiu   $t1, $t1, 0x4
    beq     $t0, $s0, branch_0x80097a08
branch_0x80097960:
    lui     $t9, %hi(Unknown_0x801ce4a0)
    addiu   $t9, $t9, %lo(Unknown_0x801ce4a0)
    sll     $t8, $t0, 2
    addu    $t1, $t8, $t9
branch_0x80097970:
    lh      $v0, 0x0($t1)
    addiu   $t7, $t0, 0x1
    addiu   $t8, $t0, 0x2
    bne     $t2, $v0, branch_0x8009798c
    nop
    b       branch_0x80097998
    sw      $t0, 0x0($a2)
branch_0x8009798c:
    bnel    $a3, $v0, branch_0x8009799c
    lh      $v0, 0x4($t1)
    sw      $t0, 0x4($a2)
branch_0x80097998:
    lh      $v0, 0x4($t1)
branch_0x8009799c:
    bne     $t2, $v0, branch_0x800979ac
    nop
    b       branch_0x800979b8
    sw      $t7, 0x0($a2)
branch_0x800979ac:
    bne     $a3, $v0, branch_0x800979b8
    addiu   $t6, $t0, 0x1
    sw      $t6, 0x4($a2)
branch_0x800979b8:
    lh      $v0, 0x8($t1)
    addiu   $t7, $t0, 0x3
    bne     $t2, $v0, branch_0x800979d0
    nop
    b       branch_0x800979dc
    sw      $t8, 0x0($a2)
branch_0x800979d0:
    bne     $a3, $v0, branch_0x800979dc
    addiu   $t9, $t0, 0x2
    sw      $t9, 0x4($a2)
branch_0x800979dc:
    lh      $v0, 0xc($t1)
    bne     $t2, $v0, branch_0x800979f0
    nop
    b       branch_0x800979fc
    sw      $t7, 0x0($a2)
branch_0x800979f0:
    bne     $a3, $v0, branch_0x800979fc
    addiu   $t6, $t0, 0x3
    sw      $t6, 0x4($a2)
branch_0x800979fc:
    addiu   $t0, $t0, 0x4
    bne     $t0, $s0, branch_0x80097970
    addiu   $t1, $t1, 0x10
branch_0x80097a08:
    lw      $t8, 0x64($sp)
branch_0x80097a0c:
    or      $t0, $zero, $zero
    addiu   $v0, $sp, 0x40
    blez    $t8, branch_0x80097bfc
    lui     $v1, %hi(Unknown_0x80227820)
    lui     $a3, %hi(Unknown_0x800da940)
    lui     $a2, %hi(Unknown_0x800da910)
    addiu   $a2, $a2, %lo(Unknown_0x800da910)
    addiu   $a3, $a3, %lo(Unknown_0x800da940)
    addiu   $v1, $v1, %lo(Unknown_0x80227820)
    lw      $t2, 0x1c($sp)
    addiu   $t1, $zero, 0x4
    lw      $a0, 0x58($sp)
branch_0x80097a3c:
    sltiu   $at, $t2, 0x5
    beqz    $at, branch_0x80097adc
    sll     $t9, $t2, 2
    lui     $at, %hi(SwitchTable_0x800eb060)
    addu    $at, $at, $t9
    lw      $t9, %lo(SwitchTable_0x800eb060)($at)
    jr      $t9
    nop

branch_0x80097a5c: # 0x80097a5c
    bnez    $t0, branch_0x80097a6c
    addiu   $t7, $t0, 0xffff
    b       branch_0x80097adc
    lw      $a0, 0x0($a2)
branch_0x80097a6c:
    bgez    $t7, branch_0x80097a7c
    sra     $t6, $t7, 1
    addiu   $at, $t7, 0x1
    sra     $t6, $at, 1
branch_0x80097a7c:
    sll     $t8, $t6, 2
    addu    $t9, $a2, $t8
    b       branch_0x80097adc
    lw      $a0, 0x4($t9)

branch_0x80097a8c: # 0x80097a8c
    sll     $t7, $t0, 2
    addu    $t6, $a2, $t7
    b       branch_0x80097adc
    lw      $a0, 0x0($t6)

branch_0x80097a9c: # 0x80097a9c
    slti    $at, $t0, 0x4
    beqz    $at, branch_0x80097ab4
    sll     $t8, $t0, 2
    addu    $t9, $a3, $t8
    b       branch_0x80097adc
    lw      $a0, 0x0($t9)
branch_0x80097ab4:
    bne     $t0, $t1, branch_0x80097ac4
    nop
    b       branch_0x80097adc
    lw      $a0, 0x8($a3)
branch_0x80097ac4:
    b       branch_0x80097adc
    lw      $a0, 0xc($a3)

branch_0x80097acc: # 0x80097acc
    sll     $t7, $t0, 2
    lui     $a0, %hi(Unknown_0x800da920)
    addu    $a0, $a0, $t7
    lw      $a0, %lo(Unknown_0x800da920)($a0)
branch_0x80097adc:
    lw      $t6, 0x0($v1)
    lw      $t9, 0x4($v1)
    addu    $t8, $t6, $a0
    addu    $t7, $t9, $a0
    lw      $t6, 0x8($v1)
    lw      $t9, 0xc($v1)
    sw      $t8, 0x0($v1)
    sw      $t7, 0x4($v1)
    addu    $t8, $t6, $a0
    addu    $t7, $t9, $a0
    lw      $t6, 0x10($v1)
    lw      $t9, 0x14($v1)
    sw      $t8, 0x8($v1)
    sw      $t7, 0xc($v1)
    addu    $t8, $t6, $a0
    addu    $t7, $t9, $a0
    lw      $t6, 0x18($v1)
    lw      $t9, 0x1c($v1)
    sw      $t8, 0x10($v1)
    sw      $t7, 0x14($v1)
    addu    $t8, $t6, $a0
    addu    $t7, $t9, $a0
    lw      $t6, 0x20($v1)
    lw      $t9, 0x24($v1)
    sw      $t8, 0x18($v1)
    sw      $t7, 0x1c($v1)
    addu    $t8, $t6, $a0
    addu    $t7, $t9, $a0
    lw      $t6, 0x28($v1)
    lw      $t9, 0x2c($v1)
    sw      $t8, 0x20($v1)
    sw      $t7, 0x24($v1)
    addu    $t8, $t6, $a0
    addu    $t7, $t9, $a0
    sw      $t8, 0x28($v1)
    sw      $t7, 0x2c($v1)
    lh      $a1, 0x0($v0)
    beqz    $a1, branch_0x80097b88
    nop
    lw      $t6, 0x30($v1)
    addu    $t8, $t6, $a0
    sw      $t8, 0x30($v1)
    lh      $a1, 0x0($v0)
branch_0x80097b88:
    beqz    $a1, branch_0x80097ba0
    nop
    lw      $t9, 0x34($v1)
    addu    $t7, $t9, $a0
    sw      $t7, 0x34($v1)
    lh      $a1, 0x0($v0)
branch_0x80097ba0:
    beqz    $a1, branch_0x80097bb8
    nop
    lw      $t6, 0x38($v1)
    addu    $t8, $t6, $a0
    sw      $t8, 0x38($v1)
    lh      $a1, 0x0($v0)
branch_0x80097bb8:
    beqz    $a1, branch_0x80097bd0
    nop
    lw      $t9, 0x3c($v1)
    addu    $t7, $t9, $a0
    sw      $t7, 0x3c($v1)
    lh      $a1, 0x0($v0)
branch_0x80097bd0:
    beqzl   $a1, branch_0x80097be8
    lw      $t9, 0x64($sp)
    lw      $t6, 0x40($v1)
    addu    $t8, $t6, $a0
    sw      $t8, 0x40($v1)
    lw      $t9, 0x64($sp)
branch_0x80097be8:
    addiu   $t0, $t0, 0x1
    addiu   $v0, $v0, 0x2
    bne     $t0, $t9, branch_0x80097a3c
    addiu   $v1, $v1, 0x44
    sw      $a0, 0x58($sp)
branch_0x80097bfc:
    lw      $s0, 0x4($sp)
    jr      $ra
    addiu   $sp, $sp, 0x70


.globl Function_0x80097c08
Function_0x80097c08: # 0x80097c08
    addiu   $sp, $sp, 0xffd8
    sw      $s0, 0x18($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    lui     $s0, %hi(Unknown_0x800da8b8)
    sw      $ra, 0x24($sp)
    addiu   $s0, $s0, %lo(Unknown_0x800da8b8)
    or      $s1, $zero, $zero
    addiu   $s2, $zero, 0x5
branch_0x80097c2c:
    lh      $t6, 0x0($s0)
    beqzl   $t6, branch_0x80097c48
    addiu   $s1, $s1, 0x1
    sh      $zero, 0x0($s0)
    jal     Function_0x800957c8
    lw      $a0, 0x4($s0)
    addiu   $s1, $s1, 0x1
branch_0x80097c48:
    bne     $s1, $s2, branch_0x80097c2c
    addiu   $s0, $s0, 0x8
    lw      $ra, 0x24($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x28

