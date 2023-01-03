 /*
系统引导程序放在MBR
*/
.section .boot_init
    /*
    * 初始化段寄存器
    */
    movw $0, %ax
    movw %ax, %cs
    movw %ax, %ds
    movw %ax, %ss
    movw %ax, %es
    movw %ax, %fs
    movw %ax, %gs
