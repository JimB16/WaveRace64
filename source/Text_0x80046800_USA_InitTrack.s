

/* Input:
a0: Unknown_0x801ae778
*/
.globl Function_0x8007b310
Function_0x8007b310: # 0x8007b310
    addiu   $sp, $sp, 0xff88
    sw      $s6, 0x30($sp)
    sw      $s3, 0x24($sp)
    or      $s6, $a0, $zero
    sw      $ra, 0x3c($sp)
    sw      $fp, 0x38($sp)
    sw      $s7, 0x34($sp)
    sw      $s5, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    or      $v0, $a0, $zero
    or      $s3, $zero, $zero
    addiu   $v1, $zero, 0xff
branch_0x8007b34c:
    addiu   $s3, $s3, 0x1
    slti    $at, $s3, 0x200
    sb      $v1, 0x0($v0)
    bnez    $at, branch_0x8007b34c
    addiu   $v0, $v0, 0x1
    lui     $v0, %hi(Unknown_0x800d7fe8)
    lui     $a0, %hi(Unknown_0x800d7fea)
    addiu   $a0, $a0, %lo(Unknown_0x800d7fea)
    addiu   $v0, $v0, %lo(Unknown_0x800d7fe8)
    or      $v1, $s6, $zero
branch_0x8007b374:
    lbu     $t6, 0x0($v0)
    addiu   $v0, $v0, 0x1
    sltu    $at, $v0, $a0
    addiu   $v1, $v1, 0x1
    bnez    $at, branch_0x8007b374
    sb      $t6, -0x1($v1)

    lui     $t7, 0x800e
    addiu   $s5, $t7, 0x8078
    or      $s7, $s5, $zero
    or      $fp, $s6, $zero
    sw      $s6, 0x44($sp)
    addiu   $s4, $zero, 0x2
branch_0x8007b3a4:
    or      $s1, $s7, $zero
    or      $s2, $zero, $zero
    addiu   $s3, $fp, 0x60
branch_0x8007b3b0:
    or      $a0, $s1, $zero
    jal     Function_0x8007af18
    or      $a1, $s3, $zero
    addiu   $s2, $s2, 0x6
    slti    $at, $s2, 0x18
    addiu   $s1, $s1, 0x14
    bnez    $at, branch_0x8007b3b0
    addiu   $s3, $s3, 0x6
    lw      $s1, 0x44($sp)
    or      $s0, $zero, $zero
    addiu   $s1, $s1, 0x1a8
branch_0x8007b3dc:
    lw      $t8, 0x3c($s5)
    addiu   $s2, $s0, 0x1
    or      $a1, $s1, $zero
    multu   $t8, $s2
    mflo    $a0
    jal     Function_0x8007b25c
    nop
    or      $s0, $s2, $zero
    bne     $s2, $s4, branch_0x8007b3dc
    addiu   $s1, $s1, 0x3
    lw      $t9, 0x44($sp)
    lui     $t1, %hi(Unknown_0x800d82f8)
    addiu   $t1, $t1, %lo(Unknown_0x800d82f8)
    addiu   $s5, $s5, 0x50
    sltu    $at, $s5, $t1
    addiu   $t0, $t9, 0x6
    sw      $t0, 0x44($sp)
    addiu   $s7, $s7, 0x50
    bnez    $at, branch_0x8007b3a4
    addiu   $fp, $fp, 0x18

    lui     $s5, %hi(Unknown_0x800d82f8)
    lui     $fp, %hi(Unknown_0x800d84a8)
    addiu   $fp, $fp, %lo(Unknown_0x800d84a8)
    addiu   $s5, $s5, %lo(Unknown_0x800d82f8)
    or      $s7, $s6, $zero
    addiu   $s4, $zero, 0xf
branch_0x8007b444:
    or      $s1, $s5, $zero
    or      $s2, $zero, $zero
    addiu   $s3, $s7, 0x120
branch_0x8007b450:
    or      $a0, $s1, $zero
    jal     Function_0x8007b14c
    or      $a1, $s3, $zero
    addiu   $s2, $s2, 0x5
    addiu   $s1, $s1, 0x10
    bne     $s2, $s4, branch_0x8007b450
    addiu   $s3, $s3, 0x5
    addiu   $s5, $s5, 0x30
    sltu    $at, $s5, $fp
    bnez    $at, branch_0x8007b444
    addiu   $s7, $s7, 0xf
    lui     $s2, %hi(Unknown_0x800d84a8)
    addiu   $s2, $s2, %lo(Unknown_0x800d84a8)
    or      $s0, $zero, $zero
    addiu   $s1, $s6, (Unknown_0x801ae950 - Unknown_0x801ae778) # 0x1d8
branch_0x8007b48c:
    or      $a0, $s2, $zero
    jal     Function_0x8007b03c
    or      $a1, $s1, $zero
    addiu   $s0, $s0, 0x5
    slti    $at, $s0, 0x28
    bnez    $at, branch_0x8007b48c
    addiu   $s1, $s1, 0x5

    lui     $t2, %hi(String_DriverNames)
    addiu   $s2, $t2, %lo(String_DriverNames)
    or      $s5, $s2, $zero
    or      $s3, $zero, $zero
    addiu   $s4, $s6, 0x10
    addiu   $s1, $zero, 0x3
branch_0x8007b4c0:
    or      $a0, $s4, $zero
    or      $a1, $s5, $zero			# String_DriverNames
    jal     Function_0x8006a0e0_CopyBytes
    addiu   $a2, $zero, 0xa
    sll     $t3, $s3, 2
    subu    $t3, $t3, $s3
    addu    $a1, $s6, $t3
    or      $a0, $zero, $zero
branch_0x8007b4e0:
    or      $s0, $zero, $zero
    or      $v0, $a1, $zero
    or      $v1, $s2, $zero
branch_0x8007b4ec:
    lb      $t4, 0xb($v1)
    addiu   $s0, $s0, 0x1
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    bne     $s0, $s1, branch_0x8007b4ec
    sb      $t4, 0x37($v0)
    addiu   $a0, $a0, 0x1
    slti    $at, $a0, 0x2
    bnez    $at, branch_0x8007b4e0
    addiu   $a1, $a1, 0xc
    addiu   $s3, $s3, 0x1
    slti    $at, $s3, 0x4
    addiu   $s4, $s4, 0xa
    addiu   $s5, $s5, 0xe
    bnez    $at, branch_0x8007b4c0
    addiu   $s2, $s2, 0xe

    lui     $v0, %hi(Unknown_0x800da6c0)
    lui     $a0, %hi(String_DriverNames)
    sb      $zero, 0xc($s6)
    addiu   $a0, $a0, %lo(String_DriverNames)
    addiu   $v0, $v0, %lo(Unknown_0x800da6c0)
    or      $v1, $s6, $zero
branch_0x8007b544:
    lw      $t5, 0x0($v0)
    addiu   $v0, $v0, 0x4
    sltu    $at, $v0, $a0
    addiu   $v1, $v1, 0x1
    bnez    $at, branch_0x8007b544
    sb      $t5, 0x7($v1)

    lui     $a0, %hi(Unknown_0x800da708)
    lui     $a2, %hi(Unknown_0x800da72c)
    addiu   $a2, $a2, %lo(Unknown_0x800da72c)
    addiu   $a0, $a0, %lo(Unknown_0x800da708)
    or      $a1, $s6, $zero
branch_0x8007b570:
    or      $s0, $zero, $zero
    or      $v0, $a1, $zero
    or      $v1, $a0, $zero
branch_0x8007b57c:
    lw      $t6, 0x0($v1)
    addiu   $s0, $s0, 0x1
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x4
    bne     $s0, $s1, branch_0x8007b57c
    sb      $t6, 0x4f($v0)
    addiu   $a0, $a0, 0xc
    bne     $a0, $a2, branch_0x8007b570
    addiu   $a1, $a1, 0x3
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
    addiu   $sp, $sp, 0x78


.globl Function_0x8007b5d0
Function_0x8007b5d0: # 0x8007b5d0
    addiu   $sp, $sp, 0xff78
    sw      $fp, 0x38($sp)
    sw      $s7, 0x34($sp)
    sw      $s5, 0x2c($sp)
    lui     $t6, %hi(Unknown_0x801ae778)
    lui     $t7, %hi(Unknown_0x801c2034)
    sw      $s6, 0x30($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    addiu   $t7, $t7, %lo(Unknown_0x801c2034)
    addiu   $s7, $t6, %lo(Unknown_0x801ae778)
    lui     $s5, %hi(Unknown_0x801c1d8c)
    lui     $fp, %hi(Unknown_0x801c2224)
    sw      $ra, 0x3c($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    addiu   $fp, $fp, %lo(Unknown_0x801c2224)
    addiu   $s5, $s5, %lo(Unknown_0x801c1d8c)
    or      $s6, $s7, $zero
    sw      $t7, 0x44($sp)
    addiu   $s3, $zero, 0x6
    addiu   $s4, $zero, 0x1
branch_0x8007b62c:
    addiu   $s0, $s6, 0x60
    or      $s1, $zero, $zero
    or      $s2, $s5, $zero
branch_0x8007b638:
    or      $a0, $s0, $zero
    jal     Function_0x8007af94
    or      $a1, $s2, $zero
    addiu   $s1, $s1, 0x14
    slti    $at, $s1, 0x3c
    addiu   $s0, $s0, 0x6
    bnez    $at, branch_0x8007b638
    addiu   $s2, $s2, 0x14
    or      $a0, $s0, $zero
    jal     Function_0x8007af94
    lw      $a1, 0x44($sp)
    or      $s0, $zero, $zero
    addiu   $s1, $s7, 0x1a8
    or      $s2, $fp, $zero
branch_0x8007b670:
    jal     Function_0x8007b284
    or      $a0, $s1, $zero
    addiu   $s0, $s0, 0x3
    addiu   $s1, $s1, 0x3
    addiu   $s2, $s2, 0x4
    bne     $s0, $s3, branch_0x8007b670
    sw      $v0, -0x4($s2)
    lw      $t8, 0x44($sp)
    lui     $t0, %hi(Unknown_0x801c1f6c)
    addiu   $t0, $t0, %lo(Unknown_0x801c1f6c)
    addiu   $s5, $s5, 0x3c
    sltu    $at, $s5, $t0
    addiu   $t9, $t8, 0x14
    sw      $t9, 0x44($sp)
    addiu   $s4, $s4, 0x1
    addiu   $s6, $s6, 0x18
    addiu   $s7, $s7, 0x6
    bnez    $at, branch_0x8007b62c
    addiu   $fp, $fp, 0x24
    lui     $s6, %hi(Unknown_0x801ae778)
    lui     $s5, %hi(Unknown_0x801c2448)
    lui     $s7, %hi(Unknown_0x801c25f8)
    addiu   $s7, $s7, %lo(Unknown_0x801c25f8)
    addiu   $s5, $s5, %lo(Unknown_0x801c2448)
    addiu   $s6, $s6, %lo(Unknown_0x801ae778)
    addiu   $s4, $zero, 0x1
    addiu   $s3, $zero, 0x30
branch_0x8007b6dc:
    addiu   $s0, $s6, 0x120
    or      $s1, $zero, $zero
    or      $s2, $s5, $zero
branch_0x8007b6e8:
    or      $a0, $s0, $zero
    jal     Function_0x8007b1c0
    or      $a1, $s2, $zero
    addiu   $s1, $s1, 0x10
    addiu   $s0, $s0, 0x5
    bne     $s1, $s3, branch_0x8007b6e8
    addiu   $s2, $s2, 0x10
    addiu   $s5, $s5, 0x30
    sltu    $at, $s5, $s7
    addiu   $s4, $s4, 0x1
    bnez    $at, branch_0x8007b6dc
    addiu   $s6, $s6, 0xf
    lui     $s2, %hi(Unknown_0x801ae950)
    lui     $s0, %hi(Unknown_0x801c2124)
    lui     $s1, %hi(Unknown_0x801c21c4)
    addiu   $s1, $s1, %lo(Unknown_0x801c21c4)
    addiu   $s0, $s0, %lo(Unknown_0x801c2124)
    addiu   $s2, $s2, %lo(Unknown_0x801ae950)
    addiu   $s4, $zero, 0x1
branch_0x8007b734:
    or      $a0, $s2, $zero
    jal     Function_0x8007b0b0
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x14
    sltu    $at, $s0, $s1
    addiu   $s4, $s4, 0x1
    bnez    $at, branch_0x8007b734
    addiu   $s2, $s2, 0x5
    lui     $s2, %hi(Unknown_0x801caff8)
    lui     $s3, %hi(Unknown_0x801ae788)
    lui     $s5, %hi(Unknown_0x801ae790)
    addiu   $s5, $s5, %lo(Unknown_0x801ae790)
    addiu   $s3, $s3, %lo(Unknown_0x801ae788)
    addiu   $s2, $s2, %lo(Unknown_0x801caff8)
    or      $s1, $zero, $zero
    addiu   $s4, $zero, 0x1
    addiu   $s0, $zero, 0x3
branch_0x8007b778:
    or      $a0, $s2, $zero
    or      $a1, $s3, $zero
    jal     Function_0x8006a0e0_CopyBytes
    addiu   $a2, $zero, 0xa
    sll     $t1, $s1, 3
    subu    $t1, $t1, $s1
    lui     $t2, %hi(Unknown_0x801caff8)
    lui     $t3, %hi(Unknown_0x801ae778)
    sll     $t4, $s1, 2
    subu    $t4, $t4, $s1
    addiu   $a2, $t3, %lo(Unknown_0x801ae778)
    addiu   $t2, $t2, %lo(Unknown_0x801caff8)
    sll     $t1, $t1, 1
    sb      $zero, 0xa($s2)
    addu    $a1, $t1, $t2
    addu    $a3, $t4, $a2
branch_0x8007b7b8:
    or      $a0, $zero, $zero
    or      $v0, $a1, $zero
    or      $v1, $a3, $zero
branch_0x8007b7c4:
    lb      $t5, 0x38($v1)
    addiu   $a0, $a0, 0x1
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    bne     $a0, $s0, branch_0x8007b7c4
    sb      $t5, 0xa($v0)
    addiu   $a2, $a2, 0xc
    sltu    $at, $a2, $s5
    addiu   $a1, $a1, 0x38
    bnez    $at, branch_0x8007b7b8
    addiu   $a3, $a3, 0xc
    or      $s1, $s4, $zero
    slti    $at, $s1, 0x4
    addiu   $s4, $s4, 0x1
    addiu   $s2, $s2, 0xe
    bnez    $at, branch_0x8007b778
    addiu   $s3, $s3, 0xa
    lui     $t6, %hi(Unknown_0x801ae784)
    lb      $t6, %lo(Unknown_0x801ae784)($t6)
    lui     $at, 0x801d
    lui     $v1, 0x801d
    lui     $v0, %hi(Unknown_0x801ae778)
    lui     $a0, %hi(Unknown_0x801ae77c)
    addiu   $a0, $a0, %lo(Unknown_0x801ae77c)
    addiu   $v0, $v0, %lo(Unknown_0x801ae778)
    addiu   $v1, $v1, 0xafe8
    addiu   $s4, $zero, 0x1
    sb      $t6, -0x5020($at)
branch_0x8007b834:
    lb      $t7, 0x8($v0)
    addiu   $v0, $v0, 0x1
    sltu    $at, $v0, $a0
    addiu   $s4, $s4, 0x1
    addiu   $v1, $v1, 0x4
    bnez    $at, branch_0x8007b834
    sw      $t7, -0x4($v1)
    lui     $a2, %hi(Unknown_0x801cb068)
    lui     $a1, %hi(Unknown_0x801ae778)
    lui     $a3, %hi(Unknown_0x801ae781)
    addiu   $a3, $a3, %lo(Unknown_0x801ae781)
    addiu   $a1, $a1, %lo(Unknown_0x801ae778)
    addiu   $a2, $a2, %lo(Unknown_0x801cb068)
    addiu   $s4, $zero, 0x1
branch_0x8007b86c:
    or      $a0, $zero, $zero
    or      $v0, $a2, $zero
    or      $v1, $a1, $zero
branch_0x8007b878:
    lb      $t8, 0x50($v1)
    addiu   $a0, $a0, 0x1
    addiu   $v0, $v0, 0x4
    addiu   $v1, $v1, 0x1
    bne     $a0, $s0, branch_0x8007b878
    sw      $t8, -0x4($v0)
    addiu   $a1, $a1, 0x3
    addiu   $s4, $s4, 0x1
    bne     $a1, $a3, branch_0x8007b86c
    addiu   $a2, $a2, 0xc
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
    addiu   $sp, $sp, 0x88

.globl Function_0x8007b8d0
Function_0x8007b8d0: # 0x8007b8d0
    addiu   $sp, $sp, 0xff88
    sw      $fp, 0x38($sp)
    sw      $s7, 0x34($sp)
    sw      $s4, 0x28($sp)
    lui     $t6, %hi(Unknown_0x801ae778)
    lui     $t7, %hi(Unknown_0x801c2034)
    sw      $s6, 0x30($sp)
    sw      $s5, 0x2c($sp)
    sw      $s3, 0x24($sp)
    addiu   $t7, $t7, %lo(Unknown_0x801c2034)
    addiu   $s7, $t6, %lo(Unknown_0x801ae778)
    lui     $s4, %hi(Unknown_0x801c1d8c)
    lui     $fp, %hi(Unknown_0x801c2224)
    sw      $ra, 0x3c($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    addiu   $fp, $fp, %lo(Unknown_0x801c2224)
    addiu   $s4, $s4, %lo(Unknown_0x801c1d8c)
    or      $s6, $s7, $zero
    sw      $t7, 0x44($sp)
    addiu   $s3, $zero, 0x6
    addiu   $s5, $zero, 0x1
branch_0x8007b92c:
    or      $s1, $zero, $zero
    addiu   $s0, $s6, 0x60
    or      $s2, $s4, $zero
branch_0x8007b938:
    or      $a0, $s2, $zero
    jal     Function_0x8007af18
    or      $a1, $s0, $zero
    addiu   $s1, $s1, 0x6
    slti    $at, $s1, 0x12
    addiu   $s0, $s0, 0x6
    bnez    $at, branch_0x8007b938
    addiu   $s2, $s2, 0x14
    lw      $a0, 0x44($sp)
    jal     Function_0x8007af18
    or      $a1, $s0, $zero
    or      $s0, $zero, $zero
    addiu   $s1, $s7, 0x1a8
    or      $s2, $fp, $zero
branch_0x8007b970:
    lw      $a0, 0x0($s2)
    jal     Function_0x8007b25c
    or      $a1, $s1, $zero
    addiu   $s0, $s0, 0x3
    addiu   $s1, $s1, 0x3
    bne     $s0, $s3, branch_0x8007b970
    addiu   $s2, $s2, 0x4
    lw      $t8, 0x44($sp)
    lui     $t0, %hi(Unknown_0x801c1f6c)
    addiu   $t0, $t0, %lo(Unknown_0x801c1f6c)
    addiu   $s4, $s4, 0x3c
    sltu    $at, $s4, $t0
    addiu   $t9, $t8, 0x14
    sw      $t9, 0x44($sp)
    addiu   $s5, $s5, 0x1
    addiu   $s6, $s6, 0x18
    addiu   $s7, $s7, 0x6
    bnez    $at, branch_0x8007b92c
    addiu   $fp, $fp, 0x24
    lui     $s6, %hi(Unknown_0x801c2448)
    lui     $s4, %hi(Unknown_0x801ae778)
    lui     $s7, %hi(Unknown_0x801ae7ff)
    addiu   $s7, $s7, %lo(Unknown_0x801ae7ff)
    addiu   $s4, $s4, %lo(Unknown_0x801ae778)
    addiu   $s6, $s6, %lo(Unknown_0x801c2448)
    addiu   $s5, $zero, 0x1
    addiu   $s3, $zero, 0xf
branch_0x8007b9dc:
    or      $s0, $s6, $zero
    or      $s1, $zero, $zero
    addiu   $s2, $s4, 0x120
branch_0x8007b9e8:
    or      $a0, $s0, $zero
    jal     Function_0x8007b14c
    or      $a1, $s2, $zero
    addiu   $s1, $s1, 0x5
    addiu   $s0, $s0, 0x10
    bne     $s1, $s3, branch_0x8007b9e8
    addiu   $s2, $s2, 0x5
    addiu   $s4, $s4, 0xf
    sltu    $at, $s4, $s7
    addiu   $s5, $s5, 0x1
    bnez    $at, branch_0x8007b9dc
    addiu   $s6, $s6, 0x30
    lui     $s1, %hi(Unknown_0x801c2124)
    lui     $s0, %hi(Unknown_0x801ae950)
    lui     $s2, %hi(Unknown_0x801ae978)
    addiu   $s2, $s2, %lo(Unknown_0x801ae978)
    addiu   $s0, $s0, %lo(Unknown_0x801ae950)
    addiu   $s1, $s1, %lo(Unknown_0x801c2124)
    addiu   $s5, $zero, 0x1
branch_0x8007ba34:
    or      $a0, $s1, $zero
    jal     Function_0x8007b03c
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x5
    sltu    $at, $s0, $s2
    addiu   $s5, $s5, 0x1
    bnez    $at, branch_0x8007ba34
    addiu   $s1, $s1, 0x14

    lui     $s3, %hi(Unknown_0x801ae788)
    lui     $s4, %hi(Unknown_0x801caff8)
    lui     $s1, %hi(Unknown_0x801cb068)
    addiu   $s1, $s1, %lo(Unknown_0x801cb068)
    addiu   $s4, $s4, %lo(Unknown_0x801caff8)
    addiu   $s3, $s3, %lo(Unknown_0x801ae788)
    or      $s2, $zero, $zero
    addiu   $s5, $zero, 0x1
    addiu   $s0, $zero, 0x3
branch_0x8007ba78:
    or      $a0, $s3, $zero
    or      $a1, $s4, $zero
    jal     Function_0x8006a0e0_CopyBytes
    addiu   $a2, $zero, 0xa
    sll     $t4, $s2, 3
    subu    $t4, $t4, $s2
    sll     $t1, $s2, 2
    lui     $t2, %hi(Unknown_0x801ae778)
    lui     $t3, %hi(Unknown_0x801caff8)
    addiu   $a2, $t3, %lo(Unknown_0x801caff8)
    addiu   $t2, $t2, %lo(Unknown_0x801ae778)
    subu    $t1, $t1, $s2
    sll     $t4, $t4, 1
    addu    $a3, $t4, $a2
    addu    $a1, $t1, $t2
branch_0x8007bab4:
    or      $a0, $zero, $zero
    or      $v0, $a1, $zero
    or      $v1, $a3, $zero
branch_0x8007bac0:
    lb      $t5, 0xb($v1)
    addiu   $a0, $a0, 0x1
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    bne     $a0, $s0, branch_0x8007bac0
    sb      $t5, 0x37($v0)
    addiu   $a2, $a2, 0x38
    addiu   $a1, $a1, 0xc
    bne     $a2, $s1, branch_0x8007bab4
    addiu   $a3, $a3, 0x38
    or      $s2, $s5, $zero
    slti    $at, $s2, 0x4
    addiu   $s5, $s5, 0x1
    addiu   $s3, $s3, 0xa
    bnez    $at, branch_0x8007ba78
    addiu   $s4, $s4, 0xe

    jal     Function_0x8007b2bc
    nop
    lui     $a2, %hi(Unknown_0x801ae778)
    lui     $a1, %hi(Unknown_0x801cb068)
    lui     $a3, %hi(Unknown_0x801cb08c)
    addiu   $a3, $a3, %lo(Unknown_0x801cb08c)
    addiu   $a1, $a1, %lo(Unknown_0x801cb068)
    addiu   $a2, $a2, %lo(Unknown_0x801ae778)
    addiu   $s5, $zero, 0x1
branch_0x8007bb24:
    or      $a0, $zero, $zero
    or      $v0, $a2, $zero
    or      $v1, $a1, $zero
branch_0x8007bb30:
    lw      $t6, 0x0($v1)
    addiu   $a0, $a0, 0x1
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x4
    bne     $a0, $s0, branch_0x8007bb30
    sb      $t6, 0x4f($v0)
    addiu   $a1, $a1, 0xc
    addiu   $s5, $s5, 0x1
    bne     $a1, $a3, branch_0x8007bb24
    addiu   $a2, $a2, 0x3
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
    addiu   $sp, $sp, 0x78

.globl Function_0x8007bb88
Function_0x8007bb88: # 0x8007bb88
    jr      $ra
    nop

.globl Function_0x8007bb90
Function_0x8007bb90: # 0x8007bb90
    jr      $ra
    nop

.globl Function_0x8007bb98
Function_0x8007bb98: # 0x8007bb98
    addiu   $v0, $a0, 0x4
    or      $v1, $zero, $zero
    addiu   $a0, $zero, 0x1fc
    or      $a1, $zero, $zero
branch_0x8007bba8:
    lbu     $t6, 0x0($v0)
    lbu     $t8, 0x1($v0)
    lbu     $t0, 0x2($v0)
    lbu     $t2, 0x3($v0)
    addu    $t7, $v1, $t6
    addu    $t9, $t7, $t8
    addu    $t1, $t9, $t0
    addu    $v1, $t1, $t2
    andi    $t3, $v1, 0xffff
    addiu   $a1, $a1, 0x4
    or      $v1, $t3, $zero
    bne     $a1, $a0, branch_0x8007bba8
    addiu   $v0, $v0, 0x4
    jr      $ra
    or      $v0, $t3, $zero



.include "source/Text_0x80046800_USA_Eeprom.s"



.globl Function_0x8007d5b4
Function_0x8007d5b4: # 0x8007d5b4
    addiu   $sp, $sp, 0xff78
    sw      $ra, 0x34($sp)
    sw      $s1, 0x2c($sp)
    or      $s1, $a0, $zero
    sw      $s2, 0x30($sp)
    jal     Function_0x8007d0b0
    sw      $s0, 0x28($sp)
    beqz    $v0, branch_0x8007d5e0
    slti    $at, $s1, 0x80
    b       branch_0x8007dacc
    lw      $ra, 0x34($sp)
branch_0x8007d5e0:
    bnez    $at, branch_0x8007d5ec
    lui     $s2, 0x4e57
    addiu   $s1, $s1, 0xff80
branch_0x8007d5ec:
    lui     $t6, %hi(Unknown_0x800d8058)
    ori     $s2, $s2, 0x524a
    addiu   $t6, $t6, %lo(Unknown_0x800d8058)
    lui     $a0, %hi(Unknown_0x801c3830)
    lui     $a3, %hi(Unknown_0x800d8068)
    addiu   $t7, $sp, 0x6c
    sw      $t7, 0x14($sp)
    addiu   $a3, $a3, %lo(Unknown_0x800d8068)
    addiu   $a0, $a0, %lo(Unknown_0x801c3830)
    sw      $t6, 0x10($sp)
    or      $a2, $s2, $zero
    jal     Function_0x800c87d0
    addiu   $a1, $zero, 0x1
    sltiu   $at, $v0, 0x6
    beqz    $at, branch_0x8007d718
    sll     $t8, $v0, 2
    lui     $at, %hi(SwitchTable_0x800ea09c)
    addu    $at, $at, $t8
    lw      $t8, %lo(SwitchTable_0x800ea09c)($at)
    jr      $t8
    nop

branch_0x8007d640:
    or      $s0, $zero, $zero

branch_0x8007d644:
    jal     Function_0x8007b8d0
    nop
    beqz    $s1, branch_0x8007d780
    nop
    bnez    $s0, branch_0x8007d780
    lui     $a0, %hi(Unknown_0x801c3830)
    lui     $t6, %hi(Unknown_0x801ae978)
    addiu   $t6, $t6, %lo(Unknown_0x801ae978)
    addiu   $t9, $zero, 0x200
    sw      $t9, 0x10($sp)
    sw      $t6, 0x14($sp)
    addiu   $a0, $a0, %lo(Unknown_0x801c3830)
    lw      $a1, 0x6c($sp)
    or      $a2, $zero, $zero
    jal     Function_0x800c8c00
    or      $a3, $zero, $zero
    addiu   $t7, $v0, 0xfffe
    sltiu   $at, $t7, 0x5
    beqz    $at, branch_0x8007d728
    lui     $v1, %hi(Unknown_0x801ae978)
    sll     $t7, $t7, 2
    lui     $at, %hi(SwitchTable_0x800ea0b4)
    addu    $at, $at, $t7
    lw      $t7, %lo(SwitchTable_0x800ea0b4)($at)
    jr      $t7
    nop

branch_0x8007d6ac:
    lui     $t8, %hi(Unknown_0x800d8058)
    addiu   $t8, $t8, %lo(Unknown_0x800d8058)
    lui     $a0, %hi(Unknown_0x801c3830)
    lui     $a3, %hi(Unknown_0x800d8068)
    addiu   $t9, $zero, 0x200
    addiu   $t6, $sp, 0x6c
    addiu   $s0, $zero, 0x1
    sw      $t6, 0x18($sp)
    sw      $t9, 0x14($sp)
    addiu   $a3, $a3, %lo(Unknown_0x800d8068)
    addiu   $a0, $a0, %lo(Unknown_0x801c3830)
    sw      $t8, 0x10($sp)
    addiu   $a1, $zero, 0x1
    jal     Function_0x800c8f70
    or      $a2, $s2, $zero
    sltiu   $at, $v0, 0x9
    beqz    $at, branch_0x8007d710
    sll     $t7, $v0, 2
    lui     $at, %hi(SwitchTable_0x800ea0c8)
    addu    $at, $at, $t7
    lw      $t7, %lo(SwitchTable_0x800ea0c8)($at)
    jr      $t7
    nop

branch_0x8007d708:
    b       branch_0x8007dac8
    addiu   $v0, $zero, 0x3

branch_0x8007d710:
    b       branch_0x8007dac8
    addiu   $v0, $zero, 0x2

branch_0x8007d718:
    b       branch_0x8007dac8
    addiu   $v0, $zero, 0x2

branch_0x8007d720: # 0x8007d720
    b       branch_0x8007dac8
    addiu   $v0, $zero, 0x2
branch_0x8007d728:
    lui     $v0, %hi(Unknown_0x800d7fe8)
    lui     $a0, %hi(Unknown_0x800d7fea)
    addiu   $a0, $a0, %lo(Unknown_0x800d7fea)
    addiu   $v0, $v0, %lo(Unknown_0x800d7fe8)
    addiu   $v1, $v1, %lo(Unknown_0x801ae978)
branch_0x8007d73c:
    lbu     $t8, 0x0($v1)
    lbu     $t9, 0x0($v0)
    addiu   $v0, $v0, 0x1
    beq     $t8, $t9, branch_0x8007d754
    nop
    addiu   $s0, $zero, 0x1
branch_0x8007d754:
    bne     $v0, $a0, branch_0x8007d73c
    addiu   $v1, $v1, 0x1
    lui     $a0, %hi(Unknown_0x801ae978)
    jal     Function_0x8007bb98
    addiu   $a0, $a0, %lo(Unknown_0x801ae978)
    lui     $a3, %hi(Unknown_0x801ae978)
    addiu   $a3, $a3, %lo(Unknown_0x801ae978)
    lhu     $t6, 0x2($a3)
    beq     $v0, $t6, branch_0x8007d780
    nop
    addiu   $s0, $zero, 0x1
branch_0x8007d780:
    lui     $a3, %hi(Unknown_0x801ae978)
    beqz    $s0, branch_0x8007d79c
    addiu   $a3, $a3, %lo(Unknown_0x801ae978)
    jal     Function_0x8007b310
    or      $a0, $a3, $zero
    lui     $a3, %hi(Unknown_0x801ae978)
    addiu   $a3, $a3, %lo(Unknown_0x801ae978)
branch_0x8007d79c:
    sltiu   $at, $s1, 0x6
    beqz    $at, branch_0x8007da60
    sll     $t7, $s1, 2
    lui     $at, %hi(SwitchTable_0x800ea0ec)
    addu    $at, $at, $t7
    lw      $t7, %lo(SwitchTable_0x800ea0ec)($at)
    jr      $t7
    nop

branch_0x8007d7bc:
    lui     $t8, %hi(Unknown_0x801ae778)
    addiu   $t8, $t8, %lo(Unknown_0x801ae778)
    addiu   $t7, $t8, 0x1f8
    or      $t6, $a3, $zero
branch_0x8007d7cc:
    lw      $at, 0x0($t8)
    addiu   $t8, $t8, 0xc
    addiu   $t6, $t6, 0xc
    sw      $at, -0xc($t6)
    lw      $at, -0x8($t8)
    sw      $at, -0x8($t6)
    lw      $at, -0x4($t8)
    bne     $t8, $t7, branch_0x8007d7cc
    sw      $at, -0x4($t6)
    lw      $at, 0x0($t8)
    sw      $at, 0x0($t6)
    lw      $t7, 0x4($t8)
    b       branch_0x8007da60
    sw      $t7, 0x4($t6)

branch_0x8007d804: # 0x8007d804
    sll     $v0, $s1, 2
    addu    $v0, $v0, $s1
    sll     $v0, $v0, 1
    lui     $t7, %hi(Unknown_0x801ae778)
    addiu   $t0, $s1, 0xffff
    addiu   $t7, $t7, %lo(Unknown_0x801ae778)
    addu    $a0, $a3, $v0
    addiu   $t9, $v0, 0x6
    addu    $a1, $t9, $t7
    addiu   $a0, $a0, 0x6
    sw      $t0, 0x84($sp)
    jal     Function_0x8006a0e0_CopyBytes
    addiu   $a2, $zero, 0xa
    lw      $t0, 0x84($sp)
    lui     $t6, %hi(Unknown_0x801ae978)
    lui     $t7, %hi(Unknown_0x801ae778)
    sll     $t8, $t0, 2
    sll     $t9, $t0, 2
    addiu   $t7, $t7, %lo(Unknown_0x801ae778)
    addiu   $t6, $t6, %lo(Unknown_0x801ae978)
    subu    $t9, $t9, $t0
    subu    $t8, $t8, $t0
    addu    $v0, $t8, $t6
    addu    $v1, $t9, $t7
    or      $a3, $zero, $zero
    addiu   $t2, $zero, 0x3
branch_0x8007d86c:
    lb      $t8, 0x38($v1)
    addiu   $a3, $a3, 0x1
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    bne     $a3, $t2, branch_0x8007d86c
    sb      $t8, 0x37($v0)
    lui     $a3, %hi(Unknown_0x801ae978)
    b       branch_0x8007da60
    addiu   $a3, $a3, %lo(Unknown_0x801ae978)

branch_0x8007d890: # 0x8007d890
    lui     $t6, %hi(Unknown_0x801ae978)
    lui     $t9, %hi(Unknown_0x801ae778)
    addiu   $t2, $t9, %lo(Unknown_0x801ae778)
    addiu   $t5, $t6, %lo(Unknown_0x801ae978)
    or      $ra, $t5, $zero
    or      $s1, $t5, $zero
    or      $t3, $t5, $zero
    or      $s0, $t2, $zero
    or      $s2, $t2, $zero
    or      $t4, $t2, $zero
branch_0x8007d8b8:
    or      $a3, $zero, $zero
    or      $a1, $ra, $zero
    or      $a2, $s0, $zero
    or      $t0, $ra, $zero
    or      $t1, $s0, $zero
branch_0x8007d8cc:
    lbu     $t7, 0x60($t1)
    lbu     $t8, 0x61($t1)
    addiu   $a0, $zero, 0x2
    addu    $v1, $a2, $a0
    addu    $v0, $a1, $a0
    sb      $t7, 0x60($t0)
    sb      $t8, 0x61($t0)
    lbu     $t8, 0x63($v1)
    lbu     $t7, 0x62($v1)
    lbu     $t9, 0x61($v1)
    lbu     $t6, 0x60($v1)
    addiu   $a3, $a3, 0x1
    slti    $at, $a3, 0x4
    addiu   $a1, $a1, 0x6
    addiu   $a2, $a2, 0x6
    addiu   $t0, $t0, 0x6
    addiu   $t1, $t1, 0x6
    sb      $t8, 0x63($v0)
    sb      $t7, 0x62($v0)
    sb      $t9, 0x61($v0)
    bnez    $at, branch_0x8007d8cc
    sb      $t6, 0x60($v0)
    or      $a3, $zero, $zero
    or      $a1, $s1, $zero
    or      $a2, $s2, $zero
branch_0x8007d930:
    or      $a0, $zero, $zero
    or      $v0, $a1, $zero
    or      $v1, $a2, $zero
branch_0x8007d93c:
    lbu     $t6, 0x1a8($v1)
    addiu   $a0, $a0, 0x1
    slti    $at, $a0, 0x3
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    bnez    $at, branch_0x8007d93c
    sb      $t6, 0x1a7($v0)
    addiu   $a3, $a3, 0x1
    slti    $at, $a3, 0x2
    addiu   $a1, $a1, 0x3
    bnez    $at, branch_0x8007d930
    addiu   $a2, $a2, 0x3
    addiu   $a0, $zero, 0x1
    lbu     $t9, 0x1d8($t2)
    addu    $v1, $t4, $a0
    lbu     $t7, 0x1d8($v1)
    addu    $v0, $t3, $a0
    sb      $t9, 0x1d8($t5)
    sb      $t7, 0x1d8($v0)
    lui     $t7, %hi(Unknown_0x801ae7a0)
    lbu     $t9, 0x1db($v1)
    lbu     $t8, 0x1d9($v1)
    lbu     $t6, 0x1da($v1)
    addiu   $t7, $t7, %lo(Unknown_0x801ae7a0)
    addiu   $t2, $t2, 0x5
    sltu    $at, $t2, $t7
    addiu   $t3, $t3, 0x5
    addiu   $t4, $t4, 0x5
    addiu   $ra, $ra, 0x18
    addiu   $s0, $s0, 0x18
    addiu   $s1, $s1, 0x6
    addiu   $s2, $s2, 0x6
    addiu   $t5, $t5, 0x5
    sb      $t9, 0x1db($v0)
    sb      $t8, 0x1d9($v0)
    bnez    $at, branch_0x8007d8b8
    sb      $t6, 0x1da($v0)
    lui     $t4, %hi(Unknown_0x801ae978)
    lui     $t3, %hi(Unknown_0x801ae778)
    lui     $t5, %hi(Unknown_0x801ae7ff)
    addiu   $t5, $t5, %lo(Unknown_0x801ae7ff)
    addiu   $t3, $t3, %lo(Unknown_0x801ae778)
    addiu   $t4, $t4, %lo(Unknown_0x801ae978)
    addiu   $t2, $zero, 0x3
branch_0x8007d9ec:
    or      $a3, $zero, $zero
    or      $a1, $t4, $zero
    or      $a2, $t3, $zero
    or      $t0, $t4, $zero
    or      $t1, $t3, $zero
branch_0x8007da00:
    lbu     $t8, 0x120($t1)
    addiu   $a0, $zero, 0x1
    addu    $v1, $a2, $a0
    addu    $v0, $a1, $a0
    sb      $t8, 0x120($t0)
    lbu     $t8, 0x123($v1)
    lbu     $t9, 0x121($v1)
    lbu     $t7, 0x122($v1)
    lbu     $t6, 0x120($v1)
    addiu   $a3, $a3, 0x1
    addiu   $a1, $a1, 0x5
    addiu   $a2, $a2, 0x5
    addiu   $t0, $t0, 0x5
    addiu   $t1, $t1, 0x5
    sb      $t8, 0x123($v0)
    sb      $t9, 0x121($v0)
    sb      $t7, 0x122($v0)
    bne     $a3, $t2, branch_0x8007da00
    sb      $t6, 0x120($v0)
    addiu   $t3, $t3, 0xf
    bne     $t3, $t5, branch_0x8007d9ec
    addiu   $t4, $t4, 0xf
    lui     $a3, %hi(Unknown_0x801ae978)
    addiu   $a3, $a3, %lo(Unknown_0x801ae978)
branch_0x8007da60:
    jal     Function_0x8007bb98
    or      $a0, $a3, $zero
    lui     $t9, %hi(Unknown_0x801ae978)
    lui     $at, %hi(Unknown_0x801ae97a)
    addiu   $t9, $t9, %lo(Unknown_0x801ae978)
    lui     $a0, %hi(Unknown_0x801c3830)
    addiu   $t6, $zero, 0x200
    sh      $v0, %lo(Unknown_0x801ae97a)($at)
    sw      $t6, 0x10($sp)
    addiu   $a0, $a0, %lo(Unknown_0x801c3830)
    sw      $t9, 0x14($sp)
    lw      $a1, 0x6c($sp)
    addiu   $a2, $zero, 0x1
    jal     Function_0x800c8c00
    or      $a3, $zero, $zero
    sltiu   $at, $v0, 0x7
    beqz    $at, branch_0x8007dac4
    sll     $t7, $v0, 2
    lui     $at, %hi(SwitchTable_0x800ea104)
    addu    $at, $at, $t7
    lw      $t7, %lo(SwitchTable_0x800ea104)($at)
    jr      $t7
    nop

branch_0x8007dabc:
    b       branch_0x8007dac8
    or      $v0, $zero, $zero

branch_0x8007dac4:
    addiu   $v0, $zero, 0x2
branch_0x8007dac8:
    lw      $ra, 0x34($sp)
branch_0x8007dacc:
    lw      $s0, 0x28($sp)
    lw      $s1, 0x2c($sp)
    lw      $s2, 0x30($sp)
    jr      $ra
    addiu   $sp, $sp, 0x88


.globl Function_0x8007dae0
Function_0x8007dae0: # 0x8007dae0
    addiu   $sp, $sp, -0x20
    sw      $ra, 0x1c($sp)
    jal     Function_0x8007d0b0
    nop
    beqz    $v0, branch_0x8007db00
    lui     $a0, %hi(Unknown_0x801c3830)
    b       branch_0x8007db54
    lw      $ra, 0x1c($sp)
branch_0x8007db00:
    lui     $t6, %hi(Unknown_0x800d8058)
    addiu   $t6, $t6, %lo(Unknown_0x800d8058)
    lui     $a2, 0x4e57
    lui     $a3, %hi(Unknown_0x800d8068)
    addiu   $a3, $a3, %lo(Unknown_0x800d8068)
    ori     $a2, $a2, 0x524a
    sw      $t6, 0x10($sp)
    addiu   $a0, $a0, %lo(Unknown_0x801c3830)
    jal     Function_0x800c9610
    addiu   $a1, $zero, 0x1
    beqz    $v0, branch_0x8007db40
    addiu   $at, $zero, 0x5
    beq     $v0, $at, branch_0x8007db48
    nop
    b       branch_0x8007db50
    addiu   $v0, $zero, 0x2
branch_0x8007db40:
    b       branch_0x8007db50
    or      $v0, $zero, $zero
branch_0x8007db48:
    b       branch_0x8007db50
    addiu   $v0, $zero, 0x4
branch_0x8007db50:
    lw      $ra, 0x1c($sp)
branch_0x8007db54:
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop



.globl Function_0x8007db60
Function_0x8007db60: # 0x8007db60
    addiu   $sp, $sp, 0xffb0
    lui     $v1, %hi(Unknown_0x801bae80)
    lw      $v1, %lo(Unknown_0x801bae80)($v1)
    sw      $ra, 0x4c($sp)
    sw      $s1, 0x48($sp)
    sw      $s0, 0x44($sp)
    sdc1    $30, 0x38($sp)
    sdc1    $28, 0x30($sp)
    sdc1    $26, 0x28($sp)
    sdc1    $f24, 0x20($sp)
    sdc1    $f22, 0x18($sp)
    blez    $v1, branch_0x8007dd20
    sdc1    $f20, 0x10($sp)
    lui     $at, 0x800f
    ldc1    $f30, -0x5ee0($at)
    lui     $at, 0x41f0
    mtc1    $at, $gp
    lui     $at, 0x4220
    mtc1    $at, $k0
    lui     $at, 0x4008
    mtc1    $at, $t9
    lui     $at, 0x800f
    ldc1    $f22, -0x5ed8($at)
    lui     $at, 0x800f
    lui     $s0, %hi(Unknown_0x801aeb80_ObjsStruct)
    mtc1    $zero, $t8
    addiu   $s0, $s0, %lo(Unknown_0x801aeb80_ObjsStruct)
    ldc1    $f20, -0x5ed0($at)
    lw      $t6, ObjsStruct_9c($s0)
branch_0x8007dbd4:
    sll     $t8, $v1, 6
    addu    $t8, $t8, $v1
    bnez    $t6, branch_0x8007dbec
    sll     $t8, $t8, 2
    lw      $t7, ObjsStruct_c4($s0)
    bnez    $t7, branch_0x8007dbfc
branch_0x8007dbec:
    lui     $t9, %hi(Unknown_0x801aeb80_ObjsStruct)
    addiu   $t9, $t9, %lo(Unknown_0x801aeb80_ObjsStruct)
    b       branch_0x8007dd10
    addu    $v0, $t8, $t9
branch_0x8007dbfc:
    lwc1    $f12, ObjsStruct_0($s0)
    lwc1    $f10, ObjsStruct_24($s0)
    lwc1    $f4, ObjsStruct_3c($s0)
    lwc1    $f14, ObjsStruct_8($s0)
    sub.s   $f16, $f10, $f12
    cvt.d.s $f6, $f4
    cvt.d.s $f18, $f16
    mul.d   $f8, $f6, $f20
    lwc1    $f16, ObjsStruct_44($s0)
    mul.d   $f4, $f22, $f18
    cvt.d.s $f18, $f16
    add.d   $f6, $f8, $f4
    lwc1    $f4, ObjsStruct_28($s0)
    mul.d   $f8, $f18, $f20
    cvt.s.d $f10, $f6
    sub.s   $f6, $f4, $f14
    swc1    $f10, ObjsStruct_3c($s0)
    cvt.d.s $f10, $f6
    lwc1    $f6, ObjsStruct_40($s0)
    mul.d   $f16, $f22, $f10
    cvt.d.s $f10, $f6
    add.d   $f18, $f8, $f16
    mul.d   $f8, $f10, $f20
    cvt.s.d $f4, $f18
    sub.d   $f16, $f8, $f24
    swc1    $f4, ObjsStruct_44($s0)
    cvt.s.d $f18, $f16
    jal     Function_0x8004d2ac
    swc1    $f18, ObjsStruct_40($s0)
    add.s   $f4, $f0, $f26
    lwc1    $f12, ObjsStruct_4($s0)
    mtc1    $zero, $a2
    sub.s   $f2, $f4, $f12
    c.lt.s $f6, $f2
    nop
    bc1fl   branch_0x8007dcc8
    lwc1    $f10, ObjsStruct_0($s0)
    c.lt.s $f28, $f2
    nop
    bc1fl   branch_0x8007dca8
    cvt.d.s $f16, $f2
    mov.s   $f2, $f28
    cvt.d.s $f16, $f2
branch_0x8007dca8:
    lwc1    $f10, ObjsStruct_40($s0)
    mul.d   $f18, $f30, $f16
    lwc1    $f12, ObjsStruct_4($s0)
    cvt.d.s $f8, $f10
    add.d   $f4, $f8, $f18
    cvt.s.d $f6, $f4
    swc1    $f6, ObjsStruct_40($s0)
    lwc1    $f10, ObjsStruct_0($s0)
branch_0x8007dcc8:
    lwc1    $f16, ObjsStruct_3c($s0)
    lwc1    $f18, ObjsStruct_40($s0)
    lwc1    $f6, ObjsStruct_8($s0)
    add.s   $f8, $f10, $f16
    lwc1    $f10, ObjsStruct_44($s0)
    lui     $v1, %hi(Unknown_0x801bae80)
    add.s   $f4, $f12, $f18
    swc1    $f8, ObjsStruct_0($s0)
    lui     $t1, %hi(Unknown_0x801aeb80_ObjsStruct)
    add.s   $f16, $f6, $f10
    swc1    $f4, ObjsStruct_4($s0)
    addiu   $t1, $t1, %lo(Unknown_0x801aeb80_ObjsStruct)
    swc1    $f16, ObjsStruct_8($s0)
    lw      $v1, %lo(Unknown_0x801bae80)($v1)
    sll     $t0, $v1, 6
    addu    $t0, $t0, $v1
    sll     $t0, $t0, 2
    addu    $v0, $t0, $t1
branch_0x8007dd10:
    addiu   $s0, $s0, ObjsStruct_104
    sltu    $at, $s0, $v0
    bnezl   $at, branch_0x8007dbd4
    lw      $t6, ObjsStruct_9c($s0)

branch_0x8007dd20:
    lui     $at, 0x800f
    ldc1    $20, -0x5ec8($at)
    lui     $v1, 0x801c
    lw      $v1, -0x860($v1)
    lui     $at, 0x41f0
    mtc1    $at, $gp
    lui     $at, 0x800f
    blez    $v1, branch_0x8007dec0
    ldc1    $30, -0x5ec0($at)
    lui     $at, 0x4010
    mtc1    $at, $k1
    lui     $at, 0x800f
    ldc1    $24, -0x5eb8($at)
    lui     $at, 0x800f
    lui     $s0, 0x801c
    mtc1    $zero, $k0
    addiu   $s0, $s0, 0xc6a0
    ldc1    $22, -0x5eb0($at)
    addiu   $s1, $zero, 0x4
    lw      $t2, 0x58($s0)
branch_0x8007dd70:
    sll     $t3, $v1, 2
    subu    $t3, $t3, $v1
    beq     $s1, $t2, branch_0x8007dd98
    sll     $t3, $t3, 4
    addu    $t3, $t3, $v1
    lui     $t4, 0x801c
    addiu   $t4, $t4, 0xc6a0
    sll     $t3, $t3, 2
    b       branch_0x8007deb0
    addu    $v0, $t3, $t4
branch_0x8007dd98:
    lwc1    $f12, 0x0($s0)
    lwc1    $f6, 0x24($s0)
    lwc1    $f8, 0x18($s0)
    lwc1    $f14, 0x8($s0)
    sub.s   $f10, $f6, $f12
    cvt.d.s $f18, $f8
    cvt.d.s $f16, $f10
    mul.d   $f4, $f18, $f20
    lwc1    $f10, 0x20($s0)
    mul.d   $f8, $f22, $f16
    cvt.d.s $f16, $f10
    add.d   $f18, $f4, $f8
    lwc1    $f8, 0x2c($s0)
    mul.d   $f4, $f16, $f20
    cvt.s.d $f6, $f18
    sub.s   $f18, $f8, $f14
    swc1    $6, 0x18($16)
    cvt.d.s $f6, $f18
    lwc1    $f18, 0x1c($s0)
    mul.d   $f10, $f22, $f6
    cvt.d.s $f6, $f18
    add.d   $f16, $f4, $f10
    mul.d   $f4, $f6, $f24
    cvt.s.d $f8, $f16
    sub.d   $f10, $f4, $f26
    swc1    $8, 0x20($16)
    cvt.s.d $f16, $f10
    jal     Function_0x8004d2ac
    swc1    $16, 0x1c($16)
    lwc1    $f12, 0x4($s0)
    mtc1    $zero, $t0
    sub.s   $f2, $f0, $f12
    c.lt.s $f8, $f2
    nop
    bc1fl   branch_0x8007de60
    lwc1    $f18, 0x0($s0)
    c.lt.s $f28, $f2
    nop
    bc1fl   branch_0x8007de40
    cvt.d.s $f4, $f2
    mov.s   $f2, $f28
    cvt.d.s $f4, $f2
branch_0x8007de40:
    lwc1    $f18, 0x1c($s0)
    mul.d   $f10, $f30, $f4
    lwc1    $f12, 0x4($s0)
    cvt.d.s $f6, $f18
    add.d   $f16, $f6, $f10
    cvt.s.d $f8, $f16
    swc1    $8, 0x1c($16)
    lwc1    $f18, 0x0($s0)
branch_0x8007de60:
    lwc1    $f4, 0x18($s0)
    lwc1    $f10, 0x1c($s0)
    lwc1    $f8, 0x8($s0)
    add.s   $f6, $f18, $f4
    lwc1    $f18, 0x20($s0)
    lui     $v1, 0x801c
    add.s   $f16, $f12, $f10
    swc1    $6, 0x0($16)
    lui     $t6, 0x801c
    add.s   $f4, $f8, $f18
    swc1    $16, 0x4($16)
    addiu   $t6, $t6, 0xc6a0
    swc1    $4, 0x8($16)
    lw      $v1, -0x860($v1)
    sll     $t5, $v1, 2
    subu    $t5, $t5, $v1
    sll     $t5, $t5, 4
    addu    $t5, $t5, $v1
    sll     $t5, $t5, 2
    addu    $v0, $t5, $t6
branch_0x8007deb0:
    addiu   $s0, $s0, 0xc4
    sltu    $at, $s0, $v0
    bnezl   $at, branch_0x8007dd70
    lw      $t2, 0x58($s0)
branch_0x8007dec0:
    lw      $ra, 0x4c($sp)
    ldc1    $20, 0x10($29)
    ldc1    $22, 0x18($29)
    ldc1    $24, 0x20($29)
    ldc1    $26, 0x28($29)
    ldc1    $28, 0x30($29)
    ldc1    $30, 0x38($29)
    lw      $s0, 0x44($sp)
    lw      $s1, 0x48($sp)
    jr      $ra
    addiu   $sp, $sp, 0x50

.globl Function_0x8007deec
Function_0x8007deec: # 0x8007deec
    lui     $t6, %hi(Unknown_0x801bae80)
    lw      $t6, %lo(Unknown_0x801bae80)($t6)
    addiu   $sp, $sp, 0xff78
    lui     $v1, %hi(Unknown_0x801aeb80_ObjsStruct)
    sll     $t7, $t6, 6
    addu    $t7, $t7, $t6
    addiu   $v1, $v1, %lo(Unknown_0x801aeb80_ObjsStruct)
    sll     $t7, $t7, 2
    addu    $v0, $v1, $t7
    sdc1    $f24, 0x20($sp)
    sdc1    $f22, 0x18($sp)
    sdc1    $f20, 0x10($sp)
    addiu   $v0, $v0, -ObjsStruct_104
    mtc1    $a1, $s4
    mtc1    $a3, $s6
    mtc1    $a2, $t8
    sltu    $at, $v0, $v1
    sw      $ra, 0x44($sp)
    sdc1    $f30, 0x38($sp)
    sdc1    $f28, 0x30($sp)
    bnez    $at, branch_0x8007e844
    sdc1    $f26, 0x28($sp)
    lui     $at, 0x800f
    lwc1    $f26, -0x5ea8($at)
    lui     $at, 0x800f
    lwc1    $f18, -0x5ea4($at)
    addiu   $a1, $zero, 0x3
    lw      $t8, ObjsStruct_9c($v0)
branch_0x8007df5c:
    bnezl   $t8, branch_0x8007e17c
    lw      $t1, ObjsStruct_98($v0)
    lw      $t9, ObjsStruct_c4($v0)
    beqzl   $t9, branch_0x8007e838
    addiu   $v0, $v0, -ObjsStruct_104
    lwc1    $f4, ObjsStruct_0($v0)
    lwc1    $f6, ObjsStruct_8($v0)
    sub.s   $f14, $f20, $f4
    sub.s   $f16, $f22, $f6
    mul.s   $f8, $f14, $f14
    nop
    mul.s   $f10, $f16, $f16
    add.s   $f0, $f8, $f10
    c.lt.s $f18, $f0
    nop
    bc1t    branch_0x8007e834
    nop
    lwc1    $f4, ObjsStruct_4($v0)
    sub.s   $f2, $f24, $f4
    mul.s   $f6, $f2, $f2
    add.s   $f12, $f0, $f6
    c.lt.s  $f12, $f18
    nop
    bc1fl   branch_0x8007e838
    addiu   $v0, $v0, -ObjsStruct_104
    sw      $v0, 0x84($sp)
    sw      $a0, 0x88($sp)
    swc1    $f2, 0x7c($sp)
    swc1    $f14, 0x80($sp)
    jal     sqrtf
    swc1    $f16, 0x78($sp)
    lui     $at, 0x3f80
    mtc1    $at, $t0
    lwc1    $f14, 0x80($sp)
    lwc1    $f2, 0x7c($sp)
    div.s   $f18, $f8, $f0
    lui     $at, 0x4278
    mtc1    $at, $t2
    lwc1    $f16, 0x78($sp)
    lui     $at, %hi(Unknown_0x800d4738)
    sub.s   $f20, $f10, $f0
    lwc1    $f4, %lo(Unknown_0x800d4738)($at)
    lw      $v0, 0x84($sp)
    lw      $a0, 0x88($sp)
    lwc1    $f6, ObjsStruct_0($v0)
    lwc1    $f10, ObjsStruct_4($v0)
    mul.s   $f14, $f14, $f18
    nop
    mul.s   $f2, $f2, $f18
    nop
    mul.s   $f16, $f16, $f18
    nop
    mul.s   $f12, $f20, $f4
    sub.s   $f22, $f20, $f12
    mul.s   $f24, $f22, $f14
    sub.s   $f8, $f6, $f24
    mul.s   $f26, $f22, $f2
    swc1    $f8, ObjsStruct_0($v0)
    mul.s   $f6, $f22, $f16
    sub.s   $f4, $f10, $f26
    swc1    $f4, ObjsStruct_4($v0)
    swc1    $f6, 0x5c($sp)
    lwc1    $f10, 0x5c($sp)
    lwc1    $f8, ObjsStruct_8($v0)
    lwc1    $f6, ObjsStruct_3c($v0)
    sub.s   $f4, $f8, $f10
    lwc1    $f10, ObjsStruct_40($v0)
    sub.s   $f8, $f6, $f24
    swc1    $f4, ObjsStruct_8($v0)
    lwc1    $f6, ObjsStruct_44($v0)
    sub.s   $f4, $f10, $f26
    swc1    $f8, ObjsStruct_3c($v0)
    swc1    $f4, ObjsStruct_40($v0)
    lwc1    $f8, 0x5c($sp)
    mul.s   $f4, $f12, $f14
    sub.s   $f10, $f6, $f8
    mul.s   $f28, $f12, $f2
    swc1    $f10, ObjsStruct_44($v0)
    lw      $v1, 0x98($sp)
    swc1    $f4, 0x74($sp)
    mul.s   $f30, $f12, $f16
    lwc1    $f22, 0xc($v1)
    neg.s   $f6, $f14
    lwc1    $f24, 0x10($v1)
    mul.s   $f8, $f6, $f22
    lwc1    $f26, 0x14($v1)
    mul.s   $f10, $f2, $f24
    mfc1    $a3, $fp
    mul.s   $f6, $f16, $f26
    sub.s   $f4, $f8, $f10
    lwc1    $f8, 0xc38($a0)
    sub.s   $f12, $f4, $f6
    c.lt.s  $f8, $f12
    nop
    bc1f    branch_0x8007e0f8
    nop
    swc1    $f12, 0xc38($a0)
    swc1    $f14, 0x15b4($a0)
    swc1    $f2, 0x15b8($a0)
    swc1    $f16, 0x15bc($a0)
    lwc1    $f26, 0x14($v1)
    lwc1    $f24, 0x10($v1)
    lwc1    $f22, 0xc($v1)
branch_0x8007e0f8:
    lwc1    $f0, 0x74($sp)
    add.s   $f4, $f24, $f28
    lw      $v0, 0x9c($sp)
    lw      $t0, 0xa0($sp)
    add.s   $f6, $f26, $f30
    swc1    $f4, 0x10($v1)
    mfc1    $a2, $gp
    add.s   $f10, $f22, $f0
    swc1    $f6, 0x14($v1)
    mfc1    $a1, $zero
    swc1    $f10, 0xc($v1)
    lwc1    $f8, 0xc($v0)
    lwc1    $f4, 0x10($v0)
    add.s   $f10, $f8, $f0
    lwc1    $f8, 0x14($v0)
    add.s   $f6, $f4, $f28
    swc1    $f10, 0xc($v0)
    add.s   $f10, $f8, $f30
    swc1    $f6, 0x10($v0)
    swc1    $f10, 0x14($v0)
    lwc1    $f4, 0xc($t0)
    lwc1    $f8, 0x10($t0)
    add.s   $f6, $f4, $f0
    lwc1    $f4, 0x14($t0)
    add.s   $f10, $f8, $f28
    swc1    $f6, 0xc($8)
    add.s   $f6, $f4, $f30
    swc1    $f10, 0x10($8)
    jal     Function_0x800623dc
    swc1    $f6, 0x14($8)
    b       branch_0x8007e848
    lw      $ra, 0x44($sp)

.globl Function_0x8007e178
Function_0x8007e178: # 0x8007e178
    lw      $t1, 0x98($v0)
branch_0x8007e17c:
    bnel    $a1, $t1, branch_0x8007e4e0
    lwc1    $f8, 0xc($v0)
    lwc1    $f8, 0xc($v0)
    lwc1    $f10, 0x14($v0)
    sub.s   $f14, $f20, $f8
    sub.s   $f16, $f22, $f10
    mul.s   $f4, $f14, $f14
    nop
    mul.s   $f6, $f16, $f16
    add.s   $f0, $f4, $f6
    c.lt.s  $f0, $f26
    nop
    bc1f    branch_0x8007e330
    nop
    lwc1    $f8, 0x10($v0)
    sub.s   $f2, $f24, $f8
    mul.s   $f10, $f2, $f2
    add.s   $f12, $f0, $f10
    c.lt.s  $f12, $f26
    nop
    bc1fl   branch_0x8007e334
    lwc1    $f10, 0x18($v0)
    sw      $a0, 0x88($sp)
    swc1    $f2, 0x7c($sp)
    swc1    $f14, 0x80($sp)
    jal     sqrtf
    swc1    $f16, 0x78($sp)
    lui     $at, 0x3f80
    mtc1    $at, $a0
    lwc1    $f14, 0x80($sp)
    lui     $at, 0x42b8
    div.s   $f18, $f4, $f0
    mtc1    $at, $a2
    lwc1    $f2, 0x7c($sp)
    lwc1    $f16, 0x78($sp)
    sub.s   $f20, $f6, $f0
    lw      $v1, 0x98($sp)
    lw      $a0, 0x88($sp)
    mul.s   $f14, $f14, $f18
    nop
    mul.s   $f8, $f14, $f20
    nop
    mul.s   $f2, $f2, $f18
    swc1    $f8, 0x50($sp)
    lwc1    $f10, 0x50($sp)
    neg.s   $f8, $f14
    mul.s   $f4, $f2, $f20
    swc1    $f10, 0x74($sp)
    mul.s   $f16, $f16, $f18
    swc1    $f4, 0x4c($sp)
    lwc1    $f28, 0x4c($sp)
    mul.s   $f6, $f16, $f20
    swc1    $f6, 0x48($sp)
    lwc1    $f22, 0xc($v1)
    lwc1    $f24, 0x10($v1)
    lwc1    $f26, 0x14($v1)
    mul.s   $f4, $f8, $f22
    lwc1    $f30, 0x48($sp)
    mul.s   $f6, $f2, $f24
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f16, $f26
    lwc1    $f6, 0xc3c($a0)
    sub.s   $f12, $f8, $f4
    c.lt.s  $f6, $f12
    nop
    bc1f    branch_0x8007e2a4
    nop
    swc1    $12, 0xc3c($4)
    swc1    $14, 0x15b4($4)
    swc1    $2, 0x15b8($4)
    swc1    $16, 0x15bc($4)
    lwc1    $f26, 0x14($v1)
    lwc1    $f24, 0x10($v1)
    lwc1    $f22, 0xc($v1)
branch_0x8007e2a4:
    lwc1    $f0, 0x4c($sp)
    lwc1    $f2, 0x48($sp)
    lwc1    $f18, 0x50($sp)
    add.s   $f4, $f24, $f0
    lw      $v0, 0x9c($sp)
    lw      $t0, 0xa0($sp)
    add.s   $f6, $f26, $f2
    swc1    $f4, 0x10($3)
    mfc1    $a2, $gp
    add.s   $f8, $f22, $f18
    swc1    $f6, 0x14($3)
    mfc1    $a3, $fp
    swc1    $f8, 0xc($3)
    lwc1    $f10, 0xc($v0)
    lwc1    $f4, 0x10($v0)
    add.s   $f8, $f10, $f18
    lwc1    $f10, 0x14($v0)
    add.s   $f6, $f4, $f0
    swc1    $f8, 0xc($2)
    add.s   $f8, $f10, $f2
    swc1    $f6, 0x10($2)
    swc1    $f8, 0x14($2)
    lwc1    $f4, 0xc($t0)
    lwc1    $f10, 0x10($t0)
    add.s   $f6, $f4, $f18
    lwc1    $f4, 0x14($t0)
    add.s   $f8, $f10, $f28
    swc1    $f6, 0xc($8)
    add.s   $f6, $f4, $f30
    swc1    $f8, 0x10($8)
    swc1    $f6, 0x14($8)
    jal     Function_0x800623dc
    lw      $a1, 0x74($sp)
    b       branch_0x8007e848
    lw      $ra, 0x44($sp)
branch_0x8007e330:
    lwc1    $f10, 0x18($v0)
branch_0x8007e334:
    lwc1    $f8, 0x20($v0)
    sub.s   $f14, $f20, $f10
    sub.s   $f16, $f22, $f8
    mul.s   $f4, $f14, $f14
    nop
    mul.s   $f6, $f16, $f16
    add.s   $f0, $f4, $f6
    c.lt.s  $f0, $f26
    nop
    bc1f    branch_0x8007e834
    nop
    lwc1    $f10, 0x1c($v0)
    sub.s   $f2, $f24, $f10
    mul.s   $f8, $f2, $f2
    add.s   $f12, $f0, $f8
    c.lt.s  $f12, $f26
    nop
    bc1fl   branch_0x8007e838
    addiu   $v0, $v0, 0xfefc
    sw      $a0, 0x88($sp)
    swc1    $2, 0x7c($29)
    swc1    $14, 0x80($29)
    jal     sqrtf
    swc1    $16, 0x78($29)
    lui     $at, 0x3f80
    mtc1    $at, $a0
    lwc1    $f14, 0x80($sp)
    lui     $at, 0x42b8
    div.s   $f18, $f4, $f0
    mtc1    $at, $a2
    lwc1    $f2, 0x7c($sp)
    lwc1    $f16, 0x78($sp)
    sub.s   $f20, $f6, $f0
    lw      $v1, 0x98($sp)
    lw      $a0, 0x88($sp)
    mul.s   $f14, $f14, $f18
    nop
    mul.s   $f10, $f14, $f20
    nop
    mul.s   $f2, $f2, $f18
    swc1    $10, 0x50($29)
    lwc1    $f8, 0x50($sp)
    neg.s   $f10, $f14
    mul.s   $f4, $f2, $f20
    swc1    $8, 0x74($29)
    mul.s   $f16, $f16, $f18
    swc1    $4, 0x4c($29)
    lwc1    $f28, 0x4c($sp)
    mul.s   $f6, $f16, $f20
    swc1    $6, 0x48($29)
    lwc1    $f22, 0xc($v1)
    lwc1    $f24, 0x10($v1)
    lwc1    $f26, 0x14($v1)
    mul.s   $f4, $f10, $f22
    lwc1    $f30, 0x48($sp)
    mul.s   $f6, $f2, $f24
    sub.s   $f10, $f4, $f6
    mul.s   $f4, $f16, $f26
    lwc1    $f6, 0xc3c($a0)
    sub.s   $f12, $f10, $f4
    c.lt.s  $f6, $f12
    nop
    bc1f    branch_0x8007e450
    nop
    swc1    $12, 0xc3c($4)
    swc1    $14, 0x15b4($4)
    swc1    $2, 0x15b8($4)
    swc1    $16, 0x15bc($4)
    lwc1    $f26, 0x14($v1)
    lwc1    $f24, 0x10($v1)
    lwc1    $f22, 0xc($v1)
branch_0x8007e450:
    lwc1    $f0, 0x48($sp)
    lwc1    $f2, 0x4c($sp)
    lwc1    $f18, 0x50($sp)
    add.s   $f6, $f26, $f0
    lw      $v0, 0x9c($sp)
    lw      $t0, 0xa0($sp)
    add.s   $f4, $f24, $f2
    swc1    $6, 0x14($3)
    mfc1    $a2, $gp
    add.s   $f10, $f22, $f18
    swc1    $4, 0x10($3)
    mfc1    $a3, $fp
    swc1    $10, 0xc($3)
    lwc1    $f8, 0xc($v0)
    lwc1    $f4, 0x10($v0)
    add.s   $f10, $f8, $f18
    lwc1    $f8, 0x14($v0)
    add.s   $f6, $f4, $f2
    swc1    $10, 0xc($2)
    add.s   $f10, $f8, $f0
    swc1    $6, 0x10($2)
    swc1    $10, 0x14($2)
    lwc1    $f4, 0xc($t0)
    lwc1    $f8, 0x10($t0)
    add.s   $f6, $f4, $f18
    lwc1    $f4, 0x14($t0)
    add.s   $f10, $f8, $f28
    swc1    $6, 0xc($8)
    add.s   $f6, $f4, $f30
    swc1    $10, 0x10($8)
    swc1    $6, 0x14($8)
    jal     Function_0x800623dc
    lw      $a1, 0x74($sp)
    b       branch_0x8007e848
    lw      $ra, 0x44($sp)

Function_0x8007e4dc: # 0x8007e4dc
    lwc1    $f8, 0xc($v0)
branch_0x8007e4e0:
    lwc1    $f10, 0x14($v0)
    sub.s   $f14, $f20, $f8
    sub.s   $f16, $f22, $f10
    mul.s   $f4, $f14, $f14
    nop
    mul.s   $f6, $f16, $f16
    add.s   $f0, $f4, $f6
    c.lt.s  $f0, $f18
    nop
    bc1f    branch_0x8007e688
    nop
    lwc1    $f8, 0x10($v0)
    sub.s   $f2, $f24, $f8
    mul.s   $f10, $f2, $f2
    add.s   $f12, $f0, $f10
    c.lt.s  $f12, $f18
    nop
    bc1fl   branch_0x8007e68c
    lwc1    $f10, 0x18($v0)
    sw      $a0, 0x88($sp)
    swc1    $2, 0x7c($29)
    swc1    $14, 0x80($29)
    jal     sqrtf
    swc1    $16, 0x78($29)
    lui     $at, 0x3f80
    mtc1    $at, $a0
    lwc1    $f14, 0x80($sp)
    lui     $at, 0x4278
    div.s   $f18, $f4, $f0
    mtc1    $at, $a2
    lwc1    $f2, 0x7c($sp)
    lwc1    $f16, 0x78($sp)
    sub.s   $f20, $f6, $f0
    lw      $v1, 0x98($sp)
    lw      $a0, 0x88($sp)
    mul.s   $f14, $f14, $f18
    nop
    mul.s   $f8, $f14, $f20
    nop
    mul.s   $f2, $f2, $f18
    swc1    $8, 0x50($29)
    lwc1    $f10, 0x50($sp)
    neg.s   $f8, $f14
    mul.s   $f4, $f2, $f20
    swc1    $10, 0x74($29)
    mul.s   $f16, $f16, $f18
    swc1    $4, 0x4c($29)
    lwc1    $f28, 0x4c($sp)
    mul.s   $f6, $f16, $f20
    swc1    $6, 0x48($29)
    lwc1    $f22, 0xc($v1)
    lwc1    $f24, 0x10($v1)
    lwc1    $f26, 0x14($v1)
    mul.s   $f4, $f8, $f22
    lwc1    $f30, 0x48($sp)
    mul.s   $f6, $f2, $f24
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f16, $f26
    lwc1    $f6, 0xc3c($a0)
    sub.s   $f12, $f8, $f4
    c.lt.s $f6, $f12
    nop
    bc1f    branch_0x8007e5fc
    nop
    swc1    $12, 0xc3c($4)
    swc1    $14, 0x15b4($4)
    swc1    $2, 0x15b8($4)
    swc1    $16, 0x15bc($4)
    lwc1    $f26, 0x14($v1)
    lwc1    $f24, 0x10($v1)
    lwc1    $f22, 0xc($v1)
branch_0x8007e5fc:
    lwc1    $f0, 0x4c($sp)
    lwc1    $f2, 0x48($sp)
    lwc1    $f18, 0x50($sp)
    add.s   $f4, $f24, $f0
    lw      $v0, 0x9c($sp)
    lw      $t0, 0xa0($sp)
    add.s   $f6, $f26, $f2
    swc1    $4, 0x10($3)
    mfc1    $a2, $gp
    add.s   $f8, $f22, $f18
    swc1    $6, 0x14($3)
    mfc1    $a3, $fp
    swc1    $8, 0xc($3)
    lwc1    $f10, 0xc($v0)
    lwc1    $f4, 0x10($v0)
    add.s   $f8, $f10, $f18
    lwc1    $f10, 0x14($v0)
    add.s   $f6, $f4, $f0
    swc1    $8, 0xc($2)
    add.s   $f8, $f10, $f2
    swc1    $6, 0x10($2)
    swc1    $8, 0x14($2)
    lwc1    $f4, 0xc($t0)
    lwc1    $f10, 0x10($t0)
    add.s   $f6, $f4, $f18
    lwc1    $f4, 0x14($t0)
    add.s   $f8, $f10, $f28
    swc1    $6, 0xc($8)
    add.s   $f6, $f4, $f30
    swc1    $8, 0x10($8)
    swc1    $6, 0x14($8)
    jal     Function_0x800623dc
    lw      $a1, 0x74($sp)
    b       branch_0x8007e848
    lw      $ra, 0x44($sp)
branch_0x8007e688:
    lwc1    $f10, 0x18($v0)
branch_0x8007e68c:
    lwc1    $f8, 0x20($v0)
    sub.s   $f14, $f20, $f10
    sub.s   $f16, $f22, $f8
    mul.s   $f4, $f14, $f14
    nop
    mul.s   $f6, $f16, $f16
    add.s   $f0, $f4, $f6
    c.lt.s $f0, $f18
    nop
    bc1f    branch_0x8007e834
    nop
    lwc1    $f10, 0x1c($v0)
    sub.s   $f2, $f24, $f10
    mul.s   $f8, $f2, $f2
    add.s   $f12, $f0, $f8
    c.lt.s $f12, $f18
    nop
    bc1fl   branch_0x8007e838
    addiu   $v0, $v0, 0xfefc
    sw      $a0, 0x88($sp)
    swc1    $2, 0x7c($29)
    swc1    $14, 0x80($29)
    jal     sqrtf
    swc1    $16, 0x78($29)
    lui     $at, 0x3f80
    mtc1    $at, $a0
    lwc1    $f14, 0x80($sp)
    lui     $at, 0x4278
    div.s   $f18, $f4, $f0
    mtc1    $at, $a2
    lwc1    $f2, 0x7c($sp)
    lwc1    $f16, 0x78($sp)
    sub.s   $f20, $f6, $f0
    lw      $v1, 0x98($sp)
    lw      $a0, 0x88($sp)
    mul.s   $f14, $f14, $f18
    nop
    mul.s   $f10, $f14, $f20
    nop
    mul.s   $f2, $f2, $f18
    swc1    $10, 0x50($29)
    lwc1    $f8, 0x50($sp)
    neg.s   $f10, $f14
    mul.s   $f4, $f2, $f20
    swc1    $8, 0x74($29)
    mul.s   $f16, $f16, $f18
    swc1    $4, 0x4c($29)
    lwc1    $f28, 0x4c($sp)
    mul.s   $f6, $f16, $f20
    swc1    $6, 0x48($29)
    lwc1    $f22, 0xc($v1)
    lwc1    $f24, 0x10($v1)
    lwc1    $f26, 0x14($v1)
    mul.s   $f4, $f10, $f22
    lwc1    $f30, 0x48($sp)
    mul.s   $f6, $f2, $f24
    sub.s   $f10, $f4, $f6
    mul.s   $f4, $f16, $f26
    lwc1    $f6, 0xc3c($a0)
    sub.s   $f12, $f10, $f4
    c.lt.s $f6, $f12
    nop
    bc1f    branch_0x8007e7a8
    nop
    swc1    $12, 0xc3c($4)
    swc1    $14, 0x15b4($4)
    swc1    $2, 0x15b8($4)
    swc1    $16, 0x15bc($4)
    lwc1    $f26, 0x14($v1)
    lwc1    $f24, 0x10($v1)
    lwc1    $f22, 0xc($v1)
branch_0x8007e7a8:
    lwc1    $f0, 0x48($sp)
    lwc1    $f2, 0x4c($sp)
    lwc1    $f18, 0x50($sp)
    add.s   $f6, $f26, $f0
    lw      $v0, 0x9c($sp)
    lw      $t0, 0xa0($sp)
    add.s   $f4, $f24, $f2
    swc1    $6, 0x14($3)
    mfc1    $a2, $gp
    add.s   $f10, $f22, $f18
    swc1    $4, 0x10($3)
    mfc1    $a3, $fp
    swc1    $10, 0xc($3)
    lwc1    $f8, 0xc($v0)
    lwc1    $f4, 0x10($v0)
    add.s   $f10, $f8, $f18
    lwc1    $f8, 0x14($v0)
    add.s   $f6, $f4, $f2
    swc1    $10, 0xc($2)
    add.s   $f10, $f8, $f0
    swc1    $6, 0x10($2)
    swc1    $10, 0x14($2)
    lwc1    $f4, 0xc($t0)
    lwc1    $f8, 0x10($t0)
    add.s   $f6, $f4, $f18
    lwc1    $f4, 0x14($t0)
    add.s   $f10, $f8, $f28
    swc1    $6, 0xc($8)
    add.s   $f6, $f4, $f30
    swc1    $10, 0x10($8)
    swc1    $6, 0x14($8)
    jal     Function_0x800623dc
    lw      $a1, 0x74($sp)
    b       branch_0x8007e848
    lw      $ra, 0x44($sp)
branch_0x8007e834:
    addiu   $v0, $v0, 0xfefc
branch_0x8007e838:
    sltu    $at, $v0, $v1
    beqzl   $at, branch_0x8007df5c
    lw      $t8, 0x9c($v0)
branch_0x8007e844:
    lw      $ra, 0x44($sp)
branch_0x8007e848:
    ldc1    $20, 0x10($29)
    ldc1    $22, 0x18($29)
    ldc1    $24, 0x20($29)
    ldc1    $26, 0x28($29)
    ldc1    $28, 0x30($29)
    ldc1    $30, 0x38($29)
    jr      $ra
    addiu   $sp, $sp, 0x88
