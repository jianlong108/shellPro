#!/bin/bash

echo "Hello World !"


# --------------------------------------------------------
# Linux 的 Shell 种类众多，常见的有：

# Bourne Shell（/usr/bin/sh或/bin/sh）
# Bourne Again Shell（/bin/bash）
# C Shell（/usr/bin/csh）
# K Shell（/usr/bin/ksh）
# Shell for Root（/sbin/sh）
# ……


# 在一般情况下，人们并不区分 Bourne Shell 和 Bourne Again Shell，所以，像 #!/bin/sh，它同样也可以改为 #!/bin/bash。

#! 告诉系统其后路径所指定的程序即是解释此脚本文件的 Shell 程序。

# --------------------------------------------------------

# --------------------------------------------------------
# 运行 Shell 脚本有两种方法：

# 1、作为可执行程序

# 将上面的代码保存为 test.sh，并 cd 到相应目录：

# chmod +x ./test.sh  #使脚本具有执行权限
# ./test.sh  #执行脚本
# 注意，一定要写成 ./test.sh，而不是 test.sh，运行其它二进制的程序也一样，直接写 test.sh，linux 系统会去 PATH 里寻找有没有叫 test.sh 的，而只有 /bin, /sbin, /usr/bin，/usr/sbin 等在 PATH 里，你的当前目录通常不在 PATH 里，所以写成 test.sh 是会找不到命令的，要用 ./test.sh 告诉系统说，就在当前目录找。

# 2、作为解释器参数

# 这种运行方式是，直接运行解释器，其参数就是 shell 脚本的文件名，如：

# /bin/sh test.sh
# /bin/php test.php

# --------------------------------------------------------

#打印时 显示转义字符
echo "\"Hello World !\""

# echo -e 实现转义
echo -e "\"Hello World !\""

# -e 开启转义。 \n被转义为换行符
echo -e "OK! \n"
echo "没有开启转义 \n"

# -e 开启转义 \c 不换行 输出为：OK!OK!\c
echo -e "OK! \c" 
echo "OK! \c" 
