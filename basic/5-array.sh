#! /bin/bash

# bash支持一维数组（不支持多维数组），并且没有限定数组的大小。

# 类似于 C 语言，数组元素的下标由 0 开始编号。获取数组中的元素要利用下标，下标可以是整数或算术表达式，其值应大于或等于 0。

# 定义数组 ------------
# 在 Shell 中，用 括号 来表示数组，数组元素用 "空格" 符号分割开。定义数组的一般形式为：

# 数组名=(值1 值2 ... 值n)
# 例如：

countries=("China" "America" "England" "Frence")
# 或者

families=(
"baby"
"dad"
"mom"
)

# 还可以单独定义数组的各个分量：

proviences[0]="山东"
proviences[1]="山西"
proviences[2]="河北"
proviences[4]="辽宁"
# 可以不使用连续的下标，而且下标的范围没有限制。

# 读取数组  ------------
# 读取数组元素值的一般格式是：

# ${数组名[下标]}

echo ${proviences[4]}

# 使用 @ 符号可以获取数组中的所有元素，例如：
# echo ${array_name[@]}
echo ${proviences[@]}

# 获取数组的长度
# 获取数组长度的方法与获取字符串长度的方法相同，例如：

# 取得数组元素的个数
echo ${#families[@]}
# 或者
echo ${#countries[*]}

# 取得数组单个元素的长度
lengthn=${#proviences[2]}
echo $lengthn

# 获取数组所有的元素
for f in ${families[@]}
do
    echo $f
done

for(( i=0;i<${#families[@]};i++)) do
    echo ${families[i]}
done

for i in "${!families[@]}";   
do   
    printf "%s\t%s\n" "$i" "${families[$i]}"  
done 

mutableArray=("a" "b")
echo ${mutableArray[@]}

arrlength=${#mutableArray[*]}
echo $arrlength


# for ((i=$arrlength; i<=100; i++))
# do
#     echo $i
# done

# for i in {2..100}
# do
#     mutableArray[i]="$i"
# done

# echo ${mutableArray[@]}

