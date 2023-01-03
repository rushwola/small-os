# small-os
小型类linux操作系统

# 资料

赵炯
Linux内核完全注释

清华 rcore（用 riscv + rust 实现）:
https://shimo.im/outlink/gray?url=https%3A%2F%2Frcore-os.github.io%2FrCore-Tutorial-Book-v3%2Fchapter0%2Findex.html

彭东的【操作系统实战】:
https://shimo.im/docs/PgF2AVpTWWg7LPAR

# AT&T汇编

见：https://liuyehcf.github.io/2021/10/15/%E6%B1%87%E7%BC%96%E8%AF%AD%E8%A8%80%E5%9F%BA%E7%A1%80/

https://blog.csdn.net/for_cxc/article/details/89048046

https://www.cnblogs.com/wingsummer/p/16305622.html

eg :movb $0x42,%ah



关于前缀，AT&T 汇编中：

寄存器前被冠以“%”
立即数前被冠以“$”
十六进制数前被冠以“0x”

首先，操作码的后缀l表示的是操作码的大小，q是64位,l是长整数32位，那么相应的，movw是16位，movb是8位；
其次，立即数是用$前缀来表示的，就像$0x42；再次，寄存器的名字是有%前缀的，像例子中的%ah；
最后，操作数的方向有点不一样，比如把立即数$0x42放 到寄存器%ah中，用的是movb $0x42,%ah，也即源操作数在前，目的操作数在后，这一点和intel汇编语法正好相反。

# 引导区实现

https://etsai.site/a-simple-os-from-bootloader/




