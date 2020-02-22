#!/bin/bash

#------------------变量--------------------------
# 变量名的命名须遵循如下规则：

# 命名只能使用英文字母，数字和下划线，首个字符不能以数字开头。
# 中间不能有空格，可以使用下划线（_）。
# 不能使用标点符号。
# 不能使用bash里的关键字（可用help命令查看保留关键字）。
#--------------------------------------------

#定义变量myname
myname="jianlong"

echo "此时输出：$myname"
# 使用readOnly 定义只读变量
readonly greeting="hello,${myname}"

#删除变量 变量被删除后不能再次使用。unset 命令不能删除只读变量。
unset myname

#2-variable.sh: line 20: unset: greeting: cannot unset: readonly variable

# unset greeting

# 以下实例执行将没有任何输出。
echo "此时输出：$myname"