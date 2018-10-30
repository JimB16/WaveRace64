

.include "source/constants.s"

.section .text0, "ax"

.set noreorder


.globl _start
_start:


# ROM HEADER
.byte 0x80, 0x37, 0x12, 0x40
.word 0xf # ClockRate
.word 0x80046800 # Program Counter (PC)
.word 0x1444 # Release
.word 0x7DE11F53 # CRC1
.word 0x74872F9D # CRC2
.word 0x0, 0x0 # Unknown
.ascii "WAVE RACE 64        " # Image name
.word 0x0 # Unknown
.word 0x4E # Manufacturer ID
.hword 0x5752 # Cartridge ID
.hword 0x4500 # Country code



.globl Function_0x84000040
Function_0x84000040: # 0x84000040
    mtc0    $0, $13
    mtc0    $0, $9
    mtc0    $0, $11
    lui     $t0, %hi(RI_BASE_REG)
    addiu   $t0, $t0, %lo(RI_BASE_REG)
    lw      $t1, %lo(RI_SELECT_REG)($t0)
    bnez    $t1, branch_0x84000410
    nop
    addiu   $sp, $sp, 0xffe8
    sw      $s3, 0x0($sp)
    sw      $s4, 0x4($sp)
    sw      $s5, 0x8($sp)
    sw      $s6, 0xc($sp)
    sw      $s7, 0x10($sp)
    lui     $t0, %hi(RI_BASE_REG)
    addiu   $t0, $t0, %lo(RI_BASE_REG)
    lui     $t2, %hi(0xa3f80000)
    lui     $t3, %hi(0xa3f00000)
    lui     $t4, %hi(MI_INIT_MODE_REG)
    addiu   $t4, $t4, %lo(MI_INIT_MODE_REG)
    ori     $t1, $zero, 0x40
    sw      $t1, %lo(RI_CONFIG_REG)($t0)

    addiu   $s1, $zero, 0x1f40
branch_0x8400009c:
    nop
    addi    $s1, $s1, -0x1
    bnez    $s1, branch_0x8400009c
    nop

    sw      $zero, %lo(RI_CURRENT_LOAD_REG)($t0)
    ori     $t1, $zero, 0x14
    sw      $t1, %lo(RI_SELECT_REG)($t0)
    sw      $zero, %lo(RI_MODE_REG)($t0)

    addiu   $s1, $zero, 0x4
branch_0x840000c0:
    nop
    addi    $s1, $s1, -0x1
    bnez    $s1, branch_0x840000c0
    nop

    ori     $t1, $zero, 0xe
    sw      $t1, %lo(RI_MODE_REG)($t0)
    addiu   $s1, $zero, 0x20
branch_0x840000dc:
    addi    $s1, $s1, -0x1
    bnez    $s1, branch_0x840000dc

    ori     $t1, $zero, 0x10f
    sw      $t1, %lo(MI_INIT_MODE_REG)($t4)
    lui     $t1, %hi(0x18082838)
    ori     $t1, $t1, %lo(0x18082838)
    sw      $t1, 0x8($t2)
    sw      $zero, 0x14($t2)
    lui     $t1, %hi(0x80000000)
    sw      $t1, 0x4($t2)
    or      $t5, $zero, $zero
    or      $t6, $zero, $zero
    lui     $t7, %hi(RDRAM_BASE_REG)
    or      $t8, $zero, $zero
    lui     $t9, %hi(0xa3f00000)
    lui     $s6, %hi(0xa0000000)
    or      $s7, $zero, $zero
    lui     $a2, %hi(0xa3f00000)
    lui     $a3, %hi(0xa0000000)
    or      $s2, $zero, $zero
    lui     $s4, %hi(0xa0000000)
    addiu   $sp, $sp, 0xffb8
    or      $fp, $sp, $zero
    lui     $s0, %hi(MI_VERSION_REG)
    lw      $s0, %lo(MI_VERSION_REG)($s0)
    lui     $s1, %hi(0x1010101)
    addiu   $s1, $s1, %lo(0x1010101)
    bne     $s0, $s1, branch_0x84000160
    nop
    addiu   $s0, $zero, 0x200
    ori     $s1, $t3, 0x4000
    b       branch_0x84000168
    nop

branch_0x84000160:
    addiu   $s0, $zero, 0x400
    ori     $s1, $t3, 0x8000
branch_0x84000168:
    sw      $t6, 0x4($s1)
    addiu   $s5, $t7, %lo(RDRAM_MODE_REG)
    jal     Function_0x84000778
    nop
    beqz    $v0, branch_0x8400025c
    nop
    sw      $v0, 0x0($sp)
    addiu   $t1, $zero, 0x2000
    sw      $t1, %lo(MI_INIT_MODE_REG)($t4)
    lw      $t3, %lo(RDRAM_CONFIG_REG)($t7)
    lui     $t0, %hi(0xf0ff0000)
    and     $t3, $t3, $t0
    sw      $t3, 0x4($sp)
    addi    $sp, $sp, 0x8
    addiu   $t1, $zero, 0x1000
    sw      $t1, %lo(MI_INIT_MODE_REG)($t4)
    lui     $t0, %hi(0xb0190000)
    bne     $t3, $t0, branch_0x840001e0
    nop
    lui     $t0, %hi(0x8000000)
    add     $t8, $t8, $t0
    add     $t9, $t9, $s0
    add     $t9, $t9, $s0
    lui     $t0, %hi(0x200000)
    add     $s6, $s6, $t0
    add     $s4, $s4, $t0
    sll     $s2, $s2, 1
    addi    $s2, $s2, 0x1
    b       branch_0x840001e8
    nop

branch_0x840001e0:
    lui     $t0, %hi(0x100000)
    add     $s4, $s4, $t0
branch_0x840001e8:
    addiu   $t0, $zero, 0x2000
    sw      $t0, %lo(MI_INIT_MODE_REG)($t4)
    lw      $t1, %lo(RDRAM_DEVICE_MANUF_REG)($t7)
    lw      $k0, %lo(RDRAM_CONFIG_REG)($t7)
    addiu   $t0, $zero, 0x1000
    sw      $t0, %lo(MI_INIT_MODE_REG)($t4)
    andi    $t1, $t1, 0xffff
    addiu   $t0, $zero, 0x500
    bne     $t1, $t0, branch_0x84000230
    nop
    lui     $k1, %hi(0x1000000)
    and     $k0, $k0, $k1
    bnez    $k0, branch_0x84000230
    nop
    lui     $t0, %hi(0x101c0a04)
    ori     $t0, $t0, %lo(0x101c0a04)
    sw      $t0, %lo(RDRAM_RAS_INTERVAL_REG)($t7)
    b       branch_0x8400023c

branch_0x84000230:
    lui     $t0, %hi(0x80c1204)
    ori     $t0, $t0, %lo(0x80c1204)
    sw      $t0, %lo(RDRAM_RAS_INTERVAL_REG)($t7)
branch_0x8400023c:
    lui     $t0, %hi(0x8000000)
    add     $t6, $t6, $t0
    add     $t7, $t7, $s0
    add     $t7, $t7, $s0
    addiu   $t5, $t5, 0x1
    sltiu   $t0, $t5, 0x8
    bnez    $t0, branch_0x84000168
    nop

branch_0x8400025c:
    lui     $t0, %hi(0xc4000000)
    sw      $t0, 0xc($t2)
    lui     $t0, %hi(0x80000000)
    sw      $t0, 0x4($t2)
    or      $sp, $fp, $zero
    or      $v1, $zero, $zero
branch_0x84000274:
    lw      $t1, 0x4($sp)
    lui     $t0, %hi(0xb0090000)
    bne     $t1, $t0, branch_0x840002d8
    nop

    sw      $t8, 0x4($s1)
    addiu   $s5, $t9, 0xc
    lw      $a0, 0x0($sp)
    addi    $sp, $sp, 0x8
    addiu   $a1, $zero, 0x1
    jal     Function_0x84000a40
    nop

    lw      $t0, 0x0($s6)
    lui     $t0, %hi(0x80000)
    add     $t0, $t0, $s6
    lw      $t1, 0x0($t0)

    lw      $t0, 0x0($s6)
    lui     $t0, %hi(0x80000)
    add     $t0, $t0, $s6
    lw      $t1, 0x0($t0)

    lui     $t0, %hi(0x4000000)
    add     $t6, $t6, $t0
    add     $t9, $t9, $s0
    lui     $t0, %hi(0x100000)
    add     $s6, $s6, $t0
    b       branch_0x8400035c

branch_0x840002d8:
    sw      $s7, 0x4($s1)
    addiu   $s5, $a2, 0xc
    lw      $a0, 0x0($sp)
    addi    $sp, $sp, 0x8
    addiu   $a1, $zero, 0x1
    jal     Function_0x84000a40
    nop

    lw      $t0, 0x0($a3)
    lui     $t0, %hi(0x80000)
    add     $t0, $t0, $a3
    lw      $t1, 0x0($t0)

    lui     $t0, %hi(0x100000)
    add     $t0, $t0, $a3
    lw      $t1, 0x0($t0)

    lui     $t0, %hi(0x180000)
    add     $t0, $t0, $a3
    lw      $t1, 0x0($t0)
    lw      $t0, 0x0($a3)

    lui     $t0, %hi(0x80000)
    add     $t0, $t0, $a3
    lw      $t1, 0x0($t0)

    lui     $t0, %hi(0x100000)
    add     $t0, $t0, $a3
    lw      $t1, 0x0($t0)

    lui     $t0, %hi(0x180000)
    add     $t0, $t0, $a3
    lw      $t1, 0x0($t0)

    lui     $t0, %hi(0x8000000)
    add     $s7, $s7, $t0
    add     $a2, $a2, $s0
    add     $a2, $a2, $s0
    lui     $t0, %hi(0x200000)
    add     $a3, $a3, $t0
branch_0x8400035c:
    addiu   $v1, $v1, 0x1
    slt     $t0, $v1, $t5
    bnez    $t0, branch_0x84000274
    nop

    lui     $t2, %hi(RI_BASE_REG)
    sll     $s2, $s2, 19
    lui     $t1, %hi(0x60000)
    ori     $t1, $t1, 0x3634
    or      $t1, $t1, $s2
    sw      $t1, %lo(RI_REFRESH_REG)($t2)
    lw      $t1, %lo(RI_REFRESH_REG)($t2)
    lui     $t0, %hi(0xa0000300)
    ori     $t0, $t0, %lo(0xa0000300)
    lui     $t1, %hi(0xffeffff)
    ori     $t1, $t1, %lo(0xfffffff)
    and     $s6, $s6, $t1
    sw      $s6, 0x18($t0)
    or      $sp, $fp, $zero
    addiu   $sp, $sp, 0x48
    lw      $s3, 0x0($sp)
    lw      $s4, 0x4($sp)
    lw      $s5, 0x8($sp)
    lw      $s6, 0xc($sp)
    lw      $s7, 0x10($sp)
    addiu   $sp, $sp, 0x18
    lui     $t0, %hi(0x80000000)
    addiu   $t0, $t0, %lo(0x80000000)
    addiu   $t1, $t0, 0x4000
    addiu   $t1, $t1, 0xffe0
    mtc0    $0, $28
    mtc0    $0, $29
branch_0x840003d8:
    cache   8, 0x0($t0)
    sltu    $at, $t0, $t1
    bnez    $at, branch_0x840003d8
    addiu   $t0, $t0, 0x20

    lui     $t0, %hi(0x80000000)
    addiu   $t0, $t0, %lo(0x80000000)
    addiu   $t1, $t0, 0x2000
    addiu   $t1, $t1, 0xfff0
branch_0x840003f8:
    cache   9, 0x0($t0)
    sltu    $at, $t0, $t1
    bnez    $at, branch_0x840003f8
    addiu   $t0, $t0, 0x10
    b       branch_0x84000458
    nop

branch_0x84000410:
    lui     $t0, %hi(0x80000000)
    addiu   $t0, $t0, %lo(0x80000000)
    addiu   $t1, $t0, 0x4000
    addiu   $t1, $t1, 0xffe0
    mtc0    $0, $28
    mtc0    $0, $29
branch_0x84000428:
    cache   8, 0x0($t0)
    sltu    $at, $t0, $t1
    bnez    $at, branch_0x84000428
    addiu   $t0, $t0, 0x20

    lui     $t0, %hi(0x80000000)
    addiu   $t0, $t0, %lo(0x80000000)
    addiu   $t1, $t0, 0x2000
    addiu   $t1, $t1, 0xfff0
branch_0x84000448:
    cache   1, 0x0($t0)
    sltu    $at, $t0, $t1
    bnez    $at, branch_0x84000448
    addiu   $t0, $t0, 0x10

# copy data from (0xa40004c0 - 0xa4000774) to 0x80000000
branch_0x84000458:
    lui     $t2, %hi(0xa4000000)
    addiu   $t2, $t2, %lo(0xa4000000)
    lui     $t3, %hi(0xfff00000)
    lui     $t1, %hi(0xfffff)
    and     $t2, $t2, $t3
    lui     $t0, %hi(0xa40004c0)
    addiu   $t1, $t1, %lo(0xfffff)
    lui     $t3, %hi(0xa4000774)
    addiu   $t0, $t0, %lo(0xa40004c0)
    addiu   $t3, $t3, %lo(0xa4000774)
    and     $t0, $t0, $t1
    and     $t3, $t3, $t1
    lui     $t1, %hi(0xa0000000)
    or      $t0, $t0, $t2
    or      $t3, $t3, $t2
    addiu   $t1, $t1, %lo(0xa0000000)
branch_0x84000498:
    lw      $t5, 0x0($t0)
    addiu   $t0, $t0, 0x4
    sltu    $at, $t0, $t3
    addiu   $t1, $t1, 0x4
    bnez    $at, branch_0x84000498
    sw      $t5, -0x4($t1)

	# Jump to the copied code (Function_0x840004c0)
    lui     $t4, %hi(0x80000000)
    addiu   $t4, $t4, %lo(0x80000000)
    jr      $t4
    nop



.globl Function_0x840004c0
Function_0x840004c0: # 0x840004c0
    # copy game code from cart into dram
    lui     $t3, %hi(BOOT_ADDRESS_OFFSET)
    lw      $t1, %lo(BOOT_ADDRESS_OFFSET)($t3)
    lui     $t2, %hi(0x1ffeffff)
    ori     $t2, $t2, %lo(0x1ffeffff)
    lui     $at, %hi(PI_DRAM_ADDR_REG)
    and     $t1, $t1, $t2
    sw      $t1, %lo(PI_DRAM_ADDR_REG)($at)

    lui     $t0, %hi(PI_STATUS_REG)
branch_0x840004e0:
    lw      $t0, %lo(PI_STATUS_REG)($t0)
    andi    $t0, $t0, PI_STATUS_IO_BUSY
    bnezl   $t0, branch_0x840004e0
    lui     $t0, %hi(PI_STATUS_REG)

    addiu   $t0, $zero, 0x1000
    add     $t0, $t0, $t3
    and     $t0, $t0, $t2
    lui     $at, %hi(PI_CART_ADDR_REG)
    sw      $t0, %lo(PI_CART_ADDR_REG)($at)

    lui     $t2, %hi(0xfffff)
    addiu   $t2, $t2, %lo(0xfffff)
    lui     $at, %hi(PI_WR_LEN_REG)
    sw      $t2, %lo(PI_WR_LEN_REG)($at)

branch_0x84000514:
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
    lui     $t3, %hi(PI_STATUS_REG)
    lw      $t3, %lo(PI_STATUS_REG)($t3)
    andi    $t3, $t3, PI_STATUS_DMA_BUSY
    bnez    $t3, branch_0x84000514
    nop

    # calculate and compare CRC1 and CRC2
    lui     $t3, %hi(BOOT_ADDRESS_OFFSET)
    lw      $a0, %lo(BOOT_ADDRESS_OFFSET)($t3)
    or      $a1, $s6, $zero
    lui     $at, %hi(0x5d578b65)
    ori     $at, $at, %lo(0x5d578b65)
    multu   $a1, $at
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x1c($sp)
    sw      $s0, 0x14($sp)
    lui     $ra, %hi(0x100000)
    or      $v1, $zero, $zero
    or      $t0, $zero, $zero
    or      $t1, $a0, $zero
    addiu   $t5, $zero, 0x20
    mflo    $v0
    addiu   $v0, $v0, 0x1
    or      $a3, $v0, $zero
    or      $t2, $v0, $zero
    or      $t3, $v0, $zero
    or      $s0, $v0, $zero
    or      $a2, $v0, $zero
    or      $t4, $v0, $zero
branch_0x840005f0:
    lw      $v0, 0x0($t1)
    addu    $v1, $a3, $v0
    sltu    $at, $v1, $a3
    beqz    $at, branch_0x84000608
    or      $a1, $v1, $zero
    addiu   $t2, $t2, 0x1
branch_0x84000608:
    andi    $v1, $v0, 0x1f
    subu    $t7, $t5, $v1
    srlv    $t8, $v0, $t7
    sllv    $t6, $v0, $v1
    or      $a0, $t6, $t8
    sltu    $at, $a2, $v0
    or      $a3, $a1, $zero
    xor     $t3, $t3, $v0
    beqz    $at, branch_0x8400063c
    addu    $s0, $s0, $a0
    xor     $t9, $a3, $v0
    b       branch_0x84000640
    xor     $a2, $t9, $a2

branch_0x8400063c:
    xor     $a2, $a2, $a0
branch_0x84000640:
    addiu   $t0, $t0, 0x4
    xor     $t7, $v0, $s0
    addiu   $t1, $t1, 0x4
    bne     $t0, $ra, branch_0x840005f0
    addu    $t4, $t7, $t4

    xor     $t6, $a3, $t2
    xor     $a3, $t6, $t3
    xor     $t8, $s0, $a2
    xor     $s0, $t8, $t4
    lui     $t3, %hi(ROM_HEADER_BASE)
    lw      $t0, %lo(CRC1)($t3)
    bne     $a3, $t0, branch_0x84000688
    nop
    lw      $t0, %lo(CRC2)($t3)
    bne     $s0, $t0, branch_0x84000688
    nop
    bal  branch_0x84000690
    nop

# infinite loop if wrong CRC1 or CRC2 found
branch_0x84000688:
    bal  branch_0x84000688
    nop

branch_0x84000690:
    lui     $t1, %hi(SP_PC_REG)
    lw      $t1, %lo(SP_PC_REG)($t1)
    lw      $s0, 0x14($sp)
    lw      $ra, 0x1c($sp)
    beqz    $t1, branch_0x840006bc
    addiu   $sp, $sp, 0x20
    addiu   $t2, $zero, 0x41
    lui     $at, %hi(SP_STATUS_REG)
    sw      $t2, %lo(SP_STATUS_REG)($at)
    lui     $at, %hi(SP_PC_REG)
    sw      $zero, %lo(SP_PC_REG)($at)

branch_0x840006bc:
    lui     $t3, %hi(SP_SET_HALT|SP_CLR_BROKE|SP_CLR_INTR|SP_CLR_SSTEP|SP_CLR_INTR_BREAK|SP_CLR_SIG0|SP_CLR_SIG1|SP_CLR_SIG2|SP_CLR_SIG3|SP_SET_SIG3|SP_CLR_SIG5|SP_CLR_SIG6|SP_CLR_SIG7) # 0xa9aaae
    ori     $t3, $t3, %lo(SP_SET_HALT|SP_CLR_BROKE|SP_CLR_INTR|SP_CLR_SSTEP|SP_CLR_INTR_BREAK|SP_CLR_SIG0|SP_CLR_SIG1|SP_CLR_SIG2|SP_CLR_SIG3|SP_SET_SIG3|SP_CLR_SIG5|SP_CLR_SIG6|SP_CLR_SIG7) # 0xa9aaae
    lui     $at, %hi(SP_STATUS_REG)
    sw      $t3, %lo(SP_STATUS_REG)($at)

    lui     $at, %hi(MI_INTR_MASK_REG)
    addiu   $t0, $zero, 0x555
    sw      $t0, %lo(MI_INTR_MASK_REG)($at)

    lui     $at, %hi(SI_STATUS_REG)
    sw      $zero, %lo(SI_STATUS_REG)($at)
    lui     $at, %hi(AI_STATUS_REG)
    sw      $zero, %lo(AI_STATUS_REG)($at)

    lui     $at, %hi(MI_INIT_MODE_REG)
    addiu   $t1, $zero, MI_CLR_DP_INTR
    sw      $t1, %lo(MI_INIT_MODE_REG)($at)

    addiu   $t1, $zero, PI_STATUS_CLR_INTR
    lui     $at, %hi(PI_STATUS_REG)
    lui     $t0, %hi(0xa0000300)
    ori     $t0, $t0, %lo(0xa0000300)
    sw      $t1, %lo(PI_STATUS_REG)($at)

    sw      $s7, 0x14($t0)
    sw      $s5, 0xc($t0)
    sw      $s3, 0x4($t0)
    beqz    $s3, branch_0x84000728
    sw      $s4, 0x0($t0)
    lui     $t1, %hi(0xa6000000)
    b       branch_0x84000730
    addiu   $t1, $t1, %lo(0xa6000000)

branch_0x84000728:
    lui     $t1, %hi(0xb0000000)
    addiu   $t1, $t1, %lo(0xb0000000)
branch_0x84000730:
    sw      $t1, 0x8($t0)

# Init SP_DMEM
    lui     $t0, %hi(SP_DMEM_a)
    addiu   $t0, $t0, %lo(SP_DMEM_a)
    addi    $t1, $t0, 0x1000 # End of SP_DMEM
branch_0x84000740:
    addiu   $t0, $t0, 0x4
    bne     $t0, $t1, branch_0x84000740
    sw      $zero, -0x4($t0)

# Init SP_IMEM
    lui     $t0, %hi(SP_IMEM_a)
    addiu   $t0, $t0, %lo(SP_IMEM_a)
    addi    $t1, $t0, 0x1000 # End of SP_IMEM
branch_0x84000758:
    addiu   $t0, $t0, 0x4
    bne     $t0, $t1, branch_0x84000758
    sw      $zero, -0x4($t0)

# Jump to the actual code of the game
    lui     $t3, %hi(BOOT_ADDRESS_OFFSET)
    lw      $t1, %lo(BOOT_ADDRESS_OFFSET)($t3)
    jr      $t1
    nop


.globl Function_0x84000774
Function_0x84000774: # 0x84000774
    nop

.globl Function_0x84000778
Function_0x84000778: # 0x84000778
    addiu   $sp, $sp, 0xff60
    sw      $s0, 0x40($sp)
    sw      $s1, 0x44($sp)
    or      $s1, $zero, $zero
    or      $s0, $zero, $zero
    sw      $v0, 0x0($sp)
    sw      $v1, 0x4($sp)
    sw      $a0, 0x8($sp)
    sw      $a1, 0xc($sp)
    sw      $a2, 0x10($sp)
    sw      $a3, 0x14($sp)
    sw      $t0, 0x18($sp)
    sw      $t1, 0x1c($sp)
    sw      $t2, 0x20($sp)
    sw      $t3, 0x24($sp)
    sw      $t4, 0x28($sp)
    sw      $t5, 0x2c($sp)
    sw      $t6, 0x30($sp)
    sw      $t7, 0x34($sp)
    sw      $t8, 0x38($sp)
    sw      $t9, 0x3c($sp)
    sw      $s2, 0x48($sp)
    sw      $s3, 0x4c($sp)
    sw      $s4, 0x50($sp)
    sw      $s5, 0x54($sp)
    sw      $s6, 0x58($sp)
    sw      $s7, 0x5c($sp)
    sw      $fp, 0x60($sp)
    sw      $ra, 0x64($sp)
branch_0x840007ec:
    jal     Function_0x84000880
    nop
    addiu   $s0, $s0, 0x1
    slti    $t1, $s0, 0x4
    bnez    $t1, branch_0x840007ec
    addu    $s1, $s1, $v0
    srl     $a0, $s1, 2
    jal     Function_0x84000a40
    addiu   $a1, $zero, 0x1
    lw      $ra, 0x64($sp)
    srl     $v0, $s1, 2
    lw      $s1, 0x44($sp)
    lw      $v1, 0x4($sp)
    lw      $a0, 0x8($sp)
    lw      $a1, 0xc($sp)
    lw      $a2, 0x10($sp)
    lw      $a3, 0x14($sp)
    lw      $t0, 0x18($sp)
    lw      $t1, 0x1c($sp)
    lw      $t2, 0x20($sp)
    lw      $t3, 0x24($sp)
    lw      $t4, 0x28($sp)
    lw      $t5, 0x2c($sp)
    lw      $t6, 0x30($sp)
    lw      $t7, 0x34($sp)
    lw      $t8, 0x38($sp)
    lw      $t9, 0x3c($sp)
    lw      $s0, 0x40($sp)
    lw      $s2, 0x48($sp)
    lw      $s3, 0x4c($sp)
    lw      $s4, 0x50($sp)
    lw      $s5, 0x54($sp)
    lw      $s6, 0x58($sp)
    lw      $s7, 0x5c($sp)
    lw      $fp, 0x60($sp)
    jr      $ra
    addiu   $sp, $sp, 0xa0

.globl Function_0x84000880
Function_0x84000880: # 0x84000880
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x1c($sp)
    or      $t1, $zero, $zero
    or      $t3, $zero, $zero
    or      $t4, $zero, $zero
branch_0x84000894:
    slti    $k0, $t4, 0x40
    beqzl   $k0, branch_0x840008fc
    or      $v0, $zero, $zero
    jal     Function_0x8400090c
    or      $a0, $t4, $zero
    blezl   $v0, branch_0x840008cc
    slti    $k0, $t1, 0x50
    subu    $k0, $v0, $t1
    multu   $k0, $t4
    or      $t1, $v0, $zero
    mflo    $k0
    addu    $t3, $t3, $k0
    nop
    slti    $k0, $t1, 0x50
branch_0x840008cc:
    bnez    $k0, branch_0x84000894
    addiu   $t4, $t4, 0x1
    sll     $a0, $t3, 2
    subu    $a0, $a0, $t3
    sll     $a0, $a0, 2
    subu    $a0, $a0, $t3
    sll     $a0, $a0, 1
    jal     Function_0x84000980
    addiu   $a0, $a0, 0xfc90
    b       branch_0x84000900
    lw      $ra, 0x1c($sp)

.globl Function_0x840008f8
Function_0x840008f8: # 0x840008f8
    or      $v0, $zero, $zero
branch_0x840008fc:
    lw      $ra, 0x1c($sp)
branch_0x84000900:
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x8400090c
Function_0x8400090c: # 0x8400090c
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    or      $v0, $zero, $zero
    jal     Function_0x84000a40
    addiu   $a1, $zero, 0x2
    or      $fp, $zero, $zero
    addiu   $k0, $zero, 0xffff
branch_0x84000928:
    sw      $k0, 0x4($s4)
    lw      $v1, 0x4($s4)
    sw      $k0, 0x0($s4)
    sw      $k0, 0x0($s4)
    or      $gp, $zero, $zero
    srl     $v1, $v1, 16
branch_0x84000940:
    andi    $k0, $v1, 0x1
    beqzl   $k0, branch_0x84000954
    addiu   $gp, $gp, 0x1
    addiu   $v0, $v0, 0x1
    addiu   $gp, $gp, 0x1
branch_0x84000954:
    slti    $k0, $gp, 0x8
    bnez    $k0, branch_0x84000940
    srl     $v1, $v1, 1
    addiu   $fp, $fp, 0x1
    slti    $k0, $fp, 0xa
    bnezl   $k0, branch_0x84000928
    addiu   $k0, $zero, 0xffff
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x84000980
Function_0x84000980: # 0x84000980
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x20($sp)
    sb      $zero, 0x27($sp)
    or      $t0, $zero, $zero
    or      $t2, $zero, $zero
    ori     $t5, $zero, 0xc800
    or      $t6, $zero, $zero
    slti    $k0, $t6, 0x40
branch_0x840009a4:
    bnezl   $k0, branch_0x840009b8
    or      $a0, $t6, $zero
    b       branch_0x84000a30
    or      $v0, $zero, $zero

.globl Function_0x840009b4
Function_0x840009b4: # 0x840009b4
    or      $a0, $t6, $zero
branch_0x840009b8:
    jal     Function_0x84000a40
    addiu   $a1, $zero, 0x1
    jal     Function_0x84000ad0
    addiu   $a0, $sp, 0x27
    jal     Function_0x84000ad0
    addiu   $a0, $sp, 0x27
    lbu     $k0, 0x27($sp)
    addiu   $k1, $zero, 0x320
    lw      $a0, 0x20($sp)
    multu   $k0, $k1
    mflo    $t0
    subu    $k0, $t0, $a0
    bgezl   $k0, branch_0x840009f8
    slt     $k1, $k0, $t5
    subu    $k0, $a0, $t0
    slt     $k1, $k0, $t5
branch_0x840009f8:
    beqzl   $k1, branch_0x84000a0c
    lw      $a0, 0x20($sp)
    or      $t5, $k0, $zero
    or      $t2, $t6, $zero
    lw      $a0, 0x20($sp)
branch_0x84000a0c:
    slt     $k1, $t0, $a0
    beqzl   $k1, branch_0x84000a2c
    addu    $v0, $t2, $t6
    addiu   $t6, $t6, 0x1
    slti    $k1, $t6, 0x41
    bnezl   $k1, branch_0x840009a4
    slti    $k0, $t6, 0x40
    addu    $v0, $t2, $t6
branch_0x84000a2c:
    srl     $v0, $v0, 1
branch_0x84000a30:
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x84000a40
Function_0x84000a40: # 0x84000a40
    addiu   $sp, $sp, 0xffd8

    andi    $a0, $a0, 0xff
    addiu   $k1, $zero, 0x1
    xori    $a0, $a0, 0x3f
    sw      $ra, 0x1c($sp)
    bne     $a1, $k1, branch_0x84000a64
    lui     $t7, %hi(0x46000000)
    lui     $k0, %hi(0x80000000)
    or      $t7, $t7, $k0
branch_0x84000a64:
    andi    $k0, $a0, 0x1
    sll     $k0, $k0, 6
    or      $t7, $t7, $k0
    andi    $k0, $a0, 0x2
    sll     $k0, $k0, 13
    or      $t7, $t7, $k0
    andi    $k0, $a0, 0x4
    sll     $k0, $k0, 20
    or      $t7, $t7, $k0
    andi    $k0, $a0, 0x8
    sll     $k0, $k0, 4
    or      $t7, $t7, $k0
    andi    $k0, $a0, 0x10
    sll     $k0, $k0, 11
    or      $t7, $t7, $k0
    andi    $k0, $a0, 0x20
    sll     $k0, $k0, 18
    or      $t7, $t7, $k0
    addiu   $k1, $zero, 0x1
    bne     $a1, $k1, branch_0x84000ac0
    sw      $t7, 0x0($s5)
    lui     $k0, %hi(MI_INIT_MODE_REG)
    sw      $zero, %lo(MI_INIT_MODE_REG)($k0)
branch_0x84000ac0:

    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x84000ad0
Function_0x84000ad0: # 0x84000ad0
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)

    addiu   $k0, $zero, 0x2000
    lui     $k1, %hi(MI_INIT_MODE_REG)
    sw      $k0, %lo(MI_INIT_MODE_REG)($k1)
    or      $fp, $zero, $zero
    lw      $fp, 0x0($s5)
    addiu   $k0, $zero, 0x1000
    sw      $k0, 0x0($k1)

    addiu   $k1, $zero, 0x40
    and     $k1, $k1, $fp
    srl     $k1, $k1, 6
    or      $k0, $zero, $zero
    or      $k0, $k0, $k1
    addiu   $k1, $zero, 0x4000
    and     $k1, $k1, $fp
    srl     $k1, $k1, 13
    or      $k0, $k0, $k1
    lui     $k1, %hi(0x400000)
    and     $k1, $k1, $fp
    srl     $k1, $k1, 20
    or      $k0, $k0, $k1
    addiu   $k1, $zero, 0x80
    and     $k1, $k1, $fp
    srl     $k1, $k1, 4
    or      $k0, $k0, $k1
    ori     $k1, $zero, 0x8000
    and     $k1, $k1, $fp
    srl     $k1, $k1, 11
    or      $k0, $k0, $k1
    lui     $k1, %hi(0x800000)
    and     $k1, $k1, $fp
    srl     $k1, $k1, 18
    or      $k0, $k0, $k1
    sb      $k0, 0x0($a0)
    lw      $ra, 0x1c($sp)

    addiu   $sp, $sp, 0x28
    jr      $ra
    nop


.incbin "./roms/Wave Race 64 (USA)_0x00000000.z64", 0xb6c, ROM_0x1000 - 0xb6c
