

.include "source/constants.s"

.section .textoverlay17, "ax"

.set noreorder


Function_0x802c5800: # 0x802c5800
    addiu   $sp, $sp, 0xfe28
    lui     $t6, %hi(Unknown_0x801ce39c)
    lw      $t6, %lo(Unknown_0x801ce39c)($t6)
    sw      $ra, 0x5c($sp)
    sw      $fp, 0x58($sp)
    sw      $s7, 0x54($sp)
    sw      $s6, 0x50($sp)
    sw      $s5, 0x4c($sp)
    sw      $s4, 0x48($sp)
    sw      $s3, 0x44($sp)
    sw      $s2, 0x40($sp)
    sw      $s1, 0x3c($sp)
    beqz    $t6, branch_0x802c58f0
    sw      $s0, 0x38($sp)
    lui     $t7, 0x800e
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x66
    bne     $t7, $at, branch_0x802c58f0
    nop
    jal     Function_0x802c5ce8
    nop
    lui     $t1, 0x802c
    lui     $t2, 0x802c
    addiu   $t2, $t2, 0x6e74
    addiu   $t1, $t1, 0x6e78
    sw      $zero, 0x0($t1)
    sw      $zero, 0x0($t2)
    lui     $v0, 0x801d
    lw      $v0, -0x4f6c($v0)
    or      $a0, $zero, $zero
    lui     $t9, 0x801d
    addiu   $v0, $v0, 0x1
    blez    $v0, branch_0x802c58f0
    lui     $t5, 0x800f
    lw      $t9, -0x4f68($t9)
    addiu   $t5, $t5, 0xa974
    lui     $a3, 0x801c
    lui     $a2, 0x801c
    sll     $t4, $t9, 4
    addu    $a1, $t4, $t5
    addiu   $a2, $a2, 0x23c0
    addiu   $a3, $a3, 0x23f0
    sll     $t0, $v0, 1
    addiu   $t3, $zero, 0x1
branch_0x802c58b0:
    lh      $v0, 0x0($a1)
    addiu   $a0, $a0, 0x2
    slt     $at, $a0, $t0
    sll     $v1, $v0, 2
    addu    $t6, $a2, $v1
    lw      $t7, 0x0($t6)
    addu    $t8, $a3, $v1
    beqzl   $t7, branch_0x802c58dc
    lw      $t9, 0x0($t8)
    sw      $t3, 0x0($t2)
    lw      $t9, 0x0($t8)
branch_0x802c58dc:
    beqz    $t9, branch_0x802c58e8
    nop
    sw      $t3, 0x0($t1)
branch_0x802c58e8:
    bnez    $at, branch_0x802c58b0
    addiu   $a1, $a1, 0x2
branch_0x802c58f0:
    lui     $s1, 0x802c
    addiu   $s1, $s1, 0x6d6c
    lw      $t4, 0x0($s1)
    sw      $zero, 0x1d4($sp)
    lui     $s2, 0x802c
    addiu   $t5, $t4, 0xffff
    bgez    $t5, branch_0x802c5978
    sw      $t5, 0x0($s1)
    addiu   $s2, $s2, 0x6d68
    lw      $s0, 0x0($s2)
    addiu   $s3, $zero, 0xffff
    beql    $s3, $s0, branch_0x802c597c
    lui     $at, 0x4180
    jal     Function_0x802c5ee4
    or      $a0, $s0, $zero
    addiu   $t7, $zero, 0x28
    sw      $t7, 0x0($s1)
    lui     $t8, 0x802c
    lw      $t8, 0x6e7c($t8)
    lw      $s0, 0x0($s2)
    addiu   $t9, $zero, 0xa
    addiu   $t4, $zero, 0x6e
    bnel    $t8, $s0, branch_0x802c5960
    addiu   $at, $zero, 0xa
    sw      $t9, 0x0($s2)
    b       branch_0x802c5978
    sw      $t4, 0x0($s1)

.globl Function_0x802c595c
Function_0x802c595c: # 0x802c595c
    addiu   $at, $zero, 0xa
branch_0x802c5960:
    bnel    $s0, $at, branch_0x802c5974
    addiu   $t5, $s0, 0x1
    b       branch_0x802c5978
    sw      $s3, 0x0($s2)

.globl Function_0x802c5970
Function_0x802c5970: # 0x802c5970
    addiu   $t5, $s0, 0x1
branch_0x802c5974:
    sw      $t5, 0x0($s2)
branch_0x802c5978:
    lui     $at, 0x4180
branch_0x802c597c:
    mtc1    $at, $a0
    lui     $s3, 0x801d
    mtc1    $zero, $zero
    addiu   $s3, $s3, 0xe358
    lui     $at, 0x4580
    mtc1    $at, $a2
    lw      $a0, 0x0($s3)
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6f40
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
    lui     $at, 0x802c
    lwc1    $f8, 0x6e34($at)
    addiu   $s0, $sp, 0xb8
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
    addiu   $s1, $sp, 0x13c
    or      $a1, $s1, $zero
    addiu   $a0, $sp, 0x78
    mfc1    $a2, $v0
    addiu   $a3, $zero, 0x0
    swc1    $f0, 0x14($sp)
    swc1    $f12, 0x10($sp)
    swc1    $f0, 0x18($sp)
    swc1    $f0, 0x1c($sp)
    swc1    $f0, 0x20($sp)
    swc1    $f0, 0x28($sp)
    jal     Function_0x80048468
    swc1    $f18, 0x24($sp)
    addiu   $s2, $sp, 0x17c
    or      $a1, $s2, $zero
    jal     Function_0x80047e18
    or      $a0, $s0, $zero
    addiu   $s5, $sp, 0xfc
    or      $a2, $s5, $zero
    or      $a0, $s1, $zero
    jal     Function_0x80049e58
    or      $a1, $s2, $zero
    lui     $s4, 0x802c
    lui     $fp, 0x802c
    lui     $s6, 0x802c
    addiu   $s6, $s6, 0x6de0
    addiu   $fp, $fp, 0x6ddc
    addiu   $s4, $s4, 0x6e80
    addiu   $s7, $zero, 0x80
    addiu   $a0, $zero, 0xa
branch_0x802c5aac:
    lw      $v1, 0x0($s4)
    addiu   $at, $zero, 0x1
    beqzl   $v1, branch_0x802c5ca8
    lw      $t9, 0x1d4($sp)
    beq     $v1, $at, branch_0x802c5ae4
    or      $s0, $zero, $zero
    addiu   $at, $zero, 0x2
    beq     $v1, $at, branch_0x802c5b40
    lui     $v0, 0x802c
    addiu   $at, $zero, 0x3
    beql    $v1, $at, branch_0x802c5c10
    addiu   $s0, $zero, 0x1
    b       branch_0x802c5c10
    nop
branch_0x802c5ae4:
    lw      $t6, 0xc($s4)
    lw      $v0, 0x4($s4)
    addiu   $t7, $t6, 0xfffe
    bne     $a0, $v0, branch_0x802c5b18
    sw      $t7, 0xc($s4)
    slti    $at, $t7, 0x1a
    beqz    $at, branch_0x802c5b30
    addiu   $t9, $zero, 0x2
    addiu   $t4, $zero, 0x19
    sw      $t9, 0x0($s4)
    sw      $t4, 0xc($s4)
    b       branch_0x802c5b30
    lw      $v0, 0x4($s4)
branch_0x802c5b18:
    lw      $t5, 0xc($s4)
    slti    $at, $t5, 0xfff4
    beqz    $at, branch_0x802c5b30
    nop
    sw      $zero, 0x0($s4)
    lw      $v0, 0x4($s4)
branch_0x802c5b30:
    bne     $a0, $v0, branch_0x802c5c10
    nop
    b       branch_0x802c5c10
    addiu   $s0, $zero, 0x1
branch_0x802c5b40:
    lw      $v0, 0x6df0($v0)
    addiu   $s0, $zero, 0x1
    slti    $at, $v0, 0x14
    beqz    $at, branch_0x802c5b64
    addiu   $t6, $v0, 0x1
    lui     $at, 0x802c
    sw      $t6, 0x6df0($at)
    lui     $v0, 0x802c
    lw      $v0, 0x6df0($v0)
branch_0x802c5b64:
    slti    $at, $v0, 0xb
    bnez    $at, branch_0x802c5c10
    nop
    lw      $t7, 0x0($fp)
    addiu   $at, $zero, 0x14
    addiu   $t9, $zero, 0x3
    addiu   $v0, $t7, 0x1
    bne     $v0, $at, branch_0x802c5bbc
    sw      $v0, 0x0($fp)
    sw      $t9, 0x0($s4)
    addiu   $t4, $zero, 0xff
    lui     $at, 0x802c
    sw      $t4, 0x6dd4($at)
    lui     $at, 0x802c
    addiu   $t5, $zero, 0xaa
    sw      $t5, 0x6dd8($at)
    lui     $at, 0x802c
    addiu   $t6, $zero, 0x1
    jal     Function_0x800c463c
    sw      $t6, 0x6df4($at)
    b       branch_0x802c5c10
    addiu   $a0, $zero, 0xa
branch_0x802c5bbc:
    sll     $t7, $v0, 2
    addu    $t7, $t7, $v0
    sll     $t7, $t7, 2
    addu    $t7, $t7, $v0
    sll     $t7, $t7, 2
    addu    $t7, $t7, $v0
    sll     $t7, $t7, 1
    addiu   $at, $zero, 0x14
    div     $zero, $t7, $at
    mflo    $t8
    lui     $at, 0x802c
    sw      $t8, 0x6dd8($at)
    sll     $t9, $v0, 8
    subu    $t9, $t9, $v0
    addiu   $at, $zero, 0x14
    div     $zero, $t9, $at
    mflo    $t4
    lui     $at, 0x802c
    b       branch_0x802c5c10
    sw      $t4, 0x6dd4($at)

.globl Function_0x802c5c0c
Function_0x802c5c0c: # 0x802c5c0c
    addiu   $s0, $zero, 0x1
branch_0x802c5c10:
    beqz    $s0, branch_0x802c5ca4
    or      $s2, $zero, $zero
    or      $s0, $zero, $zero
    or      $s1, $zero, $zero
branch_0x802c5c20:
    lw      $t5, 0x0($s3)
    or      $a0, $s5, $zero
    addu    $a1, $t5, $s2
    jal     Function_0x80047e80
    addiu   $a1, $a1, 0xa80
    lw      $t6, 0x0($s3)
    lw      $at, 0x0($s6)
    addiu   $s2, $s2, 0x40
    addu    $t7, $t6, $s0
    sw      $at, 0x1280($t7)
    lw      $t9, 0x4($s6)
    sw      $t9, 0x1284($t7)
    lw      $at, 0x8($s6)
    sw      $at, 0x1288($t7)
    lw      $t9, 0xc($s6)
    sw      $t9, 0x128c($t7)
    lw      $t4, 0x8($s4)
    lw      $t8, 0x0($s3)
    addiu   $t5, $t4, 0x3a
    sll     $t6, $t5, 2
    addu    $t7, $t8, $s0
    sh      $t6, 0x1288($t7)
    lw      $t9, 0xc($s4)
    lw      $t6, 0x0($s3)
    addu    $t4, $t9, $s1
    addiu   $t5, $t4, 0x41
    addiu   $s1, $s1, 0x20
    sll     $t8, $t5, 2
    addu    $t7, $t6, $s0
    addiu   $s0, $s0, 0x10
    bne     $s1, $s7, branch_0x802c5c20
    sh      $t8, 0x128a($t7)
    addiu   $a0, $zero, 0xa
branch_0x802c5ca4:
    lw      $t9, 0x1d4($sp)
branch_0x802c5ca8:
    addiu   $s4, $s4, 0x10
    addiu   $t4, $t9, 0x1
    bne     $t4, $a0, branch_0x802c5aac
    sw      $t4, 0x1d4($sp)
    lw      $ra, 0x5c($sp)
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
    addiu   $sp, $sp, 0x1d8

Function_0x802c5ce8: # 0x802c5ce8
    lui     $v1, 0x802c
    lui     $a0, 0x802c
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6d8c
    addiu   $a0, $a0, 0x6f20
    addiu   $v1, $v1, 0x6e80
branch_0x802c5d00:
    lw      $at, 0x0($v0)
    lw      $t8, 0x4($v0)
    addiu   $v1, $v1, 0x10
    sw      $at, -0x10($v1)
    lw      $at, 0x8($v0)
    sw      $t8, -0xc($v1)
    lw      $t8, 0xc($v0)
    sw      $at, -0x8($v1)
    sltu    $at, $v1, $a0
    bnez    $at, branch_0x802c5d00
    sw      $t8, -0x4($v1)
    lui     $v0, 0x801d
    lw      $v0, -0x4f68($v0)
    lui     $t2, 0x802c
    lui     $a0, 0x802c
    sll     $t9, $v0, 2
    addu    $t2, $t2, $t9
    lw      $t2, 0x6d54($t2)
    addiu   $a0, $a0, 0x6e7c
    lui     $t3, %hi(Unknown_0x800d465c)
    sw      $t2, 0x0($a0)
    lw      $t3, %lo(Unknown_0x800d465c)($t3)
    lui     $v1, 0x801c
    addiu   $a1, $zero, 0x3
    sll     $t4, $t3, 3
    subu    $t4, $t4, $t3
    sll     $t4, $t4, 4
    subu    $t4, $t4, $t3
    sll     $t4, $t4, 3
    addu    $v1, $v1, $t4
    lw      $v1, 0x29d0($v1)
    addiu   $t5, $zero, 0x6
    addiu   $t1, $zero, 0x4
    bne     $a1, $v1, branch_0x802c5d9c
    addiu   $t0, $zero, 0x1
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6f44
    b       branch_0x802c5e44
    sw      $t5, 0x0($v1)
branch_0x802c5d9c:
    addiu   $a2, $zero, 0x2
    bne     $a2, $v0, branch_0x802c5df8
    nop
    bnez    $v1, branch_0x802c5dc4
    addiu   $t1, $zero, 0x4
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6f44
    sw      $a1, 0x0($v1)
    b       branch_0x802c5e44
    addiu   $t0, $zero, 0x1
branch_0x802c5dc4:
    addiu   $t0, $zero, 0x1
    bne     $t0, $v1, branch_0x802c5de0
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6f44
    addiu   $t1, $zero, 0x4
    b       branch_0x802c5e44
    sw      $t1, 0x0($v1)
branch_0x802c5de0:
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6f44
    addiu   $t7, $zero, 0x5
    sw      $t7, 0x0($v1)
    b       branch_0x802c5e44
    addiu   $t1, $zero, 0x4
branch_0x802c5df8:
    bnezl   $v1, branch_0x802c5e1c
    addiu   $t0, $zero, 0x1
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6f44
    sw      $zero, 0x0($v1)
    addiu   $t1, $zero, 0x4
    b       branch_0x802c5e44
    addiu   $t0, $zero, 0x1

.globl Function_0x802c5e18
Function_0x802c5e18: # 0x802c5e18
    addiu   $t0, $zero, 0x1
branch_0x802c5e1c:
    bne     $t0, $v1, branch_0x802c5e34
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6f44
    sw      $t0, 0x0($v1)
    b       branch_0x802c5e44
    addiu   $t1, $zero, 0x4
branch_0x802c5e34:
    lui     $v1, 0x802c
    addiu   $v1, $v1, 0x6f44
    sw      $a2, 0x0($v1)
    addiu   $t1, $zero, 0x4
branch_0x802c5e44:
    lw      $t6, 0x0($v1)
    lui     $t9, 0x802c
    lui     $at, 0x802c
    sll     $t8, $t6, 2
    addu    $t9, $t9, $t8
    lw      $t9, 0x6d70($t9)
    bnez    $v0, branch_0x802c5e70
    sw      $t9, 0x6d6c($at)
    lui     $at, 0x802c
    b       branch_0x802c5e78
    sw      $t0, 0x6d68($at)
branch_0x802c5e70:
    lui     $at, 0x802c
    sw      $zero, 0x6d68($at)
branch_0x802c5e78:
    lw      $v1, 0x0($a0)
    addiu   $v1, $v1, 0x1
    blez    $v1, branch_0x802c5ed8
    lui     $t2, 0x802c
    addiu   $a2, $t2, 0x6f20
    lui     $a0, 0x801d
    sll     $t3, $v1, 2
    addu    $a3, $t3, $a2
    addiu   $a0, $a0, 0xb0b0
branch_0x802c5e9c:
    lui     $v1, 0x800f
    addiu   $v1, $v1, 0xa910
    or      $v0, $zero, $zero
    lw      $a1, 0x0($a0)
branch_0x802c5eac:
    lh      $t4, 0x0($v1)
    beql    $t4, $a1, branch_0x802c5ec8
    addiu   $a2, $a2, 0x4
    addiu   $v0, $v0, 0x1
    bne     $v0, $t1, branch_0x802c5eac
    addiu   $v1, $v1, 0x2
    addiu   $a2, $a2, 0x4
branch_0x802c5ec8:
    sltu    $at, $a2, $a3
    addiu   $a0, $a0, 0x10
    bnez    $at, branch_0x802c5e9c
    sw      $v0, -0x4($a2)
branch_0x802c5ed8:
    lui     $at, 0x800e
    jr      $ra
    sw      $t0, -0x5878($at)

Function_0x802c5ee4: # 0x802c5ee4
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6e80
    or      $v1, $a1, $zero
    or      $v0, $zero, $zero
    addiu   $a2, $zero, 0xa
branch_0x802c5ef8:
    lw      $t6, 0x0($v1)
    beqz    $t6, branch_0x802c5f10
    nop
    addiu   $v0, $v0, 0x1
    bne     $v0, $a2, branch_0x802c5ef8
    addiu   $v1, $v1, 0x10
branch_0x802c5f10:
    beq     $v0, $a2, branch_0x802c5f48
    sll     $t7, $v0, 4
    addu    $v1, $a1, $t7
    addiu   $t8, $zero, 0x1
    addiu   $t9, $zero, 0xeb
    sw      $t8, 0x0($v1)
    sw      $a0, 0x4($v1)
    beq     $a0, $a2, branch_0x802c5f40
    sw      $t9, 0xc($v1)
    addiu   $t0, $zero, 0x20
    jr      $ra
    sw      $t0, 0x8($v1)
branch_0x802c5f40:
    addiu   $t1, $zero, 0x1c
    sw      $t1, 0x8($v1)
branch_0x802c5f48:
    jr      $ra
    nop


.globl Function_17_0x802c5f50
Function_17_0x802c5f50: # 0x802c5f50
    lui     $v0, %hi(Unknown_0x801ce39c)
    addiu   $v0, $v0, %lo(Unknown_0x801ce39c)
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c5f94
    lui     $t7, 0x800e
    sw      $zero, 0x0($v0)
    lw      $t7, -0x575c($t7)
    addiu   $at, $zero, 0x66
    addiu   $a1, $zero, 0xff
    bne     $t7, $at, branch_0x802c5f94
    addiu   $a2, $zero, 0xff
    jal     Function_0x80093b5c
    addiu   $a3, $zero, 0xff
    b       branch_0x802c6020
    lw      $ra, 0x14($sp)
branch_0x802c5f94:
    lui     $at, 0x800e
    jal     Function_0x80091b5c
    sw      $zero, -0x5754($at)
    jal     Function_0x8009302c
    or      $a0, $v0, $zero
    jal     Function_0x802c602c
    or      $a0, $v0, $zero
    lui     $t8, 0x800e
    lw      $t8, -0x575c($t8)
    addiu   $at, $zero, 0x66
    or      $a0, $v0, $zero
    bne     $t8, $at, branch_0x802c5fd8
    lui     $t9, 0x8023
    jal     Function_0x802c6c1c
    sw      $v0, 0x18($sp)
    b       branch_0x802c6018
    lw      $a0, 0x18($sp)
branch_0x802c5fd8:
    lh      $t9, -0x782a($t9)
    addiu   $at, $zero, 0x1
    lui     $t0, 0x801d
    bnel    $t9, $at, branch_0x802c601c
    or      $v0, $a0, $zero
    lw      $t0, -0x1c70($t0)
    addiu   $at, $zero, 0x2
    bne     $t0, $at, branch_0x802c600c
    nop
    jal     Function_0x801eaf10_ChangeStateTo2
    sw      $a0, 0x18($sp)
    b       branch_0x802c6018
    lw      $a0, 0x18($sp)
branch_0x802c600c:
    jal     Function_0x801ec758_ChangeStateTo64
    sw      $a0, 0x18($sp)
    lw      $a0, 0x18($sp)
branch_0x802c6018:
    or      $v0, $a0, $zero
branch_0x802c601c:
    lw      $ra, 0x14($sp)
branch_0x802c6020:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c602c
Function_0x802c602c: # 0x802c602c
    addiu   $sp, $sp, 0xfed0
    sw      $s6, 0x68($sp)
    sw      $s5, 0x64($sp)
    sw      $s4, 0x60($sp)
    lui     $s6, 0x802c
    or      $s4, $a0, $zero
    sw      $ra, 0x74($sp)
    sw      $fp, 0x70($sp)
    sw      $s7, 0x6c($sp)
    sw      $s3, 0x5c($sp)
    sw      $s2, 0x58($sp)
    sw      $s1, 0x54($sp)
    sw      $s0, 0x50($sp)
    addiu   $s6, $s6, 0x6e80
    or      $s5, $zero, $zero
branch_0x802c6068:
    lw      $t6, 0x0($s6)
    beqzl   $t6, branch_0x802c6bdc
    addiu   $s5, $s5, 0x1
    lw      $t7, 0x4($s6)
    sltiu   $at, $t7, 0xb
    beqz    $at, branch_0x802c6bd8
    sll     $t7, $t7, 2
    lui     $at, 0x802c
    addu    $at, $at, $t7
    lw      $t7, 0x6e38($at)
    jr      $t7
    nop

Function_0x802c6098: # 0x802c6098
    or      $v0, $s4, $zero
    lui     $t9, 0x107
    addiu   $t9, $t9, 0xf628
    lui     $t8, 0x600
    sw      $t8, 0x0($v0)
    sw      $t9, 0x4($v0)
    lw      $a3, 0xc($s6)
    lw      $a2, 0x8($s6)
    addiu   $t0, $zero, 0x100
    addiu   $t1, $zero, 0x20
    addiu   $a0, $s4, 0x8
    sw      $t1, 0x14($sp)
    sw      $t0, 0x10($sp)
    jal     Function_0x800940d8
    or      $a1, $zero, $zero
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    sw      $t1, 0x34($sp)
    sw      $t0, 0x30($sp)
    sw      $t9, 0x2c($sp)
    sw      $t8, 0x28($sp)
    sw      $t7, 0x24($sp)
    sw      $t6, 0x20($sp)
    sw      $t5, 0x1c($sp)
    sw      $t4, 0x18($sp)
    sw      $t3, 0x14($sp)
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lui     $t2, 0x801d
    lw      $t2, -0x4f68($t2)
    lw      $a0, 0x4($s6)
    or      $s4, $v0, $zero
    bnez    $t2, branch_0x802c6154
    or      $v1, $a0, $zero
    addiu   $v1, $v1, 0xffff
branch_0x802c6154:
    lui     $t3, 0x802c
    lw      $t3, 0x6e7c($t3)
    addiu   $a1, $zero, 0x1
    lui     $a2, 0x802c
    bne     $t3, $a0, branch_0x802c6170
    addiu   $t7, $zero, 0x1
    addiu   $v1, $zero, 0x8
branch_0x802c6170:
    lw      $t5, 0xc($s6)
    lw      $a3, 0x8($s6)
    sll     $t4, $v1, 2
    addu    $a2, $a2, $t4
    addiu   $t6, $t5, 0x4
    sw      $t6, 0x10($sp)
    lw      $a2, 0x6d9c($a2)
    sw      $t7, 0x14($sp)
    or      $a0, $s4, $zero
    jal     Function_0x801e3c40_DrawStrings
    addiu   $a3, $a3, 0x18
    lw      $t8, 0x4($s6)
    lui     $v1, 0x802c
    lw      $t2, 0xc($s6)
    sll     $t9, $t8, 2
    addu    $v1, $v1, $t9
    lw      $v1, 0x6f20($v1)
    lui     $t1, 0x802c
    lw      $a3, 0x8($s6)
    addiu   $t1, $t1, 0x6dc0
    sll     $t0, $v1, 2
    addu    $s0, $t0, $t1
    addiu   $t3, $t2, 0x10
    sw      $t3, 0x10($sp)
    lw      $a2, 0x0($s0)
    sw      $zero, 0x14($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e3c40_DrawStrings
    addiu   $a3, $a3, 0x27
    lui     $t4, 0x802c
    addiu   $t4, $t4, 0x6dd0
    beq     $s0, $t4, branch_0x802c6234
    or      $s4, $v0, $zero
    lw      $t5, 0x4($s6)
    lw      $t7, 0xc($s6)
    lw      $a3, 0x8($s6)
    lui     $a2, 0x801d
    sll     $t6, $t5, 2
    addu    $a2, $a2, $t6
    addiu   $t8, $t7, 0x10
    sw      $t8, 0x10($sp)
    lw      $a2, -0x4ed0($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e8884
    addiu   $a3, $a3, 0x93
    b       branch_0x802c6260
    or      $s4, $v0, $zero
branch_0x802c6234:
    lw      $t9, 0xc($s6)
    lw      $a3, 0x8($s6)
    lui     $a2, 0x802c
    addiu   $t0, $t9, 0x10
    sw      $t0, 0x10($sp)
    addiu   $a2, $a2, 0x6e20
    or      $a0, $s4, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x801e95e0
    addiu   $a3, $a3, 0x93
    or      $s4, $v0, $zero
branch_0x802c6260:
    lui     $t1, 0x801d
    lw      $t1, -0x4f68($t1)
    lw      $t3, 0x4($s6)
    lui     $v0, 0x800f
    sll     $t2, $t1, 4
    sll     $t4, $t3, 1
    addu    $t5, $t2, $t4
    addu    $v0, $v0, $t5
    lh      $v0, -0x568c($v0)
    lui     $t6, 0x802c
    lw      $t7, 0x8($s6)
    sll     $s0, $v0, 2
    addu    $t6, $t6, $s0
    lw      $t6, 0x6dfc($t6)
    lw      $t8, 0xc($s6)
    lui     $a2, 0x800e
    addu    $a2, $a2, $s0
    addu    $a3, $t6, $t7
    addiu   $t9, $t8, 0x4
    sw      $t9, 0x10($sp)
    addiu   $a3, $a3, 0x89
    lw      $a2, -0x5870($a2)
    sw      $zero, 0x14($sp)
    or      $a0, $s4, $zero
    jal     Function_0x801e3c40_DrawStrings
    addiu   $a1, $zero, 0x1
    lui     $t0, 0x801c
    addu    $t0, $t0, $s0
    lw      $t0, 0x23c0($t0)
    addiu   $at, $zero, 0x1
    or      $s4, $v0, $zero
    bne     $t0, $at, branch_0x802c6bd8
    or      $a0, $v0, $zero
    addiu   $t1, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t2, $zero, 0xff
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
    sw      $t2, 0x18($sp)
    sw      $t3, 0x14($sp)
    sw      $t1, 0x10($sp)
    addiu   $a1, $zero, 0x4
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lw      $t1, 0xc($s6)
    lw      $a3, 0x8($s6)
    addiu   $t2, $zero, 0x2
    addiu   $t3, $t1, 0x10
    sw      $t3, 0x10($sp)
    sw      $t2, 0x14($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x62
    jal     Function_0x801e3c40_DrawStrings
    addiu   $a3, $a3, 0x6d
    b       branch_0x802c6bd8
    or      $s4, $v0, $zero

.globl Function_0x802c6378
Function_0x802c6378: # 0x802c6378
    or      $v0, $s4, $zero
    lui     $t5, 0x107
    addiu   $t5, $t5, 0xf628
    lui     $t4, 0x600
    sw      $t4, 0x0($v0)
    sw      $t5, 0x4($v0)
    lw      $a3, 0xc($s6)
    lw      $a2, 0x8($s6)
    lui     $t0, 0x700
    lui     $t1, 0x107
    addiu   $t1, $t1, 0xf488
    addiu   $t0, $t0, 0xa40
    addiu   $t6, $zero, 0x109
    addiu   $t7, $zero, 0x17
    addiu   $t8, $zero, 0x1
    addiu   $t9, $zero, 0x1
    addiu   $a0, $s4, 0x8
    sw      $t9, 0x11c($sp)
    sw      $t8, 0x110($sp)
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    sw      $t0, 0x84($sp)
    sw      $t1, 0x80($sp)
    or      $a1, $zero, $zero
    or      $s5, $zero, $zero
    jal     Function_0x800940d8
    addiu   $fp, $zero, 0x1
    lw      $a3, 0xc($s6)
    lw      $a2, 0x8($s6)
    addiu   $t3, $zero, 0x109
    addiu   $t2, $zero, 0x10
    sw      $t2, 0x14($sp)
    sw      $t3, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    jal     Function_0x800940d8
    addiu   $a3, $a3, 0x1b
    or      $s4, $v0, $zero
    or      $s0, $zero, $zero
branch_0x802c6414:
    lw      $t4, 0xc($s6)
    lw      $a2, 0x8($s6)
    addiu   $t5, $zero, 0x109
    addiu   $t6, $zero, 0x1c
    addu    $a3, $t4, $s0
    addiu   $a3, $a3, 0x2e
    sw      $t6, 0x14($sp)
    sw      $t5, 0x10($sp)
    or      $a0, $s4, $zero
    jal     Function_0x800940d8
    or      $a1, $zero, $zero
    addiu   $s0, $s0, 0x20
    slti    $at, $s0, 0x80
    bnez    $at, branch_0x802c6414
    or      $s4, $v0, $zero
    lui     $t7, 0x800e
    lh      $t7, -0x5718($t7)
    lui     $t8, 0x801d
    bnezl   $t7, branch_0x802c6510
    addiu   $t8, $zero, 0xff
    lw      $t8, -0x4f68($t8)
    addiu   $at, $zero, 0x2
    lui     $t9, %hi(Unknown_0x800d465c)
    bne     $t8, $at, branch_0x802c64b4
    addiu   $v0, $zero, 0x1
    lw      $t9, %lo(Unknown_0x800d465c)($t9)
    lui     $t1, 0x801c
    sll     $t0, $t9, 3
    subu    $t0, $t0, $t9
    sll     $t0, $t0, 4
    subu    $t0, $t0, $t9
    sll     $t0, $t0, 3
    addu    $t1, $t1, $t0
    lw      $t1, 0x29d0($t1)
    bnez    $t1, branch_0x802c64ac
    nop
    b       branch_0x802c64b4
    addiu   $v0, $zero, 0x1
branch_0x802c64ac:
    b       branch_0x802c64b4
    or      $v0, $zero, $zero
branch_0x802c64b4:
    beqz    $v0, branch_0x802c650c
    addiu   $a0, $s4, 0x8
    or      $v0, $s4, $zero
    lui     $t3, 0xfa00
    sw      $t3, 0x0($v0)
    lui     $t2, 0x802c
    lw      $t2, 0x6dd8($t2)
    addiu   $at, $zero, 0xff00
    addiu   $t6, $zero, 0xcc
    andi    $t4, $t2, 0xff
    or      $t5, $t4, $at
    sw      $t5, 0x4($v0)
    lw      $a3, 0xc($s6)
    lw      $a2, 0x8($s6)
    addiu   $t7, $zero, 0x10
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a3, $a3, 0xae
    jal     Function_0x800940d8
    addiu   $a2, $a2, 0x1e
    or      $s4, $v0, $zero
branch_0x802c650c:
    addiu   $t8, $zero, 0xff
branch_0x802c6510:
    addiu   $t9, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x34($sp)
    sw      $t6, 0x30($sp)
    sw      $t5, 0x2c($sp)
    sw      $t4, 0x28($sp)
    sw      $t2, 0x24($sp)
    sw      $t3, 0x20($sp)
    sw      $t1, 0x1c($sp)
    sw      $t0, 0x18($sp)
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a0, $s4, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lw      $t8, 0xc($s6)
    lw      $a3, 0x8($s6)
    sw      $zero, 0x14($sp)
    addiu   $t9, $t8, 0x3
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x26
    jal     Function_0x801e3c40_DrawStrings
    addiu   $a3, $a3, 0xc
    lw      $t0, 0xc($s6)
    lw      $a3, 0x8($s6)
    sw      $zero, 0x14($sp)
    addiu   $t1, $t0, 0x1e
    sw      $t1, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x1f
    jal     Function_0x801e3c40_DrawStrings
    addiu   $a3, $a3, 0x5
    lw      $t3, 0xc($s6)
    lw      $a3, 0x8($s6)
    sw      $zero, 0x14($sp)
    addiu   $t2, $t3, 0x1e
    sw      $t2, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x20
    jal     Function_0x801e3c40_DrawStrings
    addiu   $a3, $a3, 0x65
    lw      $t4, 0xc($s6)
    lw      $a3, 0x8($s6)
    sw      $zero, 0x14($sp)
    addiu   $t5, $t4, 0x1e
    sw      $t5, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x3a
    jal     Function_0x801e3c40_DrawStrings
    addiu   $a3, $a3, 0xcf
    lui     $t6, 0x800e
    lh      $t6, -0x5718($t6)
    or      $s4, $v0, $zero
    lui     $t7, 0x801d
    bnezl   $t6, branch_0x802c6714
    addiu   $t2, $zero, 0xff
    lw      $t7, -0x4f68($t7)
    addiu   $at, $zero, 0x2
    lui     $t8, %hi(Unknown_0x800d465c)
    bne     $t7, $at, branch_0x802c6678
    addiu   $v0, $zero, 0x1
    lw      $t8, %lo(Unknown_0x800d465c)($t8)
    lui     $t0, 0x801c
    sll     $t9, $t8, 3
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 4
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 3
    addu    $t0, $t0, $t9
    lw      $t0, 0x29d0($t0)
    bnez    $t0, branch_0x802c6670
    nop
    b       branch_0x802c6678
    addiu   $v0, $zero, 0x1
branch_0x802c6670:
    b       branch_0x802c6678
    or      $v0, $zero, $zero
branch_0x802c6678:
    beqz    $v0, branch_0x802c6710
    or      $a0, $s4, $zero
    lui     $a2, 0x802c
    addiu   $t1, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t2, $zero, 0xff
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
    sw      $t2, 0x18($sp)
    sw      $t3, 0x14($sp)
    sw      $t1, 0x10($sp)
    lbu     $a2, 0x6dd7($a2)
    addiu   $a1, $zero, 0xa
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff
    lw      $t1, 0xc($s6)
    lw      $a3, 0x8($s6)
    sw      $zero, 0x14($sp)
    addiu   $t3, $t1, 0xb1
    sw      $t3, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    addiu   $a2, $zero, 0x63
    jal     Function_0x801e3c40_DrawStrings
    addiu   $a3, $a3, 0x24
    or      $s4, $v0, $zero
branch_0x802c6710:
    addiu   $t2, $zero, 0xff
branch_0x802c6714:
    sw      $t2, 0x10($sp)
    or      $a0, $s4, $zero
    or      $a1, $zero, $zero
    or      $a2, $zero, $zero
    jal     Function_0x801e7bd4
    or      $a3, $zero, $zero
    or      $s4, $v0, $zero
    or      $s0, $zero, $zero
branch_0x802c6734:
    lw      $t4, 0xc($s6)
    lw      $v0, 0x8($s6)
    or      $a0, $s4, $zero
    addu    $v1, $t4, $s0
    addiu   $t5, $v1, 0x46
    sw      $t5, 0x10($sp)
    addiu   $a2, $v1, 0x31
    addiu   $a1, $v0, 0x22
    jal     Function_0x801e7d38
    addiu   $a3, $v0, 0x4e
    addiu   $s0, $s0, 0x20
    slti    $at, $s0, 0x80
    bnez    $at, branch_0x802c6734
    or      $s4, $v0, $zero
    addiu   $s4, $v0, 0x8
    lui     $t6, 0xe700
    or      $a0, $s4, $zero
    sw      $t6, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t7, 0xed02
    lui     $t8, 0x4d
    ori     $t8, $t8, 0xc36c
    ori     $t7, $t7, 0x50
    lui     $s3, 0x800e
    sw      $t7, 0x0($a0)
    sw      $t8, 0x4($a0)
    addiu   $s4, $s4, 0x8
    addiu   $s3, $s3, 0xa75c
    or      $s0, $zero, $zero
branch_0x802c67a8:
    lui     $t9, 0x800e
    addiu   $t9, $t9, 0xa75c
    beq     $s3, $t9, branch_0x802c6800
    addiu   $a0, $sp, 0xe0
    lw      $t0, 0x0($s3)
    lw      $t4, -0x4($s3)
    lui     $v0, 0x801d
    addiu   $v0, $v0, 0xb0a0
    sll     $t1, $t0, 2
    sll     $t5, $t4, 2
    addu    $t6, $v0, $t5
    addu    $t3, $v0, $t1
    lw      $t2, 0x0($t3)
    lw      $t7, 0x0($t6)
    addiu   $fp, $fp, 0x1
    lw      $t8, 0x110($sp)
    beql    $t2, $t7, branch_0x802c6800
    sw      $t8, 0x11c($sp)
    sw      $fp, 0x110($sp)
    b       branch_0x802c6800
    sw      $fp, 0x11c($sp)

.globl Function_0x802c67fc
Function_0x802c67fc: # 0x802c67fc
    sw      $t8, 0x11c($sp)
branch_0x802c6800:
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6e2c
    jal     Function_0x800c9f70
    lw      $a2, 0x11c($sp)
    lw      $a0, 0x0($s3)
    lui     $t9, 0x800e
    lui     $a1, %hi(Unknown_0x800d465c)
    sll     $v1, $a0, 2
    addu    $t9, $t9, $v1
    lw      $t9, -0x58d0($t9)
    lw      $a1, %lo(Unknown_0x800d465c)($a1)
    lui     $t1, 0x801d
    sll     $t0, $t9, 3
    lui     $s1, 0x801d
    subu    $t0, $t0, $t9
    sll     $t0, $t0, 1
    addiu   $t1, $t1, 0xaff8
    addu    $s1, $s1, $v1
    addu    $s7, $t0, $t1
    beq     $a1, $a0, branch_0x802c685c
    lw      $s1, -0x4f60($s1)
    b       branch_0x802c6860
    or      $s5, $zero, $zero
branch_0x802c685c:
    addiu   $s5, $zero, 0x6
branch_0x802c6860:
    beq     $a1, $a0, branch_0x802c6870
    or      $a2, $s1, $zero
    b       branch_0x802c6874
    or      $s2, $zero, $zero
branch_0x802c6870:
    addiu   $s2, $zero, 0x6
branch_0x802c6874:
    lui     $a1, 0x802c
    addiu   $a1, $a1, 0x6e30
    jal     Function_0x800c9f70
    addiu   $a0, $sp, 0xd4
    addiu   $a0, $zero, 0xa
    div     $zero, $s1, $a0
    mflo    $t3
    or      $a1, $zero, $zero
    bnez    $a0, branch_0x802c68a0
    nop
    break   0x7
branch_0x802c68a0:
    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x802c68b8
    lui     $at, 0x8000
    bne     $s1, $at, branch_0x802c68b8
    nop
    break   0x6
branch_0x802c68b8:
    div     $zero, $t3, $a0
    mfhi    $v1
    addiu   $a2, $sp, 0xe0
    bnez    $a0, branch_0x802c68d0
    nop
    break   0x7
branch_0x802c68d0:
    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x802c68e8
    lui     $at, 0x8000
    bne     $t3, $at, branch_0x802c68e8
    nop
    break   0x6
branch_0x802c68e8:
    or      $a0, $s4, $zero
    beqz    $v1, branch_0x802c690c
    addiu   $t8, $zero, 0xff
    lui     $t4, 0x8022
    addu    $t4, $t4, $v1
    lbu     $t4, 0x6b30($t4)
    addiu   $t5, $zero, 0xe4
    b       branch_0x802c6910
    subu    $s1, $t5, $t4
branch_0x802c690c:
    addiu   $s1, $zero, 0xe4
branch_0x802c6910:
    lw      $t6, 0xc($s6)
    lw      $a3, 0x8($s6)
    addiu   $t9, $zero, 0xff
    addu    $t2, $t6, $s0
    addiu   $t7, $t2, 0x32
    sw      $t7, 0x10($sp)
    addiu   $t7, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t4, $zero, 0xff
    sw      $t4, 0x30($sp)
    sw      $t5, 0x2c($sp)
    sw      $t3, 0x28($sp)
    sw      $t1, 0x24($sp)
    sw      $t0, 0x20($sp)
    sw      $t6, 0x34($sp)
    sw      $t2, 0x38($sp)
    sw      $t7, 0x3c($sp)
    sw      $t9, 0x1c($sp)
    sw      $t9, 0x44($sp)
    sw      $t8, 0x40($sp)
    sw      $t8, 0x18($sp)
    sw      $s5, 0x14($sp)
    jal     Function_0x801e9084_PrintString
    addiu   $a3, $a3, 0x5
    lw      $t0, 0xc($s6)
    lw      $a3, 0x8($s6)
    addiu   $t5, $zero, 0xff
    addu    $t1, $t0, $s0
    addiu   $t3, $t1, 0x36
    sw      $t3, 0x10($sp)
    addiu   $t3, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t4, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    sw      $t9, 0x30($sp)
    sw      $t8, 0x2c($sp)
    sw      $t7, 0x28($sp)
    sw      $t2, 0x24($sp)
    sw      $t6, 0x20($sp)
    sw      $t4, 0x1c($sp)
    sw      $t4, 0x44($sp)
    sw      $t0, 0x34($sp)
    sw      $t1, 0x38($sp)
    sw      $t3, 0x3c($sp)
    sw      $t5, 0x18($sp)
    sw      $t5, 0x40($sp)
    sw      $zero, 0x14($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    or      $a2, $s7, $zero
    jal     Function_0x801e9084_PrintString
    addiu   $a3, $a3, 0x54
    lw      $t6, 0x8($s6)
    lw      $t2, 0xc($s6)
    addiu   $t9, $zero, 0xff
    addu    $a3, $t6, $s1
    addu    $t7, $t2, $s0
    addiu   $t8, $t7, 0x32
    sw      $t8, 0x10($sp)
    addiu   $t8, $zero, 0xff
    addiu   $t7, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t0, $zero, 0xff
    addiu   $t1, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t5, $zero, 0xff
    addiu   $t4, $zero, 0xff
    sw      $t4, 0x2c($sp)
    sw      $t5, 0x28($sp)
    sw      $t3, 0x24($sp)
    sw      $t1, 0x20($sp)
    sw      $t0, 0x1c($sp)
    sw      $t0, 0x44($sp)
    sw      $t6, 0x30($sp)
    sw      $t2, 0x34($sp)
    sw      $t7, 0x38($sp)
    sw      $t8, 0x3c($sp)
    sw      $t9, 0x18($sp)
    sw      $t9, 0x40($sp)
    sw      $s2, 0x14($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    jal     Function_0x801e9084_PrintString
    addiu   $a2, $sp, 0xd4
    lui     $t1, 0x800e
    addiu   $t1, $t1, 0xa76c
    addiu   $s3, $s3, 0x4
    sltu    $at, $s3, $t1
    addiu   $s0, $s0, 0x20
    bnez    $at, branch_0x802c67a8
    or      $s4, $v0, $zero
    jal     Function_0x8009389c
    or      $a0, $v0, $zero
    lui     $t3, 0xff10
    lui     $v1, 0xe700
    ori     $t3, $t3, 0x13f
    sw      $v1, 0x0($v0)
    sw      $zero, 0x4($v0)
    sw      $t3, 0x8($v0)
    lui     $t5, 0x8015
    lw      $t5, 0x16a8($t5)
    lui     $t6, 0x8015
    lui     $at, 0x8000
    sll     $t4, $t5, 2
    addu    $t6, $t6, $t4
    lw      $t6, 0x4020($t6)
    lui     $t7, 0xb400
    sw      $t7, 0x10($v0)
    addu    $t2, $t6, $at
    sw      $t2, 0xc($v0)
    lui     $t8, 0x802c
    lhu     $t8, 0x6f40($t8)
    lui     $t9, 0x103
    ori     $t9, $t9, 0x40
    sw      $t9, 0x18($v0)
    sw      $t8, 0x14($v0)
    lw      $t0, 0x84($sp)
    lui     $t1, 0x600
    sw      $t1, 0x20($v0)
    sw      $t0, 0x1c($v0)
    lw      $t3, 0x80($sp)
    lui     $t4, 0x4d
    lui     $t5, 0xed02
    ori     $t5, $t5, 0x50
    ori     $t4, $t4, 0xc36c
    lui     $s3, 0x800e
    lui     $s0, 0x700
    lui     $s1, 0x700
    sw      $zero, 0x2c($v0)
    sw      $v1, 0x28($v0)
    sw      $t4, 0x34($v0)
    sw      $t5, 0x30($v0)
    addiu   $s4, $v0, 0x38
    addiu   $s1, $s1, 0xa80
    addiu   $s0, $s0, 0x1280
    addiu   $s3, $s3, 0xa75c
    or      $s5, $zero, $zero
    or      $s2, $zero, $zero
    sw      $t3, 0x24($v0)
branch_0x802c6b68:
    or      $v0, $s4, $zero
    lui     $t6, 0x380
    ori     $t6, $t6, 0x10
    sw      $t6, 0x0($v0)
    sw      $s0, 0x4($v0)
    addiu   $v1, $s4, 0x8
    lui     $t2, 0x102
    ori     $t2, $t2, 0x40
    sw      $t2, 0x0($v1)
    sw      $s1, 0x4($v1)
    lui     $t7, 0x801d
    lw      $t7, -0x1ca8($t7)
    addiu   $a0, $v1, 0x8
    lw      $a1, 0x0($s3)
    addu    $t8, $t7, $s2
    addiu   $t9, $t8, 0xc80
    sw      $t9, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x801e4d48
    or      $a3, $zero, $zero
    addiu   $s5, $s5, 0x1
    addiu   $at, $zero, 0x4
    addiu   $s3, $s3, 0x4
    addiu   $s0, $s0, 0x10
    addiu   $s1, $s1, 0x40
    addiu   $s2, $s2, 0xc0
    bne     $s5, $at, branch_0x802c6b68
    or      $s4, $v0, $zero
branch_0x802c6bd8:
    addiu   $s5, $s5, 0x1
branch_0x802c6bdc:
    slti    $at, $s5, 0xa
    bnez    $at, branch_0x802c6068
    addiu   $s6, $s6, 0x10
    lw      $ra, 0x74($sp)
    or      $v0, $s4, $zero
    lw      $s4, 0x60($sp)
    lw      $s0, 0x50($sp)
    lw      $s1, 0x54($sp)
    lw      $s2, 0x58($sp)
    lw      $s3, 0x5c($sp)
    lw      $s5, 0x64($sp)
    lw      $s6, 0x68($sp)
    lw      $s7, 0x6c($sp)
    lw      $fp, 0x70($sp)
    jr      $ra
    addiu   $sp, $sp, 0x130

Function_0x802c6c1c: # 0x802c6c1c
    lui     $t6, 0x802c
    lw      $t6, 0x6df4($t6)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c6c9c
    lui     $v0, 0x802c
    addiu   $v0, $v0, 0x6df8
    lw      $t7, 0x0($v0)
    lui     $t9, 0x801d
    lui     $t2, 0x802c
    addiu   $t8, $t7, 0x1
    sw      $t8, 0x0($v0)
    lhu     $t9, -0x1c46($t9)
    slti    $at, $t8, 0x259
    andi    $t0, $t9, 0xb000
    bnez    $t0, branch_0x802c6c68
    nop
    bnezl   $at, branch_0x802c6ca0
    lw      $ra, 0x14($sp)
branch_0x802c6c68:
    lw      $t2, 0x6e74($t2)
    lui     $t3, 0x802c
    bnez    $t2, branch_0x802c6c84
    nop
    lw      $t3, 0x6e78($t3)
    beqz    $t3, branch_0x802c6c94
    nop
branch_0x802c6c84:
    jal     Function_0x802c6cac
    addiu   $a0, $zero, 0x64
    b       branch_0x802c6ca0
    lw      $ra, 0x14($sp)
branch_0x802c6c94:
    jal     Function_0x802c6cac
    addiu   $a0, $zero, 0x2
branch_0x802c6c9c:
    lw      $ra, 0x14($sp)
branch_0x802c6ca0:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x802c6cac
Function_0x802c6cac: # 0x802c6cac
    lui     $v0, 0x800e
    addiu   $v0, $v0, 0xa8a4
    lw      $t6, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t7, $zero, 0x67
    sw      $t6, -0x1c6c($at)
    lui     $at, 0x801d
    sw      $a0, -0x1c70($at)
    sw      $t7, 0x0($v0)
    lui     $at, 0x801d
    addiu   $t8, $zero, 0x15
    sw      $t8, -0x1c68($at)
    lui     $at, %hi(Unknown_0x801ce39c)
    addiu   $t9, $zero, 0x1
    sw      $t9, %lo(Unknown_0x801ce39c)($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, 0x800e
    addiu   $sp, $sp, 0xffe8
    sw      $zero, -0x5764($at)
    sw      $ra, 0x14($sp)
    lui     $at, %hi(Unknown_0x800d439c)
    addiu   $t0, $zero, 0x3
    sw      $t0, %lo(Unknown_0x800d439c)($at)
    addiu   $a0, $zero, 0x3
    addiu   $a1, $zero, 0x14
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    lui     $t1, 0x801d
    lw      $t1, -0x1c70($t1)
    addiu   $at, $zero, 0x2
    bnel    $t1, $at, branch_0x802c6d44
    lw      $ra, 0x14($sp)
    jal     Function_0x800c1d00
    or      $a0, $zero, $zero
    lw      $ra, 0x14($sp)
branch_0x802c6d44:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.incbin "./roms/Wave Race 64 (USA).z64", 0x1d0e70, 0x1d0f90 - 0x1d0e70
