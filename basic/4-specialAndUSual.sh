#! /bin/bash

# | 管道符号，是Unix一个很强大的功能。用法：command1 | command2
# 是把第一个命令command1执行的结果作为commang2的输入传给command2

ls -s | sort -nr

# -s 是file size ，-n 是numeric-sort -r是reverse，反转
# 该命令列出当前目录中的文档含size。并把输出送给sort命令作为输入，sort命令按数字递减的顺序把ls的输出排序