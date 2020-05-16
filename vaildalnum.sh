#! /bin/bash

# 确保输入内容仅限于字母和数字
# [ :alnum: ]是POSIX的正则表达式简写，代表所有的字母数字字符
validalnum()
{
    validchars="$(echo $1 | sed -e 's/[^[ :alnum: ]]//g')"
    if [ "$validchars" = "$1" ];then
        return 0
    else 
        return 1
    fi
}
