    .section .text.entry
    .globl _start
_start:
    la sp, boot_stack_top
    
    call entry

    .section .bss.stack
    .globl boot_stack
boot_stack:
    .space 4096 * 16 // 16个4k
    .globl boot_stack_top
boot_stack_top: