
.globl Function_0x8007bbe4
Function_0x8007bbe4: # 0x8007bbe4
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    lui     $a0, %hi(Unknown_0x80153e30)
    lui     $a2, %hi(Unknown_0x801ae778)
    addiu   $a2, $a2, %lo(Unknown_0x801ae778)
    addiu   $a0, $a0, %lo(Unknown_0x80153e30)
    or      $a1, $zero, $zero
    jal     osEepromLongRead
    addiu   $a3, $zero, 0x200
    beqz    $v0, branch_0x8007bc18
    or      $a1, $zero, $zero
    b       branch_0x8007bcb0
    addiu   $v0, $zero, 0x2
branch_0x8007bc18:
    lui     $v1, %hi(Unknown_0x801ae778)
    lui     $v0, %hi(Unknown_0x800d7fe8)
    lui     $a0, %hi(Unknown_0x800d7fea)
    addiu   $a0, $a0, %lo(Unknown_0x800d7fea)
    addiu   $v0, $v0, %lo(Unknown_0x800d7fe8)
    addiu   $v1, $v1, %lo(Unknown_0x801ae778)
branch_0x8007bc30:
    lbu     $t6, 0x0($v1)
    lbu     $t7, 0x0($v0)
    addiu   $v0, $v0, 0x1
    beq     $t6, $t7, branch_0x8007bc4c
    nop
    b       branch_0x8007bc54
    addiu   $a1, $zero, 0x1
branch_0x8007bc4c:
    bne     $v0, $a0, branch_0x8007bc30
    addiu   $v1, $v1, 0x1
branch_0x8007bc54:
    bnez    $a1, branch_0x8007bc8c
    lui     $a0, %hi(Unknown_0x801ae778)
    addiu   $a0, $a0, %lo(Unknown_0x801ae778)
    jal     Function_0x8007bb98
    sw      $a1, 0x18($sp)
    lui     $t8, 0x801b
    lhu     $t8, -0x1886($t8)
    lw      $a1, 0x18($sp)
    beq     $v0, $t8, branch_0x8007bc8c
    nop
    addiu   $a1, $zero, 0x1
    jal     Function_0x8007bb90
    sw      $a1, 0x18($sp)
    lw      $a1, 0x18($sp)
branch_0x8007bc8c:
    beqzl   $a1, branch_0x8007bcb0
    or      $v0, $zero, $zero
    jal     Function_0x8007bd58
    nop
    beqzl   $v0, branch_0x8007bcb0
    or      $v0, $zero, $zero
    b       branch_0x8007bcb4
    lw      $ra, 0x14($sp)

.globl Function_0x8007bcac
Function_0x8007bcac: # 0x8007bcac
    or      $v0, $zero, $zero
branch_0x8007bcb0:
    lw      $ra, 0x14($sp)
branch_0x8007bcb4:
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x8007bcc0
Function_0x8007bcc0: # 0x8007bcc0
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    lui     $a0, %hi(Unknown_0x801ae778)
    jal     Function_0x8007bb98
    addiu   $a0, $a0, %lo(Unknown_0x801ae778)
    lui     $a2, %hi(Unknown_0x801ae778)
    addiu   $a2, $a2, %lo(Unknown_0x801ae778)
    lui     $a0, %hi(Unknown_0x80153e30)
    sh      $v0, 0x2($a2)
    addiu   $a0, $a0, %lo(Unknown_0x80153e30)
    or      $a1, $zero, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x200
    beqz    $v0, branch_0x8007bd04
    lw      $ra, 0x14($sp)
    b       branch_0x8007bd08
    addiu   $v0, $zero, 0x3
branch_0x8007bd04:
    or      $v0, $zero, $zero
branch_0x8007bd08:
    jr      $ra
    addiu   $sp, $sp, 0x18

.globl Function_0x8007bd10
Function_0x8007bd10: # 0x8007bd10
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    lui     $a0, %hi(Unknown_0x80153e30)
    jal     osEepromProbe
    addiu   $a0, $a0, %lo(Unknown_0x80153e30)
    bnez    $v0, branch_0x8007bd3c
    addiu   $t6, $zero, 0x1
    lui     $at, %hi(Unknown_0x800d7fe0)
    sw      $zero, %lo(Unknown_0x800d7fe0)($at)
    b       branch_0x8007bd48
    addiu   $v0, $zero, 0x1
branch_0x8007bd3c:
    lui     $at, %hi(Unknown_0x800d7fe0)
    sw      $t6, %lo(Unknown_0x800d7fe0)($at)
    or      $v0, $zero, $zero
branch_0x8007bd48:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x8007bd58
Function_0x8007bd58: # 0x8007bd58
    lui     $t6, %hi(Unknown_0x800d7fe0)
    lw      $t6, %lo(Unknown_0x800d7fe0)($t6)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    bnez    $t6, branch_0x8007bd78
    lui     $a0, %hi(Unknown_0x801ae778)
    b       branch_0x8007bd90
    addiu   $v0, $zero, 0x1
branch_0x8007bd78:
    jal     Function_0x8007b310
    addiu   $a0, $a0, %lo(Unknown_0x801ae778)
    jal     Function_0x8007b5d0
    nop
    jal     Function_0x8007bcc0
    nop
branch_0x8007bd90:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x8007bda0
Function_0x8007bda0: # 0x8007bda0
    lui     $t6, %hi(Unknown_0x800d7fe0)
    lw      $t6, %lo(Unknown_0x800d7fe0)($t6)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    bnez    $t6, branch_0x8007bdd0
    lui     $a0, %hi(Unknown_0x801ae778)
    jal     Function_0x8007b310
    addiu   $a0, $a0, %lo(Unknown_0x801ae778)
    jal     Function_0x8007b5d0
    nop
    b       branch_0x8007bdf4
    addiu   $v0, $zero, 0x1
branch_0x8007bdd0:
    jal     Function_0x8007bbe4
    nop
    beqz    $v0, branch_0x8007bde8
    nop
    b       branch_0x8007bdf8
    lw      $ra, 0x14($sp)
branch_0x8007bde8:
    jal     Function_0x8007b5d0
    nop
    or      $v0, $zero, $zero
branch_0x8007bdf4:
    lw      $ra, 0x14($sp)
branch_0x8007bdf8:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x8007be04
Function_0x8007be04: # 0x8007be04
    lui     $t6, %hi(Unknown_0x800d7fe0)
    lw      $t6, %lo(Unknown_0x800d7fe0)($t6)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    bnez    $t6, branch_0x8007be24
    nop
    b       branch_0x8007be34
    addiu   $v0, $zero, 0x1
branch_0x8007be24:
    jal     Function_0x8007b8d0
    nop
    jal     Function_0x8007bcc0
    nop
branch_0x8007be34:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x8007be44
Function_0x8007be44: # 0x8007be44
    addiu   $sp, $sp, 0xffc8
    lui     $t6, %hi(Unknown_0x800d7fe0)
    lw      $t6, %lo(Unknown_0x800d7fe0)($t6)
    sw      $s3, 0x20($sp)
    or      $s3, $a0, $zero
    sw      $ra, 0x24($sp)
    sw      $s2, 0x1c($sp)
    sw      $s1, 0x18($sp)
    bnez    $t6, branch_0x8007be74
    sw      $s0, 0x14($sp)
    b       branch_0x8007c03c
    addiu   $v0, $zero, 0x1
branch_0x8007be74:
    blez    $s3, branch_0x8007be84
    slti    $at, $s3, 0x9
    bnez    $at, branch_0x8007be8c
    addiu   $v1, $s3, 0xffff
branch_0x8007be84:
    b       branch_0x8007c03c
    or      $v0, $zero, $zero
branch_0x8007be8c:
    sll     $t9, $v1, 2
    subu    $t9, $t9, $v1
    sll     $t7, $s3, 4
    subu    $t7, $t7, $s3
    sll     $t9, $t9, 3
    lui     $t8, 0x801c
    lui     $t1, %hi(Unknown_0x801ae778)
    addiu   $t1, $t1, %lo(Unknown_0x801ae778)
    addiu   $t8, $t8, 0x1d50
    addiu   $t0, $t9, 0x60
    sll     $t7, $t7, 2
    addu    $s1, $t7, $t8
    addu    $s0, $t0, $t1
    or      $s2, $zero, $zero
    sw      $v1, 0x2c($sp)
branch_0x8007bec8:
    or      $a0, $s1, $zero
    jal     Function_0x8007af18
    or      $a1, $s0, $zero
    addiu   $s2, $s2, 0x6
    slti    $at, $s2, 0x12
    addiu   $s1, $s1, 0x14
    bnez    $at, branch_0x8007bec8
    addiu   $s0, $s0, 0x6
    sll     $t2, $s3, 2
    addu    $t2, $t2, $s3
    lui     $t3, 0x801c
    addiu   $t3, $t3, 0x2020
    sll     $t2, $t2, 2
    addu    $a0, $t2, $t3
    jal     Function_0x8007af18
    or      $a1, $s0, $zero
    lw      $t6, 0x2c($sp)
    sll     $t4, $s3, 3
    addu    $t4, $t4, $s3
    sll     $t7, $t6, 2
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 1
    lui     $t5, 0x801c
    lui     $t9, %hi(Unknown_0x801ae778)
    addiu   $t9, $t9, %lo(Unknown_0x801ae778)
    addiu   $t5, $t5, 0x2200
    addiu   $t8, $t7, 0x1a8
    sll     $t4, $t4, 2
    addu    $s0, $t4, $t5
    addu    $s2, $t8, $t9
    addiu   $s3, $zero, 0x6
    or      $s1, $zero, $zero
branch_0x8007bf48:
    lw      $a0, 0x0($s0)
    jal     Function_0x8007b25c
    or      $a1, $s2, $zero
    addiu   $s1, $s1, 0x3
    addiu   $s0, $s0, 0x4
    bne     $s1, $s3, branch_0x8007bf48
    addiu   $s2, $s2, 0x3
    jal     Function_0x8007b2bc
    nop
    lui     $s0, %hi(Unknown_0x801ae778)
    addiu   $s0, $s0, %lo(Unknown_0x801ae778)
    jal     Function_0x8007bb98
    or      $a0, $s0, $zero
    lui     $s2, %hi(Unknown_0x80153e30)
    addiu   $s2, $s2, %lo(Unknown_0x80153e30)
    sh      $v0, 0x2($s0)
    or      $a0, $s2, $zero
    or      $a1, $zero, $zero
    or      $a2, $s0, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x10
    beqz    $v0, branch_0x8007bfac
    or      $a0, $s2, $zero
    b       branch_0x8007c03c
    addiu   $v0, $zero, 0x3
branch_0x8007bfac:
    lw      $t0, 0x2c($sp)
    or      $s1, $s0, $zero
    addiu   $a3, $zero, 0x18
    sll     $t1, $t0, 2
    subu    $t1, $t1, $t0
    sll     $t1, $t1, 3
    addu    $a2, $s0, $t1
    addiu   $a2, $a2, 0x60
    subu    $a1, $a2, $s0
    srl     $t2, $a1, 3
    jal     osEepromLongWrite
    andi    $a1, $t2, 0xff
    beqz    $v0, branch_0x8007bfec
    lw      $t4, 0x2c($sp)
    b       branch_0x8007c03c
    addiu   $v0, $zero, 0x3
branch_0x8007bfec:
    sll     $t5, $t4, 2
    lui     $v0, 0x800e
    addu    $v0, $v0, $t5
    lw      $v0, -0x7fd0($v0)
    lui     $t6, 0x801b
    addiu   $t6, $t6, 0xe920
    subu    $t7, $t6, $s1
    addu    $a1, $t7, $v0
    srl     $t8, $a1, 3
    addu    $a2, $s0, $v0
    addiu   $a2, $a2, 0x1a8
    andi    $a1, $t8, 0xff
    or      $a0, $s2, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x10
    beqzl   $v0, branch_0x8007c03c
    or      $v0, $zero, $zero
    b       branch_0x8007c03c
    addiu   $v0, $zero, 0x3

.globl Function_0x8007c038
Function_0x8007c038: # 0x8007c038
    or      $v0, $zero, $zero
branch_0x8007c03c:
    lw      $ra, 0x24($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    lw      $s2, 0x1c($sp)
    lw      $s3, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38

.globl Function_0x8007c058
Function_0x8007c058: # 0x8007c058
    addiu   $sp, $sp, 0xffd8
    lui     $t6, %hi(Unknown_0x800d7fe0)
    lw      $t6, %lo(Unknown_0x800d7fe0)($t6)
    sw      $ra, 0x24($sp)
    sw      $s3, 0x20($sp)
    sw      $s2, 0x1c($sp)
    sw      $s1, 0x18($sp)
    sw      $s0, 0x14($sp)
    bnez    $t6, branch_0x8007c088
    or      $a2, $a0, $zero
    b       branch_0x8007c188
    addiu   $v0, $zero, 0x1
branch_0x8007c088:
    slti    $at, $a2, 0x9
    bnez    $at, branch_0x8007c09c
    sll     $t7, $a2, 2
    b       branch_0x8007c188
    or      $v0, $zero, $zero
branch_0x8007c09c:
    sll     $t9, $a2, 4
    subu    $t9, $t9, $a2
    subu    $t7, $t7, $a2
    lui     $t8, 0x801c
    lui     $t1, %hi(Unknown_0x801ae778)
    addiu   $t1, $t1, %lo(Unknown_0x801ae778)
    addiu   $t8, $t8, 0x2448
    sll     $t7, $t7, 4
    addiu   $t0, $t9, 0x120
    addu    $s2, $t0, $t1
    addu    $s0, $t7, $t8
    or      $s1, $zero, $zero
    sw      $a2, 0x28($sp)
    addiu   $s3, $zero, 0xf
branch_0x8007c0d4:
    or      $a0, $s0, $zero
    jal     Function_0x8007b14c
    or      $a1, $s2, $zero
    addiu   $s1, $s1, 0x5
    addiu   $s0, $s0, 0x10
    bne     $s1, $s3, branch_0x8007c0d4
    addiu   $s2, $s2, 0x5
    jal     Function_0x8007b2bc
    nop
    lui     $s0, %hi(Unknown_0x801ae778)
    addiu   $s0, $s0, %lo(Unknown_0x801ae778)
    jal     Function_0x8007bb98
    or      $a0, $s0, $zero
    lui     $s1, %hi(Unknown_0x80153e30)
    addiu   $s1, $s1, %lo(Unknown_0x80153e30)
    sh      $v0, 0x2($s0)
    or      $a0, $s1, $zero
    or      $a1, $zero, $zero
    or      $a2, $s0, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x10
    beqz    $v0, branch_0x8007c138
    lw      $t2, 0x28($sp)
    b       branch_0x8007c188
    addiu   $v0, $zero, 0x3
branch_0x8007c138:
    sll     $t3, $t2, 2
    lui     $v0, %hi(Unknown_0x800d7fec)
    addu    $v0, $v0, $t3
    lw      $v0, %lo(Unknown_0x800d7fec)($v0)
    lui     $t4, 0x801b
    addiu   $t4, $t4, 0xe898
    subu    $t5, $t4, $s0
    addu    $a1, $t5, $v0
    srl     $t6, $a1, 3
    addu    $a2, $s0, $v0
    addiu   $a2, $a2, 0x120
    andi    $a1, $t6, 0xff
    or      $a0, $s1, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x18
    beqzl   $v0, branch_0x8007c188
    or      $v0, $zero, $zero
    b       branch_0x8007c188
    addiu   $v0, $zero, 0x3

.globl Function_0x8007c184
Function_0x8007c184: # 0x8007c184
    or      $v0, $zero, $zero
branch_0x8007c188:
    lw      $ra, 0x24($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    lw      $s2, 0x1c($sp)
    lw      $s3, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x28

.globl Function_0x8007c1a4
Function_0x8007c1a4: # 0x8007c1a4
    lui     $t6, %hi(Unknown_0x800d7fe0)
    lw      $t6, %lo(Unknown_0x800d7fe0)($t6)
    addiu   $sp, $sp, 0xffd0
    sw      $ra, 0x1c($sp)
    sw      $s0, 0x18($sp)
    bnez    $t6, branch_0x8007c1c8
    or      $a2, $a0, $zero
    b       branch_0x8007c2a8
    addiu   $v0, $zero, 0x1
branch_0x8007c1c8:
    blez    $a2, branch_0x8007c1d8
    slti    $at, $a2, 0x9
    bnez    $at, branch_0x8007c1e0
    lui     $s0, %hi(Unknown_0x801ae778)
branch_0x8007c1d8:
    b       branch_0x8007c2a8
    or      $v0, $zero, $zero
branch_0x8007c1e0:
    sll     $t8, $a2, 2
    sll     $t0, $a2, 2
    addiu   $s0, $s0, %lo(Unknown_0x801ae778)
    addu    $t0, $t0, $a2
    addu    $t8, $t8, $a2
    lui     $t9, 0x801c
    addiu   $t7, $a2, 0xffff
    addiu   $t9, $t9, 0x2110
    sll     $t8, $t8, 2
    addu    $a1, $s0, $t0
    sw      $t7, 0x24($sp)
    addiu   $a1, $a1, 0x1d3
    jal     Function_0x8007b03c
    addu    $a0, $t8, $t9
    jal     Function_0x8007b2bc
    nop
    jal     Function_0x8007bb98
    or      $a0, $s0, $zero
    lui     $a0, %hi(Unknown_0x80153e30)
    sh      $v0, 0x2($s0)
    addiu   $a0, $a0, %lo(Unknown_0x80153e30)
    or      $a1, $zero, $zero
    or      $a2, $s0, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x10
    beqz    $v0, branch_0x8007c254
    lw      $t1, 0x24($sp)
    b       branch_0x8007c2a8
    addiu   $v0, $zero, 0x3
branch_0x8007c254:
    sll     $t2, $t1, 2
    lui     $v0, 0x800e
    addu    $v0, $v0, $t2
    lw      $v0, -0x7ff0($v0)
    lui     $t3, %hi(Unknown_0x801ae950)
    addiu   $t3, $t3, %lo(Unknown_0x801ae950)
    subu    $t4, $t3, $s0
    addu    $a1, $t4, $v0
    srl     $t5, $a1, 3
    lui     $a0, %hi(Unknown_0x80153e30)
    addu    $a2, $s0, $v0
    addiu   $a2, $a2, 0x1d8
    addiu   $a0, $a0, %lo(Unknown_0x80153e30)
    andi    $a1, $t5, 0xff
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x10
    beqzl   $v0, branch_0x8007c2a8
    or      $v0, $zero, $zero
    b       branch_0x8007c2a8
    addiu   $v0, $zero, 0x3

.globl Function_0x8007c2a4
Function_0x8007c2a4: # 0x8007c2a4
    or      $v0, $zero, $zero
branch_0x8007c2a8:
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x30
    jr      $ra
    nop

.globl Function_0x8007c2bc
Function_0x8007c2bc: # 0x8007c2bc
    addiu   $sp, $sp, 0xffd0
    lui     $t6, %hi(Unknown_0x800d7fe0)
    lw      $t6, %lo(Unknown_0x800d7fe0)($t6)
    sw      $ra, 0x2c($sp)
    sw      $s5, 0x28($sp)
    sw      $s4, 0x24($sp)
    sw      $s3, 0x20($sp)
    sw      $s2, 0x1c($sp)
    sw      $s1, 0x18($sp)
    bnez    $t6, branch_0x8007c2f0
    sw      $s0, 0x14($sp)
    b       branch_0x8007c410
    addiu   $v0, $zero, 0x1
branch_0x8007c2f0:
    lui     $s3, %hi(Unknown_0x801ae788)
    lui     $s4, 0x801d
    lui     $s1, 0x801d
    addiu   $s1, $s1, 0xb068
    addiu   $s4, $s4, 0xaff8
    addiu   $s3, $s3, %lo(Unknown_0x801ae788)
    or      $s2, $zero, $zero
    addiu   $s5, $zero, 0x4
    addiu   $s0, $zero, 0x3
branch_0x8007c314:
    or      $a0, $s3, $zero
    or      $a1, $s4, $zero
    jal     Function_0x8006a0e0_CopyBytes
    addiu   $a2, $zero, 0xa
    sll     $t0, $s2, 3
    subu    $t0, $t0, $s2
    sll     $t7, $s2, 2
    lui     $t8, %hi(Unknown_0x801ae778)
    lui     $t9, 0x801d
    addiu   $a2, $t9, 0xaff8
    addiu   $t8, $t8, %lo(Unknown_0x801ae778)
    subu    $t7, $t7, $s2
    sll     $t0, $t0, 1
    addu    $a3, $t0, $a2
    addu    $a1, $t7, $t8
branch_0x8007c350:
    or      $v0, $zero, $zero
    or      $v1, $a1, $zero
    or      $a0, $a3, $zero
branch_0x8007c35c:
    lb      $t1, 0xb($a0)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    addiu   $a0, $a0, 0x1
    bne     $v0, $s0, branch_0x8007c35c
    sb      $t1, 0x37($v1)
    addiu   $a2, $a2, 0x38
    sltu    $at, $a2, $s1
    addiu   $a1, $a1, 0xc
    bnez    $at, branch_0x8007c350
    addiu   $a3, $a3, 0x38
    addiu   $s2, $s2, 0x1
    addiu   $s3, $s3, 0xa
    bne     $s2, $s5, branch_0x8007c314
    addiu   $s4, $s4, 0xe
    jal     Function_0x8007b2bc
    nop
    lui     $s0, %hi(Unknown_0x801ae778)
    addiu   $s0, $s0, %lo(Unknown_0x801ae778)
    jal     Function_0x8007bb98
    or      $a0, $s0, $zero
    lui     $s1, %hi(Unknown_0x80153e30)
    addiu   $s1, $s1, %lo(Unknown_0x80153e30)
    sh      $v0, 0x2($s0)
    or      $a0, $s1, $zero
    or      $a1, $zero, $zero
    or      $a2, $s0, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x10
    beqz    $v0, branch_0x8007c3e0
    lui     $a2, %hi(Unknown_0x801ae788)
    b       branch_0x8007c410
    addiu   $v0, $zero, 0x3
branch_0x8007c3e0:
    addiu   $a2, $a2, %lo(Unknown_0x801ae788)
    subu    $a1, $a2, $s0
    srl     $t2, $a1, 3
    andi    $a1, $t2, 0xff
    or      $a0, $s1, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x40
    beqzl   $v0, branch_0x8007c410
    or      $v0, $zero, $zero
    b       branch_0x8007c410
    addiu   $v0, $zero, 0x3

.globl Function_0x8007c40c
Function_0x8007c40c: # 0x8007c40c
    or      $v0, $zero, $zero
branch_0x8007c410:
    lw      $ra, 0x2c($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    lw      $s2, 0x1c($sp)
    lw      $s3, 0x20($sp)
    lw      $s4, 0x24($sp)
    lw      $s5, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x30

.globl Function_0x8007c434
Function_0x8007c434: # 0x8007c434
    lui     $t6, %hi(Unknown_0x800d7fe0)
    lw      $t6, %lo(Unknown_0x800d7fe0)($t6)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    bnez    $t6, branch_0x8007c454
    nop
    b       branch_0x8007c49c
    addiu   $v0, $zero, 0x1
branch_0x8007c454:
    jal     Function_0x8007b2bc
    nop
    lui     $a0, %hi(Unknown_0x801ae778)
    jal     Function_0x8007bb98
    addiu   $a0, $a0, %lo(Unknown_0x801ae778)
    lui     $a2, %hi(Unknown_0x801ae778)
    addiu   $a2, $a2, %lo(Unknown_0x801ae778)
    lui     $a0, %hi(Unknown_0x80153e30)
    sh      $v0, 0x2($a2)
    addiu   $a0, $a0, %lo(Unknown_0x80153e30)
    or      $a1, $zero, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x10
    beqzl   $v0, branch_0x8007c49c
    or      $v0, $zero, $zero
    b       branch_0x8007c49c
    addiu   $v0, $zero, 0x3

.globl Function_0x8007c498
Function_0x8007c498: # 0x8007c498
    or      $v0, $zero, $zero
branch_0x8007c49c:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x8007c4ac
Function_0x8007c4ac: # 0x8007c4ac
    lui     $t6, %hi(Unknown_0x800d7fe0)
    lw      $t6, %lo(Unknown_0x800d7fe0)($t6)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    bnez    $t6, branch_0x8007c4cc
    lui     $a3, %hi(Unknown_0x801ae778)
    b       branch_0x8007c594
    addiu   $v0, $zero, 0x1
branch_0x8007c4cc:
    lui     $a2, 0x801d
    lui     $t0, 0x801d
    addiu   $t0, $t0, 0xb08c
    addiu   $a2, $a2, 0xb068
    addiu   $a3, $a3, %lo(Unknown_0x801ae778)
    addiu   $a1, $zero, 0x3
branch_0x8007c4e4:
    or      $v0, $zero, $zero
    or      $v1, $a3, $zero
    or      $a0, $a2, $zero
branch_0x8007c4f0:
    lw      $t7, 0x0($a0)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    addiu   $a0, $a0, 0x4
    bne     $v0, $a1, branch_0x8007c4f0
    sb      $t7, 0x4f($v1)
    addiu   $a2, $a2, 0xc
    bne     $a2, $t0, branch_0x8007c4e4
    addiu   $a3, $a3, 0x3
    jal     Function_0x8007b2bc
    nop
    lui     $a0, %hi(Unknown_0x801ae778)
    jal     Function_0x8007bb98
    addiu   $a0, $a0, %lo(Unknown_0x801ae778)
    lui     $a2, %hi(Unknown_0x801ae778)
    addiu   $a2, $a2, %lo(Unknown_0x801ae778)
    lui     $a0, %hi(Unknown_0x80153e30)
    sh      $v0, 0x2($a2)
    addiu   $a0, $a0, %lo(Unknown_0x80153e30)
    or      $a1, $zero, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x10
    beqz    $v0, branch_0x8007c558
    lui     $a2, 0x801b
    b       branch_0x8007c594
    addiu   $v0, $zero, 0x3
branch_0x8007c558:
    lui     $t8, %hi(Unknown_0x801ae778)
    addiu   $a2, $a2, 0xe7c8
    addiu   $t8, $t8, %lo(Unknown_0x801ae778)
    subu    $a1, $a2, $t8
    srl     $t9, $a1, 3
    lui     $a0, %hi(Unknown_0x80153e30)
    addiu   $a0, $a0, %lo(Unknown_0x80153e30)
    andi    $a1, $t9, 0xff
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x10
    beqzl   $v0, branch_0x8007c594
    or      $v0, $zero, $zero
    b       branch_0x8007c594
    addiu   $v0, $zero, 0x3

.globl Function_0x8007c590
Function_0x8007c590: # 0x8007c590
    or      $v0, $zero, $zero
branch_0x8007c594:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x8007c5a4
Function_0x8007c5a4: # 0x8007c5a4
    addiu   $sp, $sp, 0xffa8
    addiu   $a2, $a0, 0xffff
    sll     $t7, $a0, 4
    subu    $t7, $t7, $a0
    sll     $t9, $a2, 2
    lui     $t8, 0x801c
    addiu   $t8, $t8, 0x1d50
    addu    $t9, $t9, $a2
    sll     $t7, $t7, 2
    lui     $t1, 0x800e
    sw      $s0, 0x14($sp)
    addiu   $t1, $t1, 0x8078
    addu    $a3, $t7, $t8
    sll     $t9, $t9, 4
    sw      $ra, 0x24($sp)
    sw      $s3, 0x20($sp)
    sw      $s2, 0x1c($sp)
    sw      $s1, 0x18($sp)
    sw      $a0, 0x58($sp)
    addu    $v0, $t9, $t1
    or      $s0, $a3, $zero
    or      $v1, $zero, $zero
branch_0x8007c5fc:
    lw      $at, 0x0($v0)
    lw      $t4, 0x4($v0)
    addiu   $v1, $v1, 0x1
    sw      $at, 0x0($s0)
    lw      $at, 0x8($v0)
    sw      $t4, 0x4($s0)
    lw      $t4, 0xc($v0)
    sw      $at, 0x8($s0)
    lw      $at, 0x10($v0)
    addiu   $s0, $s0, 0x14
    addiu   $v0, $v0, 0x14
    sw      $at, -0x4($s0)
    slti    $at, $v1, 0x3
    bnez    $at, branch_0x8007c5fc
    sw      $t4, -0x8($s0)
    lw      $a1, 0x58($sp)
    lw      $at, 0x0($v0)
    lui     $t6, 0x801c
    sll     $t5, $a1, 2
    addu    $t5, $t5, $a1
    sll     $a1, $t5, 2
    addiu   $t6, $t6, 0x2020
    addu    $s3, $a1, $t6
    sw      $at, 0x0($s3)
    lw      $at, 0x8($v0)
    lw      $t8, 0x4($v0)
    lw      $t9, 0x58($sp)
    sw      $at, 0x8($s3)
    sw      $t8, 0x4($s3)
    lw      $t8, 0xc($v0)
    lw      $at, 0x10($v0)
    sll     $t2, $a2, 2
    sll     $t1, $t9, 3
    addu    $t2, $t2, $a2
    lui     $t3, 0x801c
    addu    $t1, $t1, $t9
    sll     $t1, $t1, 2
    addiu   $t3, $t3, 0x2200
    sll     $t2, $t2, 4
    lui     $a0, 0x800e
    addu    $a0, $a0, $t2
    addu    $t0, $t1, $t3
    sw      $t8, 0xc($s3)
    sw      $at, 0x10($s3)
    lw      $a0, -0x7f4c($a0)
    or      $s0, $t0, $zero
    or      $v1, $zero, $zero
    addiu   $v0, $v1, 0x1
branch_0x8007c6bc:
    multu   $a0, $v0
    slti    $at, $v0, 0x2
    or      $v1, $v0, $zero
    addiu   $s0, $s0, 0x4
    mflo    $t4
    sw      $t4, -0x4($s0)
    bnezl   $at, branch_0x8007c6bc
    addiu   $v0, $v1, 0x1
    lui     $t6, 0x800e
    addiu   $t6, $t6, 0x84a8
    lw      $at, 0x0($t6)
    lui     $t5, 0x801c
    addiu   $t5, $t5, 0x2110
    addu    $v0, $a1, $t5
    sw      $at, 0x0($v0)
    lw      $t8, 0x4($t6)
    sll     $t9, $a2, 2
    subu    $t9, $t9, $a2
    sw      $t8, 0x4($v0)
    lw      $at, 0x8($t6)
    sll     $t9, $t9, 3
    lui     $t3, %hi(Unknown_0x801ae778)
    sw      $at, 0x8($v0)
    lw      $t8, 0xc($t6)
    addiu   $t3, $t3, %lo(Unknown_0x801ae778)
    addiu   $t1, $t9, 0x60
    sw      $t8, 0xc($v0)
    lw      $at, 0x10($t6)
    sw      $t0, 0x28($sp)
    sw      $a2, 0x48($sp)
    sw      $v0, 0x34($sp)
    addu    $s1, $t1, $t3
    or      $s0, $a3, $zero
    or      $s2, $zero, $zero
    sw      $at, 0x10($v0)
branch_0x8007c748:
    or      $a0, $s0, $zero
    jal     Function_0x8007af18
    or      $a1, $s1, $zero
    addiu   $s2, $s2, 0x6
    slti    $at, $s2, 0x12
    addiu   $s0, $s0, 0x14
    bnez    $at, branch_0x8007c748
    addiu   $s1, $s1, 0x6
    or      $a0, $s3, $zero
    jal     Function_0x8007af18
    or      $a1, $s1, $zero
    lw      $t2, 0x48($sp)
    lui     $t7, %hi(Unknown_0x801ae778)
    addiu   $t7, $t7, %lo(Unknown_0x801ae778)
    sll     $t4, $t2, 2
    subu    $t4, $t4, $t2
    sll     $t4, $t4, 1
    addiu   $t5, $t4, 0x1a8
    addu    $s2, $t5, $t7
    lw      $s0, 0x28($sp)
    or      $s1, $zero, $zero
    addiu   $s3, $zero, 0x6
branch_0x8007c7a0:
    lw      $a0, 0x0($s0)
    jal     Function_0x8007b25c
    or      $a1, $s2, $zero
    addiu   $s1, $s1, 0x3
    addiu   $s0, $s0, 0x4
    bne     $s1, $s3, branch_0x8007c7a0
    addiu   $s2, $s2, 0x3
    lw      $t6, 0x48($sp)
    lui     $s0, %hi(Unknown_0x801ae778)
    addiu   $s0, $s0, %lo(Unknown_0x801ae778)
    sll     $t8, $t6, 2
    addu    $t8, $t8, $t6
    addu    $a1, $s0, $t8
    addiu   $a1, $a1, 0x1d8
    jal     Function_0x8007b03c
    lw      $a0, 0x34($sp)
    jal     Function_0x8007b2bc
    nop
    jal     Function_0x8007bb98
    or      $a0, $s0, $zero
    sh      $v0, 0x2($s0)
    lui     $t9, %hi(Unknown_0x800d7fe0)
    lw      $t9, %lo(Unknown_0x800d7fe0)($t9)
    lui     $s3, %hi(Unknown_0x80153e30)
    addiu   $s3, $s3, %lo(Unknown_0x80153e30)
    bnez    $t9, branch_0x8007c814
    or      $a0, $s3, $zero
    b       branch_0x8007c958
    addiu   $v0, $zero, 0x1
branch_0x8007c814:
    or      $a1, $zero, $zero
    or      $a2, $s0, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x10
    beqz    $v0, branch_0x8007c834
    or      $a0, $s3, $zero
    b       branch_0x8007c958
    addiu   $v0, $zero, 0x3
branch_0x8007c834:
    lw      $t1, 0x48($sp)
    or      $s1, $s0, $zero
    addiu   $a3, $zero, 0x18
    sll     $t3, $t1, 2
    subu    $t3, $t3, $t1
    sll     $t3, $t3, 3
    addu    $a2, $s0, $t3
    addiu   $a2, $a2, 0x60
    subu    $a1, $a2, $s0
    srl     $t2, $a1, 3
    jal     osEepromLongWrite
    andi    $a1, $t2, 0xff
    beqz    $v0, branch_0x8007c874
    lw      $t5, 0x58($sp)
    b       branch_0x8007c958
    addiu   $v0, $zero, 0x3
branch_0x8007c874:
    sll     $t7, $t5, 2
    lui     $v0, %hi(Unknown_0x800d7fec)
    addu    $v0, $v0, $t7
    lw      $v0, %lo(Unknown_0x800d7fec)($v0)
    lui     $t6, 0x801b
    addiu   $t6, $t6, 0xe898
    subu    $t8, $t6, $s1
    addu    $a1, $t8, $v0
    srl     $t9, $a1, 3
    addu    $a2, $s0, $v0
    addiu   $a2, $a2, 0x120
    andi    $a1, $t9, 0xff
    or      $a0, $s3, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x18
    beqz    $v0, branch_0x8007c8c0
    lw      $s2, 0x48($sp)
    b       branch_0x8007c958
    addiu   $v0, $zero, 0x3
branch_0x8007c8c0:
    sll     $t3, $s2, 2
    lui     $v0, 0x800e
    addu    $v0, $v0, $t3
    lw      $v0, -0x7fd0($v0)
    lui     $t2, 0x801b
    addiu   $t2, $t2, 0xe920
    subu    $t4, $t2, $s1
    addu    $a1, $t4, $v0
    srl     $t5, $a1, 3
    addu    $a2, $s0, $v0
    or      $s2, $t3, $zero
    addiu   $a2, $a2, 0x1a8
    andi    $a1, $t5, 0xff
    or      $a0, $s3, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x10
    beqz    $v0, branch_0x8007c910
    or      $a0, $s3, $zero
    b       branch_0x8007c958
    addiu   $v0, $zero, 0x3
branch_0x8007c910:
    lui     $v0, 0x800e
    addu    $v0, $v0, $s2
    lw      $v0, -0x7ff0($v0)
    lui     $t6, %hi(Unknown_0x801ae950)
    addiu   $t6, $t6, %lo(Unknown_0x801ae950)
    subu    $t8, $t6, $s1
    addu    $a1, $t8, $v0
    srl     $t9, $a1, 3
    addu    $a2, $s0, $v0
    addiu   $a2, $a2, 0x1d8
    andi    $a1, $t9, 0xff
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x10
    beqzl   $v0, branch_0x8007c958
    or      $v0, $zero, $zero
    b       branch_0x8007c958
    addiu   $v0, $zero, 0x3

.globl Function_0x8007c954
Function_0x8007c954: # 0x8007c954
    or      $v0, $zero, $zero
branch_0x8007c958:
    lw      $ra, 0x24($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    lw      $s2, 0x1c($sp)
    lw      $s3, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x58

.globl Function_0x8007c974
Function_0x8007c974: # 0x8007c974
    addiu   $sp, $sp, 0xffd8
    sll     $t6, $a0, 2
    subu    $t6, $t6, $a0
    lui     $t7, 0x801c
    sll     $t8, $a0, 2
    subu    $t8, $t8, $a0
    addiu   $t7, $t7, 0x2448
    sll     $t6, $t6, 4
    lui     $t9, 0x800e
    sw      $s0, 0x14($sp)
    addiu   $t9, $t9, 0x82f8
    addu    $a1, $t6, $t7
    sll     $t8, $t8, 4
    sw      $ra, 0x24($sp)
    sw      $s3, 0x20($sp)
    sw      $s2, 0x1c($sp)
    sw      $s1, 0x18($sp)
    or      $a2, $a0, $zero
    addu    $v1, $t8, $t9
    or      $s0, $a1, $zero
    or      $v0, $zero, $zero
branch_0x8007c9c8:
    lw      $at, 0x0($v1)
    lw      $t2, 0x4($v1)
    addiu   $v0, $v0, 0x1
    sw      $at, 0x0($s0)
    lw      $at, 0x8($v1)
    sw      $t2, 0x4($s0)
    lw      $t2, 0xc($v1)
    sw      $at, 0x8($s0)
    slti    $at, $v0, 0x3
    addiu   $s0, $s0, 0x10
    addiu   $v1, $v1, 0x10
    bnez    $at, branch_0x8007c9c8
    sw      $t2, -0x4($s0)
    sll     $t3, $a2, 4
    subu    $t3, $t3, $a2
    lui     $t5, %hi(Unknown_0x801ae778)
    addiu   $t5, $t5, %lo(Unknown_0x801ae778)
    addiu   $t4, $t3, 0x120
    addu    $s2, $t4, $t5
    or      $s0, $a1, $zero
    or      $s1, $zero, $zero
    sw      $a2, 0x28($sp)
    addiu   $s3, $zero, 0xf
branch_0x8007ca24:
    or      $a0, $s0, $zero
    jal     Function_0x8007b14c
    or      $a1, $s2, $zero
    addiu   $s1, $s1, 0x5
    addiu   $s0, $s0, 0x10
    bne     $s1, $s3, branch_0x8007ca24
    addiu   $s2, $s2, 0x5
    jal     Function_0x8007b2bc
    nop
    lui     $s0, %hi(Unknown_0x801ae778)
    addiu   $s0, $s0, %lo(Unknown_0x801ae778)
    jal     Function_0x8007bb98
    or      $a0, $s0, $zero
    sh      $v0, 0x2($s0)
    lui     $t6, %hi(Unknown_0x800d7fe0)
    lw      $t6, %lo(Unknown_0x800d7fe0)($t6)
    lui     $s1, %hi(Unknown_0x80153e30)
    addiu   $s1, $s1, %lo(Unknown_0x80153e30)
    bnez    $t6, branch_0x8007ca7c
    or      $a0, $s1, $zero
    b       branch_0x8007caec
    addiu   $v0, $zero, 0x1
branch_0x8007ca7c:
    or      $a1, $zero, $zero
    or      $a2, $s0, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x10
    beqz    $v0, branch_0x8007ca9c
    lw      $t7, 0x28($sp)
    b       branch_0x8007caec
    addiu   $v0, $zero, 0x3
branch_0x8007ca9c:
    sll     $t8, $t7, 2
    lui     $v0, %hi(Unknown_0x800d7fec)
    addu    $v0, $v0, $t8
    lw      $v0, %lo(Unknown_0x800d7fec)($v0)
    lui     $t9, 0x801b
    addiu   $t9, $t9, 0xe898
    subu    $t1, $t9, $s0
    addu    $a1, $t1, $v0
    srl     $t0, $a1, 3
    addu    $a2, $s0, $v0
    addiu   $a2, $a2, 0x120
    andi    $a1, $t0, 0xff
    or      $a0, $s1, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x18
    beqzl   $v0, branch_0x8007caec
    or      $v0, $zero, $zero
    b       branch_0x8007caec
    addiu   $v0, $zero, 0x3

.globl Function_0x8007cae8
Function_0x8007cae8: # 0x8007cae8
    or      $v0, $zero, $zero
branch_0x8007caec:
    lw      $ra, 0x24($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    lw      $s2, 0x1c($sp)
    lw      $s3, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x28

.globl Function_0x8007cb08
Function_0x8007cb08: # 0x8007cb08
    addiu   $sp, $sp, 0xfe90
    sw      $s7, 0x34($sp)
    sw      $s6, 0x30($sp)
    lui     $v0, %hi(Unknown_0x801ae778)
    lui     $v1, %hi(Unknown_0x801ae978)
    sw      $fp, 0x38($sp)
    sw      $s3, 0x24($sp)
    addiu   $v1, $v1, %lo(Unknown_0x801ae978)
    addiu   $v0, $v0, %lo(Unknown_0x801ae778)
    lui     $s6, 0x9
    addiu   $s7, $sp, 0x118
    sw      $ra, 0x3c($sp)
    sw      $s5, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    or      $fp, $s7, $zero
    ori     $s6, $s6, 0x27bf
    sw      $v0, 0x54($sp)
    sw      $v1, 0x48($sp)
    addiu   $s3, $sp, 0xc8
    sw      $zero, 0x16c($sp)
branch_0x8007cb64:
    lw      $v0, 0x54($sp)
    lw      $v1, 0x48($sp)
    addiu   $s1, $sp, 0x118
    addiu   $s2, $sp, 0xdc
    or      $s5, $zero, $zero
    addiu   $s0, $v0, 0x60
    addiu   $s4, $v1, 0x60
branch_0x8007cb80:
    or      $a0, $s0, $zero
    jal     Function_0x8007af94
    or      $a1, $s1, $zero
    or      $a0, $s4, $zero
    jal     Function_0x8007af94
    or      $a1, $s2, $zero
    addiu   $s2, $s2, 0x14
    addiu   $t7, $sp, 0x118
    sltu    $at, $s2, $t7
    addiu   $s0, $s0, 0x6
    addiu   $s1, $s1, 0x14
    bnez    $at, branch_0x8007cb80
    addiu   $s4, $s4, 0x6
    addiu   $s1, $sp, 0x118
    addiu   $s0, $sp, 0xdc
branch_0x8007cbbc:
    lw      $t8, 0x0($s1)
branch_0x8007cbc0:
    lw      $t9, 0x0($s0)
    bnel    $t8, $t9, branch_0x8007cc0c
    addiu   $s0, $s0, 0x14
    lw      $t2, 0x4($s1)
    lw      $t3, 0x4($s0)
    bnel    $t2, $t3, branch_0x8007cc0c
    addiu   $s0, $s0, 0x14
    lw      $t4, 0x8($s1)
    lw      $t5, 0x8($s0)
    addiu   $a0, $s1, 0x10
    addiu   $a1, $s0, 0x10
    bnel    $t4, $t5, branch_0x8007cc0c
    addiu   $s0, $s0, 0x14
    jal     Function_0x8006a16c
    addiu   $a2, $zero, 0x3
    bnezl   $v0, branch_0x8007cc0c
    addiu   $s0, $s0, 0x14
    sw      $s6, 0x0($s0)
    addiu   $s0, $s0, 0x14
branch_0x8007cc0c:
    bnel    $s0, $s7, branch_0x8007cbc0
    lw      $t8, 0x0($s1)
    addiu   $s1, $s1, 0x14
    addiu   $t6, $sp, 0x154
    sltu    $at, $s1, $t6
    bnezl   $at, branch_0x8007cbbc
    addiu   $s0, $sp, 0xdc
    addiu   $s1, $sp, 0x118
    addiu   $v1, $sp, 0x154
    addiu   $v0, $sp, 0x118
    addiu   $s0, $sp, 0xdc
branch_0x8007cc38:
    lw      $t7, 0x0($s0)
branch_0x8007cc3c:
    lw      $t8, 0x0($s1)
    slt     $at, $t7, $t8
    beqzl   $at, branch_0x8007cccc
    addiu   $s0, $s0, 0x14
    lw      $at, 0x0($s1)
    lw      $t2, 0x4($s1)
    lw      $t4, 0x4($s0)
    sw      $at, 0x0($s3)
    lw      $at, 0x8($s1)
    sw      $t2, 0x4($s3)
    lw      $t2, 0xc($s1)
    sw      $at, 0x8($s3)
    lw      $at, 0x10($s1)
    sw      $t4, 0x4($s1)
    lw      $t4, 0xc($s0)
    sw      $at, 0x10($s3)
    lw      $at, 0x0($s0)
    lw      $t6, 0x4($s3)
    sw      $t2, 0xc($s3)
    sw      $at, 0x0($s1)
    lw      $at, 0x8($s0)
    sw      $t2, 0xc($s0)
    sw      $t4, 0xc($s1)
    sw      $at, 0x8($s1)
    lw      $at, 0x10($s0)
    sw      $t6, 0x4($s0)
    sw      $at, 0x10($s1)
    lw      $at, 0x0($s3)
    sw      $at, 0x0($s0)
    lw      $at, 0x8($s3)
    sw      $at, 0x8($s0)
    lw      $at, 0x10($s3)
    bne     $s1, $fp, branch_0x8007ccc8
    sw      $at, 0x10($s0)
    addiu   $s5, $zero, 0x1
branch_0x8007ccc8:
    addiu   $s0, $s0, 0x14
branch_0x8007cccc:
    bnel    $s0, $v0, branch_0x8007cc3c
    lw      $t7, 0x0($s0)
    addiu   $s1, $s1, 0x14
    sltu    $at, $s1, $v1
    bnezl   $at, branch_0x8007cc38
    addiu   $s0, $sp, 0xdc
    lw      $s0, 0x54($sp)
    addiu   $s1, $sp, 0x118
    addiu   $s2, $sp, 0x154
    addiu   $s0, $s0, 0x60
branch_0x8007ccf4:
    or      $a0, $s1, $zero
    jal     Function_0x8007af18
    or      $a1, $s0, $zero
    addiu   $s1, $s1, 0x14
    sltu    $at, $s1, $s2
    bnez    $at, branch_0x8007ccf4
    addiu   $s0, $s0, 0x6
    beqz    $s5, branch_0x8007cd7c
    or      $a3, $zero, $zero
    lw      $t7, 0x16c($sp)
    lui     $t9, %hi(Unknown_0x801ae778)
    lui     $t2, %hi(Unknown_0x801ae978)
    sll     $t8, $t7, 2
    subu    $t8, $t8, $t7
    sll     $t8, $t8, 1
    addiu   $t2, $t2, %lo(Unknown_0x801ae978)
    addiu   $t9, $t9, %lo(Unknown_0x801ae778)
    addu    $a1, $t8, $t9
    addu    $a2, $t8, $t2
    addiu   $t1, $zero, 0x2
    addiu   $t0, $zero, 0x3
branch_0x8007cd48:
    or      $a0, $zero, $zero
    or      $v0, $a1, $zero
    or      $v1, $a2, $zero
branch_0x8007cd54:
    lbu     $t3, 0x1a8($v1)
    addiu   $a0, $a0, 0x1
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    bne     $a0, $t0, branch_0x8007cd54
    sb      $t3, 0x1a7($v0)
    addiu   $a3, $a3, 0x1
    addiu   $a1, $a1, 0x3
    bne     $a3, $t1, branch_0x8007cd48
    addiu   $a2, $a2, 0x3
branch_0x8007cd7c:
    lw      $t4, 0x16c($sp)
    lw      $t6, 0x54($sp)
    lw      $t9, 0x48($sp)
    addiu   $t5, $t4, 0x1
    slti    $at, $t5, 0x8
    addiu   $t7, $t6, 0x18
    addiu   $t8, $t9, 0x18
    sw      $t8, 0x48($sp)
    sw      $t7, 0x54($sp)
    bnez    $at, branch_0x8007cb64
    sw      $t5, 0x16c($sp)
    lui     $s0, 0x801b
    lui     $s1, 0x801b
    lui     $s4, 0x801b
    addiu   $s4, $s4, 0xeaaa
    addiu   $s1, $s1, 0xe9ea
    addiu   $s0, $s0, 0xe7ea
    sw      $zero, 0x16c($sp)
    addiu   $s3, $sp, 0xdc
    addiu   $s2, $sp, 0x118
branch_0x8007cdcc:
    or      $a0, $s0, $zero
    jal     Function_0x8007af94
    or      $a1, $s2, $zero
    or      $a0, $s1, $zero
    jal     Function_0x8007af94
    or      $a1, $s3, $zero
    lw      $t2, 0xdc($sp)
    lw      $t3, 0x118($sp)
    or      $a0, $s2, $zero
    slt     $at, $t2, $t3
    beqz    $at, branch_0x8007ce24
    nop
    lw      $at, 0x0($s3)
    lw      $t6, 0x4($s3)
    sw      $at, 0x0($s2)
    lw      $at, 0x8($s3)
    sw      $t6, 0x4($s2)
    lw      $t6, 0xc($s3)
    sw      $at, 0x8($s2)
    lw      $at, 0x10($s3)
    sw      $t6, 0xc($s2)
    sw      $at, 0x10($s2)
branch_0x8007ce24:
    jal     Function_0x8007af18
    or      $a1, $s0, $zero
    addiu   $s1, $s1, 0x18
    sltu    $at, $s1, $s4
    bnez    $at, branch_0x8007cdcc
    addiu   $s0, $s0, 0x18
    lui     $s0, %hi(Unknown_0x801ae950)
    lui     $s1, 0x801b
    lui     $s4, 0x801b
    addiu   $s4, $s4, 0xeb78
    addiu   $s1, $s1, 0xeb50
    addiu   $s0, $s0, %lo(Unknown_0x801ae950)
    sw      $zero, 0x16c($sp)
branch_0x8007ce58:
    or      $a0, $s0, $zero
    jal     Function_0x8007b0b0
    or      $a1, $s2, $zero
    or      $a0, $s1, $zero
    jal     Function_0x8007b0b0
    or      $a1, $s3, $zero
    lw      $t7, 0xdc($sp)
    lw      $t9, 0x118($sp)
    or      $a0, $s2, $zero
    slt     $at, $t7, $t9
    beqz    $at, branch_0x8007ceb0
    nop
    lw      $at, 0x0($s3)
    lw      $t5, 0x4($s3)
    sw      $at, 0x0($s2)
    lw      $at, 0x8($s3)
    sw      $t5, 0x4($s2)
    lw      $t5, 0xc($s3)
    sw      $at, 0x8($s2)
    lw      $at, 0x10($s3)
    sw      $t5, 0xc($s2)
    sw      $at, 0x10($s2)
branch_0x8007ceb0:
    jal     Function_0x8007b03c
    or      $a1, $s0, $zero
    addiu   $s1, $s1, 0x5
    sltu    $at, $s1, $s4
    bnez    $at, branch_0x8007ce58
    addiu   $s0, $s0, 0x5
    lui     $v0, %hi(Unknown_0x801ae978)
    addiu   $s5, $sp, 0x98
    addiu   $v0, $v0, %lo(Unknown_0x801ae978)
    lui     $s7, %hi(Unknown_0x801ae778)
    addiu   $s7, $s7, %lo(Unknown_0x801ae778)
    sw      $v0, 0x48($sp)
    or      $fp, $s5, $zero
    or      $s6, $s5, $zero
    sw      $zero, 0x16c($sp)
    addiu   $s2, $sp, 0x58
branch_0x8007cef0:
    lw      $v0, 0x48($sp)
    addiu   $s0, $s7, 0x120
    addiu   $s1, $sp, 0x98
    addiu   $s3, $sp, 0x68
    addiu   $s4, $v0, 0x120
branch_0x8007cf04:
    or      $a0, $s0, $zero
    jal     Function_0x8007b1c0
    or      $a1, $s1, $zero
    or      $a0, $s4, $zero
    jal     Function_0x8007b1c0
    or      $a1, $s3, $zero
    addiu   $s3, $s3, 0x10
    sltu    $at, $s3, $fp
    addiu   $s0, $s0, 0x5
    addiu   $s1, $s1, 0x10
    bnez    $at, branch_0x8007cf04
    addiu   $s4, $s4, 0x5
    addiu   $s1, $sp, 0x98
    addiu   $s0, $sp, 0x68
branch_0x8007cf3c:
    lw      $t3, 0x0($s1)
branch_0x8007cf40:
    lw      $t4, 0x0($s0)
    bnel    $t3, $t4, branch_0x8007cf8c
    addiu   $s0, $s0, 0x10
    lw      $t6, 0x4($s1)
    lw      $t7, 0x4($s0)
    bnel    $t6, $t7, branch_0x8007cf8c
    addiu   $s0, $s0, 0x10
    lw      $t9, 0x8($s1)
    lw      $t8, 0x8($s0)
    addiu   $a0, $s1, 0xc
    addiu   $a1, $s0, 0xc
    bnel    $t9, $t8, branch_0x8007cf8c
    addiu   $s0, $s0, 0x10
    jal     Function_0x8006a16c
    addiu   $a2, $zero, 0x3
    bnezl   $v0, branch_0x8007cf8c
    addiu   $s0, $s0, 0x10
    sw      $zero, 0x0($s0)
    addiu   $s0, $s0, 0x10
branch_0x8007cf8c:
    bnel    $s0, $s5, branch_0x8007cf40
    lw      $t3, 0x0($s1)
    addiu   $s1, $s1, 0x10
    addiu   $t5, $sp, 0xc8
    sltu    $at, $s1, $t5
    bnezl   $at, branch_0x8007cf3c
    addiu   $s0, $sp, 0x68
    addiu   $s1, $sp, 0x98
    addiu   $v0, $sp, 0xc8
    addiu   $s0, $sp, 0x68
branch_0x8007cfb4:
    lw      $t2, 0x0($s1)
branch_0x8007cfb8:
    lw      $t3, 0x0($s0)
    slt     $at, $t2, $t3
    beqzl   $at, branch_0x8007d028
    addiu   $s0, $s0, 0x10
    lw      $at, 0x0($s1)
    lw      $t6, 0x4($s1)
    lw      $t9, 0x4($s0)
    sw      $at, 0x0($s2)
    lw      $at, 0x8($s1)
    sw      $t6, 0x4($s2)
    lw      $t6, 0xc($s1)
    sw      $at, 0x8($s2)
    lw      $at, 0x0($s0)
    sw      $t9, 0x4($s1)
    lw      $t9, 0xc($s0)
    sw      $at, 0x0($s1)
    lw      $at, 0x8($s0)
    lw      $t5, 0x4($s2)
    sw      $t6, 0xc($s2)
    sw      $at, 0x8($s1)
    lw      $at, 0x0($s2)
    sw      $t6, 0xc($s0)
    sw      $t9, 0xc($s1)
    sw      $at, 0x0($s0)
    lw      $at, 0x8($s2)
    sw      $t5, 0x4($s0)
    sw      $at, 0x8($s0)
    addiu   $s0, $s0, 0x10
branch_0x8007d028:
    bnel    $s0, $s6, branch_0x8007cfb8
    lw      $t2, 0x0($s1)
    addiu   $s1, $s1, 0x10
    sltu    $at, $s1, $v0
    bnezl   $at, branch_0x8007cfb4
    addiu   $s0, $sp, 0x68
    addiu   $s0, $s7, 0x120
    addiu   $s1, $sp, 0x98
branch_0x8007d048:
    or      $a0, $s1, $zero
    jal     Function_0x8007b14c
    or      $a1, $s0, $zero
    addiu   $s1, $s1, 0x10
    addiu   $t2, $sp, 0xc8
    bne     $s1, $t2, branch_0x8007d048
    addiu   $s0, $s0, 0x5
    lw      $t3, 0x48($sp)
    lui     $t6, 0x801b
    addiu   $t6, $t6, 0xe9ff
    addiu   $t4, $t3, 0xf
    sw      $t4, 0x48($sp)
    bne     $t4, $t6, branch_0x8007cef0
    addiu   $s7, $s7, 0xf
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
    addiu   $sp, $sp, 0x170

.globl Function_0x8007d0b0
Function_0x8007d0b0: # 0x8007d0b0
    addiu   $sp, $sp, 0xffc0
    sw      $ra, 0x14($sp)
    lui     $a0, %hi(Unknown_0x80153e30)
    addiu   $a0, $a0, %lo(Unknown_0x80153e30)
    jal     Function_0x800c8320
    addiu   $a1, $sp, 0x32
    lui     $a2, 0x8015
    lw      $a2, 0x4090($a2)
    lbu     $t8, 0x32($sp)
    addiu   $t6, $zero, 0x1
    sllv    $t7, $t6, $a2
    and     $t9, $t7, $t8
    bnez    $t9, branch_0x8007d0f8
    addiu   $t0, $zero, 0x1
    lui     $at, %hi(Unknown_0x800d7fe4)
    sw      $zero, %lo(Unknown_0x800d7fe4)($at)
    b       branch_0x8007d148
    addiu   $v0, $zero, 0x1
branch_0x8007d0f8:
    lui     $at, %hi(Unknown_0x800d7fe4)
    lui     $a0, %hi(Unknown_0x80153e30)
    lui     $a1, 0x801c
    sw      $t0, %lo(Unknown_0x800d7fe4)($at)
    addiu   $a1, $a1, 0x3830
    jal     Function_0x800c8650
    addiu   $a0, $a0, %lo(Unknown_0x80153e30)
    sltiu   $at, $v0, 0xc
    beqz    $at, branch_0x8007d144
    sll     $t1, $v0, 2
    lui     $at, 0x800f
    addu    $at, $at, $t1
    lw      $t1, -0x5ff8($at)
    jr      $t1
    nop

.globl Function_0x8007d134
Function_0x8007d134: # 0x8007d134
    b       branch_0x8007d148
    or      $v0, $zero, $zero

.globl Function_0x8007d13c
Function_0x8007d13c: # 0x8007d13c
    b       branch_0x8007d148
    addiu   $v0, $zero, 0x1
branch_0x8007d144:
    addiu   $v0, $zero, 0x2
branch_0x8007d148:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop

.globl Function_0x8007d158
Function_0x8007d158: # 0x8007d158
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    jal     Function_0x8007d0b0
    nop
    beqz    $v0, branch_0x8007d178
    lui     $a0, 0x801c
    b       branch_0x8007d1e0
    lw      $ra, 0x1c($sp)
branch_0x8007d178:
    lui     $t6, 0x800e
    addiu   $t6, $t6, 0x8058
    lui     $a2, 0x4e57
    lui     $a3, 0x800e
    addiu   $t7, $sp, 0x20
    sw      $t7, 0x14($sp)
    addiu   $a3, $a3, 0x8068
    ori     $a2, $a2, 0x524a
    sw      $t6, 0x10($sp)
    addiu   $a0, $a0, 0x3830
    jal     Function_0x800c87d0
    addiu   $a1, $zero, 0x1
    sltiu   $at, $v0, 0x6
    beqz    $at, branch_0x8007d1d8
    sll     $t8, $v0, 2
    lui     $at, 0x800f
    addu    $at, $at, $t8
    lw      $t8, -0x5fc8($at)
    jr      $t8
    nop

.globl Function_0x8007d1c8
Function_0x8007d1c8: # 0x8007d1c8
    b       branch_0x8007d1dc
    or      $v0, $zero, $zero

.globl Function_0x8007d1d0
Function_0x8007d1d0: # 0x8007d1d0
    b       branch_0x8007d1dc
    addiu   $v0, $zero, 0x4
branch_0x8007d1d8:
    addiu   $v0, $zero, 0x2
branch_0x8007d1dc:
    lw      $ra, 0x1c($sp)
branch_0x8007d1e0:
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x8007d1ec
Function_0x8007d1ec: # 0x8007d1ec
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    jal     Function_0x8007d0b0
    nop
    beqz    $v0, branch_0x8007d20c
    lui     $a0, 0x801c
    b       branch_0x8007d268
    lw      $ra, 0x14($sp)
branch_0x8007d20c:
    addiu   $a0, $a0, 0x3830
    jal     Function_0x800c8970
    addiu   $a1, $sp, 0x18
    sltiu   $at, $v0, 0x6
    beqz    $at, branch_0x8007d260
    sll     $t6, $v0, 2
    lui     $at, 0x800f
    addu    $at, $at, $t6
    lw      $t6, -0x5fb0($at)
    jr      $t6
    nop

.globl Function_0x8007d238
Function_0x8007d238: # 0x8007d238
    lw      $t7, 0x18($sp)
    slti    $at, $t7, 0x200
    bnez    $at, branch_0x8007d250
    nop
    b       branch_0x8007d264
    or      $v0, $zero, $zero
branch_0x8007d250:
    b       branch_0x8007d264
    addiu   $v0, $zero, 0x3

.globl Function_0x8007d258
Function_0x8007d258: # 0x8007d258
    b       branch_0x8007d264
    addiu   $v0, $zero, 0x4
branch_0x8007d260:
    addiu   $v0, $zero, 0x2
branch_0x8007d264:
    lw      $ra, 0x14($sp)
branch_0x8007d268:
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x8007d274
Function_0x8007d274: # 0x8007d274
    addiu   $sp, $sp, 0xffb8
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x48($sp)
    jal     Function_0x8007d0b0
    sw      $zero, 0x34($sp)
    beqz    $v0, branch_0x8007d298
    lui     $a0, 0x801c
    b       branch_0x8007d5a8
    lw      $ra, 0x1c($sp)
branch_0x8007d298:
    lw      $v0, 0x48($sp)
    addiu   $a0, $a0, 0x3830
    addiu   $a1, $zero, 0x1
    slti    $at, $v0, 0x80
    bnez    $at, branch_0x8007d2bc
    lui     $a2, 0x4e57
    addiu   $t6, $zero, 0x1
    addiu   $v0, $v0, 0xff80
    sw      $t6, 0x34($sp)
branch_0x8007d2bc:
    lui     $t7, 0x800e
    addiu   $t7, $t7, 0x8058
    lui     $a3, 0x800e
    addiu   $t8, $sp, 0x30
    sw      $t8, 0x14($sp)
    addiu   $a3, $a3, 0x8068
    sw      $t7, 0x10($sp)
    ori     $a2, $a2, 0x524a
    jal     Function_0x800c87d0
    sw      $v0, 0x48($sp)
    bnez    $v0, branch_0x8007d5a0
    lui     $a0, 0x801c
    lui     $t0, %hi(Unknown_0x801ae978)
    addiu   $t0, $t0, %lo(Unknown_0x801ae978)
    addiu   $t9, $zero, 0x200
    sw      $t9, 0x10($sp)
    sw      $t0, 0x14($sp)
    addiu   $a0, $a0, 0x3830
    lw      $a1, 0x30($sp)
    or      $a2, $zero, $zero
    jal     Function_0x800c8c00
    or      $a3, $zero, $zero
    sltiu   $at, $v0, 0x7
    beqz    $at, branch_0x8007d5a4
    sll     $t1, $v0, 2
    lui     $at, 0x800f
    addu    $at, $at, $t1
    lw      $t1, -0x5f98($at)
    jr      $t1
    nop

.globl Function_0x8007d334
Function_0x8007d334: # 0x8007d334
    lui     $v1, %hi(Unknown_0x801ae978)
    lui     $v0, %hi(Unknown_0x800d7fe8)
    lui     $a0, %hi(Unknown_0x800d7fea)
    addiu   $a0, $a0, %lo(Unknown_0x800d7fea)
    addiu   $v0, $v0, %lo(Unknown_0x800d7fe8)
    addiu   $v1, $v1, %lo(Unknown_0x801ae978)
branch_0x8007d34c:
    lbu     $t2, 0x0($v1)
    lbu     $t3, 0x0($v0)
    addiu   $v0, $v0, 0x1
    sltu    $at, $v0, $a0
    beq     $t2, $t3, branch_0x8007d36c
    nop
    b       branch_0x8007d5a4
    addiu   $v0, $zero, 0x6
branch_0x8007d36c:
    bnez    $at, branch_0x8007d34c
    addiu   $v1, $v1, 0x1
    lui     $a0, %hi(Unknown_0x801ae978)
    jal     Function_0x8007bb98
    addiu   $a0, $a0, %lo(Unknown_0x801ae978)
    lui     $t4, %hi(Unknown_0x801ae97a)
    lhu     $t4, %lo(Unknown_0x801ae97a)($t4)
    beq     $v0, $t4, branch_0x8007d398
    nop
    b       branch_0x8007d5a4
    addiu   $v0, $zero, 0x6
branch_0x8007d398:
    jal     Function_0x8007b8d0
    nop
    lw      $t5, 0x48($sp)
    sltiu   $at, $t5, 0x6
    beqz    $at, branch_0x8007d590
    sll     $t5, $t5, 2
    lui     $at, 0x800f
    addu    $at, $at, $t5
    lw      $t5, -0x5f7c($at)
    jr      $t5
    nop

.globl Function_0x8007d3c4
Function_0x8007d3c4: # 0x8007d3c4
    lui     $t7, %hi(Unknown_0x801ae978)
    addiu   $t7, $t7, %lo(Unknown_0x801ae978)
    lui     $t6, %hi(Unknown_0x801ae778)
    addiu   $t6, $t6, %lo(Unknown_0x801ae778)
    addiu   $t0, $t7, 0x1f8
branch_0x8007d3d8:
    lw      $at, 0x0($t7)
    addiu   $t7, $t7, 0xc
    addiu   $t6, $t6, 0xc
    sw      $at, -0xc($t6)
    lw      $at, -0x8($t7)
    sw      $at, -0x8($t6)
    lw      $at, -0x4($t7)
    bne     $t7, $t0, branch_0x8007d3d8
    sw      $at, -0x4($t6)
    lw      $at, 0x0($t7)
    lw      $t0, 0x4($t7)
    sw      $at, 0x0($t6)
    jal     Function_0x8007b5d0
    sw      $t0, 0x4($t6)
    jal     Function_0x8007bcc0
    nop
    beqz    $v0, branch_0x8007d590
    nop
    b       branch_0x8007d5a4
    addiu   $v0, $zero, 0x5

.globl Function_0x8007d428
Function_0x8007d428: # 0x8007d428
    lw      $t1, 0x34($sp)
    lw      $a3, 0x48($sp)
    lui     $t3, %hi(Unknown_0x801ae778)
    bnez    $t1, branch_0x8007d474
    addiu   $a3, $a3, 0xffff
    sll     $v0, $a3, 2
    addu    $v0, $v0, $a3
    sll     $v0, $v0, 1
    lui     $t5, %hi(Unknown_0x801ae978)
    addiu   $t5, $t5, %lo(Unknown_0x801ae978)
    addiu   $t2, $v0, 0x10
    addiu   $t4, $v0, 0x10
    addiu   $t3, $t3, %lo(Unknown_0x801ae778)
    addu    $a0, $t2, $t3
    addu    $a1, $t4, $t5
    addiu   $a2, $zero, 0xa
    jal     Function_0x8006a0e0_CopyBytes
    sw      $a3, 0x44($sp)
    lw      $a3, 0x44($sp)
branch_0x8007d474:
    lw      $t9, 0x34($sp)
    sll     $t0, $a3, 2
    subu    $t0, $t0, $a3
    sll     $t8, $t9, 2
    subu    $t8, $t8, $t9
    sll     $t8, $t8, 2
    lui     $t6, %hi(Unknown_0x801ae778)
    sll     $t1, $a3, 2
    lui     $t2, %hi(Unknown_0x801ae978)
    addiu   $t2, $t2, %lo(Unknown_0x801ae978)
    subu    $t1, $t1, $a3
    addiu   $t6, $t6, %lo(Unknown_0x801ae778)
    addu    $t7, $t8, $t0
    addu    $v1, $t7, $t6
    addu    $a0, $t1, $t2
    or      $v0, $zero, $zero
    addiu   $a1, $zero, 0x3
branch_0x8007d4b8:
    lb      $t3, 0x38($a0)
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    addiu   $a0, $a0, 0x1
    bne     $v0, $a1, branch_0x8007d4b8
    sb      $t3, 0x37($v1)
    jal     Function_0x8007b5d0
    nop
    jal     Function_0x8007c2bc
    nop
    beqz    $v0, branch_0x8007d590
    nop
    b       branch_0x8007d5a4
    addiu   $v0, $zero, 0x5

.globl Function_0x8007d4f0
Function_0x8007d4f0: # 0x8007d4f0
    jal     Function_0x8007cb08
    nop
    jal     Function_0x8007b5d0
    nop
    jal     Function_0x8007b2bc
    nop
    lui     $a0, %hi(Unknown_0x801ae778)
    jal     Function_0x8007bb98
    addiu   $a0, $a0, %lo(Unknown_0x801ae778)
    lui     $a2, %hi(Unknown_0x801ae778)
    addiu   $a2, $a2, %lo(Unknown_0x801ae778)
    sh      $v0, 0x2($a2)
    lui     $t4, %hi(Unknown_0x800d7fe0)
    lw      $t4, %lo(Unknown_0x800d7fe0)($t4)
    lui     $a0, %hi(Unknown_0x80153e30)
    addiu   $a0, $a0, %lo(Unknown_0x80153e30)
    beqz    $t4, branch_0x8007d588
    or      $a1, $zero, $zero
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x10
    beqz    $v0, branch_0x8007d550
    lui     $a2, 0x801b
    b       branch_0x8007d5a4
    addiu   $v0, $zero, 0x3
branch_0x8007d550:
    lui     $t5, %hi(Unknown_0x801ae778)
    addiu   $a2, $a2, 0xe7d8
    addiu   $t5, $t5, %lo(Unknown_0x801ae778)
    subu    $a1, $a2, $t5
    srl     $t9, $a1, 3
    lui     $a0, %hi(Unknown_0x80153e30)
    addiu   $a0, $a0, %lo(Unknown_0x80153e30)
    andi    $a1, $t9, 0xff
    jal     osEepromLongWrite
    addiu   $a3, $zero, 0x1a0
    beqz    $v0, branch_0x8007d590
    nop
    b       branch_0x8007d5a4
    addiu   $v0, $zero, 0x5
branch_0x8007d588:
    b       branch_0x8007d5a4
    addiu   $v0, $zero, 0x5
branch_0x8007d590:
    b       branch_0x8007d5a4
    or      $v0, $zero, $zero

.globl Function_0x8007d598
Function_0x8007d598: # 0x8007d598
    b       branch_0x8007d5a4
    addiu   $v0, $zero, 0x2
branch_0x8007d5a0:
    addiu   $v0, $zero, 0x4
branch_0x8007d5a4:
    lw      $ra, 0x1c($sp)
branch_0x8007d5a8:
    addiu   $sp, $sp, 0x48
    jr      $ra
    nop
