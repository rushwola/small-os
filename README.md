# small-os
小型类linux操作系统

# 资料

清华 rcore（用 riscv + rust 实现）:
https://shimo.im/outlink/gray?url=https%3A%2F%2Frcore-os.github.io%2FrCore-Tutorial-Book-v3%2Fchapter0%2Findex.html

彭东的【操作系统实战】:
https://shimo.im/docs/PgF2AVpTWWg7LPAR

# AT&T汇编

eg :
movb $0x42,%ah

关于前缀，AT&T 汇编中：

寄存器前被冠以“%”
立即数前被冠以“$”
十六进制数前被冠以“0x”

操作码的后缀l表示的是操作码的大小，l是长整数32位，那么相应的，movw是16位，movb是8位；



赵炯
Linux内核完全注释


