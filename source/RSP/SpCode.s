

.include "source/constants.s"


.equ DMA_CACHE,			$0
.equ DMA_DRAM,			$1
.equ DMA_READ_LENGTH,	$2
.equ DMA_WRITE_LENGTH,	$3
.equ SP_STATUS,			$4
.equ DMA_FULL,			$5
.equ DMA_BUSY,			$6
.equ SP_RESERVED,		$7
.equ CMD_STATUS,		$11


.set noreorder

.text


.globl _start
_start: # 0x4001000
    ori     $at, $at, 0x1
    j       Function_0x4001068_LoadData
    addi    $at, $zero, (0x1000-SpTask_Size)


Function_0x400100c_LoadCode: # 0x400100c
    lw      $v0, SpTask_CodeDRAM($at)
    addi    $v1, $zero, 0xf7f
    addi    $a3, $zero, 0x1080
    mtc0    $a3, DMA_CACHE
    mtc0    $v0, DMA_DRAM
    mtc0    $v1, DMA_READ_LENGTH
branch_0x4001024:
    mfc0    $a0, DMA_BUSY
    bnez    $a0, branch_0x4001024
    nop

    jal     Function_0x4001040
    nop
    jr      $a3
    mtc0    $zero, SP_RESERVED


Function_0x4001040: # 0x4001040
    mfc0    $t0, SP_STATUS
    andi    $t0, $t0, 0x80
    bnez    $t0, branch_0x4001054
    nop
    jr      $ra
branch_0x4001054:
    mtc0    $zero, SP_RESERVED
    ori     $t0, $zero, 0x5200
    mtc0    $t0, SP_STATUS
    break   0x0
    nop


Function_0x4001068_LoadData: # 0x4001068
    lw      $v0, SpTask_4($at)
    andi    $v0, $v0, 0x2
    beqz    $v0, branch_0x4001090
    nop
    jal     Function_0x4001040
    nop

    mfc0    $v0, CMD_STATUS
    andi    $v0, $v0, 0x100
    bgtz    $v0, Function_0x4001040
    nop
branch_0x4001090:
    lw      $v0, SpTask_DataDRAM($at)
    lw      $v1, SpTask_DataSize($at)
    addi    $v1, $v1, -0x1
branch_0x400109c:
    mfc0    $fp, DMA_FULL
    bnez    $fp, branch_0x400109c
    nop
    mtc0    $zero, DMA_CACHE
    mtc0    $v0, DMA_DRAM
    mtc0    $v1, DMA_READ_LENGTH
branch_0x40010b4:
    mfc0    $a0, DMA_BUSY
    bnez    $a0, branch_0x40010b4
    nop

    jal     Function_0x4001040
    nop
    j       Function_0x400100c_LoadCode
    nop

