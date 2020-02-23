#! /bin/bash

a=10
b=20

val=a=b
echo $val

if [ $a == $b ]
then
   echo "a 等于 b"
fi

if [ $a != $b ]
then
   echo "a 不等于 b"
fi


:<<EOF 关系运算符
-eq 检测两个数是否相等，相等返回 true。
-ne 检测两个数是否不相等，不相等返回 true。
-gt 检测左边的数是否大于右边的，如果是，则返回 true。
-lt 检测左边的数是否小于右边的，如果是，则返回 true。
-ge 检测左边的数是否大于等于右边的，如果是，则返回 true。
-le 检测左边的数是否小于等于右边的，如果是，则返回 true。
EOF

if [ $a -eq $b ]
then
   echo "$a -eq $b : a 等于 b"
else
   echo "$a -eq $b: a 不等于 b"
fi

if [ $a -ne $b ]
then
   echo "$a -ne $b: a 不等于 b"
else
   echo "$a -ne $b : a 等于 b"
fi

if [ $a -gt $b ]
then
   echo "$a -gt $b: a 大于 b"
else
   echo "$a -gt $b: a 不大于 b"
fi

if [ $a -lt $b ]
then
   echo "$a -lt $b: a 小于 b"
else
   echo "$a -lt $b: a 不小于 b"
fi

if [ $a -ge $b ]
then
   echo "$a -ge $b: a 大于或等于 b"
else
   echo "$a -ge $b: a 小于 b"
fi

if [ $a -le $b ]
then
   echo "$a -le $b: a 小于或等于 b"
else
   echo "$a -le $b: a 大于 b"
fi


:<<EOF
布尔运算符
！ 非运算，表达式为 true 则返回 false，否则返回 true。
-o 或运算，有一个表达式为 true 则返回 true。
-a 与运算，两个表达式都为 true 才返回 true。=
EOF

if [ $a != $b ]
then
   echo "$a != $b : a 不等于 b"
else
   echo "$a == $b: a 等于 b"
fi
if [ $a -lt 100 -a $b -gt 15 ]
then
   echo "$a 小于 100 且 $b 大于 15 : 返回 true"
else
   echo "$a 小于 100 且 $b 大于 15 : 返回 false"
fi
if [ $a -lt 100 -o $b -gt 100 ]
then
   echo "$a 小于 100 或 $b 大于 100 : 返回 true"
else
   echo "$a 小于 100 或 $b 大于 100 : 返回 false"
fi
if [ $a -lt 5 -o $b -gt 100 ]
then
   echo "$a 小于 5 或 $b 大于 100 : 返回 true"
else
   echo "$a 小于 5 或 $b 大于 100 : 返回 false"
fi

:<<EOF
逻辑运算符
&& 逻辑的 AND
|| 逻辑的OR
EOF

if [[ $a -lt 100 && $b -gt 100 ]]
then
   echo "返回 true"
else
   echo "返回 false"
fi

if [[ $a -lt 100 || $b -gt 100 ]]
then
   echo "返回 true"
else
   echo "返回 false"
fi


# 死循环
# 1
# while :
# do
#     command
# done

# 2
# while true
# do
#     command
# done

# 3
# for (( ; ; ))
