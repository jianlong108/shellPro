#!/bin/sh

#-------------------字符串---------------

#拼接字符串 
greeting_one="hello，boy, ${your_name} !"
echo $greeting $greeting_one

#获取字符串长度
echo ${myname} "长度为" ${#myname}

#提取字符串
testStr="abcdef"
echo ${testStr:1:4} #输出 bcde

# ----单引号字符串的限制：------

# 单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
# 单引号字串中不能出现单独一个的单引号（对单引号使用转义符后也不行），但可成对出现，作为字符串拼接使用。
# -----------

# 原样输出字符串 不进行转义或取变量（用单引号）
teststr="haha"
# 使用变量
echo '$teststr\'
echo "$teststr"


#查找子字符串
#输出：3，这个语句的意思是：找出字母i在这名话中的位置，要在linux下运行，mac下会报错
#echo `expr index "$testStr" c`

# 查找字符 i 或 o 的位置(哪个字母先出现就计算哪个)：
string="runoob is a great site"
targetstr="io"

# Linux环境下
# echo `expr index "$string" io`  # 输出 4

# Mac os 环境下
# echo string | sed -n "s/[$targetstr].*//p" | wc -c

echo string | sed -n "s/[io].*//p" | wc -c