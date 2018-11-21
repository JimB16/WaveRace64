

.include "source/constants.s"
.include "source/RSP/constantsRSP.s"


# code of the RSP (0x800d2100 - 0x8c900)

.set noreorder

.section .textrsp2, "ax"


.globl Function_2_0x4001080
Function_2_0x4001080: # 0x4001080
    j       Function_0x40017e0
    addi    $sp, $zero, 0x110

.globl Function_0x4001088
Function_0x4001088: # 0x4001088
    jal     Function_0x400113c
    add     $s4, $zero, $s6
    lh      $v0, %lo(JumpTable_0x040000bc)($at)
    jr      $v0
    srl     $v0, $t9, 23
branch_2_0x400109c:
    mfc0    $v0, SP_STATUS
    andi    $v0, $v0, 0x80
    bnez    $v0, branch_0x40010c0
    lh      $s5, 0x26($zero)

.globl Function_0x40010ac
Function_0x40010ac: # 0x40010ac
    bne     $gp, $k1, Function_0x4001064
    lw      $t9, 0x0($k1)
    j       Function_0x40010c8
    lh      $ra, 0x104($zero)

.globl Function_0x40010bc
Function_0x40010bc: # 0x40010bc
    lh      $s5, 0xb6($zero)
branch_0x40010c0:
    j       Function_0x40010f0
    ori     $fp, $zero, 0x20

.globl Function_0x40010c8
Function_0x40010c8: # 0x40010c8
    addi    $gp, $zero, 0xa60
    add     $s5, $zero, $ra
    addi    $s4, $zero, 0x920
    add     $s3, $zero, $k0
    addi    $k0, $k0, 0x140
    jal     Function_0x400113c
    addi    $s2, $zero, 0x13f
    jr      $s5
    addi    $k1, $zero, 0x920

.globl Function_0x40010ec
Function_0x40010ec: # 0x40010ec
    add     $s5, $zero, $ra

.globl Function_0x40010f0
Function_0x40010f0: # 0x40010f0
    lw      $s3, 0x0($fp)
    lh      $s2, 0x4($fp)
    jal     Function_0x400113c
    lh      $s4, 0x6($fp)
    jal     Function_0x400112c
    nop
    jr      $s5

.globl Function_0x400110c
Function_0x400110c: # 0x400110c
    lw      $t3, 0xb8($zero)

.globl Function_0x4001110
Function_0x4001110: # 0x4001110
    srl     $t4, $s3, 22
    andi    $t4, $t4, 0x3c
    and     $s3, $s3, $t3
    add     $t5, $zero, $t4
    lw      $t4, 0x160($t5)
    jr      $ra
    add     $s3, $s3, $t4

.globl Function_0x400112c
Function_0x400112c: # 0x400112c
    mfc0    $t3, DMA_BUSY
    bnez    $t3, Function_0x400112c
    nop
    jr      $ra

.globl Function_0x400113c
Function_0x400113c: # 0x400113c
    add     $s1, $zero, $zero

.globl Function_0x4001140
Function_0x4001140: # 0x4001140
    mfc0    $t3, DMA_FULL
    bnez    $t3, Function_0x4001140
    nop
    mtc0    $s4, DMA_CACHE
    bgtz    $s1, branch_0x4001160
    mtc0    $s3, DMA_DRAM
    jr      $ra
    mtc0    $s2, DMA_READ_LENGTH
branch_0x4001160:
    jr      $ra
    mtc0    $s2, DMA_WRITE_LENGTH

.globl Function_0x4001168
Function_0x4001168: # 0x4001168
    add     $s5, $zero, $ra
    lw      $s3, 0x18($sp)
    addi    $s2, $s7, -0xc60
    lw      $s7, 0x44($sp)
    blez    $s2, branch_0x40011e4
    add     $s4, $s3, $s2
    sub     $s4, $s7, $s4
    bgez    $s4, branch_0x40011a8
branch_0x4001188:
    mfc0    $s4, CMD_STATUS
    andi    $s4, $s4, 0x400
    bnez    $s4, branch_0x4001188
branch_0x4001194:
    mfc0    $s7, CMD_CURRENT
    lw      $s3, 0x40($sp)
    beq     $s7, $s3, branch_0x4001194
    nop
    mtc0    $s3, CMD_START
branch_0x40011a8:
    mfc0    $s7, CMD_CURRENT
    sub     $s4, $s3, $s7
    bgez    $s4, branch_0x40011c4
    add     $s4, $s3, $s2
    sub     $s4, $s4, $s7
    bgez    $s4, branch_0x40011a8
    nop
branch_0x40011c4:
    add     $s7, $s3, $s2
    addi    $s2, $s2, -0x1
    addi    $s4, $zero, 0xc60
    jal     Function_0x4001140
    addi    $s1, $zero, 0x1
    jal     Function_0x400112c
    sw      $s7, 0x18($sp)
    mtc0    $s7, CMD_END
branch_0x40011e4:
    jr      $s5
    addi    $s7, $zero, 0xc60

.globl Function_0x40011ec
Function_0x40011ec: # 0x40011ec
    andi    $v0, $v0, 0xfe
    lh      $v0, 0x76($v0)
    jr      $v0
    lbu     $at, -0x1($k1)

.globl Function_0x40011fc
Function_0x40011fc: # 0x40011fc
    jal     Function_0x4001288
    lbu     $a0, -0x4($k1)
    sll     $a0, $a0, 3
    addi    $a0, $a0, 0x420
    lh      $a1, 0x1a($at)
    lh      $a2, 0x1a($v0)
    lh      $a3, 0x1a($v1)
    lh      $t0, 0x1a($a0)
    sub     $a1, $a1, $a3
    bgtz    $a1, branch_0x400122c
    sub     $a2, $a2, $t0
    sub     $a1, $zero, $a1
branch_0x400122c:
    bgtz    $a2, branch_0x4001238
    nop
    sub     $a2, $zero, $a2
branch_0x4001238:
    sub     $a2, $a2, $a1
    bgtz    $a2, branch_0x4001254
    addi    $a1, $at, 0x0
    addi    $at, $v0, 0x0
    addi    $v0, $v1, 0x0
    addi    $v1, $a0, 0x0
    addi    $a0, $a1, 0x0
branch_0x4001254:
    sw      $v1, 0xa60($zero)
    sw      $a0, 0xa64($zero)
    sw      $at, 0xa68($zero)
    jal     Function_0x40019e8
    addi    $fp, $ra, 0x0
    lw      $at, 0xa60($zero)
    lw      $v0, 0xa64($zero)
    j       Function_0x4001280
    lw      $v1, 0xa68($zero)

.globl Function_0x4001278
Function_0x4001278: # 0x4001278
    jal     Function_0x4001288
    nop

.globl Function_0x4001280
Function_0x4001280: # 0x4001280
    j       Function_0x40019e8
    lh      $fp, 0xbe($zero)

.globl Function_0x4001288
Function_0x4001288: # 0x4001288
    lbu     $at, -0x3($k1)
    lbu     $v0, -0x2($k1)
    lbu     $v1, -0x1($k1)
    sll     $at, $at, 3
    sll     $v0, $v0, 3
    sll     $v1, $v1, 3
    addi    $at, $at, 0x420
    addi    $v0, $v0, 0x420
    jr      $ra
    addi    $v1, $v1, 0x420

.globl Function_0x40012b0
Function_0x40012b0: # 0x40012b0
    sbv     vec31, 6, 28, sp
    lw      $s3, 0x24($sp)
    lw      $v1, 0x4c($sp)
    addi    $s4, $zero, 0x360
    sub     $v1, $v1, $s3
    addi    $v1, $v1, -0x280
    bgez    $v1, branch_2_0x400109c
    addi    $s3, $s3, -0x40
    jal     Function_0x400113c
    addi    $s2, $zero, 0x3f
    jal     Function_0x400112c
    addi    $v1, $zero, 0x3e0
    j       Function_0x40014a4
    sw      $s3, 0x24($sp)

.globl Function_0x40012e8
Function_0x40012e8: # 0x40012e8
    lbu     $at, -0x5($k1)
    lhu     $v0, -0x7($k1)
    lh      $a1, 0x30e($at)
    add     $a1, $a1, $v0
    j       branch_2_0x400109c
    sw      $t8, 0x0($a1)

.globl Function_0x4001300
Function_0x4001300: # 0x4001300
    sw      $t9, 0x10($sp)
    sw      $t8, 0x14($sp)
    lh      $v0, 0x6($sp)
    andi    $v0, $v0, 0xfffd
    andi    $v1, $t9, 0x1
    sll     $v1, $v1, 1
    or      $v0, $v0, $v1
    j       branch_2_0x400109c
    sh      $v0, 0x6($sp)

.globl Function_0x4001324
Function_0x4001324: # 0x4001324
    j       Function_0x4001330
    addi    $a3, $sp, 0x8

.globl Function_0x400132c
Function_0x400132c: # 0x400132c
    addi    $a3, $sp, 0xc

.globl Function_0x4001330
Function_0x4001330: # 0x4001330
    lw      $v1, 0x0($a3)
    addi    $t0, $zero, -0x1
    lbu     $a1, -0x5($k1)
    lbu     $a2, -0x6($k1)
    addi    $v0, $zero, 0x1
    sllv    $v0, $v0, $a1
    addi    $v0, $v0, -0x1
    sllv    $v0, $v0, $a2
    xor     $v0, $v0, $t0
    and     $v0, $v0, $v1
    or      $v1, $v0, $t8
    sw      $v1, 0x0($a3)
    lw      $t9, 0x8($sp)
    j       Function_0x4001408
    lw      $t8, 0xc($sp)

.globl Function_0x400136c
Function_0x400136c: # 0x400136c
    andi    $t9, $t9, 0x3ff
    ori     $v0, $zero, 0x7070
branch_0x4001374:
    lh      $v1, 0x444($t9)
    addi    $t9, $t9, 0x28
    bne     $t9, $t8, branch_0x4001374
    and     $v0, $v0, $v1
    beqz    $v0, branch_2_0x400109c
    lb      $v0, 0x0($sp)
    addi    $v0, $v0, -0x4
    bltz    $v0, Function_0x40010bc
    addi    $v1, $v0, 0x336
    lw      $k0, 0x0($v1)
    sb      $v0, 0x0($sp)
    j       branch_2_0x400109c
    addi    $gp, $k1, 0x0

.globl Function_0x40013a8
Function_0x40013a8: # 0x40013a8
    lw      $v0, 0x4($sp)
    or      $v0, $v0, $t8
    j       branch_2_0x400109c
    sw      $v0, 0x4($sp)

.globl Function_0x40013b8
Function_0x40013b8: # 0x40013b8
    lw      $v0, 0x4($sp)
    addi    $v1, $zero, -0x1
    xor     $v1, $v1, $t8
    and     $v0, $v0, $v1
    j       branch_2_0x400109c
    sw      $v0, 0x4($sp)

.globl Function_0x40013d0
Function_0x40013d0: # 0x40013d0
    j       branch_2_0x400109c
    sh      $t8, 0x2($sp)

.globl Function_0x40013d8
Function_0x40013d8: # 0x40013d8
    j       Function_0x40010ac
    sw      $t8, -0x4($sp)

.globl Function_0x40013e0
Function_0x40013e0: # 0x40013e0
    ori     $v0, $zero, 0x0
    j       Function_0x4001408
    lw      $t9, -0x4($sp)

.globl Function_0x40013ec
Function_0x40013ec: # 0x40013ec
    sra     $v0, $t9, 24
    addi    $v0, $v0, 0x3
    bltz    $v0, Function_0x4001408
    addi    $v0, $v0, 0x18
    jal     Function_0x400110c
    add     $s3, $t8, $zero
    add     $t8, $s3, $zero

.globl Function_0x4001408
Function_0x4001408: # 0x4001408
    sw      $t9, 0x0($s7)
    sw      $t8, 0x4($s7)
    jal     Function_0x4001168
    addi    $s7, $s7, 0x8
    bgtz    $v0, branch_2_0x400109c
    nop
    j       Function_0x40010ac
    andi    $v0, $v0, 0x1fe

.globl Function_0x4001428
Function_0x4001428: # 0x4001428
    lh      $v0, 0xc4($v0)
    jal     Function_0x400112c
    lbu     $at, -0x7($k1)
    jr      $v0
    andi    $a2, $at, 0xf

.globl Function_0x400143c
Function_0x400143c: # 0x400143c
    sbv     vec31, 6, 28, sp
    andi    $t0, $at, 0x1
    bnez    $t0, branch_0x40014b4
    andi    $a3, $at, 0x2
    addi    $s4, $zero, 0x360
    andi    $t0, $at, 0x4
    beqz    $t0, branch_0x4001480
    lqv     vec26, 0, 3, s6
    lw      $s3, 0x24($sp)
    lw      $t0, 0x4c($sp)
    addi    $s1, $zero, 0x1
    addi    $at, $s3, 0x40
    beq     $s3, $t0, branch_0x4001480
    addi    $t4, $zero, 0x3f
    jal     Function_0x4001140
    sw      $at, 0x24($sp)
    jal     Function_0x400112c
branch_0x4001480:
    lqv     vec28, 0, 1, s6
    beqz    $a3, branch_0x40014c0
    lqv     vec27, 0, 2, s6
    sqv     vec26, 0, 3, s4
    lqv     vec29, 0, 0, s6
    sqv     vec28, 0, 1, s4

.globl Function_0x4001498
Function_0x4001498: # 0x4001498
    addi    $v1, $zero, 0x3e0
    sqv     vec27, 0, 2, s4
    sqv     vec29, 0, 0, s4

.globl Function_0x40014a4
Function_0x40014a4: # 0x40014a4
    addi    $at, $zero, 0x360
    addi    $v0, $zero, 0x3a0
    j       Function_0x40014e4
    lh      $ra, 0xbe($zero)
branch_0x40014b4:
    lqv     vec26, 0, 3, s6
    j       branch_0x4001480
    addi    $s4, $zero, 0x3a0
branch_0x40014c0:
    addiu   $v1, $zero, 0xde0
    addu    $at, $zero, $s6
    jal     Function_0x40014e4
    addu    $v0, $zero, $s4
    sqv     vec6, 0, 3, s4
    sqv     vec5, 0, 1, s4
    lqv     vec27, 0, 0, v1
    j       Function_0x4001498
    lqv     vec29, 0, 126, v1

.globl Function_0x40014e4
Function_0x40014e4: # 0x40014e4
    addi    $s3, $v1, 0x10
branch_0x40014e8:
    vmudh   vec5, vec31, vec31, 8
    addi    $s2, $at, 0x8
branch_2_0x40014f0:
    ldv     vec3, 0, 0, v0
    ldv     vec4, 0, 32, v0
    lqv     vec1, 0, 0, at
    lqv     vec2, 0, 2, at
    ldv     vec3, 8, 0, v0
    ldv     vec4, 8, 32, v0
    vmadl   vec6, vec4, vec2, 4
    addi    $at, $at, 0x2
    vmadm   vec6, vec3, vec2, 4
    addi    $v0, $v0, 0x8
    vmadn   vec6, vec4, vec1, 4
    vmadh   vec5, vec3, vec1, 4
    bne     $at, $s2, branch_2_0x40014f0
    vmadn   vec6, vec31, vec31, 8
    addi    $v0, $v0, -0x20
    addi    $at, $at, 0x8
    sqv     vec5, 0, 0, v1
    sqv     vec6, 0, 2, v1
    bne     $v1, $s3, branch_0x40014e8
    addi    $v1, $v1, 0x10
    jr      $ra
    nop

.globl Function_0x4001548
Function_0x4001548: # 0x4001548
    addi    $t0, $zero, 0x320
    lqv     vec3, 0, 5, zero
    lsv     vec19, 0, 2, sp
    lh      $v1, 0x4($sp)
    ldv     vec0, 0, 0, t0
    ldv     vec1, 0, 8, t0
    ldv     vec0, 8, 0, t0
    ldv     vec1, 8, 8, t0
    jr      $ra
    vmudh   vec0, vec0, vec3, 0

.globl Function_0x4001570
Function_0x4001570: # 0x4001570
    addi    $t0, $zero, 0x3e0
    ldv     vec11, 0, 24, t0
    ldv     vec11, 8, 24, t0
    ldv     vec15, 0, 56, t0
    ldv     vec15, 8, 56, t0

.globl Function_0x4001584
Function_0x4001584: # 0x4001584
    ldv     vec8, 0, 0, t0
    ldv     vec9, 0, 8, t0
    ldv     vec10, 0, 16, t0
    ldv     vec12, 0, 32, t0
    ldv     vec13, 0, 40, t0
    ldv     vec14, 0, 48, t0
    ldv     vec8, 8, 0, t0
    ldv     vec9, 8, 8, t0
    ldv     vec10, 8, 16, t0
    ldv     vec12, 8, 32, t0
    ldv     vec13, 8, 40, t0
    jr      $ra
    ldv     vec14, 8, 48, t0

.globl Function_0x40015b8
Function_0x40015b8: # 0x40015b8
    lqv     vec0, 0, 0, s6
    lh      $a1, 0x270($at)
    j       branch_2_0x400109c
    sqv     vec0, 0, 0, a1

.globl Function_0x40015c8
Function_0x40015c8: # 0x40015c8
    lh      $t0, 0xbe($zero)
    sh      $t0, 0x106($zero)
    lbu     $a1, -0x6($k1)
    srl     $a1, $a1, 1
    addi    $t1, $a1, 0x0
    ldv     vec2, 0, 0, s6
    ldv     vec2, 8, 16, s6
    sll     $t0, $at, 3
    jal     Function_0x4001548
    addi    $a3, $t0, 0x420
    llv     vec17, 0, 20, sp
    jal     Function_0x4001570
    llv     vec17, 8, 20, sp
branch_0x40015fc:
    vmudn   vec28, vec12, vec2, 4
    llv     vec18, 0, 8, s6
    vmadh   vec28, vec8, vec2, 4
    lw      $t7, 0xc($s6)
    vmadn   vec28, vec13, vec2, 5
    lw      $s0, 0x1c($s6)
    vmadh   vec28, vec9, vec2, 5
    andi    $at, $v1, 0x2
    vmadn   vec28, vec14, vec2, 6
    vmadh   vec28, vec10, vec2, 6
    vmadn   vec28, vec15, vec31, 9
    llv     vec18, 8, 24, s6
    vmadh   vec29, vec11, vec31, 9
    bnez    $at, branch_0x40017d4
    addi    $s6, $s6, 0x20

.globl Function_0x4001638
Function_0x4001638: # 0x4001638
    vmudm   vec18, vec18, vec17, 0

.globl Function_0x400163c
Function_0x400163c: # 0x400163c
    lsv     vec21, 0, 118, zero
    vmudn   vec20, vec28, vec21, 8
    vmadh   vec21, vec29, vec21, 8
    vch     vec3, vec29, vec29, 7
    vcl     vec3, vec28, vec28, 7
    cfc2    $t5, $1
    vch     vec3, vec29, vec21, 7
    vcl     vec3, vec28, vec20, 7
    andi    $t0, $t5, 0x707
    andi    $t5, $t5, 0x7070
    sll     $t0, $t0, 4
    sll     $t5, $t5, 16
    or      $t5, $t5, $t0
    cfc2    $t6, $1
    andi    $t0, $t6, 0x707
    vmadd   vec21, vec29, vec31, 8
    andi    $t6, $t6, 0x7070
    vmadd   vec20, vec28, vec31, 8
    sll     $t6, $t6, 12
    vmudl   vec28, vec28, vec19, 8
    or      $t0, $t0, $t6
    vmadm   vec29, vec29, vec19, 8
    or      $t0, $t0, $t5
    vmadn   vec28, vec31, vec31, 8
    sh      $t0, 0x24($a3)
    jal     0x4001000
    lh      $t5, -0x1a($s6)
    vge     vec6, vec27, vec31, 8
    sdv     vec21, 0, 0, a3
    vmrg    vec6, vec27, vec30, 8
    sdv     vec20, 0, 1, a3
    vmudl   vec5, vec20, vec26, 7
    vmadm   vec5, vec21, vec26, 7
    vmadn   vec5, vec20, vec6, 7
    vmadh   vec4, vec21, vec6, 7
    addi    $t1, $t1, -0x1
    vmudl   vec5, vec5, vec19, 8
    vmadm   vec4, vec4, vec19, 8
    vmadn   vec5, vec31, vec31, 8
    andi    $t4, $v1, 0x1
    ldv     vec2, 0, 0, s6
    vmudh   vec7, vec1, vec31, 9
    ldv     vec2, 8, 16, s6
    vmadn   vec7, vec5, vec0, 0
    ldv     vec29, 0, 40, zero
    vmadh   vec6, vec4, vec0, 0
    ldv     vec29, 8, 40, zero
    vmadn   vec7, vec31, vec31, 8
    vge     vec6, vec6, vec29, 3
    sw      $t7, 0x10($a3)
    beqz    $t4, branch_0x4001734
    vlt     vec6, vec6, vec29, 2
    lqv     vec3, 0, 51, zero
    vmudn   vec5, vec5, vec3, 8
    vmadh   vec4, vec4, vec3, 8
    vmadd   vec4, vec4, vec3, 9
    vge     vec4, vec4, vec31, 8
    vlt     vec4, vec4, vec3, 10
    sbv     vec4, 5, 19, a3
    sw      $s0, 0x18($a3)
    sbv     vec4, 13, 27, a3
    lw      $s0, 0x18($a3)
branch_0x4001734:
    slv     vec18, 0, 5, a3
    sdv     vec6, 0, 3, a3
    ssv     vec7, 4, 15, a3
    ssv     vec27, 6, 16, a3
    ssv     vec26, 6, 17, a3
    blez    $t1, branch_0x400177c
    addi    $t1, $t1, -0x1
    sdv     vec21, 8, 5, a3
    sdv     vec20, 8, 6, a3
    slv     vec18, 8, 15, a3
    sw      $s0, 0x38($a3)
    sdv     vec6, 8, 8, a3
    ssv     vec7, 12, 35, a3
    ssv     vec27, 14, 36, a3
    ssv     vec26, 14, 37, a3
    sw      $t0, 0x4c($a3)
    addi    $a3, $a3, 0x50
    bgtz    $t1, branch_0x40015fc
branch_0x400177c:
    lh      $t0, 0x106($zero)
    jr      $t0
    nop

.globl Function_0x4001788
Function_0x4001788: # 0x4001788
    bgtz    $at, branch_0x40017b0
    lb      $v0, 0x0($sp)
    addi    $a0, $v0, -0x24
    bgtz    $a0, branch_2_0x400109c
    addi    $v1, $v0, 0x336
    addi    $v0, $v0, 0x4
    add     $k0, $k0, $k1
    sub     $k0, $k0, $gp
    sw      $k0, 0x0($v1)
    sb      $v0, 0x0($sp)
branch_0x40017b0:
    jal     Function_0x400110c
    add     $s3, $t8, $zero
    add     $k0, $s3, $zero
    j       branch_2_0x400109c
    addi    $gp, $k1, 0x0

.globl Function_0x40017c4
Function_0x40017c4: # 0x40017c4
    nop
branch_0x40017c8:
    ori     $fp, $zero, 0x10
    b       Function_0x40010f0
    lh      $s5, 0x100($zero)
branch_0x40017d4:
    ori     $fp, $zero, 0x18
    b       Function_0x40010f0
    lh      $s5, 0xa0($zero)

.globl Function_0x40017e0
Function_0x40017e0: # 0x40017e0
    ori     $v0, $zero, 0x2800
    mtc0    $v0, SP_STATUS

.globl Function_0x40017e8
Function_0x40017e8: # 0x40017e8
    lqv     vec31, 0, 3, zero
    lqv     vec30, 0, 4, zero
    lw      $a0, 0xfc4($zero)
    andi    $a0, $a0, 0x1
    bnez    $a0, branch_0x40018d0
    nop
    lw      $s7, 0x28($at)
    lw      $v1, 0x2c($at)
    sw      $s7, 0x40($sp)
    sw      $v1, 0x44($sp)
    mfc0    $a0, CMD_STATUS
    andi    $a0, $a0, 0x1
    bnez    $a0, branch_0x4001844
    mfc0    $a0, CMD_END
    sub     $s7, $s7, $a0
    bgtz    $s7, branch_0x4001844
    mfc0    $a1, CMD_CURRENT
    beqz    $a1, branch_0x4001844
    nop

.globl Function_0x4001834
Function_0x4001834: # 0x4001834
    beq     $a1, $a0, branch_0x4001844
    nop
    j       Function_0x4001860
    ori     $v1, $a0, 0x0
branch_0x4001844:
    mfc0    $a0, CMD_STATUS
    andi    $a0, $a0, 0x400
    bnez    $a0, branch_0x4001844
    addi    $a0, $zero, 0x1
    mtc0    $a0, CMD_STATUS
    mtc0    $v1, CMD_START
    mtc0    $v1, CMD_END

.globl Function_0x4001860
Function_0x4001860: # 0x4001860
    sw      $v1, 0x18($sp)
    addi    $s7, $zero, 0xc60
    lw      $a1, 0x10($at)
    lw      $v0, 0x8($zero)
    lw      $v1, 0x10($zero)
    lw      $a0, 0x18($zero)
    lw      $a2, 0x20($zero)
    add     $v0, $v0, $a1
    add     $v1, $v1, $a1
    add     $a0, $a0, $a1
    add     $a2, $a2, $a1
    sw      $v0, 0x8($zero)
    sw      $v1, 0x10($zero)
    sw      $a0, 0x18($zero)
    sw      $a2, 0x20($zero)
    jal     Function_0x40010ec
    addi    $fp, $zero, 0x8
    jal     Function_0x40010c8
    lw      $k0, 0x30($at)
    lw      $v0, 0x20($at)
    sw      $v0, 0x20($sp)
    sw      $v0, 0x24($sp)
    addi    $v0, $v0, 0x280
    sw      $v0, 0x4c($sp)
    lw      $v0, -0x8($zero)
    sw      $v0, 0x108($zero)
    j       0x4001058
    nop
branch_0x40018d0:
    jal     Function_0x40010ec
    addi    $fp, $zero, 0x8
    lw      $s7, 0xb70($zero)
    lw      $gp, 0xb64($zero)
    lw      $k1, 0xb68($zero)
    j       branch_2_0x400109c
    lw      $k0, 0xb6c($zero)

.globl Function_0x40018ec
Function_0x40018ec: # 0x40018ec
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
branch_0x40019b8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

.globl Function_0x40019e0
Function_0x40019e0: # 0x40019e0
    nop
    nop

.globl Function_0x40019e8
Function_0x40019e8: # 0x40019e8
    lh      $t3, 0x24($v1)
    lh      $t0, 0x24($v0)
    lh      $t1, 0x24($at)
    and     $t4, $t3, $t0
    or      $t3, $t3, $t0
    and     $t4, $t4, $t1
    andi    $t4, $t4, 0x7070
    sw      $fp, 0xa6c($zero)
    bnez    $t4, branch_0x4001ff8
    or      $t3, $t3, $t1
    andi    $t3, $t3, 0x4343
    bnez    $t3, branch_0x40017c8
    llv     vec13, 0, 24, at
    llv     vec14, 0, 24, v0
    llv     vec15, 0, 24, v1
    lw      $t5, 0x4($sp)
    addi    $t0, $zero, 0xb60
    lsv     vec21, 0, 2, sp
    lsv     vec5, 0, 6, at
    vmacu   vec10, vec14, vec13, 0
    lsv     vec6, 0, 14, at
    vmacu   vec9, vec15, vec13, 0
    lsv     vec5, 2, 6, v0
    vmacu   vec12, vec13, vec14, 0
    lsv     vec6, 2, 14, v0
    lsv     vec5, 4, 6, v1
    lsv     vec6, 4, 14, v1
    vmudh   vec16, vec9, vec10, 9
    lh      $t1, 0x1a($at)
    vsar    vec18, vec18, vec18, 9
    lh      $t2, 0x1a($v0)
    vsar    vec17, vec17, vec17, 8
    lh      $t3, 0x1a($v1)
    vmudh   vec16, vec12, vec9, 9
    vsar    vec20, vec20, vec20, 9
    andi    $t7, $t5, 0x2000
    vsar    vec19, vec19, vec19, 8
    addi    $t4, $zero, 0x0

.globl Function_0x4001a80
Function_0x4001a80: # 0x4001a80
    slt     $a3, $t2, $t1
    blez    $a3, branch_0x4001aa8
    add     $a3, $t2, $zero
    add     $t2, $t1, $zero
    add     $t1, $a3, $zero
    addu    $a3, $v0, $zero
    addu    $v0, $at, $zero
    addu    $at, $a3, $zero
    xori    $t4, $t4, 0x1
    nop
branch_0x4001aa8:
    vaddc   vec28, vec18, vec20, 0
    slt     $a3, $t3, $t2
    vmadd   vec29, vec17, vec19, 0
    blez    $a3, branch_2_0x4001ad8
    add     $a3, $t3, $zero
    add     $t3, $t2, $zero
    add     $t2, $a3, $zero
    addu    $a3, $v1, $zero
    addu    $v1, $v0, $zero
    addu    $v0, $a3, $zero
    j       Function_0x4001a80
    xori    $t4, $t4, 0x1
branch_2_0x4001ad8:
    vlt     vec27, vec29, vec31, 8
    llv     vec15, 0, 24, v1
    vor     vec26, vec29, vec28, 0
    llv     vec14, 0, 24, v0
    llv     vec13, 0, 24, at
    blez    $t4, branch_0x4001b00
    vmacu   vec4, vec15, vec14, 0
    vmudn   vec28, vec28, vec31, 11
    vmadh   vec29, vec29, vec31, 11
    vmadn   vec28, vec31, vec31, 8
branch_0x4001b00:
    vmacu   vec10, vec14, vec13, 0
    mfc2_   s1, vec27, 0
    vmacu   vec9, vec15, vec13, 0
    mfc2_   s0, vec26, 0
    sra     $s1, $s1, 31
    vmov    vec29, 11, vec29, 8
    and     $t7, $t7, $s1
    vmov    vec28, 11, vec28, 8
    vmov    vec4, 10, vec10, 8
    beqz    $s0, branch_0x4001ff8
    vlt     vec27, vec29, vec31, 8
    vmov    vec4, 11, vec10, 9
    vmov    vec4, 12, vec9, 8
    bgtz    $t7, branch_0x4001ff8
    vmov    vec4, 13, vec9, 9
    mfc2_   a3, vec27, 0
    jal     0x4001000
    addi    $a2, $zero, 0x80
    bltz    $a3, branch_0x4001b54
    lb      $a1, 0x7($sp)
    addi    $a2, $zero, 0x0
branch_0x4001b54:
    vmudm   vec9, vec4, vec31, 12
    vmadn   vec10, vec31, vec31, 8
    vrcp    vec8, 9, vec4, 9
    vrcph   vec7, 9, vec31, 8
    ori     $a1, $a1, 0xc8
    lb      $a3, 0x12($sp)
    vrcp    vec8, 11, vec4, 11
    vrcph   vec7, 11, vec31, 8
    vrcp    vec8, 13, vec4, 13
    vrcph   vec7, 13, vec31, 8
    or      $a2, $a2, $a3
    vmudl   vec8, vec8, vec30, 12
    sb      $a1, 0x0($s7)
    vmadm   vec7, vec7, vec30, 12
    sb      $a2, 0x1($s7)
    vmadn   vec8, vec31, vec31, 8
    vmudh   vec4, vec4, vec31, 13
    lsv     vec12, 0, 24, v0
    vmudl   vec6, vec6, vec21, 8
    lsv     vec12, 4, 24, at
    vmadm   vec5, vec5, vec21, 8
    lsv     vec12, 8, 24, at
    vmadn   vec6, vec31, vec31, 8
    sll     $a3, $t1, 14
    vmudl   vec1, vec8, vec10, 2
    vmadm   vec1, vec7, vec10, 2
    vmadn   vec1, vec8, vec9, 2
    vmadh   vec0, vec7, vec9, 2
    mtc2_   a3, vec2, 0
    vmadn   vec1, vec31, vec31, 8
    sw      $v1, 0x0($t0)
    vmudl   vec8, vec8, vec31, 12
    vmadm   vec7, vec7, vec31, 12
branch_0x4001bd8:
    vmadn   vec8, vec31, vec31, 8
    vmudl   vec1, vec1, vec31, 12
    vmadm   vec0, vec0, vec31, 12
    vmadn   vec1, vec31, vec31, 8
    sh      $t3, 0x2($s7)
    vand    vec16, vec1, vec30, 9
    sh      $t1, 0x6($s7)
    vmudm   vec12, vec12, vec31, 12
    sw      $v0, 0x4($t0)
    vmadn   vec13, vec31, vec31, 8
    sw      $at, 0x8($t0)
    sh      $t2, 0x4($s7)
    vcr     vec0, vec0, vec30, 14
    ssv     vec12, 0, 4, s7
    vmudl   vec11, vec16, vec2, 8
    ssv     vec13, 0, 5, s7
    vmadm   vec10, vec0, vec2, 8
    ssv     vec0, 2, 6, s7
    vmadn   vec11, vec31, vec31, 8
    ssv     vec1, 2, 7, s7
    andi    $a3, $a1, 0x2
    addi    $t7, $t0, 0x8
    addi    $s0, $t0, 0x10
    vsubc   vec3, vec13, vec11, 3
    ssv     vec0, 10, 10, s7
    vmacu   vec9, vec12, vec10, 3
    ssv     vec1, 10, 11, s7
    vsubc   vec21, vec6, vec6, 9
    ssv     vec0, 6, 14, s7
    vlt     vec19, vec5, vec5, 9
    ssv     vec1, 6, 15, s7
    vmrg    vec20, vec6, vec6, 9
    ssv     vec9, 8, 8, s7
    vsubc   vec21, vec20, vec6, 10
    ssv     vec3, 8, 9, s7
    vlt     vec19, vec19, vec5, 10
    ssv     vec9, 4, 12, s7
    vmrg    vec20, vec20, vec6, 10
    ssv     vec3, 4, 13, s7
    addi    $s7, $s7, 0x20
    blez    $a3, branch_0x4001d40
    vmudl   vec20, vec20, vec30, 13
    lw      $t6, 0x0($t7)
    vmadm   vec19, vec19, vec30, 13
    lw      $s1, -0x4($t7)
    vmadn   vec20, vec31, vec31, 8
    lw      $s2, -0x8($t7)
    llv     vec9, 0, 20, t6
    llv     vec9, 8, 20, s1
    llv     vec22, 0, 20, s2
    lsv     vec11, 0, 34, t6
    lsv     vec12, 0, 32, t6
    lsv     vec11, 8, 34, s1
    vmov    vec9, 10, vec30, 8
    lsv     vec12, 8, 32, s1
    vmov    vec9, 14, vec30, 8
    lsv     vec24, 0, 34, s2
    vmov    vec22, 10, vec30, 8
    lsv     vec25, 0, 32, s2
    vmudl   vec6, vec11, vec20, 8
    vmadm   vec6, vec12, vec20, 8
    ssv     vec19, 0, 34, t0
    vmadn   vec6, vec11, vec19, 8
    ssv     vec20, 0, 38, t0
    vmadh   vec5, vec12, vec19, 8
    vmudl   vec16, vec24, vec20, 8
    vmadm   vec16, vec25, vec20, 8
    vmadn   vec20, vec24, vec19, 8
    vmadh   vec19, vec25, vec19, 8
    vmudm   vec16, vec9, vec6, 4
    vmadh   vec9, vec9, vec5, 4
    vmadn   vec10, vec31, vec31, 8
    vmudm   vec16, vec22, vec20, 8
    vmadh   vec22, vec22, vec19, 8
    vmadn   vec23, vec31, vec31, 8
    sdv     vec9, 8, 2, s0
    sdv     vec10, 8, 3, s0
    sdv     vec9, 0, 0, s0
    sdv     vec10, 0, 1, s0
    sdv     vec22, 0, 4, s0
    sdv     vec23, 0, 5, s0
    vabs    vec9, vec9, vec9, 0
    llv     vec19, 0, 16, s0
    vabs    vec22, vec22, vec22, 0
    llv     vec20, 0, 24, s0
    vabs    vec19, vec19, vec19, 0
    vge     vec17, vec9, vec22, 0
    vmrg    vec18, vec10, vec23, 0
    vge     vec17, vec17, vec19, 0
    vmrg    vec18, vec18, vec20, 0
branch_0x4001d40:
    slv     vec17, 0, 16, t0
    slv     vec18, 0, 18, t0
    andi    $a3, $a1, 0x7
    blez    $a3, branch_0x4001ff4
    vxor    vec18, vec31, vec31, 0
    luv     vec25, 0, 2, v1
    vmadd   vec16, vec18, vec30, 13
    luv     vec15, 0, 2, at
    vmadd   vec24, vec18, vec30, 13
    vmadd   vec5, vec18, vec30, 13
    luv     vec23, 0, 2, v0
    vmudm   vec25, vec25, vec31, 15
    vmudm   vec15, vec15, vec31, 15
    vmudm   vec23, vec23, vec31, 15
    ldv     vec16, 8, 24, t0
    ldv     vec15, 8, 16, t0
    ldv     vec24, 8, 40, t0
    ldv     vec23, 8, 32, t0
    ldv     vec5, 8, 56, t0
    ldv     vec25, 8, 48, t0
    lsv     vec16, 14, 30, at
    lsv     vec15, 14, 28, at
    lsv     vec24, 14, 30, v0
    lsv     vec23, 14, 28, v0
    lsv     vec5, 14, 30, v1
    lsv     vec25, 14, 28, v1
    vsubc   vec12, vec24, vec16, 0
    vmacu   vec11, vec23, vec15, 0
    vsubc   vec20, vec16, vec5, 0
    vmacu   vec19, vec15, vec25, 0
    vsubc   vec10, vec5, vec16, 0
    vmacu   vec9, vec25, vec15, 0
    vsubc   vec22, vec16, vec24, 0
    vmacu   vec21, vec15, vec23, 0
    vmudn   vec6, vec10, vec4, 11
    vmadh   vec6, vec9, vec4, 11
    vmadn   vec6, vec22, vec4, 13
    vmadh   vec6, vec21, vec4, 13
    vsar    vec9, vec9, vec9, 8
    vsar    vec10, vec10, vec10, 9
    vmudn   vec6, vec12, vec4, 12
    vmadh   vec6, vec11, vec4, 12
    vmadn   vec6, vec20, vec4, 10
    vmadh   vec6, vec19, vec4, 10
    vsar    vec11, vec11, vec11, 8
    vsar    vec12, vec12, vec12, 9
    vmudl   vec6, vec10, vec26, 11
    vmadm   vec6, vec9, vec26, 11
    vmadn   vec10, vec10, vec27, 11
    vmadh   vec9, vec9, vec27, 11
    vmudl   vec6, vec12, vec26, 11
    vmadm   vec6, vec11, vec26, 11
    vmadn   vec12, vec12, vec27, 11
    sdv     vec9, 0, 1, s7
    vmadh   vec11, vec11, vec27, 11
    sdv     vec10, 0, 3, s7
    vmudn   vec6, vec12, vec31, 9
    vmadh   vec6, vec11, vec31, 9
    vmadl   vec6, vec10, vec1, 13
    vmadm   vec6, vec9, vec1, 13
    vmadn   vec14, vec10, vec0, 13
    sdv     vec11, 0, 5, s7
    vmadh   vec13, vec9, vec0, 13
    sdv     vec12, 0, 7, s7
    vmudl   vec28, vec14, vec2, 8
    sdv     vec13, 0, 4, s7
    vmadm   vec6, vec13, vec2, 8
    sdv     vec14, 0, 6, s7
    vmadn   vec28, vec31, vec31, 8
    vsubc   vec18, vec16, vec28, 0
    vmacu   vec17, vec15, vec6, 0
    andi    $a3, $a1, 0x2
    addi    $s7, $s7, 0x40
    sdv     vec17, 0, 120, s7
    sdv     vec18, 0, 122, s7
    blez    $a3, branch_0x4001f70
    andi    $a3, $a1, 0x1
    addi    $s0, $zero, 0x800
    mtc2_   s0, vec19, 0
    vabs    vec24, vec9, vec9, 0
    ldv     vec20, 8, 64, t0
    vabs    vec25, vec11, vec11, 0
    ldv     vec21, 8, 72, t0
    vmudm   vec24, vec24, vec19, 8
    vmadn   vec26, vec31, vec31, 8
    vmudm   vec25, vec25, vec19, 8
    vmadn   vec27, vec31, vec31, 8
    vmudl   vec21, vec21, vec19, 8
    vmadm   vec20, vec20, vec19, 8
    vmadn   vec21, vec31, vec31, 8
    vmudn   vec26, vec26, vec31, 10
    vmadh   vec24, vec24, vec31, 10
    vmadn   vec26, vec31, vec31, 8
    vmadn   vec23, vec27, vec31, 9
    vmadh   vec22, vec25, vec31, 9
    addi    $s0, $zero, 0x40
    vmadn   vec6, vec21, vec31, 9
    mtc2_   s0, vec19, 0
    vmadh   vec5, vec20, vec31, 9
    vsubc   vec23, vec6, vec6, 13
    vge     vec5, vec5, vec5, 13
    vmrg    vec6, vec6, vec6, 13
    vsubc   vec23, vec6, vec6, 14
    vge     vec5, vec5, vec5, 14
    vmrg    vec6, vec6, vec6, 14
    vmudl   vec6, vec6, vec19, 8
    vmadm   vec5, vec5, vec19, 8
    vmadn   vec6, vec31, vec31, 8
    vrcph   vec23, 8, vec5, 12
    vrcpl   vec6, 8, vec6, 12
    vrcph   vec5, 8, vec31, 8
    vmudn   vec6, vec6, vec31, 10
    vmadh   vec5, vec5, vec31, 10
    vlt     vec5, vec5, vec31, 9
    vmrg    vec6, vec6, vec31, 8
    vmudl   vec20, vec18, vec6, 8
    vmadm   vec20, vec17, vec6, 8
    vmadn   vec20, vec18, vec5, 8
    vmadh   vec19, vec17, vec5, 8
    vmudl   vec22, vec10, vec6, 8
    vmadm   vec22, vec9, vec6, 8
    vmadn   vec22, vec10, vec5, 8
    sdv     vec19, 8, 0, s7
    vmadh   vec21, vec9, vec5, 8
    sdv     vec20, 8, 2, s7
    vmudl   vec24, vec12, vec6, 8
    vmadm   vec24, vec11, vec6, 8
    vmadn   vec24, vec12, vec5, 8
    sdv     vec21, 8, 1, s7
    vmadh   vec23, vec11, vec5, 8
    sdv     vec22, 8, 3, s7
    vmudl   vec26, vec14, vec6, 8
    vmadm   vec26, vec13, vec6, 8
    vmadn   vec26, vec14, vec5, 8
    sdv     vec23, 8, 5, s7
    vmadh   vec25, vec13, vec5, 8
    sdv     vec24, 8, 7, s7
    addi    $s7, $s7, 0x40
    sdv     vec25, 8, 124, s7
    sdv     vec26, 8, 126, s7
branch_0x4001f70:
    blez    $a3, branch_0x4001ff4
    vmudn   vec14, vec14, vec30, 12
    vmadh   vec13, vec13, vec30, 12
    vmadn   vec14, vec31, vec31, 8
    vmudn   vec16, vec16, vec30, 12
    vmadh   vec15, vec15, vec30, 12
    vmadn   vec16, vec31, vec31, 8
    ssv     vec13, 14, 4, s7
    vmudn   vec10, vec10, vec30, 12
    ssv     vec14, 14, 5, s7
    vmadh   vec9, vec9, vec30, 12
    vmadn   vec10, vec31, vec31, 8
    vmudn   vec12, vec12, vec30, 12
    vmadh   vec11, vec11, vec30, 12
    vmadn   vec12, vec31, vec31, 8
    lbu     $a3, 0x11($sp)
    sub     $a3, $zero, $a3
    beqz    $a3, branch_0x4001fc4
    mtc2_   a3, vec6, 0
    vch     vec11, vec11, vec6, 8
    vcl     vec12, vec12, vec31, 8
branch_0x4001fc4:
    ssv     vec9, 14, 2, s7
    vmudl   vec28, vec14, vec2, 8
    ssv     vec10, 14, 3, s7
    vmadm   vec6, vec13, vec2, 8
    ssv     vec11, 14, 6, s7
    vmadn   vec28, vec31, vec31, 8
    ssv     vec12, 14, 7, s7
    vsubc   vec18, vec16, vec28, 0
    vmacu   vec17, vec15, vec6, 0
    addi    $s7, $s7, 0x10
    ssv     vec17, 14, 120, s7
    ssv     vec18, 14, 121, s7
branch_0x4001ff4:
    jal     Function_0x4001168
branch_0x4001ff8:
    nop
    jr      $fp
    nop

.globl Function_0x4002004
Function_0x4002004: # 0x4002004
    nop
    vrcph   vec27, 11, vec29, 11
    vrcpl   vec26, 11, vec28, 11
    vrcph   vec27, 11, vec29, 15
    vrcpl   vec26, 15, vec28, 15
    vrcph   vec27, 15, vec31, 8
    vmudn   vec26, vec26, vec31, 10
    vmadh   vec27, vec27, vec31, 10
    vmadn   vec26, vec31, vec31, 8
    lqv     vec23, 0, 6, zero
    vxor    vec22, vec31, vec31, 0
    vmudl   vec24, vec26, vec28, 0
    vmadm   vec24, vec27, vec28, 0
    vmadn   vec24, vec26, vec29, 0
    vmadh   vec25, vec27, vec29, 0
    vsubc   vec24, vec22, vec24, 0
    vmacu   vec25, vec23, vec25, 0
    vmudl   vec22, vec26, vec24, 0
    vmadm   vec23, vec27, vec24, 0
    vmadn   vec26, vec26, vec25, 0
    vmadh   vec27, vec27, vec25, 0
    jr      $ra
    nop

.globl Function_0x4002060
Function_0x4002060: # 0x4002060
    jal     Function_0x400112c
    addi    $k1, $zero, 0x920
    lw      $t9, 0x0($k1)
    lw      $t8, 0x4($k1)
    srl     $at, $t9, 29
    andi    $at, $at, 0x6
    addi    $k1, $k1, 0x8
    bgtz    $at, branch_0x4002098
    andi    $s2, $t9, 0x1ff
    addi    $s6, $zero, 0xa60
    jal     Function_0x400110c
    add     $s3, $t8, $zero
    b       branch_0x40020ac
    sh      $ra, 0x158($zero)
branch_0x4002098:
    nop
    nop
    ori     $fp, $zero, 0x18
    b       branch_0x40019b8
    lh      $s5, 0xa0($zero)
branch_0x40020ac:
    sh      $v1, 0xbc0($zero)
    sh      $v0, 0xbc2($zero)
    sh      $at, 0xbc4($zero)
    sh      $zero, 0xbc6($zero)
    ori     $a3, $zero, 0xdb8
    ori     $fp, $zero, 0xbc0
    ori     $a2, $zero, 0xc
    or      $a1, $fp, $fp
    xori    $fp, $fp, 0x14
branch_0x40020d0:
    beqz    $a2, branch_0x400227c
    lh      $t3, 0xa6($a2)
    addi    $a2, $a2, -0x2
    ori     $s1, $zero, 0x0
    or      $s2, $zero, $zero
    ori     $v0, $a1, 0x0
    j       Function_0x4001834
    addi    $t6, $fp, 0x2

.globl Function_0x40020f0
Function_0x40020f0: # 0x40020f0
    and     $t0, $t0, $t3
    beq     $t0, $s2, branch_0x400212c
    addi    $v0, $v0, 0x2
    or      $s4, $t2, $zero
    sh      $t2, 0x0($t6)
    addi    $t6, $t6, 0x2
branch_0x4002108:
    lh      $t2, 0x0($v0)
    bnez    $t2, Function_0x40020f0
    lh      $t0, 0x24($t2)
    addi    $t0, $s1, -0x2
    bgtz    $t0, branch_0x4002108
    ori     $v0, $a1, 0x0
branch_0x4002120:
    beqz    $t0, branch_0x40020d0
    nop
    j       Function_0x40019e0
branch_0x400212c:
    xor     $s2, $s2, $t3
    lh      $t0, 0xf6($s1)
    addi    $s1, $s1, 0x2
    jr      $t0
    lh      $t0, 0x102($zero)

.globl Function_0x4002140
Function_0x4002140: # 0x4002140
    mtc2_   t2, vec13, 0
    or      $t2, $s4, $zero
    mfc2_   s4, vec13, 0
    ori     $t6, $fp, 0x0
    lh      $t0, 0xf8($zero)
    sh      $t0, 0x106($zero)
    addi    $a3, $a3, 0x28
    sh      $a3, 0x0($t6)
    sh      $zero, 0x2($t6)
    ldv     vec9, 0, 0, t2
    ldv     vec10, 0, 8, t2
    ldv     vec4, 0, 0, s4
    ldv     vec5, 0, 8, s4
    sll     $t0, $a2, 2
    ldv     vec1, 0, 112, t0
    vmudh   vec0, vec1, vec31, 11
    vmudn   vec12, vec5, vec1, 0
    vmadh   vec11, vec4, vec1, 0
    vmadn   vec12, vec31, vec31, 8
    vmadn   vec28, vec10, vec0, 0
    vmadh   vec29, vec9, vec0, 0
    vmadn   vec28, vec31, vec31, 8
    vaddc   vec26, vec28, vec28, 2
    vmadd   vec27, vec29, vec29, 2
    vaddc   vec28, vec26, vec26, 5
    vmadd   vec29, vec27, vec27, 5
    mfc2_   t0, vec29, 6
    vrcph   vec7, 11, vec29, 11
    vrcpl   vec3, 11, vec28, 11
    vrcph   vec7, 11, vec31, 8
    vmudn   vec3, vec3, vec31, 10
    bgez    $t0, branch_0x40021cc
    vmadh   vec7, vec7, vec31, 10
    vmudn   vec3, vec3, vec31, 11
    vmadh   vec7, vec7, vec31, 11
branch_0x40021cc:
    veq     vec7, vec7, vec31, 8
    vmrg    vec3, vec3, vec31, 11
    vmudl   vec28, vec28, vec3, 11
    vmadm   vec29, vec29, vec3, 11
    jal     0x4001000
    vmadn   vec28, vec31, vec31, 8
    vaddc   vec28, vec12, vec12, 2
    vmadd   vec29, vec11, vec11, 2
    vaddc   vec12, vec28, vec28, 5
    vmadd   vec11, vec29, vec29, 5
    vmudl   vec15, vec12, vec26, 0
    vmadm   vec15, vec11, vec26, 0
    vmadn   vec15, vec12, vec27, 0
    vmadh   vec8, vec11, vec27, 0
    vmudl   vec28, vec31, vec31, 13
    vmadl   vec15, vec15, vec3, 11
    vmadm   vec8, vec8, vec3, 11
    vmadn   vec15, vec31, vec31, 8
    veq     vec8, vec8, vec31, 8
    vmrg    vec15, vec15, vec31, 11
    vne     vec15, vec15, vec31, 8
    vmrg    vec15, vec15, vec31, 9
    vnxor    vec8, vec15, vec31, 8
    vaddc   vec8, vec8, vec31, 9
    vmadd   vec29, vec29, vec29, 0
    vmudl   vec28, vec5, vec8, 7
    vmadm   vec29, vec4, vec8, 7
    vmadl   vec28, vec10, vec15, 7
    vmadm   vec29, vec9, vec15, 7
    vmadn   vec28, vec31, vec31, 8
    luv     vec12, 0, 2, t2
    luv     vec11, 0, 2, s4
    llv     vec12, 8, 20, t2
    llv     vec11, 8, 20, s4
    vmudm   vec18, vec12, vec15, 11
    vmadm   vec18, vec11, vec8, 11
    suv     vec18, 0, 0, a3
    sdv     vec18, 8, 1, a3
    ldv     vec18, 0, 8, a3
    jal     Function_0x4001548
    lw      $t7, 0x0($a3)
    mfc2_   t2, vec13, 0
    j       Function_0x400163c
    ori     $t1, $zero, 0x1
branch_0x400227c:
    lh      $t0, 0x0($a1)
    sh      $t0, 0xb4($zero)
    sh      $a1, 0x106($zero)
    lh      $fp, 0xfe($zero)
    lh      $t0, 0x106($zero)
    lh      $v1, 0xb4($zero)
    lh      $v0, 0x2($t0)
    lh      $at, 0x4($t0)
    addi    $t0, $t0, 0x2
    bnez    $at, branch_0x40022e0
    sh      $t0, 0x106($zero)
    lw      $fp, 0xa6c($zero)
    jr      $fp
    ori     $fp, $zero, 0x10

.globl Function_0x40022b4
Function_0x40022b4: # 0x40022b4
    b       branch_0x4001bd8
    lh      $s5, 0x100($zero)

.globl Function_0x40022bc
Function_0x40022bc: # 0x40022bc
    lw      $at, 0x12c($zero)
    sw      $t7, 0x0($a3)
    sw      $s0, 0x4($a3)
    bltz    $at, branch_0x4002354
    lpv     vec4, 0, 0, a3
    luv     vec7, 0, 58, at
    vxor    vec27, vec27, vec27, 0
branch_0x40022d8:
    vge     vec7, vec7, vec31, 8
    lpv     vec5, 0, 56, at
branch_0x40022e0:
    vmadd   vec27, vec27, vec7, 0
    luv     vec7, 0, 54, at
    vor     vec20, vec6, vec31, 8
    vmulf   vec6, vec4, vec5, 0
    vmadd   vec3, vec6, vec6, 3
    vmadd   vec6, vec3, vec6, 6
    vmulf   vec7, vec7, vec6, 4
    bgtz    $at, branch_0x40022d8
    addi    $at, $at, -0x20
    suv     vec27, 0, 0, a3
    andi    $t0, $v1, 0x4
    sb      $t7, 0x3($a3)
    sb      $s0, 0x7($a3)
    lw      $t7, 0x0($a3)
    beqz    $t0, branch_0x4002120
    lw      $s0, 0x4($a3)
    andi    $t0, $v1, 0x8
    lpv     vec7, 0, 18, sp
    ldv     vec6, 0, 160, zero
    vmadn   vec20, vec7, vec20, 4
    beqz    $t0, branch_0x400234c
    vmadm   vec18, vec31, vec31, 8
    vmulf   vec7, vec18, vec18, 0
    vmulf   vec7, vec7, vec18, 0
    vmulf   vec20, vec7, vec6, 9
    vmacf   vec20, vec7, vec6, 11
    vmacf   vec18, vec18, vec6, 10
branch_0x400234c:
    j       Function_0x4001638
    vmadd   vec18, vec18, vec31, 12
branch_0x4002354:
    andi    $at, $at, 0xfff
    sw      $at, 0x12c($zero)
    jal     Function_0x4001584
    addi    $t0, $zero, 0x360
    ori     $t0, $zero, 0xde0
    stv     vec8, 2, 1, t0
    stv     vec8, 4, 2, t0
    stv     vec8, 12, 3, t0
    stv     vec8, 14, 4, t0
    ltv     vec8, 14, 1, t0
    ltv     vec8, 12, 2, t0
    ltv     vec8, 4, 3, t0
    ltv     vec8, 2, 4, t0
    sdv     vec12, 8, 2, t0
    sdv     vec13, 8, 4, t0
    sdv     vec14, 8, 6, t0
    ldv     vec12, 0, 16, t0
    ldv     vec13, 0, 32, t0
    ldv     vec14, 0, 48, t0
branch_0x40023a0:
    lpv     vec5, 0, 55, at
    vmulf   vec5, vec5, vec31, 12
    vmudn   vec6, vec12, vec5, 4
    vmadn   vec6, vec13, vec5, 5
    vmadn   vec6, vec14, vec5, 6
    vmadm   vec3, vec31, vec31, 8
    vmudm   vec6, vec3, vec31, 10
    vmacf   vec3, vec8, vec5, 4
    vmacf   vec3, vec9, vec5, 5
    vmacf   vec3, vec10, vec5, 6
    vmadn   vec6, vec31, vec31, 8
    vmudl   vec5, vec6, vec6, 0
    vmadm   vec5, vec3, vec6, 0
    vmadn   vec5, vec6, vec3, 0
    vmadh   vec26, vec3, vec3, 0
    vaddc   vec7, vec5, vec5, 3
    vmadd   vec4, vec26, vec26, 3
    vaddc   vec7, vec5, vec7, 4
    vmadd   vec4, vec26, vec4, 4
    vrsqh   vec11, 8, vec4, 10
    vrsql   vec15, 8, vec7, 10
    vrsqh   vec11, 8, vec31, 8
    vmudl   vec15, vec15, vec30, 11
    vmadm   vec11, vec11, vec30, 11
    vmadn   vec15, vec31, vec31, 8
    vmudl   vec7, vec6, vec15, 8
    vmadm   vec7, vec3, vec15, 8
    vmadn   vec7, vec6, vec11, 8
    vmadh   vec4, vec3, vec11, 8
    vmadn   vec7, vec31, vec31, 8
    ldv     vec2, 0, 248, sp
    vge     vec7, vec7, vec2, 8
    vlt     vec7, vec7, vec2, 9
    vmudn   vec7, vec7, vec2, 10
    spv     vec7, 0, 56, at
    lw      $t0, 0x1c0($at)
    sw      $t0, 0x1c4($at)
    bgtz    $at, branch_0x40023a0
    addi    $at, $at, -0x20
    j       Function_0x4001570
    lh      $ra, 0xa0($zero)

.globl Function_0x4002444
Function_0x4002444: # 0x4002444
    nop
    j       Function_0x40017e8
    nop

.globl Function_0x4002450
Function_0x4002450: # 0x4002450
    nop
    jal     Function_0x400112c
    ori     $v0, $zero, 0x4000
    mtc0    $v0, SP_STATUS
    break   0x0
    nop
    ori     $v0, $zero, 0x1000
    sw      $gp, 0xb64($zero)
    sw      $k1, 0xb68($zero)
    sw      $k0, 0xb6c($zero)
    sw      $s7, 0xb70($zero)
    lw      $s3, 0x108($zero)
    ori     $s4, $zero, 0x0
    ori     $s2, $zero, 0xb7f
    jal     Function_0x4001140
    ori     $s1, $zero, 0x1
    jal     Function_0x400112c
    nop
    j       Function_0x40010bc
    mtc0    $v0, SP_STATUS

.globl Function_0x40024a0
Function_0x40024a0: # 0x40024a0
    nop
    nop
    addiu   $zero, $zero, 0xbeef
    nop
